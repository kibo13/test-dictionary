/*
 Navicat Premium Data Transfer

 Source Server         : kibo
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:8889
 Source Schema         : glossary

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 30/06/2021 11:53:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2021_06_29_172153_create_words_table', 1);

-- ----------------------------
-- Table structure for words
-- ----------------------------
DROP TABLE IF EXISTS `words`;
CREATE TABLE `words`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `word` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `translation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of words
-- ----------------------------
INSERT INTO `words` VALUES (1, 'привет', 'en', 'hello');
INSERT INTO `words` VALUES (2, 'привет', 'kz', 'сәлеметсіз бе');
INSERT INTO `words` VALUES (3, 'машина', 'en', 'car');
INSERT INTO `words` VALUES (4, 'машина', 'kz', 'автокөлік');
INSERT INTO `words` VALUES (5, 'огонь', 'en', 'fire');
INSERT INTO `words` VALUES (6, 'огонь', 'kz', 'от');
INSERT INTO `words` VALUES (7, 'море', 'en', 'sea');
INSERT INTO `words` VALUES (8, 'море', 'kz', 'теңіз');
INSERT INTO `words` VALUES (9, 'воздух', 'en', 'air');
INSERT INTO `words` VALUES (10, 'воздух', 'kz', 'ауа');
INSERT INTO `words` VALUES (11, 'язык', 'en', 'language');
INSERT INTO `words` VALUES (12, 'язык', 'kz', 'тіл\r\n');
INSERT INTO `words` VALUES (13, 'вода', 'en', 'water');
INSERT INTO `words` VALUES (14, 'вода', 'kz', 'cy');
INSERT INTO `words` VALUES (15, 'кошка', 'en', 'cat');
INSERT INTO `words` VALUES (16, 'кошка', 'kz', 'мысық');
INSERT INTO `words` VALUES (17, 'собака', 'en', 'dog');
INSERT INTO `words` VALUES (18, 'собака', 'kz', 'ит');
INSERT INTO `words` VALUES (19, 'мяч', 'en', 'ball');
INSERT INTO `words` VALUES (20, 'мяч', 'kz', 'доп');
INSERT INTO `words` VALUES (21, 'тетрадь', 'en', 'notebook');
INSERT INTO `words` VALUES (22, 'тетрадь', 'kz', 'дәптер');
INSERT INTO `words` VALUES (23, 'лошадь', 'en', 'horse');
INSERT INTO `words` VALUES (24, 'лошадь', 'kz', 'жылқы');
INSERT INTO `words` VALUES (25, 'карандаш', 'en', 'pencil');
INSERT INTO `words` VALUES (26, 'карандаш', 'kz', 'қарындаш');
INSERT INTO `words` VALUES (27, 'гроза', 'en', 'storm');
INSERT INTO `words` VALUES (28, 'гроза', 'kz', 'дауыл');
INSERT INTO `words` VALUES (29, 'новости', 'en', 'news');
INSERT INTO `words` VALUES (30, 'новости', 'kz', 'жаңалықтар');

SET FOREIGN_KEY_CHECKS = 1;
