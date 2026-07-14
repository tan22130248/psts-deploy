/*
 Navicat Premium Dump SQL

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100432 (10.4.32-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : image_db

 Target Server Type    : MySQL
 Target Server Version : 100432 (10.4.32-MariaDB)
 File Encoding         : 65001

 Date: 14/07/2026 09:06:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for image_records
-- ----------------------------
DROP TABLE IF EXISTS `image_records`;
CREATE TABLE `image_records`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` bigint NOT NULL,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of image_records
-- ----------------------------
INSERT INTO `image_records` VALUES (4, '2026-04-16 10:20:51.000000', 'Nguyễn Quốc Tấn', 'https://res.cloudinary.com/dlyhvdonu/image/upload/v1776334850/image_generation/uploaded_1776334848.png', 'Địa lý', '2026-04-16 10:20:51.000000', 28, 'kaybbkk');
INSERT INTO `image_records` VALUES (9, '2026-05-12 16:20:31.000000', 'z7819126249792_c83d8cd3dfe673304ee877f723422684.jpg', 'https://res.cloudinary.com/dlyhvdonu/image/upload/v1778602830/image_generation/uploaded_1778602827.jpg', 'Toán', '2026-05-12 16:20:31.000000', 27, 'van41527');
INSERT INTO `image_records` VALUES (10, '2026-06-07 02:42:20.000000', 'nlu', 'https://res.cloudinary.com/dlyhvdonu/image/upload/v1780800139/image_generation/uploaded_1780800136.png', '', '2026-06-07 02:42:20.000000', 27, 'van41527');
INSERT INTO `image_records` VALUES (11, '2026-06-24 06:21:31.000000', 'Screenshot 2026-05-06 111905.png', 'https://res.cloudinary.com/dlyhvdonu/image/upload/v1782282090/image_generation/uploaded_1782282087.png', '', '2026-06-24 06:21:31.000000', 27, 'van41527');
INSERT INTO `image_records` VALUES (12, '2026-07-10 08:30:52.000000', 'OIP.jpg', 'https://res.cloudinary.com/dlyhvdonu/image/upload/v1783672252/image_generation/uploaded_1783672249.jpg', 'Toán', '2026-07-10 08:30:52.000000', 27, 'van41527');
INSERT INTO `image_records` VALUES (13, '2026-07-10 08:33:43.000000', '9fc35f0a-6a57-4890-b02e-e049cf5bc89a.png', 'https://res.cloudinary.com/dlyhvdonu/image/upload/v1783672423/image_generation/uploaded_1783672421.png', 'Toán', '2026-07-10 08:33:43.000000', 27, 'van41527');
INSERT INTO `image_records` VALUES (14, '2026-07-10 09:29:38.000000', 'Con khỉ cầm chuối', 'https://res.cloudinary.com/dlyhvdonu/image/upload/v1783675779/image_generation/uploaded_1783675775.png', 'Toán', '2026-07-10 09:29:38.000000', 27, 'van41527');

SET FOREIGN_KEY_CHECKS = 1;
