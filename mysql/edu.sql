/*
 Navicat Premium Dump SQL

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100432 (10.4.32-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : edu

 Target Server Type    : MySQL
 Target Server Version : 100432 (10.4.32-MariaDB)
 File Encoding         : 65001

 Date: 14/07/2026 09:04:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for access_logs
-- ----------------------------
DROP TABLE IF EXISTS `access_logs`;
CREATE TABLE `access_logs`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(6) NULL DEFAULT NULL,
  `endpoint` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `full_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `module` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `resource_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `severity` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_access_logs_user_id`(`user_id` ASC) USING BTREE,
  INDEX `idx_access_logs_created_at`(`created_at` ASC) USING BTREE,
  INDEX `idx_access_logs_module`(`module` ASC) USING BTREE,
  INDEX `idx_access_logs_action`(`action` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 324 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of access_logs
-- ----------------------------
INSERT INTO `access_logs` VALUES (70, 'Truy cập hệ thống', '2026-07-12 13:49:18.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (71, 'Truy cập hệ thống', '2026-07-12 13:49:48.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (72, 'Truy cập hệ thống', '2026-07-12 13:50:18.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (73, 'Truy cập hệ thống', '2026-07-12 13:50:51.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (74, 'Truy cập hệ thống', '2026-07-12 13:51:51.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (75, 'Truy cập hệ thống', '2026-07-12 13:52:51.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (76, 'Truy cập hệ thống', '2026-07-12 13:53:51.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (77, 'Truy cập hệ thống', '2026-07-12 13:54:51.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (78, 'Truy cập hệ thống', '2026-07-12 13:55:51.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (79, 'Truy cập hệ thống', '2026-07-12 13:56:28.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (80, 'Xem danh mục', '2026-07-12 13:56:39.000000', '/api/admin/categories', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'categories', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (81, 'Xem danh mục', '2026-07-12 13:56:39.000000', '/api/admin/categories', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'categories', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (82, 'Xem danh mục', '2026-07-12 13:56:39.000000', '/api/admin/categories', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'categories', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (83, 'Xem danh mục', '2026-07-12 13:56:39.000000', '/api/admin/categories', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'categories', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (84, 'Truy cập hệ thống', '2026-07-12 13:56:39.000000', '/api/user/me', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (85, 'Xem danh mục', '2026-07-12 13:56:39.000000', '/api/admin/categories', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'categories', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (86, 'Xem danh mục', '2026-07-12 13:56:39.000000', '/api/admin/categories', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'categories', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (87, 'Xem danh mục', '2026-07-12 13:56:39.000000', '/api/admin/categories', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'categories', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (88, 'Xem danh mục', '2026-07-12 13:56:39.000000', '/api/admin/categories', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'categories', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (89, 'Truy cập hệ thống', '2026-07-12 13:56:39.000000', '/api/user/me', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (90, 'Truy cập hệ thống', '2026-07-12 13:56:39.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (91, 'Xem danh sách người dùng', '2026-07-12 13:56:39.000000', '/api/admin/users', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'user-service', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (92, 'Xem danh sách người dùng', '2026-07-12 13:56:40.000000', '/api/admin/users', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'user-service', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (93, 'Truy cập hệ thống', '2026-07-12 13:56:40.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (94, 'Xem danh sách người dùng', '2026-07-12 13:56:40.000000', '/api/admin/users', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'user-service', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (95, 'Xem danh sách người dùng', '2026-07-12 13:56:40.000000', '/api/admin/users', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'user-service', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (96, 'Truy cập hệ thống', '2026-07-12 13:56:52.000000', '/api/user/me', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 37, 'tannguyen4420', 'INFO');
INSERT INTO `access_logs` VALUES (97, 'Truy cập hệ thống', '2026-07-12 13:56:52.000000', '/api/user/me', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 37, 'tannguyen4420', 'INFO');
INSERT INTO `access_logs` VALUES (98, 'Truy cập hệ thống', '2026-07-12 13:56:53.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 37, 'tannguyen4420', 'INFO');
INSERT INTO `access_logs` VALUES (99, 'Truy cập hệ thống', '2026-07-12 13:56:53.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 37, 'tannguyen4420', 'INFO');
INSERT INTO `access_logs` VALUES (100, 'Truy cập hệ thống', '2026-07-12 13:57:02.000000', '/api/user/me', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (101, 'Truy cập hệ thống', '2026-07-12 13:57:02.000000', '/api/user/me', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (102, 'Truy cập hệ thống', '2026-07-12 13:57:02.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (103, 'Truy cập hệ thống', '2026-07-12 13:57:02.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (104, 'Truy cập hệ thống', '2026-07-12 13:57:10.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (105, 'Truy cập hệ thống', '2026-07-12 13:57:10.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (106, 'Truy cập hệ thống', '2026-07-12 13:57:11.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (107, 'Truy cập hệ thống', '2026-07-12 13:57:11.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (108, 'Truy cập hệ thống', '2026-07-12 13:57:12.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (109, 'Truy cập hệ thống', '2026-07-12 13:57:12.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (110, 'Truy cập hệ thống', '2026-07-12 13:57:12.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (111, 'Truy cập hệ thống', '2026-07-12 13:57:12.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (112, 'Truy cập hệ thống', '2026-07-12 13:57:43.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (113, 'Truy cập hệ thống', '2026-07-12 13:57:58.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (114, 'Truy cập hệ thống', '2026-07-12 13:57:58.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (115, 'Truy cập hệ thống', '2026-07-12 13:57:58.000000', '/api/user/me', NULL, '127.0.0.1', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Apache-HttpClient/5.4.1 (Java/23.0.1)', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (116, 'Truy cập hệ thống', '2026-07-12 13:57:58.000000', '/api/user/me', NULL, '127.0.0.1', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Apache-HttpClient/5.4.1 (Java/23.0.1)', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (117, 'Truy cập hệ thống', '2026-07-12 13:58:03.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (118, 'Truy cập hệ thống', '2026-07-12 13:58:03.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (119, 'Truy cập hệ thống', '2026-07-12 13:58:03.000000', '/api/user/me', NULL, '127.0.0.1', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Apache-HttpClient/5.4.1 (Java/23.0.1)', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (120, 'Truy cập hệ thống', '2026-07-12 13:58:03.000000', '/api/user/me', NULL, '127.0.0.1', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Apache-HttpClient/5.4.1 (Java/23.0.1)', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (121, 'Truy cập hệ thống', '2026-07-12 13:58:23.000000', '/api/user/me', NULL, '127.0.0.1', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Apache-HttpClient/5.4.1 (Java/23.0.1)', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (122, 'Truy cập hệ thống', '2026-07-12 13:58:25.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (123, 'Truy cập hệ thống', '2026-07-12 13:58:25.000000', '/api/user/me', NULL, '127.0.0.1', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Apache-HttpClient/5.4.1 (Java/23.0.1)', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (124, 'Truy cập hệ thống', '2026-07-12 13:58:25.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (125, 'Truy cập hệ thống', '2026-07-12 13:58:25.000000', '/api/user/me', NULL, '127.0.0.1', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Apache-HttpClient/5.4.1 (Java/23.0.1)', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (126, 'Truy cập hệ thống', '2026-07-12 13:58:32.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (127, 'Truy cập hệ thống', '2026-07-12 13:58:32.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (128, 'Truy cập hệ thống', '2026-07-12 13:59:02.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (129, 'Truy cập hệ thống', '2026-07-12 13:59:32.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (130, 'Truy cập hệ thống', '2026-07-12 13:59:49.000000', '/api/user/me', NULL, '127.0.0.1', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Apache-HttpClient/5.4.1 (Java/23.0.1)', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (131, 'Truy cập hệ thống', '2026-07-12 13:59:49.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (132, 'Truy cập hệ thống', '2026-07-12 13:59:49.000000', '/api/user/me', NULL, '127.0.0.1', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Apache-HttpClient/5.4.1 (Java/23.0.1)', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (133, 'Truy cập hệ thống', '2026-07-12 13:59:49.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (134, 'Truy cập hệ thống', '2026-07-12 13:59:50.000000', '/api/user/me', NULL, '127.0.0.1', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Apache-HttpClient/5.4.1 (Java/23.0.1)', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (135, 'Truy cập hệ thống', '2026-07-12 14:00:06.000000', '/api/user/me', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (136, 'Truy cập hệ thống', '2026-07-12 14:00:06.000000', '/api/user/me', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (137, 'Truy cập hệ thống', '2026-07-12 14:00:07.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (138, 'Xem danh sách người dùng', '2026-07-12 14:00:07.000000', '/api/admin/users', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'user-service', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (139, 'Xem danh sách người dùng', '2026-07-12 14:00:07.000000', '/api/admin/users', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'user-service', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (140, 'Truy cập hệ thống', '2026-07-12 14:00:07.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (141, 'Xem danh sách người dùng', '2026-07-12 14:00:07.000000', '/api/admin/users', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'user-service', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (142, 'Xem danh sách người dùng', '2026-07-12 14:00:07.000000', '/api/admin/users', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'user-service', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (143, 'Truy cập hệ thống', '2026-07-12 14:00:08.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'user-service', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (144, 'Truy cập hệ thống', '2026-07-12 14:00:08.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'user-service', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (145, 'Truy cập hệ thống', '2026-07-12 14:00:21.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'user-service', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (146, 'Truy cập hệ thống', '2026-07-12 14:00:28.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'user-service', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (147, 'Truy cập hệ thống', '2026-07-12 14:00:31.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'user-service', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (148, 'Truy cập hệ thống', '2026-07-12 14:00:33.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'user-service', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (149, 'Truy cập hệ thống', '2026-07-12 14:00:37.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (150, 'Truy cập hệ thống', '2026-07-12 14:00:38.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'user-service', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (151, 'Truy cập hệ thống', '2026-07-12 14:00:42.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'user-service', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (152, 'Truy cập hệ thống', '2026-07-12 14:00:44.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'user-service', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (153, 'Truy cập hệ thống', '2026-07-12 14:00:46.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'user-service', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (154, 'Truy cập hệ thống', '2026-07-12 14:00:48.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'user-service', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (155, 'Truy cập hệ thống', '2026-07-12 14:00:50.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'user-service', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (156, 'Truy cập hệ thống', '2026-07-12 14:00:53.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'user-service', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (157, 'Truy cập hệ thống', '2026-07-12 14:00:59.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'user-service', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (158, 'Truy cập hệ thống', '2026-07-12 14:01:07.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (159, 'Truy cập hệ thống', '2026-07-12 14:01:37.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (160, 'Truy cập hệ thống', '2026-07-12 14:02:07.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (161, 'Truy cập hệ thống', '2026-07-12 14:02:37.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (162, 'Truy cập hệ thống', '2026-07-12 14:03:07.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (163, 'Truy cập hệ thống', '2026-07-12 14:03:51.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (164, 'Truy cập hệ thống', '2026-07-12 14:04:51.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (165, 'Truy cập hệ thống', '2026-07-12 14:05:51.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (166, 'Truy cập hệ thống', '2026-07-12 14:06:51.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (167, 'Truy cập hệ thống', '2026-07-12 14:08:19.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (168, 'Truy cập hệ thống', '2026-07-12 14:08:37.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (169, 'Truy cập hệ thống', '2026-07-12 14:09:07.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (170, 'Truy cập hệ thống', '2026-07-12 14:09:51.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (171, 'Truy cập hệ thống', '2026-07-12 14:10:51.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (172, 'Truy cập hệ thống', '2026-07-12 14:11:51.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (173, 'Truy cập hệ thống', '2026-07-12 14:12:51.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (174, 'Truy cập hệ thống', '2026-07-12 14:13:51.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (175, 'Truy cập hệ thống', '2026-07-12 14:14:22.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (176, 'Truy cập hệ thống', '2026-07-12 14:14:37.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (177, 'Truy cập hệ thống', '2026-07-12 14:15:07.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (178, 'Truy cập hệ thống', '2026-07-12 14:15:51.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (179, 'Truy cập hệ thống', '2026-07-12 14:16:51.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (180, 'Truy cập hệ thống', '2026-07-12 14:17:51.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (181, 'Truy cập hệ thống', '2026-07-12 14:18:07.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (182, 'Truy cập hệ thống', '2026-07-12 14:18:37.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (183, 'Truy cập hệ thống', '2026-07-12 14:19:47.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (184, 'Truy cập hệ thống', '2026-07-12 14:20:07.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (185, 'Truy cập hệ thống', '2026-07-12 14:20:28.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (186, 'Xem danh mục', '2026-07-12 14:20:28.000000', '/api/admin/categories', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'categories', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (187, 'Xem danh mục', '2026-07-12 14:20:28.000000', '/api/admin/categories', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'categories', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (188, 'Xem danh mục', '2026-07-12 14:20:28.000000', '/api/admin/categories', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'categories', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (189, 'Xem danh mục', '2026-07-12 14:20:28.000000', '/api/admin/categories', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'categories', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (190, 'Truy cập hệ thống', '2026-07-12 14:20:28.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'user-service', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (191, 'Xem danh mục', '2026-07-12 14:20:28.000000', '/api/admin/categories', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'categories', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (192, 'Xem danh mục', '2026-07-12 14:20:28.000000', '/api/admin/categories', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'categories', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (193, 'Xem danh mục', '2026-07-12 14:20:28.000000', '/api/admin/categories', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'categories', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (194, 'Truy cập hệ thống', '2026-07-12 14:20:28.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (195, 'Xem danh mục', '2026-07-12 14:20:28.000000', '/api/admin/categories', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'categories', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (196, 'Truy cập hệ thống', '2026-07-12 14:20:28.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'user-service', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (197, 'Truy cập hệ thống', '2026-07-12 14:20:59.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (198, 'Truy cập hệ thống', '2026-07-12 14:21:29.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (199, 'Truy cập hệ thống', '2026-07-12 14:21:59.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (200, 'Truy cập hệ thống', '2026-07-12 14:22:29.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (201, 'Truy cập hệ thống', '2026-07-12 14:22:59.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (202, 'Truy cập hệ thống', '2026-07-12 14:23:29.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (203, 'Truy cập hệ thống', '2026-07-12 14:23:59.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (204, 'Truy cập hệ thống', '2026-07-12 14:24:29.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (205, 'Truy cập hệ thống', '2026-07-12 14:24:59.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (206, 'Truy cập hệ thống', '2026-07-12 14:25:51.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (207, 'Truy cập hệ thống', '2026-07-12 14:26:51.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (208, 'Truy cập hệ thống', '2026-07-12 14:27:51.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (209, 'Truy cập hệ thống', '2026-07-12 14:28:51.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (210, 'Truy cập hệ thống', '2026-07-12 14:29:51.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (211, 'Truy cập hệ thống', '2026-07-12 14:31:51.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (212, 'Xem danh sách môn học', '2026-07-12 14:33:21.000000', '/api/admin/categories', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'categories', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (213, 'Xem danh sách môn học', '2026-07-12 14:33:21.000000', '/api/admin/categories', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'categories', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (214, 'Xem nhật ký hoạt động', '2026-07-12 14:33:21.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'access-logs', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (215, 'Xem danh sách thông báo', '2026-07-12 14:33:21.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'notifications', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (216, 'Xem danh sách môn học', '2026-07-12 14:33:21.000000', '/api/admin/categories', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'categories', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (217, 'Xem danh sách môn học', '2026-07-12 14:33:21.000000', '/api/admin/categories', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'categories', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (218, 'Xem danh sách môn học', '2026-07-12 14:33:21.000000', '/api/admin/categories', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'categories', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (219, 'Xem nhật ký hoạt động', '2026-07-12 14:33:21.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'access-logs', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (220, 'Xem danh sách môn học', '2026-07-12 14:33:21.000000', '/api/admin/categories', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'categories', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (221, 'Xem danh sách môn học', '2026-07-12 14:33:21.000000', '/api/admin/categories', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'categories', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (222, 'Xem danh sách môn học', '2026-07-12 14:33:21.000000', '/api/admin/categories', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'categories', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (223, 'Xem danh sách thông báo', '2026-07-12 14:33:21.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'notifications', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (224, 'Xem nhật ký hoạt động', '2026-07-12 14:33:23.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'access-logs', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (225, 'Xem nhật ký hoạt động', '2026-07-12 14:33:26.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'access-logs', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (226, 'Xem danh sách môn học', '2026-07-12 14:33:28.000000', '/api/admin/categories', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'categories', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (227, 'Xem danh sách môn học', '2026-07-12 14:33:28.000000', '/api/admin/categories', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'categories', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (228, 'Xem thông tin cá nhân', '2026-07-12 14:33:37.000000', '/api/user/me', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (229, 'Xem thông tin cá nhân', '2026-07-12 14:33:37.000000', '/api/user/me', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (230, 'Xem danh sách thông báo', '2026-07-12 14:33:37.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'notifications', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (231, 'Xem danh sách thông báo', '2026-07-12 14:33:37.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'notifications', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (232, 'Xem thông tin cá nhân', '2026-07-12 14:33:38.000000', '/api/user/me', NULL, '127.0.0.1', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Apache-HttpClient/5.4.1 (Java/23.0.1)', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (233, 'Xem thông tin cá nhân', '2026-07-12 14:33:39.000000', '/api/user/me', NULL, '127.0.0.1', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Apache-HttpClient/5.4.1 (Java/23.0.1)', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (234, 'Xem danh sách thông báo', '2026-07-12 14:33:41.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'notifications', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (235, 'Xem thông tin cá nhân', '2026-07-12 14:33:41.000000', '/api/user/me', NULL, '127.0.0.1', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Apache-HttpClient/5.4.1 (Java/23.0.1)', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (236, 'Xem danh sách thông báo', '2026-07-12 14:33:41.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'notifications', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (237, 'Xem thông tin cá nhân', '2026-07-12 14:33:42.000000', '/api/user/me', NULL, '127.0.0.1', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Apache-HttpClient/5.4.1 (Java/23.0.1)', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (238, 'Xem danh sách thông báo', '2026-07-12 14:33:43.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'notifications', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (239, 'Xem thông tin cá nhân', '2026-07-12 14:33:43.000000', '/api/user/me', NULL, '127.0.0.1', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Apache-HttpClient/5.4.1 (Java/23.0.1)', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (240, 'Xem danh sách thông báo', '2026-07-12 14:33:43.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'notifications', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (241, 'Xem thông tin cá nhân', '2026-07-12 14:33:43.000000', '/api/user/me', NULL, '127.0.0.1', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Apache-HttpClient/5.4.1 (Java/23.0.1)', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (242, 'Xem thông tin cá nhân', '2026-07-12 14:33:50.000000', '/api/user/me', NULL, '127.0.0.1', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Apache-HttpClient/5.4.1 (Java/23.0.1)', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (243, 'Xem thông tin cá nhân', '2026-07-12 14:33:51.000000', '/api/user/me', NULL, '127.0.0.1', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Apache-HttpClient/5.4.1 (Java/23.0.1)', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (244, 'Xem thông tin cá nhân', '2026-07-12 14:33:59.000000', '/api/user/me', NULL, '127.0.0.1', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Apache-HttpClient/5.4.1 (Java/23.0.1)', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (245, 'Xem danh sách thông báo', '2026-07-12 14:34:13.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'notifications', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (246, 'Xem thông tin cá nhân', '2026-07-12 14:34:39.000000', '/api/user/me', NULL, '127.0.0.1', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Apache-HttpClient/5.4.1 (Java/23.0.1)', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (247, 'Xem danh sách thông báo', '2026-07-12 14:34:40.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'notifications', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (248, 'Xem thông tin cá nhân', '2026-07-12 14:34:40.000000', '/api/user/me', NULL, '127.0.0.1', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Apache-HttpClient/5.4.1 (Java/23.0.1)', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (249, 'Xem danh sách thông báo', '2026-07-12 14:34:40.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'notifications', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (250, 'Xem thông tin cá nhân', '2026-07-12 14:34:40.000000', '/api/user/me', NULL, '127.0.0.1', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Apache-HttpClient/5.4.1 (Java/23.0.1)', 27, 'van41527', 'INFO');
INSERT INTO `access_logs` VALUES (251, 'Xem thông tin cá nhân', '2026-07-12 14:34:49.000000', '/api/user/me', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (252, 'Xem thông tin cá nhân', '2026-07-12 14:34:49.000000', '/api/user/me', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (253, 'Xem danh sách thông báo', '2026-07-12 14:34:49.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'notifications', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (254, 'Xem danh sách người dùng', '2026-07-12 14:34:49.000000', '/api/admin/users', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'admin-users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (255, 'Xem danh sách thông báo', '2026-07-12 14:34:49.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'notifications', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (256, 'Xem danh sách người dùng', '2026-07-12 14:34:49.000000', '/api/admin/users', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'admin-users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (257, 'Xem danh sách người dùng', '2026-07-12 14:34:49.000000', '/api/admin/users', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'admin-users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (258, 'Xem danh sách người dùng', '2026-07-12 14:34:49.000000', '/api/admin/users', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'admin-users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (259, 'Xem nhật ký hoạt động', '2026-07-12 14:34:55.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'access-logs', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (260, 'Xem nhật ký hoạt động', '2026-07-12 14:34:55.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'access-logs', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (261, 'Xem danh sách thông báo', '2026-07-12 14:35:19.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'notifications', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (262, 'Xem nhật ký hoạt động', '2026-07-12 14:35:21.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'access-logs', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (263, 'Xem nhật ký hoạt động', '2026-07-12 14:35:37.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'access-logs', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (264, 'Xem danh sách thông báo', '2026-07-12 14:35:49.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'notifications', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (265, 'Xem danh sách người dùng', '2026-07-12 14:35:49.000000', '/api/admin/users', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'admin-users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (266, 'Xem danh sách người dùng', '2026-07-12 14:35:49.000000', '/api/admin/users', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'admin-users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (267, 'Xem danh sách người dùng', '2026-07-12 14:35:49.000000', '/api/admin/users', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'admin-users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (268, 'Xem danh sách người dùng', '2026-07-12 14:35:49.000000', '/api/admin/users', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'admin-users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (269, 'Xem nhật ký hoạt động', '2026-07-12 14:35:56.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'access-logs', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (270, 'Xem nhật ký hoạt động', '2026-07-12 14:35:56.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'access-logs', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (271, 'Xem danh sách người dùng', '2026-07-12 14:36:05.000000', '/api/admin/users', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'admin-users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (272, 'Xem danh sách người dùng', '2026-07-12 14:36:05.000000', '/api/admin/users', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'admin-users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (273, 'Xem danh sách người dùng', '2026-07-12 14:36:05.000000', '/api/admin/users', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'admin-users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (274, 'Xem danh sách người dùng', '2026-07-12 14:36:05.000000', '/api/admin/users', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'admin-users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (275, 'Xem danh sách người dùng', '2026-07-12 14:36:06.000000', '/api/admin/users', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'admin-users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (276, 'Xem danh sách người dùng', '2026-07-12 14:36:11.000000', '/api/admin/users', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'admin-users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (277, 'Xem danh sách người dùng', '2026-07-12 14:36:11.000000', '/api/admin/users', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'admin-users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (278, 'Xem danh sách người dùng', '2026-07-12 14:36:11.000000', '/api/admin/users', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'admin-users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (279, 'Xem danh sách người dùng', '2026-07-12 14:36:11.000000', '/api/admin/users', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'admin-users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (280, 'Xem danh sách môn học', '2026-07-12 14:36:13.000000', '/api/admin/categories', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'categories', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (281, 'Xem danh sách môn học', '2026-07-12 14:36:13.000000', '/api/admin/categories', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'categories', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (282, 'Xem danh sách người dùng', '2026-07-12 14:36:17.000000', '/api/admin/users', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'admin-users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (283, 'Xem danh sách người dùng', '2026-07-12 14:36:17.000000', '/api/admin/users', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'admin-users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (284, 'Xem danh sách người dùng', '2026-07-12 14:36:17.000000', '/api/admin/users', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'admin-users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (285, 'Xem danh sách người dùng', '2026-07-12 14:36:17.000000', '/api/admin/users', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'admin-users', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (286, 'Xem danh sách thông báo', '2026-07-12 14:36:19.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'notifications', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (287, 'Xem nhật ký hoạt động', '2026-07-12 14:36:32.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'access-logs', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (288, 'Xem nhật ký hoạt động', '2026-07-12 14:36:32.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'access-logs', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (289, 'Xem nhật ký hoạt động', '2026-07-12 14:36:36.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'access-logs', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (290, 'Xem nhật ký hoạt động', '2026-07-12 14:36:38.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'access-logs', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (291, 'Xem nhật ký hoạt động', '2026-07-12 14:36:41.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'access-logs', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (292, 'Xem nhật ký hoạt động', '2026-07-12 14:36:43.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'access-logs', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (293, 'Xem nhật ký hoạt động', '2026-07-12 14:36:44.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'access-logs', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (294, 'Xem nhật ký hoạt động', '2026-07-12 14:36:45.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'access-logs', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (295, 'Xem nhật ký hoạt động', '2026-07-12 14:36:47.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'access-logs', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (296, 'Xem nhật ký hoạt động', '2026-07-12 14:36:49.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'access-logs', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (297, 'Xem danh sách thông báo', '2026-07-12 14:36:49.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'notifications', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (298, 'Xem nhật ký hoạt động', '2026-07-12 14:36:55.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'access-logs', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (299, 'Xem nhật ký hoạt động', '2026-07-12 14:36:55.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'access-logs', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (300, 'Xem nhật ký hoạt động', '2026-07-12 14:36:56.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'access-logs', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (301, 'Xem nhật ký hoạt động', '2026-07-12 14:36:56.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'access-logs', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (302, 'Xem nhật ký hoạt động', '2026-07-12 14:36:57.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'access-logs', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (303, 'Xem nhật ký hoạt động', '2026-07-12 14:36:57.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'access-logs', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (304, 'Xem nhật ký hoạt động', '2026-07-12 14:36:58.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'access-logs', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (305, 'Xem nhật ký hoạt động', '2026-07-12 14:36:58.000000', '/api/admin/access-logs', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'access-logs', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (306, 'Xem danh sách thông báo', '2026-07-12 14:37:20.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'notifications', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (307, 'Xem danh sách thông báo', '2026-07-12 14:37:50.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'notifications', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (308, 'Xem danh sách thông báo', '2026-07-12 14:38:51.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'notifications', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (309, 'Xem danh sách thông báo', '2026-07-12 14:39:51.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'notifications', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (310, 'Xem danh sách thông báo', '2026-07-12 14:40:51.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'notifications', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (311, 'Xem danh sách thông báo', '2026-07-12 14:41:51.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'notifications', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (312, 'Xem danh sách thông báo', '2026-07-12 14:42:51.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'notifications', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (313, 'Xem danh sách thông báo', '2026-07-12 14:43:36.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'notifications', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (314, 'Xem danh sách thông báo', '2026-07-12 14:43:50.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'notifications', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (315, 'Xem danh sách thông báo', '2026-07-12 14:44:20.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'notifications', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (316, 'Xem danh sách thông báo', '2026-07-12 14:44:51.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'notifications', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (317, 'Xem danh sách thông báo', '2026-07-12 14:45:51.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'notifications', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (318, 'Xem danh sách thông báo', '2026-07-12 14:46:51.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'notifications', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (319, 'Xem danh sách thông báo', '2026-07-12 14:47:51.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'notifications', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (320, 'Xem danh sách thông báo', '2026-07-12 14:48:51.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'notifications', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (321, 'Xem danh sách thông báo', '2026-07-12 14:49:51.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'notifications', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (322, 'Xem danh sách thông báo', '2026-07-12 14:50:51.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'notifications', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');
INSERT INTO `access_logs` VALUES (323, 'Xem danh sách thông báo', '2026-07-12 15:06:03.000000', '/api/user/notifications/unread-count', NULL, '[0:0:0:0:0:0:0:1]', '{\"status_code\": 200}', 'GET', 'notifications', NULL, 'SUCCESS', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 29, '22130248', 'INFO');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `grade` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_by_user_id` bigint NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `code`(`code` ASC) USING BTREE,
  INDEX `FKiaidki2v1kcpdfsl5ndvjagis`(`created_by_user_id` ASC) USING BTREE,
  CONSTRAINT `FKiaidki2v1kcpdfsl5ndvjagis` FOREIGN KEY (`created_by_user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 346 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (9, 'grade', 'A', 'GRADE_A', 'Khối 1', NULL, NULL, 1, NULL, '2026-06-12 10:13:23', '2026-06-13 10:37:45');
INSERT INTO `categories` VALUES (10, 'grade', 'B', 'GRADE_B', 'Khối B', NULL, NULL, 1, NULL, '2026-06-12 10:13:23', '2026-06-13 10:34:37');
INSERT INTO `categories` VALUES (11, 'grade', 'C', 'GRADE_C', 'Khối C', NULL, NULL, 1, NULL, '2026-06-12 10:13:23', '2026-06-13 10:34:38');
INSERT INTO `categories` VALUES (17, 'subject', 'Toán', 'MATH', 'Môn Toán', NULL, NULL, 1, NULL, '2026-06-12 10:13:23', '2026-06-12 10:13:23');
INSERT INTO `categories` VALUES (18, 'subject', 'Tiếng Việt', 'VIETNAMESE', 'Môn Tiếng Việt', NULL, NULL, 1, NULL, '2026-06-12 10:13:23', '2026-06-12 10:13:23');
INSERT INTO `categories` VALUES (19, 'subject', 'Tiếng Anh', 'ENGLISH', 'Môn Tiếng Anh', NULL, NULL, 1, NULL, '2026-06-12 10:13:23', '2026-06-12 10:13:23');
INSERT INTO `categories` VALUES (31, 'subject', 'Địa', 'location', 'địa lý', NULL, NULL, 1, 29, '2026-06-13 08:51:09', '2026-06-13 13:19:40');
INSERT INTO `categories` VALUES (32, 'grade', 'D', 'khoi_D', 'khối D', 'khối D', NULL, 1, 29, '2026-06-13 08:54:54', '2026-06-13 10:38:46');
INSERT INTO `categories` VALUES (85, 'class', '1A', 'CLASS_1A', 'Lớp 1A', '1', NULL, 1, NULL, '2026-06-13 14:07:40', '2026-06-13 14:07:40');
INSERT INTO `categories` VALUES (86, 'class', '1B', 'CLASS_1B', 'Lớp 1B', '1', NULL, 1, NULL, '2026-06-13 14:07:40', '2026-06-13 14:07:40');
INSERT INTO `categories` VALUES (87, 'class', '1C', 'CLASS_1C', 'Lớp 1C', '1', NULL, 1, NULL, '2026-06-13 14:07:40', '2026-06-13 14:07:40');
INSERT INTO `categories` VALUES (88, 'class', '2A', 'CLASS_2A', 'Lớp 2A', '2', NULL, 1, NULL, '2026-06-13 14:07:40', '2026-06-13 14:07:40');
INSERT INTO `categories` VALUES (89, 'class', '2B', 'CLASS_2B', 'Lớp 2B', '2', NULL, 1, NULL, '2026-06-13 14:07:40', '2026-06-13 14:07:40');
INSERT INTO `categories` VALUES (90, 'class', '2C', 'CLASS_2C', 'Lớp 2C', '2', NULL, 1, NULL, '2026-06-13 14:07:40', '2026-06-13 14:07:40');
INSERT INTO `categories` VALUES (91, 'class', '3A', 'CLASS_3A', 'Lớp 3A', '3', NULL, 1, NULL, '2026-06-13 14:07:40', '2026-06-13 14:07:40');
INSERT INTO `categories` VALUES (92, 'class', '3B', 'CLASS_3B', 'Lớp 3B', '3', NULL, 1, NULL, '2026-06-13 14:07:40', '2026-06-13 14:07:40');
INSERT INTO `categories` VALUES (93, 'class', '3C', 'CLASS_3C', 'Lớp 3C', '3', NULL, 1, NULL, '2026-06-13 14:07:40', '2026-06-13 14:07:40');
INSERT INTO `categories` VALUES (94, 'class', '4A', 'CLASS_4A', 'Lớp 4A', '4', NULL, 1, NULL, '2026-06-13 14:07:40', '2026-06-13 14:07:40');
INSERT INTO `categories` VALUES (95, 'class', '4B', 'CLASS_4B', 'Lớp 4B', '4', NULL, 1, NULL, '2026-06-13 14:07:40', '2026-06-13 14:07:40');
INSERT INTO `categories` VALUES (96, 'class', '4C', 'CLASS_4C', 'Lớp 4C', '4', NULL, 1, NULL, '2026-06-13 14:07:40', '2026-06-13 14:07:40');
INSERT INTO `categories` VALUES (97, 'class', '5A', 'CLASS_5A', 'Lớp 5A', '5', NULL, 1, NULL, '2026-06-13 14:07:40', '2026-06-13 14:07:40');
INSERT INTO `categories` VALUES (98, 'class', '5B', 'CLASS_5B', 'Lớp 5B', '5', NULL, 1, NULL, '2026-06-13 14:07:40', '2026-06-13 14:07:40');
INSERT INTO `categories` VALUES (99, 'class', '5C', 'CLASS_5C', 'Lớp 5C', '5', NULL, 1, NULL, '2026-06-13 14:07:40', '2026-06-13 14:07:40');

-- ----------------------------
-- Table structure for notifications
-- ----------------------------
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `action_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `actor_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `actor_user_id` bigint NULL DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `read_at` datetime(6) NULL DEFAULT NULL,
  `resource_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `resource_type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `target_user_id` bigint NOT NULL,
  `title` varchar(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_notification_target_created`(`target_user_id` ASC, `created_at` ASC) USING BTREE,
  INDEX `idx_notification_target_read`(`target_user_id` ASC, `read_at` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notifications
-- ----------------------------
INSERT INTO `notifications` VALUES (1, '/classrooms/8?postId=10', 'van41527', 27, '2026-07-10 15:24:06.000000', 'Bài tập', NULL, '10', 'CLASSROOM_POST', 32, 'Bài tập mới trong Lớp 5c', 'NEW_ASSIGNMENT');
INSERT INTO `notifications` VALUES (2, '/classrooms/8?postId=10', 'van41527', 27, '2026-07-10 15:24:06.000000', 'Bài tập', '2026-07-10 15:26:09.000000', '10', 'CLASSROOM_POST', 31, 'Bài tập mới trong Lớp 5c', 'NEW_ASSIGNMENT');
INSERT INTO `notifications` VALUES (3, '/tests/36/edit', 'ngnhut047', 31, '2026-07-10 15:26:35.000000', 'Điểm: 2/5', '2026-07-10 15:27:20.000000', '36', 'TEST', 27, 'ngnhut047 đã nộp bài Bài tập Toán lớp 1 - Số 1', 'TEST_SUBMITTED');
INSERT INTO `notifications` VALUES (4, '/tests/36/edit', 'ngnhut047', 31, '2026-07-10 15:35:12.000000', 'Điểm: 5/6', '2026-07-10 15:36:04.000000', '36', 'TEST', 27, 'ngnhut047 đã nộp bài Bài tập Toán lớp 1 - Số 1', 'TEST_SUBMITTED');
INSERT INTO `notifications` VALUES (5, '', '', 29, '2026-07-10 15:50:22.000000', 'hệ thống mới cạp nhật giao diện mới cửa lớp học', NULL, NULL, 'ADMIN', 31, 'Bảo trì', 'ADMIN_ANNOUNCEMENT');
INSERT INTO `notifications` VALUES (6, '', '', 29, '2026-07-10 15:50:22.000000', 'hệ thống mới cạp nhật giao diện mới cửa lớp học', NULL, NULL, 'ADMIN', 32, 'Bảo trì', 'ADMIN_ANNOUNCEMENT');
INSERT INTO `notifications` VALUES (7, '', '', 29, '2026-07-10 15:50:22.000000', 'hệ thống mới cạp nhật giao diện mới cửa lớp học', NULL, NULL, 'ADMIN', 33, 'Bảo trì', 'ADMIN_ANNOUNCEMENT');
INSERT INTO `notifications` VALUES (8, '', '', 29, '2026-07-10 15:50:22.000000', 'hệ thống mới cạp nhật giao diện mới cửa lớp học', NULL, NULL, 'ADMIN', 35, 'Bảo trì', 'ADMIN_ANNOUNCEMENT');
INSERT INTO `notifications` VALUES (9, '', '', 29, '2026-07-10 15:50:22.000000', 'hệ thống mới cạp nhật giao diện mới cửa lớp học', NULL, NULL, 'ADMIN', 36, 'Bảo trì', 'ADMIN_ANNOUNCEMENT');

-- ----------------------------
-- Table structure for otp_codes
-- ----------------------------
DROP TABLE IF EXISTS `otp_codes`;
CREATE TABLE `otp_codes`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires_at` datetime(6) NOT NULL,
  `used` bit(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of otp_codes
-- ----------------------------
INSERT INTO `otp_codes` VALUES ('048d33d1-ff30-4a23-a7cb-4d4b5c7b5bde', '110349', '2026-05-04 04:20:14.000000', 'tannguyen.4420@gmail.com', '2026-05-04 04:30:14.000000', b'0');
INSERT INTO `otp_codes` VALUES ('1c49c528-0ec2-4cd8-b708-1d31720eccea', '487253', '2026-05-04 04:15:12.000000', 'tannguyen.4420@gmail.com', '2026-05-04 04:25:12.000000', b'0');
INSERT INTO `otp_codes` VALUES ('299607ac-4e2e-4257-a924-daf884a538e1', '789048', '2026-05-04 04:21:21.000000', 'tannguyen.4420@gmail.com', '2026-05-04 04:31:21.000000', b'0');
INSERT INTO `otp_codes` VALUES ('365d1c9e-0724-469c-abd4-97700eb8f792', '146038', '2026-05-04 04:11:38.000000', 'tannguyen.4420@gmail.com', '2026-05-04 04:21:38.000000', b'0');
INSERT INTO `otp_codes` VALUES ('46cd0c21-4d65-4763-a445-99dcf6be84f9', '200112', '2026-05-04 03:07:22.000000', 'kaybbkk2@gmail.com', '2026-05-04 03:17:22.000000', b'0');
INSERT INTO `otp_codes` VALUES ('4a51efee-3247-4f26-8d64-a3d28d5864a1', '436528', '2026-05-04 04:51:33.000000', 'tannguyen.4420@gmail.com', '2026-05-04 05:01:33.000000', b'0');
INSERT INTO `otp_codes` VALUES ('8f6c1f0c-fe84-46de-8034-61c005b117cf', '298189', '2026-05-04 04:10:23.000000', 'tannguyen.4420@gmail.com', '2026-05-04 04:20:23.000000', b'0');
INSERT INTO `otp_codes` VALUES ('e7cffbfb-faf8-4282-bad4-ab5eadd837d1', '082783', '2026-05-04 04:40:55.000000', 'tannguyen.4420@gmail.com', '2026-05-04 04:50:55.000000', b'0');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` enum('STUDENT','TEACHER','ADMIN') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'STUDENT');
INSERT INTO `roles` VALUES (2, 'TEACHER');
INSERT INTO `roles` VALUES (3, 'ADMIN');

-- ----------------------------
-- Table structure for student_info
-- ----------------------------
DROP TABLE IF EXISTS `student_info`;
CREATE TABLE `student_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `grade` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `fk_si_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of student_info
-- ----------------------------
INSERT INTO `student_info` VALUES (1, 2, '1A');
INSERT INTO `student_info` VALUES (2, 4, '3A');

-- ----------------------------
-- Table structure for teacher_classes
-- ----------------------------
DROP TABLE IF EXISTS `teacher_classes`;
CREATE TABLE `teacher_classes`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `grade` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKdrmnny3opxh7k4pa76ddn6rd`(`user_id` ASC) USING BTREE,
  CONSTRAINT `fk_tc_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of teacher_classes
-- ----------------------------
INSERT INTO `teacher_classes` VALUES (2, 3, '3A', 'Toán');
INSERT INTO `teacher_classes` VALUES (3, 3, '3B', 'Toán');
INSERT INTO `teacher_classes` VALUES (4, 6, '3A', 'Toán');
INSERT INTO `teacher_classes` VALUES (5, 6, '4B', 'Tiếng Việt');
INSERT INTO `teacher_classes` VALUES (6, 7, '3A', 'Toán');
INSERT INTO `teacher_classes` VALUES (7, 7, '4B', 'Tiếng Việt');
INSERT INTO `teacher_classes` VALUES (8, 10, '3A', 'Toán');
INSERT INTO `teacher_classes` VALUES (9, 10, '4B', 'Tiếng Việt');
INSERT INTO `teacher_classes` VALUES (10, 11, '1A', 'Tiếng Việt');
INSERT INTO `teacher_classes` VALUES (11, 11, '1A', 'Toán');
INSERT INTO `teacher_classes` VALUES (32, 14, '4', 'Tiếng Anh');
INSERT INTO `teacher_classes` VALUES (33, 14, '3', 'Toán');
INSERT INTO `teacher_classes` VALUES (37, 26, '5C', 'Toán');
INSERT INTO `teacher_classes` VALUES (38, 26, '4B', 'Tiếng Anh');
INSERT INTO `teacher_classes` VALUES (39, 26, '2B', 'Toán');

-- ----------------------------
-- Table structure for user_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles`  (
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE,
  INDEX `FKh8ciramu9cc9q3qcqiv4ue8a6`(`role_id` ASC) USING BTREE,
  CONSTRAINT `fk_ur_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk_ur_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_roles
-- ----------------------------
INSERT INTO `user_roles` VALUES (2, 1);
INSERT INTO `user_roles` VALUES (3, 2);
INSERT INTO `user_roles` VALUES (4, 1);
INSERT INTO `user_roles` VALUES (9, 3);
INSERT INTO `user_roles` VALUES (11, 2);
INSERT INTO `user_roles` VALUES (14, 2);
INSERT INTO `user_roles` VALUES (16, 2);
INSERT INTO `user_roles` VALUES (25, 3);
INSERT INTO `user_roles` VALUES (26, 2);
INSERT INTO `user_roles` VALUES (27, 2);
INSERT INTO `user_roles` VALUES (29, 3);
INSERT INTO `user_roles` VALUES (31, 1);
INSERT INTO `user_roles` VALUES (32, 3);
INSERT INTO `user_roles` VALUES (33, 2);
INSERT INTO `user_roles` VALUES (35, 1);
INSERT INTO `user_roles` VALUES (36, 1);
INSERT INTO `user_roles` VALUES (37, 1);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `date_of_birth` date NULL DEFAULT NULL,
  `school_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_active` tinyint(1) NULL DEFAULT 1,
  `is_email_verified` tinyint(1) NULL DEFAULT 0,
  `created_at` datetime NULL DEFAULT current_timestamp(),
  `updated_at` datetime NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `full_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE,
  UNIQUE INDEX `email`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (2, 'ngan', 'nguyenhaisuper6@gmail.com', '$2a$10$tbPdJECp3S2y7JW3ayMnReZuqP20T8H/gi1Vor51DOou5A9iUEQc.', NULL, '0912345678', NULL, 'TH Lê Văn Tám', 1, 1, '2026-03-22 15:59:59', '2026-03-24 03:30:58', NULL, NULL, '', '');
INSERT INTO `users` VALUES (3, 'nguyen.thi.a', 'a.nt@school.edu.vn', '$2a$10$2eYukPZU9BYbgJjVjlbUde72FlU5.tb5U2lGCF2uJuyFUt14SszQG', NULL, '0901234567', NULL, 'TH Nguyễn Du', 0, 0, '2026-03-23 02:48:26', '2026-03-24 01:55:10', NULL, NULL, '', '');
INSERT INTO `users` VALUES (6, 'giaovien01', 'giaovien01@school.vn', '$2a$10$YSEHt91zdjoPUsPyrsKWjOV5u5KMxbsi.vbVLmBaknWH.UNTIkuwq', NULL, '0999888777', NULL, 'Trường Tiểu Học A', 1, 0, '2026-03-23 16:55:40', '2026-03-24 01:54:07', NULL, NULL, '', '');
INSERT INTO `users` VALUES (7, 'giaovien02', 'giaovien02@school.vn', '$2a$10$OxvMxIjngN0ojh1tAsKFz.Lgzq/25o0F6um6NRK/6CzjGYa/73Ora', NULL, NULL, NULL, 'Trường Tiểu Học A', 1, 0, '2026-03-23 16:56:45', '2026-03-23 16:56:45', NULL, NULL, '', '');
INSERT INTO `users` VALUES (9, 'admin01', 'admin01@school.vn', '$2a$10$Y3lwsNoiAoJ2IWjFSfILhe/XJANsvA9o5qCrXd6NDy105dXDDPAfa', NULL, NULL, NULL, NULL, 1, 0, '2026-03-23 16:58:01', '2026-03-23 16:58:01', NULL, NULL, '', '');
INSERT INTO `users` VALUES (10, 'giaovien03', 'giaovien03@school.vn', '$2a$10$eiQ/jrvqi8ozZKEB1gOEDO9eVeS5bMvX2J3M4tPkxj.MP/cZDHaxS', NULL, NULL, NULL, 'Trường Tiểu Học A', 1, 0, '2026-03-23 16:59:42', '2026-03-23 16:59:42', NULL, NULL, '', '');
INSERT INTO `users` VALUES (11, 'teacher.anh', 'teacher.anh@gmail.com', '$2a$10$lXdY2Ey.QZ8fLJqJP7scyOb6bdLXVYOvcJaAmE/whYkYmxj6QdDuy', NULL, '0987654321', '1990-05-15', 'Tiểu học Lê Đình Chinh', 1, 0, '2026-03-24 01:43:14', '2026-03-24 02:24:15', NULL, NULL, '', '');
INSERT INTO `users` VALUES (14, 'nguyen nguyen 01', 'nguyen123@gmail.com', '$2a$10$6KBAOf0BcXDzGZype6QzyOLjbuo13zI.vLfq8uxK1HIxGtUg8k6Ra', NULL, '0987654321', '2026-04-03', 'Tiểu học Lê Đình Chinh', 1, 0, '2026-03-24 03:04:48', '2026-03-24 13:38:34', NULL, NULL, '', '');
INSERT INTO `users` VALUES (16, 'ngngf', 'nnh@gmail.com', '$2a$10$z9c27B6Jud5l7b2GtRipbu84dyhbAL6hpVvk0oiHQfgf4P9cdPm/W', NULL, '0228282828', '2026-03-20', 'nfg', 0, 0, '2026-03-24 12:46:00', '2026-03-24 12:50:10', NULL, NULL, '', '');
INSERT INTO `users` VALUES (25, 'ee', 'ee@gmail.com', '$2a$10$6heJezp5UYOdiRgBQvU42eGi5IRtIjmDI/JjAfJaBfjR0/lhtnkkG', NULL, '0987654321', '2026-04-03', 'Tiểu học Lê Đình Chinh', 1, 0, '2026-03-24 13:41:22', '2026-03-24 13:41:22', NULL, NULL, '', '');
INSERT INTO `users` VALUES (26, 'nguyenttt', 'nguyenhaisuper4@gmail.com', '$2a$10$8QFP1tKEoRgcnmmeGPxCWuIZaSmD23xdQf..i4MTSsBkxvrLdBWUW', NULL, NULL, NULL, 'TH Nông Lâm', 1, 1, '2026-03-24 13:43:56', '2026-03-24 13:43:57', NULL, NULL, '', '');
INSERT INTO `users` VALUES (27, 'van41527', 'van41527@gmail.com', 'f755a39f-4260-4a69-aaf4-0ab1d047f335', 'https://res.cloudinary.com/dlyhvdonu/image/upload/v1783673534/wccslbc0whjwdpbzpx28.jpg', '0394374420', '2026-07-23', '', 1, 1, '2026-04-12 15:41:19', '2026-07-10 15:52:55', 'Nam', 'Giáo viên', '', '');
INSERT INTO `users` VALUES (29, '22130248', '22130248@st.hcmuaf.edu.vn', '463e77bc-a2eb-4b56-a890-e9479f705d1d', NULL, NULL, NULL, '', 1, 1, '2026-04-19 12:26:35', '2026-04-19 12:26:35', NULL, NULL, '', '');
INSERT INTO `users` VALUES (31, 'ngnhut047', 'ngnhut047@gmail.com', '$2a$10$b/8uBdJA0KyVEH8oFwWOKuhGKkHwbhorXE5p.ENOTNfsMTdaetzQK', 'https://lh3.googleusercontent.com/a/ACg8ocKCm8Q3nB0komLY0o-pdDefV-9JOce0Ke7gdLE5Qfh7T3BAQw=s96-c', NULL, NULL, '', 1, 1, '2026-05-19 10:55:58', '2026-05-19 10:55:58', NULL, NULL, 'ng nhut', '$2a$10$b/8uBdJA0KyVEH8oFwWOKuhGKkHwbhorXE5p.ENOTNfsMTdaetzQK');
INSERT INTO `users` VALUES (32, 'haulun2308', 'haulun2308@gmail.com', '$2a$10$Jk8qN8N5yxyW16Kld6JCluVlzfhkq04.4lyH.iOnCuWjNNPvYLZMy', 'https://lh3.googleusercontent.com/a/ACg8ocLM21_suX2X6XvxZ3NjhGA2I54bEK0DHatvn_KgpJacLThe1DZv=s96-c', NULL, NULL, '', 1, 1, '2026-05-21 17:44:10', '2026-05-21 17:44:10', NULL, NULL, 'Hậu Nguyễn', '$2a$10$Jk8qN8N5yxyW16Kld6JCluVlzfhkq04.4lyH.iOnCuWjNNPvYLZMy');
INSERT INTO `users` VALUES (33, 'kaybbkk2', 'kaybbkk2@gmail.com', '$2a$10$gCzw0aZYb1yGGh9HI0qr7.sLr4m..Yqp.6iSuJWTiSdz9HCQq8RKS', 'https://lh3.googleusercontent.com/a/ACg8ocK98a7r4fxUVfFjuRD2OywdCZoOpK6GTDKiPTKZFCdwIml0Gg=s96-c', NULL, NULL, '', 1, 1, '2026-05-22 22:37:13', '2026-05-22 22:37:13', NULL, NULL, 'Ng tann', '$2a$10$gCzw0aZYb1yGGh9HI0qr7.sLr4m..Yqp.6iSuJWTiSdz9HCQq8RKS');
INSERT INTO `users` VALUES (35, 'kaybbkk', 'kaybbkk@gmail.com', '$2a$10$75kJ3776XYvm6QEcFT4m2em8qBYZ5j2D/jde/.76TAvTe7BTMG0ta', 'https://lh3.googleusercontent.com/a/ACg8ocIdoTZoV_KIksjO5sNdTYH3_OSwjbThfGffMZwrSzWP69UA0w=s96-c', NULL, NULL, '', 1, 1, '2026-06-24 13:33:15', '2026-06-24 13:33:15', NULL, NULL, 'Quốc Nguyen', '$2a$10$75kJ3776XYvm6QEcFT4m2em8qBYZ5j2D/jde/.76TAvTe7BTMG0ta');
INSERT INTO `users` VALUES (36, 'kaybbkk2202', 'kaybbkk2202@gmail.com', '$2a$10$Qx5js2QEbI.IxRHxf7SqPe6R0JigMllwCZmla.luKtQV./Rnfg6sq', 'https://lh3.googleusercontent.com/a/ACg8ocIe9B-aq8444hjhlj2-c-HT1IXuRlKJI2WQ9vnKAeeIvFsAxQ=s96-c', NULL, NULL, '', 1, 1, '2026-06-24 13:35:40', '2026-06-24 13:35:40', NULL, NULL, 'tan Ng', '$2a$10$Qx5js2QEbI.IxRHxf7SqPe6R0JigMllwCZmla.luKtQV./Rnfg6sq');
INSERT INTO `users` VALUES (37, 'tannguyen4420', 'tannguyen.4420@gmail.com', '$2a$10$UR9MWJYDvfXUh4PyBz6iWetKUNxt38Y9oZSkWchYNRMnrPaSYUGJy', 'https://lh3.googleusercontent.com/a/ACg8ocKEz5e_whIkL87KonVDeru5eVCEEg8RvOiLqNWfTzs5XhnJ22_T=s96-c', NULL, NULL, '', 1, 1, '2026-07-12 12:35:02', '2026-07-12 12:35:02', NULL, NULL, 'Tấn Nguyễn', '$2a$10$UR9MWJYDvfXUh4PyBz6iWetKUNxt38Y9oZSkWchYNRMnrPaSYUGJy');

SET FOREIGN_KEY_CHECKS = 1;
