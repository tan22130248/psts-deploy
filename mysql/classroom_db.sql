/*
 Navicat Premium Dump SQL

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100432 (10.4.32-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : classroom_db

 Target Server Type    : MySQL
 Target Server Version : 100432 (10.4.32-MariaDB)
 File Encoding         : 65001

 Date: 14/07/2026 09:05:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for classroom_invitations
-- ----------------------------
DROP TABLE IF EXISTS `classroom_invitations`;
CREATE TABLE `classroom_invitations`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `classroom_id` bigint NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` bigint NULL DEFAULT NULL,
  `invited_by` bigint NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'WAITING_REGISTER, INVITED, ACCEPTED, REJECTED, EXPIRED, CANCELLED',
  `expired_at` datetime NOT NULL,
  `accepted_at` datetime NULL DEFAULT NULL,
  `rejected_at` datetime NULL DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_token`(`token` ASC) USING BTREE,
  INDEX `idx_classroom_id`(`classroom_id` ASC) USING BTREE,
  INDEX `idx_email`(`email` ASC) USING BTREE,
  INDEX `idx_student_id`(`student_id` ASC) USING BTREE,
  INDEX `idx_status`(`status` ASC) USING BTREE,
  INDEX `idx_classroom_email_status`(`classroom_id` ASC, `email` ASC, `status` ASC) USING BTREE,
  CONSTRAINT `fk_invitation_classroom` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of classroom_invitations
-- ----------------------------
INSERT INTO `classroom_invitations` VALUES (19, 4, '22130188@st.hcmuaf.edu.vn', 41, 40, '264d5a473fa543aaa32f86a2dcfc1fc3', 'ACCEPTED', '2026-04-15 16:14:04', '2026-04-08 16:15:19', NULL, '2026-04-08 16:14:04', '2026-04-08 16:15:19');
INSERT INTO `classroom_invitations` VALUES (20, 4, 'danganhnguyen024@gmail.com', 43, 40, 'aa965c31b54743e39baf3186d81c0ebe', 'ACCEPTED', '2026-04-15 16:14:27', '2026-04-08 16:34:45', NULL, '2026-04-08 16:14:27', '2026-04-08 16:34:45');
INSERT INTO `classroom_invitations` VALUES (21, 5, 'danganhnguyen024@gmail.com', 43, 40, '74f2e8ade10445d7bc0f3dae7aa8d69f', 'ACCEPTED', '2026-04-15 17:08:10', '2026-04-08 17:09:06', NULL, '2026-04-08 17:08:10', '2026-04-08 17:09:06');
INSERT INTO `classroom_invitations` VALUES (22, 7, 'kaybbkk@gmail.com', 28, 27, '24d8e36d6196484ea4e6c43c6c5c68e1', 'REJECTED', '2026-04-19 16:30:36', NULL, '2026-04-12 16:31:22', '2026-04-12 16:30:36', '2026-04-12 16:31:22');

-- ----------------------------
-- Table structure for classroom_members
-- ----------------------------
DROP TABLE IF EXISTS `classroom_members`;
CREATE TABLE `classroom_members`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `classroom_id` bigint NOT NULL,
  `student_id` bigint NOT NULL,
  `join_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'INVITE_LINK, EMAIL_INVITE, CLASS_CODE',
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ACTIVE',
  `joined_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_classroom_student`(`classroom_id` ASC, `student_id` ASC) USING BTREE,
  UNIQUE INDEX `UKsydkk8cs1x6ol5jttwgn1tmrc`(`classroom_id` ASC, `student_id` ASC) USING BTREE,
  INDEX `idx_classroom_id`(`classroom_id` ASC) USING BTREE,
  INDEX `idx_student_id`(`student_id` ASC) USING BTREE,
  CONSTRAINT `fk_member_classroom` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of classroom_members
-- ----------------------------
INSERT INTO `classroom_members` VALUES (19, 4, 41, 'EMAIL_INVITE', 'ACTIVE', '2026-04-08 16:15:19', '2026-04-08 16:15:19');
INSERT INTO `classroom_members` VALUES (20, 4, 43, 'EMAIL_INVITE', 'ACTIVE', '2026-04-08 16:34:45', '2026-04-08 16:34:45');
INSERT INTO `classroom_members` VALUES (21, 5, 41, 'CLASS_CODE', 'ACTIVE', '2026-04-08 16:35:45', '2026-04-08 16:35:45');
INSERT INTO `classroom_members` VALUES (22, 5, 43, 'EMAIL_INVITE', 'ACTIVE', '2026-04-08 17:09:06', '2026-04-08 17:09:06');
INSERT INTO `classroom_members` VALUES (23, 6, 41, 'CLASS_CODE', 'ACTIVE', '2026-04-08 17:12:07', '2026-04-08 17:12:07');
INSERT INTO `classroom_members` VALUES (24, 7, 28, 'CLASS_CODE', 'REMOVED', '2026-04-12 16:24:09', '2026-04-12 16:24:09');
INSERT INTO `classroom_members` VALUES (29, 9, 29, 'CLASS_CODE', 'ACTIVE', '2026-04-19 12:26:44', '2026-04-19 12:26:44');
INSERT INTO `classroom_members` VALUES (30, 8, 31, 'CLASS_CODE', 'ACTIVE', '2026-05-19 11:45:14', '2026-05-19 11:45:14');
INSERT INTO `classroom_members` VALUES (31, 8, 32, 'CLASS_CODE', 'ACTIVE', '2026-05-26 21:54:44', '2026-05-26 21:54:44');

-- ----------------------------
-- Table structure for classroom_post_attachments
-- ----------------------------
DROP TABLE IF EXISTS `classroom_post_attachments`;
CREATE TABLE `classroom_post_attachments`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NULL DEFAULT NULL,
  `drive_file_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `mime_type` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size_bytes` bigint NULL DEFAULT NULL,
  `thumbnail_link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `web_content_link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `web_view_link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_post_attachment_post`(`post_id` ASC) USING BTREE,
  CONSTRAINT `FK1daa818x7k1x7ydg66ftvf1j6` FOREIGN KEY (`post_id`) REFERENCES `classroom_posts` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of classroom_post_attachments
-- ----------------------------
INSERT INTO `classroom_post_attachments` VALUES (1, '2026-04-19 12:25:07.000000', '1iIFnMEaIo1LkzzptogoGunPf8i2iUwns', NULL, NULL, 'Drive File', NULL, NULL, NULL, 'https://drive.google.com/file/d/1iIFnMEaIo1LkzzptogoGunPf8i2iUwns/view?usp=drive_web', 1);

-- ----------------------------
-- Table structure for classroom_posts
-- ----------------------------
DROP TABLE IF EXISTS `classroom_posts`;
CREATE TABLE `classroom_posts`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `author_id` bigint NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` datetime(6) NULL DEFAULT NULL,
  `updated_at` datetime(6) NULL DEFAULT NULL,
  `classroom_id` bigint NOT NULL,
  `attempt_limit` int NULL DEFAULT NULL,
  `duration_minutes` int NULL DEFAULT NULL,
  `max_points` int NULL DEFAULT NULL,
  `post_type` enum('ANNOUNCEMENT','ASSIGNMENT','TEST') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_count` int NULL DEFAULT NULL,
  `reference_test_id` bigint NULL DEFAULT NULL,
  `reference_test_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `start_at` datetime(6) NULL DEFAULT NULL,
  `title` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_post_classroom_created`(`classroom_id` ASC, `created_at` ASC) USING BTREE,
  CONSTRAINT `FKbftfpmwx1pffva9d4xp6pelbe` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of classroom_posts
-- ----------------------------
INSERT INTO `classroom_posts` VALUES (1, 28, NULL, '2026-04-19 12:25:06.000000', '2026-04-19 12:25:06.000000', 9, NULL, NULL, NULL, 'ANNOUNCEMENT', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `classroom_posts` VALUES (2, 28, '<p>mai nghĩ học các em&nbsp;</p><p>&nbsp;</p>', '2026-04-19 12:25:39.000000', '2026-04-19 12:25:39.000000', 9, NULL, NULL, NULL, 'ANNOUNCEMENT', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `classroom_posts` VALUES (8, 27, '<p>mai nghĩ học</p>', '2026-06-07 09:30:06.000000', '2026-06-07 09:30:06.000000', 8, 1, NULL, NULL, 'ANNOUNCEMENT', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `classroom_posts` VALUES (10, 27, '<p>làm hết sức&nbsp;</p>', '2026-07-10 15:24:06.000000', '2026-07-10 15:24:06.000000', 8, 5, 15, 5, 'ASSIGNMENT', 4, 36, 'Bài tập Toán lớp 1 - Số 1', '2026-07-11 15:23:00.000000', 'Bài tập');

-- ----------------------------
-- Table structure for classrooms
-- ----------------------------
DROP TABLE IF EXISTS `classrooms`;
CREATE TABLE `classrooms`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `teacher_id` bigint NOT NULL,
  `created_by` bigint NOT NULL,
  `class_code` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `invite_link_token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime NULL DEFAULT NULL,
  `grade_level` int NULL DEFAULT NULL,
  `subject` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_class_code`(`class_code` ASC) USING BTREE,
  UNIQUE INDEX `uk_invite_link_token`(`invite_link_token` ASC) USING BTREE,
  INDEX `idx_teacher_id`(`teacher_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of classrooms
-- ----------------------------
INSERT INTO `classrooms` VALUES (4, 'Toán lớp 3', 'Dạy toán chuyên sâu', 40, 40, '8GTB22', '4e997cb117124859aa9b06107ad92701', 0, '2026-04-08 16:13:53', '2026-04-08 16:13:53', NULL, NULL, NULL);
INSERT INTO `classrooms` VALUES (5, 'Anh lớp 1', 'Anh văn', 40, 40, '5AFW79', 'd6563e16383347d880321f53381bac9d', 0, '2026-04-08 16:34:12', '2026-04-08 16:34:12', NULL, NULL, NULL);
INSERT INTO `classrooms` VALUES (6, 'Tiếng Việt lớp 4', 'Tiếng việt oke', 40, 40, 'D3ULA4', '651659644f17435fb3bc203ecb77c966', 0, '2026-04-08 17:11:50', '2026-04-08 17:11:50', NULL, NULL, NULL);
INSERT INTO `classrooms` VALUES (7, 'Lớp 4A', '', 27, 27, 'H89TRW', '20af3b506ba04d0799bb4937e79ca030', 1, '2026-04-12 16:23:17', '2026-04-16 16:55:34', '2026-04-16 16:55:34', NULL, NULL);
INSERT INTO `classrooms` VALUES (8, 'Lớp 5c', '', 27, 27, 'AEBZRV', '886e8d1842094916a8398c29135319cb', 0, '2026-04-16 16:54:42', '2026-04-16 16:54:42', NULL, NULL, NULL);
INSERT INTO `classrooms` VALUES (9, 'ok', '', 28, 28, '6TTEBM', 'eaccca279c384c98b5f4e4ccabeaf99a', 0, '2026-04-19 12:07:41', '2026-04-19 12:07:41', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for post_comments
-- ----------------------------
DROP TABLE IF EXISTS `post_comments`;
CREATE TABLE `post_comments`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `author_id` bigint NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(6) NULL DEFAULT NULL,
  `post_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_comment_post_created`(`post_id` ASC, `created_at` ASC) USING BTREE,
  CONSTRAINT `FKkqs2yvuq1mlnan8a4hqpqayg` FOREIGN KEY (`post_id`) REFERENCES `classroom_posts` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post_comments
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
