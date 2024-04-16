/*
 Navicat Premium Data Transfer

 Source Server         : MySQL Local
 Source Server Type    : MySQL
 Source Server Version : 100139 (10.1.39-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : company_profile

 Target Server Type    : MySQL
 Target Server Version : 100139 (10.1.39-MariaDB)
 File Encoding         : 65001

 Date: 14/04/2024 19:15:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for big_numbers
-- ----------------------------
DROP TABLE IF EXISTS `big_numbers`;
CREATE TABLE `big_numbers`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `number` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `notes` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of big_numbers
-- ----------------------------
INSERT INTO `big_numbers` VALUES (1, 'Best Designer Award', '3', NULL, 1, '2024-03-24 22:10:34', '2024-03-24 22:10:37', 1, 1);
INSERT INTO `big_numbers` VALUES (2, 'Loyal Clients', '50+', NULL, 1, '2024-03-24 22:10:51', '2024-03-24 22:10:55', 1, 1);
INSERT INTO `big_numbers` VALUES (3, 'Nominee Awards', '158+', NULL, 1, '2024-03-24 22:11:13', '2024-03-24 22:11:15', 1, 1);
INSERT INTO `big_numbers` VALUES (4, 'CSS Designs', '92+', NULL, 0, '2024-03-24 22:11:28', '2024-03-24 22:11:30', 1, 1);

-- ----------------------------
-- Table structure for blogs
-- ----------------------------
DROP TABLE IF EXISTS `blogs`;
CREATE TABLE `blogs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `description_short` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `description_long` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `notes` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of blogs
-- ----------------------------
INSERT INTO `blogs` VALUES (1, '1 The Cheapest Destinations Of All Time, A List Of Beauty And Budget. 2', '1-the-cheapest-destinations-of-all-time-a-list-of-beauty-and-budget-2', 'uploads/xxx/20240414_183201-citiasia_background.jpg', '2024-03-21 15:12:43', 'Lorem Ipsum Is Simply Dummy Text Of The Printing And Typesetting Industry. Lorem Ipsum Has Been The Industry’s Standard Dummy Text Ever Since The 1500s, When An Unknown Printer Took A Galley Of Type And Scrambled It To Make A Type Specimen Book.', '<h1>HTML Ipsum Presents</h1>\r\n<p><strong>Pellentesque habitant morbi tristique</strong> senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. <em>Aenean ultricies mi vitae est.</em> Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, <code>commodo vitae</code>, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. <a href=\"#\">Donec non enim</a> in turpis pulvinar facilisis. Ut felis.</p>\r\n<h2>Header Level 2</h2>\r\n<ol>\r\n<li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>\r\n<li>Aliquam tincidunt mauris eu risus.</li>\r\n</ol>\r\n<blockquote>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue. Ut a est eget ligula molestie gravida. Curabitur massa. Donec eleifend, libero at sagittis mollis, tellus est malesuada tellus, at luctus turpis elit sit amet quam. Vivamus pretium ornare est.</p>\r\n</blockquote>\r\n<h3>Header Level 3</h3>\r\n<ul>\r\n<li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>\r\n<li>Aliquam tincidunt mauris eu risus.</li>\r\n</ul>\r\n<pre><code>\r\n				#header h1 a {\r\n				  display: block;\r\n				  width: 300px;\r\n				  height: 80px;\r\n				}\r\n				</code></pre>', NULL, 0, '2024-03-24 22:13:29', '2024-04-08 11:37:02', 1, 1);
INSERT INTO `blogs` VALUES (2, '2 A Year From Now You May Wish You Had Started Today.', 'a-year-from-now-you-may-wish-you-had-started-today', 'uploads/xxx/20240414_183201-citiasia_background.jpg', '2024-03-23 15:12:43', 'Lorem Ipsum Is Simply Dummy Text Of The Printing And Typesetting Industry. Lorem Ipsum Has Been The Industry’s Standard Dummy Text Ever Since The 1500s, When An Unknown Printer Took A Galley Of Type And Scrambled It To Make A Type Specimen Book.', 'What is Lorem Ipsum?\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nWhy do we use it?\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\n\n\nWhere does it come from?\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\n\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\n\nWhere can I get some?\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', NULL, 1, NULL, NULL, 1, NULL);
INSERT INTO `blogs` VALUES (4, '3 The Cheapest Destinations Of All Time, A List Of Beauty And Budget 2', 'the-cheapest-destinations-of-all-time-2', 'uploads/xxx/20240414_183201-citiasia_background.jpg', '2024-03-24 15:12:43', 'Lorem Ipsum Is Simply Dummy Text Of The Printing And Typesetting Industry. Lorem Ipsum Has Been The Industry’s Standard Dummy Text Ever Since The 1500s, When An Unknown Printer Took A Galley Of Type And Scrambled It To Make A Type Specimen Book.', 'What is Lorem Ipsum?\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nWhy do we use it?\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\n\n\nWhere does it come from?\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\n\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\n\nWhere can I get some?\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', NULL, 0, '2024-03-24 22:13:29', '2024-03-24 22:13:31', 1, 1);
INSERT INTO `blogs` VALUES (7, 'ini judul artikel', 'ini-judul-artikel', 'uploads/xxx/20240414_183201-citiasia_background.jpg', '2024-04-04 11:28:00', 'ini deskrpsi pendek', '<p>ini desskripsi panjang&nbsp;</p>\r\n<p>dengan <strong>style</strong>&nbsp;</p>', NULL, 1, '2024-04-04 11:29:23', '2024-04-08 11:47:56', 1, 1);

-- ----------------------------
-- Table structure for faqs
-- ----------------------------
DROP TABLE IF EXISTS `faqs`;
CREATE TABLE `faqs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `question` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `answer` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `notes` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of faqs
-- ----------------------------
INSERT INTO `faqs` VALUES (1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit?', 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat.', NULL, 1, '2024-03-24 22:19:24', '2024-03-24 22:19:26', 1, 1);
INSERT INTO `faqs` VALUES (2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit?', 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat.', NULL, 1, '2024-03-24 22:19:36', '2024-03-24 22:19:37', 1, 1);

-- ----------------------------
-- Table structure for features
-- ----------------------------
DROP TABLE IF EXISTS `features`;
CREATE TABLE `features`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description_short` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `description_long` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `notes` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of features
-- ----------------------------
INSERT INTO `features` VALUES (1, 'Funtionality', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', NULL, 'uploads/xxx/funtionality.png', NULL, 1, '2024-03-24 22:22:40', '2024-03-24 22:22:44', 1, 1);
INSERT INTO `features` VALUES (2, 'User Friendly', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', NULL, 'uploads/xxx/user-friendly.png', NULL, 1, '2024-03-24 22:22:42', '2024-03-24 22:22:46', 1, 1);

-- ----------------------------
-- Table structure for logs
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fingerprint` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `method` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `fullurl` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `os` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `os_version` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `browser` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `browser_version` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `device` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_desktop` tinyint(1) NOT NULL DEFAULT 0,
  `is_mobile` tinyint(1) NOT NULL DEFAULT 0,
  `is_tablet` tinyint(1) NOT NULL DEFAULT 0,
  `ip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `country_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `country_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `region_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `region_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `city_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `city_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `zip_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `latitude` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `longitude` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 187 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of logs
-- ----------------------------
INSERT INTO `logs` VALUES (1, '2024-04-13 11:22:28', '2024-04-13 11:22:28', 'ec4b89e1b2c6fccc77b4cf2e2d008fd481f0a80b', 'GET', 'http://localhost:8000/admin/dashboard', 'admin/dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', 'ID', 'Indonesia', 'JB', 'West Java', '', 'Bandung', NULL, '-6.9217', '107.6071');
INSERT INTO `logs` VALUES (2, '2024-04-12 11:23:26', '2024-04-13 11:23:26', '7db5218fc537e4016143b5e6d58f1e76a0ac190c', 'GET', 'http://localhost:8000/admin/slider', 'admin/slider', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (3, '2024-04-12 11:23:51', '2024-04-13 11:23:51', '7db5218fc537e4016143b5e6d58f1e76a0ac190c', 'GET', 'http://localhost:8000/admin/slider', 'admin/slider', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (8, '2024-03-17 13:16:49', '2024-04-13 13:16:49', 'ec4b89e1b2c6fccc77b4cf2e2d008fd481f0a80b', 'GET', 'http://localhost:8000/admin/dashboard', 'admin/dashboard', 'Mozilla/5.0 (Linux; Android 8.0.0; Nexus 5X Build/OPR4.170623.006) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', 'AndroidOS', '8.0.0', 'Opera', '0', 'Nexus', 0, 1, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (9, '2024-04-13 13:19:09', '2024-04-13 13:19:09', 'ec4b89e1b2c6fccc77b4cf2e2d008fd481f0a80b', 'GET', 'http://localhost:8000/admin/dashboard', 'admin/dashboard', 'Mozilla/5.0 (Linux; Android 8.0.0; Nexus 5X Build/OPR4.170623.006) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', 'AndroidOS', '8.0.0', 'Opera', '0', 'Nexus', 0, 1, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (10, '2024-04-14 10:58:10', '2024-04-14 10:58:10', '06ab492676a7d047a992da52e92ae9d8c450e975', 'GET', 'http://localhost:8000/admin', 'admin', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 0, 0, 1, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (11, '2024-04-14 10:58:16', '2024-04-14 10:58:16', '68e8be2802d05de27f1e4bc5f2b3e222dbf6d605', 'POST', 'http://localhost:8000/admin/auth/action_login', 'admin/auth/action_login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 0, 0, 1, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (57, '2024-04-14 13:18:34', '2024-04-14 13:18:34', 'ec4b89e1b2c6fccc77b4cf2e2d008fd481f0a80b', 'GET', 'http://localhost:8000/admin/dashboard', 'admin/dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 0, 1, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (58, '2024-04-14 13:19:14', '2024-04-14 13:19:14', 'ec4b89e1b2c6fccc77b4cf2e2d008fd481f0a80b', 'GET', 'http://localhost:8000/admin/dashboard', 'admin/dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 0, 1, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (59, '2024-04-14 13:20:25', '2024-04-14 13:20:25', 'ec4b89e1b2c6fccc77b4cf2e2d008fd481f0a80b', 'GET', 'http://localhost:8000/admin/dashboard', 'admin/dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 0, 0, 1, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (60, '2024-04-14 13:22:07', '2024-04-14 13:22:07', 'ec4b89e1b2c6fccc77b4cf2e2d008fd481f0a80b', 'GET', 'http://localhost:8000/admin/dashboard', 'admin/dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 0, 0, 1, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (61, '2024-04-14 13:22:36', '2024-04-14 13:22:36', 'ec4b89e1b2c6fccc77b4cf2e2d008fd481f0a80b', 'GET', 'http://localhost:8000/admin/dashboard', 'admin/dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 0, 0, 1, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (62, '2024-04-14 13:23:24', '2024-04-14 13:23:24', 'ec4b89e1b2c6fccc77b4cf2e2d008fd481f0a80b', 'GET', 'http://localhost:8000/admin/dashboard', 'admin/dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'IOS', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 0, 0, 1, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (63, '2024-04-14 13:23:42', '2024-04-14 13:23:42', 'ec4b89e1b2c6fccc77b4cf2e2d008fd481f0a80b', 'GET', 'http://localhost:8000/admin/dashboard', 'admin/dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'IOS', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (64, '2024-04-14 13:26:49', '2024-04-14 13:26:49', 'ec4b89e1b2c6fccc77b4cf2e2d008fd481f0a80b', 'GET', 'http://localhost:8000/admin/dashboard', 'admin/dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'IOS', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (65, '2024-04-14 13:32:37', '2024-04-14 13:32:37', 'ec4b89e1b2c6fccc77b4cf2e2d008fd481f0a80b', 'GET', 'http://localhost:8000/admin/dashboard', 'admin/dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'IOS', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (66, '2024-04-14 13:33:57', '2024-04-14 13:33:57', 'ec4b89e1b2c6fccc77b4cf2e2d008fd481f0a80b', 'GET', 'http://localhost:8000/admin/dashboard', 'admin/dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'IOS', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (67, '2024-04-14 13:35:31', '2024-04-14 13:35:31', 'ec4b89e1b2c6fccc77b4cf2e2d008fd481f0a80b', 'GET', 'http://localhost:8000/admin/dashboard', 'admin/dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'IOS', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (68, '2024-04-14 13:36:14', '2024-04-14 13:36:14', 'ec4b89e1b2c6fccc77b4cf2e2d008fd481f0a80b', 'GET', 'http://localhost:8000/admin/dashboard', 'admin/dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'IOS', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (69, '2024-04-14 13:40:12', '2024-04-14 13:40:12', 'ec4b89e1b2c6fccc77b4cf2e2d008fd481f0a80b', 'GET', 'http://localhost:8000/admin/dashboard', 'admin/dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'IOS', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (97, '2024-04-14 14:36:00', '2024-04-14 14:36:00', 'ec4b89e1b2c6fccc77b4cf2e2d008fd481f0a80b', 'GET', 'http://localhost:8000/admin/dashboard', 'admin/dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (98, '2024-04-14 14:38:15', '2024-04-14 14:38:15', 'ec4b89e1b2c6fccc77b4cf2e2d008fd481f0a80b', 'GET', 'http://localhost:8000/admin/dashboard', 'admin/dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (99, '2024-04-14 14:38:55', '2024-04-14 14:38:55', 'ec4b89e1b2c6fccc77b4cf2e2d008fd481f0a80b', 'GET', 'http://localhost:8000/admin/dashboard', 'admin/dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (100, '2024-04-14 14:39:17', '2024-04-14 14:39:17', 'ec4b89e1b2c6fccc77b4cf2e2d008fd481f0a80b', 'GET', 'http://localhost:8000/admin/dashboard', 'admin/dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (101, '2024-04-14 14:40:51', '2024-04-14 14:40:51', 'ec4b89e1b2c6fccc77b4cf2e2d008fd481f0a80b', 'GET', 'http://localhost:8000/admin/dashboard', 'admin/dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (102, '2024-04-14 14:41:17', '2024-04-14 14:41:17', 'ec4b89e1b2c6fccc77b4cf2e2d008fd481f0a80b', 'GET', 'http://localhost:8000/admin/dashboard', 'admin/dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (103, '2024-04-14 14:41:49', '2024-04-14 14:41:49', 'ec4b89e1b2c6fccc77b4cf2e2d008fd481f0a80b', 'GET', 'http://localhost:8000/admin/dashboard', 'admin/dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (104, '2024-04-14 14:42:32', '2024-04-14 14:42:32', 'ec4b89e1b2c6fccc77b4cf2e2d008fd481f0a80b', 'GET', 'http://localhost:8000/admin/dashboard', 'admin/dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (105, '2024-04-14 14:44:52', '2024-04-14 14:44:52', 'ec4b89e1b2c6fccc77b4cf2e2d008fd481f0a80b', 'GET', 'http://localhost:8000/admin/dashboard', 'admin/dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (106, '2024-04-14 14:50:18', '2024-04-14 14:50:18', 'ec4b89e1b2c6fccc77b4cf2e2d008fd481f0a80b', 'GET', 'http://localhost:8000/admin/dashboard', 'admin/dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (107, '2024-04-14 14:50:59', '2024-04-14 14:50:59', 'ec4b89e1b2c6fccc77b4cf2e2d008fd481f0a80b', 'GET', 'http://localhost:8000/admin/dashboard', 'admin/dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (108, '2024-04-14 14:51:06', '2024-04-14 14:51:06', 'ec4b89e1b2c6fccc77b4cf2e2d008fd481f0a80b', 'GET', 'http://localhost:8000/admin/dashboard', 'admin/dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (109, '2024-04-14 14:51:09', '2024-04-14 14:51:09', '5065565128377eb63f09563dec61247652c6af42', 'GET', 'http://localhost:8000', '/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (110, '2024-04-14 14:51:13', '2024-04-14 14:51:13', '75b6170362b50fe596260ed709be0b079991fcb2', 'GET', 'http://localhost:8000/page/page-one', 'page/page-one', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (111, '2024-04-14 14:51:16', '2024-04-14 14:51:16', '5d984dd704b2fc0c92fc96e2289983ef82393440', 'GET', 'http://localhost:8000/about', 'about', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (112, '2024-04-14 14:51:18', '2024-04-14 14:51:18', '8adb5a280b24db9c57ef70ae5d98697e0b8c8297', 'GET', 'http://localhost:8000/feature', 'feature', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (113, '2024-04-14 14:51:21', '2024-04-14 14:51:21', '900685e083fb4889fead1295098e9bdedfc266b1', 'GET', 'http://localhost:8000/pricing', 'pricing', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (114, '2024-04-14 14:51:23', '2024-04-14 14:51:23', '720de54702b78787cc8e6695d30445c4913bbde2', 'GET', 'http://localhost:8000/blog', 'blog', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (115, '2024-04-14 14:51:25', '2024-04-14 14:51:25', '60c3395550a8d8abf1663650780f47e4a9ce8412', 'GET', 'http://localhost:8000/faq', 'faq', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (116, '2024-04-14 14:51:26', '2024-04-14 14:51:26', '07ddb798d66d6a243d3b5286c8da6204126c60fe', 'GET', 'http://localhost:8000/contact', 'contact', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (117, '2024-04-14 14:51:29', '2024-04-14 14:51:29', '5d984dd704b2fc0c92fc96e2289983ef82393440', 'GET', 'http://localhost:8000/about', 'about', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (118, '2024-04-14 14:51:30', '2024-04-14 14:51:30', '900685e083fb4889fead1295098e9bdedfc266b1', 'GET', 'http://localhost:8000/pricing', 'pricing', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (119, '2024-04-14 14:51:32', '2024-04-14 14:51:32', 'ec4b89e1b2c6fccc77b4cf2e2d008fd481f0a80b', 'GET', 'http://localhost:8000/admin/dashboard', 'admin/dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (120, '2024-04-14 17:16:18', '2024-04-14 17:16:18', '5065565128377eb63f09563dec61247652c6af42', 'GET', 'http://localhost:8000', '/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (121, '2024-04-14 17:18:22', '2024-04-14 17:18:22', '720de54702b78787cc8e6695d30445c4913bbde2', 'GET', 'http://localhost:8000/blog', 'blog', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (122, '2024-04-14 17:18:36', '2024-04-14 17:18:36', '08b59c33b2d4b7cb42072c8dc5dfb3eabade312b', 'GET', 'http://localhost:8000/blog/detail/a-year-from-now-you-may-wish-you-had-started-today', 'blog/detail/a-year-from-now-you-may-wish-you-had-started-today', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (123, '2024-04-14 18:31:33', '2024-04-14 18:31:33', '989516d7a47725e5747aecf1d148b3a2ad33eb21', 'GET', 'http://localhost:8000/admin/blog', 'admin/blog', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (124, '2024-04-14 18:31:33', '2024-04-14 18:31:33', '1f1891509c5e281da7d868f704c9b1f51fa68e06', 'GET', 'http://localhost:8000/admin/auth/login', 'admin/auth/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (125, '2024-04-14 18:31:39', '2024-04-14 18:31:39', '68e8be2802d05de27f1e4bc5f2b3e222dbf6d605', 'POST', 'http://localhost:8000/admin/auth/action_login', 'admin/auth/action_login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (126, '2024-04-14 18:31:39', '2024-04-14 18:31:39', 'ec4b89e1b2c6fccc77b4cf2e2d008fd481f0a80b', 'GET', 'http://localhost:8000/admin/dashboard', 'admin/dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (127, '2024-04-14 18:31:49', '2024-04-14 18:31:49', '989516d7a47725e5747aecf1d148b3a2ad33eb21', 'GET', 'http://localhost:8000/admin/blog', 'admin/blog', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (128, '2024-04-14 18:31:53', '2024-04-14 18:31:53', '3aa41f5af5d8840347e5dd3588e384936cf953e7', 'GET', 'http://localhost:8000/admin/blog/create', 'admin/blog/create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (129, '2024-04-14 18:32:48', '2024-04-14 18:32:48', '989516d7a47725e5747aecf1d148b3a2ad33eb21', 'GET', 'http://localhost:8000/admin/blog', 'admin/blog', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (130, '2024-04-14 18:35:08', '2024-04-14 18:35:08', '989516d7a47725e5747aecf1d148b3a2ad33eb21', 'GET', 'http://localhost:8000/admin/blog', 'admin/blog', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (131, '2024-04-14 18:36:12', '2024-04-14 18:36:12', '989516d7a47725e5747aecf1d148b3a2ad33eb21', 'GET', 'http://localhost:8000/admin/blog', 'admin/blog', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (132, '2024-04-14 18:37:45', '2024-04-14 18:37:45', '989516d7a47725e5747aecf1d148b3a2ad33eb21', 'GET', 'http://localhost:8000/admin/blog', 'admin/blog', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (133, '2024-04-14 18:38:09', '2024-04-14 18:38:09', '989516d7a47725e5747aecf1d148b3a2ad33eb21', 'GET', 'http://localhost:8000/admin/blog', 'admin/blog', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (134, '2024-04-14 18:39:01', '2024-04-14 18:39:01', '989516d7a47725e5747aecf1d148b3a2ad33eb21', 'GET', 'http://localhost:8000/admin/blog', 'admin/blog', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (135, '2024-04-14 18:39:32', '2024-04-14 18:39:32', '989516d7a47725e5747aecf1d148b3a2ad33eb21', 'GET', 'http://localhost:8000/admin/blog', 'admin/blog', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (136, '2024-04-14 18:40:04', '2024-04-14 18:40:04', '989516d7a47725e5747aecf1d148b3a2ad33eb21', 'GET', 'http://localhost:8000/admin/blog', 'admin/blog', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (137, '2024-04-14 18:40:52', '2024-04-14 18:40:52', '989516d7a47725e5747aecf1d148b3a2ad33eb21', 'GET', 'http://localhost:8000/admin/blog', 'admin/blog', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (138, '2024-04-14 18:41:19', '2024-04-14 18:41:19', '989516d7a47725e5747aecf1d148b3a2ad33eb21', 'GET', 'http://localhost:8000/admin/blog', 'admin/blog', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (139, '2024-04-14 18:41:29', '2024-04-14 18:41:29', '989516d7a47725e5747aecf1d148b3a2ad33eb21', 'GET', 'http://localhost:8000/admin/blog', 'admin/blog', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (140, '2024-04-14 18:42:01', '2024-04-14 18:42:01', '989516d7a47725e5747aecf1d148b3a2ad33eb21', 'GET', 'http://localhost:8000/admin/blog', 'admin/blog', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (141, '2024-04-14 18:42:10', '2024-04-14 18:42:10', 'ffce898b8d7f518889421b82a1344babd1d749ae', 'GET', 'http://localhost:8000/admin/auth/logout', 'admin/auth/logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (142, '2024-04-14 18:42:10', '2024-04-14 18:42:10', '1f1891509c5e281da7d868f704c9b1f51fa68e06', 'GET', 'http://localhost:8000/admin/auth/login', 'admin/auth/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (143, '2024-04-14 18:42:15', '2024-04-14 18:42:15', '68e8be2802d05de27f1e4bc5f2b3e222dbf6d605', 'POST', 'http://localhost:8000/admin/auth/action_login', 'admin/auth/action_login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (144, '2024-04-14 18:42:15', '2024-04-14 18:42:15', 'ec4b89e1b2c6fccc77b4cf2e2d008fd481f0a80b', 'GET', 'http://localhost:8000/admin/dashboard', 'admin/dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (145, '2024-04-14 18:43:43', '2024-04-14 18:43:43', 'a8cc840cab5916f926a1fe2de5fc169d5913fb0e', 'GET', 'http://localhost:8000/admin/feature', 'admin/feature', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (146, '2024-04-14 18:43:49', '2024-04-14 18:43:49', 'a8cc840cab5916f926a1fe2de5fc169d5913fb0e', 'GET', 'http://localhost:8000/admin/feature', 'admin/feature', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (147, '2024-04-14 18:43:52', '2024-04-14 18:43:52', 'e43c6d7878b45ea57b04e88929e530a9c1de000b', 'GET', 'http://localhost:8000/admin/feature/1', 'admin/feature/1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (148, '2024-04-14 18:47:49', '2024-04-14 18:47:49', '989516d7a47725e5747aecf1d148b3a2ad33eb21', 'GET', 'http://localhost:8000/admin/blog', 'admin/blog', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (149, '2024-04-14 18:47:52', '2024-04-14 18:47:52', '6006731d02534a18e5abcf3684cd4a9c000d6e16', 'GET', 'http://localhost:8000/admin/blog/1/edit', 'admin/blog/1/edit', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (150, '2024-04-14 18:54:48', '2024-04-14 18:54:48', '720de54702b78787cc8e6695d30445c4913bbde2', 'GET', 'http://localhost:8000/blog', 'blog', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (151, '2024-04-14 18:55:30', '2024-04-14 18:55:30', '720de54702b78787cc8e6695d30445c4913bbde2', 'GET', 'http://localhost:8000/blog', 'blog', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (152, '2024-04-14 18:57:15', '2024-04-14 18:57:15', '720de54702b78787cc8e6695d30445c4913bbde2', 'GET', 'http://localhost:8000/blog', 'blog', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (153, '2024-04-14 18:57:50', '2024-04-14 18:57:50', '720de54702b78787cc8e6695d30445c4913bbde2', 'GET', 'http://localhost:8000/blog', 'blog', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (154, '2024-04-14 18:57:53', '2024-04-14 18:57:53', '08b59c33b2d4b7cb42072c8dc5dfb3eabade312b', 'GET', 'http://localhost:8000/blog/detail/a-year-from-now-you-may-wish-you-had-started-today', 'blog/detail/a-year-from-now-you-may-wish-you-had-started-today', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (155, '2024-04-14 18:59:03', '2024-04-14 18:59:03', '8adb5a280b24db9c57ef70ae5d98697e0b8c8297', 'GET', 'http://localhost:8000/feature', 'feature', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (156, '2024-04-14 18:59:37', '2024-04-14 18:59:37', 'd1e76eaafd8a2c3fdf5458b3e9cb7eb469ab95ec', 'GET', 'http://localhost:8000/home', 'home', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (157, '2024-04-14 19:00:01', '2024-04-14 19:00:01', 'd1e76eaafd8a2c3fdf5458b3e9cb7eb469ab95ec', 'GET', 'http://localhost:8000/home', 'home', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (158, '2024-04-14 19:00:50', '2024-04-14 19:00:50', 'd1e76eaafd8a2c3fdf5458b3e9cb7eb469ab95ec', 'GET', 'http://localhost:8000/home', 'home', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (159, '2024-04-14 19:01:38', '2024-04-14 19:01:38', 'd1e76eaafd8a2c3fdf5458b3e9cb7eb469ab95ec', 'GET', 'http://localhost:8000/home', 'home', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (160, '2024-04-14 19:02:07', '2024-04-14 19:02:07', 'd1e76eaafd8a2c3fdf5458b3e9cb7eb469ab95ec', 'GET', 'http://localhost:8000/home', 'home', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (161, '2024-04-14 19:02:26', '2024-04-14 19:02:26', 'd1e76eaafd8a2c3fdf5458b3e9cb7eb469ab95ec', 'GET', 'http://localhost:8000/home', 'home', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (162, '2024-04-14 19:03:37', '2024-04-14 19:03:37', '75b6170362b50fe596260ed709be0b079991fcb2', 'GET', 'http://localhost:8000/page/page-one', 'page/page-one', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (163, '2024-04-14 19:03:59', '2024-04-14 19:03:59', '75b6170362b50fe596260ed709be0b079991fcb2', 'GET', 'http://localhost:8000/page/page-one', 'page/page-one', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (164, '2024-04-14 19:04:06', '2024-04-14 19:04:06', '75b6170362b50fe596260ed709be0b079991fcb2', 'GET', 'http://localhost:8000/page/page-one', 'page/page-one', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (165, '2024-04-14 19:05:35', '2024-04-14 19:05:35', '6006731d02534a18e5abcf3684cd4a9c000d6e16', 'GET', 'http://localhost:8000/admin/blog/1/edit', 'admin/blog/1/edit', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (166, '2024-04-14 19:05:43', '2024-04-14 19:05:43', '989516d7a47725e5747aecf1d148b3a2ad33eb21', 'GET', 'http://localhost:8000/admin/blog', 'admin/blog', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (167, '2024-04-14 19:05:46', '2024-04-14 19:05:46', '3aa41f5af5d8840347e5dd3588e384936cf953e7', 'GET', 'http://localhost:8000/admin/blog/create', 'admin/blog/create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (168, '2024-04-14 19:06:34', '2024-04-14 19:06:34', '989516d7a47725e5747aecf1d148b3a2ad33eb21', 'GET', 'http://localhost:8000/admin/blog', 'admin/blog', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (169, '2024-04-14 19:06:39', '2024-04-14 19:06:39', 'c9e9fd9889bcbe0cb3daedd86c104a838d0abb55', 'GET', 'http://localhost:8000/admin/blog/8', 'admin/blog/8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (170, '2024-04-14 19:06:43', '2024-04-14 19:06:43', '6006731d02534a18e5abcf3684cd4a9c000d6e16', 'GET', 'http://localhost:8000/admin/blog/8/edit', 'admin/blog/8/edit', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (171, '2024-04-14 19:07:15', '2024-04-14 19:07:15', '989516d7a47725e5747aecf1d148b3a2ad33eb21', 'GET', 'http://localhost:8000/admin/blog', 'admin/blog', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (172, '2024-04-14 19:07:20', '2024-04-14 19:07:20', '989516d7a47725e5747aecf1d148b3a2ad33eb21', 'GET', 'http://localhost:8000/admin/blog', 'admin/blog', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (173, '2024-04-14 19:11:21', '2024-04-14 19:11:21', 'd1e76eaafd8a2c3fdf5458b3e9cb7eb469ab95ec', 'GET', 'http://localhost:8000/home', 'home', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (174, '2024-04-14 19:12:25', '2024-04-14 19:12:25', '5d984dd704b2fc0c92fc96e2289983ef82393440', 'GET', 'http://localhost:8000/about', 'about', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (175, '2024-04-14 19:12:29', '2024-04-14 19:12:29', '8adb5a280b24db9c57ef70ae5d98697e0b8c8297', 'GET', 'http://localhost:8000/feature', 'feature', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (176, '2024-04-14 19:13:01', '2024-04-14 19:13:01', '8adb5a280b24db9c57ef70ae5d98697e0b8c8297', 'GET', 'http://localhost:8000/feature', 'feature', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (177, '2024-04-14 19:13:18', '2024-04-14 19:13:18', '8adb5a280b24db9c57ef70ae5d98697e0b8c8297', 'GET', 'http://localhost:8000/feature', 'feature', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (178, '2024-04-14 19:13:24', '2024-04-14 19:13:24', '8adb5a280b24db9c57ef70ae5d98697e0b8c8297', 'GET', 'http://localhost:8000/feature', 'feature', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (179, '2024-04-14 19:13:30', '2024-04-14 19:13:30', '8adb5a280b24db9c57ef70ae5d98697e0b8c8297', 'GET', 'http://localhost:8000/feature', 'feature', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (180, '2024-04-14 19:13:34', '2024-04-14 19:13:34', '900685e083fb4889fead1295098e9bdedfc266b1', 'GET', 'http://localhost:8000/pricing', 'pricing', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (181, '2024-04-14 19:13:38', '2024-04-14 19:13:38', '720de54702b78787cc8e6695d30445c4913bbde2', 'GET', 'http://localhost:8000/blog', 'blog', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (182, '2024-04-14 19:14:18', '2024-04-14 19:14:18', '60c3395550a8d8abf1663650780f47e4a9ce8412', 'GET', 'http://localhost:8000/faq', 'faq', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (183, '2024-04-14 19:14:21', '2024-04-14 19:14:21', '720de54702b78787cc8e6695d30445c4913bbde2', 'GET', 'http://localhost:8000/blog', 'blog', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (184, '2024-04-14 19:14:25', '2024-04-14 19:14:25', '08b59c33b2d4b7cb42072c8dc5dfb3eabade312b', 'GET', 'http://localhost:8000/blog/detail/a-year-from-now-you-may-wish-you-had-started-today', 'blog/detail/a-year-from-now-you-may-wish-you-had-started-today', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (185, '2024-04-14 19:14:31', '2024-04-14 19:14:31', '07ddb798d66d6a243d3b5286c8da6204126c60fe', 'GET', 'http://localhost:8000/contact', 'contact', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO `logs` VALUES (186, '2024-04-14 19:14:39', '2024-04-14 19:14:39', 'd1e76eaafd8a2c3fdf5458b3e9cb7eb469ab95ec', 'GET', 'http://localhost:8000/home', 'home', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `notes` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES (1, 'Gelar', 'gelar@gmail.com', 'Subject', 'Message', NULL, 1, '2024-03-24 22:24:35', '2024-03-24 22:24:37', 1, 1);
INSERT INTO `messages` VALUES (2, 'Aditya', 'aditya@email.com', 'Subject', 'Message', NULL, 0, '2024-03-24 22:25:01', '2024-03-24 22:25:04', 1, 1);
INSERT INTO `messages` VALUES (37, 'Gelar Aditya Pratama', 'akatgelar@gmail.com', 'asda', 'Your Message', NULL, 0, '2024-03-28 11:27:30', '2024-03-28 11:27:30', NULL, NULL);
INSERT INTO `messages` VALUES (38, 'Gelar Aditya Pratama', 'akatgelar@gmail.com', 'asda', 'Your Message', NULL, 0, '2024-03-28 11:40:21', '2024-03-28 11:40:21', NULL, NULL);
INSERT INTO `messages` VALUES (39, 'f', 'g', 'h', 'j', NULL, 0, '2024-03-28 11:40:51', '2024-03-28 11:40:51', NULL, NULL);
INSERT INTO `messages` VALUES (40, 'f', 'g', 'h', 'j', NULL, 0, '2024-03-28 11:43:04', '2024-03-28 11:43:04', NULL, NULL);
INSERT INTO `messages` VALUES (41, 'f', 'g', 'h', 'j', NULL, 0, '2024-03-28 11:43:48', '2024-03-28 11:43:48', NULL, NULL);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (3, '2024_03_16_043823_create_user_levels_table', 1);
INSERT INTO `migrations` VALUES (4, '2024_03_17_044652_create_settings_table', 1);
INSERT INTO `migrations` VALUES (5, '2024_03_22_044048_create_sliders_table', 1);
INSERT INTO `migrations` VALUES (6, '2024_03_22_044401_create_features_table', 1);
INSERT INTO `migrations` VALUES (7, '2024_03_22_044422_create_pricings_table', 1);
INSERT INTO `migrations` VALUES (8, '2024_03_22_044433_create_blogs_table', 1);
INSERT INTO `migrations` VALUES (9, '2024_03_22_044442_create_faqs_table', 1);
INSERT INTO `migrations` VALUES (10, '2024_03_22_044522_create_messages_table', 1);
INSERT INTO `migrations` VALUES (11, '2024_03_22_044549_create_teams_table', 1);
INSERT INTO `migrations` VALUES (12, '2024_03_22_044607_create_big_numbers_table', 1);
INSERT INTO `migrations` VALUES (13, '2024_03_22_044656_create_partners_table', 1);
INSERT INTO `migrations` VALUES (14, '2024_03_22_044713_create_testimonies_table', 1);
INSERT INTO `migrations` VALUES (15, '2024_03_22_044823_create_pages_table', 1);
INSERT INTO `migrations` VALUES (16, '2024_03_24_152919_update_blog_table', 2);
INSERT INTO `migrations` VALUES (17, '2024_03_24_153033_update_page_table', 3);
INSERT INTO `migrations` VALUES (18, '2024_03_31_165519_create_sessions_table', 4);
INSERT INTO `migrations` VALUES (20, '2024_04_01_090100_update_settings_table', 5);
INSERT INTO `migrations` VALUES (21, '2024_04_01_120310_create_uploads_table', 6);
INSERT INTO `migrations` VALUES (22, '2019_02_08_105647_create_blocks_contents_tables', 7);
INSERT INTO `migrations` VALUES (23, '2021_11_12_153947_remove_blocks_contents_tables', 7);
INSERT INTO `migrations` VALUES (24, '2024_04_13_105020_create_logs_table', 7);

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `description_short` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `description_long` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `notes` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES (1, 'Page One', 'page-one', 'uploads/xxx/noimage.jpg', '2024-03-24 15:31:24', '', '<h1>HTML Ipsum Presents</h1>\r\n\r\n				<p><strong>Pellentesque habitant morbi tristique</strong> senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. <em>Aenean ultricies mi vitae est.</em> Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, <code>commodo vitae</code>, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. <a href=\"#\">Donec non enim</a> in turpis pulvinar facilisis. Ut felis.</p>\r\n\r\n				<h2>Header Level 2</h2>\r\n\r\n				<ol>\r\n				   <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>\r\n				   <li>Aliquam tincidunt mauris eu risus.</li>\r\n				</ol>\r\n\r\n				<blockquote><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue. Ut a est eget ligula molestie gravida. Curabitur massa. Donec eleifend, libero at sagittis mollis, tellus est malesuada tellus, at luctus turpis elit sit amet quam. Vivamus pretium ornare est.</p></blockquote>\r\n\r\n				<h3>Header Level 3</h3>\r\n\r\n				<ul>\r\n				   <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>\r\n				   <li>Aliquam tincidunt mauris eu risus.</li>\r\n				</ul>\r\n\r\n				<pre><code>\r\n				#header h1 a {\r\n				  display: block;\r\n				  width: 300px;\r\n				  height: 80px;\r\n				}\r\n				</code></pre>', NULL, 1, '2024-03-24 22:31:34', '2024-03-24 22:31:40', 1, 1);
INSERT INTO `pages` VALUES (2, 'Page Two', 'page-two', 'uploads/xxx/noimage.jpg', '2024-03-24 15:31:24', '', '<h1>HTML Ipsum Presents</h1>\r\n\r\n				<p><strong>Pellentesque habitant morbi tristique</strong> senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. <em>Aenean ultricies mi vitae est.</em> Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, <code>commodo vitae</code>, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. <a href=\"#\">Donec non enim</a> in turpis pulvinar facilisis. Ut felis.</p>\r\n\r\n				<h2>Header Level 2</h2>\r\n\r\n				<ol>\r\n				   <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>\r\n				   <li>Aliquam tincidunt mauris eu risus.</li>\r\n				</ol>\r\n\r\n				<blockquote><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue. Ut a est eget ligula molestie gravida. Curabitur massa. Donec eleifend, libero at sagittis mollis, tellus est malesuada tellus, at luctus turpis elit sit amet quam. Vivamus pretium ornare est.</p></blockquote>\r\n\r\n				<h3>Header Level 3</h3>\r\n\r\n				<ul>\r\n				   <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>\r\n				   <li>Aliquam tincidunt mauris eu risus.</li>\r\n				</ul>\r\n\r\n				<pre><code>\r\n				#header h1 a {\r\n				  display: block;\r\n				  width: 300px;\r\n				  height: 80px;\r\n				}\r\n				</code></pre>', NULL, 1, '2024-03-24 22:31:34', '2024-03-24 22:31:40', 1, NULL);

-- ----------------------------
-- Table structure for partners
-- ----------------------------
DROP TABLE IF EXISTS `partners`;
CREATE TABLE `partners`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `notes` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of partners
-- ----------------------------
INSERT INTO `partners` VALUES (1, 'Partner 1', 'uploads/xxx/07.webp', 'http://google.com', NULL, 1, '2024-03-24 22:33:03', '2024-03-24 22:33:05', 1, 1);
INSERT INTO `partners` VALUES (2, 'Partner 2', 'uploads/xxx/07.webp', 'http://google.com', NULL, 0, '2024-03-24 22:33:33', '2024-03-24 22:33:36', NULL, NULL);

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type` ASC, `tokenable_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for pricings
-- ----------------------------
DROP TABLE IF EXISTS `pricings`;
CREATE TABLE `pricings`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` double(8, 2) NULL DEFAULT NULL,
  `description_short` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `description_long` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `notes` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pricings
-- ----------------------------
INSERT INTO `pricings` VALUES (1, 'Basic', 25.00, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhy do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', NULL, 1, '2024-03-24 22:34:44', '2024-03-24 22:34:46', 1, 1);
INSERT INTO `pricings` VALUES (2, 'Professional', 40.00, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhy do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', NULL, 1, '2024-04-09 14:24:23', NULL, NULL, NULL);
INSERT INTO `pricings` VALUES (3, 'Startup', 99.00, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhy do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', NULL, 1, '2024-04-09 14:24:25', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions`  (
  `id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NULL DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sessions_user_id_index`(`user_id` ASC) USING BTREE,
  INDEX `sessions_last_activity_index`(`last_activity` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO `sessions` VALUES ('di5EHn2y8QuLhPH8AQx46jVj9cOt3SqeJV8DbkrZ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YToxMDp7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9ob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo2OiJfdG9rZW4iO3M6NDA6Im56MFB1REMzdWEyWWdHY05sY2xZMFIzZHVtMzdEeEtyMGR0eHZOZFMiO3M6NzoidXNlcl9pZCI7aToxO3M6MTM6InVzZXJfbGV2ZWxfaWQiO2k6MTtzOjE1OiJ1c2VyX2xldmVsX25hbWUiO3M6MTE6IlN1cGVyIEFkbWluIjtzOjk6InVzZXJfbmFtZSI7czo1OiJBZG1pbiI7czoxMDoidXNlcl9lbWFpbCI7czoxNToiYWRtaW5AZW1haWwuY29tIjtzOjEyOiJ1c2VyX3BpY3R1cmUiO3M6MjM6InVwbG9hZHMveHh4L2F2dGFyXzEucG5nIjtzOjU6InRva2VuIjtzOjMzNToiZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnBjM01pT2lKb2RIUndPaTh2Ykc5allXeG9iM04wT2pnd01EQXZZV1J0YVc0dllYVjBhQzloWTNScGIyNWZiRzluYVc0aUxDSnBZWFFpT2pFM01UTXdPVFE1TXpVc0ltVjRjQ0k2TVRjeE16RTRNVE16TlN3aWJtSm1Jam94TnpFek1EazBPVE0xTENKcWRHa2lPaUo1VFRrd1pWbENkVU16YWpWTllsZDBJaXdpYzNWaUlqb2lNU0lzSW5CeWRpSTZJakl6WW1RMVl6ZzVORGxtTmpBd1lXUmlNemxsTnpBeFl6UXdNRGczTW1SaU4yRTFPVGMyWmpjaWZRLkc3RTZOempwUkhQTHI5YzdnSWpURWp3UTBUSkh0TmtiOXRpSExrM2J1cUkiO30=', 1713096879);

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `notes` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `type` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `settings_key_unique`(`key` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES (1, 'name', 'Company Profile', NULL, 1, '2024-04-09 14:53:29', NULL, NULL, NULL, 'text');
INSERT INTO `settings` VALUES (2, 'copyright', 'Copyright @2024 Citiasia', NULL, 1, '2024-04-09 14:53:29', NULL, NULL, NULL, 'text');
INSERT INTO `settings` VALUES (3, 'footer-about', 'Lorem Ipsum', NULL, 1, '2024-04-09 14:53:29', NULL, NULL, NULL, 'longtext');
INSERT INTO `settings` VALUES (4, 'address', 'Bandung', NULL, 1, '2024-04-09 14:53:29', NULL, NULL, NULL, 'text');
INSERT INTO `settings` VALUES (5, 'phone', '085', NULL, 1, '2024-04-09 14:53:29', NULL, NULL, NULL, 'text');
INSERT INTO `settings` VALUES (6, 'email', 'compro@email.com', NULL, 1, '2024-04-09 14:53:29', NULL, NULL, NULL, 'text');
INSERT INTO `settings` VALUES (7, 'socmed-twitter', 'http://google.com', NULL, 1, '2024-04-09 14:53:29', NULL, NULL, NULL, 'text');
INSERT INTO `settings` VALUES (8, 'socmed-instagram', 'http://google.com', NULL, 1, '2024-04-09 14:53:29', NULL, NULL, NULL, 'text');
INSERT INTO `settings` VALUES (9, 'socmed-linkedin', 'http://google.com', NULL, 1, '2024-04-09 14:53:29', NULL, NULL, NULL, 'text');
INSERT INTO `settings` VALUES (10, 'socmed-facebook', 'http://google.com', NULL, 1, '2024-04-09 14:53:29', NULL, NULL, NULL, 'text');
INSERT INTO `settings` VALUES (11, 'faq-description', 'Lorem Ipsum', NULL, 1, '2024-04-09 14:53:29', NULL, NULL, NULL, 'wysiwyg');
INSERT INTO `settings` VALUES (12, 'contact-map', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d123505.75790910245!2d121.05573800000002!3d14.681181!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397ba0942ef7375%3A0x4a9a32d9fe083d40!2sQuezon%20City%2C%20Metro%20Manila%2C%20Philippines!5e0!3m2!1sen!2sus!4v1676356596840!5m2!1sen!2sus', NULL, 1, '2024-04-09 14:53:29', NULL, NULL, NULL, 'longtext');
INSERT INTO `settings` VALUES (13, 'about-content', '<h1>HTML Ipsum Presents</h1>\r\n\r\n				<p><strong>Pellentesque habitant morbi tristique</strong> senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. <em>Aenean ultricies mi vitae est.</em> Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, <code>commodo vitae</code>, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. <a href=\"#\">Donec non enim</a> in turpis pulvinar facilisis. Ut felis.</p>\r\n\r\n				<h2>Header Level 2</h2>\r\n\r\n				<ol>\r\n				   <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>\r\n				   <li>Aliquam tincidunt mauris eu risus.</li>\r\n				</ol>\r\n\r\n				<blockquote><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue. Ut a est eget ligula molestie gravida. Curabitur massa. Donec eleifend, libero at sagittis mollis, tellus est malesuada tellus, at luctus turpis elit sit amet quam. Vivamus pretium ornare est.</p></blockquote>\r\n\r\n				<h3>Header Level 3</h3>\r\n\r\n				<ul>\r\n				   <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>\r\n				   <li>Aliquam tincidunt mauris eu risus.</li>\r\n				</ul>\r\n\r\n				<pre><code>\r\n				#header h1 a {\r\n				  display: block;\r\n				  width: 300px;\r\n				  height: 80px;\r\n				}\r\n				</code></pre>', NULL, 1, '2024-04-09 14:53:29', NULL, NULL, NULL, 'wysiwyg');
INSERT INTO `settings` VALUES (14, 'favicon', 'uploads/xxx/favicon.ico', NULL, 1, '2024-04-09 14:53:29', NULL, NULL, NULL, 'image');
INSERT INTO `settings` VALUES (15, 'name-short', 'ComPro', NULL, 1, '2024-04-09 14:53:29', NULL, NULL, NULL, 'text');
INSERT INTO `settings` VALUES (17, 'seo-description', NULL, NULL, 1, '2024-04-09 17:02:32', NULL, NULL, NULL, 'longtext');
INSERT INTO `settings` VALUES (18, 'seo-keywords', NULL, NULL, 1, '2024-04-09 17:02:32', NULL, NULL, NULL, 'longtext');
INSERT INTO `settings` VALUES (19, 'seo-author', NULL, NULL, 1, '2024-04-09 17:02:32', NULL, NULL, NULL, 'longtext');
INSERT INTO `settings` VALUES (20, 'seo-keyphrases', NULL, NULL, 1, '2024-04-09 17:02:32', NULL, NULL, NULL, 'longtext');
INSERT INTO `settings` VALUES (21, 'seo-mytopic', NULL, NULL, 1, '2024-04-09 17:02:32', NULL, NULL, NULL, 'longtext');
INSERT INTO `settings` VALUES (22, 'seo-classification', NULL, NULL, 1, '2024-04-09 17:02:32', NULL, NULL, NULL, 'longtext');
INSERT INTO `settings` VALUES (23, 'seo-robots', NULL, NULL, 1, '2024-04-09 17:02:32', NULL, NULL, NULL, 'longtext');

-- ----------------------------
-- Table structure for sliders
-- ----------------------------
DROP TABLE IF EXISTS `sliders`;
CREATE TABLE `sliders`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `notes` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sliders
-- ----------------------------
INSERT INTO `sliders` VALUES (1, 'The Joy Of Right Health', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\n                                ', 'uploads/xxx/banner-top.webp', 'http://google.com', NULL, 1, '2024-04-08 13:48:59', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for teams
-- ----------------------------
DROP TABLE IF EXISTS `teams`;
CREATE TABLE `teams`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `notes` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of teams
-- ----------------------------
INSERT INTO `teams` VALUES (1, 'Darlene Robertson', 'Founder', 'uploads/xxx/team1.webp', NULL, 1, '2024-04-09 10:28:08', NULL, NULL, NULL);
INSERT INTO `teams` VALUES (2, 'Floyd Miles', 'UI designer', 'uploads/xxx/team2.webp', NULL, 1, '2024-04-09 10:28:11', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for testimonies
-- ----------------------------
DROP TABLE IF EXISTS `testimonies`;
CREATE TABLE `testimonies`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `testimony` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `notes` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of testimonies
-- ----------------------------
INSERT INTO `testimonies` VALUES (1, 'Elsa Schmidt 1', 'Spa', 'Torquatos nec eu, detr periculis ex, nihil expetendis in mei. Mei an pericula euripidis.hinc partem ei est. Eos ei nisl graecis, vixaperiri consequat an. Eius lorem tincidunt vix at, vel pertinax sensibus id, error epicurei mea. Mea facilisis urbanitas.Torquatos nec eu, detr periculis ex, nihil expetendis in mei.', NULL, 1, '2024-04-09 10:41:52', NULL, NULL, NULL);
INSERT INTO `testimonies` VALUES (2, 'Elsa Schmidt 2', 'Spa', 'Torquatos nec eu, detr periculis ex, nihil expetendis in mei. Mei an pericula euripidis.hinc partem ei est. Eos ei nisl graecis, vixaperiri consequat an. Eius lorem tincidunt vix at, vel pertinax sensibus id, error epicurei mea. Mea facilisis urbanitas.Torquatos nec eu, detr periculis ex, nihil expetendis in mei.', NULL, 1, '2024-04-09 10:41:54', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for uploads
-- ----------------------------
DROP TABLE IF EXISTS `uploads`;
CREATE TABLE `uploads`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ext` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `hash` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of uploads
-- ----------------------------
INSERT INTO `uploads` VALUES (11, 'google-cloud-icon-400w', 'png', '.png', '10024', '20240401_123500_google-cloud-icon-400w.png', 'uploads/xxx/20240401_123500_google-cloud-icon-400w.png', NULL, 0, '2024-04-01 12:35:00', '2024-04-01 12:35:00', 1, 1);
INSERT INTO `uploads` VALUES (12, 'google-cloud-icon-400w', 'png', '.png', '10024', '20240402_160324_google-cloud-icon-400w.png', 'uploads//20240402_160324_google-cloud-icon-400w.png', NULL, 0, '2024-04-02 16:03:25', '2024-04-02 16:03:25', 1, 1);
INSERT INTO `uploads` VALUES (13, '2024-03-28', 'png', '.png', '131397', '20240402_160627_2024-03-28.png', 'uploads//20240402_160627_2024-03-28.png', NULL, 0, '2024-04-02 16:06:27', '2024-04-02 16:06:27', 1, 1);
INSERT INTO `uploads` VALUES (14, '2024-03-28', 'png', '.png', '131397', '20240402_161604_2024-03-28.png', 'uploads/20240402_161604_2024-03-28.png', NULL, 0, '2024-04-02 16:16:04', '2024-04-02 16:16:04', 1, 1);
INSERT INTO `uploads` VALUES (15, '2024-03-28', 'png', '.png', '131397', '20240402_161630_2024-03-28.png', 'uploads/20240402_161630_2024-03-28.png', NULL, 0, '2024-04-02 16:16:30', '2024-04-02 16:16:30', 1, 1);
INSERT INTO `uploads` VALUES (16, '2024-03-28', 'png', '.png', '131397', '20240402_161758_2024-03-28.png', 'uploads/20240402_161758_2024-03-28.png', NULL, 0, '2024-04-02 16:17:58', '2024-04-02 16:17:58', 1, 1);
INSERT INTO `uploads` VALUES (17, '2024-04-01', 'png', '.png', '2122438', '20240402_161908_2024-04-01.png', 'uploads/20240402_161908_2024-04-01.png', NULL, 0, '2024-04-02 16:19:08', '2024-04-02 16:19:08', 1, 1);
INSERT INTO `uploads` VALUES (18, '2024-03-28', 'png', '.png', '131397', '20240402_162229_2024-03-28.png', 'uploads/20240402_162229_2024-03-28.png', NULL, 0, '2024-04-02 16:22:29', '2024-04-02 16:22:29', 1, 1);
INSERT INTO `uploads` VALUES (19, '2024-04-01', 'png', '.png', '2122438', '20240402_162434_2024-04-01.png', 'uploads/20240402_162434_2024-04-01.png', NULL, 0, '2024-04-02 16:24:34', '2024-04-02 16:24:34', 1, 1);
INSERT INTO `uploads` VALUES (20, 'google-cloud-icon-400w', 'png', '.png', '10024', '20240404_095243_google-cloud-icon-400w.png', 'uploads/20240404_095243_google-cloud-icon-400w.png', NULL, 0, '2024-04-04 09:52:43', '2024-04-04 09:52:43', 1, 1);
INSERT INTO `uploads` VALUES (21, 'google-cloud-icon-400w', 'png', '.png', '10024', '20240404_095742_google-cloud-icon-400w.png', 'uploads/20240404_095742_google-cloud-icon-400w.png', NULL, 0, '2024-04-04 09:57:42', '2024-04-04 09:57:42', 1, 1);
INSERT INTO `uploads` VALUES (22, 'google-cloud-icon-400w', 'png', '.png', '10024', '20240404_104931_google-cloud-icon-400w.png', 'uploads/20240404_104931_google-cloud-icon-400w.png', NULL, 0, '2024-04-04 10:49:32', '2024-04-04 10:49:32', 1, 1);
INSERT INTO `uploads` VALUES (23, 'google-cloud-icon-400w', 'png', '.png', '10024', '20240404_110149_google-cloud-icon-400w.png', 'uploads/20240404_110149_google-cloud-icon-400w.png', NULL, 0, '2024-04-04 11:01:49', '2024-04-04 11:01:49', 1, 1);
INSERT INTO `uploads` VALUES (24, 'google-cloud-icon-400w', 'png', '.png', '10024', '20240404_112114_google-cloud-icon-400w.png', 'uploads/20240404_112114_google-cloud-icon-400w.png', NULL, 0, '2024-04-04 11:21:14', '2024-04-04 11:21:14', 1, 1);
INSERT INTO `uploads` VALUES (25, 'google-cloud-icon-400w', 'png', '.png', '10024', '20240404_112240_google-cloud-icon-400w.png', 'uploads/20240404_112240_google-cloud-icon-400w.png', NULL, 0, '2024-04-04 11:22:40', '2024-04-04 11:22:40', 1, 1);
INSERT INTO `uploads` VALUES (26, 'google-cloud-icon-400w', 'png', '.png', '10024', '20240404_112503_google-cloud-icon-400w.png', 'uploads/20240404_112503_google-cloud-icon-400w.png', NULL, 0, '2024-04-04 11:25:03', '2024-04-04 11:25:03', 1, 1);
INSERT INTO `uploads` VALUES (27, 'google-cloud-icon-400w', 'png', '.png', '10024', '20240404_112605_google-cloud-icon-400w.png', 'uploads/20240404_112605_google-cloud-icon-400w.png', NULL, 0, '2024-04-04 11:26:05', '2024-04-04 11:26:05', 1, 1);
INSERT INTO `uploads` VALUES (28, 'citiasia background', 'jpg', '.jpg', '54426', '20240404_112903_citiasia_background.jpg', 'uploads/20240404_112903_citiasia_background.jpg', NULL, 0, '2024-04-04 11:29:03', '2024-04-04 11:29:03', 1, 1);
INSERT INTO `uploads` VALUES (29, 'citiasia background', 'jpg', '.jpg', '54426', '20240404_115215_citiasia_background.jpg', 'uploads/20240404_115215_citiasia_background.jpg', NULL, 0, '2024-04-04 11:52:15', '2024-04-04 11:52:15', 1, 1);
INSERT INTO `uploads` VALUES (30, 'citiasia background', 'jpg', '.jpg', '54426', '20240408_113457_citiasia_background.jpg', 'uploads/20240408_113457_citiasia_background.jpg', NULL, 0, '2024-04-08 11:34:57', '2024-04-08 11:34:57', 1, 1);
INSERT INTO `uploads` VALUES (31, 'citiasia background', 'jpg', '.jpg', '54426', '20240408_113648_citiasia_background.jpg', 'uploads/20240408_113648_citiasia_background.jpg', NULL, 0, '2024-04-08 11:36:48', '2024-04-08 11:36:48', 1, 1);
INSERT INTO `uploads` VALUES (32, 'citiasia background', 'jpg', '.jpg', '54426', '20240408_115427-citiasia_background.jpg', 'uploads/20240408_115427-citiasia_background.jpg', NULL, 0, '2024-04-08 11:54:27', '2024-04-08 11:54:27', 1, 1);
INSERT INTO `uploads` VALUES (33, 'citiasia background', 'jpg', '.jpg', '54426', '20240408_140001-citiasia_background.jpg', 'uploads/20240408_140001-citiasia_background.jpg', NULL, 0, '2024-04-08 14:00:01', '2024-04-08 14:00:01', 1, 1);
INSERT INTO `uploads` VALUES (34, 'citiasia background', 'jpg', '.jpg', '54426', '20240409_103049-citiasia_background.jpg', 'uploads/20240409_103049-citiasia_background.jpg', NULL, 0, '2024-04-09 10:30:49', '2024-04-09 10:30:49', 1, 1);
INSERT INTO `uploads` VALUES (35, 'citiasia background', 'jpg', '.jpg', '54426', '20240409_103713-citiasia_background.jpg', 'uploads/20240409_103713-citiasia_background.jpg', NULL, 0, '2024-04-09 10:37:13', '2024-04-09 10:37:13', 1, 1);
INSERT INTO `uploads` VALUES (36, 'google-cloud-icon-400w', 'png', '.png', '10024', '20240409_103749-google-cloud-icon-400w.png', 'uploads/20240409_103749-google-cloud-icon-400w.png', NULL, 0, '2024-04-09 10:37:49', '2024-04-09 10:37:49', 1, 1);
INSERT INTO `uploads` VALUES (37, 'google-cloud-icon-400w', 'png', '.png', '10024', '20240409_120037-google-cloud-icon-400w.png', 'uploads/20240409_120037-google-cloud-icon-400w.png', NULL, 0, '2024-04-09 12:00:37', '2024-04-09 12:00:37', 1, 1);
INSERT INTO `uploads` VALUES (38, 'google-cloud-icon-400w', 'png', '.png', '10024', '20240409_141857-google-cloud-icon-400w.png', 'uploads/20240409_141857-google-cloud-icon-400w.png', NULL, 0, '2024-04-09 14:18:57', '2024-04-09 14:18:57', 1, 1);
INSERT INTO `uploads` VALUES (39, 'google-cloud-icon-400w', 'png', '.png', '10024', '20240409_151538-google-cloud-icon-400w.png', 'uploads/20240409_151538-google-cloud-icon-400w.png', NULL, 0, '2024-04-09 15:15:38', '2024-04-09 15:15:38', 1, 1);
INSERT INTO `uploads` VALUES (40, 'google-cloud-icon-400w', 'png', '.png', '10024', '20240409_153420-google-cloud-icon-400w.png', 'uploads/20240409_153420-google-cloud-icon-400w.png', NULL, 0, '2024-04-09 15:34:20', '2024-04-09 15:34:20', 1, 1);
INSERT INTO `uploads` VALUES (41, 'google-cloud-icon-400w', 'png', '.png', '10024', '20240409_155723-google-cloud-icon-400w.png', 'uploads/20240409_155723-google-cloud-icon-400w.png', NULL, 0, '2024-04-09 15:57:23', '2024-04-09 15:57:23', 1, 1);
INSERT INTO `uploads` VALUES (42, 'google-cloud-icon-400w', 'png', '.png', '10024', '20240409_160609-google-cloud-icon-400w.png', 'uploads/20240409_160609-google-cloud-icon-400w.png', NULL, 0, '2024-04-09 16:06:09', '2024-04-09 16:06:09', 1, 1);
INSERT INTO `uploads` VALUES (43, 'google-cloud-icon-400w', 'png', '.png', '10024', '20240409_160647-google-cloud-icon-400w.png', 'uploads/20240409_160647-google-cloud-icon-400w.png', NULL, 0, '2024-04-09 16:06:47', '2024-04-09 16:06:47', 1, 1);
INSERT INTO `uploads` VALUES (44, 'google-cloud-icon-400w', 'png', '.png', '10024', '20240409_163856-google-cloud-icon-400w.png', 'uploads/20240409_163856-google-cloud-icon-400w.png', NULL, 0, '2024-04-09 16:38:56', '2024-04-09 16:38:56', 2, 2);
INSERT INTO `uploads` VALUES (45, 'google-cloud-icon-400w', 'png', '.png', '10024', '20240414_174743-google-cloud-icon-400w.png', 'uploads/temp/20240414_174743-google-cloud-icon-400w.png', NULL, 0, '2024-04-14 17:47:43', '2024-04-14 17:47:43', 1, 1);
INSERT INTO `uploads` VALUES (46, 'citiasia background', 'jpg', '.jpg', '54426', '20240414_180844-citiasia_background.jpg', '20240414_180844-citiasia_background.jpg', NULL, 0, '2024-04-14 18:08:44', '2024-04-14 18:08:44', 1, 1);
INSERT INTO `uploads` VALUES (47, 'citiasia background', 'jpg', '.jpg', '54426', '20240414_181014-citiasia_background.jpg', '20240414_181014-citiasia_background.jpg', NULL, 0, '2024-04-14 18:10:14', '2024-04-14 18:10:14', 1, 1);
INSERT INTO `uploads` VALUES (48, 'citiasia background', 'jpg', '.jpg', '54426', '20240414_181128-citiasia_background.jpg', 'uploads/xxx/20240414_181128-citiasia_background.jpg', NULL, 0, '2024-04-14 18:11:28', '2024-04-14 18:11:28', 1, 1);
INSERT INTO `uploads` VALUES (49, 'citiasia background', 'jpg', '.jpg', '54426', '20240414_181238-citiasia_background.jpg', 'uploads/xxx/20240414_181238-citiasia_background.jpg', NULL, 0, '2024-04-14 18:12:38', '2024-04-14 18:12:38', 1, 1);
INSERT INTO `uploads` VALUES (50, 'citiasia background', 'jpg', '.jpg', '54426', '20240414_181416-citiasia_background.jpg', 'uploads/xxx/20240414_181416-citiasia_background.jpg', NULL, 0, '2024-04-14 18:14:16', '2024-04-14 18:14:16', 1, 1);
INSERT INTO `uploads` VALUES (51, 'citiasia background', 'jpg', '.jpg', '54426', '20240414_181609-citiasia_background.jpg', 'uploads/xxx/20240414_181609-citiasia_background.jpg', NULL, 0, '2024-04-14 18:16:09', '2024-04-14 18:16:09', 1, 1);
INSERT INTO `uploads` VALUES (52, 'citiasia background', 'jpg', '.jpg', '54426', '20240414_183201-citiasia_background.jpg', 'uploads/xxx/20240414_183201-citiasia_background.jpg', NULL, 0, '2024-04-14 18:32:01', '2024-04-14 18:32:01', 1, 1);
INSERT INTO `uploads` VALUES (53, 'wallpaperflare.com_wallpaper', 'jpg', '.jpg', '160368', '20240414_190624-wallpaperflare.com_wallpaper.jpg', 'uploads/xxx/20240414_190624-wallpaperflare.com_wallpaper.jpg', NULL, 0, '2024-04-14 19:06:24', '2024-04-14 19:06:24', 1, 1);

-- ----------------------------
-- Table structure for user_levels
-- ----------------------------
DROP TABLE IF EXISTS `user_levels`;
CREATE TABLE `user_levels`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `notes` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_levels
-- ----------------------------
INSERT INTO `user_levels` VALUES (1, 'Super Admin', NULL, 0, '2024-03-24 15:01:31', '2024-03-24 15:01:31', NULL, NULL);
INSERT INTO `user_levels` VALUES (2, 'User', NULL, 0, '2024-03-24 15:01:31', '2024-03-24 15:01:31', NULL, NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `level_id` int NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `notes` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_username_unique`(`username` ASC) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 1, 'admin', '$2y$12$JD.z1jzpQYS2PXtgqnVsouNG..teuPeTzgTx5DR4cXC57T6Vy77yu', 'Admin', 'admin@email.com', 'uploads/xxx/avtar_1.png', '2024-04-14 18:42:15', '2024-03-24 15:01:30', '0KnBuAvJmp', NULL, 0, '2024-03-24 15:01:31', '2024-04-14 18:42:15', NULL, NULL);
INSERT INTO `users` VALUES (2, 2, 'user', '$2y$12$WTVmRtLIzR9elCQ0bjfyXujeS0zaXJNsZDqpk5E284w8T0qeQHb.a', 'User', 'user@email.com', 'uploads/xxx/avtar_1.png', '2024-04-09 16:39:51', NULL, NULL, 'catatan', 0, '2024-03-24 15:03:37', '2024-04-09 16:39:51', 1, NULL);

SET FOREIGN_KEY_CHECKS = 1;
