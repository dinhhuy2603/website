/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50539
 Source Host           : localhost:3306
 Source Schema         : website

 Target Server Type    : MySQL
 Target Server Version : 50539
 File Encoding         : 65001

 Date: 19/08/2019 17:48:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cai_dat_thong_so
-- ----------------------------
DROP TABLE IF EXISTS `cai_dat_thong_so`;
CREATE TABLE `cai_dat_thong_so`  (
  `kenh_1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tag_1` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `chot_tag1` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tag_2` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `chot_tag2` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `button_1` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `chot_button1` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`kenh_1`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for hienthi
-- ----------------------------
DROP TABLE IF EXISTS `hienthi`;
CREATE TABLE `hienthi`  (
  `Kenh` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Tag1` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Tag2` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Tag3` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Tag4` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Kenh`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of hienthi
-- ----------------------------
INSERT INTO `hienthi` VALUES ('1', '1112000', '16000', '250.25', '500');
INSERT INTO `hienthi` VALUES ('2', '200', '220', '1200', '600');

-- ----------------------------
-- Table structure for locations
-- ----------------------------
DROP TABLE IF EXISTS `locations`;
CREATE TABLE `locations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `latitude` decimal(16, 8) NULL DEFAULT NULL,
  `longitude` decimal(16, 8) NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of locations
-- ----------------------------
INSERT INTO `locations` VALUES (1, 'Trần Văn Đang', 10.78342100, 106.67531900, 'Cách Mạng tháng 8');
INSERT INTO `locations` VALUES (2, 'Pune', 18.52360000, 73.84780000, 'Ấn Độ');
INSERT INTO `locations` VALUES (3, 'Alibaug', 18.64140000, 72.87220000, 'Alibaug is a coastal town and a municipal council in Raigad District in the Konkan region of Maharashtra, India.');

-- ----------------------------
-- Table structure for recorders
-- ----------------------------
DROP TABLE IF EXISTS `recorders`;
CREATE TABLE `recorders`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Kenh` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Tag1` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Tag2` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Tag3` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Tag4` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Create_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Update_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_date` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'huy', 'doandinhhuy2603@gmail.com', '123456', '2019-08-04 14:13:07', '2019-08-04 14:13:11');
INSERT INTO `users` VALUES (2, 'sad', 'asdasd2.com', '124567', '2019-08-05 14:13:16', '2019-08-13 14:13:20');
INSERT INTO `users` VALUES (3, 'sas', 'sadsd', 'asd', '2019-08-14 14:20:54', NULL);
INSERT INTO `users` VALUES (4, 'Huy', 'doandinhhuy2603@gmail.com.bn', '1111111', '2019-08-14 14:20:54', NULL);
INSERT INTO `users` VALUES (5, 'Huy', 'admin@gmail.com', '123456', '2019-08-14 14:20:54', NULL);
INSERT INTO `users` VALUES (6, 'Huy', 'admin@gmail.com.vn', '1111111', '2019-08-14 14:20:54', NULL);
INSERT INTO `users` VALUES (7, 'Huy', 'doandinhhuy2603@gmail.com.vn', 'aaaaaaa', '2019-08-14 14:20:54', NULL);
INSERT INTO `users` VALUES (8, 'Doan Dinh Huy', 'admin@admin.com', '1111111', '2019-08-14 14:20:54', NULL);
INSERT INTO `users` VALUES (9, 'Obama', 'obama@mail.com', '111111', '2019-08-14 14:20:54', NULL);
INSERT INTO `users` VALUES (10, 'Ronaldo', 'user1@admin.com', '123456', '2019-08-14 14:20:54', NULL);
INSERT INTO `users` VALUES (11, 'Donald Trump', 'user2@admin.com', '111111', '2019-08-14 14:21:56', NULL);
INSERT INTO `users` VALUES (12, 'aaaaaaaa', 'user3@admin.com', '111111', '2019-08-14 14:23:39', NULL);
INSERT INTO `users` VALUES (13, 'huy', 'user@user.com', '111111', '2019-08-15 16:16:34', NULL);

SET FOREIGN_KEY_CHECKS = 1;
