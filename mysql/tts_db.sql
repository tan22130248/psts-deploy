/*
 Navicat Premium Dump SQL

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100432 (10.4.32-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : tts_db

 Target Server Type    : MySQL
 Target Server Version : 100432 (10.4.32-MariaDB)
 File Encoding         : 65001

 Date: 14/07/2026 09:07:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for audio_records
-- ----------------------------
DROP TABLE IF EXISTS `audio_records`;
CREATE TABLE `audio_records`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Original Vietnamese text',
  `audio_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL COMMENT 'ID of user who created the audio',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'Name of user who created the audio',
  `audio_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'Display name of the saved audio',
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'Subject name for the saved audio',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Record creation time',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last update time',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_user_id`(`user_id` ASC) USING BTREE,
  INDEX `idx_created_at`(`created_at` ASC) USING BTREE,
  INDEX `idx_user_created`(`user_id` ASC, `created_at` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Table storing TTS audio records' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of audio_records
-- ----------------------------
INSERT INTO `audio_records` VALUES (4, '', 'https://res.cloudinary.com/dlyhvdonu/video/upload/v1776334868/audio_uploads/audio_1776334867.mp3', 28, 'kaybbkk', 'Nguyễn Quốc Tấn', 'Thể dục', '2026-04-16 10:21:08', '2026-04-16 10:21:08');
INSERT INTO `audio_records` VALUES (5, 'apple', 'https://res.cloudinary.com/dlyhvdonu/video/upload/v1776571549/tts-audios/tts_1776571549059.mp3', 27, 'van41527', 'Trái táo', 'toán', '2026-04-19 04:07:53', '2026-04-19 04:07:53');
INSERT INTO `audio_records` VALUES (8, '', 'https://res.cloudinary.com/dlyhvdonu/video/upload/v1779988271/audio_uploads/audio_1779988272.webm', 31, 'ngnhut047', 'bài tập toán  - Câu 105', 'Toán', '2026-05-28 17:11:13', '2026-05-28 17:11:13');
INSERT INTO `audio_records` VALUES (9, '', 'https://res.cloudinary.com/dlyhvdonu/video/upload/v1780107898/audio_uploads/audio_1780107897.webm', 31, 'ngnhut047', 'bài tập toán  - Câu 109', 'Toán', '2026-05-30 02:24:58', '2026-05-30 02:24:58');
INSERT INTO `audio_records` VALUES (11, '', 'https://res.cloudinary.com/dlyhvdonu/video/upload/v1780108022/audio_uploads/audio_1780108022.webm', 31, 'ngnhut047', 'bài tập toán  - Câu 113', 'Toán', '2026-05-30 02:27:03', '2026-05-30 02:27:03');
INSERT INTO `audio_records` VALUES (12, '', 'https://res.cloudinary.com/dlyhvdonu/video/upload/v1780108246/audio_uploads/audio_1780108245.webm', 31, 'ngnhut047', 'bài tập toán  - Câu 117', 'Toán', '2026-05-30 02:30:46', '2026-05-30 02:30:46');
INSERT INTO `audio_records` VALUES (13, '', 'https://res.cloudinary.com/dlyhvdonu/video/upload/v1780109956/audio_uploads/audio_1780109953.webm', 31, 'ngnhut047', 'bài tập toán  - Câu 117', 'Toán', '2026-05-30 02:59:16', '2026-05-30 02:59:16');
INSERT INTO `audio_records` VALUES (14, '', 'https://res.cloudinary.com/dlyhvdonu/video/upload/v1780110585/audio_uploads/audio_1780110583.webm', 31, 'ngnhut047', 'bài tập toán  - Câu 117', 'Toán', '2026-05-30 03:09:45', '2026-05-30 03:09:45');
INSERT INTO `audio_records` VALUES (15, '', 'https://res.cloudinary.com/dlyhvdonu/video/upload/v1780110735/audio_uploads/audio_1780110735.webm', 31, 'ngnhut047', 'bài tập toán  - Câu 121', 'Toán', '2026-05-30 03:12:15', '2026-05-30 03:12:15');
INSERT INTO `audio_records` VALUES (16, 'monkey', 'https://res.cloudinary.com/dlyhvdonu/video/upload/v1783671265/tts-audios/tts_1783671263628.mp3', 27, 'van41527', 'Con khỉ', 'Tiếng Anh', '2026-07-10 08:14:44', '2026-07-10 08:14:44');
INSERT INTO `audio_records` VALUES (17, '', 'https://res.cloudinary.com/dlyhvdonu/video/upload/v1783672508/audio_uploads/audio_1783672507.webm', 31, 'ngnhut047', 'Bài tập Toán lớp 1 - Số 1 - Câu 698', 'Toán', '2026-07-10 08:35:08', '2026-07-10 08:35:08');

SET FOREIGN_KEY_CHECKS = 1;
