-- Demo: admin / gv1 / hs1  password = Matkhau1@
-- BCrypt: $2a$10$u5dvV.nbHmOSmFjd2ag9SObmNZeR9t1kraSBQqhoRoj.qbYHj6ByO
USE `edu`;

INSERT INTO `roles` (`id`, `name`) VALUES
  (1, 'STUDENT'),
  (2, 'TEACHER'),
  (3, 'ADMIN')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);

-- role column (legacy Hibernate): buyer=STUDENT, seller=TEACHER, admin=ADMIN
INSERT INTO `users` (
  `username`, `email`, `password`, `password_hash`, `full_name`, `role`,
  `is_active`, `is_email_verified`, `school_name`, `created_at`, `updated_at`
) VALUES
  ('admin', 'admin@teachprimary.dev',
   '$2a$10$u5dvV.nbHmOSmFjd2ag9SObmNZeR9t1kraSBQqhoRoj.qbYHj6ByO',
   '$2a$10$u5dvV.nbHmOSmFjd2ag9SObmNZeR9t1kraSBQqhoRoj.qbYHj6ByO',
   'Admin System', 'admin', 1, 1, 'PSTS Demo', NOW(), NOW()),
  ('gv1', 'gv1@teachprimary.dev',
   '$2a$10$u5dvV.nbHmOSmFjd2ag9SObmNZeR9t1kraSBQqhoRoj.qbYHj6ByO',
   '$2a$10$u5dvV.nbHmOSmFjd2ag9SObmNZeR9t1kraSBQqhoRoj.qbYHj6ByO',
   'Giao Vien Demo', 'seller', 1, 1, 'PSTS Demo', NOW(), NOW()),
  ('hs1', 'hs1@teachprimary.dev',
   '$2a$10$u5dvV.nbHmOSmFjd2ag9SObmNZeR9t1kraSBQqhoRoj.qbYHj6ByO',
   '$2a$10$u5dvV.nbHmOSmFjd2ag9SObmNZeR9t1kraSBQqhoRoj.qbYHj6ByO',
   'Hoc Sinh Demo', 'buyer', 1, 1, 'PSTS Demo', NOW(), NOW())
ON DUPLICATE KEY UPDATE
  `password` = VALUES(`password`),
  `password_hash` = VALUES(`password_hash`),
  `full_name` = VALUES(`full_name`),
  `role` = VALUES(`role`),
  `is_active` = 1,
  `is_email_verified` = 1,
  `updated_at` = NOW();

INSERT IGNORE INTO `user_roles` (`user_id`, `role_id`)
SELECT u.id, 3 FROM users u WHERE u.username = 'admin';
INSERT IGNORE INTO `user_roles` (`user_id`, `role_id`)
SELECT u.id, 2 FROM users u WHERE u.username = 'gv1';
INSERT IGNORE INTO `user_roles` (`user_id`, `role_id`)
SELECT u.id, 1 FROM users u WHERE u.username = 'hs1';

DELETE ur FROM user_roles ur JOIN users u ON u.id = ur.user_id
WHERE u.username = 'admin' AND ur.role_id <> 3;
DELETE ur FROM user_roles ur JOIN users u ON u.id = ur.user_id
WHERE u.username = 'gv1' AND ur.role_id <> 2;
DELETE ur FROM user_roles ur JOIN users u ON u.id = ur.user_id
WHERE u.username = 'hs1' AND ur.role_id <> 1;

SELECT u.id, u.username, u.email, u.role, u.is_active, ur.role_id, r.name AS role_name
FROM users u
LEFT JOIN user_roles ur ON ur.user_id = u.id
LEFT JOIN roles r ON r.id = ur.role_id
WHERE u.username IN ('admin', 'gv1', 'hs1');
