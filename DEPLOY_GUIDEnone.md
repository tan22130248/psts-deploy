# Hướng dẫn Deploy PSTS (Primary School Teacher Support System)

> Tài liệu viết theo lần deploy thành công lên GCP VM `teachprimary` (IP tĩnh `34.87.139.63`).  
> Production **không** dùng Spring Cloud Gateway — **Nginx** route trực tiếp tới từng microservice.

---

## 0. Tổng quan kiến trúc deploy

```
Internet
   │  :80
   ▼
┌─────────────────────────────────────────┐
│  frontend container (nginx)             │
│  - Static React build (/)               │
│  - Reverse proxy theo path → services   │
└─────────────────────────────────────────┘
   │
   ├── /api/auth/*          → user-service:8082   (login, OTP, register — AUTH THẬT)
   ├── /oauth2/*, /login/oauth2/* → user-service:8082
   ├── /api/user/*          → user-service:8082
   ├── /api/admin/classrooms/* → classroom-service:8085
   ├── /api/admin/*         → user-service:8082
   ├── /api/classrooms/*    → classroom-service:8085
   ├── /api/student/*       → classroom-service:8085
   ├── /api/tests/*, /api/questions/* → test-service:8088
   ├── /api/lessons/*, /wopi/* → lesson-service:8087
   ├── /api/textbooks       → textbook-service:8090
   ├── /api/tts/*           → tts-service:8084
   ├── /api/pronunciation/* → speech-recognition-service:8086
   ├── /api/translate/*     → translate-service:8089
   ├── /image-api/*         → image-service:8083
   └── /python-api/*        → python-api:8001

MySQL (7 DB) + Eureka (8761) chạy nội bộ Docker network.
```

### 4 repo GitHub (nhánh deploy: `test-deploy`)

| Repo | URL | Nội dung |
|------|-----|----------|
| FrontEnd | `https://github.com/22130188/PrimarySchoolTeacherSupportSystemFrontEnd.git` | React + Vite |
| Backend | `https://github.com/22130188/PrimarySchoolTeacherSupportSystemBackend.git` | Spring Boot multi-module |
| api-python | `https://github.com/tan22130248/api-python.git` | FastAPI (TTS, canvas, rembg…) |
| psts-deploy | `https://github.com/tan22130248/psts-deploy.git` | `docker-compose.yml`, nginx, mysql init, `.env` |

### Cấu trúc thư mục trên VPS

```
~/deploy/
├── PrimarySchoolTeacherSupportSystemBackend/
├── PrimarySchoolTeacherSupportSystemFrontEnd/
├── api-python/
└── psts-deploy/
    ├── docker-compose.yml
    ├── .env                 ← KHÔNG commit (secret)
    ├── nginx/default.conf
    └── mysql/init.sql
```

---

## 1. Chuẩn bị VPS (một lần)

### 1.1 Tạo VM (GCP)

1. Compute Engine → Create Instance  
2. Machine: `e2-standard-4` (4 vCPU / 16GB) hoặc tương đương  
3. Disk: Ubuntu 22.04 LTS, **≥ 80GB**  
4. Firewall: bật **Allow HTTP** + **Allow HTTPS**  
5. Tags: `http-server`, `https-server`

**Vì sao:** 11 service Java + Python (torch/whisper) cần RAM/disk lớn. HTTP tag mở port 80 cho trình duyệt.

### 1.2 Reserve Static IP (bắt buộc)

1. VPC network → IP addresses  
2. Reserve IP External đang gắn VM → **Static** (không tạo IP mới rồi gắn lại)  
3. Ghi lại: `<VPS_IP>` (ví dụ `34.87.139.63`)

**Vì sao:** IP Ephemeral đổi sau restart → frontend Vite đã “nướng” IP cũ vào JS → API fail.

### 1.3 Cài Docker

```bash
sudo apt-get update
sudo apt-get install -y docker.io docker-compose-v2 git curl
sudo systemctl enable docker && sudo systemctl start docker
sudo usermod -aG docker $USER
# Đóng SSH, mở lại 1 lần
docker version
docker compose version
```

**Vì sao:** Mọi service chạy container; group `docker` để không cần `sudo` mỗi lệnh.

---

## 2. Chuẩn bị code local (nhánh `test-deploy`)

### 2.1 Quy tắc nhánh

| Nhánh | Mục đích |
|-------|----------|
| `main` | Chạy local dev — **không** merge deploy vào main |
| `test-deploy` | Code deploy VPS (merge main → test-deploy khi cần, push chỉ test-deploy) |

```bash
# Trên máy dev (mỗi repo)
git checkout test-deploy
git fetch origin
git merge origin/main -m "Merge branch 'main' into test-deploy for deploy"
# Chỉ push test-deploy — KHÔNG push main
git push origin test-deploy
```

### 2.2 Frontend — URL API (quan trọng)

Vite **bake** biến `VITE_*` lúc `npm run build`. Sửa `.env.local` sau build **không** có tác dụng.

**File tracked trên `test-deploy`:**  
`PrimarySchoolTeacherSupportSystemFrontEnd/.env.local`

```env
VITE_GATEWAY_URL=http://<VPS_IP>/api
VITE_TTS_API_URL=http://<VPS_IP>/api/tts
VITE_PRONUNCIATION_API_URL=http://<VPS_IP>/api/pronunciation
VITE_TRANSLATE_API_URL=http://<VPS_IP>/api/translate
VITE_IMAGE_API_URL=http://<VPS_IP>/image-api
VITE_CANVAS_API_URL=http://<VPS_IP>/python-api
VITE_USER_SERVICE_URL=http://<VPS_IP>/api/user
```

**Hardcode:** Nhiều file service từng hardcode `localhost:8080`. Trên `test-deploy` đã chuyển sang `import.meta.env.VITE_GATEWAY_URL`. Khi merge main, kiểm tra lại:

```bash
cd PrimarySchoolTeacherSupportSystemFrontEnd
git grep -n "localhost:8080\|localhost:8001" -- src
```

### 2.3 psts-deploy — IP trong compose/nginx

Thay mọi chỗ IP cũ bằng `<VPS_IP>`:

- `nginx/default.conf` → `server_name`
- `docker-compose.yml` → `*_GOOGLE_REDIRECT_URI`, `CLASSROOM_FRONTEND_BASE_URL`, Collabora URLs

### 2.4 File env / secret

| File | Commit? | Ghi chú |
|------|---------|---------|
| `psts-deploy/.env` | **Không** | Tạo tay trên VPS |
| `FrontEnd/.env.local` | Trên `test-deploy` có (IP VPS) | Local dev dùng IP/localhost khác |
| `Backend/.env` | Không (gitignore) | Chỉ local |
| `api-python/.env` | Không | Cloudinary lấy từ compose `.env` |

---

## 3. Các bước deploy lần đầu trên VPS

### Bước A — Clone 4 repo

```bash
mkdir -p ~/deploy && cd ~/deploy
git clone -b test-deploy https://github.com/22130188/PrimarySchoolTeacherSupportSystemBackend.git
git clone -b test-deploy https://github.com/22130188/PrimarySchoolTeacherSupportSystemFrontEnd.git
git clone -b test-deploy https://github.com/tan22130248/api-python.git
git clone -b test-deploy https://github.com/tan22130248/psts-deploy.git
```

**Đang làm gì:** Lấy đúng nhánh deploy, không đụng `main` local của bạn.

### Bước B — Tạo `.env` trên VPS

```bash
nano ~/deploy/psts-deploy/.env
```

Mẫu (điền secret thật; **không** commit):

```env
MYSQL_ROOT_PASSWORD=<mat_khau_manh>
JWT_SECRET=<chuoi_dai_it_nhat_32_ky_tu>

GOOGLE_CLIENT_ID=...
GOOGLE_CLIENT_SECRET=...

MAIL_USERNAME=...
MAIL_PASSWORD=...   # Gmail App Password

CLOUDINARY_CLOUD_NAME=...
CLOUDINARY_API_KEY=...
CLOUDINARY_API_SECRET=...

SUPABASE_URL=...
SUPABASE_KEY=...
SUPABASE_BUCKET=documents

# Collabora (optional — để trống discovery vẫn được)
COLLABORA_DISCOVERY_URL=
COLLABORA_WOPI_PUBLIC_URL=http://<VPS_IP>/wopi/files
COLLABORA_ASSET_PUBLIC_URL=http://<VPS_IP>/api/lessons/drafts/collabora/assets
COLLABORA_POST_MESSAGE_ORIGIN=http://<VPS_IP>
```

**Đang làm gì:** Compose inject biến vào container (DB password, JWT, OAuth, mail…). Thiếu `COLLABORA_*` sẽ làm **lesson-service crash** (placeholder không có default).

### Bước C — MySQL + Eureka (nền tảng)

```bash
cd ~/deploy/psts-deploy
docker compose up -d mysql
# Đợi healthy (~20–40s)
docker exec psts-mysql mysql -uroot -p"$MYSQL_ROOT_PASSWORD" -e "SHOW DATABASES;"

docker compose build eureka-server
docker compose up -d eureka-server
curl -s -o /dev/null -w "%{http_code}\n" http://127.0.0.1:8761/
```

**Đang làm gì:**

- `mysql/init.sql` tạo 7 DB: `edu`, `classroom_db`, `test_db`, `image_db`, `textbook_db`, `lesson_db`, `tts_db`.
- Eureka: service registry. Healthcheck dùng TCP port 8761 (image JRE **không** có `curl`).

### Bước D — Auth stack (user-service quan trọng)

```bash
docker compose build auth-service user-service
docker compose up -d auth-service user-service
```

**Đang làm gì:**

- **user-service (8082):** login, OTP, register, admin, OAuth — **auth production**.
- **auth-service (8081):** module còn trong compose nhưng OTP hiện **stub**; Nginx route `/api/auth/` → **user-service**.

Smoke (trong Docker network):

```bash
docker run --rm --network psts-deploy_psts-network curlimages/curl:8.5.0 \
  -s -o /dev/null -w "login=%{http_code}\n" \
  -X POST http://user-service:8082/api/auth/login \
  -H "Content-Type: application/json" \
  -d '{"email":"a@b.com","password":"x"}'
# Kỳ vọng 400 (sai mật khẩu) — không phải connection refused
```

### Bước E — Các backend còn lại

```bash
docker compose build \
  classroom-service test-service image-service textbook-service \
  lesson-service tts-service translate-service speech-recognition-service
docker compose up -d \
  classroom-service test-service image-service textbook-service \
  lesson-service tts-service translate-service speech-recognition-service
```

**Đang làm gì:** Build multi-module Maven (Dockerfile `SERVICE_NAME`) — lần đầu package hết module; lần sau cache nhanh. Mỗi service: DB riêng + đăng ký Eureka.

### Bước F — Python API (lâu)

```bash
docker compose build python-api   # 10–25 phút (torch, faster-whisper, rembg)
docker compose up -d python-api
```

**Đang làm gì:** FastAPI phục vụ TTS/canvas/image AI; Spring services gọi `http://python-api:8001` nội bộ.

### Bước G — Frontend + Nginx public

```bash
# Kiểm tra IP trước build
grep VITE_ ../PrimarySchoolTeacherSupportSystemFrontEnd/.env.local

docker compose build frontend
docker compose up -d frontend
```

**Đang làm gì:**

1. `npm run build` với `.env.local` (IP VPS).  
2. Copy `dist` vào nginx image.  
3. Mount `psts-deploy/nginx/default.conf` **đè** config trong image → reverse proxy API.  
4. Publish **host:80 → container:80**.

### Bước H — Checklist sau deploy

```bash
curl -s -o /dev/null -w "home=%{http_code}\n" http://127.0.0.1/
curl -s -o /dev/null -w "auth_login=%{http_code}\n" -X POST http://127.0.0.1/api/auth/login \
  -H "Content-Type: application/json" -d '{"email":"t@e.com","password":"x"}'
curl -s -o /dev/null -w "auth_otp=%{http_code}\n" -X POST http://127.0.0.1/api/auth/send-otp \
  -H "Content-Type: application/json" -d '{"email":"t@e.com"}'
curl -s -o /dev/null -w "image=%{http_code}\n" http://127.0.0.1/image-api/health
curl -s -o /dev/null -w "python=%{http_code}\n" http://127.0.0.1/python-api/docs
docker compose ps
```

| Endpoint | Kỳ vọng |
|----------|---------|
| `/` | 200 |
| `/api/auth/login` (sai pass) | 400 |
| `/api/auth/send-otp` | 200 |
| `/image-api/health` | 200 |
| `/python-api/docs` | 200 |

Browser (tab ẩn danh): `http://<VPS_IP>`  
F12 Network: request phải tới `<VPS_IP>`, **không** `localhost` / IP cũ.

---

## 4. Cập nhật code lên VPS khi 3 repo chính có code mới

### 4.1 Trên máy local

```bash
# 1) Lấy code mới từ main (hoặc nhánh feature đã merge main)
# FrontEnd
cd PrimarySchoolTeacherSupportSystemFrontEnd
git checkout test-deploy
git fetch origin
git merge origin/main -m "Merge main into test-deploy"
# Nếu đổi IP VPS hoặc hardcode mới: sửa .env.local + grep localhost
git push origin test-deploy

# Backend
cd ../PrimarySchoolTeacherSupportSystemBackend
git checkout test-deploy && git fetch origin
git merge origin/main -m "Merge main into test-deploy"
# Kiểm tra: pom module, controller path mới → có thể phải sửa nginx
git push origin test-deploy

# api-python
cd ../api-python
git checkout test-deploy && git fetch origin
git merge origin/main -m "Merge main into test-deploy"
git push origin test-deploy

# psts-deploy (nếu đổi compose/nginx/env keys)
cd ../psts-deploy
git checkout test-deploy
# sửa file → commit → push
git push origin test-deploy
```

### 4.2 Trên VPS — pull + rebuild có chọn lọc

```bash
cd ~/deploy

# Pull từng repo
git -C PrimarySchoolTeacherSupportSystemFrontEnd pull origin test-deploy
git -C PrimarySchoolTeacherSupportSystemBackend pull origin test-deploy
git -C api-python pull origin test-deploy
git -C psts-deploy pull origin test-deploy

cd ~/deploy/psts-deploy
```

| Thay đổi gì | Lệnh rebuild |
|-------------|--------------|
| Chỉ frontend UI / `.env.local` | `docker compose build frontend && docker compose up -d frontend` |
| 1 service backend (vd user-service) | `docker compose build user-service && docker compose up -d user-service` |
| Nhiều / toàn bộ Java | `docker compose build <list> && docker compose up -d <list>` |
| api-python | `docker compose build python-api && docker compose up -d python-api` (lâu) |
| Chỉ nginx route | `docker compose up -d frontend` (volume mount conf — restart là đủ nếu conf đổi) |
| `.env` secret | Sửa file → `docker compose up -d <service dùng biến đó>` (recreate) |

**Lưu ý cache Docker:**

- Backend Dockerfile copy source rồi `mvn package` — đổi code Java thường rebuild layer package.  
- Frontend **bắt buộc** rebuild khi đổi `VITE_*` / IP.  
- Đổi path Controller → cập nhật `nginx/default.conf` rồi restart frontend.

### 4.3 Script cập nhật nhanh (copy dùng lại)

```bash
# ~/deploy/update.sh — chỉnh service cần rebuild
#!/usr/bin/env bash
set -e
cd ~/deploy
for r in PrimarySchoolTeacherSupportSystemFrontEnd PrimarySchoolTeacherSupportSystemBackend api-python psts-deploy; do
  echo "=== pull $r ==="
  git -C "$r" pull origin test-deploy
done
cd ~/deploy/psts-deploy
# Ví dụ: chỉ frontend + user
docker compose build frontend user-service
docker compose up -d frontend user-service
docker compose ps
```

### 4.4 Rollback nhanh

```bash
cd ~/deploy/<repo>
git log --oneline -5
git checkout <commit_cu>
cd ~/deploy/psts-deploy
docker compose build <service> && docker compose up -d <service>
```

---

## 5. Chuyển lại nhánh local — tránh lỗi URL

### 5.1 Vấn đề

| Trên `test-deploy` | Khi checkout `main` / nhánh local |
|--------------------|-----------------------------------|
| `.env.local` = `http://34.87.139.63/...` | API gọi VPS thay vì localhost |
| Code dùng `VITE_GATEWAY_URL` | Fallback `localhost:8080` nếu **không** có `.env.local` |
| Local gateway/port 8080 hoặc 5173 | Không khớp VPS |

### 5.2 File env cục bộ cần chú ý

#### A) `PrimarySchoolTeacherSupportSystemFrontEnd/.env.local`

**Local dev (mẫu — tùy bạn chạy gateway hay từng service):**

```env
VITE_GATEWAY_URL=http://localhost:8080/api
VITE_TTS_API_URL=http://localhost:8080/api/tts
VITE_PRONUNCIATION_API_URL=http://localhost:8080/api/pronunciation
VITE_TRANSLATE_API_URL=http://localhost:8080/api/translate
VITE_IMAGE_API_URL=http://localhost:8080
VITE_CANVAS_API_URL=http://localhost:8001
VITE_USER_SERVICE_URL=http://localhost:8080/api/user
```

Hoặc nếu không dùng gateway, trỏ đúng port từng service theo `ARCHITECTURE_PORTS_GUIDE.md`.

**Sau khi đổi `.env.local`:** restart `npm run dev` (Vite đọc lại env). Không cần commit nếu chỉ local; trên `test-deploy` file này **đang track** IP VPS — cẩn thận khi commit:

```bash
# Trước khi commit trên test-deploy: chắc IP là VPS
# Trước khi dev local trên main: đổi về localhost, đừng commit nhầm IP VPS lên main
git checkout main -- .env.local 2>/dev/null || true
# hoặc giữ 2 file:
#   .env.local          → local (gitignore nếu có thể)
#   .env.production     → VPS (dùng lúc docker build)
```

**Khuyến nghị dài hạn:**  
- Local: `.env.local` gitignore, không commit.  
- Deploy: build với `--build-arg` hoặc copy `.env.production` trong Dockerfile.  
(Hiện tại project track `.env.local` trên `test-deploy` — khi switch branch nhớ chỉnh IP.)

#### B) `PrimarySchoolTeacherSupportSystemBackend/.env`

```env
EUREKA_DEFAULT_ZONE=http://localhost:8761/eureka/
JWT_SECRET=...
# DB localhost, mail, Google redirect localhost
AUTH_GOOGLE_REDIRECT_URI=http://localhost:8081/login/oauth2/code/google
USER_GOOGLE_REDIRECT_URI=http://localhost:8080/login/oauth2/code/google
CLASSROOM_FRONTEND_BASE_URL=http://localhost:5173
```

File này **gitignore** — không lên VPS. Compose VPS dùng `psts-deploy/.env`.

#### C) `api-python/.env`

```env
HOST=0.0.0.0
PORT=8001
CLOUDINARY_*=...
DEBUG=True
```

Local; VPS inject Cloudinary qua compose.

#### D) `psts-deploy/.env`

Chỉ trên VPS (và bản local để tham chiếu). **Không push.**

### 5.3 Checklist khi `git checkout main` (hoặc nhánh local)

```text
[ ] Frontend: .env.local → localhost (hoặc xóa để dùng .env.example)
[ ] Frontend: npm run dev lại sau khi sửa env
[ ] Backend: .env local DB password / port đúng MySQL máy bạn
[ ] Không commit file .env có secret
[ ] F12: request API phải là localhost, không phải 34.87.139.63
[ ] Google OAuth redirect URI local vẫn khai báo trên Google Console
```

### 5.4 Checklist khi quay lại `test-deploy` để deploy

```text
[ ] merge origin/main → test-deploy (3 repo)
[ ] FrontEnd .env.local = http://<VPS_IP>/...
[ ] grep src: không hardcode localhost (trừ fallback ||)
[ ] psts-deploy nginx/compose: IP + route path đúng controller mới
[ ] push chỉ test-deploy
[ ] VPS pull + rebuild service liên quan
```

---

## 6. Nginx — quy tắc route (tránh 404)

File: `psts-deploy/nginx/default.conf`

| Sai (thường gặp) | Đúng (controller thật) |
|------------------|------------------------|
| `/api/classroom/` | `/api/classrooms/` |
| `/api/test/` | `/api/tests/`, `/api/questions/` |
| `/api/lesson/` | `/api/lessons/`, `/wopi/` |
| `/api/textbook/` | `/api/textbooks` |
| strip path `/api/auth/` → service root | `proxy_pass .../api/auth/` giữ path |
| auth → auth-service stub | auth → **user-service:8082** |

Prefix dài hơn thắng (`/api/admin/classrooms/` trước `/api/admin/`).

Khi main thêm Controller path mới → **bắt buộc** cập nhật nginx trước khi kỳ vọng API public chạy.

---

## 7. Lệnh vận hành thường dùng

```bash
cd ~/deploy/psts-deploy

docker compose ps
docker compose logs <service> --tail=100 -f
docker compose restart <service>
docker compose down          # dừng hết (giữ volume MySQL)
docker compose down -v       # XÓA data MySQL — cẩn thận!

# Xem Eureka UI (nếu mở port 8761)
# http://<VPS_IP>:8761
```

### Bảo mật gợi ý

- Đóng port **3306** và **8761** trên GCP Firewall (chỉ giữ 80/443).  
- Đặt `MYSQL_ROOT_PASSWORD` mạnh.  
- Không commit `.env`.  
- Google OAuth: thêm URI `http://<VPS_IP>/login/oauth2/code/google`.

---

## 8. Xử lý sự cố nhanh

| Triệu chứng | Nguyên nhân thường gặp | Cách xử lý |
|-------------|------------------------|------------|
| Frontend load, API fail / localhost | Build với IP sai hoặc hardcode | Sửa `.env.local`, rebuild frontend |
| 502 Bad Gateway | Service down / sai hostname | `docker compose ps`, logs |
| 404 API | Nginx path sai | Đối chiếu `@RequestMapping` |
| lesson-service restart loop | Thiếu `COLLABORA_*` | Thêm env, recreate container |
| Eureka never healthy | healthcheck curl | Dùng TCP check (đã fix compose) |
| Build Java fail | Lỗi compile module | `docker compose build X --no-cache`, đọc log Maven |
| OTP/login fail | DB trống / mail | Register user mới; check MAIL_* |
| IP đổi sau restart | Chưa Static IP | Reserve static |

---

## 9. Tóm tắt “đang làm gì” theo tầng

1. **Static IP** — cố định URL frontend/API.  
2. **Docker** — đóng gói từng service, cùng network `psts-network`.  
3. **MySQL init** — tạo schema rỗng; Hibernate `ddl-auto=update` tạo bảng.  
4. **Eureka** — đăng ký service (nội bộ).  
5. **Java services** — business API.  
6. **Python** — AI/media.  
7. **Frontend build** — nhúng `VITE_*` vào JS tĩnh.  
8. **Nginx** — entrypoint duy nhất port 80: static + reverse proxy.

---

## 10. Liên kết commit / phiên bản tham chiếu (lần deploy 2026-07-13)

| Repo | Nhánh | Ghi chú |
|------|-------|---------|
| FrontEnd | `test-deploy` | IP VPS + bỏ hardcode localhost |
| Backend | `test-deploy` | merge main (action log, TTS…) |
| api-python | `test-deploy` | merge main |
| psts-deploy | `test-deploy` | nginx path đúng, Collabora env, Eureka healthcheck |

VPS: `teachprimary` · Zone `asia-southeast1-a` · IP static `34.87.139.63`

---

*Cập nhật tài liệu này khi đổi IP, thêm service, hoặc đổi path Controller.*
