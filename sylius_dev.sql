/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : sylius_dev

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 18/12/2020 17:27:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sylius_address
-- ----------------------------
DROP TABLE IF EXISTS `sylius_address`;
CREATE TABLE `sylius_address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `country_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `province_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B97FF0589395C3F3` (`customer_id`),
  CONSTRAINT `FK_B97FF0589395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_address
-- ----------------------------
BEGIN;
INSERT INTO `sylius_address` VALUES (1, NULL, 'Francisco', 'Leannon', NULL, '217 Kub Rapid', NULL, 'South Leda', '03959', '2020-12-18 17:25:21', '2020-12-18 17:25:21', 'PT', NULL, NULL);
INSERT INTO `sylius_address` VALUES (2, NULL, 'Francisco', 'Leannon', NULL, '217 Kub Rapid', NULL, 'South Leda', '03959', '2020-12-18 17:25:21', '2020-12-18 17:25:21', 'PT', NULL, NULL);
INSERT INTO `sylius_address` VALUES (3, 19, 'Francisco', 'Leannon', NULL, '217 Kub Rapid', NULL, 'South Leda', '03959', '2020-12-18 17:25:21', '2020-12-18 17:25:21', 'PT', NULL, NULL);
INSERT INTO `sylius_address` VALUES (4, NULL, 'Chance', 'Kuhn', NULL, '67914 Noel Circles', NULL, 'East Norwoodshire', '87837-0023', '2020-12-18 17:25:21', '2020-12-18 17:25:22', 'ES', NULL, NULL);
INSERT INTO `sylius_address` VALUES (5, NULL, 'Chance', 'Kuhn', NULL, '67914 Noel Circles', NULL, 'East Norwoodshire', '87837-0023', '2020-12-18 17:25:21', '2020-12-18 17:25:22', 'ES', NULL, NULL);
INSERT INTO `sylius_address` VALUES (6, 19, 'Chance', 'Kuhn', NULL, '67914 Noel Circles', NULL, 'East Norwoodshire', '87837-0023', '2020-12-18 17:25:21', '2020-12-18 17:25:22', 'ES', NULL, NULL);
INSERT INTO `sylius_address` VALUES (7, NULL, 'Bobby', 'Doyle', NULL, '7261 Mariam Extensions', NULL, 'Schneiderville', '78211', '2020-12-18 17:25:22', '2020-12-18 17:25:22', 'CN', NULL, NULL);
INSERT INTO `sylius_address` VALUES (8, NULL, 'Bobby', 'Doyle', NULL, '7261 Mariam Extensions', NULL, 'Schneiderville', '78211', '2020-12-18 17:25:22', '2020-12-18 17:25:22', 'CN', NULL, NULL);
INSERT INTO `sylius_address` VALUES (9, 21, 'Bobby', 'Doyle', NULL, '7261 Mariam Extensions', NULL, 'Schneiderville', '78211', '2020-12-18 17:25:22', '2020-12-18 17:25:22', 'CN', NULL, NULL);
INSERT INTO `sylius_address` VALUES (10, NULL, 'Adrianna', 'Witting', NULL, '261 Kuhn Cliff', NULL, 'Port Eveport', '47615', '2020-12-18 17:25:22', '2020-12-18 17:25:22', 'AU', NULL, NULL);
INSERT INTO `sylius_address` VALUES (11, NULL, 'Adrianna', 'Witting', NULL, '261 Kuhn Cliff', NULL, 'Port Eveport', '47615', '2020-12-18 17:25:22', '2020-12-18 17:25:22', 'AU', NULL, NULL);
INSERT INTO `sylius_address` VALUES (12, 18, 'Adrianna', 'Witting', NULL, '261 Kuhn Cliff', NULL, 'Port Eveport', '47615', '2020-12-18 17:25:22', '2020-12-18 17:25:22', 'AU', NULL, NULL);
INSERT INTO `sylius_address` VALUES (13, NULL, 'Danika', 'Brakus', NULL, '53680 Hane Groves', NULL, 'New Liam', '96345', '2020-12-18 17:25:22', '2020-12-18 17:25:22', 'CA', NULL, NULL);
INSERT INTO `sylius_address` VALUES (14, NULL, 'Danika', 'Brakus', NULL, '53680 Hane Groves', NULL, 'New Liam', '96345', '2020-12-18 17:25:22', '2020-12-18 17:25:22', 'CA', NULL, NULL);
INSERT INTO `sylius_address` VALUES (15, 9, 'Danika', 'Brakus', NULL, '53680 Hane Groves', NULL, 'New Liam', '96345', '2020-12-18 17:25:22', '2020-12-18 17:25:22', 'CA', NULL, NULL);
INSERT INTO `sylius_address` VALUES (16, NULL, 'Cornelius', 'Johnston', NULL, '326 Chaya Motorway Suite 891', NULL, 'Lake Rosalynbury', '81952', '2020-12-18 17:25:22', '2020-12-18 17:25:22', 'GB', NULL, NULL);
INSERT INTO `sylius_address` VALUES (17, NULL, 'Cornelius', 'Johnston', NULL, '326 Chaya Motorway Suite 891', NULL, 'Lake Rosalynbury', '81952', '2020-12-18 17:25:22', '2020-12-18 17:25:22', 'GB', NULL, NULL);
INSERT INTO `sylius_address` VALUES (18, 6, 'Cornelius', 'Johnston', NULL, '326 Chaya Motorway Suite 891', NULL, 'Lake Rosalynbury', '81952', '2020-12-18 17:25:22', '2020-12-18 17:25:22', 'GB', NULL, NULL);
INSERT INTO `sylius_address` VALUES (19, NULL, 'Nella', 'Pollich', NULL, '371 Alessandra Lights Suite 796', NULL, 'New Aubrey', '78713', '2020-12-18 17:25:22', '2020-12-18 17:25:22', 'GB', NULL, NULL);
INSERT INTO `sylius_address` VALUES (20, NULL, 'Nella', 'Pollich', NULL, '371 Alessandra Lights Suite 796', NULL, 'New Aubrey', '78713', '2020-12-18 17:25:22', '2020-12-18 17:25:22', 'GB', NULL, NULL);
INSERT INTO `sylius_address` VALUES (21, 11, 'Nella', 'Pollich', NULL, '371 Alessandra Lights Suite 796', NULL, 'New Aubrey', '78713', '2020-12-18 17:25:22', '2020-12-18 17:25:22', 'GB', NULL, NULL);
INSERT INTO `sylius_address` VALUES (22, NULL, 'Abigayle', 'Barton', NULL, '5700 Simone Meadow', NULL, 'East Felicia', '27716-6966', '2020-12-18 17:25:22', '2020-12-18 17:25:23', 'CA', NULL, NULL);
INSERT INTO `sylius_address` VALUES (23, NULL, 'Abigayle', 'Barton', NULL, '5700 Simone Meadow', NULL, 'East Felicia', '27716-6966', '2020-12-18 17:25:22', '2020-12-18 17:25:23', 'CA', NULL, NULL);
INSERT INTO `sylius_address` VALUES (24, 20, 'Abigayle', 'Barton', NULL, '5700 Simone Meadow', NULL, 'East Felicia', '27716-6966', '2020-12-18 17:25:22', '2020-12-18 17:25:23', 'CA', NULL, NULL);
INSERT INTO `sylius_address` VALUES (25, NULL, 'Willie', 'Reilly', NULL, '92959 Lourdes Gardens Suite 350', NULL, 'Scottyview', '28099-9706', '2020-12-18 17:25:23', '2020-12-18 17:25:23', 'CN', NULL, NULL);
INSERT INTO `sylius_address` VALUES (26, NULL, 'Willie', 'Reilly', NULL, '92959 Lourdes Gardens Suite 350', NULL, 'Scottyview', '28099-9706', '2020-12-18 17:25:23', '2020-12-18 17:25:23', 'CN', NULL, NULL);
INSERT INTO `sylius_address` VALUES (27, 18, 'Willie', 'Reilly', NULL, '92959 Lourdes Gardens Suite 350', NULL, 'Scottyview', '28099-9706', '2020-12-18 17:25:23', '2020-12-18 17:25:23', 'CN', NULL, NULL);
INSERT INTO `sylius_address` VALUES (28, NULL, 'Sigurd', 'Ferry', NULL, '68207 Schmidt Haven Apt. 798', NULL, 'Trevionton', '40864-9287', '2020-12-18 17:25:23', '2020-12-18 17:25:23', 'PL', NULL, NULL);
INSERT INTO `sylius_address` VALUES (29, NULL, 'Sigurd', 'Ferry', NULL, '68207 Schmidt Haven Apt. 798', NULL, 'Trevionton', '40864-9287', '2020-12-18 17:25:23', '2020-12-18 17:25:23', 'PL', NULL, NULL);
INSERT INTO `sylius_address` VALUES (30, 12, 'Sigurd', 'Ferry', NULL, '68207 Schmidt Haven Apt. 798', NULL, 'Trevionton', '40864-9287', '2020-12-18 17:25:23', '2020-12-18 17:25:23', 'PL', NULL, NULL);
INSERT INTO `sylius_address` VALUES (31, NULL, 'Monica', 'Goyette', NULL, '7983 Chelsey Skyway', NULL, 'Port Thelma', '54354-2276', '2020-12-18 17:25:23', '2020-12-18 17:25:23', 'FR', NULL, NULL);
INSERT INTO `sylius_address` VALUES (32, NULL, 'Monica', 'Goyette', NULL, '7983 Chelsey Skyway', NULL, 'Port Thelma', '54354-2276', '2020-12-18 17:25:23', '2020-12-18 17:25:23', 'FR', NULL, NULL);
INSERT INTO `sylius_address` VALUES (33, 1, 'Monica', 'Goyette', NULL, '7983 Chelsey Skyway', NULL, 'Port Thelma', '54354-2276', '2020-12-18 17:25:23', '2020-12-18 17:25:23', 'FR', NULL, NULL);
INSERT INTO `sylius_address` VALUES (34, NULL, 'Lionel', 'Kautzer', NULL, '187 Llewellyn Cape', NULL, 'North Esta', '48390', '2020-12-18 17:25:23', '2020-12-18 17:25:23', 'CA', NULL, NULL);
INSERT INTO `sylius_address` VALUES (35, NULL, 'Lionel', 'Kautzer', NULL, '187 Llewellyn Cape', NULL, 'North Esta', '48390', '2020-12-18 17:25:23', '2020-12-18 17:25:23', 'CA', NULL, NULL);
INSERT INTO `sylius_address` VALUES (36, 18, 'Lionel', 'Kautzer', NULL, '187 Llewellyn Cape', NULL, 'North Esta', '48390', '2020-12-18 17:25:23', '2020-12-18 17:25:23', 'CA', NULL, NULL);
INSERT INTO `sylius_address` VALUES (37, NULL, 'Vena', 'Torphy', NULL, '96649 Carter Land', NULL, 'Port Gilbertoton', '32002-2600', '2020-12-18 17:25:24', '2020-12-18 17:25:24', 'CA', NULL, NULL);
INSERT INTO `sylius_address` VALUES (38, NULL, 'Vena', 'Torphy', NULL, '96649 Carter Land', NULL, 'Port Gilbertoton', '32002-2600', '2020-12-18 17:25:24', '2020-12-18 17:25:24', 'CA', NULL, NULL);
INSERT INTO `sylius_address` VALUES (39, 7, 'Vena', 'Torphy', NULL, '96649 Carter Land', NULL, 'Port Gilbertoton', '32002-2600', '2020-12-18 17:25:24', '2020-12-18 17:25:24', 'CA', NULL, NULL);
INSERT INTO `sylius_address` VALUES (40, NULL, 'Janice', 'O\'Hara', NULL, '934 Stroman Row', NULL, 'North Shanonstad', '15827', '2020-12-18 17:25:24', '2020-12-18 17:25:24', 'US', NULL, NULL);
INSERT INTO `sylius_address` VALUES (41, NULL, 'Janice', 'O\'Hara', NULL, '934 Stroman Row', NULL, 'North Shanonstad', '15827', '2020-12-18 17:25:24', '2020-12-18 17:25:24', 'US', NULL, NULL);
INSERT INTO `sylius_address` VALUES (42, 21, 'Janice', 'O\'Hara', NULL, '934 Stroman Row', NULL, 'North Shanonstad', '15827', '2020-12-18 17:25:24', '2020-12-18 17:25:24', 'US', NULL, NULL);
INSERT INTO `sylius_address` VALUES (43, NULL, 'Aurelie', 'Rowe', NULL, '75582 Marty Lane', NULL, 'Feilbury', '36271', '2020-12-18 17:25:24', '2020-12-18 17:25:24', 'CN', NULL, NULL);
INSERT INTO `sylius_address` VALUES (44, NULL, 'Aurelie', 'Rowe', NULL, '75582 Marty Lane', NULL, 'Feilbury', '36271', '2020-12-18 17:25:24', '2020-12-18 17:25:24', 'CN', NULL, NULL);
INSERT INTO `sylius_address` VALUES (45, 7, 'Aurelie', 'Rowe', NULL, '75582 Marty Lane', NULL, 'Feilbury', '36271', '2020-12-18 17:25:24', '2020-12-18 17:25:24', 'CN', NULL, NULL);
INSERT INTO `sylius_address` VALUES (46, NULL, 'Ryley', 'Goldner', NULL, '1632 Rogahn Expressway', NULL, 'Kossmouth', '52609', '2020-12-18 17:25:24', '2020-12-18 17:25:25', 'AU', NULL, NULL);
INSERT INTO `sylius_address` VALUES (47, NULL, 'Ryley', 'Goldner', NULL, '1632 Rogahn Expressway', NULL, 'Kossmouth', '52609', '2020-12-18 17:25:24', '2020-12-18 17:25:25', 'AU', NULL, NULL);
INSERT INTO `sylius_address` VALUES (48, 16, 'Ryley', 'Goldner', NULL, '1632 Rogahn Expressway', NULL, 'Kossmouth', '52609', '2020-12-18 17:25:24', '2020-12-18 17:25:25', 'AU', NULL, NULL);
INSERT INTO `sylius_address` VALUES (49, NULL, 'Sheridan', 'Blick', NULL, '82125 Cindy Wall', NULL, 'Nicholetown', '13146', '2020-12-18 17:25:25', '2020-12-18 17:25:25', 'MX', NULL, NULL);
INSERT INTO `sylius_address` VALUES (50, NULL, 'Sheridan', 'Blick', NULL, '82125 Cindy Wall', NULL, 'Nicholetown', '13146', '2020-12-18 17:25:25', '2020-12-18 17:25:25', 'MX', NULL, NULL);
INSERT INTO `sylius_address` VALUES (51, 16, 'Sheridan', 'Blick', NULL, '82125 Cindy Wall', NULL, 'Nicholetown', '13146', '2020-12-18 17:25:25', '2020-12-18 17:25:25', 'MX', NULL, NULL);
INSERT INTO `sylius_address` VALUES (52, NULL, 'Breanne', 'Donnelly', NULL, '8386 Hagenes Estate', NULL, 'South Daisybury', '78457-7131', '2020-12-18 17:25:25', '2020-12-18 17:25:25', 'NZ', NULL, NULL);
INSERT INTO `sylius_address` VALUES (53, NULL, 'Breanne', 'Donnelly', NULL, '8386 Hagenes Estate', NULL, 'South Daisybury', '78457-7131', '2020-12-18 17:25:25', '2020-12-18 17:25:25', 'NZ', NULL, NULL);
INSERT INTO `sylius_address` VALUES (54, 6, 'Breanne', 'Donnelly', NULL, '8386 Hagenes Estate', NULL, 'South Daisybury', '78457-7131', '2020-12-18 17:25:25', '2020-12-18 17:25:25', 'NZ', NULL, NULL);
INSERT INTO `sylius_address` VALUES (55, NULL, 'Dominic', 'Swaniawski', NULL, '381 Paucek Lane', NULL, 'Lefflerport', '32158', '2020-12-18 17:25:25', '2020-12-18 17:25:25', 'FR', NULL, NULL);
INSERT INTO `sylius_address` VALUES (56, NULL, 'Dominic', 'Swaniawski', NULL, '381 Paucek Lane', NULL, 'Lefflerport', '32158', '2020-12-18 17:25:25', '2020-12-18 17:25:25', 'FR', NULL, NULL);
INSERT INTO `sylius_address` VALUES (57, 7, 'Dominic', 'Swaniawski', NULL, '381 Paucek Lane', NULL, 'Lefflerport', '32158', '2020-12-18 17:25:25', '2020-12-18 17:25:25', 'FR', NULL, NULL);
INSERT INTO `sylius_address` VALUES (58, NULL, 'Luella', 'Doyle', NULL, '819 Josue Island Suite 464', NULL, 'East Jaleel', '74307-7995', '2020-12-18 17:25:25', '2020-12-18 17:25:25', 'MX', NULL, NULL);
INSERT INTO `sylius_address` VALUES (59, NULL, 'Luella', 'Doyle', NULL, '819 Josue Island Suite 464', NULL, 'East Jaleel', '74307-7995', '2020-12-18 17:25:25', '2020-12-18 17:25:25', 'MX', NULL, NULL);
INSERT INTO `sylius_address` VALUES (60, 5, 'Luella', 'Doyle', NULL, '819 Josue Island Suite 464', NULL, 'East Jaleel', '74307-7995', '2020-12-18 17:25:25', '2020-12-18 17:25:25', 'MX', NULL, NULL);
INSERT INTO `sylius_address` VALUES (61, 16, 'Damon', 'Goyette', '873.631.4115 x1102', '9493 Roxane Stravenue Apt. 459', NULL, 'Port Ronaldo', '51299', '2020-12-18 17:25:25', '2020-12-18 17:25:25', 'US', NULL, NULL);
INSERT INTO `sylius_address` VALUES (62, 6, 'Mitchell', 'Batz', '350.541.6831 x4507', '8572 Suzanne Radial Suite 298', 'Friesen LLC', 'Lake Bryana', '48711-8014', '2020-12-18 17:25:25', '2020-12-18 17:25:25', 'US', NULL, NULL);
INSERT INTO `sylius_address` VALUES (63, 19, 'Edison', 'Sporer', '884-222-3478', '933 Reymundo Vista Apt. 938', 'Raynor, Veum and Koss', 'North Janis', '78643', '2020-12-18 17:25:25', '2020-12-18 17:25:25', 'US', NULL, NULL);
INSERT INTO `sylius_address` VALUES (64, 21, 'Cathryn', 'Raynor', '443.680.3135 x86675', '17310 Denesik Glens', 'Hills, Quitzon and Haley', 'New Edison', '33626', '2020-12-18 17:25:25', '2020-12-18 17:25:25', 'US', NULL, NULL);
INSERT INTO `sylius_address` VALUES (65, 17, 'Jennifer', 'Gibson', NULL, '134 Nestor Park', 'Armstrong, Mraz and Koelpin', 'Eduardoside', '49302', '2020-12-18 17:25:25', '2020-12-18 17:25:25', 'US', NULL, NULL);
INSERT INTO `sylius_address` VALUES (66, 20, 'Sadye', 'Champlin', '+1-490-933-5019', '768 Hermiston Shoals Suite 822', NULL, 'Port Tyler', '88905-2312', '2020-12-18 17:25:25', '2020-12-18 17:25:25', 'US', NULL, NULL);
INSERT INTO `sylius_address` VALUES (67, 5, 'Dejon', 'Turcotte', '901.414.7243 x3950', '9955 Juvenal Street', NULL, 'New Blakebury', '31588', '2020-12-18 17:25:25', '2020-12-18 17:25:25', 'US', NULL, NULL);
INSERT INTO `sylius_address` VALUES (68, 1, 'Enrique', 'Jones', NULL, '45183 Bill Station', 'Wiza-Witting', 'Rempelmouth', '79404-3937', '2020-12-18 17:25:26', '2020-12-18 17:25:26', 'US', NULL, NULL);
INSERT INTO `sylius_address` VALUES (69, 21, 'Mary', 'Orn', '(329) 880-4822 x0650', '9039 Braun Expressway', 'Schaefer-Rohan', 'Runolfssonton', '61429-2663', '2020-12-18 17:25:26', '2020-12-18 17:25:26', 'US', NULL, NULL);
INSERT INTO `sylius_address` VALUES (70, 1, 'Albert', 'Hagenes', '952.362.9338', '119 Rolfson Fort', NULL, 'East Virgiemouth', '76037', '2020-12-18 17:25:26', '2020-12-18 17:25:26', 'US', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sylius_address_log_entries
-- ----------------------------
DROP TABLE IF EXISTS `sylius_address_log_entries`;
CREATE TABLE `sylius_address_log_entries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logged_at` datetime NOT NULL,
  `object_id` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `object_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` int NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_address_log_entries
-- ----------------------------
BEGIN;
INSERT INTO `sylius_address_log_entries` VALUES (1, 'create', '2020-12-18 17:25:21', '1', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:9:\"Francisco\";s:8:\"lastName\";s:7:\"Leannon\";s:11:\"phoneNumber\";N;s:6:\"street\";s:13:\"217 Kub Rapid\";s:7:\"company\";N;s:4:\"city\";s:10:\"South Leda\";s:8:\"postcode\";s:5:\"03959\";s:11:\"countryCode\";s:2:\"PT\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (2, 'create', '2020-12-18 17:25:21', '2', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:9:\"Francisco\";s:8:\"lastName\";s:7:\"Leannon\";s:11:\"phoneNumber\";N;s:6:\"street\";s:13:\"217 Kub Rapid\";s:7:\"company\";N;s:4:\"city\";s:10:\"South Leda\";s:8:\"postcode\";s:5:\"03959\";s:11:\"countryCode\";s:2:\"PT\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (3, 'create', '2020-12-18 17:25:21', '3', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:9:\"Francisco\";s:8:\"lastName\";s:7:\"Leannon\";s:11:\"phoneNumber\";N;s:6:\"street\";s:13:\"217 Kub Rapid\";s:7:\"company\";N;s:4:\"city\";s:10:\"South Leda\";s:8:\"postcode\";s:5:\"03959\";s:11:\"countryCode\";s:2:\"PT\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (4, 'create', '2020-12-18 17:25:23', '4', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Chance\";s:8:\"lastName\";s:4:\"Kuhn\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"67914 Noel Circles\";s:7:\"company\";N;s:4:\"city\";s:17:\"East Norwoodshire\";s:8:\"postcode\";s:10:\"87837-0023\";s:11:\"countryCode\";s:2:\"ES\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (5, 'create', '2020-12-18 17:25:23', '5', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Chance\";s:8:\"lastName\";s:4:\"Kuhn\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"67914 Noel Circles\";s:7:\"company\";N;s:4:\"city\";s:17:\"East Norwoodshire\";s:8:\"postcode\";s:10:\"87837-0023\";s:11:\"countryCode\";s:2:\"ES\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (6, 'create', '2020-12-18 17:25:23', '6', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Chance\";s:8:\"lastName\";s:4:\"Kuhn\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"67914 Noel Circles\";s:7:\"company\";N;s:4:\"city\";s:17:\"East Norwoodshire\";s:8:\"postcode\";s:10:\"87837-0023\";s:11:\"countryCode\";s:2:\"ES\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (7, 'create', '2020-12-18 17:25:23', '7', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Bobby\";s:8:\"lastName\";s:5:\"Doyle\";s:11:\"phoneNumber\";N;s:6:\"street\";s:22:\"7261 Mariam Extensions\";s:7:\"company\";N;s:4:\"city\";s:14:\"Schneiderville\";s:8:\"postcode\";s:5:\"78211\";s:11:\"countryCode\";s:2:\"CN\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (8, 'create', '2020-12-18 17:25:23', '8', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Bobby\";s:8:\"lastName\";s:5:\"Doyle\";s:11:\"phoneNumber\";N;s:6:\"street\";s:22:\"7261 Mariam Extensions\";s:7:\"company\";N;s:4:\"city\";s:14:\"Schneiderville\";s:8:\"postcode\";s:5:\"78211\";s:11:\"countryCode\";s:2:\"CN\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (9, 'create', '2020-12-18 17:25:23', '9', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Bobby\";s:8:\"lastName\";s:5:\"Doyle\";s:11:\"phoneNumber\";N;s:6:\"street\";s:22:\"7261 Mariam Extensions\";s:7:\"company\";N;s:4:\"city\";s:14:\"Schneiderville\";s:8:\"postcode\";s:5:\"78211\";s:11:\"countryCode\";s:2:\"CN\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (10, 'create', '2020-12-18 17:25:23', '10', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Adrianna\";s:8:\"lastName\";s:7:\"Witting\";s:11:\"phoneNumber\";N;s:6:\"street\";s:14:\"261 Kuhn Cliff\";s:7:\"company\";N;s:4:\"city\";s:12:\"Port Eveport\";s:8:\"postcode\";s:5:\"47615\";s:11:\"countryCode\";s:2:\"AU\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (11, 'create', '2020-12-18 17:25:23', '11', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Adrianna\";s:8:\"lastName\";s:7:\"Witting\";s:11:\"phoneNumber\";N;s:6:\"street\";s:14:\"261 Kuhn Cliff\";s:7:\"company\";N;s:4:\"city\";s:12:\"Port Eveport\";s:8:\"postcode\";s:5:\"47615\";s:11:\"countryCode\";s:2:\"AU\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (12, 'create', '2020-12-18 17:25:23', '12', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Adrianna\";s:8:\"lastName\";s:7:\"Witting\";s:11:\"phoneNumber\";N;s:6:\"street\";s:14:\"261 Kuhn Cliff\";s:7:\"company\";N;s:4:\"city\";s:12:\"Port Eveport\";s:8:\"postcode\";s:5:\"47615\";s:11:\"countryCode\";s:2:\"AU\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (13, 'create', '2020-12-18 17:25:23', '13', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Danika\";s:8:\"lastName\";s:6:\"Brakus\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"53680 Hane Groves\";s:7:\"company\";N;s:4:\"city\";s:8:\"New Liam\";s:8:\"postcode\";s:5:\"96345\";s:11:\"countryCode\";s:2:\"CA\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (14, 'create', '2020-12-18 17:25:23', '14', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Danika\";s:8:\"lastName\";s:6:\"Brakus\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"53680 Hane Groves\";s:7:\"company\";N;s:4:\"city\";s:8:\"New Liam\";s:8:\"postcode\";s:5:\"96345\";s:11:\"countryCode\";s:2:\"CA\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (15, 'create', '2020-12-18 17:25:23', '15', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Danika\";s:8:\"lastName\";s:6:\"Brakus\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"53680 Hane Groves\";s:7:\"company\";N;s:4:\"city\";s:8:\"New Liam\";s:8:\"postcode\";s:5:\"96345\";s:11:\"countryCode\";s:2:\"CA\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (16, 'create', '2020-12-18 17:25:23', '16', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:9:\"Cornelius\";s:8:\"lastName\";s:8:\"Johnston\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"326 Chaya Motorway Suite 891\";s:7:\"company\";N;s:4:\"city\";s:16:\"Lake Rosalynbury\";s:8:\"postcode\";s:5:\"81952\";s:11:\"countryCode\";s:2:\"GB\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (17, 'create', '2020-12-18 17:25:23', '17', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:9:\"Cornelius\";s:8:\"lastName\";s:8:\"Johnston\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"326 Chaya Motorway Suite 891\";s:7:\"company\";N;s:4:\"city\";s:16:\"Lake Rosalynbury\";s:8:\"postcode\";s:5:\"81952\";s:11:\"countryCode\";s:2:\"GB\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (18, 'create', '2020-12-18 17:25:23', '18', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:9:\"Cornelius\";s:8:\"lastName\";s:8:\"Johnston\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"326 Chaya Motorway Suite 891\";s:7:\"company\";N;s:4:\"city\";s:16:\"Lake Rosalynbury\";s:8:\"postcode\";s:5:\"81952\";s:11:\"countryCode\";s:2:\"GB\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (19, 'create', '2020-12-18 17:25:23', '19', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Nella\";s:8:\"lastName\";s:7:\"Pollich\";s:11:\"phoneNumber\";N;s:6:\"street\";s:31:\"371 Alessandra Lights Suite 796\";s:7:\"company\";N;s:4:\"city\";s:10:\"New Aubrey\";s:8:\"postcode\";s:5:\"78713\";s:11:\"countryCode\";s:2:\"GB\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (20, 'create', '2020-12-18 17:25:23', '20', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Nella\";s:8:\"lastName\";s:7:\"Pollich\";s:11:\"phoneNumber\";N;s:6:\"street\";s:31:\"371 Alessandra Lights Suite 796\";s:7:\"company\";N;s:4:\"city\";s:10:\"New Aubrey\";s:8:\"postcode\";s:5:\"78713\";s:11:\"countryCode\";s:2:\"GB\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (21, 'create', '2020-12-18 17:25:23', '21', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Nella\";s:8:\"lastName\";s:7:\"Pollich\";s:11:\"phoneNumber\";N;s:6:\"street\";s:31:\"371 Alessandra Lights Suite 796\";s:7:\"company\";N;s:4:\"city\";s:10:\"New Aubrey\";s:8:\"postcode\";s:5:\"78713\";s:11:\"countryCode\";s:2:\"GB\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (22, 'create', '2020-12-18 17:25:23', '22', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Abigayle\";s:8:\"lastName\";s:6:\"Barton\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"5700 Simone Meadow\";s:7:\"company\";N;s:4:\"city\";s:12:\"East Felicia\";s:8:\"postcode\";s:10:\"27716-6966\";s:11:\"countryCode\";s:2:\"CA\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (23, 'create', '2020-12-18 17:25:23', '23', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Abigayle\";s:8:\"lastName\";s:6:\"Barton\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"5700 Simone Meadow\";s:7:\"company\";N;s:4:\"city\";s:12:\"East Felicia\";s:8:\"postcode\";s:10:\"27716-6966\";s:11:\"countryCode\";s:2:\"CA\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (24, 'create', '2020-12-18 17:25:23', '24', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Abigayle\";s:8:\"lastName\";s:6:\"Barton\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"5700 Simone Meadow\";s:7:\"company\";N;s:4:\"city\";s:12:\"East Felicia\";s:8:\"postcode\";s:10:\"27716-6966\";s:11:\"countryCode\";s:2:\"CA\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (25, 'create', '2020-12-18 17:25:23', '25', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Willie\";s:8:\"lastName\";s:6:\"Reilly\";s:11:\"phoneNumber\";N;s:6:\"street\";s:31:\"92959 Lourdes Gardens Suite 350\";s:7:\"company\";N;s:4:\"city\";s:10:\"Scottyview\";s:8:\"postcode\";s:10:\"28099-9706\";s:11:\"countryCode\";s:2:\"CN\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (26, 'create', '2020-12-18 17:25:23', '26', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Willie\";s:8:\"lastName\";s:6:\"Reilly\";s:11:\"phoneNumber\";N;s:6:\"street\";s:31:\"92959 Lourdes Gardens Suite 350\";s:7:\"company\";N;s:4:\"city\";s:10:\"Scottyview\";s:8:\"postcode\";s:10:\"28099-9706\";s:11:\"countryCode\";s:2:\"CN\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (27, 'create', '2020-12-18 17:25:23', '27', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Willie\";s:8:\"lastName\";s:6:\"Reilly\";s:11:\"phoneNumber\";N;s:6:\"street\";s:31:\"92959 Lourdes Gardens Suite 350\";s:7:\"company\";N;s:4:\"city\";s:10:\"Scottyview\";s:8:\"postcode\";s:10:\"28099-9706\";s:11:\"countryCode\";s:2:\"CN\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (28, 'create', '2020-12-18 17:25:23', '28', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Sigurd\";s:8:\"lastName\";s:5:\"Ferry\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"68207 Schmidt Haven Apt. 798\";s:7:\"company\";N;s:4:\"city\";s:10:\"Trevionton\";s:8:\"postcode\";s:10:\"40864-9287\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (29, 'create', '2020-12-18 17:25:23', '29', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Sigurd\";s:8:\"lastName\";s:5:\"Ferry\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"68207 Schmidt Haven Apt. 798\";s:7:\"company\";N;s:4:\"city\";s:10:\"Trevionton\";s:8:\"postcode\";s:10:\"40864-9287\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (30, 'create', '2020-12-18 17:25:23', '30', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Sigurd\";s:8:\"lastName\";s:5:\"Ferry\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"68207 Schmidt Haven Apt. 798\";s:7:\"company\";N;s:4:\"city\";s:10:\"Trevionton\";s:8:\"postcode\";s:10:\"40864-9287\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (31, 'create', '2020-12-18 17:25:23', '31', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Monica\";s:8:\"lastName\";s:7:\"Goyette\";s:11:\"phoneNumber\";N;s:6:\"street\";s:19:\"7983 Chelsey Skyway\";s:7:\"company\";N;s:4:\"city\";s:11:\"Port Thelma\";s:8:\"postcode\";s:10:\"54354-2276\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (32, 'create', '2020-12-18 17:25:23', '32', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Monica\";s:8:\"lastName\";s:7:\"Goyette\";s:11:\"phoneNumber\";N;s:6:\"street\";s:19:\"7983 Chelsey Skyway\";s:7:\"company\";N;s:4:\"city\";s:11:\"Port Thelma\";s:8:\"postcode\";s:10:\"54354-2276\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (33, 'create', '2020-12-18 17:25:23', '33', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Monica\";s:8:\"lastName\";s:7:\"Goyette\";s:11:\"phoneNumber\";N;s:6:\"street\";s:19:\"7983 Chelsey Skyway\";s:7:\"company\";N;s:4:\"city\";s:11:\"Port Thelma\";s:8:\"postcode\";s:10:\"54354-2276\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (34, 'create', '2020-12-18 17:25:23', '34', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Lionel\";s:8:\"lastName\";s:7:\"Kautzer\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"187 Llewellyn Cape\";s:7:\"company\";N;s:4:\"city\";s:10:\"North Esta\";s:8:\"postcode\";s:5:\"48390\";s:11:\"countryCode\";s:2:\"CA\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (35, 'create', '2020-12-18 17:25:23', '35', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Lionel\";s:8:\"lastName\";s:7:\"Kautzer\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"187 Llewellyn Cape\";s:7:\"company\";N;s:4:\"city\";s:10:\"North Esta\";s:8:\"postcode\";s:5:\"48390\";s:11:\"countryCode\";s:2:\"CA\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (36, 'create', '2020-12-18 17:25:23', '36', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Lionel\";s:8:\"lastName\";s:7:\"Kautzer\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"187 Llewellyn Cape\";s:7:\"company\";N;s:4:\"city\";s:10:\"North Esta\";s:8:\"postcode\";s:5:\"48390\";s:11:\"countryCode\";s:2:\"CA\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (37, 'create', '2020-12-18 17:25:24', '37', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Vena\";s:8:\"lastName\";s:6:\"Torphy\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"96649 Carter Land\";s:7:\"company\";N;s:4:\"city\";s:16:\"Port Gilbertoton\";s:8:\"postcode\";s:10:\"32002-2600\";s:11:\"countryCode\";s:2:\"CA\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (38, 'create', '2020-12-18 17:25:24', '38', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Vena\";s:8:\"lastName\";s:6:\"Torphy\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"96649 Carter Land\";s:7:\"company\";N;s:4:\"city\";s:16:\"Port Gilbertoton\";s:8:\"postcode\";s:10:\"32002-2600\";s:11:\"countryCode\";s:2:\"CA\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (39, 'create', '2020-12-18 17:25:24', '39', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Vena\";s:8:\"lastName\";s:6:\"Torphy\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"96649 Carter Land\";s:7:\"company\";N;s:4:\"city\";s:16:\"Port Gilbertoton\";s:8:\"postcode\";s:10:\"32002-2600\";s:11:\"countryCode\";s:2:\"CA\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (40, 'create', '2020-12-18 17:25:25', '40', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Janice\";s:8:\"lastName\";s:6:\"O\'Hara\";s:11:\"phoneNumber\";N;s:6:\"street\";s:15:\"934 Stroman Row\";s:7:\"company\";N;s:4:\"city\";s:16:\"North Shanonstad\";s:8:\"postcode\";s:5:\"15827\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (41, 'create', '2020-12-18 17:25:25', '41', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Janice\";s:8:\"lastName\";s:6:\"O\'Hara\";s:11:\"phoneNumber\";N;s:6:\"street\";s:15:\"934 Stroman Row\";s:7:\"company\";N;s:4:\"city\";s:16:\"North Shanonstad\";s:8:\"postcode\";s:5:\"15827\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (42, 'create', '2020-12-18 17:25:25', '42', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Janice\";s:8:\"lastName\";s:6:\"O\'Hara\";s:11:\"phoneNumber\";N;s:6:\"street\";s:15:\"934 Stroman Row\";s:7:\"company\";N;s:4:\"city\";s:16:\"North Shanonstad\";s:8:\"postcode\";s:5:\"15827\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (43, 'create', '2020-12-18 17:25:25', '43', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Aurelie\";s:8:\"lastName\";s:4:\"Rowe\";s:11:\"phoneNumber\";N;s:6:\"street\";s:16:\"75582 Marty Lane\";s:7:\"company\";N;s:4:\"city\";s:8:\"Feilbury\";s:8:\"postcode\";s:5:\"36271\";s:11:\"countryCode\";s:2:\"CN\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (44, 'create', '2020-12-18 17:25:25', '44', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Aurelie\";s:8:\"lastName\";s:4:\"Rowe\";s:11:\"phoneNumber\";N;s:6:\"street\";s:16:\"75582 Marty Lane\";s:7:\"company\";N;s:4:\"city\";s:8:\"Feilbury\";s:8:\"postcode\";s:5:\"36271\";s:11:\"countryCode\";s:2:\"CN\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (45, 'create', '2020-12-18 17:25:25', '45', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Aurelie\";s:8:\"lastName\";s:4:\"Rowe\";s:11:\"phoneNumber\";N;s:6:\"street\";s:16:\"75582 Marty Lane\";s:7:\"company\";N;s:4:\"city\";s:8:\"Feilbury\";s:8:\"postcode\";s:5:\"36271\";s:11:\"countryCode\";s:2:\"CN\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (46, 'create', '2020-12-18 17:25:25', '46', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Ryley\";s:8:\"lastName\";s:7:\"Goldner\";s:11:\"phoneNumber\";N;s:6:\"street\";s:22:\"1632 Rogahn Expressway\";s:7:\"company\";N;s:4:\"city\";s:9:\"Kossmouth\";s:8:\"postcode\";s:5:\"52609\";s:11:\"countryCode\";s:2:\"AU\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (47, 'create', '2020-12-18 17:25:25', '47', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Ryley\";s:8:\"lastName\";s:7:\"Goldner\";s:11:\"phoneNumber\";N;s:6:\"street\";s:22:\"1632 Rogahn Expressway\";s:7:\"company\";N;s:4:\"city\";s:9:\"Kossmouth\";s:8:\"postcode\";s:5:\"52609\";s:11:\"countryCode\";s:2:\"AU\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (48, 'create', '2020-12-18 17:25:25', '48', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Ryley\";s:8:\"lastName\";s:7:\"Goldner\";s:11:\"phoneNumber\";N;s:6:\"street\";s:22:\"1632 Rogahn Expressway\";s:7:\"company\";N;s:4:\"city\";s:9:\"Kossmouth\";s:8:\"postcode\";s:5:\"52609\";s:11:\"countryCode\";s:2:\"AU\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (49, 'create', '2020-12-18 17:25:25', '49', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Sheridan\";s:8:\"lastName\";s:5:\"Blick\";s:11:\"phoneNumber\";N;s:6:\"street\";s:16:\"82125 Cindy Wall\";s:7:\"company\";N;s:4:\"city\";s:11:\"Nicholetown\";s:8:\"postcode\";s:5:\"13146\";s:11:\"countryCode\";s:2:\"MX\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (50, 'create', '2020-12-18 17:25:25', '50', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Sheridan\";s:8:\"lastName\";s:5:\"Blick\";s:11:\"phoneNumber\";N;s:6:\"street\";s:16:\"82125 Cindy Wall\";s:7:\"company\";N;s:4:\"city\";s:11:\"Nicholetown\";s:8:\"postcode\";s:5:\"13146\";s:11:\"countryCode\";s:2:\"MX\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (51, 'create', '2020-12-18 17:25:25', '51', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Sheridan\";s:8:\"lastName\";s:5:\"Blick\";s:11:\"phoneNumber\";N;s:6:\"street\";s:16:\"82125 Cindy Wall\";s:7:\"company\";N;s:4:\"city\";s:11:\"Nicholetown\";s:8:\"postcode\";s:5:\"13146\";s:11:\"countryCode\";s:2:\"MX\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (52, 'create', '2020-12-18 17:25:25', '52', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Breanne\";s:8:\"lastName\";s:8:\"Donnelly\";s:11:\"phoneNumber\";N;s:6:\"street\";s:19:\"8386 Hagenes Estate\";s:7:\"company\";N;s:4:\"city\";s:15:\"South Daisybury\";s:8:\"postcode\";s:10:\"78457-7131\";s:11:\"countryCode\";s:2:\"NZ\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (53, 'create', '2020-12-18 17:25:25', '53', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Breanne\";s:8:\"lastName\";s:8:\"Donnelly\";s:11:\"phoneNumber\";N;s:6:\"street\";s:19:\"8386 Hagenes Estate\";s:7:\"company\";N;s:4:\"city\";s:15:\"South Daisybury\";s:8:\"postcode\";s:10:\"78457-7131\";s:11:\"countryCode\";s:2:\"NZ\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (54, 'create', '2020-12-18 17:25:25', '54', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Breanne\";s:8:\"lastName\";s:8:\"Donnelly\";s:11:\"phoneNumber\";N;s:6:\"street\";s:19:\"8386 Hagenes Estate\";s:7:\"company\";N;s:4:\"city\";s:15:\"South Daisybury\";s:8:\"postcode\";s:10:\"78457-7131\";s:11:\"countryCode\";s:2:\"NZ\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (55, 'create', '2020-12-18 17:25:25', '55', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Dominic\";s:8:\"lastName\";s:10:\"Swaniawski\";s:11:\"phoneNumber\";N;s:6:\"street\";s:15:\"381 Paucek Lane\";s:7:\"company\";N;s:4:\"city\";s:11:\"Lefflerport\";s:8:\"postcode\";s:5:\"32158\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (56, 'create', '2020-12-18 17:25:25', '56', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Dominic\";s:8:\"lastName\";s:10:\"Swaniawski\";s:11:\"phoneNumber\";N;s:6:\"street\";s:15:\"381 Paucek Lane\";s:7:\"company\";N;s:4:\"city\";s:11:\"Lefflerport\";s:8:\"postcode\";s:5:\"32158\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (57, 'create', '2020-12-18 17:25:25', '57', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Dominic\";s:8:\"lastName\";s:10:\"Swaniawski\";s:11:\"phoneNumber\";N;s:6:\"street\";s:15:\"381 Paucek Lane\";s:7:\"company\";N;s:4:\"city\";s:11:\"Lefflerport\";s:8:\"postcode\";s:5:\"32158\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (58, 'create', '2020-12-18 17:25:25', '58', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Luella\";s:8:\"lastName\";s:5:\"Doyle\";s:11:\"phoneNumber\";N;s:6:\"street\";s:26:\"819 Josue Island Suite 464\";s:7:\"company\";N;s:4:\"city\";s:11:\"East Jaleel\";s:8:\"postcode\";s:10:\"74307-7995\";s:11:\"countryCode\";s:2:\"MX\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (59, 'create', '2020-12-18 17:25:25', '59', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Luella\";s:8:\"lastName\";s:5:\"Doyle\";s:11:\"phoneNumber\";N;s:6:\"street\";s:26:\"819 Josue Island Suite 464\";s:7:\"company\";N;s:4:\"city\";s:11:\"East Jaleel\";s:8:\"postcode\";s:10:\"74307-7995\";s:11:\"countryCode\";s:2:\"MX\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (60, 'create', '2020-12-18 17:25:25', '60', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Luella\";s:8:\"lastName\";s:5:\"Doyle\";s:11:\"phoneNumber\";N;s:6:\"street\";s:26:\"819 Josue Island Suite 464\";s:7:\"company\";N;s:4:\"city\";s:11:\"East Jaleel\";s:8:\"postcode\";s:10:\"74307-7995\";s:11:\"countryCode\";s:2:\"MX\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (61, 'create', '2020-12-18 17:25:26', '61', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Damon\";s:8:\"lastName\";s:7:\"Goyette\";s:11:\"phoneNumber\";s:18:\"873.631.4115 x1102\";s:6:\"street\";s:30:\"9493 Roxane Stravenue Apt. 459\";s:7:\"company\";N;s:4:\"city\";s:12:\"Port Ronaldo\";s:8:\"postcode\";s:5:\"51299\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (62, 'create', '2020-12-18 17:25:26', '62', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Mitchell\";s:8:\"lastName\";s:4:\"Batz\";s:11:\"phoneNumber\";s:18:\"350.541.6831 x4507\";s:6:\"street\";s:29:\"8572 Suzanne Radial Suite 298\";s:7:\"company\";s:11:\"Friesen LLC\";s:4:\"city\";s:11:\"Lake Bryana\";s:8:\"postcode\";s:10:\"48711-8014\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (63, 'create', '2020-12-18 17:25:26', '63', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Edison\";s:8:\"lastName\";s:6:\"Sporer\";s:11:\"phoneNumber\";s:12:\"884-222-3478\";s:6:\"street\";s:27:\"933 Reymundo Vista Apt. 938\";s:7:\"company\";s:21:\"Raynor, Veum and Koss\";s:4:\"city\";s:11:\"North Janis\";s:8:\"postcode\";s:5:\"78643\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (64, 'create', '2020-12-18 17:25:26', '64', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Cathryn\";s:8:\"lastName\";s:6:\"Raynor\";s:11:\"phoneNumber\";s:19:\"443.680.3135 x86675\";s:6:\"street\";s:19:\"17310 Denesik Glens\";s:7:\"company\";s:24:\"Hills, Quitzon and Haley\";s:4:\"city\";s:10:\"New Edison\";s:8:\"postcode\";s:5:\"33626\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (65, 'create', '2020-12-18 17:25:26', '65', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Jennifer\";s:8:\"lastName\";s:6:\"Gibson\";s:11:\"phoneNumber\";N;s:6:\"street\";s:15:\"134 Nestor Park\";s:7:\"company\";s:27:\"Armstrong, Mraz and Koelpin\";s:4:\"city\";s:11:\"Eduardoside\";s:8:\"postcode\";s:5:\"49302\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (66, 'create', '2020-12-18 17:25:26', '66', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Sadye\";s:8:\"lastName\";s:8:\"Champlin\";s:11:\"phoneNumber\";s:15:\"+1-490-933-5019\";s:6:\"street\";s:30:\"768 Hermiston Shoals Suite 822\";s:7:\"company\";N;s:4:\"city\";s:10:\"Port Tyler\";s:8:\"postcode\";s:10:\"88905-2312\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (67, 'create', '2020-12-18 17:25:26', '67', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Dejon\";s:8:\"lastName\";s:8:\"Turcotte\";s:11:\"phoneNumber\";s:18:\"901.414.7243 x3950\";s:6:\"street\";s:19:\"9955 Juvenal Street\";s:7:\"company\";N;s:4:\"city\";s:13:\"New Blakebury\";s:8:\"postcode\";s:5:\"31588\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (68, 'create', '2020-12-18 17:25:26', '68', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Enrique\";s:8:\"lastName\";s:5:\"Jones\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"45183 Bill Station\";s:7:\"company\";s:12:\"Wiza-Witting\";s:4:\"city\";s:11:\"Rempelmouth\";s:8:\"postcode\";s:10:\"79404-3937\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (69, 'create', '2020-12-18 17:25:26', '69', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Mary\";s:8:\"lastName\";s:3:\"Orn\";s:11:\"phoneNumber\";s:20:\"(329) 880-4822 x0650\";s:6:\"street\";s:21:\"9039 Braun Expressway\";s:7:\"company\";s:14:\"Schaefer-Rohan\";s:4:\"city\";s:13:\"Runolfssonton\";s:8:\"postcode\";s:10:\"61429-2663\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` VALUES (70, 'create', '2020-12-18 17:25:26', '70', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Albert\";s:8:\"lastName\";s:7:\"Hagenes\";s:11:\"phoneNumber\";s:12:\"952.362.9338\";s:6:\"street\";s:16:\"119 Rolfson Fort\";s:7:\"company\";N;s:4:\"city\";s:16:\"East Virgiemouth\";s:8:\"postcode\";s:5:\"76037\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sylius_adjustment
-- ----------------------------
DROP TABLE IF EXISTS `sylius_adjustment`;
CREATE TABLE `sylius_adjustment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT NULL,
  `order_item_id` int DEFAULT NULL,
  `order_item_unit_id` int DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int NOT NULL,
  `is_neutral` tinyint(1) NOT NULL,
  `is_locked` tinyint(1) NOT NULL,
  `origin_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_ACA6E0F28D9F6D38` (`order_id`),
  KEY `IDX_ACA6E0F2E415FB15` (`order_item_id`),
  KEY `IDX_ACA6E0F2F720C233` (`order_item_unit_id`),
  CONSTRAINT `FK_ACA6E0F28D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_ACA6E0F2E415FB15` FOREIGN KEY (`order_item_id`) REFERENCES `sylius_order_item` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_ACA6E0F2F720C233` FOREIGN KEY (`order_item_unit_id`) REFERENCES `sylius_order_item_unit` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_adjustment
-- ----------------------------
BEGIN;
INSERT INTO `sylius_adjustment` VALUES (1, NULL, NULL, 1, 'order_promotion', 'New Year', -48, 0, 0, 'new_year', '2020-12-18 17:25:21', '2020-12-18 17:25:21');
INSERT INTO `sylius_adjustment` VALUES (2, NULL, NULL, 2, 'order_promotion', 'New Year', -47, 0, 0, 'new_year', '2020-12-18 17:25:21', '2020-12-18 17:25:21');
INSERT INTO `sylius_adjustment` VALUES (3, NULL, NULL, 3, 'order_promotion', 'New Year', -47, 0, 0, 'new_year', '2020-12-18 17:25:21', '2020-12-18 17:25:21');
INSERT INTO `sylius_adjustment` VALUES (4, NULL, NULL, 4, 'order_promotion', 'New Year', -47, 0, 0, 'new_year', '2020-12-18 17:25:21', '2020-12-18 17:25:21');
INSERT INTO `sylius_adjustment` VALUES (5, NULL, NULL, 5, 'order_promotion', 'New Year', -47, 0, 0, 'new_year', '2020-12-18 17:25:21', '2020-12-18 17:25:21');
INSERT INTO `sylius_adjustment` VALUES (6, NULL, NULL, 6, 'order_promotion', 'New Year', -23, 0, 0, 'new_year', '2020-12-18 17:25:21', '2020-12-18 17:25:21');
INSERT INTO `sylius_adjustment` VALUES (7, NULL, NULL, 7, 'order_promotion', 'New Year', -23, 0, 0, 'new_year', '2020-12-18 17:25:21', '2020-12-18 17:25:21');
INSERT INTO `sylius_adjustment` VALUES (8, NULL, NULL, 8, 'order_promotion', 'New Year', -23, 0, 0, 'new_year', '2020-12-18 17:25:21', '2020-12-18 17:25:21');
INSERT INTO `sylius_adjustment` VALUES (9, NULL, NULL, 9, 'order_promotion', 'New Year', -97, 0, 0, 'new_year', '2020-12-18 17:25:21', '2020-12-18 17:25:21');
INSERT INTO `sylius_adjustment` VALUES (10, NULL, NULL, 10, 'order_promotion', 'New Year', -96, 0, 0, 'new_year', '2020-12-18 17:25:21', '2020-12-18 17:25:21');
INSERT INTO `sylius_adjustment` VALUES (11, NULL, NULL, 11, 'order_promotion', 'New Year', -96, 0, 0, 'new_year', '2020-12-18 17:25:21', '2020-12-18 17:25:21');
INSERT INTO `sylius_adjustment` VALUES (12, NULL, NULL, 12, 'order_promotion', 'New Year', -96, 0, 0, 'new_year', '2020-12-18 17:25:21', '2020-12-18 17:25:21');
INSERT INTO `sylius_adjustment` VALUES (13, NULL, NULL, 13, 'order_promotion', 'New Year', -27, 0, 0, 'new_year', '2020-12-18 17:25:21', '2020-12-18 17:25:21');
INSERT INTO `sylius_adjustment` VALUES (14, NULL, NULL, 14, 'order_promotion', 'New Year', -27, 0, 0, 'new_year', '2020-12-18 17:25:21', '2020-12-18 17:25:21');
INSERT INTO `sylius_adjustment` VALUES (15, NULL, NULL, 15, 'order_promotion', 'New Year', -26, 0, 0, 'new_year', '2020-12-18 17:25:21', '2020-12-18 17:25:21');
INSERT INTO `sylius_adjustment` VALUES (16, NULL, NULL, 16, 'order_promotion', 'New Year', -26, 0, 0, 'new_year', '2020-12-18 17:25:21', '2020-12-18 17:25:21');
INSERT INTO `sylius_adjustment` VALUES (17, NULL, NULL, 17, 'order_promotion', 'New Year', -26, 0, 0, 'new_year', '2020-12-18 17:25:21', '2020-12-18 17:25:21');
INSERT INTO `sylius_adjustment` VALUES (18, NULL, NULL, 18, 'order_promotion', 'New Year', -89, 0, 0, 'new_year', '2020-12-18 17:25:21', '2020-12-18 17:25:21');
INSERT INTO `sylius_adjustment` VALUES (19, NULL, NULL, 19, 'order_promotion', 'New Year', -89, 0, 0, 'new_year', '2020-12-18 17:25:21', '2020-12-18 17:25:21');
INSERT INTO `sylius_adjustment` VALUES (20, 1, NULL, NULL, 'shipping', 'UPS', 736, 0, 0, NULL, '2020-12-18 17:25:21', '2020-12-18 17:25:21');
INSERT INTO `sylius_adjustment` VALUES (21, 2, NULL, NULL, 'shipping', 'UPS', 736, 0, 0, NULL, '2020-12-18 17:25:21', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (22, 3, NULL, NULL, 'shipping', 'UPS', 736, 0, 0, NULL, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (23, NULL, NULL, 25, 'order_promotion', 'New Year', -28, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (24, NULL, NULL, 26, 'order_promotion', 'New Year', -28, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (25, NULL, NULL, 27, 'order_promotion', 'New Year', -27, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (26, NULL, NULL, 28, 'order_promotion', 'New Year', -80, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (27, NULL, NULL, 29, 'order_promotion', 'New Year', -80, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (28, NULL, NULL, 30, 'order_promotion', 'New Year', -79, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (29, NULL, NULL, 31, 'order_promotion', 'New Year', -79, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (30, NULL, NULL, 32, 'order_promotion', 'New Year', -100, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (31, NULL, NULL, 33, 'order_promotion', 'New Year', -2, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (32, NULL, NULL, 34, 'order_promotion', 'New Year', -2, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (33, NULL, NULL, 35, 'order_promotion', 'New Year', -2, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (34, NULL, NULL, 36, 'order_promotion', 'New Year', -2, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (35, NULL, NULL, 37, 'order_promotion', 'New Year', -2, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (36, NULL, NULL, 38, 'order_promotion', 'New Year', -98, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (37, NULL, NULL, 39, 'order_promotion', 'New Year', -98, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (38, NULL, NULL, 40, 'order_promotion', 'New Year', -98, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (39, NULL, NULL, 41, 'order_promotion', 'New Year', -98, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (40, NULL, NULL, 42, 'order_promotion', 'New Year', -97, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (41, 4, NULL, NULL, 'shipping', 'UPS', 736, 0, 0, NULL, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (42, NULL, NULL, 43, 'order_promotion', 'New Year', -77, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (43, NULL, NULL, 44, 'order_promotion', 'New Year', -76, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (44, NULL, NULL, 45, 'order_promotion', 'New Year', -76, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (45, NULL, NULL, 46, 'order_promotion', 'New Year', -76, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (46, NULL, NULL, 47, 'order_promotion', 'New Year', -76, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (47, NULL, NULL, 48, 'order_promotion', 'New Year', -202, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (48, NULL, NULL, 49, 'order_promotion', 'New Year', -201, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (49, NULL, NULL, 50, 'order_promotion', 'New Year', -21, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (50, NULL, NULL, 51, 'order_promotion', 'New Year', -21, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (51, NULL, NULL, 52, 'order_promotion', 'New Year', -20, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (52, NULL, NULL, 53, 'order_promotion', 'New Year', -154, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (53, 5, NULL, NULL, 'shipping', 'UPS', 736, 0, 0, NULL, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (54, NULL, NULL, 54, 'order_promotion', 'New Year', -150, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (55, NULL, NULL, 55, 'order_promotion', 'New Year', -148, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (56, NULL, NULL, 56, 'order_promotion', 'New Year', -148, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (57, NULL, NULL, 57, 'order_promotion', 'New Year', -147, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (58, NULL, NULL, 58, 'order_promotion', 'New Year', -147, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (59, NULL, NULL, 59, 'order_promotion', 'New Year', -66, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (60, NULL, NULL, 60, 'order_promotion', 'New Year', -66, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (61, NULL, NULL, 61, 'order_promotion', 'New Year', -66, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (62, NULL, NULL, 62, 'order_promotion', 'New Year', -62, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (63, 6, NULL, NULL, 'shipping', 'UPS', 736, 0, 0, NULL, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (64, NULL, NULL, 63, 'order_promotion', 'New Year', -500, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (65, NULL, NULL, 64, 'order_promotion', 'New Year', -500, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (66, 7, NULL, NULL, 'shipping', 'UPS', 736, 0, 0, NULL, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_adjustment` VALUES (67, NULL, NULL, 65, 'order_promotion', 'New Year', -135, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (68, NULL, NULL, 66, 'order_promotion', 'New Year', -135, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (69, NULL, NULL, 67, 'order_promotion', 'New Year', -134, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (70, NULL, NULL, 68, 'order_promotion', 'New Year', -116, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (71, NULL, NULL, 69, 'order_promotion', 'New Year', -116, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (72, NULL, NULL, 70, 'order_promotion', 'New Year', -115, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (73, NULL, NULL, 71, 'order_promotion', 'New Year', -115, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (74, NULL, NULL, 72, 'order_promotion', 'New Year', -115, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (75, NULL, NULL, 73, 'order_promotion', 'New Year', -19, 0, 0, 'new_year', '2020-12-18 17:25:22', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (76, 8, NULL, NULL, 'shipping', 'UPS', 736, 0, 0, NULL, '2020-12-18 17:25:22', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (77, NULL, NULL, 74, 'order_promotion', 'New Year', -44, 0, 0, 'new_year', '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (78, NULL, NULL, 75, 'order_promotion', 'New Year', -44, 0, 0, 'new_year', '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (79, NULL, NULL, 76, 'order_promotion', 'New Year', -44, 0, 0, 'new_year', '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (80, NULL, NULL, 77, 'order_promotion', 'New Year', -217, 0, 0, 'new_year', '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (81, NULL, NULL, 78, 'order_promotion', 'New Year', -217, 0, 0, 'new_year', '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (82, NULL, NULL, 79, 'order_promotion', 'New Year', -217, 0, 0, 'new_year', '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (83, NULL, NULL, 80, 'order_promotion', 'New Year', -217, 0, 0, 'new_year', '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (84, 9, NULL, NULL, 'shipping', 'UPS', 736, 0, 0, NULL, '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (85, NULL, NULL, 81, 'order_promotion', 'New Year', -159, 0, 0, 'new_year', '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (86, NULL, NULL, 82, 'order_promotion', 'New Year', -35, 0, 0, 'new_year', '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (87, NULL, NULL, 83, 'order_promotion', 'New Year', -34, 0, 0, 'new_year', '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (88, NULL, NULL, 84, 'order_promotion', 'New Year', -34, 0, 0, 'new_year', '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (89, NULL, NULL, 85, 'order_promotion', 'New Year', -134, 0, 0, 'new_year', '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (90, NULL, NULL, 86, 'order_promotion', 'New Year', -133, 0, 0, 'new_year', '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (91, NULL, NULL, 87, 'order_promotion', 'New Year', -133, 0, 0, 'new_year', '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (92, NULL, NULL, 88, 'order_promotion', 'New Year', -133, 0, 0, 'new_year', '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (93, NULL, NULL, 89, 'order_promotion', 'New Year', -103, 0, 0, 'new_year', '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (94, NULL, NULL, 90, 'order_promotion', 'New Year', -102, 0, 0, 'new_year', '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (95, 10, NULL, NULL, 'shipping', 'UPS', 736, 0, 0, NULL, '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (96, 11, NULL, NULL, 'shipping', 'UPS', 736, 0, 0, NULL, '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (97, NULL, NULL, 94, 'order_promotion', 'New Year', -40, 0, 0, 'new_year', '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (98, NULL, NULL, 95, 'order_promotion', 'New Year', -40, 0, 0, 'new_year', '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (99, NULL, NULL, 96, 'order_promotion', 'New Year', -39, 0, 0, 'new_year', '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (100, NULL, NULL, 97, 'order_promotion', 'New Year', -39, 0, 0, 'new_year', '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (101, NULL, NULL, 98, 'order_promotion', 'New Year', -39, 0, 0, 'new_year', '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (102, NULL, NULL, 99, 'order_promotion', 'New Year', -123, 0, 0, 'new_year', '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (103, NULL, NULL, 100, 'order_promotion', 'New Year', -123, 0, 0, 'new_year', '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (104, NULL, NULL, 101, 'order_promotion', 'New Year', -123, 0, 0, 'new_year', '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (105, NULL, NULL, 102, 'order_promotion', 'New Year', -123, 0, 0, 'new_year', '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (106, NULL, NULL, 103, 'order_promotion', 'New Year', -122, 0, 0, 'new_year', '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (107, NULL, NULL, 104, 'order_promotion', 'New Year', -15, 0, 0, 'new_year', '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (108, NULL, NULL, 105, 'order_promotion', 'New Year', -15, 0, 0, 'new_year', '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (109, NULL, NULL, 106, 'order_promotion', 'New Year', -14, 0, 0, 'new_year', '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (110, NULL, NULL, 107, 'order_promotion', 'New Year', -145, 0, 0, 'new_year', '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (111, 12, NULL, NULL, 'shipping', 'UPS', 736, 0, 0, NULL, '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_adjustment` VALUES (112, NULL, NULL, 108, 'order_promotion', 'New Year', -3, 0, 0, 'new_year', '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_adjustment` VALUES (113, NULL, NULL, 109, 'order_promotion', 'New Year', -2, 0, 0, 'new_year', '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_adjustment` VALUES (114, NULL, NULL, 110, 'order_promotion', 'New Year', -2, 0, 0, 'new_year', '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_adjustment` VALUES (115, NULL, NULL, 111, 'order_promotion', 'New Year', -71, 0, 0, 'new_year', '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_adjustment` VALUES (116, NULL, NULL, 112, 'order_promotion', 'New Year', -70, 0, 0, 'new_year', '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_adjustment` VALUES (117, NULL, NULL, 113, 'order_promotion', 'New Year', -70, 0, 0, 'new_year', '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_adjustment` VALUES (118, NULL, NULL, 114, 'order_promotion', 'New Year', -70, 0, 0, 'new_year', '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_adjustment` VALUES (119, NULL, NULL, 115, 'order_promotion', 'New Year', -70, 0, 0, 'new_year', '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_adjustment` VALUES (120, NULL, NULL, 116, 'order_promotion', 'New Year', -105, 0, 0, 'new_year', '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_adjustment` VALUES (121, NULL, NULL, 117, 'order_promotion', 'New Year', -105, 0, 0, 'new_year', '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_adjustment` VALUES (122, NULL, NULL, 118, 'order_promotion', 'New Year', -63, 0, 0, 'new_year', '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_adjustment` VALUES (123, NULL, NULL, 119, 'order_promotion', 'New Year', -62, 0, 0, 'new_year', '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_adjustment` VALUES (124, NULL, NULL, 120, 'order_promotion', 'New Year', -62, 0, 0, 'new_year', '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_adjustment` VALUES (125, NULL, NULL, 121, 'order_promotion', 'New Year', -49, 0, 0, 'new_year', '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_adjustment` VALUES (126, NULL, NULL, 122, 'order_promotion', 'New Year', -49, 0, 0, 'new_year', '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_adjustment` VALUES (127, NULL, NULL, 123, 'order_promotion', 'New Year', -49, 0, 0, 'new_year', '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_adjustment` VALUES (128, NULL, NULL, 124, 'order_promotion', 'New Year', -49, 0, 0, 'new_year', '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_adjustment` VALUES (129, NULL, NULL, 125, 'order_promotion', 'New Year', -49, 0, 0, 'new_year', '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_adjustment` VALUES (130, 13, NULL, NULL, 'shipping', 'UPS', 736, 0, 0, NULL, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_adjustment` VALUES (131, 14, NULL, NULL, 'shipping', 'UPS', 736, 0, 0, NULL, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_adjustment` VALUES (132, 15, NULL, NULL, 'shipping', 'UPS', 736, 0, 0, NULL, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_adjustment` VALUES (133, 16, NULL, NULL, 'shipping', 'UPS', 736, 0, 0, NULL, '2020-12-18 17:25:25', '2020-12-18 17:25:25');
INSERT INTO `sylius_adjustment` VALUES (134, 17, NULL, NULL, 'shipping', 'UPS', 736, 0, 0, NULL, '2020-12-18 17:25:25', '2020-12-18 17:25:25');
INSERT INTO `sylius_adjustment` VALUES (135, 18, NULL, NULL, 'shipping', 'UPS', 736, 0, 0, NULL, '2020-12-18 17:25:25', '2020-12-18 17:25:25');
INSERT INTO `sylius_adjustment` VALUES (136, 19, NULL, NULL, 'shipping', 'UPS', 736, 0, 0, NULL, '2020-12-18 17:25:25', '2020-12-18 17:25:25');
INSERT INTO `sylius_adjustment` VALUES (137, 20, NULL, NULL, 'shipping', 'UPS', 736, 0, 0, NULL, '2020-12-18 17:25:25', '2020-12-18 17:25:25');
COMMIT;

-- ----------------------------
-- Table structure for sylius_admin_api_access_token
-- ----------------------------
DROP TABLE IF EXISTS `sylius_admin_api_access_token`;
CREATE TABLE `sylius_admin_api_access_token` (
  `id` int NOT NULL AUTO_INCREMENT,
  `client_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_2AA4915D5F37A13B` (`token`),
  KEY `IDX_2AA4915D19EB6921` (`client_id`),
  KEY `IDX_2AA4915DA76ED395` (`user_id`),
  CONSTRAINT `FK_2AA4915D19EB6921` FOREIGN KEY (`client_id`) REFERENCES `sylius_admin_api_client` (`id`),
  CONSTRAINT `FK_2AA4915DA76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_admin_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_admin_api_access_token
-- ----------------------------
BEGIN;
INSERT INTO `sylius_admin_api_access_token` VALUES (1, 1, 2, 'SampleToken', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sylius_admin_api_auth_code
-- ----------------------------
DROP TABLE IF EXISTS `sylius_admin_api_auth_code`;
CREATE TABLE `sylius_admin_api_auth_code` (
  `id` int NOT NULL AUTO_INCREMENT,
  `client_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_uri` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E366D8485F37A13B` (`token`),
  KEY `IDX_E366D84819EB6921` (`client_id`),
  KEY `IDX_E366D848A76ED395` (`user_id`),
  CONSTRAINT `FK_E366D84819EB6921` FOREIGN KEY (`client_id`) REFERENCES `sylius_admin_api_client` (`id`),
  CONSTRAINT `FK_E366D848A76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_admin_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_admin_api_auth_code
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sylius_admin_api_client
-- ----------------------------
DROP TABLE IF EXISTS `sylius_admin_api_client`;
CREATE TABLE `sylius_admin_api_client` (
  `id` int NOT NULL AUTO_INCREMENT,
  `random_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_uris` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `secret` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `allowed_grant_types` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_admin_api_client
-- ----------------------------
BEGIN;
INSERT INTO `sylius_admin_api_client` VALUES (1, 'demo_client', 'a:0:{}', 'secret_demo_client', 'a:1:{i:0;s:8:\"password\";}');
COMMIT;

-- ----------------------------
-- Table structure for sylius_admin_api_refresh_token
-- ----------------------------
DROP TABLE IF EXISTS `sylius_admin_api_refresh_token`;
CREATE TABLE `sylius_admin_api_refresh_token` (
  `id` int NOT NULL AUTO_INCREMENT,
  `client_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_9160E3FA5F37A13B` (`token`),
  KEY `IDX_9160E3FA19EB6921` (`client_id`),
  KEY `IDX_9160E3FAA76ED395` (`user_id`),
  CONSTRAINT `FK_9160E3FA19EB6921` FOREIGN KEY (`client_id`) REFERENCES `sylius_admin_api_client` (`id`),
  CONSTRAINT `FK_9160E3FAA76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_admin_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_admin_api_refresh_token
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sylius_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `sylius_admin_user`;
CREATE TABLE `sylius_admin_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `email_verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale_code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `encoder_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_admin_user
-- ----------------------------
BEGIN;
INSERT INTO `sylius_admin_user` VALUES (1, 'sylius', 'sylius', 1, '9vhg0s6kulsswokwwk8g8cg0kgg008g', '$argon2i$v=19$m=65536,t=4,p=1$SVR5VUkyY01DZVd6UHEwYw$YSHvmdnCyhHj3vZOiWjg5E5iKrh9/VTcMrEV1xyliLI', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";}', 'sylius@example.com', 'sylius@example.com', '2020-12-18 17:25:13', '2020-12-18 17:25:13', 'John', 'Doe', 'en_US', 'argon2i');
INSERT INTO `sylius_admin_user` VALUES (2, 'api', 'api', 1, 'lcpvpydad5w0k4g0gkckg8k8w4sgo40', '$argon2i$v=19$m=65536,t=4,p=1$MW9uc2tSLkREbktrUHBTbQ$rSBCKFm89BC14sJ70/JrybKFiF8qWfYKTMSCCfQpjx8', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:2:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";i:1;s:15:\"ROLE_API_ACCESS\";}', 'api@example.com', 'api@example.com', '2020-12-18 17:25:13', '2020-12-18 17:25:13', 'Luke', 'Brushwood', 'en_US', 'argon2i');
INSERT INTO `sylius_admin_user` VALUES (3, 'hungnd', 'hungnd', 1, '361xssvl44sgwws8g8osccks4kwcows', '$argon2i$v=19$m=65536,t=4,p=1$UzhzUE56dFlYdzhFVHZnLg$jmKEtdE0Yc+DkeY+D++QZhjP3O5cjOi5uWMo7hDWFFA', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";}', 'hungndcto@gmail.com', 'hungndcto@gmail.com', '2020-12-18 17:25:48', '2020-12-18 17:26:03', NULL, NULL, 'en_US', 'argon2i');
COMMIT;

-- ----------------------------
-- Table structure for sylius_avatar_image
-- ----------------------------
DROP TABLE IF EXISTS `sylius_avatar_image`;
CREATE TABLE `sylius_avatar_image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `owner_id` int NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_1068A3A97E3C61F9` (`owner_id`),
  CONSTRAINT `FK_1068A3A97E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `sylius_admin_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_avatar_image
-- ----------------------------
BEGIN;
INSERT INTO `sylius_avatar_image` VALUES (1, 1, NULL, '2c/ef/0294f633178546e30ce464c48197.jpg');
INSERT INTO `sylius_avatar_image` VALUES (2, 2, NULL, 'a7/a4/bdec831de556005c1a4bfb209af9.jpg');
COMMIT;

-- ----------------------------
-- Table structure for sylius_channel
-- ----------------------------
DROP TABLE IF EXISTS `sylius_channel`;
CREATE TABLE `sylius_channel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `default_locale_id` int NOT NULL,
  `base_currency_id` int NOT NULL,
  `default_tax_zone_id` int DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) NOT NULL,
  `hostname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `theme_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_calculation_strategy` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skipping_shipping_step_allowed` tinyint(1) NOT NULL,
  `account_verification_required` tinyint(1) NOT NULL,
  `skipping_payment_step_allowed` tinyint(1) NOT NULL,
  `shop_billing_data_id` int DEFAULT NULL,
  `menu_taxon_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_16C8119E77153098` (`code`),
  UNIQUE KEY `UNIQ_16C8119EB5282EDF` (`shop_billing_data_id`),
  KEY `IDX_16C8119E743BF776` (`default_locale_id`),
  KEY `IDX_16C8119E3101778E` (`base_currency_id`),
  KEY `IDX_16C8119EA978C17` (`default_tax_zone_id`),
  KEY `IDX_16C8119EE551C011` (`hostname`),
  KEY `IDX_16C8119EF242B1E6` (`menu_taxon_id`),
  CONSTRAINT `FK_16C8119E3101778E` FOREIGN KEY (`base_currency_id`) REFERENCES `sylius_currency` (`id`),
  CONSTRAINT `FK_16C8119E743BF776` FOREIGN KEY (`default_locale_id`) REFERENCES `sylius_locale` (`id`),
  CONSTRAINT `FK_16C8119EA978C17` FOREIGN KEY (`default_tax_zone_id`) REFERENCES `sylius_zone` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_16C8119EB5282EDF` FOREIGN KEY (`shop_billing_data_id`) REFERENCES `sylius_shop_billing_data` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_16C8119EF242B1E6` FOREIGN KEY (`menu_taxon_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_channel
-- ----------------------------
BEGIN;
INSERT INTO `sylius_channel` VALUES (1, 1, 2, 1, 'FASHION_WEB', 'Fashion Web Store', 'Linen', NULL, 1, 'localhost', '2020-12-18 17:25:09', '2020-12-18 17:25:09', NULL, 'order_items_based', NULL, 0, 1, 0, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for sylius_channel_countries
-- ----------------------------
DROP TABLE IF EXISTS `sylius_channel_countries`;
CREATE TABLE `sylius_channel_countries` (
  `channel_id` int NOT NULL,
  `country_id` int NOT NULL,
  PRIMARY KEY (`channel_id`,`country_id`),
  KEY `IDX_D96E51AE72F5A1AA` (`channel_id`),
  KEY `IDX_D96E51AEF92F3E70` (`country_id`),
  CONSTRAINT `FK_D96E51AE72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_D96E51AEF92F3E70` FOREIGN KEY (`country_id`) REFERENCES `sylius_country` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_channel_countries
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sylius_channel_currencies
-- ----------------------------
DROP TABLE IF EXISTS `sylius_channel_currencies`;
CREATE TABLE `sylius_channel_currencies` (
  `channel_id` int NOT NULL,
  `currency_id` int NOT NULL,
  PRIMARY KEY (`channel_id`,`currency_id`),
  KEY `IDX_AE491F9372F5A1AA` (`channel_id`),
  KEY `IDX_AE491F9338248176` (`currency_id`),
  CONSTRAINT `FK_AE491F9338248176` FOREIGN KEY (`currency_id`) REFERENCES `sylius_currency` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_AE491F9372F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_channel_currencies
-- ----------------------------
BEGIN;
INSERT INTO `sylius_channel_currencies` VALUES (1, 2);
COMMIT;

-- ----------------------------
-- Table structure for sylius_channel_locales
-- ----------------------------
DROP TABLE IF EXISTS `sylius_channel_locales`;
CREATE TABLE `sylius_channel_locales` (
  `channel_id` int NOT NULL,
  `locale_id` int NOT NULL,
  PRIMARY KEY (`channel_id`,`locale_id`),
  KEY `IDX_786B7A8472F5A1AA` (`channel_id`),
  KEY `IDX_786B7A84E559DFD1` (`locale_id`),
  CONSTRAINT `FK_786B7A8472F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_786B7A84E559DFD1` FOREIGN KEY (`locale_id`) REFERENCES `sylius_locale` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_channel_locales
-- ----------------------------
BEGIN;
INSERT INTO `sylius_channel_locales` VALUES (1, 1);
COMMIT;

-- ----------------------------
-- Table structure for sylius_channel_pricing
-- ----------------------------
DROP TABLE IF EXISTS `sylius_channel_pricing`;
CREATE TABLE `sylius_channel_pricing` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_variant_id` int NOT NULL,
  `price` int DEFAULT NULL,
  `channel_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `original_price` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_variant_channel_idx` (`product_variant_id`,`channel_code`),
  KEY `IDX_7801820CA80EF684` (`product_variant_id`),
  CONSTRAINT `FK_7801820CA80EF684` FOREIGN KEY (`product_variant_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_channel_pricing
-- ----------------------------
BEGIN;
INSERT INTO `sylius_channel_pricing` VALUES (1, 1, 4761, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (2, 2, 1927, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (3, 3, 2558, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (4, 4, 9465, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (5, 5, 2678, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (6, 6, 210, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (7, 7, 8112, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (8, 8, 1017, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (9, 9, 5183, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (10, 10, 9405, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (11, 11, 2947, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (12, 12, 1795, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (13, 13, 3593, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (14, 14, 183, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (15, 15, 156, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (16, 16, 6465, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (17, 17, 6379, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (18, 18, 2061, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (19, 19, 3534, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (20, 20, 8014, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (21, 21, 1425, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (22, 22, 822, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (23, 23, 478, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (24, 24, 7012, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (25, 25, 9638, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (26, 26, 928, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (27, 27, 5535, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (28, 28, 7449, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (29, 29, 6068, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (30, 30, 5670, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (31, 31, 8437, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (32, 32, 2075, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (33, 33, 1109, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (34, 34, 4721, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (35, 35, 4967, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (36, 36, 8865, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (37, 37, 6274, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (38, 38, 465, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (39, 39, 865, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (40, 40, 5621, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (41, 41, 7461, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (42, 42, 3186, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (43, 43, 9917, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (44, 44, 2348, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (45, 45, 3866, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (46, 46, 7170, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (47, 47, 6069, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (48, 48, 339, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (49, 49, 3207, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (50, 50, 3958, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (51, 51, 3473, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (52, 52, 9621, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (53, 53, 1581, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (54, 54, 724, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (55, 55, 8774, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (56, 56, 228, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (57, 57, 213, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (58, 58, 4919, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (59, 59, 6788, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (60, 60, 1431, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (61, 61, 7663, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (62, 62, 3909, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (63, 63, 5018, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (64, 64, 8014, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (65, 65, 2594, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (66, 66, 6485, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (67, 67, 5959, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (68, 68, 5232, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (69, 69, 5598, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (70, 70, 3846, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (71, 71, 3480, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (72, 72, 127, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (73, 73, 1592, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (74, 74, 5579, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (75, 75, 6053, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (76, 76, 7983, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (77, 77, 7076, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (78, 78, 6293, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (79, 79, 6168, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (80, 80, 774, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (81, 81, 3478, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (82, 82, 6015, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (83, 83, 2094, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (84, 84, 7709, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (85, 85, 7089, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (86, 86, 4390, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (87, 87, 2105, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (88, 88, 5355, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (89, 89, 8890, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (90, 90, 8328, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (91, 91, 1380, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (92, 92, 2852, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (93, 93, 5011, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (94, 94, 6150, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (95, 95, 1185, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (96, 96, 9968, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (97, 97, 8145, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (98, 98, 9762, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (99, 99, 4312, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (100, 100, 121, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (101, 101, 7614, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (102, 102, 5200, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (103, 103, 5794, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (104, 104, 6635, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (105, 105, 3080, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (106, 106, 6240, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (107, 107, 8319, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (108, 108, 8112, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (109, 109, 556, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (110, 110, 5242, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (111, 111, 2426, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (112, 112, 4446, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (113, 113, 158, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (114, 114, 3351, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (115, 115, 1603, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (116, 116, 5715, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (117, 117, 7744, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (118, 118, 9021, 'FASHION_WEB', NULL);
INSERT INTO `sylius_channel_pricing` VALUES (119, 119, 2685, 'FASHION_WEB', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sylius_country
-- ----------------------------
DROP TABLE IF EXISTS `sylius_country`;
CREATE TABLE `sylius_country` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E74256BF77153098` (`code`),
  KEY `IDX_E74256BF77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_country
-- ----------------------------
BEGIN;
INSERT INTO `sylius_country` VALUES (1, 'US', 1);
INSERT INTO `sylius_country` VALUES (2, 'FR', 1);
INSERT INTO `sylius_country` VALUES (3, 'DE', 1);
INSERT INTO `sylius_country` VALUES (4, 'AU', 1);
INSERT INTO `sylius_country` VALUES (5, 'CA', 1);
INSERT INTO `sylius_country` VALUES (6, 'MX', 1);
INSERT INTO `sylius_country` VALUES (7, 'NZ', 1);
INSERT INTO `sylius_country` VALUES (8, 'PT', 1);
INSERT INTO `sylius_country` VALUES (9, 'ES', 1);
INSERT INTO `sylius_country` VALUES (10, 'CN', 1);
INSERT INTO `sylius_country` VALUES (11, 'GB', 1);
INSERT INTO `sylius_country` VALUES (12, 'PL', 1);
COMMIT;

-- ----------------------------
-- Table structure for sylius_currency
-- ----------------------------
DROP TABLE IF EXISTS `sylius_currency`;
CREATE TABLE `sylius_currency` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_96EDD3D077153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_currency
-- ----------------------------
BEGIN;
INSERT INTO `sylius_currency` VALUES (1, 'EUR', '2020-12-18 17:25:09', '2020-12-18 17:25:09');
INSERT INTO `sylius_currency` VALUES (2, 'USD', '2020-12-18 17:25:09', '2020-12-18 17:25:09');
INSERT INTO `sylius_currency` VALUES (3, 'PLN', '2020-12-18 17:25:09', '2020-12-18 17:25:09');
INSERT INTO `sylius_currency` VALUES (4, 'CAD', '2020-12-18 17:25:09', '2020-12-18 17:25:09');
INSERT INTO `sylius_currency` VALUES (5, 'CNY', '2020-12-18 17:25:09', '2020-12-18 17:25:09');
INSERT INTO `sylius_currency` VALUES (6, 'NZD', '2020-12-18 17:25:09', '2020-12-18 17:25:09');
INSERT INTO `sylius_currency` VALUES (7, 'GBP', '2020-12-18 17:25:09', '2020-12-18 17:25:09');
INSERT INTO `sylius_currency` VALUES (8, 'AUD', '2020-12-18 17:25:09', '2020-12-18 17:25:09');
INSERT INTO `sylius_currency` VALUES (9, 'MXN', '2020-12-18 17:25:09', '2020-12-18 17:25:09');
COMMIT;

-- ----------------------------
-- Table structure for sylius_customer
-- ----------------------------
DROP TABLE IF EXISTS `sylius_customer`;
CREATE TABLE `sylius_customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_group_id` int DEFAULT NULL,
  `default_address_id` int DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `gender` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'u',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subscribed_to_newsletter` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7E82D5E6E7927C74` (`email`),
  UNIQUE KEY `UNIQ_7E82D5E6A0D96FBF` (`email_canonical`),
  UNIQUE KEY `UNIQ_7E82D5E6BD94FB16` (`default_address_id`),
  KEY `IDX_7E82D5E6D2919A68` (`customer_group_id`),
  CONSTRAINT `FK_7E82D5E6BD94FB16` FOREIGN KEY (`default_address_id`) REFERENCES `sylius_address` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_7E82D5E6D2919A68` FOREIGN KEY (`customer_group_id`) REFERENCES `sylius_customer_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_customer
-- ----------------------------
BEGIN;
INSERT INTO `sylius_customer` VALUES (1, 1, NULL, 'shop@example.com', 'shop@example.com', 'John', 'Doe', '2018-01-25 03:59:52', 'u', '2020-12-18 17:25:09', '2020-12-18 17:25:09', '912-440-5719 x52381', 0);
INSERT INTO `sylius_customer` VALUES (2, 2, NULL, 'nkunde@hotmail.com', 'nkunde@hotmail.com', 'Beau', 'Waters', '1978-03-10 04:55:49', 'u', '2020-12-18 17:25:09', '2020-12-18 17:25:09', '(230) 291-8037 x681', 0);
INSERT INTO `sylius_customer` VALUES (3, 1, NULL, 'ola.casper@gmail.com', 'ola.casper@gmail.com', 'Jameson', 'Fritsch', '1971-07-30 14:26:17', 'u', '2020-12-18 17:25:09', '2020-12-18 17:25:10', '364.520.8277', 0);
INSERT INTO `sylius_customer` VALUES (4, 1, NULL, 'leffler.clara@yahoo.com', 'leffler.clara@yahoo.com', 'Ilene', 'Marks', '1987-11-16 13:38:09', 'u', '2020-12-18 17:25:10', '2020-12-18 17:25:10', '1-390-575-6481 x5820', 0);
INSERT INTO `sylius_customer` VALUES (5, 1, NULL, 'egibson@yahoo.com', 'egibson@yahoo.com', 'Tommie', 'Hills', '1999-10-14 22:31:51', 'u', '2020-12-18 17:25:10', '2020-12-18 17:25:10', '1-250-846-6959 x319', 0);
INSERT INTO `sylius_customer` VALUES (6, 2, NULL, 'aschulist@hotmail.com', 'aschulist@hotmail.com', 'Juana', 'Hill', '1969-11-20 08:36:56', 'u', '2020-12-18 17:25:10', '2020-12-18 17:25:10', '+1-717-995-6684', 0);
INSERT INTO `sylius_customer` VALUES (7, 1, NULL, 'kassandra03@glover.com', 'kassandra03@glover.com', 'Mertie', 'Balistreri', '1999-01-14 11:53:34', 'u', '2020-12-18 17:25:10', '2020-12-18 17:25:10', '359.241.3645', 0);
INSERT INTO `sylius_customer` VALUES (8, 2, NULL, 'kbashirian@raynor.com', 'kbashirian@raynor.com', 'Emely', 'Kautzer', '1985-06-24 19:59:00', 'u', '2020-12-18 17:25:10', '2020-12-18 17:25:10', '+1.421.336.5220', 0);
INSERT INTO `sylius_customer` VALUES (9, 2, NULL, 'hallie19@hotmail.com', 'hallie19@hotmail.com', 'Anibal', 'Runolfsdottir', '1958-02-12 13:18:40', 'u', '2020-12-18 17:25:10', '2020-12-18 17:25:11', '462-275-0907 x77495', 0);
INSERT INTO `sylius_customer` VALUES (10, 2, NULL, 'dorothea.legros@carroll.com', 'dorothea.legros@carroll.com', 'Madie', 'Bradtke', '1980-11-01 20:36:57', 'u', '2020-12-18 17:25:11', '2020-12-18 17:25:11', '1-489-752-6760 x26412', 0);
INSERT INTO `sylius_customer` VALUES (11, 1, NULL, 'lenore55@yahoo.com', 'lenore55@yahoo.com', 'Lacey', 'Friesen', '1979-07-05 15:22:33', 'u', '2020-12-18 17:25:11', '2020-12-18 17:25:11', '725-945-3484', 0);
INSERT INTO `sylius_customer` VALUES (12, 1, NULL, 'lgoodwin@gulgowski.com', 'lgoodwin@gulgowski.com', 'Layne', 'Johnson', '2013-09-13 13:04:47', 'u', '2020-12-18 17:25:11', '2020-12-18 17:25:11', '330-587-8441 x563', 0);
INSERT INTO `sylius_customer` VALUES (13, 2, NULL, 'qbecker@hotmail.com', 'qbecker@hotmail.com', 'Vito', 'Gleason', '1936-01-03 11:28:28', 'u', '2020-12-18 17:25:11', '2020-12-18 17:25:11', '438-586-4205', 0);
INSERT INTO `sylius_customer` VALUES (14, 1, NULL, 'tiffany.prosacco@stark.com', 'tiffany.prosacco@stark.com', 'Edison', 'Gusikowski', '2014-03-09 13:09:18', 'u', '2020-12-18 17:25:11', '2020-12-18 17:25:11', '+1-296-286-6751', 0);
INSERT INTO `sylius_customer` VALUES (15, 1, NULL, 'keyon.gusikowski@gmail.com', 'keyon.gusikowski@gmail.com', 'Lourdes', 'Schinner', '1937-04-17 09:22:52', 'u', '2020-12-18 17:25:11', '2020-12-18 17:25:12', '(527) 474-2512 x662', 0);
INSERT INTO `sylius_customer` VALUES (16, 1, NULL, 'zrobel@yahoo.com', 'zrobel@yahoo.com', 'Donna', 'Kihn', '1945-12-16 02:04:05', 'u', '2020-12-18 17:25:12', '2020-12-18 17:25:12', '1-280-292-3752 x823', 0);
INSERT INTO `sylius_customer` VALUES (17, 1, NULL, 'tony43@koch.com', 'tony43@koch.com', 'Zoila', 'Flatley', '1939-11-18 06:23:14', 'u', '2020-12-18 17:25:12', '2020-12-18 17:25:12', '663.370.2171', 0);
INSERT INTO `sylius_customer` VALUES (18, 1, NULL, 'elvis.fadel@hotmail.com', 'elvis.fadel@hotmail.com', 'Leif', 'Kunze', '1957-01-18 13:31:29', 'u', '2020-12-18 17:25:12', '2020-12-18 17:25:12', '(489) 216-8353', 0);
INSERT INTO `sylius_customer` VALUES (19, 1, NULL, 'damon60@heathcote.com', 'damon60@heathcote.com', 'Kallie', 'Hermann', '1935-05-28 13:08:52', 'u', '2020-12-18 17:25:12', '2020-12-18 17:25:12', '616-692-0374 x556', 0);
INSERT INTO `sylius_customer` VALUES (20, 1, NULL, 'hkunde@olson.org', 'hkunde@olson.org', 'Raegan', 'Hand', '1994-05-27 10:06:39', 'u', '2020-12-18 17:25:12', '2020-12-18 17:25:12', '(970) 419-4857 x7266', 0);
INSERT INTO `sylius_customer` VALUES (21, 1, NULL, 'von.madge@okuneva.info', 'von.madge@okuneva.info', 'Rosie', 'Nader', '1921-01-16 18:55:59', 'u', '2020-12-18 17:25:12', '2020-12-18 17:25:13', '(303) 556-6579 x3104', 0);
COMMIT;

-- ----------------------------
-- Table structure for sylius_customer_group
-- ----------------------------
DROP TABLE IF EXISTS `sylius_customer_group`;
CREATE TABLE `sylius_customer_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7FCF9B0577153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_customer_group
-- ----------------------------
BEGIN;
INSERT INTO `sylius_customer_group` VALUES (1, 'retail', 'Retail');
INSERT INTO `sylius_customer_group` VALUES (2, 'wholesale', 'Wholesale');
COMMIT;

-- ----------------------------
-- Table structure for sylius_exchange_rate
-- ----------------------------
DROP TABLE IF EXISTS `sylius_exchange_rate`;
CREATE TABLE `sylius_exchange_rate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `source_currency` int NOT NULL,
  `target_currency` int NOT NULL,
  `ratio` decimal(10,5) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_5F52B852A76BEEDB3FD5856` (`source_currency`,`target_currency`),
  KEY `IDX_5F52B852A76BEED` (`source_currency`),
  KEY `IDX_5F52B85B3FD5856` (`target_currency`),
  CONSTRAINT `FK_5F52B852A76BEED` FOREIGN KEY (`source_currency`) REFERENCES `sylius_currency` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_5F52B85B3FD5856` FOREIGN KEY (`target_currency`) REFERENCES `sylius_currency` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_exchange_rate
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sylius_gateway_config
-- ----------------------------
DROP TABLE IF EXISTS `sylius_gateway_config`;
CREATE TABLE `sylius_gateway_config` (
  `id` int NOT NULL AUTO_INCREMENT,
  `config` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `gateway_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `factory_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_gateway_config
-- ----------------------------
BEGIN;
INSERT INTO `sylius_gateway_config` VALUES (1, '[]', 'Offline', 'offline');
INSERT INTO `sylius_gateway_config` VALUES (2, '[]', 'Offline', 'offline');
COMMIT;

-- ----------------------------
-- Table structure for sylius_locale
-- ----------------------------
DROP TABLE IF EXISTS `sylius_locale`;
CREATE TABLE `sylius_locale` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7BA1286477153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_locale
-- ----------------------------
BEGIN;
INSERT INTO `sylius_locale` VALUES (1, 'en_US', '2020-12-18 17:25:09', '2020-12-18 17:25:09');
INSERT INTO `sylius_locale` VALUES (2, 'de_DE', '2020-12-18 17:25:09', '2020-12-18 17:25:09');
INSERT INTO `sylius_locale` VALUES (3, 'fr_FR', '2020-12-18 17:25:09', '2020-12-18 17:25:09');
INSERT INTO `sylius_locale` VALUES (4, 'pl_PL', '2020-12-18 17:25:09', '2020-12-18 17:25:09');
INSERT INTO `sylius_locale` VALUES (5, 'es_ES', '2020-12-18 17:25:09', '2020-12-18 17:25:09');
INSERT INTO `sylius_locale` VALUES (6, 'es_MX', '2020-12-18 17:25:09', '2020-12-18 17:25:09');
INSERT INTO `sylius_locale` VALUES (7, 'pt_PT', '2020-12-18 17:25:09', '2020-12-18 17:25:09');
INSERT INTO `sylius_locale` VALUES (8, 'zh_CN', '2020-12-18 17:25:09', '2020-12-18 17:25:09');
COMMIT;

-- ----------------------------
-- Table structure for sylius_migrations
-- ----------------------------
DROP TABLE IF EXISTS `sylius_migrations`;
CREATE TABLE `sylius_migrations` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_migrations
-- ----------------------------
BEGIN;
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\AdminApiBundle\\Migrations\\Version20161202011556', '2020-12-18 17:24:35', 2861);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\AdminApiBundle\\Migrations\\Version20170313125424', '2020-12-18 17:24:38', 1047);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\AdminApiBundle\\Migrations\\Version20170711151342', '2020-12-18 17:24:39', 1832);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161202011555', '2020-12-18 17:24:25', 6119);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161209095131', '2020-12-18 17:24:31', 28);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161214153137', '2020-12-18 17:24:31', 128);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161215103325', '2020-12-18 17:24:31', 37);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161219160441', '2020-12-18 17:24:31', 105);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161220092422', '2020-12-18 17:24:32', 20);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161221133514', '2020-12-18 17:24:32', 29);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161223091334', '2020-12-18 17:24:32', 39);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161223164558', '2020-12-18 17:24:32', 25);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170103120334', '2020-12-18 17:24:32', 16);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170109143010', '2020-12-18 17:24:32', 17);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170110120125', '2020-12-18 17:24:32', 63);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170116215417', '2020-12-18 17:24:32', 123);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170117075436', '2020-12-18 17:24:32', 31);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170120164250', '2020-12-18 17:24:32', 72);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170124221955', '2020-12-18 17:24:32', 39);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170201094058', '2020-12-18 17:24:32', 88);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170206122839', '2020-12-18 17:24:32', 14);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170206141520', '2020-12-18 17:24:32', 29);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170208102345', '2020-12-18 17:24:32', 58);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170208103250', '2020-12-18 17:24:33', 33);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170214095710', '2020-12-18 17:24:33', 104);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170214104908', '2020-12-18 17:24:33', 38);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170215143031', '2020-12-18 17:24:33', 34);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170217141621', '2020-12-18 17:24:33', 59);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170220150813', '2020-12-18 17:24:33', 39);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170223071604', '2020-12-18 17:24:33', 107);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170301135010', '2020-12-18 17:24:33', 120);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170303170201', '2020-12-18 17:24:33', 15);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170321131352', '2020-12-18 17:24:33', 52);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170327135945', '2020-12-18 17:24:33', 85);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170401200415', '2020-12-18 17:24:33', 42);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170518123056', '2020-12-18 17:24:33', 10);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170824124122', '2020-12-18 17:24:33', 81);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170913125128', '2020-12-18 17:24:34', 58);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20171003103916', '2020-12-18 17:24:34', 26);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20180102140039', '2020-12-18 17:24:34', 36);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20180226142349', '2020-12-18 17:24:34', 40);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20190109095211', '2020-12-18 17:24:34', 173);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20190109160409', '2020-12-18 17:24:34', 36);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20190204092544', '2020-12-18 17:24:34', 33);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20190416073011', '2020-12-18 17:24:34', 19);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20190607135638', '2020-12-18 17:24:34', 62);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20191024065651', '2020-12-18 17:24:34', 59);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20200110132702', '2020-12-18 17:24:34', 163);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20200122082429', '2020-12-18 17:24:34', 121);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20200202104152', '2020-12-18 17:24:35', 25);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20200309172908', '2020-12-18 17:24:35', 34);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20200325075815', '2020-12-18 17:24:35', 32);
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20200916093101', '2020-12-18 17:24:35', 38);
COMMIT;

-- ----------------------------
-- Table structure for sylius_order
-- ----------------------------
DROP TABLE IF EXISTS `sylius_order`;
CREATE TABLE `sylius_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `shipping_address_id` int DEFAULT NULL,
  `billing_address_id` int DEFAULT NULL,
  `channel_id` int DEFAULT NULL,
  `promotion_coupon_id` int DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` longtext COLLATE utf8_unicode_ci,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `checkout_completed_at` datetime DEFAULT NULL,
  `items_total` int NOT NULL,
  `adjustments_total` int NOT NULL,
  `total` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `currency_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `locale_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `checkout_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_6196A1F996901F54` (`number`),
  UNIQUE KEY `UNIQ_6196A1F94D4CFF2B` (`shipping_address_id`),
  UNIQUE KEY `UNIQ_6196A1F979D0C0E4` (`billing_address_id`),
  KEY `IDX_6196A1F972F5A1AA` (`channel_id`),
  KEY `IDX_6196A1F917B24436` (`promotion_coupon_id`),
  KEY `IDX_6196A1F99395C3F3` (`customer_id`),
  KEY `IDX_6196A1F9A393D2FB43625D9F` (`state`,`updated_at`),
  CONSTRAINT `FK_6196A1F917B24436` FOREIGN KEY (`promotion_coupon_id`) REFERENCES `sylius_promotion_coupon` (`id`),
  CONSTRAINT `FK_6196A1F94D4CFF2B` FOREIGN KEY (`shipping_address_id`) REFERENCES `sylius_address` (`id`),
  CONSTRAINT `FK_6196A1F972F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`),
  CONSTRAINT `FK_6196A1F979D0C0E4` FOREIGN KEY (`billing_address_id`) REFERENCES `sylius_address` (`id`),
  CONSTRAINT `FK_6196A1F99395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_order
-- ----------------------------
BEGIN;
INSERT INTO `sylius_order` VALUES (1, 1, 2, 1, NULL, 19, '000000001', NULL, 'fulfilled', '2020-01-30 09:08:29', 100364, 736, 101100, '2020-12-18 17:25:21', '2020-12-18 17:25:21', 'USD', 'en_US', 'completed', 'paid', 'shipped', 'xVXyauSq4B', NULL);
INSERT INTO `sylius_order` VALUES (2, 4, 5, 1, NULL, 19, '000000002', 'Nam officia magni qui sunt nostrum dolorum.', 'fulfilled', '2020-02-03 12:25:24', 7708, 736, 8444, '2020-12-18 17:25:21', '2020-12-18 17:25:22', 'USD', 'en_US', 'completed', 'paid', 'shipped', '8bQu3CpXNr', NULL);
INSERT INTO `sylius_order` VALUES (3, 7, 8, 1, NULL, 21, '000000003', NULL, 'fulfilled', '2020-02-15 17:28:20', 2678, 736, 3414, '2020-12-18 17:25:22', '2020-12-18 17:25:22', 'USD', 'en_US', 'completed', 'paid', 'shipped', 'pb7iN8YoPh', NULL);
INSERT INTO `sylius_order` VALUES (4, 10, 11, 1, NULL, 18, '000000004', 'Nisi quos quis tenetur dolore magnam et.', 'fulfilled', '2020-03-23 14:45:19', 75226, 736, 75962, '2020-12-18 17:25:22', '2020-12-18 17:25:22', 'USD', 'en_US', 'completed', 'paid', 'shipped', 'PQtMLqF78u', NULL);
INSERT INTO `sylius_order` VALUES (5, 13, 14, 1, NULL, 9, '000000005', NULL, 'fulfilled', '2020-05-10 10:19:19', 40864, 736, 41600, '2020-12-18 17:25:22', '2020-12-18 17:25:22', 'USD', 'en_US', 'completed', 'paid', 'shipped', 'opIzwJyykh', NULL);
INSERT INTO `sylius_order` VALUES (6, 16, 17, 1, NULL, 6, '000000006', NULL, 'fulfilled', '2020-07-21 17:26:11', 42222, 736, 42958, '2020-12-18 17:25:22', '2020-12-18 17:25:22', 'USD', 'en_US', 'completed', 'paid', 'shipped', '~28EQRGil8', NULL);
INSERT INTO `sylius_order` VALUES (7, 19, 20, 1, NULL, 11, '000000007', NULL, 'fulfilled', '2020-08-15 12:31:10', 9484, 736, 10220, '2020-12-18 17:25:22', '2020-12-18 17:25:22', 'USD', 'en_US', 'completed', 'paid', 'shipped', '0nWOjcjPKU', NULL);
INSERT INTO `sylius_order` VALUES (8, 22, 23, 1, NULL, 20, '000000008', NULL, 'fulfilled', '2020-09-12 23:51:27', 16992, 736, 17728, '2020-12-18 17:25:22', '2020-12-18 17:25:23', 'USD', 'en_US', 'completed', 'paid', 'shipped', 'vyRhz4oQ7F', NULL);
INSERT INTO `sylius_order` VALUES (9, 25, 26, 1, NULL, 18, '000000009', 'Est quae molestiae a ad occaecati labore ratione.', 'fulfilled', '2020-10-18 09:43:03', 22095, 736, 22831, '2020-12-18 17:25:23', '2020-12-18 17:25:23', 'USD', 'en_US', 'completed', 'paid', 'shipped', 'jhUWa1no65', NULL);
INSERT INTO `sylius_order` VALUES (10, 28, 29, 1, NULL, 12, '000000010', 'Et nemo voluptatum recusandae ut officiis.', 'fulfilled', '2020-10-29 02:15:07', 60081, 736, 60817, '2020-12-18 17:25:23', '2020-12-18 17:25:23', 'USD', 'en_US', 'completed', 'paid', 'shipped', '_mDkJUA_Ya', NULL);
INSERT INTO `sylius_order` VALUES (11, 31, 32, 1, NULL, 1, '000000011', NULL, 'fulfilled', '2020-12-14 09:49:34', 6225, 736, 6961, '2020-12-18 17:25:23', '2020-12-18 17:25:23', 'USD', 'en_US', 'completed', 'paid', 'shipped', 'CtgSx0gq8x', NULL);
INSERT INTO `sylius_order` VALUES (12, 34, 35, 1, NULL, 18, '000000012', 'Nulla repudiandae alias libero est cum nesciunt.', 'fulfilled', '2020-12-17 20:59:14', 51636, 736, 52372, '2020-12-18 17:25:23', '2020-12-18 17:25:23', 'USD', 'en_US', 'completed', 'paid', 'shipped', 'CoX269Wj7M', NULL);
INSERT INTO `sylius_order` VALUES (13, 37, 38, 1, NULL, 7, '000000013', NULL, 'new', '2020-02-17 09:50:16', 48523, 736, 49259, '2020-12-18 17:25:24', '2020-12-18 17:25:24', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'GgYffZpkkR', NULL);
INSERT INTO `sylius_order` VALUES (14, 40, 41, 1, NULL, 21, '000000014', NULL, 'new', '2020-04-27 06:59:48', 22114, 736, 22850, '2020-12-18 17:25:24', '2020-12-18 17:25:24', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'Kn4dVNPVSV', NULL);
INSERT INTO `sylius_order` VALUES (15, 43, 44, 1, NULL, 7, '000000015', 'Corporis neque ab et suscipit qui deserunt.', 'new', '2020-06-26 11:42:14', 65421, 736, 66157, '2020-12-18 17:25:24', '2020-12-18 17:25:24', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'vyEkYXZZIz', NULL);
INSERT INTO `sylius_order` VALUES (16, 46, 47, 1, NULL, 16, '000000016', NULL, 'new', '2020-09-07 06:44:52', 9754, 736, 10490, '2020-12-18 17:25:24', '2020-12-18 17:25:25', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', '4-jqAsD3GP', NULL);
INSERT INTO `sylius_order` VALUES (17, 49, 50, 1, NULL, 16, '000000017', 'Ipsum magnam pariatur et consequuntur ipsa perferendis vero.', 'new', '2020-10-10 05:27:25', 13535, 736, 14271, '2020-12-18 17:25:25', '2020-12-18 17:25:25', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', '26~NfKkYo9', NULL);
INSERT INTO `sylius_order` VALUES (18, 52, 53, 1, NULL, 6, '000000018', NULL, 'new', '2020-11-20 08:38:27', 79916, 736, 80652, '2020-12-18 17:25:25', '2020-12-18 17:25:25', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'dVATMhJdWi', NULL);
INSERT INTO `sylius_order` VALUES (19, 55, 56, 1, NULL, 7, '000000019', NULL, 'new', '2020-11-23 10:28:50', 12586, 736, 13322, '2020-12-18 17:25:25', '2020-12-18 17:25:25', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', '32oRUx-q5p', NULL);
INSERT INTO `sylius_order` VALUES (20, 58, 59, 1, NULL, 5, '000000020', NULL, 'new', '2020-12-05 00:48:45', 381, 736, 1117, '2020-12-18 17:25:25', '2020-12-18 17:25:25', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'n__w8h0vlE', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sylius_order_item
-- ----------------------------
DROP TABLE IF EXISTS `sylius_order_item`;
CREATE TABLE `sylius_order_item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `variant_id` int NOT NULL,
  `quantity` int NOT NULL,
  `unit_price` int NOT NULL,
  `units_total` int NOT NULL,
  `adjustments_total` int NOT NULL,
  `total` int NOT NULL,
  `is_immutable` tinyint(1) NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `variant_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_77B587ED8D9F6D38` (`order_id`),
  KEY `IDX_77B587ED3B69A9AF` (`variant_id`),
  CONSTRAINT `FK_77B587ED3B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`),
  CONSTRAINT `FK_77B587ED8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_order_item
-- ----------------------------
BEGIN;
INSERT INTO `sylius_order_item` VALUES (1, 1, 1, 5, 4761, 23569, 0, 23569, 0, 'Everyday white basic T-Shirt', 'S');
INSERT INTO `sylius_order_item` VALUES (2, 1, 44, 3, 2348, 6975, 0, 6975, 0, 'Beige strappy summer dress', 'XL Petite');
INSERT INTO `sylius_order_item` VALUES (3, 1, 98, 4, 9762, 38663, 0, 38663, 0, '007M black elegance jeans', 'XL');
INSERT INTO `sylius_order_item` VALUES (4, 1, 119, 5, 2685, 13293, 0, 13293, 0, '666F boyfriend jeans with rips', 'XXL');
INSERT INTO `sylius_order_item` VALUES (5, 1, 118, 2, 9021, 17864, 0, 17864, 0, '666F boyfriend jeans with rips', 'XL');
INSERT INTO `sylius_order_item` VALUES (6, 2, 2, 4, 1927, 7708, 0, 7708, 0, 'Everyday white basic T-Shirt', 'M');
INSERT INTO `sylius_order_item` VALUES (7, 3, 5, 1, 2678, 2678, 0, 2678, 0, 'Everyday white basic T-Shirt', 'XXL');
INSERT INTO `sylius_order_item` VALUES (8, 4, 87, 3, 2105, 6232, 0, 6232, 0, '330M slim fit jeans', 'L');
INSERT INTO `sylius_order_item` VALUES (9, 4, 75, 4, 6053, 23894, 0, 23894, 0, 'Ruffle wrap festival dress', 'XL Regular');
INSERT INTO `sylius_order_item` VALUES (10, 4, 101, 1, 7614, 7514, 0, 7514, 0, '727F patched cropped jeans', 'M');
INSERT INTO `sylius_order_item` VALUES (11, 4, 15, 5, 156, 770, 0, 770, 0, 'Ribbed copper slim fit Tee', 'XXL');
INSERT INTO `sylius_order_item` VALUES (12, 4, 41, 5, 7461, 36816, 0, 36816, 0, 'Beige strappy summer dress', 'L Petite');
INSERT INTO `sylius_order_item` VALUES (13, 5, 42, 5, 3186, 15549, 0, 15549, 0, 'Beige strappy summer dress', 'L Regular');
INSERT INTO `sylius_order_item` VALUES (14, 5, 31, 2, 8437, 16471, 0, 16471, 0, 'Knitted burgundy winter cap', '');
INSERT INTO `sylius_order_item` VALUES (15, 5, 39, 3, 865, 2533, 0, 2533, 0, 'Beige strappy summer dress', 'M Regular');
INSERT INTO `sylius_order_item` VALUES (16, 5, 16, 1, 6465, 6311, 0, 6311, 0, 'Sport basic white T-Shirt', 'S');
INSERT INTO `sylius_order_item` VALUES (17, 6, 16, 1, 6465, 6315, 0, 6315, 0, 'Sport basic white T-Shirt', 'S');
INSERT INTO `sylius_order_item` VALUES (18, 6, 17, 4, 6379, 24926, 0, 24926, 0, 'Sport basic white T-Shirt', 'M');
INSERT INTO `sylius_order_item` VALUES (19, 6, 92, 3, 2852, 8358, 0, 8358, 0, '990M regular fit jeans', 'L');
INSERT INTO `sylius_order_item` VALUES (20, 6, 119, 1, 2685, 2623, 0, 2623, 0, '666F boyfriend jeans with rips', 'XXL');
INSERT INTO `sylius_order_item` VALUES (21, 7, 110, 2, 5242, 9484, 0, 9484, 0, '000F office grey jeans', 'S');
INSERT INTO `sylius_order_item` VALUES (22, 8, 111, 3, 2426, 6874, 0, 6874, 0, '000F office grey jeans', 'M');
INSERT INTO `sylius_order_item` VALUES (23, 8, 32, 5, 2075, 9798, 0, 9798, 0, 'Knitted wool-blend green cap', '');
INSERT INTO `sylius_order_item` VALUES (24, 8, 48, 1, 339, 320, 0, 320, 0, 'Beige strappy summer dress', 'XXL Regular');
INSERT INTO `sylius_order_item` VALUES (25, 9, 8, 3, 1017, 2919, 0, 2919, 0, 'Loose white designer T-Shirt', 'L');
INSERT INTO `sylius_order_item` VALUES (26, 9, 93, 4, 5011, 19176, 0, 19176, 0, '990M regular fit jeans', 'XL');
INSERT INTO `sylius_order_item` VALUES (27, 10, 25, 1, 9638, 9479, 0, 9479, 0, 'Raglan grey & black Tee', 'XXL');
INSERT INTO `sylius_order_item` VALUES (28, 10, 87, 3, 2105, 6212, 0, 6212, 0, '330M slim fit jeans', 'L');
INSERT INTO `sylius_order_item` VALUES (29, 10, 97, 4, 8145, 32047, 0, 32047, 0, '007M black elegance jeans', 'L');
INSERT INTO `sylius_order_item` VALUES (30, 10, 37, 2, 6274, 12343, 0, 12343, 0, 'Beige strappy summer dress', 'S Tall');
INSERT INTO `sylius_order_item` VALUES (31, 11, 32, 3, 2075, 6225, 0, 6225, 0, 'Knitted wool-blend green cap', '');
INSERT INTO `sylius_order_item` VALUES (32, 12, 32, 5, 2075, 10178, 0, 10178, 0, 'Knitted wool-blend green cap', '');
INSERT INTO `sylius_order_item` VALUES (33, 12, 16, 5, 6465, 31711, 0, 31711, 0, 'Sport basic white T-Shirt', 'S');
INSERT INTO `sylius_order_item` VALUES (34, 12, 80, 3, 774, 2278, 0, 2278, 0, '911M regular fit jeans', 'S');
INSERT INTO `sylius_order_item` VALUES (35, 12, 101, 1, 7614, 7469, 0, 7469, 0, '727F patched cropped jeans', 'M');
INSERT INTO `sylius_order_item` VALUES (36, 13, 100, 3, 121, 356, 0, 356, 0, '727F patched cropped jeans', 'S');
INSERT INTO `sylius_order_item` VALUES (37, 13, 81, 5, 3478, 17039, 0, 17039, 0, '911M regular fit jeans', 'M');
INSERT INTO `sylius_order_item` VALUES (38, 13, 102, 2, 5200, 10190, 0, 10190, 0, '727F patched cropped jeans', 'L');
INSERT INTO `sylius_order_item` VALUES (39, 13, 105, 3, 3080, 9053, 0, 9053, 0, '111F patched jeans with fancy badges', 'S');
INSERT INTO `sylius_order_item` VALUES (40, 13, 111, 5, 2426, 11885, 0, 11885, 0, '000F office grey jeans', 'M');
INSERT INTO `sylius_order_item` VALUES (41, 14, 91, 2, 1380, 2760, 0, 2760, 0, '990M regular fit jeans', 'M');
INSERT INTO `sylius_order_item` VALUES (42, 14, 105, 3, 3080, 9240, 0, 9240, 0, '111F patched jeans with fancy badges', 'S');
INSERT INTO `sylius_order_item` VALUES (43, 14, 109, 1, 556, 556, 0, 556, 0, '111F patched jeans with fancy badges', 'XXL');
INSERT INTO `sylius_order_item` VALUES (44, 14, 42, 3, 3186, 9558, 0, 9558, 0, 'Beige strappy summer dress', 'L Regular');
INSERT INTO `sylius_order_item` VALUES (45, 15, 112, 4, 4446, 17784, 0, 17784, 0, '000F office grey jeans', 'L');
INSERT INTO `sylius_order_item` VALUES (46, 15, 99, 5, 4312, 21560, 0, 21560, 0, '007M black elegance jeans', 'XXL');
INSERT INTO `sylius_order_item` VALUES (47, 15, 13, 5, 3593, 17965, 0, 17965, 0, 'Ribbed copper slim fit Tee', 'L');
INSERT INTO `sylius_order_item` VALUES (48, 15, 108, 1, 8112, 8112, 0, 8112, 0, '111F patched jeans with fancy badges', 'XL');
INSERT INTO `sylius_order_item` VALUES (49, 16, 15, 2, 156, 312, 0, 312, 0, 'Ribbed copper slim fit Tee', 'XXL');
INSERT INTO `sylius_order_item` VALUES (50, 16, 34, 2, 4721, 9442, 0, 9442, 0, 'Cashmere-blend violet beanie', '');
INSERT INTO `sylius_order_item` VALUES (51, 17, 95, 1, 1185, 1185, 0, 1185, 0, '007M black elegance jeans', 'S');
INSERT INTO `sylius_order_item` VALUES (52, 17, 33, 5, 1109, 5545, 0, 5545, 0, 'Knitted white pompom cap', '');
INSERT INTO `sylius_order_item` VALUES (53, 17, 8, 1, 1017, 1017, 0, 1017, 0, 'Loose white designer T-Shirt', 'L');
INSERT INTO `sylius_order_item` VALUES (54, 17, 9, 1, 5183, 5183, 0, 5183, 0, 'Loose white designer T-Shirt', 'XL');
INSERT INTO `sylius_order_item` VALUES (55, 17, 100, 5, 121, 605, 0, 605, 0, '727F patched cropped jeans', 'S');
INSERT INTO `sylius_order_item` VALUES (56, 18, 104, 6, 6635, 39810, 0, 39810, 0, '727F patched cropped jeans', 'XXL');
INSERT INTO `sylius_order_item` VALUES (57, 18, 34, 3, 4721, 14163, 0, 14163, 0, 'Cashmere-blend violet beanie', '');
INSERT INTO `sylius_order_item` VALUES (58, 18, 113, 4, 158, 632, 0, 632, 0, '000F office grey jeans', 'XL');
INSERT INTO `sylius_order_item` VALUES (59, 18, 31, 3, 8437, 25311, 0, 25311, 0, 'Knitted burgundy winter cap', '');
INSERT INTO `sylius_order_item` VALUES (60, 19, 78, 2, 6293, 12586, 0, 12586, 0, 'Ruffle wrap festival dress', 'XXL Regular');
INSERT INTO `sylius_order_item` VALUES (61, 20, 72, 3, 127, 381, 0, 381, 0, 'Ruffle wrap festival dress', 'L Regular');
COMMIT;

-- ----------------------------
-- Table structure for sylius_order_item_unit
-- ----------------------------
DROP TABLE IF EXISTS `sylius_order_item_unit`;
CREATE TABLE `sylius_order_item_unit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_item_id` int NOT NULL,
  `shipment_id` int DEFAULT NULL,
  `adjustments_total` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_82BF226EE415FB15` (`order_item_id`),
  KEY `IDX_82BF226E7BE036FC` (`shipment_id`),
  CONSTRAINT `FK_82BF226E7BE036FC` FOREIGN KEY (`shipment_id`) REFERENCES `sylius_shipment` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_82BF226EE415FB15` FOREIGN KEY (`order_item_id`) REFERENCES `sylius_order_item` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_order_item_unit
-- ----------------------------
BEGIN;
INSERT INTO `sylius_order_item_unit` VALUES (1, 1, 1, -48, '2020-12-18 17:25:21', '2020-12-18 17:25:21');
INSERT INTO `sylius_order_item_unit` VALUES (2, 1, 1, -47, '2020-12-18 17:25:21', '2020-12-18 17:25:21');
INSERT INTO `sylius_order_item_unit` VALUES (3, 1, 1, -47, '2020-12-18 17:25:21', '2020-12-18 17:25:21');
INSERT INTO `sylius_order_item_unit` VALUES (4, 1, 1, -47, '2020-12-18 17:25:21', '2020-12-18 17:25:21');
INSERT INTO `sylius_order_item_unit` VALUES (5, 1, 1, -47, '2020-12-18 17:25:21', '2020-12-18 17:25:21');
INSERT INTO `sylius_order_item_unit` VALUES (6, 2, 1, -23, '2020-12-18 17:25:21', '2020-12-18 17:25:21');
INSERT INTO `sylius_order_item_unit` VALUES (7, 2, 1, -23, '2020-12-18 17:25:21', '2020-12-18 17:25:21');
INSERT INTO `sylius_order_item_unit` VALUES (8, 2, 1, -23, '2020-12-18 17:25:21', '2020-12-18 17:25:21');
INSERT INTO `sylius_order_item_unit` VALUES (9, 3, 1, -97, '2020-12-18 17:25:21', '2020-12-18 17:25:21');
INSERT INTO `sylius_order_item_unit` VALUES (10, 3, 1, -96, '2020-12-18 17:25:21', '2020-12-18 17:25:21');
INSERT INTO `sylius_order_item_unit` VALUES (11, 3, 1, -96, '2020-12-18 17:25:21', '2020-12-18 17:25:21');
INSERT INTO `sylius_order_item_unit` VALUES (12, 3, 1, -96, '2020-12-18 17:25:21', '2020-12-18 17:25:21');
INSERT INTO `sylius_order_item_unit` VALUES (13, 4, 1, -27, '2020-12-18 17:25:21', '2020-12-18 17:25:21');
INSERT INTO `sylius_order_item_unit` VALUES (14, 4, 1, -27, '2020-12-18 17:25:21', '2020-12-18 17:25:21');
INSERT INTO `sylius_order_item_unit` VALUES (15, 4, 1, -26, '2020-12-18 17:25:21', '2020-12-18 17:25:21');
INSERT INTO `sylius_order_item_unit` VALUES (16, 4, 1, -26, '2020-12-18 17:25:21', '2020-12-18 17:25:21');
INSERT INTO `sylius_order_item_unit` VALUES (17, 4, 1, -26, '2020-12-18 17:25:21', '2020-12-18 17:25:21');
INSERT INTO `sylius_order_item_unit` VALUES (18, 5, 1, -89, '2020-12-18 17:25:21', '2020-12-18 17:25:21');
INSERT INTO `sylius_order_item_unit` VALUES (19, 5, 1, -89, '2020-12-18 17:25:21', '2020-12-18 17:25:21');
INSERT INTO `sylius_order_item_unit` VALUES (20, 6, 2, 0, '2020-12-18 17:25:21', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (21, 6, 2, 0, '2020-12-18 17:25:21', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (22, 6, 2, 0, '2020-12-18 17:25:21', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (23, 6, 2, 0, '2020-12-18 17:25:21', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (24, 7, 3, 0, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (25, 8, 4, -28, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (26, 8, 4, -28, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (27, 8, 4, -27, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (28, 9, 4, -80, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (29, 9, 4, -80, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (30, 9, 4, -79, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (31, 9, 4, -79, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (32, 10, 4, -100, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (33, 11, 4, -2, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (34, 11, 4, -2, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (35, 11, 4, -2, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (36, 11, 4, -2, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (37, 11, 4, -2, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (38, 12, 4, -98, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (39, 12, 4, -98, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (40, 12, 4, -98, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (41, 12, 4, -98, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (42, 12, 4, -97, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (43, 13, 5, -77, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (44, 13, 5, -76, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (45, 13, 5, -76, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (46, 13, 5, -76, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (47, 13, 5, -76, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (48, 14, 5, -202, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (49, 14, 5, -201, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (50, 15, 5, -21, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (51, 15, 5, -21, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (52, 15, 5, -20, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (53, 16, 5, -154, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (54, 17, 6, -150, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (55, 18, 6, -148, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (56, 18, 6, -148, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (57, 18, 6, -147, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (58, 18, 6, -147, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (59, 19, 6, -66, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (60, 19, 6, -66, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (61, 19, 6, -66, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (62, 20, 6, -62, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (63, 21, 7, -500, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (64, 21, 7, -500, '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_order_item_unit` VALUES (65, 22, 8, -135, '2020-12-18 17:25:22', '2020-12-18 17:25:23');
INSERT INTO `sylius_order_item_unit` VALUES (66, 22, 8, -135, '2020-12-18 17:25:22', '2020-12-18 17:25:23');
INSERT INTO `sylius_order_item_unit` VALUES (67, 22, 8, -134, '2020-12-18 17:25:22', '2020-12-18 17:25:23');
INSERT INTO `sylius_order_item_unit` VALUES (68, 23, 8, -116, '2020-12-18 17:25:22', '2020-12-18 17:25:23');
INSERT INTO `sylius_order_item_unit` VALUES (69, 23, 8, -116, '2020-12-18 17:25:22', '2020-12-18 17:25:23');
INSERT INTO `sylius_order_item_unit` VALUES (70, 23, 8, -115, '2020-12-18 17:25:22', '2020-12-18 17:25:23');
INSERT INTO `sylius_order_item_unit` VALUES (71, 23, 8, -115, '2020-12-18 17:25:22', '2020-12-18 17:25:23');
INSERT INTO `sylius_order_item_unit` VALUES (72, 23, 8, -115, '2020-12-18 17:25:22', '2020-12-18 17:25:23');
INSERT INTO `sylius_order_item_unit` VALUES (73, 24, 8, -19, '2020-12-18 17:25:22', '2020-12-18 17:25:23');
INSERT INTO `sylius_order_item_unit` VALUES (74, 25, 9, -44, '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_order_item_unit` VALUES (75, 25, 9, -44, '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_order_item_unit` VALUES (76, 25, 9, -44, '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_order_item_unit` VALUES (77, 26, 9, -217, '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_order_item_unit` VALUES (78, 26, 9, -217, '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_order_item_unit` VALUES (79, 26, 9, -217, '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_order_item_unit` VALUES (80, 26, 9, -217, '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_order_item_unit` VALUES (81, 27, 10, -159, '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_order_item_unit` VALUES (82, 28, 10, -35, '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_order_item_unit` VALUES (83, 28, 10, -34, '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_order_item_unit` VALUES (84, 28, 10, -34, '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_order_item_unit` VALUES (85, 29, 10, -134, '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_order_item_unit` VALUES (86, 29, 10, -133, '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_order_item_unit` VALUES (87, 29, 10, -133, '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_order_item_unit` VALUES (88, 29, 10, -133, '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_order_item_unit` VALUES (89, 30, 10, -103, '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_order_item_unit` VALUES (90, 30, 10, -102, '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_order_item_unit` VALUES (91, 31, 11, 0, '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_order_item_unit` VALUES (92, 31, 11, 0, '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_order_item_unit` VALUES (93, 31, 11, 0, '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_order_item_unit` VALUES (94, 32, 12, -40, '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_order_item_unit` VALUES (95, 32, 12, -40, '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_order_item_unit` VALUES (96, 32, 12, -39, '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_order_item_unit` VALUES (97, 32, 12, -39, '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_order_item_unit` VALUES (98, 32, 12, -39, '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_order_item_unit` VALUES (99, 33, 12, -123, '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_order_item_unit` VALUES (100, 33, 12, -123, '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_order_item_unit` VALUES (101, 33, 12, -123, '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_order_item_unit` VALUES (102, 33, 12, -123, '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_order_item_unit` VALUES (103, 33, 12, -122, '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_order_item_unit` VALUES (104, 34, 12, -15, '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_order_item_unit` VALUES (105, 34, 12, -15, '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_order_item_unit` VALUES (106, 34, 12, -14, '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_order_item_unit` VALUES (107, 35, 12, -145, '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_order_item_unit` VALUES (108, 36, 13, -3, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_order_item_unit` VALUES (109, 36, 13, -2, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_order_item_unit` VALUES (110, 36, 13, -2, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_order_item_unit` VALUES (111, 37, 13, -71, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_order_item_unit` VALUES (112, 37, 13, -70, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_order_item_unit` VALUES (113, 37, 13, -70, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_order_item_unit` VALUES (114, 37, 13, -70, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_order_item_unit` VALUES (115, 37, 13, -70, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_order_item_unit` VALUES (116, 38, 13, -105, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_order_item_unit` VALUES (117, 38, 13, -105, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_order_item_unit` VALUES (118, 39, 13, -63, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_order_item_unit` VALUES (119, 39, 13, -62, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_order_item_unit` VALUES (120, 39, 13, -62, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_order_item_unit` VALUES (121, 40, 13, -49, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_order_item_unit` VALUES (122, 40, 13, -49, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_order_item_unit` VALUES (123, 40, 13, -49, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_order_item_unit` VALUES (124, 40, 13, -49, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_order_item_unit` VALUES (125, 40, 13, -49, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_order_item_unit` VALUES (126, 41, 14, 0, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_order_item_unit` VALUES (127, 41, 14, 0, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_order_item_unit` VALUES (128, 42, 14, 0, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_order_item_unit` VALUES (129, 42, 14, 0, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_order_item_unit` VALUES (130, 42, 14, 0, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_order_item_unit` VALUES (131, 43, 14, 0, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_order_item_unit` VALUES (132, 44, 14, 0, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_order_item_unit` VALUES (133, 44, 14, 0, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_order_item_unit` VALUES (134, 44, 14, 0, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_order_item_unit` VALUES (135, 45, 15, 0, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_order_item_unit` VALUES (136, 45, 15, 0, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_order_item_unit` VALUES (137, 45, 15, 0, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_order_item_unit` VALUES (138, 45, 15, 0, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_order_item_unit` VALUES (139, 46, 15, 0, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_order_item_unit` VALUES (140, 46, 15, 0, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_order_item_unit` VALUES (141, 46, 15, 0, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_order_item_unit` VALUES (142, 46, 15, 0, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_order_item_unit` VALUES (143, 46, 15, 0, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_order_item_unit` VALUES (144, 47, 15, 0, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_order_item_unit` VALUES (145, 47, 15, 0, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_order_item_unit` VALUES (146, 47, 15, 0, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_order_item_unit` VALUES (147, 47, 15, 0, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_order_item_unit` VALUES (148, 47, 15, 0, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_order_item_unit` VALUES (149, 48, 15, 0, '2020-12-18 17:25:24', '2020-12-18 17:25:24');
INSERT INTO `sylius_order_item_unit` VALUES (150, 49, 16, 0, '2020-12-18 17:25:24', '2020-12-18 17:25:25');
INSERT INTO `sylius_order_item_unit` VALUES (151, 49, 16, 0, '2020-12-18 17:25:24', '2020-12-18 17:25:25');
INSERT INTO `sylius_order_item_unit` VALUES (152, 50, 16, 0, '2020-12-18 17:25:24', '2020-12-18 17:25:25');
INSERT INTO `sylius_order_item_unit` VALUES (153, 50, 16, 0, '2020-12-18 17:25:24', '2020-12-18 17:25:25');
INSERT INTO `sylius_order_item_unit` VALUES (154, 51, 17, 0, '2020-12-18 17:25:25', '2020-12-18 17:25:25');
INSERT INTO `sylius_order_item_unit` VALUES (155, 52, 17, 0, '2020-12-18 17:25:25', '2020-12-18 17:25:25');
INSERT INTO `sylius_order_item_unit` VALUES (156, 52, 17, 0, '2020-12-18 17:25:25', '2020-12-18 17:25:25');
INSERT INTO `sylius_order_item_unit` VALUES (157, 52, 17, 0, '2020-12-18 17:25:25', '2020-12-18 17:25:25');
INSERT INTO `sylius_order_item_unit` VALUES (158, 52, 17, 0, '2020-12-18 17:25:25', '2020-12-18 17:25:25');
INSERT INTO `sylius_order_item_unit` VALUES (159, 52, 17, 0, '2020-12-18 17:25:25', '2020-12-18 17:25:25');
INSERT INTO `sylius_order_item_unit` VALUES (160, 53, 17, 0, '2020-12-18 17:25:25', '2020-12-18 17:25:25');
INSERT INTO `sylius_order_item_unit` VALUES (161, 54, 17, 0, '2020-12-18 17:25:25', '2020-12-18 17:25:25');
INSERT INTO `sylius_order_item_unit` VALUES (162, 55, 17, 0, '2020-12-18 17:25:25', '2020-12-18 17:25:25');
INSERT INTO `sylius_order_item_unit` VALUES (163, 55, 17, 0, '2020-12-18 17:25:25', '2020-12-18 17:25:25');
INSERT INTO `sylius_order_item_unit` VALUES (164, 55, 17, 0, '2020-12-18 17:25:25', '2020-12-18 17:25:25');
INSERT INTO `sylius_order_item_unit` VALUES (165, 55, 17, 0, '2020-12-18 17:25:25', '2020-12-18 17:25:25');
INSERT INTO `sylius_order_item_unit` VALUES (166, 55, 17, 0, '2020-12-18 17:25:25', '2020-12-18 17:25:25');
INSERT INTO `sylius_order_item_unit` VALUES (167, 56, 18, 0, '2020-12-18 17:25:25', '2020-12-18 17:25:25');
INSERT INTO `sylius_order_item_unit` VALUES (168, 56, 18, 0, '2020-12-18 17:25:25', '2020-12-18 17:25:25');
INSERT INTO `sylius_order_item_unit` VALUES (169, 56, 18, 0, '2020-12-18 17:25:25', '2020-12-18 17:25:25');
INSERT INTO `sylius_order_item_unit` VALUES (170, 56, 18, 0, '2020-12-18 17:25:25', '2020-12-18 17:25:25');
INSERT INTO `sylius_order_item_unit` VALUES (171, 56, 18, 0, '2020-12-18 17:25:25', '2020-12-18 17:25:25');
INSERT INTO `sylius_order_item_unit` VALUES (172, 56, 18, 0, '2020-12-18 17:25:25', '2020-12-18 17:25:25');
INSERT INTO `sylius_order_item_unit` VALUES (173, 57, 18, 0, '2020-12-18 17:25:25', '2020-12-18 17:25:25');
INSERT INTO `sylius_order_item_unit` VALUES (174, 57, 18, 0, '2020-12-18 17:25:25', '2020-12-18 17:25:25');
INSERT INTO `sylius_order_item_unit` VALUES (175, 57, 18, 0, '2020-12-18 17:25:25', '2020-12-18 17:25:25');
INSERT INTO `sylius_order_item_unit` VALUES (176, 58, 18, 0, '2020-12-18 17:25:25', '2020-12-18 17:25:25');
INSERT INTO `sylius_order_item_unit` VALUES (177, 58, 18, 0, '2020-12-18 17:25:25', '2020-12-18 17:25:25');
INSERT INTO `sylius_order_item_unit` VALUES (178, 58, 18, 0, '2020-12-18 17:25:25', '2020-12-18 17:25:25');
INSERT INTO `sylius_order_item_unit` VALUES (179, 58, 18, 0, '2020-12-18 17:25:25', '2020-12-18 17:25:25');
INSERT INTO `sylius_order_item_unit` VALUES (180, 59, 18, 0, '2020-12-18 17:25:25', '2020-12-18 17:25:25');
INSERT INTO `sylius_order_item_unit` VALUES (181, 59, 18, 0, '2020-12-18 17:25:25', '2020-12-18 17:25:25');
INSERT INTO `sylius_order_item_unit` VALUES (182, 59, 18, 0, '2020-12-18 17:25:25', '2020-12-18 17:25:25');
INSERT INTO `sylius_order_item_unit` VALUES (183, 60, 19, 0, '2020-12-18 17:25:25', '2020-12-18 17:25:25');
INSERT INTO `sylius_order_item_unit` VALUES (184, 60, 19, 0, '2020-12-18 17:25:25', '2020-12-18 17:25:25');
INSERT INTO `sylius_order_item_unit` VALUES (185, 61, 20, 0, '2020-12-18 17:25:25', '2020-12-18 17:25:25');
INSERT INTO `sylius_order_item_unit` VALUES (186, 61, 20, 0, '2020-12-18 17:25:25', '2020-12-18 17:25:25');
INSERT INTO `sylius_order_item_unit` VALUES (187, 61, 20, 0, '2020-12-18 17:25:25', '2020-12-18 17:25:25');
COMMIT;

-- ----------------------------
-- Table structure for sylius_order_sequence
-- ----------------------------
DROP TABLE IF EXISTS `sylius_order_sequence`;
CREATE TABLE `sylius_order_sequence` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idx` int NOT NULL,
  `version` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_order_sequence
-- ----------------------------
BEGIN;
INSERT INTO `sylius_order_sequence` VALUES (1, 20, 4);
COMMIT;

-- ----------------------------
-- Table structure for sylius_payment
-- ----------------------------
DROP TABLE IF EXISTS `sylius_payment`;
CREATE TABLE `sylius_payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `method_id` int DEFAULT NULL,
  `order_id` int NOT NULL,
  `currency_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D9191BD419883967` (`method_id`),
  KEY `IDX_D9191BD48D9F6D38` (`order_id`),
  CONSTRAINT `FK_D9191BD419883967` FOREIGN KEY (`method_id`) REFERENCES `sylius_payment_method` (`id`),
  CONSTRAINT `FK_D9191BD48D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_payment
-- ----------------------------
BEGIN;
INSERT INTO `sylius_payment` VALUES (1, 2, 1, 'USD', 101100, 'completed', '[]', '2020-01-30 09:08:29', '2020-12-18 17:25:21');
INSERT INTO `sylius_payment` VALUES (2, 1, 2, 'USD', 8444, 'completed', '[]', '2020-02-03 12:25:24', '2020-12-18 17:25:22');
INSERT INTO `sylius_payment` VALUES (3, 2, 3, 'USD', 3414, 'completed', '[]', '2020-02-15 17:28:20', '2020-12-18 17:25:22');
INSERT INTO `sylius_payment` VALUES (4, 2, 4, 'USD', 75962, 'completed', '[]', '2020-03-23 14:45:19', '2020-12-18 17:25:22');
INSERT INTO `sylius_payment` VALUES (5, 2, 5, 'USD', 41600, 'completed', '[]', '2020-05-10 10:19:19', '2020-12-18 17:25:22');
INSERT INTO `sylius_payment` VALUES (6, 1, 6, 'USD', 42958, 'completed', '[]', '2020-07-21 17:26:11', '2020-12-18 17:25:22');
INSERT INTO `sylius_payment` VALUES (7, 1, 7, 'USD', 10220, 'completed', '[]', '2020-08-15 12:31:10', '2020-12-18 17:25:22');
INSERT INTO `sylius_payment` VALUES (8, 2, 8, 'USD', 17728, 'completed', '[]', '2020-09-12 23:51:27', '2020-12-18 17:25:23');
INSERT INTO `sylius_payment` VALUES (9, 2, 9, 'USD', 22831, 'completed', '[]', '2020-10-18 09:43:03', '2020-12-18 17:25:23');
INSERT INTO `sylius_payment` VALUES (10, 1, 10, 'USD', 60817, 'completed', '[]', '2020-10-29 02:15:07', '2020-12-18 17:25:23');
INSERT INTO `sylius_payment` VALUES (11, 2, 11, 'USD', 6961, 'completed', '[]', '2020-12-14 09:49:34', '2020-12-18 17:25:23');
INSERT INTO `sylius_payment` VALUES (12, 1, 12, 'USD', 52372, 'completed', '[]', '2020-12-17 20:59:14', '2020-12-18 17:25:23');
INSERT INTO `sylius_payment` VALUES (13, 1, 13, 'USD', 49259, 'new', '[]', '2020-02-17 09:50:16', '2020-12-18 17:25:24');
INSERT INTO `sylius_payment` VALUES (14, 2, 14, 'USD', 22850, 'new', '[]', '2020-04-27 06:59:48', '2020-12-18 17:25:24');
INSERT INTO `sylius_payment` VALUES (15, 2, 15, 'USD', 66157, 'new', '[]', '2020-06-26 11:42:14', '2020-12-18 17:25:24');
INSERT INTO `sylius_payment` VALUES (16, 2, 16, 'USD', 10490, 'new', '[]', '2020-09-07 06:44:52', '2020-12-18 17:25:25');
INSERT INTO `sylius_payment` VALUES (17, 1, 17, 'USD', 14271, 'new', '[]', '2020-10-10 05:27:25', '2020-12-18 17:25:25');
INSERT INTO `sylius_payment` VALUES (18, 2, 18, 'USD', 80652, 'new', '[]', '2020-11-20 08:38:27', '2020-12-18 17:25:25');
INSERT INTO `sylius_payment` VALUES (19, 1, 19, 'USD', 13322, 'new', '[]', '2020-11-23 10:28:50', '2020-12-18 17:25:25');
INSERT INTO `sylius_payment` VALUES (20, 1, 20, 'USD', 1117, 'new', '[]', '2020-12-05 00:48:45', '2020-12-18 17:25:25');
COMMIT;

-- ----------------------------
-- Table structure for sylius_payment_method
-- ----------------------------
DROP TABLE IF EXISTS `sylius_payment_method`;
CREATE TABLE `sylius_payment_method` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `environment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `position` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `gateway_config_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_A75B0B0D77153098` (`code`),
  KEY `IDX_A75B0B0DF23D6140` (`gateway_config_id`),
  CONSTRAINT `FK_A75B0B0DF23D6140` FOREIGN KEY (`gateway_config_id`) REFERENCES `sylius_gateway_config` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_payment_method
-- ----------------------------
BEGIN;
INSERT INTO `sylius_payment_method` VALUES (1, 'cash_on_delivery', NULL, 1, 0, '2020-12-18 17:25:09', '2020-12-18 17:25:09', 1);
INSERT INTO `sylius_payment_method` VALUES (2, 'bank_transfer', NULL, 1, 1, '2020-12-18 17:25:09', '2020-12-18 17:25:09', 2);
COMMIT;

-- ----------------------------
-- Table structure for sylius_payment_method_channels
-- ----------------------------
DROP TABLE IF EXISTS `sylius_payment_method_channels`;
CREATE TABLE `sylius_payment_method_channels` (
  `payment_method_id` int NOT NULL,
  `channel_id` int NOT NULL,
  PRIMARY KEY (`payment_method_id`,`channel_id`),
  KEY `IDX_543AC0CC5AA1164F` (`payment_method_id`),
  KEY `IDX_543AC0CC72F5A1AA` (`channel_id`),
  CONSTRAINT `FK_543AC0CC5AA1164F` FOREIGN KEY (`payment_method_id`) REFERENCES `sylius_payment_method` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_543AC0CC72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_payment_method_channels
-- ----------------------------
BEGIN;
INSERT INTO `sylius_payment_method_channels` VALUES (1, 1);
INSERT INTO `sylius_payment_method_channels` VALUES (2, 1);
COMMIT;

-- ----------------------------
-- Table structure for sylius_payment_method_translation
-- ----------------------------
DROP TABLE IF EXISTS `sylius_payment_method_translation`;
CREATE TABLE `sylius_payment_method_translation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `translatable_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `instructions` longtext COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_payment_method_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_966BE3A12C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_966BE3A12C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_payment_method` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_payment_method_translation
-- ----------------------------
BEGIN;
INSERT INTO `sylius_payment_method_translation` VALUES (1, 1, 'Cash on delivery', 'Similique porro similique molestiae culpa autem.', NULL, 'en_US');
INSERT INTO `sylius_payment_method_translation` VALUES (2, 1, 'Cash on delivery', 'Similique porro similique molestiae culpa autem.', NULL, 'de_DE');
INSERT INTO `sylius_payment_method_translation` VALUES (3, 1, 'Cash on delivery', 'Similique porro similique molestiae culpa autem.', NULL, 'fr_FR');
INSERT INTO `sylius_payment_method_translation` VALUES (4, 1, 'Cash on delivery', 'Similique porro similique molestiae culpa autem.', NULL, 'pl_PL');
INSERT INTO `sylius_payment_method_translation` VALUES (5, 1, 'Cash on delivery', 'Similique porro similique molestiae culpa autem.', NULL, 'es_ES');
INSERT INTO `sylius_payment_method_translation` VALUES (6, 1, 'Cash on delivery', 'Similique porro similique molestiae culpa autem.', NULL, 'es_MX');
INSERT INTO `sylius_payment_method_translation` VALUES (7, 1, 'Cash on delivery', 'Similique porro similique molestiae culpa autem.', NULL, 'pt_PT');
INSERT INTO `sylius_payment_method_translation` VALUES (8, 1, 'Cash on delivery', 'Similique porro similique molestiae culpa autem.', NULL, 'zh_CN');
INSERT INTO `sylius_payment_method_translation` VALUES (9, 2, 'Bank transfer', 'Dolores suscipit sit incidunt ipsa aspernatur.', NULL, 'en_US');
INSERT INTO `sylius_payment_method_translation` VALUES (10, 2, 'Bank transfer', 'Dolores suscipit sit incidunt ipsa aspernatur.', NULL, 'de_DE');
INSERT INTO `sylius_payment_method_translation` VALUES (11, 2, 'Bank transfer', 'Dolores suscipit sit incidunt ipsa aspernatur.', NULL, 'fr_FR');
INSERT INTO `sylius_payment_method_translation` VALUES (12, 2, 'Bank transfer', 'Dolores suscipit sit incidunt ipsa aspernatur.', NULL, 'pl_PL');
INSERT INTO `sylius_payment_method_translation` VALUES (13, 2, 'Bank transfer', 'Dolores suscipit sit incidunt ipsa aspernatur.', NULL, 'es_ES');
INSERT INTO `sylius_payment_method_translation` VALUES (14, 2, 'Bank transfer', 'Dolores suscipit sit incidunt ipsa aspernatur.', NULL, 'es_MX');
INSERT INTO `sylius_payment_method_translation` VALUES (15, 2, 'Bank transfer', 'Dolores suscipit sit incidunt ipsa aspernatur.', NULL, 'pt_PT');
INSERT INTO `sylius_payment_method_translation` VALUES (16, 2, 'Bank transfer', 'Dolores suscipit sit incidunt ipsa aspernatur.', NULL, 'zh_CN');
COMMIT;

-- ----------------------------
-- Table structure for sylius_payment_security_token
-- ----------------------------
DROP TABLE IF EXISTS `sylius_payment_security_token`;
CREATE TABLE `sylius_payment_security_token` (
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:object)',
  `after_url` longtext COLLATE utf8_unicode_ci,
  `target_url` longtext COLLATE utf8_unicode_ci NOT NULL,
  `gateway_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_payment_security_token
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sylius_product
-- ----------------------------
DROP TABLE IF EXISTS `sylius_product`;
CREATE TABLE `sylius_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `main_taxon_id` int DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `variant_selection_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `average_rating` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_677B9B7477153098` (`code`),
  KEY `IDX_677B9B74731E505` (`main_taxon_id`),
  CONSTRAINT `FK_677B9B74731E505` FOREIGN KEY (`main_taxon_id`) REFERENCES `sylius_taxon` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_product
-- ----------------------------
BEGIN;
INSERT INTO `sylius_product` VALUES (1, 4, 'Everyday_white_basic_T_Shirt', '2020-12-14 16:37:05', '2020-12-18 17:25:14', 1, 'match', 0);
INSERT INTO `sylius_product` VALUES (2, 4, 'Loose_white_designer_T_Shirt', '2020-12-16 00:49:58', '2020-12-18 17:25:14', 1, 'match', 0);
INSERT INTO `sylius_product` VALUES (3, 4, 'Ribbed_copper_slim_fit_Tee', '2020-12-17 18:18:08', '2020-12-18 17:25:14', 1, 'match', 0);
INSERT INTO `sylius_product` VALUES (4, 3, 'Sport_basic_white_T_Shirt', '2020-12-12 11:57:44', '2020-12-18 17:25:14', 1, 'match', 0);
INSERT INTO `sylius_product` VALUES (5, 3, 'Raglan_grey_&_black_Tee', '2020-12-13 23:39:40', '2020-12-18 17:25:14', 1, 'match', 0);
INSERT INTO `sylius_product` VALUES (6, 3, 'Oversize_white_cotton_T_Shirt', '2020-12-15 17:26:45', '2020-12-18 17:25:14', 1, 'match', 0);
INSERT INTO `sylius_product` VALUES (7, 7, 'Knitted_burgundy_winter_cap', '2020-12-12 02:26:22', '2020-12-18 17:25:20', 1, 'match', 2);
INSERT INTO `sylius_product` VALUES (8, 6, 'Knitted_wool_blend_green_cap', '2020-12-12 21:52:22', '2020-12-18 17:25:15', 1, 'match', 0);
INSERT INTO `sylius_product` VALUES (9, 7, 'Knitted_white_pompom_cap', '2020-12-18 10:18:46', '2020-12-18 17:25:20', 1, 'match', 3);
INSERT INTO `sylius_product` VALUES (10, 6, 'Cashmere_blend_violet_beanie', '2020-12-14 15:02:18', '2020-12-18 17:25:15', 1, 'match', 0);
INSERT INTO `sylius_product` VALUES (11, 8, 'Beige_strappy_summer_dress', '2020-12-18 06:27:36', '2020-12-18 17:25:16', 1, 'match', 0);
INSERT INTO `sylius_product` VALUES (12, 8, 'Off_shoulder_boho_dress', '2020-12-16 02:55:45', '2020-12-18 17:25:20', 1, 'match', 4.5);
INSERT INTO `sylius_product` VALUES (13, 8, 'Ruffle_wrap_festival_dress', '2020-12-18 16:21:39', '2020-12-18 17:25:16', 1, 'match', 0);
INSERT INTO `sylius_product` VALUES (14, 10, '911M_regular_fit_jeans', '2020-12-14 15:45:39', '2020-12-18 17:25:17', 1, 'match', 0);
INSERT INTO `sylius_product` VALUES (15, 10, '330M_slim_fit_jeans', '2020-12-16 11:36:20', '2020-12-18 17:25:17', 1, 'match', 0);
INSERT INTO `sylius_product` VALUES (16, 10, '990M_regular_fit_jeans', '2020-12-16 07:32:13', '2020-12-18 17:25:20', 1, 'match', 2.5);
INSERT INTO `sylius_product` VALUES (17, 10, '007M_black_elegance_jeans', '2020-12-12 01:31:21', '2020-12-18 17:25:18', 1, 'match', 0);
INSERT INTO `sylius_product` VALUES (18, 11, '727F_patched_cropped_jeans', '2020-12-13 13:52:39', '2020-12-18 17:25:20', 1, 'match', 3);
INSERT INTO `sylius_product` VALUES (19, 11, '111F_patched_jeans_with_fancy_badges', '2020-12-12 18:03:20', '2020-12-18 17:25:18', 1, 'match', 0);
INSERT INTO `sylius_product` VALUES (20, 11, '000F_office_grey_jeans', '2020-12-14 07:43:10', '2020-12-18 17:25:19', 1, 'match', 5);
INSERT INTO `sylius_product` VALUES (21, 11, '666F_boyfriend_jeans_with_rips', '2020-12-13 04:55:12', '2020-12-18 17:25:18', 1, 'match', 0);
COMMIT;

-- ----------------------------
-- Table structure for sylius_product_association
-- ----------------------------
DROP TABLE IF EXISTS `sylius_product_association`;
CREATE TABLE `sylius_product_association` (
  `id` int NOT NULL AUTO_INCREMENT,
  `association_type_id` int NOT NULL,
  `product_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_association_idx` (`product_id`,`association_type_id`),
  KEY `IDX_48E9CDABB1E1C39` (`association_type_id`),
  KEY `IDX_48E9CDAB4584665A` (`product_id`),
  CONSTRAINT `FK_48E9CDAB4584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_48E9CDABB1E1C39` FOREIGN KEY (`association_type_id`) REFERENCES `sylius_product_association_type` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_product_association
-- ----------------------------
BEGIN;
INSERT INTO `sylius_product_association` VALUES (1, 1, 9, '2020-12-18 17:25:21', '2020-12-18 17:25:21');
INSERT INTO `sylius_product_association` VALUES (2, 1, 19, '2020-12-18 17:25:21', '2020-12-18 17:25:21');
INSERT INTO `sylius_product_association` VALUES (3, 1, 11, '2020-12-18 17:25:21', '2020-12-18 17:25:21');
COMMIT;

-- ----------------------------
-- Table structure for sylius_product_association_product
-- ----------------------------
DROP TABLE IF EXISTS `sylius_product_association_product`;
CREATE TABLE `sylius_product_association_product` (
  `association_id` int NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`association_id`,`product_id`),
  KEY `IDX_A427B983EFB9C8A5` (`association_id`),
  KEY `IDX_A427B9834584665A` (`product_id`),
  CONSTRAINT `FK_A427B9834584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_A427B983EFB9C8A5` FOREIGN KEY (`association_id`) REFERENCES `sylius_product_association` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_product_association_product
-- ----------------------------
BEGIN;
INSERT INTO `sylius_product_association_product` VALUES (1, 7);
INSERT INTO `sylius_product_association_product` VALUES (1, 9);
INSERT INTO `sylius_product_association_product` VALUES (2, 18);
INSERT INTO `sylius_product_association_product` VALUES (2, 20);
INSERT INTO `sylius_product_association_product` VALUES (3, 12);
INSERT INTO `sylius_product_association_product` VALUES (3, 13);
COMMIT;

-- ----------------------------
-- Table structure for sylius_product_association_type
-- ----------------------------
DROP TABLE IF EXISTS `sylius_product_association_type`;
CREATE TABLE `sylius_product_association_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CCB8914C77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_product_association_type
-- ----------------------------
BEGIN;
INSERT INTO `sylius_product_association_type` VALUES (1, 'similar_products', '2020-12-18 17:25:20', '2020-12-18 17:25:20');
COMMIT;

-- ----------------------------
-- Table structure for sylius_product_association_type_translation
-- ----------------------------
DROP TABLE IF EXISTS `sylius_product_association_type_translation`;
CREATE TABLE `sylius_product_association_type_translation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `translatable_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_association_type_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_4F618E52C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_4F618E52C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_association_type` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_product_association_type_translation
-- ----------------------------
BEGIN;
INSERT INTO `sylius_product_association_type_translation` VALUES (1, 1, 'Similar products', 'en_US');
INSERT INTO `sylius_product_association_type_translation` VALUES (2, 1, 'Similar products', 'de_DE');
INSERT INTO `sylius_product_association_type_translation` VALUES (3, 1, 'Similar products', 'fr_FR');
INSERT INTO `sylius_product_association_type_translation` VALUES (4, 1, 'Similar products', 'pl_PL');
INSERT INTO `sylius_product_association_type_translation` VALUES (5, 1, 'Similar products', 'es_ES');
INSERT INTO `sylius_product_association_type_translation` VALUES (6, 1, 'Similar products', 'es_MX');
INSERT INTO `sylius_product_association_type_translation` VALUES (7, 1, 'Similar products', 'pt_PT');
INSERT INTO `sylius_product_association_type_translation` VALUES (8, 1, 'Similar products', 'zh_CN');
COMMIT;

-- ----------------------------
-- Table structure for sylius_product_attribute
-- ----------------------------
DROP TABLE IF EXISTS `sylius_product_attribute`;
CREATE TABLE `sylius_product_attribute` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storage_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `position` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_BFAF484A77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_product_attribute
-- ----------------------------
BEGIN;
INSERT INTO `sylius_product_attribute` VALUES (1, 't_shirt_brand', 'text', 'text', 'a:0:{}', '2020-12-18 17:25:13', '2020-12-18 17:25:13', 0);
INSERT INTO `sylius_product_attribute` VALUES (2, 't_shirt_collection', 'text', 'text', 'a:0:{}', '2020-12-18 17:25:13', '2020-12-18 17:25:13', 1);
INSERT INTO `sylius_product_attribute` VALUES (3, 't_shirt_material', 'text', 'text', 'a:0:{}', '2020-12-18 17:25:13', '2020-12-18 17:25:13', 2);
INSERT INTO `sylius_product_attribute` VALUES (4, 'cap_brand', 'text', 'text', 'a:0:{}', '2020-12-18 17:25:15', '2020-12-18 17:25:15', 3);
INSERT INTO `sylius_product_attribute` VALUES (5, 'cap_collection', 'text', 'text', 'a:0:{}', '2020-12-18 17:25:15', '2020-12-18 17:25:15', 4);
INSERT INTO `sylius_product_attribute` VALUES (6, 'cap_material', 'text', 'text', 'a:0:{}', '2020-12-18 17:25:15', '2020-12-18 17:25:15', 5);
INSERT INTO `sylius_product_attribute` VALUES (7, 'dress_brand', 'text', 'text', 'a:0:{}', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 6);
INSERT INTO `sylius_product_attribute` VALUES (8, 'dress_collection', 'text', 'text', 'a:0:{}', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 7);
INSERT INTO `sylius_product_attribute` VALUES (9, 'dress_material', 'text', 'text', 'a:0:{}', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 8);
INSERT INTO `sylius_product_attribute` VALUES (10, 'jeans_brand', 'text', 'text', 'a:0:{}', '2020-12-18 17:25:17', '2020-12-18 17:25:17', 9);
INSERT INTO `sylius_product_attribute` VALUES (11, 'jeans_collection', 'text', 'text', 'a:0:{}', '2020-12-18 17:25:17', '2020-12-18 17:25:17', 10);
INSERT INTO `sylius_product_attribute` VALUES (12, 'jeans_material', 'text', 'text', 'a:0:{}', '2020-12-18 17:25:17', '2020-12-18 17:25:17', 11);
COMMIT;

-- ----------------------------
-- Table structure for sylius_product_attribute_translation
-- ----------------------------
DROP TABLE IF EXISTS `sylius_product_attribute_translation`;
CREATE TABLE `sylius_product_attribute_translation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `translatable_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_attribute_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_93850EBA2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_93850EBA2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_attribute` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_product_attribute_translation
-- ----------------------------
BEGIN;
INSERT INTO `sylius_product_attribute_translation` VALUES (1, 1, 'T-shirt brand', 'en_US');
INSERT INTO `sylius_product_attribute_translation` VALUES (2, 1, 'T-shirt brand', 'de_DE');
INSERT INTO `sylius_product_attribute_translation` VALUES (3, 1, 'T-shirt brand', 'fr_FR');
INSERT INTO `sylius_product_attribute_translation` VALUES (4, 1, 'T-shirt brand', 'pl_PL');
INSERT INTO `sylius_product_attribute_translation` VALUES (5, 1, 'T-shirt brand', 'es_ES');
INSERT INTO `sylius_product_attribute_translation` VALUES (6, 1, 'T-shirt brand', 'es_MX');
INSERT INTO `sylius_product_attribute_translation` VALUES (7, 1, 'T-shirt brand', 'pt_PT');
INSERT INTO `sylius_product_attribute_translation` VALUES (8, 1, 'T-shirt brand', 'zh_CN');
INSERT INTO `sylius_product_attribute_translation` VALUES (9, 2, 'T-shirt collection', 'en_US');
INSERT INTO `sylius_product_attribute_translation` VALUES (10, 2, 'T-shirt collection', 'de_DE');
INSERT INTO `sylius_product_attribute_translation` VALUES (11, 2, 'T-shirt collection', 'fr_FR');
INSERT INTO `sylius_product_attribute_translation` VALUES (12, 2, 'T-shirt collection', 'pl_PL');
INSERT INTO `sylius_product_attribute_translation` VALUES (13, 2, 'T-shirt collection', 'es_ES');
INSERT INTO `sylius_product_attribute_translation` VALUES (14, 2, 'T-shirt collection', 'es_MX');
INSERT INTO `sylius_product_attribute_translation` VALUES (15, 2, 'T-shirt collection', 'pt_PT');
INSERT INTO `sylius_product_attribute_translation` VALUES (16, 2, 'T-shirt collection', 'zh_CN');
INSERT INTO `sylius_product_attribute_translation` VALUES (17, 3, 'T-shirt material', 'en_US');
INSERT INTO `sylius_product_attribute_translation` VALUES (18, 3, 'T-shirt material', 'de_DE');
INSERT INTO `sylius_product_attribute_translation` VALUES (19, 3, 'T-shirt material', 'fr_FR');
INSERT INTO `sylius_product_attribute_translation` VALUES (20, 3, 'T-shirt material', 'pl_PL');
INSERT INTO `sylius_product_attribute_translation` VALUES (21, 3, 'T-shirt material', 'es_ES');
INSERT INTO `sylius_product_attribute_translation` VALUES (22, 3, 'T-shirt material', 'es_MX');
INSERT INTO `sylius_product_attribute_translation` VALUES (23, 3, 'T-shirt material', 'pt_PT');
INSERT INTO `sylius_product_attribute_translation` VALUES (24, 3, 'T-shirt material', 'zh_CN');
INSERT INTO `sylius_product_attribute_translation` VALUES (25, 4, 'Cap brand', 'en_US');
INSERT INTO `sylius_product_attribute_translation` VALUES (26, 4, 'Cap brand', 'de_DE');
INSERT INTO `sylius_product_attribute_translation` VALUES (27, 4, 'Cap brand', 'fr_FR');
INSERT INTO `sylius_product_attribute_translation` VALUES (28, 4, 'Cap brand', 'pl_PL');
INSERT INTO `sylius_product_attribute_translation` VALUES (29, 4, 'Cap brand', 'es_ES');
INSERT INTO `sylius_product_attribute_translation` VALUES (30, 4, 'Cap brand', 'es_MX');
INSERT INTO `sylius_product_attribute_translation` VALUES (31, 4, 'Cap brand', 'pt_PT');
INSERT INTO `sylius_product_attribute_translation` VALUES (32, 4, 'Cap brand', 'zh_CN');
INSERT INTO `sylius_product_attribute_translation` VALUES (33, 5, 'Cap collection', 'en_US');
INSERT INTO `sylius_product_attribute_translation` VALUES (34, 5, 'Cap collection', 'de_DE');
INSERT INTO `sylius_product_attribute_translation` VALUES (35, 5, 'Cap collection', 'fr_FR');
INSERT INTO `sylius_product_attribute_translation` VALUES (36, 5, 'Cap collection', 'pl_PL');
INSERT INTO `sylius_product_attribute_translation` VALUES (37, 5, 'Cap collection', 'es_ES');
INSERT INTO `sylius_product_attribute_translation` VALUES (38, 5, 'Cap collection', 'es_MX');
INSERT INTO `sylius_product_attribute_translation` VALUES (39, 5, 'Cap collection', 'pt_PT');
INSERT INTO `sylius_product_attribute_translation` VALUES (40, 5, 'Cap collection', 'zh_CN');
INSERT INTO `sylius_product_attribute_translation` VALUES (41, 6, 'Cap material', 'en_US');
INSERT INTO `sylius_product_attribute_translation` VALUES (42, 6, 'Cap material', 'de_DE');
INSERT INTO `sylius_product_attribute_translation` VALUES (43, 6, 'Cap material', 'fr_FR');
INSERT INTO `sylius_product_attribute_translation` VALUES (44, 6, 'Cap material', 'pl_PL');
INSERT INTO `sylius_product_attribute_translation` VALUES (45, 6, 'Cap material', 'es_ES');
INSERT INTO `sylius_product_attribute_translation` VALUES (46, 6, 'Cap material', 'es_MX');
INSERT INTO `sylius_product_attribute_translation` VALUES (47, 6, 'Cap material', 'pt_PT');
INSERT INTO `sylius_product_attribute_translation` VALUES (48, 6, 'Cap material', 'zh_CN');
INSERT INTO `sylius_product_attribute_translation` VALUES (49, 7, 'Dress brand', 'en_US');
INSERT INTO `sylius_product_attribute_translation` VALUES (50, 7, 'Dress brand', 'de_DE');
INSERT INTO `sylius_product_attribute_translation` VALUES (51, 7, 'Dress brand', 'fr_FR');
INSERT INTO `sylius_product_attribute_translation` VALUES (52, 7, 'Dress brand', 'pl_PL');
INSERT INTO `sylius_product_attribute_translation` VALUES (53, 7, 'Dress brand', 'es_ES');
INSERT INTO `sylius_product_attribute_translation` VALUES (54, 7, 'Dress brand', 'es_MX');
INSERT INTO `sylius_product_attribute_translation` VALUES (55, 7, 'Dress brand', 'pt_PT');
INSERT INTO `sylius_product_attribute_translation` VALUES (56, 7, 'Dress brand', 'zh_CN');
INSERT INTO `sylius_product_attribute_translation` VALUES (57, 8, 'Dress collection', 'en_US');
INSERT INTO `sylius_product_attribute_translation` VALUES (58, 8, 'Dress collection', 'de_DE');
INSERT INTO `sylius_product_attribute_translation` VALUES (59, 8, 'Dress collection', 'fr_FR');
INSERT INTO `sylius_product_attribute_translation` VALUES (60, 8, 'Dress collection', 'pl_PL');
INSERT INTO `sylius_product_attribute_translation` VALUES (61, 8, 'Dress collection', 'es_ES');
INSERT INTO `sylius_product_attribute_translation` VALUES (62, 8, 'Dress collection', 'es_MX');
INSERT INTO `sylius_product_attribute_translation` VALUES (63, 8, 'Dress collection', 'pt_PT');
INSERT INTO `sylius_product_attribute_translation` VALUES (64, 8, 'Dress collection', 'zh_CN');
INSERT INTO `sylius_product_attribute_translation` VALUES (65, 9, 'Dress material', 'en_US');
INSERT INTO `sylius_product_attribute_translation` VALUES (66, 9, 'Dress material', 'de_DE');
INSERT INTO `sylius_product_attribute_translation` VALUES (67, 9, 'Dress material', 'fr_FR');
INSERT INTO `sylius_product_attribute_translation` VALUES (68, 9, 'Dress material', 'pl_PL');
INSERT INTO `sylius_product_attribute_translation` VALUES (69, 9, 'Dress material', 'es_ES');
INSERT INTO `sylius_product_attribute_translation` VALUES (70, 9, 'Dress material', 'es_MX');
INSERT INTO `sylius_product_attribute_translation` VALUES (71, 9, 'Dress material', 'pt_PT');
INSERT INTO `sylius_product_attribute_translation` VALUES (72, 9, 'Dress material', 'zh_CN');
INSERT INTO `sylius_product_attribute_translation` VALUES (73, 10, 'Jeans brand', 'en_US');
INSERT INTO `sylius_product_attribute_translation` VALUES (74, 10, 'Jeans brand', 'de_DE');
INSERT INTO `sylius_product_attribute_translation` VALUES (75, 10, 'Jeans brand', 'fr_FR');
INSERT INTO `sylius_product_attribute_translation` VALUES (76, 10, 'Jeans brand', 'pl_PL');
INSERT INTO `sylius_product_attribute_translation` VALUES (77, 10, 'Jeans brand', 'es_ES');
INSERT INTO `sylius_product_attribute_translation` VALUES (78, 10, 'Jeans brand', 'es_MX');
INSERT INTO `sylius_product_attribute_translation` VALUES (79, 10, 'Jeans brand', 'pt_PT');
INSERT INTO `sylius_product_attribute_translation` VALUES (80, 10, 'Jeans brand', 'zh_CN');
INSERT INTO `sylius_product_attribute_translation` VALUES (81, 11, 'Jeans collection', 'en_US');
INSERT INTO `sylius_product_attribute_translation` VALUES (82, 11, 'Jeans collection', 'de_DE');
INSERT INTO `sylius_product_attribute_translation` VALUES (83, 11, 'Jeans collection', 'fr_FR');
INSERT INTO `sylius_product_attribute_translation` VALUES (84, 11, 'Jeans collection', 'pl_PL');
INSERT INTO `sylius_product_attribute_translation` VALUES (85, 11, 'Jeans collection', 'es_ES');
INSERT INTO `sylius_product_attribute_translation` VALUES (86, 11, 'Jeans collection', 'es_MX');
INSERT INTO `sylius_product_attribute_translation` VALUES (87, 11, 'Jeans collection', 'pt_PT');
INSERT INTO `sylius_product_attribute_translation` VALUES (88, 11, 'Jeans collection', 'zh_CN');
INSERT INTO `sylius_product_attribute_translation` VALUES (89, 12, 'Jeans material', 'en_US');
INSERT INTO `sylius_product_attribute_translation` VALUES (90, 12, 'Jeans material', 'de_DE');
INSERT INTO `sylius_product_attribute_translation` VALUES (91, 12, 'Jeans material', 'fr_FR');
INSERT INTO `sylius_product_attribute_translation` VALUES (92, 12, 'Jeans material', 'pl_PL');
INSERT INTO `sylius_product_attribute_translation` VALUES (93, 12, 'Jeans material', 'es_ES');
INSERT INTO `sylius_product_attribute_translation` VALUES (94, 12, 'Jeans material', 'es_MX');
INSERT INTO `sylius_product_attribute_translation` VALUES (95, 12, 'Jeans material', 'pt_PT');
INSERT INTO `sylius_product_attribute_translation` VALUES (96, 12, 'Jeans material', 'zh_CN');
COMMIT;

-- ----------------------------
-- Table structure for sylius_product_attribute_value
-- ----------------------------
DROP TABLE IF EXISTS `sylius_product_attribute_value`;
CREATE TABLE `sylius_product_attribute_value` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `attribute_id` int NOT NULL,
  `text_value` longtext COLLATE utf8_unicode_ci,
  `boolean_value` tinyint(1) DEFAULT NULL,
  `integer_value` int DEFAULT NULL,
  `float_value` double DEFAULT NULL,
  `datetime_value` datetime DEFAULT NULL,
  `date_value` date DEFAULT NULL,
  `json_value` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)',
  `locale_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8A053E544584665A` (`product_id`),
  KEY `IDX_8A053E54B6E62EFA` (`attribute_id`),
  CONSTRAINT `FK_8A053E544584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_8A053E54B6E62EFA` FOREIGN KEY (`attribute_id`) REFERENCES `sylius_product_attribute` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=505 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_product_attribute_value
-- ----------------------------
BEGIN;
INSERT INTO `sylius_product_attribute_value` VALUES (1, 1, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (2, 1, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (3, 1, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (4, 1, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (5, 1, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (6, 1, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (7, 1, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (8, 1, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (9, 1, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (10, 1, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (11, 1, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (12, 1, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (13, 1, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (14, 1, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (15, 1, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (16, 1, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (17, 1, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (18, 1, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (19, 1, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (20, 1, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (21, 1, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (22, 1, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (23, 1, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (24, 1, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (25, 2, 1, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (26, 2, 1, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (27, 2, 1, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (28, 2, 1, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (29, 2, 1, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (30, 2, 1, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (31, 2, 1, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (32, 2, 1, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (33, 2, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (34, 2, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (35, 2, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (36, 2, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (37, 2, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (38, 2, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (39, 2, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (40, 2, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (41, 2, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (42, 2, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (43, 2, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (44, 2, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (45, 2, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (46, 2, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (47, 2, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (48, 2, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (49, 3, 1, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (50, 3, 1, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (51, 3, 1, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (52, 3, 1, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (53, 3, 1, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (54, 3, 1, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (55, 3, 1, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (56, 3, 1, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (57, 3, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (58, 3, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (59, 3, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (60, 3, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (61, 3, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (62, 3, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (63, 3, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (64, 3, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (65, 3, 3, '100% viscose', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (66, 3, 3, '100% viscose', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (67, 3, 3, '100% viscose', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (68, 3, 3, '100% viscose', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (69, 3, 3, '100% viscose', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (70, 3, 3, '100% viscose', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (71, 3, 3, '100% viscose', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (72, 3, 3, '100% viscose', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (73, 4, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (74, 4, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (75, 4, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (76, 4, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (77, 4, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (78, 4, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (79, 4, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (80, 4, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (81, 4, 2, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (82, 4, 2, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (83, 4, 2, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (84, 4, 2, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (85, 4, 2, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (86, 4, 2, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (87, 4, 2, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (88, 4, 2, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (89, 4, 3, '100% viscose', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (90, 4, 3, '100% viscose', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (91, 4, 3, '100% viscose', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (92, 4, 3, '100% viscose', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (93, 4, 3, '100% viscose', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (94, 4, 3, '100% viscose', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (95, 4, 3, '100% viscose', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (96, 4, 3, '100% viscose', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (97, 5, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (98, 5, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (99, 5, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (100, 5, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (101, 5, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (102, 5, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (103, 5, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (104, 5, 1, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (105, 5, 2, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (106, 5, 2, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (107, 5, 2, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (108, 5, 2, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (109, 5, 2, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (110, 5, 2, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (111, 5, 2, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (112, 5, 2, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (113, 5, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (114, 5, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (115, 5, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (116, 5, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (117, 5, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (118, 5, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (119, 5, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (120, 5, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (121, 6, 1, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (122, 6, 1, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (123, 6, 1, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (124, 6, 1, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (125, 6, 1, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (126, 6, 1, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (127, 6, 1, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (128, 6, 1, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (129, 6, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (130, 6, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (131, 6, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (132, 6, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (133, 6, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (134, 6, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (135, 6, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (136, 6, 2, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (137, 6, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (138, 6, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (139, 6, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (140, 6, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (141, 6, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (142, 6, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (143, 6, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (144, 6, 3, '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (145, 7, 4, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (146, 7, 4, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (147, 7, 4, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (148, 7, 4, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (149, 7, 4, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (150, 7, 4, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (151, 7, 4, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (152, 7, 4, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (153, 7, 5, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (154, 7, 5, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (155, 7, 5, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (156, 7, 5, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (157, 7, 5, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (158, 7, 5, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (159, 7, 5, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (160, 7, 5, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (161, 7, 6, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (162, 7, 6, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (163, 7, 6, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (164, 7, 6, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (165, 7, 6, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (166, 7, 6, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (167, 7, 6, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (168, 7, 6, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (169, 8, 4, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (170, 8, 4, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (171, 8, 4, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (172, 8, 4, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (173, 8, 4, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (174, 8, 4, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (175, 8, 4, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (176, 8, 4, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (177, 8, 5, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (178, 8, 5, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (179, 8, 5, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (180, 8, 5, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (181, 8, 5, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (182, 8, 5, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (183, 8, 5, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (184, 8, 5, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (185, 8, 6, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (186, 8, 6, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (187, 8, 6, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (188, 8, 6, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (189, 8, 6, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (190, 8, 6, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (191, 8, 6, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (192, 8, 6, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (193, 9, 4, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (194, 9, 4, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (195, 9, 4, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (196, 9, 4, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (197, 9, 4, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (198, 9, 4, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (199, 9, 4, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (200, 9, 4, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (201, 9, 5, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (202, 9, 5, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (203, 9, 5, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (204, 9, 5, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (205, 9, 5, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (206, 9, 5, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (207, 9, 5, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (208, 9, 5, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (209, 9, 6, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (210, 9, 6, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (211, 9, 6, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (212, 9, 6, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (213, 9, 6, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (214, 9, 6, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (215, 9, 6, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (216, 9, 6, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (217, 10, 4, 'Date & Banana', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (218, 10, 4, 'Date & Banana', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (219, 10, 4, 'Date & Banana', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (220, 10, 4, 'Date & Banana', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (221, 10, 4, 'Date & Banana', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (222, 10, 4, 'Date & Banana', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (223, 10, 4, 'Date & Banana', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (224, 10, 4, 'Date & Banana', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (225, 10, 5, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (226, 10, 5, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (227, 10, 5, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (228, 10, 5, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (229, 10, 5, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (230, 10, 5, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (231, 10, 5, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (232, 10, 5, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (233, 10, 6, '100% cashmere', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (234, 10, 6, '100% cashmere', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (235, 10, 6, '100% cashmere', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (236, 10, 6, '100% cashmere', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (237, 10, 6, '100% cashmere', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (238, 10, 6, '100% cashmere', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (239, 10, 6, '100% cashmere', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (240, 10, 6, '100% cashmere', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (241, 11, 7, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (242, 11, 7, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (243, 11, 7, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (244, 11, 7, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (245, 11, 7, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (246, 11, 7, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (247, 11, 7, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (248, 11, 7, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (249, 11, 8, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (250, 11, 8, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (251, 11, 8, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (252, 11, 8, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (253, 11, 8, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (254, 11, 8, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (255, 11, 8, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (256, 11, 8, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (257, 11, 9, '100% polyester', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (258, 11, 9, '100% polyester', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (259, 11, 9, '100% polyester', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (260, 11, 9, '100% polyester', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (261, 11, 9, '100% polyester', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (262, 11, 9, '100% polyester', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (263, 11, 9, '100% polyester', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (264, 11, 9, '100% polyester', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (265, 12, 7, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (266, 12, 7, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (267, 12, 7, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (268, 12, 7, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (269, 12, 7, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (270, 12, 7, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (271, 12, 7, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (272, 12, 7, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (273, 12, 8, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (274, 12, 8, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (275, 12, 8, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (276, 12, 8, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (277, 12, 8, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (278, 12, 8, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (279, 12, 8, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (280, 12, 8, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (281, 12, 9, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (282, 12, 9, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (283, 12, 9, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (284, 12, 9, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (285, 12, 9, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (286, 12, 9, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (287, 12, 9, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (288, 12, 9, '100% wool', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (289, 13, 7, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (290, 13, 7, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (291, 13, 7, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (292, 13, 7, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (293, 13, 7, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (294, 13, 7, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (295, 13, 7, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (296, 13, 7, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (297, 13, 8, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (298, 13, 8, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (299, 13, 8, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (300, 13, 8, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (301, 13, 8, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (302, 13, 8, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (303, 13, 8, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (304, 13, 8, 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (305, 13, 9, '100% polyester', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (306, 13, 9, '100% polyester', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (307, 13, 9, '100% polyester', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (308, 13, 9, '100% polyester', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (309, 13, 9, '100% polyester', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (310, 13, 9, '100% polyester', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (311, 13, 9, '100% polyester', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (312, 13, 9, '100% polyester', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (313, 14, 10, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (314, 14, 10, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (315, 14, 10, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (316, 14, 10, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (317, 14, 10, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (318, 14, 10, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (319, 14, 10, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (320, 14, 10, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (321, 14, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (322, 14, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (323, 14, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (324, 14, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (325, 14, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (326, 14, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (327, 14, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (328, 14, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (329, 14, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (330, 14, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (331, 14, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (332, 14, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (333, 14, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (334, 14, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (335, 14, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (336, 14, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (337, 15, 10, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (338, 15, 10, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (339, 15, 10, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (340, 15, 10, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (341, 15, 10, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (342, 15, 10, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (343, 15, 10, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (344, 15, 10, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (345, 15, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (346, 15, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (347, 15, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (348, 15, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (349, 15, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (350, 15, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (351, 15, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (352, 15, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (353, 15, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (354, 15, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (355, 15, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (356, 15, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (357, 15, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (358, 15, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (359, 15, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (360, 15, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (361, 16, 10, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (362, 16, 10, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (363, 16, 10, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (364, 16, 10, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (365, 16, 10, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (366, 16, 10, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (367, 16, 10, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (368, 16, 10, 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (369, 16, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (370, 16, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (371, 16, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (372, 16, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (373, 16, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (374, 16, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (375, 16, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (376, 16, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (377, 16, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (378, 16, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (379, 16, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (380, 16, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (381, 16, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (382, 16, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (383, 16, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (384, 16, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (385, 17, 10, 'Date & Banana', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (386, 17, 10, 'Date & Banana', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (387, 17, 10, 'Date & Banana', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (388, 17, 10, 'Date & Banana', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (389, 17, 10, 'Date & Banana', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (390, 17, 10, 'Date & Banana', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (391, 17, 10, 'Date & Banana', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (392, 17, 10, 'Date & Banana', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (393, 17, 11, 'Sylius summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (394, 17, 11, 'Sylius summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (395, 17, 11, 'Sylius summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (396, 17, 11, 'Sylius summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (397, 17, 11, 'Sylius summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (398, 17, 11, 'Sylius summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (399, 17, 11, 'Sylius summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (400, 17, 11, 'Sylius summer 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (401, 17, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (402, 17, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (403, 17, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (404, 17, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (405, 17, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (406, 17, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (407, 17, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (408, 17, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (409, 18, 10, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (410, 18, 10, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (411, 18, 10, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (412, 18, 10, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (413, 18, 10, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (414, 18, 10, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (415, 18, 10, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (416, 18, 10, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (417, 18, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (418, 18, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (419, 18, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (420, 18, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (421, 18, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (422, 18, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (423, 18, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (424, 18, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (425, 18, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (426, 18, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (427, 18, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (428, 18, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (429, 18, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (430, 18, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (431, 18, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (432, 18, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (433, 19, 10, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (434, 19, 10, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (435, 19, 10, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (436, 19, 10, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (437, 19, 10, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (438, 19, 10, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (439, 19, 10, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (440, 19, 10, 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (441, 19, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (442, 19, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (443, 19, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (444, 19, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (445, 19, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (446, 19, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (447, 19, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (448, 19, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (449, 19, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (450, 19, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (451, 19, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (452, 19, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (453, 19, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (454, 19, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (455, 19, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (456, 19, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (457, 20, 10, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (458, 20, 10, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (459, 20, 10, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (460, 20, 10, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (461, 20, 10, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (462, 20, 10, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (463, 20, 10, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (464, 20, 10, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (465, 20, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (466, 20, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (467, 20, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (468, 20, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (469, 20, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (470, 20, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (471, 20, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (472, 20, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (473, 20, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (474, 20, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (475, 20, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (476, 20, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (477, 20, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (478, 20, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (479, 20, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (480, 20, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (481, 21, 10, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (482, 21, 10, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (483, 21, 10, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (484, 21, 10, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (485, 21, 10, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (486, 21, 10, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (487, 21, 10, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (488, 21, 10, 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (489, 21, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (490, 21, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (491, 21, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (492, 21, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (493, 21, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (494, 21, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (495, 21, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (496, 21, 11, 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
INSERT INTO `sylius_product_attribute_value` VALUES (497, 21, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US');
INSERT INTO `sylius_product_attribute_value` VALUES (498, 21, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'de_DE');
INSERT INTO `sylius_product_attribute_value` VALUES (499, 21, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'fr_FR');
INSERT INTO `sylius_product_attribute_value` VALUES (500, 21, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'pl_PL');
INSERT INTO `sylius_product_attribute_value` VALUES (501, 21, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'es_ES');
INSERT INTO `sylius_product_attribute_value` VALUES (502, 21, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'es_MX');
INSERT INTO `sylius_product_attribute_value` VALUES (503, 21, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'pt_PT');
INSERT INTO `sylius_product_attribute_value` VALUES (504, 21, 12, '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN');
COMMIT;

-- ----------------------------
-- Table structure for sylius_product_channels
-- ----------------------------
DROP TABLE IF EXISTS `sylius_product_channels`;
CREATE TABLE `sylius_product_channels` (
  `product_id` int NOT NULL,
  `channel_id` int NOT NULL,
  PRIMARY KEY (`product_id`,`channel_id`),
  KEY `IDX_F9EF269B4584665A` (`product_id`),
  KEY `IDX_F9EF269B72F5A1AA` (`channel_id`),
  CONSTRAINT `FK_F9EF269B4584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_F9EF269B72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_product_channels
-- ----------------------------
BEGIN;
INSERT INTO `sylius_product_channels` VALUES (1, 1);
INSERT INTO `sylius_product_channels` VALUES (2, 1);
INSERT INTO `sylius_product_channels` VALUES (3, 1);
INSERT INTO `sylius_product_channels` VALUES (4, 1);
INSERT INTO `sylius_product_channels` VALUES (5, 1);
INSERT INTO `sylius_product_channels` VALUES (6, 1);
INSERT INTO `sylius_product_channels` VALUES (7, 1);
INSERT INTO `sylius_product_channels` VALUES (8, 1);
INSERT INTO `sylius_product_channels` VALUES (9, 1);
INSERT INTO `sylius_product_channels` VALUES (10, 1);
INSERT INTO `sylius_product_channels` VALUES (11, 1);
INSERT INTO `sylius_product_channels` VALUES (12, 1);
INSERT INTO `sylius_product_channels` VALUES (13, 1);
INSERT INTO `sylius_product_channels` VALUES (14, 1);
INSERT INTO `sylius_product_channels` VALUES (15, 1);
INSERT INTO `sylius_product_channels` VALUES (16, 1);
INSERT INTO `sylius_product_channels` VALUES (17, 1);
INSERT INTO `sylius_product_channels` VALUES (18, 1);
INSERT INTO `sylius_product_channels` VALUES (19, 1);
INSERT INTO `sylius_product_channels` VALUES (20, 1);
INSERT INTO `sylius_product_channels` VALUES (21, 1);
COMMIT;

-- ----------------------------
-- Table structure for sylius_product_image
-- ----------------------------
DROP TABLE IF EXISTS `sylius_product_image`;
CREATE TABLE `sylius_product_image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `owner_id` int NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_88C64B2D7E3C61F9` (`owner_id`),
  CONSTRAINT `FK_88C64B2D7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_product_image
-- ----------------------------
BEGIN;
INSERT INTO `sylius_product_image` VALUES (1, 1, 'main', '26/56/a862b7a534b78d9abc5a25e9bbdb.jpg');
INSERT INTO `sylius_product_image` VALUES (2, 2, 'main', '33/04/c718e130e5c408a5b871a3fea870.jpg');
INSERT INTO `sylius_product_image` VALUES (3, 3, 'main', 'ee/cf/45a0cf4b14df50203772a442fbb7.jpg');
INSERT INTO `sylius_product_image` VALUES (4, 4, 'main', '8b/5b/858eff576c9b7e95d42856071d30.jpg');
INSERT INTO `sylius_product_image` VALUES (5, 5, 'main', '57/7f/9158ee7b26785a295c1c2a949016.jpg');
INSERT INTO `sylius_product_image` VALUES (6, 6, 'main', '7c/cb/bf938c53c02b324e4916dee53731.jpg');
INSERT INTO `sylius_product_image` VALUES (7, 7, 'main', 'c6/f3/3b7f95bc0f6455d76f74775f5c4b.jpg');
INSERT INTO `sylius_product_image` VALUES (8, 8, 'main', '80/a3/417e7a3f2b7e3fb65bf2849055e7.jpg');
INSERT INTO `sylius_product_image` VALUES (9, 9, 'main', 'b3/36/e8d437a11b6012813980735c0453.jpg');
INSERT INTO `sylius_product_image` VALUES (10, 10, 'main', 'fe/93/4ca886b7ae5144a5c441cecf97a8.jpg');
INSERT INTO `sylius_product_image` VALUES (11, 11, 'main', '35/6e/9e04df038acf5e7833b3de118ea6.jpg');
INSERT INTO `sylius_product_image` VALUES (12, 12, 'main', 'ec/86/4f731c93277c4a9f4a5b25e18fa2.jpg');
INSERT INTO `sylius_product_image` VALUES (13, 13, 'main', '19/e2/285e250cd819cbebc7d1b9a2106f.jpg');
INSERT INTO `sylius_product_image` VALUES (14, 14, 'main', '11/c9/a34d3240ee13a25747b1fb2db7c3.jpg');
INSERT INTO `sylius_product_image` VALUES (15, 15, 'main', '48/36/b3064999616c1d199946f8a5a651.jpg');
INSERT INTO `sylius_product_image` VALUES (16, 16, 'main', 'f9/7f/7827344e26d79ed2deb90a5b80c3.jpg');
INSERT INTO `sylius_product_image` VALUES (17, 17, 'main', 'e8/2d/b9573390bd86dbe43834e92bfa38.svg');
INSERT INTO `sylius_product_image` VALUES (18, 18, 'main', '9d/3b/bbb133652900e3ea10f2b44b84ba.jpg');
INSERT INTO `sylius_product_image` VALUES (19, 19, 'main', '8c/e1/968459ae317bf4ee97578a19b0ba.jpg');
INSERT INTO `sylius_product_image` VALUES (20, 20, 'main', '53/fc/957f685ee15ba30cef186f9042d0.jpg');
INSERT INTO `sylius_product_image` VALUES (21, 21, 'main', 'b3/ac/f392b10865db696df0e448a1441f.jpg');
COMMIT;

-- ----------------------------
-- Table structure for sylius_product_image_product_variants
-- ----------------------------
DROP TABLE IF EXISTS `sylius_product_image_product_variants`;
CREATE TABLE `sylius_product_image_product_variants` (
  `image_id` int NOT NULL,
  `variant_id` int NOT NULL,
  PRIMARY KEY (`image_id`,`variant_id`),
  KEY `IDX_8FFDAE8D3DA5256D` (`image_id`),
  KEY `IDX_8FFDAE8D3B69A9AF` (`variant_id`),
  CONSTRAINT `FK_8FFDAE8D3B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_8FFDAE8D3DA5256D` FOREIGN KEY (`image_id`) REFERENCES `sylius_product_image` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_product_image_product_variants
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sylius_product_option
-- ----------------------------
DROP TABLE IF EXISTS `sylius_product_option`;
CREATE TABLE `sylius_product_option` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `position` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E4C0EBEF77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_product_option
-- ----------------------------
BEGIN;
INSERT INTO `sylius_product_option` VALUES (1, 't_shirt_size', '2020-12-18 17:25:13', '2020-12-18 17:25:13', 0);
INSERT INTO `sylius_product_option` VALUES (2, 'dress_size', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 1);
INSERT INTO `sylius_product_option` VALUES (3, 'dress_height', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 2);
INSERT INTO `sylius_product_option` VALUES (4, 'jeans_size', '2020-12-18 17:25:17', '2020-12-18 17:25:17', 3);
COMMIT;

-- ----------------------------
-- Table structure for sylius_product_option_translation
-- ----------------------------
DROP TABLE IF EXISTS `sylius_product_option_translation`;
CREATE TABLE `sylius_product_option_translation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `translatable_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_option_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_CBA491AD2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_CBA491AD2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_product_option_translation
-- ----------------------------
BEGIN;
INSERT INTO `sylius_product_option_translation` VALUES (1, 1, 'T-shirt size', 'en_US');
INSERT INTO `sylius_product_option_translation` VALUES (2, 1, 'T-shirt size', 'de_DE');
INSERT INTO `sylius_product_option_translation` VALUES (3, 1, 'T-shirt size', 'fr_FR');
INSERT INTO `sylius_product_option_translation` VALUES (4, 1, 'T-shirt size', 'pl_PL');
INSERT INTO `sylius_product_option_translation` VALUES (5, 1, 'T-shirt size', 'es_ES');
INSERT INTO `sylius_product_option_translation` VALUES (6, 1, 'T-shirt size', 'es_MX');
INSERT INTO `sylius_product_option_translation` VALUES (7, 1, 'T-shirt size', 'pt_PT');
INSERT INTO `sylius_product_option_translation` VALUES (8, 1, 'T-shirt size', 'zh_CN');
INSERT INTO `sylius_product_option_translation` VALUES (9, 2, 'Dress size', 'en_US');
INSERT INTO `sylius_product_option_translation` VALUES (10, 2, 'Dress size', 'de_DE');
INSERT INTO `sylius_product_option_translation` VALUES (11, 2, 'Dress size', 'fr_FR');
INSERT INTO `sylius_product_option_translation` VALUES (12, 2, 'Dress size', 'pl_PL');
INSERT INTO `sylius_product_option_translation` VALUES (13, 2, 'Dress size', 'es_ES');
INSERT INTO `sylius_product_option_translation` VALUES (14, 2, 'Dress size', 'es_MX');
INSERT INTO `sylius_product_option_translation` VALUES (15, 2, 'Dress size', 'pt_PT');
INSERT INTO `sylius_product_option_translation` VALUES (16, 2, 'Dress size', 'zh_CN');
INSERT INTO `sylius_product_option_translation` VALUES (17, 3, 'Dress height', 'en_US');
INSERT INTO `sylius_product_option_translation` VALUES (18, 3, 'Dress height', 'de_DE');
INSERT INTO `sylius_product_option_translation` VALUES (19, 3, 'Dress height', 'fr_FR');
INSERT INTO `sylius_product_option_translation` VALUES (20, 3, 'Dress height', 'pl_PL');
INSERT INTO `sylius_product_option_translation` VALUES (21, 3, 'Dress height', 'es_ES');
INSERT INTO `sylius_product_option_translation` VALUES (22, 3, 'Dress height', 'es_MX');
INSERT INTO `sylius_product_option_translation` VALUES (23, 3, 'Dress height', 'pt_PT');
INSERT INTO `sylius_product_option_translation` VALUES (24, 3, 'Dress height', 'zh_CN');
INSERT INTO `sylius_product_option_translation` VALUES (25, 4, 'Jeans size', 'en_US');
INSERT INTO `sylius_product_option_translation` VALUES (26, 4, 'Jeans size', 'de_DE');
INSERT INTO `sylius_product_option_translation` VALUES (27, 4, 'Jeans size', 'fr_FR');
INSERT INTO `sylius_product_option_translation` VALUES (28, 4, 'Jeans size', 'pl_PL');
INSERT INTO `sylius_product_option_translation` VALUES (29, 4, 'Jeans size', 'es_ES');
INSERT INTO `sylius_product_option_translation` VALUES (30, 4, 'Jeans size', 'es_MX');
INSERT INTO `sylius_product_option_translation` VALUES (31, 4, 'Jeans size', 'pt_PT');
INSERT INTO `sylius_product_option_translation` VALUES (32, 4, 'Jeans size', 'zh_CN');
COMMIT;

-- ----------------------------
-- Table structure for sylius_product_option_value
-- ----------------------------
DROP TABLE IF EXISTS `sylius_product_option_value`;
CREATE TABLE `sylius_product_option_value` (
  `id` int NOT NULL AUTO_INCREMENT,
  `option_id` int NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F7FF7D4B77153098` (`code`),
  KEY `IDX_F7FF7D4BA7C41D6F` (`option_id`),
  CONSTRAINT `FK_F7FF7D4BA7C41D6F` FOREIGN KEY (`option_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_product_option_value
-- ----------------------------
BEGIN;
INSERT INTO `sylius_product_option_value` VALUES (1, 1, 't_shirt_size_s');
INSERT INTO `sylius_product_option_value` VALUES (2, 1, 't_shirt_size_m');
INSERT INTO `sylius_product_option_value` VALUES (3, 1, 't_shirt_size_l');
INSERT INTO `sylius_product_option_value` VALUES (4, 1, 't_shirt_size_xl');
INSERT INTO `sylius_product_option_value` VALUES (5, 1, 't_shirt_size_xxl');
INSERT INTO `sylius_product_option_value` VALUES (6, 2, 'dress_s');
INSERT INTO `sylius_product_option_value` VALUES (7, 2, 'dress_m');
INSERT INTO `sylius_product_option_value` VALUES (8, 2, 'dress_l');
INSERT INTO `sylius_product_option_value` VALUES (9, 2, 'dress_xl');
INSERT INTO `sylius_product_option_value` VALUES (10, 2, 'dress_xxl');
INSERT INTO `sylius_product_option_value` VALUES (11, 3, 'dress_height_petite');
INSERT INTO `sylius_product_option_value` VALUES (12, 3, 'dress_height_regular');
INSERT INTO `sylius_product_option_value` VALUES (13, 3, 'dress_height_tall');
INSERT INTO `sylius_product_option_value` VALUES (14, 4, 'jeans_size_s');
INSERT INTO `sylius_product_option_value` VALUES (15, 4, 'jeans_size_m');
INSERT INTO `sylius_product_option_value` VALUES (16, 4, 'jeans_size_l');
INSERT INTO `sylius_product_option_value` VALUES (17, 4, 'jeans_size_xl');
INSERT INTO `sylius_product_option_value` VALUES (18, 4, 'jeans_size_xxl');
COMMIT;

-- ----------------------------
-- Table structure for sylius_product_option_value_translation
-- ----------------------------
DROP TABLE IF EXISTS `sylius_product_option_value_translation`;
CREATE TABLE `sylius_product_option_value_translation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `translatable_id` int NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_option_value_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_8D4382DC2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_8D4382DC2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_option_value` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_product_option_value_translation
-- ----------------------------
BEGIN;
INSERT INTO `sylius_product_option_value_translation` VALUES (1, 1, 'S', 'en_US');
INSERT INTO `sylius_product_option_value_translation` VALUES (2, 1, 'S', 'de_DE');
INSERT INTO `sylius_product_option_value_translation` VALUES (3, 1, 'S', 'fr_FR');
INSERT INTO `sylius_product_option_value_translation` VALUES (4, 1, 'S', 'pl_PL');
INSERT INTO `sylius_product_option_value_translation` VALUES (5, 1, 'S', 'es_ES');
INSERT INTO `sylius_product_option_value_translation` VALUES (6, 1, 'S', 'es_MX');
INSERT INTO `sylius_product_option_value_translation` VALUES (7, 1, 'S', 'pt_PT');
INSERT INTO `sylius_product_option_value_translation` VALUES (8, 1, 'S', 'zh_CN');
INSERT INTO `sylius_product_option_value_translation` VALUES (9, 2, 'M', 'en_US');
INSERT INTO `sylius_product_option_value_translation` VALUES (10, 2, 'M', 'de_DE');
INSERT INTO `sylius_product_option_value_translation` VALUES (11, 2, 'M', 'fr_FR');
INSERT INTO `sylius_product_option_value_translation` VALUES (12, 2, 'M', 'pl_PL');
INSERT INTO `sylius_product_option_value_translation` VALUES (13, 2, 'M', 'es_ES');
INSERT INTO `sylius_product_option_value_translation` VALUES (14, 2, 'M', 'es_MX');
INSERT INTO `sylius_product_option_value_translation` VALUES (15, 2, 'M', 'pt_PT');
INSERT INTO `sylius_product_option_value_translation` VALUES (16, 2, 'M', 'zh_CN');
INSERT INTO `sylius_product_option_value_translation` VALUES (17, 3, 'L', 'en_US');
INSERT INTO `sylius_product_option_value_translation` VALUES (18, 3, 'L', 'de_DE');
INSERT INTO `sylius_product_option_value_translation` VALUES (19, 3, 'L', 'fr_FR');
INSERT INTO `sylius_product_option_value_translation` VALUES (20, 3, 'L', 'pl_PL');
INSERT INTO `sylius_product_option_value_translation` VALUES (21, 3, 'L', 'es_ES');
INSERT INTO `sylius_product_option_value_translation` VALUES (22, 3, 'L', 'es_MX');
INSERT INTO `sylius_product_option_value_translation` VALUES (23, 3, 'L', 'pt_PT');
INSERT INTO `sylius_product_option_value_translation` VALUES (24, 3, 'L', 'zh_CN');
INSERT INTO `sylius_product_option_value_translation` VALUES (25, 4, 'XL', 'en_US');
INSERT INTO `sylius_product_option_value_translation` VALUES (26, 4, 'XL', 'de_DE');
INSERT INTO `sylius_product_option_value_translation` VALUES (27, 4, 'XL', 'fr_FR');
INSERT INTO `sylius_product_option_value_translation` VALUES (28, 4, 'XL', 'pl_PL');
INSERT INTO `sylius_product_option_value_translation` VALUES (29, 4, 'XL', 'es_ES');
INSERT INTO `sylius_product_option_value_translation` VALUES (30, 4, 'XL', 'es_MX');
INSERT INTO `sylius_product_option_value_translation` VALUES (31, 4, 'XL', 'pt_PT');
INSERT INTO `sylius_product_option_value_translation` VALUES (32, 4, 'XL', 'zh_CN');
INSERT INTO `sylius_product_option_value_translation` VALUES (33, 5, 'XXL', 'en_US');
INSERT INTO `sylius_product_option_value_translation` VALUES (34, 5, 'XXL', 'de_DE');
INSERT INTO `sylius_product_option_value_translation` VALUES (35, 5, 'XXL', 'fr_FR');
INSERT INTO `sylius_product_option_value_translation` VALUES (36, 5, 'XXL', 'pl_PL');
INSERT INTO `sylius_product_option_value_translation` VALUES (37, 5, 'XXL', 'es_ES');
INSERT INTO `sylius_product_option_value_translation` VALUES (38, 5, 'XXL', 'es_MX');
INSERT INTO `sylius_product_option_value_translation` VALUES (39, 5, 'XXL', 'pt_PT');
INSERT INTO `sylius_product_option_value_translation` VALUES (40, 5, 'XXL', 'zh_CN');
INSERT INTO `sylius_product_option_value_translation` VALUES (41, 6, 'S', 'en_US');
INSERT INTO `sylius_product_option_value_translation` VALUES (42, 6, 'S', 'de_DE');
INSERT INTO `sylius_product_option_value_translation` VALUES (43, 6, 'S', 'fr_FR');
INSERT INTO `sylius_product_option_value_translation` VALUES (44, 6, 'S', 'pl_PL');
INSERT INTO `sylius_product_option_value_translation` VALUES (45, 6, 'S', 'es_ES');
INSERT INTO `sylius_product_option_value_translation` VALUES (46, 6, 'S', 'es_MX');
INSERT INTO `sylius_product_option_value_translation` VALUES (47, 6, 'S', 'pt_PT');
INSERT INTO `sylius_product_option_value_translation` VALUES (48, 6, 'S', 'zh_CN');
INSERT INTO `sylius_product_option_value_translation` VALUES (49, 7, 'M', 'en_US');
INSERT INTO `sylius_product_option_value_translation` VALUES (50, 7, 'M', 'de_DE');
INSERT INTO `sylius_product_option_value_translation` VALUES (51, 7, 'M', 'fr_FR');
INSERT INTO `sylius_product_option_value_translation` VALUES (52, 7, 'M', 'pl_PL');
INSERT INTO `sylius_product_option_value_translation` VALUES (53, 7, 'M', 'es_ES');
INSERT INTO `sylius_product_option_value_translation` VALUES (54, 7, 'M', 'es_MX');
INSERT INTO `sylius_product_option_value_translation` VALUES (55, 7, 'M', 'pt_PT');
INSERT INTO `sylius_product_option_value_translation` VALUES (56, 7, 'M', 'zh_CN');
INSERT INTO `sylius_product_option_value_translation` VALUES (57, 8, 'L', 'en_US');
INSERT INTO `sylius_product_option_value_translation` VALUES (58, 8, 'L', 'de_DE');
INSERT INTO `sylius_product_option_value_translation` VALUES (59, 8, 'L', 'fr_FR');
INSERT INTO `sylius_product_option_value_translation` VALUES (60, 8, 'L', 'pl_PL');
INSERT INTO `sylius_product_option_value_translation` VALUES (61, 8, 'L', 'es_ES');
INSERT INTO `sylius_product_option_value_translation` VALUES (62, 8, 'L', 'es_MX');
INSERT INTO `sylius_product_option_value_translation` VALUES (63, 8, 'L', 'pt_PT');
INSERT INTO `sylius_product_option_value_translation` VALUES (64, 8, 'L', 'zh_CN');
INSERT INTO `sylius_product_option_value_translation` VALUES (65, 9, 'XL', 'en_US');
INSERT INTO `sylius_product_option_value_translation` VALUES (66, 9, 'XL', 'de_DE');
INSERT INTO `sylius_product_option_value_translation` VALUES (67, 9, 'XL', 'fr_FR');
INSERT INTO `sylius_product_option_value_translation` VALUES (68, 9, 'XL', 'pl_PL');
INSERT INTO `sylius_product_option_value_translation` VALUES (69, 9, 'XL', 'es_ES');
INSERT INTO `sylius_product_option_value_translation` VALUES (70, 9, 'XL', 'es_MX');
INSERT INTO `sylius_product_option_value_translation` VALUES (71, 9, 'XL', 'pt_PT');
INSERT INTO `sylius_product_option_value_translation` VALUES (72, 9, 'XL', 'zh_CN');
INSERT INTO `sylius_product_option_value_translation` VALUES (73, 10, 'XXL', 'en_US');
INSERT INTO `sylius_product_option_value_translation` VALUES (74, 10, 'XXL', 'de_DE');
INSERT INTO `sylius_product_option_value_translation` VALUES (75, 10, 'XXL', 'fr_FR');
INSERT INTO `sylius_product_option_value_translation` VALUES (76, 10, 'XXL', 'pl_PL');
INSERT INTO `sylius_product_option_value_translation` VALUES (77, 10, 'XXL', 'es_ES');
INSERT INTO `sylius_product_option_value_translation` VALUES (78, 10, 'XXL', 'es_MX');
INSERT INTO `sylius_product_option_value_translation` VALUES (79, 10, 'XXL', 'pt_PT');
INSERT INTO `sylius_product_option_value_translation` VALUES (80, 10, 'XXL', 'zh_CN');
INSERT INTO `sylius_product_option_value_translation` VALUES (81, 11, 'Petite', 'en_US');
INSERT INTO `sylius_product_option_value_translation` VALUES (82, 11, 'Petite', 'de_DE');
INSERT INTO `sylius_product_option_value_translation` VALUES (83, 11, 'Petite', 'fr_FR');
INSERT INTO `sylius_product_option_value_translation` VALUES (84, 11, 'Petite', 'pl_PL');
INSERT INTO `sylius_product_option_value_translation` VALUES (85, 11, 'Petite', 'es_ES');
INSERT INTO `sylius_product_option_value_translation` VALUES (86, 11, 'Petite', 'es_MX');
INSERT INTO `sylius_product_option_value_translation` VALUES (87, 11, 'Petite', 'pt_PT');
INSERT INTO `sylius_product_option_value_translation` VALUES (88, 11, 'Petite', 'zh_CN');
INSERT INTO `sylius_product_option_value_translation` VALUES (89, 12, 'Regular', 'en_US');
INSERT INTO `sylius_product_option_value_translation` VALUES (90, 12, 'Regular', 'de_DE');
INSERT INTO `sylius_product_option_value_translation` VALUES (91, 12, 'Regular', 'fr_FR');
INSERT INTO `sylius_product_option_value_translation` VALUES (92, 12, 'Regular', 'pl_PL');
INSERT INTO `sylius_product_option_value_translation` VALUES (93, 12, 'Regular', 'es_ES');
INSERT INTO `sylius_product_option_value_translation` VALUES (94, 12, 'Regular', 'es_MX');
INSERT INTO `sylius_product_option_value_translation` VALUES (95, 12, 'Regular', 'pt_PT');
INSERT INTO `sylius_product_option_value_translation` VALUES (96, 12, 'Regular', 'zh_CN');
INSERT INTO `sylius_product_option_value_translation` VALUES (97, 13, 'Tall', 'en_US');
INSERT INTO `sylius_product_option_value_translation` VALUES (98, 13, 'Tall', 'de_DE');
INSERT INTO `sylius_product_option_value_translation` VALUES (99, 13, 'Tall', 'fr_FR');
INSERT INTO `sylius_product_option_value_translation` VALUES (100, 13, 'Tall', 'pl_PL');
INSERT INTO `sylius_product_option_value_translation` VALUES (101, 13, 'Tall', 'es_ES');
INSERT INTO `sylius_product_option_value_translation` VALUES (102, 13, 'Tall', 'es_MX');
INSERT INTO `sylius_product_option_value_translation` VALUES (103, 13, 'Tall', 'pt_PT');
INSERT INTO `sylius_product_option_value_translation` VALUES (104, 13, 'Tall', 'zh_CN');
INSERT INTO `sylius_product_option_value_translation` VALUES (105, 14, 'S', 'en_US');
INSERT INTO `sylius_product_option_value_translation` VALUES (106, 14, 'S', 'de_DE');
INSERT INTO `sylius_product_option_value_translation` VALUES (107, 14, 'S', 'fr_FR');
INSERT INTO `sylius_product_option_value_translation` VALUES (108, 14, 'S', 'pl_PL');
INSERT INTO `sylius_product_option_value_translation` VALUES (109, 14, 'S', 'es_ES');
INSERT INTO `sylius_product_option_value_translation` VALUES (110, 14, 'S', 'es_MX');
INSERT INTO `sylius_product_option_value_translation` VALUES (111, 14, 'S', 'pt_PT');
INSERT INTO `sylius_product_option_value_translation` VALUES (112, 14, 'S', 'zh_CN');
INSERT INTO `sylius_product_option_value_translation` VALUES (113, 15, 'M', 'en_US');
INSERT INTO `sylius_product_option_value_translation` VALUES (114, 15, 'M', 'de_DE');
INSERT INTO `sylius_product_option_value_translation` VALUES (115, 15, 'M', 'fr_FR');
INSERT INTO `sylius_product_option_value_translation` VALUES (116, 15, 'M', 'pl_PL');
INSERT INTO `sylius_product_option_value_translation` VALUES (117, 15, 'M', 'es_ES');
INSERT INTO `sylius_product_option_value_translation` VALUES (118, 15, 'M', 'es_MX');
INSERT INTO `sylius_product_option_value_translation` VALUES (119, 15, 'M', 'pt_PT');
INSERT INTO `sylius_product_option_value_translation` VALUES (120, 15, 'M', 'zh_CN');
INSERT INTO `sylius_product_option_value_translation` VALUES (121, 16, 'L', 'en_US');
INSERT INTO `sylius_product_option_value_translation` VALUES (122, 16, 'L', 'de_DE');
INSERT INTO `sylius_product_option_value_translation` VALUES (123, 16, 'L', 'fr_FR');
INSERT INTO `sylius_product_option_value_translation` VALUES (124, 16, 'L', 'pl_PL');
INSERT INTO `sylius_product_option_value_translation` VALUES (125, 16, 'L', 'es_ES');
INSERT INTO `sylius_product_option_value_translation` VALUES (126, 16, 'L', 'es_MX');
INSERT INTO `sylius_product_option_value_translation` VALUES (127, 16, 'L', 'pt_PT');
INSERT INTO `sylius_product_option_value_translation` VALUES (128, 16, 'L', 'zh_CN');
INSERT INTO `sylius_product_option_value_translation` VALUES (129, 17, 'XL', 'en_US');
INSERT INTO `sylius_product_option_value_translation` VALUES (130, 17, 'XL', 'de_DE');
INSERT INTO `sylius_product_option_value_translation` VALUES (131, 17, 'XL', 'fr_FR');
INSERT INTO `sylius_product_option_value_translation` VALUES (132, 17, 'XL', 'pl_PL');
INSERT INTO `sylius_product_option_value_translation` VALUES (133, 17, 'XL', 'es_ES');
INSERT INTO `sylius_product_option_value_translation` VALUES (134, 17, 'XL', 'es_MX');
INSERT INTO `sylius_product_option_value_translation` VALUES (135, 17, 'XL', 'pt_PT');
INSERT INTO `sylius_product_option_value_translation` VALUES (136, 17, 'XL', 'zh_CN');
INSERT INTO `sylius_product_option_value_translation` VALUES (137, 18, 'XXL', 'en_US');
INSERT INTO `sylius_product_option_value_translation` VALUES (138, 18, 'XXL', 'de_DE');
INSERT INTO `sylius_product_option_value_translation` VALUES (139, 18, 'XXL', 'fr_FR');
INSERT INTO `sylius_product_option_value_translation` VALUES (140, 18, 'XXL', 'pl_PL');
INSERT INTO `sylius_product_option_value_translation` VALUES (141, 18, 'XXL', 'es_ES');
INSERT INTO `sylius_product_option_value_translation` VALUES (142, 18, 'XXL', 'es_MX');
INSERT INTO `sylius_product_option_value_translation` VALUES (143, 18, 'XXL', 'pt_PT');
INSERT INTO `sylius_product_option_value_translation` VALUES (144, 18, 'XXL', 'zh_CN');
COMMIT;

-- ----------------------------
-- Table structure for sylius_product_options
-- ----------------------------
DROP TABLE IF EXISTS `sylius_product_options`;
CREATE TABLE `sylius_product_options` (
  `product_id` int NOT NULL,
  `option_id` int NOT NULL,
  PRIMARY KEY (`product_id`,`option_id`),
  KEY `IDX_2B5FF0094584665A` (`product_id`),
  KEY `IDX_2B5FF009A7C41D6F` (`option_id`),
  CONSTRAINT `FK_2B5FF0094584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_2B5FF009A7C41D6F` FOREIGN KEY (`option_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_product_options
-- ----------------------------
BEGIN;
INSERT INTO `sylius_product_options` VALUES (1, 1);
INSERT INTO `sylius_product_options` VALUES (2, 1);
INSERT INTO `sylius_product_options` VALUES (3, 1);
INSERT INTO `sylius_product_options` VALUES (4, 1);
INSERT INTO `sylius_product_options` VALUES (5, 1);
INSERT INTO `sylius_product_options` VALUES (6, 1);
INSERT INTO `sylius_product_options` VALUES (11, 2);
INSERT INTO `sylius_product_options` VALUES (11, 3);
INSERT INTO `sylius_product_options` VALUES (12, 2);
INSERT INTO `sylius_product_options` VALUES (12, 3);
INSERT INTO `sylius_product_options` VALUES (13, 2);
INSERT INTO `sylius_product_options` VALUES (13, 3);
INSERT INTO `sylius_product_options` VALUES (14, 4);
INSERT INTO `sylius_product_options` VALUES (15, 4);
INSERT INTO `sylius_product_options` VALUES (16, 4);
INSERT INTO `sylius_product_options` VALUES (17, 4);
INSERT INTO `sylius_product_options` VALUES (18, 4);
INSERT INTO `sylius_product_options` VALUES (19, 4);
INSERT INTO `sylius_product_options` VALUES (20, 4);
INSERT INTO `sylius_product_options` VALUES (21, 4);
COMMIT;

-- ----------------------------
-- Table structure for sylius_product_review
-- ----------------------------
DROP TABLE IF EXISTS `sylius_product_review`;
CREATE TABLE `sylius_product_review` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `author_id` int NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rating` int NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C7056A994584665A` (`product_id`),
  KEY `IDX_C7056A99F675F31B` (`author_id`),
  CONSTRAINT `FK_C7056A994584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_C7056A99F675F31B` FOREIGN KEY (`author_id`) REFERENCES `sylius_customer` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_product_review
-- ----------------------------
BEGIN;
INSERT INTO `sylius_product_review` VALUES (1, 14, 2, 'velit illum vel', 2, 'Tempora quia odio qui sint sed ut. Voluptas sed in consequatur quod nulla neque ut natus. Ipsam maxime iusto commodi debitis doloremque doloribus.', 'rejected', '2020-12-18 17:25:19', '2020-12-18 17:25:19');
INSERT INTO `sylius_product_review` VALUES (2, 4, 13, 'perferendis eos non', 3, 'Quod animi aperiam occaecati esse odit. Enim corrupti omnis placeat eum et. Rerum qui et nam et.', 'rejected', '2020-12-18 17:25:19', '2020-12-18 17:25:19');
INSERT INTO `sylius_product_review` VALUES (3, 12, 21, 'neque architecto soluta', 5, 'Dolorem et sed dolore accusantium itaque iste explicabo. Consequatur accusamus aut similique quaerat. Ab illo doloribus est et sit.', 'new', '2020-12-18 17:25:19', '2020-12-18 17:25:19');
INSERT INTO `sylius_product_review` VALUES (4, 12, 1, 'ut aut sed', 5, 'Eos qui fugit rerum enim labore officiis. Perspiciatis magni expedita tenetur nostrum excepturi. Quam est vel est et.', 'accepted', '2020-12-18 17:25:19', '2020-12-18 17:25:19');
INSERT INTO `sylius_product_review` VALUES (5, 7, 10, 'est earum modi', 2, 'Aut nisi autem et iure rem neque quia. Nihil eligendi sequi temporibus modi veniam et facere eos. At id nostrum et voluptatum quod.', 'new', '2020-12-18 17:25:19', '2020-12-18 17:25:19');
INSERT INTO `sylius_product_review` VALUES (6, 16, 10, 'voluptas in voluptas', 5, 'Neque facere officiis officiis. Aut ut aut quia nulla eos provident. Ab aut harum et molestiae corrupti.', 'new', '2020-12-18 17:25:19', '2020-12-18 17:25:19');
INSERT INTO `sylius_product_review` VALUES (7, 19, 12, 'omnis ea optio', 1, 'Expedita minus eos id sint harum beatae nam qui. Qui maxime ab ex repellendus libero atque. Est cum aut aut esse nobis.', 'rejected', '2020-12-18 17:25:19', '2020-12-18 17:25:19');
INSERT INTO `sylius_product_review` VALUES (8, 17, 8, 'eos dicta illum', 3, 'Temporibus omnis eos fugiat sed magni alias numquam inventore. Reprehenderit iste dolorum ut possimus. Doloremque sint delectus non corporis fuga.', 'new', '2020-12-18 17:25:19', '2020-12-18 17:25:19');
INSERT INTO `sylius_product_review` VALUES (9, 21, 8, 'neque officiis recusandae', 3, 'Quidem eius recusandae sequi. Doloremque necessitatibus tenetur et est nihil ipsa qui. At nesciunt odio et eius recusandae.', 'rejected', '2020-12-18 17:25:19', '2020-12-18 17:25:19');
INSERT INTO `sylius_product_review` VALUES (10, 8, 13, 'facere architecto dolorem', 1, 'Quis in odit ipsum. Repudiandae et ut officia veniam. Sequi autem temporibus odio modi voluptates corporis.', 'new', '2020-12-18 17:25:19', '2020-12-18 17:25:19');
INSERT INTO `sylius_product_review` VALUES (11, 13, 18, 'modi iste accusantium', 3, 'Esse voluptas voluptas et esse reprehenderit. Eum est illum impedit. Pariatur assumenda et error soluta facere qui.', 'new', '2020-12-18 17:25:19', '2020-12-18 17:25:19');
INSERT INTO `sylius_product_review` VALUES (12, 20, 20, 'beatae doloribus ab', 5, 'Officia rerum laudantium voluptates maiores neque nisi suscipit. Autem sapiente sunt praesentium omnis officia numquam. Quia fugiat enim nobis temporibus.', 'accepted', '2020-12-18 17:25:19', '2020-12-18 17:25:19');
INSERT INTO `sylius_product_review` VALUES (13, 10, 14, 'repudiandae dignissimos dolor', 2, 'Reprehenderit recusandae voluptatum assumenda veniam. Est amet sit vel. Eos molestiae et dolores quisquam magnam nobis quaerat.', 'rejected', '2020-12-18 17:25:19', '2020-12-18 17:25:19');
INSERT INTO `sylius_product_review` VALUES (14, 15, 1, 'corrupti libero deleniti', 1, 'Odit eum est ullam recusandae. Reprehenderit explicabo expedita sit neque. Et suscipit libero fugiat.', 'rejected', '2020-12-18 17:25:19', '2020-12-18 17:25:19');
INSERT INTO `sylius_product_review` VALUES (15, 10, 7, 'ipsa quaerat voluptas', 5, 'Ipsa suscipit ea enim quo suscipit ullam ut. Non nihil ut numquam neque error commodi voluptas. Molestiae numquam omnis excepturi eius.', 'new', '2020-12-18 17:25:19', '2020-12-18 17:25:19');
INSERT INTO `sylius_product_review` VALUES (16, 3, 13, 'ut exercitationem magnam', 3, 'Aliquid ipsum est natus totam. Aut sunt hic in quaerat. Pariatur doloribus quo pariatur ipsa et ipsum.', 'new', '2020-12-18 17:25:20', '2020-12-18 17:25:20');
INSERT INTO `sylius_product_review` VALUES (17, 18, 5, 'cumque optio autem', 3, 'Nam impedit fugiat totam et laudantium. Excepturi autem sed voluptas nisi nesciunt et distinctio non. Sit ut eos ea et.', 'accepted', '2020-12-18 17:25:20', '2020-12-18 17:25:20');
INSERT INTO `sylius_product_review` VALUES (18, 4, 3, 'veniam enim reiciendis', 3, 'Vel ullam illo rerum quidem voluptatem. Sed nam dolorem tempora libero. Et laudantium sequi et et.', 'new', '2020-12-18 17:25:20', '2020-12-18 17:25:20');
INSERT INTO `sylius_product_review` VALUES (19, 9, 4, 'qui odit quam', 3, 'At aperiam minima quia ipsa. Aliquam pariatur voluptatem labore omnis. Dolores ut est et eaque placeat est.', 'accepted', '2020-12-18 17:25:20', '2020-12-18 17:25:20');
INSERT INTO `sylius_product_review` VALUES (20, 18, 17, 'ut sunt occaecati', 2, 'Voluptas veniam voluptatum quod veniam quis. Minus sed sit ullam minus molestiae. Nostrum nihil velit eos id.', 'new', '2020-12-18 17:25:20', '2020-12-18 17:25:20');
INSERT INTO `sylius_product_review` VALUES (21, 16, 20, 'error veniam odit', 2, 'Autem et qui quo et nemo qui. Rem saepe officia et aut soluta ex tenetur. Suscipit quibusdam alias praesentium.', 'accepted', '2020-12-18 17:25:20', '2020-12-18 17:25:20');
INSERT INTO `sylius_product_review` VALUES (22, 7, 12, 'atque quis id', 2, 'Nam itaque commodi quidem assumenda iure. Libero rerum maxime ut nam. Numquam earum voluptatibus maxime adipisci sed.', 'accepted', '2020-12-18 17:25:20', '2020-12-18 17:25:20');
INSERT INTO `sylius_product_review` VALUES (23, 11, 14, 'debitis aut consequatur', 4, 'Est eos enim voluptate ad sit iste consequatur aut. Molestias omnis eos ea amet. Dolor et quam soluta ea et pariatur.', 'rejected', '2020-12-18 17:25:20', '2020-12-18 17:25:20');
INSERT INTO `sylius_product_review` VALUES (24, 12, 21, 'aperiam tempora aliquam', 2, 'Accusantium voluptate eius sed. Ea eius molestiae autem sit vel nemo. Officia laboriosam blanditiis tempore ratione reprehenderit.', 'rejected', '2020-12-18 17:25:20', '2020-12-18 17:25:20');
INSERT INTO `sylius_product_review` VALUES (25, 16, 17, 'corrupti et quisquam', 3, 'Aut quis et eos mollitia eius alias. Placeat inventore et tempora quibusdam. Consectetur dolorem aliquid aperiam excepturi impedit sunt assumenda.', 'accepted', '2020-12-18 17:25:20', '2020-12-18 17:25:20');
INSERT INTO `sylius_product_review` VALUES (26, 15, 21, 'autem maxime porro', 3, 'Reiciendis libero sint quidem numquam quo iste et incidunt. Quia eum iste qui et molestiae dicta aut. Explicabo minima dolore qui.', 'new', '2020-12-18 17:25:20', '2020-12-18 17:25:20');
INSERT INTO `sylius_product_review` VALUES (27, 1, 15, 'temporibus sint rerum', 5, 'Nam consequatur et nobis officia et nisi est quibusdam. Voluptate culpa culpa quasi. Ex fugiat odit tempore dolor rem.', 'rejected', '2020-12-18 17:25:20', '2020-12-18 17:25:20');
INSERT INTO `sylius_product_review` VALUES (28, 12, 18, 'velit et ratione', 2, 'Delectus facere molestiae ea harum consequatur quidem. Consequatur unde ipsa voluptatibus velit suscipit exercitationem vero. Natus quia veniam facere et velit.', 'rejected', '2020-12-18 17:25:20', '2020-12-18 17:25:20');
INSERT INTO `sylius_product_review` VALUES (29, 13, 17, 'praesentium aspernatur aut', 2, 'Pariatur quaerat aut sed voluptatibus consequatur quibusdam ut voluptas. Vel rerum ut quia et consequatur aliquid quia. Et quos aut voluptatem odit velit.', 'new', '2020-12-18 17:25:20', '2020-12-18 17:25:20');
INSERT INTO `sylius_product_review` VALUES (30, 12, 12, 'quae fuga voluptatibus', 3, 'Magni temporibus aut veniam veritatis magnam. Qui ratione officia qui sed. Dolores sunt mollitia quibusdam accusantium harum.', 'new', '2020-12-18 17:25:20', '2020-12-18 17:25:20');
INSERT INTO `sylius_product_review` VALUES (31, 11, 10, 'est sit dolores', 3, 'Nisi voluptas cupiditate facilis accusamus aperiam aliquid. Necessitatibus autem voluptas debitis praesentium rerum. Quod consequatur maiores assumenda repudiandae.', 'new', '2020-12-18 17:25:20', '2020-12-18 17:25:20');
INSERT INTO `sylius_product_review` VALUES (32, 9, 1, 'est ab molestiae', 1, 'Non eius non et. Quae amet et illo aut qui et molestias. Pariatur non qui corporis nulla.', 'rejected', '2020-12-18 17:25:20', '2020-12-18 17:25:20');
INSERT INTO `sylius_product_review` VALUES (33, 8, 5, 'voluptates doloremque rem', 5, 'Hic fuga sit quam dicta. Ullam iusto et assumenda quam. Quia qui tempora iste molestiae.', 'rejected', '2020-12-18 17:25:20', '2020-12-18 17:25:20');
INSERT INTO `sylius_product_review` VALUES (34, 12, 6, 'quia et voluptates', 4, 'Sit ipsa maxime deserunt cupiditate. Architecto rerum voluptatum debitis et beatae. Voluptas ducimus dolores alias est ut.', 'accepted', '2020-12-18 17:25:20', '2020-12-18 17:25:20');
INSERT INTO `sylius_product_review` VALUES (35, 18, 5, 'nihil magni libero', 5, 'Temporibus nihil molestias autem et aliquam. Ab fugit autem eos illo. Accusantium repudiandae culpa excepturi asperiores.', 'rejected', '2020-12-18 17:25:20', '2020-12-18 17:25:20');
INSERT INTO `sylius_product_review` VALUES (36, 7, 1, 'qui ad velit', 5, 'Assumenda excepturi est et nihil earum aliquam. Delectus facilis modi expedita nulla. Aut accusamus libero enim asperiores distinctio.', 'rejected', '2020-12-18 17:25:20', '2020-12-18 17:25:20');
INSERT INTO `sylius_product_review` VALUES (37, 11, 12, 'officia voluptatem ullam', 5, 'Fugiat dolor qui cum ratione corporis. Excepturi esse rerum et aut ad. Pariatur est et et et.', 'new', '2020-12-18 17:25:20', '2020-12-18 17:25:20');
INSERT INTO `sylius_product_review` VALUES (38, 13, 20, 'exercitationem sed totam', 1, 'Qui quaerat modi fugit et et. Iure quaerat amet harum odit recusandae error voluptatem. Qui laudantium sed autem qui quaerat praesentium.', 'new', '2020-12-18 17:25:20', '2020-12-18 17:25:20');
INSERT INTO `sylius_product_review` VALUES (39, 8, 1, 'est voluptatem mollitia', 3, 'Repudiandae qui maxime error cum. Eius est ut quis asperiores adipisci. Ipsam dolorum sequi incidunt veritatis quam.', 'new', '2020-12-18 17:25:20', '2020-12-18 17:25:20');
INSERT INTO `sylius_product_review` VALUES (40, 5, 5, 'eos repellendus accusantium', 5, 'Dignissimos et doloremque earum non. Deleniti et porro tenetur repellendus quia. Iusto sint tempora maiores eligendi.', 'new', '2020-12-18 17:25:20', '2020-12-18 17:25:20');
COMMIT;

-- ----------------------------
-- Table structure for sylius_product_taxon
-- ----------------------------
DROP TABLE IF EXISTS `sylius_product_taxon`;
CREATE TABLE `sylius_product_taxon` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `taxon_id` int NOT NULL,
  `position` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_taxon_idx` (`product_id`,`taxon_id`),
  KEY `IDX_169C6CD94584665A` (`product_id`),
  KEY `IDX_169C6CD9DE13F470` (`taxon_id`),
  CONSTRAINT `FK_169C6CD94584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_169C6CD9DE13F470` FOREIGN KEY (`taxon_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_product_taxon
-- ----------------------------
BEGIN;
INSERT INTO `sylius_product_taxon` VALUES (1, 1, 2, 0);
INSERT INTO `sylius_product_taxon` VALUES (2, 1, 4, 0);
INSERT INTO `sylius_product_taxon` VALUES (3, 2, 2, 1);
INSERT INTO `sylius_product_taxon` VALUES (4, 2, 4, 1);
INSERT INTO `sylius_product_taxon` VALUES (5, 3, 2, 2);
INSERT INTO `sylius_product_taxon` VALUES (6, 3, 4, 2);
INSERT INTO `sylius_product_taxon` VALUES (7, 4, 2, 3);
INSERT INTO `sylius_product_taxon` VALUES (8, 4, 3, 0);
INSERT INTO `sylius_product_taxon` VALUES (9, 5, 2, 4);
INSERT INTO `sylius_product_taxon` VALUES (10, 5, 3, 1);
INSERT INTO `sylius_product_taxon` VALUES (11, 6, 2, 5);
INSERT INTO `sylius_product_taxon` VALUES (12, 6, 3, 2);
INSERT INTO `sylius_product_taxon` VALUES (13, 7, 5, 0);
INSERT INTO `sylius_product_taxon` VALUES (14, 7, 7, 0);
INSERT INTO `sylius_product_taxon` VALUES (15, 8, 5, 1);
INSERT INTO `sylius_product_taxon` VALUES (16, 8, 6, 0);
INSERT INTO `sylius_product_taxon` VALUES (17, 9, 5, 2);
INSERT INTO `sylius_product_taxon` VALUES (18, 9, 7, 1);
INSERT INTO `sylius_product_taxon` VALUES (19, 10, 5, 3);
INSERT INTO `sylius_product_taxon` VALUES (20, 10, 6, 1);
INSERT INTO `sylius_product_taxon` VALUES (21, 11, 8, 0);
INSERT INTO `sylius_product_taxon` VALUES (22, 12, 8, 1);
INSERT INTO `sylius_product_taxon` VALUES (23, 13, 8, 2);
INSERT INTO `sylius_product_taxon` VALUES (24, 14, 9, 0);
INSERT INTO `sylius_product_taxon` VALUES (25, 14, 10, 0);
INSERT INTO `sylius_product_taxon` VALUES (26, 15, 9, 1);
INSERT INTO `sylius_product_taxon` VALUES (27, 15, 10, 1);
INSERT INTO `sylius_product_taxon` VALUES (28, 16, 9, 2);
INSERT INTO `sylius_product_taxon` VALUES (29, 16, 10, 2);
INSERT INTO `sylius_product_taxon` VALUES (30, 17, 9, 3);
INSERT INTO `sylius_product_taxon` VALUES (31, 17, 10, 3);
INSERT INTO `sylius_product_taxon` VALUES (32, 18, 9, 4);
INSERT INTO `sylius_product_taxon` VALUES (33, 18, 11, 0);
INSERT INTO `sylius_product_taxon` VALUES (34, 19, 9, 5);
INSERT INTO `sylius_product_taxon` VALUES (35, 19, 11, 1);
INSERT INTO `sylius_product_taxon` VALUES (36, 20, 9, 6);
INSERT INTO `sylius_product_taxon` VALUES (37, 20, 11, 2);
INSERT INTO `sylius_product_taxon` VALUES (38, 21, 9, 7);
INSERT INTO `sylius_product_taxon` VALUES (39, 21, 11, 3);
COMMIT;

-- ----------------------------
-- Table structure for sylius_product_translation
-- ----------------------------
DROP TABLE IF EXISTS `sylius_product_translation`;
CREATE TABLE `sylius_product_translation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `translatable_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` longtext COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_translation_uniq_trans` (`translatable_id`,`locale`),
  UNIQUE KEY `UNIQ_105A9084180C698989D9B62` (`locale`,`slug`),
  KEY `IDX_105A9082C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_105A9082C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_product_translation
-- ----------------------------
BEGIN;
INSERT INTO `sylius_product_translation` VALUES (1, 1, 'Everyday white basic T-Shirt', 'everyday-white-basic-t-shirt', 'Voluptate et aut dolor ut. Quos iste quis odio. Eum sint saepe dolorem. Magnam unde voluptas rerum qui. Expedita ratione rerum minima commodi enim.\n\nOdit ut rerum saepe ipsum eos voluptatem. Reprehenderit reiciendis autem in at qui aut. Earum sit illo culpa dolorem autem perferendis. Non dignissimos sed enim fugiat non illo.\n\nFacere voluptatem quis pariatur vel cupiditate. Qui minus et minus eos. Voluptate dolores corrupti reiciendis velit. Atque ut porro deserunt.', NULL, NULL, 'Magni animi dolores dolor aliquid. Ipsum et adipisci fugit sequi. Aut voluptas perferendis in facere facilis. Est totam facilis iste at et ab similique ullam.', 'en_US');
INSERT INTO `sylius_product_translation` VALUES (2, 1, 'Everyday white basic T-Shirt', 'everyday-white-basic-t-shirt', 'Voluptate et aut dolor ut. Quos iste quis odio. Eum sint saepe dolorem. Magnam unde voluptas rerum qui. Expedita ratione rerum minima commodi enim.\n\nOdit ut rerum saepe ipsum eos voluptatem. Reprehenderit reiciendis autem in at qui aut. Earum sit illo culpa dolorem autem perferendis. Non dignissimos sed enim fugiat non illo.\n\nFacere voluptatem quis pariatur vel cupiditate. Qui minus et minus eos. Voluptate dolores corrupti reiciendis velit. Atque ut porro deserunt.', NULL, NULL, 'Magni animi dolores dolor aliquid. Ipsum et adipisci fugit sequi. Aut voluptas perferendis in facere facilis. Est totam facilis iste at et ab similique ullam.', 'de_DE');
INSERT INTO `sylius_product_translation` VALUES (3, 1, 'Everyday white basic T-Shirt', 'everyday-white-basic-t-shirt', 'Voluptate et aut dolor ut. Quos iste quis odio. Eum sint saepe dolorem. Magnam unde voluptas rerum qui. Expedita ratione rerum minima commodi enim.\n\nOdit ut rerum saepe ipsum eos voluptatem. Reprehenderit reiciendis autem in at qui aut. Earum sit illo culpa dolorem autem perferendis. Non dignissimos sed enim fugiat non illo.\n\nFacere voluptatem quis pariatur vel cupiditate. Qui minus et minus eos. Voluptate dolores corrupti reiciendis velit. Atque ut porro deserunt.', NULL, NULL, 'Magni animi dolores dolor aliquid. Ipsum et adipisci fugit sequi. Aut voluptas perferendis in facere facilis. Est totam facilis iste at et ab similique ullam.', 'fr_FR');
INSERT INTO `sylius_product_translation` VALUES (4, 1, 'Everyday white basic T-Shirt', 'everyday-white-basic-t-shirt', 'Voluptate et aut dolor ut. Quos iste quis odio. Eum sint saepe dolorem. Magnam unde voluptas rerum qui. Expedita ratione rerum minima commodi enim.\n\nOdit ut rerum saepe ipsum eos voluptatem. Reprehenderit reiciendis autem in at qui aut. Earum sit illo culpa dolorem autem perferendis. Non dignissimos sed enim fugiat non illo.\n\nFacere voluptatem quis pariatur vel cupiditate. Qui minus et minus eos. Voluptate dolores corrupti reiciendis velit. Atque ut porro deserunt.', NULL, NULL, 'Magni animi dolores dolor aliquid. Ipsum et adipisci fugit sequi. Aut voluptas perferendis in facere facilis. Est totam facilis iste at et ab similique ullam.', 'pl_PL');
INSERT INTO `sylius_product_translation` VALUES (5, 1, 'Everyday white basic T-Shirt', 'everyday-white-basic-t-shirt', 'Voluptate et aut dolor ut. Quos iste quis odio. Eum sint saepe dolorem. Magnam unde voluptas rerum qui. Expedita ratione rerum minima commodi enim.\n\nOdit ut rerum saepe ipsum eos voluptatem. Reprehenderit reiciendis autem in at qui aut. Earum sit illo culpa dolorem autem perferendis. Non dignissimos sed enim fugiat non illo.\n\nFacere voluptatem quis pariatur vel cupiditate. Qui minus et minus eos. Voluptate dolores corrupti reiciendis velit. Atque ut porro deserunt.', NULL, NULL, 'Magni animi dolores dolor aliquid. Ipsum et adipisci fugit sequi. Aut voluptas perferendis in facere facilis. Est totam facilis iste at et ab similique ullam.', 'es_ES');
INSERT INTO `sylius_product_translation` VALUES (6, 1, 'Everyday white basic T-Shirt', 'everyday-white-basic-t-shirt', 'Voluptate et aut dolor ut. Quos iste quis odio. Eum sint saepe dolorem. Magnam unde voluptas rerum qui. Expedita ratione rerum minima commodi enim.\n\nOdit ut rerum saepe ipsum eos voluptatem. Reprehenderit reiciendis autem in at qui aut. Earum sit illo culpa dolorem autem perferendis. Non dignissimos sed enim fugiat non illo.\n\nFacere voluptatem quis pariatur vel cupiditate. Qui minus et minus eos. Voluptate dolores corrupti reiciendis velit. Atque ut porro deserunt.', NULL, NULL, 'Magni animi dolores dolor aliquid. Ipsum et adipisci fugit sequi. Aut voluptas perferendis in facere facilis. Est totam facilis iste at et ab similique ullam.', 'es_MX');
INSERT INTO `sylius_product_translation` VALUES (7, 1, 'Everyday white basic T-Shirt', 'everyday-white-basic-t-shirt', 'Voluptate et aut dolor ut. Quos iste quis odio. Eum sint saepe dolorem. Magnam unde voluptas rerum qui. Expedita ratione rerum minima commodi enim.\n\nOdit ut rerum saepe ipsum eos voluptatem. Reprehenderit reiciendis autem in at qui aut. Earum sit illo culpa dolorem autem perferendis. Non dignissimos sed enim fugiat non illo.\n\nFacere voluptatem quis pariatur vel cupiditate. Qui minus et minus eos. Voluptate dolores corrupti reiciendis velit. Atque ut porro deserunt.', NULL, NULL, 'Magni animi dolores dolor aliquid. Ipsum et adipisci fugit sequi. Aut voluptas perferendis in facere facilis. Est totam facilis iste at et ab similique ullam.', 'pt_PT');
INSERT INTO `sylius_product_translation` VALUES (8, 1, 'Everyday white basic T-Shirt', 'everyday-white-basic-t-shirt', 'Voluptate et aut dolor ut. Quos iste quis odio. Eum sint saepe dolorem. Magnam unde voluptas rerum qui. Expedita ratione rerum minima commodi enim.\n\nOdit ut rerum saepe ipsum eos voluptatem. Reprehenderit reiciendis autem in at qui aut. Earum sit illo culpa dolorem autem perferendis. Non dignissimos sed enim fugiat non illo.\n\nFacere voluptatem quis pariatur vel cupiditate. Qui minus et minus eos. Voluptate dolores corrupti reiciendis velit. Atque ut porro deserunt.', NULL, NULL, 'Magni animi dolores dolor aliquid. Ipsum et adipisci fugit sequi. Aut voluptas perferendis in facere facilis. Est totam facilis iste at et ab similique ullam.', 'zh_CN');
INSERT INTO `sylius_product_translation` VALUES (9, 2, 'Loose white designer T-Shirt', 'loose-white-designer-t-shirt', 'Voluptate necessitatibus dignissimos aliquam. Aut quam dolores tempore esse quae nisi neque. Libero laborum ullam aperiam ut.\n\nDolorum voluptas ut voluptatem blanditiis. Sed eos quaerat fugiat nihil aperiam veniam doloremque. Vero voluptates repudiandae aut quis velit doloremque voluptatum vitae. Temporibus est atque cumque quo et molestias architecto.\n\nRecusandae ut cum id voluptatem quis. Debitis voluptas aliquam enim ut perspiciatis molestias. Possimus dolorem ut nobis quod qui. Molestias in est laboriosam tempore.', NULL, NULL, 'Ex inventore ipsum omnis voluptatem. Saepe error exercitationem vel mollitia. Et sunt qui consequuntur itaque corrupti. Eligendi ipsam id esse mollitia.', 'en_US');
INSERT INTO `sylius_product_translation` VALUES (10, 2, 'Loose white designer T-Shirt', 'loose-white-designer-t-shirt', 'Voluptate necessitatibus dignissimos aliquam. Aut quam dolores tempore esse quae nisi neque. Libero laborum ullam aperiam ut.\n\nDolorum voluptas ut voluptatem blanditiis. Sed eos quaerat fugiat nihil aperiam veniam doloremque. Vero voluptates repudiandae aut quis velit doloremque voluptatum vitae. Temporibus est atque cumque quo et molestias architecto.\n\nRecusandae ut cum id voluptatem quis. Debitis voluptas aliquam enim ut perspiciatis molestias. Possimus dolorem ut nobis quod qui. Molestias in est laboriosam tempore.', NULL, NULL, 'Ex inventore ipsum omnis voluptatem. Saepe error exercitationem vel mollitia. Et sunt qui consequuntur itaque corrupti. Eligendi ipsam id esse mollitia.', 'de_DE');
INSERT INTO `sylius_product_translation` VALUES (11, 2, 'Loose white designer T-Shirt', 'loose-white-designer-t-shirt', 'Voluptate necessitatibus dignissimos aliquam. Aut quam dolores tempore esse quae nisi neque. Libero laborum ullam aperiam ut.\n\nDolorum voluptas ut voluptatem blanditiis. Sed eos quaerat fugiat nihil aperiam veniam doloremque. Vero voluptates repudiandae aut quis velit doloremque voluptatum vitae. Temporibus est atque cumque quo et molestias architecto.\n\nRecusandae ut cum id voluptatem quis. Debitis voluptas aliquam enim ut perspiciatis molestias. Possimus dolorem ut nobis quod qui. Molestias in est laboriosam tempore.', NULL, NULL, 'Ex inventore ipsum omnis voluptatem. Saepe error exercitationem vel mollitia. Et sunt qui consequuntur itaque corrupti. Eligendi ipsam id esse mollitia.', 'fr_FR');
INSERT INTO `sylius_product_translation` VALUES (12, 2, 'Loose white designer T-Shirt', 'loose-white-designer-t-shirt', 'Voluptate necessitatibus dignissimos aliquam. Aut quam dolores tempore esse quae nisi neque. Libero laborum ullam aperiam ut.\n\nDolorum voluptas ut voluptatem blanditiis. Sed eos quaerat fugiat nihil aperiam veniam doloremque. Vero voluptates repudiandae aut quis velit doloremque voluptatum vitae. Temporibus est atque cumque quo et molestias architecto.\n\nRecusandae ut cum id voluptatem quis. Debitis voluptas aliquam enim ut perspiciatis molestias. Possimus dolorem ut nobis quod qui. Molestias in est laboriosam tempore.', NULL, NULL, 'Ex inventore ipsum omnis voluptatem. Saepe error exercitationem vel mollitia. Et sunt qui consequuntur itaque corrupti. Eligendi ipsam id esse mollitia.', 'pl_PL');
INSERT INTO `sylius_product_translation` VALUES (13, 2, 'Loose white designer T-Shirt', 'loose-white-designer-t-shirt', 'Voluptate necessitatibus dignissimos aliquam. Aut quam dolores tempore esse quae nisi neque. Libero laborum ullam aperiam ut.\n\nDolorum voluptas ut voluptatem blanditiis. Sed eos quaerat fugiat nihil aperiam veniam doloremque. Vero voluptates repudiandae aut quis velit doloremque voluptatum vitae. Temporibus est atque cumque quo et molestias architecto.\n\nRecusandae ut cum id voluptatem quis. Debitis voluptas aliquam enim ut perspiciatis molestias. Possimus dolorem ut nobis quod qui. Molestias in est laboriosam tempore.', NULL, NULL, 'Ex inventore ipsum omnis voluptatem. Saepe error exercitationem vel mollitia. Et sunt qui consequuntur itaque corrupti. Eligendi ipsam id esse mollitia.', 'es_ES');
INSERT INTO `sylius_product_translation` VALUES (14, 2, 'Loose white designer T-Shirt', 'loose-white-designer-t-shirt', 'Voluptate necessitatibus dignissimos aliquam. Aut quam dolores tempore esse quae nisi neque. Libero laborum ullam aperiam ut.\n\nDolorum voluptas ut voluptatem blanditiis. Sed eos quaerat fugiat nihil aperiam veniam doloremque. Vero voluptates repudiandae aut quis velit doloremque voluptatum vitae. Temporibus est atque cumque quo et molestias architecto.\n\nRecusandae ut cum id voluptatem quis. Debitis voluptas aliquam enim ut perspiciatis molestias. Possimus dolorem ut nobis quod qui. Molestias in est laboriosam tempore.', NULL, NULL, 'Ex inventore ipsum omnis voluptatem. Saepe error exercitationem vel mollitia. Et sunt qui consequuntur itaque corrupti. Eligendi ipsam id esse mollitia.', 'es_MX');
INSERT INTO `sylius_product_translation` VALUES (15, 2, 'Loose white designer T-Shirt', 'loose-white-designer-t-shirt', 'Voluptate necessitatibus dignissimos aliquam. Aut quam dolores tempore esse quae nisi neque. Libero laborum ullam aperiam ut.\n\nDolorum voluptas ut voluptatem blanditiis. Sed eos quaerat fugiat nihil aperiam veniam doloremque. Vero voluptates repudiandae aut quis velit doloremque voluptatum vitae. Temporibus est atque cumque quo et molestias architecto.\n\nRecusandae ut cum id voluptatem quis. Debitis voluptas aliquam enim ut perspiciatis molestias. Possimus dolorem ut nobis quod qui. Molestias in est laboriosam tempore.', NULL, NULL, 'Ex inventore ipsum omnis voluptatem. Saepe error exercitationem vel mollitia. Et sunt qui consequuntur itaque corrupti. Eligendi ipsam id esse mollitia.', 'pt_PT');
INSERT INTO `sylius_product_translation` VALUES (16, 2, 'Loose white designer T-Shirt', 'loose-white-designer-t-shirt', 'Voluptate necessitatibus dignissimos aliquam. Aut quam dolores tempore esse quae nisi neque. Libero laborum ullam aperiam ut.\n\nDolorum voluptas ut voluptatem blanditiis. Sed eos quaerat fugiat nihil aperiam veniam doloremque. Vero voluptates repudiandae aut quis velit doloremque voluptatum vitae. Temporibus est atque cumque quo et molestias architecto.\n\nRecusandae ut cum id voluptatem quis. Debitis voluptas aliquam enim ut perspiciatis molestias. Possimus dolorem ut nobis quod qui. Molestias in est laboriosam tempore.', NULL, NULL, 'Ex inventore ipsum omnis voluptatem. Saepe error exercitationem vel mollitia. Et sunt qui consequuntur itaque corrupti. Eligendi ipsam id esse mollitia.', 'zh_CN');
INSERT INTO `sylius_product_translation` VALUES (17, 3, 'Ribbed copper slim fit Tee', 'ribbed-copper-slim-fit-tee', 'Dolorem est non facilis consequatur labore magni. Voluptatum quae sint ut alias tempore. Ex id eius et dicta sit voluptatem neque. Dolor molestiae fuga reprehenderit consequuntur facilis repellat. Sed similique quia quia eos.\n\nEt et velit commodi libero blanditiis. Magni ipsam repudiandae temporibus vitae enim quisquam. Nam cupiditate molestiae sit esse dolore.\n\nOdio est et ad vitae aut quia est. Harum qui aut animi ad. Non odit repellendus dolore enim. Quas incidunt quibusdam totam aut.', NULL, NULL, 'Voluptatibus culpa quo nisi exercitationem atque sunt. Sed esse fugit repellat quibusdam possimus asperiores error. Voluptas aut optio laudantium voluptatem aut. Ut quis modi et eius. Aliquam delectus dolor fuga omnis ex.', 'en_US');
INSERT INTO `sylius_product_translation` VALUES (18, 3, 'Ribbed copper slim fit Tee', 'ribbed-copper-slim-fit-tee', 'Dolorem est non facilis consequatur labore magni. Voluptatum quae sint ut alias tempore. Ex id eius et dicta sit voluptatem neque. Dolor molestiae fuga reprehenderit consequuntur facilis repellat. Sed similique quia quia eos.\n\nEt et velit commodi libero blanditiis. Magni ipsam repudiandae temporibus vitae enim quisquam. Nam cupiditate molestiae sit esse dolore.\n\nOdio est et ad vitae aut quia est. Harum qui aut animi ad. Non odit repellendus dolore enim. Quas incidunt quibusdam totam aut.', NULL, NULL, 'Voluptatibus culpa quo nisi exercitationem atque sunt. Sed esse fugit repellat quibusdam possimus asperiores error. Voluptas aut optio laudantium voluptatem aut. Ut quis modi et eius. Aliquam delectus dolor fuga omnis ex.', 'de_DE');
INSERT INTO `sylius_product_translation` VALUES (19, 3, 'Ribbed copper slim fit Tee', 'ribbed-copper-slim-fit-tee', 'Dolorem est non facilis consequatur labore magni. Voluptatum quae sint ut alias tempore. Ex id eius et dicta sit voluptatem neque. Dolor molestiae fuga reprehenderit consequuntur facilis repellat. Sed similique quia quia eos.\n\nEt et velit commodi libero blanditiis. Magni ipsam repudiandae temporibus vitae enim quisquam. Nam cupiditate molestiae sit esse dolore.\n\nOdio est et ad vitae aut quia est. Harum qui aut animi ad. Non odit repellendus dolore enim. Quas incidunt quibusdam totam aut.', NULL, NULL, 'Voluptatibus culpa quo nisi exercitationem atque sunt. Sed esse fugit repellat quibusdam possimus asperiores error. Voluptas aut optio laudantium voluptatem aut. Ut quis modi et eius. Aliquam delectus dolor fuga omnis ex.', 'fr_FR');
INSERT INTO `sylius_product_translation` VALUES (20, 3, 'Ribbed copper slim fit Tee', 'ribbed-copper-slim-fit-tee', 'Dolorem est non facilis consequatur labore magni. Voluptatum quae sint ut alias tempore. Ex id eius et dicta sit voluptatem neque. Dolor molestiae fuga reprehenderit consequuntur facilis repellat. Sed similique quia quia eos.\n\nEt et velit commodi libero blanditiis. Magni ipsam repudiandae temporibus vitae enim quisquam. Nam cupiditate molestiae sit esse dolore.\n\nOdio est et ad vitae aut quia est. Harum qui aut animi ad. Non odit repellendus dolore enim. Quas incidunt quibusdam totam aut.', NULL, NULL, 'Voluptatibus culpa quo nisi exercitationem atque sunt. Sed esse fugit repellat quibusdam possimus asperiores error. Voluptas aut optio laudantium voluptatem aut. Ut quis modi et eius. Aliquam delectus dolor fuga omnis ex.', 'pl_PL');
INSERT INTO `sylius_product_translation` VALUES (21, 3, 'Ribbed copper slim fit Tee', 'ribbed-copper-slim-fit-tee', 'Dolorem est non facilis consequatur labore magni. Voluptatum quae sint ut alias tempore. Ex id eius et dicta sit voluptatem neque. Dolor molestiae fuga reprehenderit consequuntur facilis repellat. Sed similique quia quia eos.\n\nEt et velit commodi libero blanditiis. Magni ipsam repudiandae temporibus vitae enim quisquam. Nam cupiditate molestiae sit esse dolore.\n\nOdio est et ad vitae aut quia est. Harum qui aut animi ad. Non odit repellendus dolore enim. Quas incidunt quibusdam totam aut.', NULL, NULL, 'Voluptatibus culpa quo nisi exercitationem atque sunt. Sed esse fugit repellat quibusdam possimus asperiores error. Voluptas aut optio laudantium voluptatem aut. Ut quis modi et eius. Aliquam delectus dolor fuga omnis ex.', 'es_ES');
INSERT INTO `sylius_product_translation` VALUES (22, 3, 'Ribbed copper slim fit Tee', 'ribbed-copper-slim-fit-tee', 'Dolorem est non facilis consequatur labore magni. Voluptatum quae sint ut alias tempore. Ex id eius et dicta sit voluptatem neque. Dolor molestiae fuga reprehenderit consequuntur facilis repellat. Sed similique quia quia eos.\n\nEt et velit commodi libero blanditiis. Magni ipsam repudiandae temporibus vitae enim quisquam. Nam cupiditate molestiae sit esse dolore.\n\nOdio est et ad vitae aut quia est. Harum qui aut animi ad. Non odit repellendus dolore enim. Quas incidunt quibusdam totam aut.', NULL, NULL, 'Voluptatibus culpa quo nisi exercitationem atque sunt. Sed esse fugit repellat quibusdam possimus asperiores error. Voluptas aut optio laudantium voluptatem aut. Ut quis modi et eius. Aliquam delectus dolor fuga omnis ex.', 'es_MX');
INSERT INTO `sylius_product_translation` VALUES (23, 3, 'Ribbed copper slim fit Tee', 'ribbed-copper-slim-fit-tee', 'Dolorem est non facilis consequatur labore magni. Voluptatum quae sint ut alias tempore. Ex id eius et dicta sit voluptatem neque. Dolor molestiae fuga reprehenderit consequuntur facilis repellat. Sed similique quia quia eos.\n\nEt et velit commodi libero blanditiis. Magni ipsam repudiandae temporibus vitae enim quisquam. Nam cupiditate molestiae sit esse dolore.\n\nOdio est et ad vitae aut quia est. Harum qui aut animi ad. Non odit repellendus dolore enim. Quas incidunt quibusdam totam aut.', NULL, NULL, 'Voluptatibus culpa quo nisi exercitationem atque sunt. Sed esse fugit repellat quibusdam possimus asperiores error. Voluptas aut optio laudantium voluptatem aut. Ut quis modi et eius. Aliquam delectus dolor fuga omnis ex.', 'pt_PT');
INSERT INTO `sylius_product_translation` VALUES (24, 3, 'Ribbed copper slim fit Tee', 'ribbed-copper-slim-fit-tee', 'Dolorem est non facilis consequatur labore magni. Voluptatum quae sint ut alias tempore. Ex id eius et dicta sit voluptatem neque. Dolor molestiae fuga reprehenderit consequuntur facilis repellat. Sed similique quia quia eos.\n\nEt et velit commodi libero blanditiis. Magni ipsam repudiandae temporibus vitae enim quisquam. Nam cupiditate molestiae sit esse dolore.\n\nOdio est et ad vitae aut quia est. Harum qui aut animi ad. Non odit repellendus dolore enim. Quas incidunt quibusdam totam aut.', NULL, NULL, 'Voluptatibus culpa quo nisi exercitationem atque sunt. Sed esse fugit repellat quibusdam possimus asperiores error. Voluptas aut optio laudantium voluptatem aut. Ut quis modi et eius. Aliquam delectus dolor fuga omnis ex.', 'zh_CN');
INSERT INTO `sylius_product_translation` VALUES (25, 4, 'Sport basic white T-Shirt', 'sport-basic-white-t-shirt', 'Consectetur maxime perspiciatis architecto et. Optio dicta voluptas voluptas suscipit. Mollitia deleniti quasi reiciendis et. Maiores beatae magni aut vel veniam. Numquam in rerum iste quas molestiae deleniti rerum eum.\n\nMolestias maiores deserunt velit animi sint sint saepe officia. Dolorem aut et quo. Et veniam accusamus rerum ad nam ab. Iste delectus aspernatur quod sit nesciunt.\n\nTotam quibusdam repudiandae deserunt repellat magni tempora velit. Impedit deserunt distinctio veniam. Animi placeat est possimus non possimus quos. Et laboriosam maxime facilis veniam.', NULL, NULL, 'Expedita est commodi quia animi blanditiis modi. Facilis est rerum perspiciatis doloribus dolorem eveniet aut aut. Et nesciunt quisquam sequi quis aliquam.', 'en_US');
INSERT INTO `sylius_product_translation` VALUES (26, 4, 'Sport basic white T-Shirt', 'sport-basic-white-t-shirt', 'Consectetur maxime perspiciatis architecto et. Optio dicta voluptas voluptas suscipit. Mollitia deleniti quasi reiciendis et. Maiores beatae magni aut vel veniam. Numquam in rerum iste quas molestiae deleniti rerum eum.\n\nMolestias maiores deserunt velit animi sint sint saepe officia. Dolorem aut et quo. Et veniam accusamus rerum ad nam ab. Iste delectus aspernatur quod sit nesciunt.\n\nTotam quibusdam repudiandae deserunt repellat magni tempora velit. Impedit deserunt distinctio veniam. Animi placeat est possimus non possimus quos. Et laboriosam maxime facilis veniam.', NULL, NULL, 'Expedita est commodi quia animi blanditiis modi. Facilis est rerum perspiciatis doloribus dolorem eveniet aut aut. Et nesciunt quisquam sequi quis aliquam.', 'de_DE');
INSERT INTO `sylius_product_translation` VALUES (27, 4, 'Sport basic white T-Shirt', 'sport-basic-white-t-shirt', 'Consectetur maxime perspiciatis architecto et. Optio dicta voluptas voluptas suscipit. Mollitia deleniti quasi reiciendis et. Maiores beatae magni aut vel veniam. Numquam in rerum iste quas molestiae deleniti rerum eum.\n\nMolestias maiores deserunt velit animi sint sint saepe officia. Dolorem aut et quo. Et veniam accusamus rerum ad nam ab. Iste delectus aspernatur quod sit nesciunt.\n\nTotam quibusdam repudiandae deserunt repellat magni tempora velit. Impedit deserunt distinctio veniam. Animi placeat est possimus non possimus quos. Et laboriosam maxime facilis veniam.', NULL, NULL, 'Expedita est commodi quia animi blanditiis modi. Facilis est rerum perspiciatis doloribus dolorem eveniet aut aut. Et nesciunt quisquam sequi quis aliquam.', 'fr_FR');
INSERT INTO `sylius_product_translation` VALUES (28, 4, 'Sport basic white T-Shirt', 'sport-basic-white-t-shirt', 'Consectetur maxime perspiciatis architecto et. Optio dicta voluptas voluptas suscipit. Mollitia deleniti quasi reiciendis et. Maiores beatae magni aut vel veniam. Numquam in rerum iste quas molestiae deleniti rerum eum.\n\nMolestias maiores deserunt velit animi sint sint saepe officia. Dolorem aut et quo. Et veniam accusamus rerum ad nam ab. Iste delectus aspernatur quod sit nesciunt.\n\nTotam quibusdam repudiandae deserunt repellat magni tempora velit. Impedit deserunt distinctio veniam. Animi placeat est possimus non possimus quos. Et laboriosam maxime facilis veniam.', NULL, NULL, 'Expedita est commodi quia animi blanditiis modi. Facilis est rerum perspiciatis doloribus dolorem eveniet aut aut. Et nesciunt quisquam sequi quis aliquam.', 'pl_PL');
INSERT INTO `sylius_product_translation` VALUES (29, 4, 'Sport basic white T-Shirt', 'sport-basic-white-t-shirt', 'Consectetur maxime perspiciatis architecto et. Optio dicta voluptas voluptas suscipit. Mollitia deleniti quasi reiciendis et. Maiores beatae magni aut vel veniam. Numquam in rerum iste quas molestiae deleniti rerum eum.\n\nMolestias maiores deserunt velit animi sint sint saepe officia. Dolorem aut et quo. Et veniam accusamus rerum ad nam ab. Iste delectus aspernatur quod sit nesciunt.\n\nTotam quibusdam repudiandae deserunt repellat magni tempora velit. Impedit deserunt distinctio veniam. Animi placeat est possimus non possimus quos. Et laboriosam maxime facilis veniam.', NULL, NULL, 'Expedita est commodi quia animi blanditiis modi. Facilis est rerum perspiciatis doloribus dolorem eveniet aut aut. Et nesciunt quisquam sequi quis aliquam.', 'es_ES');
INSERT INTO `sylius_product_translation` VALUES (30, 4, 'Sport basic white T-Shirt', 'sport-basic-white-t-shirt', 'Consectetur maxime perspiciatis architecto et. Optio dicta voluptas voluptas suscipit. Mollitia deleniti quasi reiciendis et. Maiores beatae magni aut vel veniam. Numquam in rerum iste quas molestiae deleniti rerum eum.\n\nMolestias maiores deserunt velit animi sint sint saepe officia. Dolorem aut et quo. Et veniam accusamus rerum ad nam ab. Iste delectus aspernatur quod sit nesciunt.\n\nTotam quibusdam repudiandae deserunt repellat magni tempora velit. Impedit deserunt distinctio veniam. Animi placeat est possimus non possimus quos. Et laboriosam maxime facilis veniam.', NULL, NULL, 'Expedita est commodi quia animi blanditiis modi. Facilis est rerum perspiciatis doloribus dolorem eveniet aut aut. Et nesciunt quisquam sequi quis aliquam.', 'es_MX');
INSERT INTO `sylius_product_translation` VALUES (31, 4, 'Sport basic white T-Shirt', 'sport-basic-white-t-shirt', 'Consectetur maxime perspiciatis architecto et. Optio dicta voluptas voluptas suscipit. Mollitia deleniti quasi reiciendis et. Maiores beatae magni aut vel veniam. Numquam in rerum iste quas molestiae deleniti rerum eum.\n\nMolestias maiores deserunt velit animi sint sint saepe officia. Dolorem aut et quo. Et veniam accusamus rerum ad nam ab. Iste delectus aspernatur quod sit nesciunt.\n\nTotam quibusdam repudiandae deserunt repellat magni tempora velit. Impedit deserunt distinctio veniam. Animi placeat est possimus non possimus quos. Et laboriosam maxime facilis veniam.', NULL, NULL, 'Expedita est commodi quia animi blanditiis modi. Facilis est rerum perspiciatis doloribus dolorem eveniet aut aut. Et nesciunt quisquam sequi quis aliquam.', 'pt_PT');
INSERT INTO `sylius_product_translation` VALUES (32, 4, 'Sport basic white T-Shirt', 'sport-basic-white-t-shirt', 'Consectetur maxime perspiciatis architecto et. Optio dicta voluptas voluptas suscipit. Mollitia deleniti quasi reiciendis et. Maiores beatae magni aut vel veniam. Numquam in rerum iste quas molestiae deleniti rerum eum.\n\nMolestias maiores deserunt velit animi sint sint saepe officia. Dolorem aut et quo. Et veniam accusamus rerum ad nam ab. Iste delectus aspernatur quod sit nesciunt.\n\nTotam quibusdam repudiandae deserunt repellat magni tempora velit. Impedit deserunt distinctio veniam. Animi placeat est possimus non possimus quos. Et laboriosam maxime facilis veniam.', NULL, NULL, 'Expedita est commodi quia animi blanditiis modi. Facilis est rerum perspiciatis doloribus dolorem eveniet aut aut. Et nesciunt quisquam sequi quis aliquam.', 'zh_CN');
INSERT INTO `sylius_product_translation` VALUES (33, 5, 'Raglan grey & black Tee', 'raglan-grey-black-tee', 'Asperiores repellendus dolores alias libero cupiditate. Voluptas enim eaque ex autem rem tempora maiores. Aut voluptatem vel velit. Ipsum qui harum velit impedit voluptatem deserunt dolores.\n\nEt consequatur molestiae voluptas voluptatem repudiandae quia ex. Dolores maxime nihil quaerat commodi nisi ut. Ullam et vero doloremque est. Quod aut voluptatem unde accusamus deserunt.\n\nDolore eveniet itaque vel optio nihil qui. Nisi dicta aliquam ut. Aut animi et dolor et et. Aliquam aut exercitationem explicabo nisi nemo vitae quo. Quasi tenetur et aliquid numquam.', NULL, NULL, 'Iste alias tempore fugit fuga autem soluta. Ratione beatae explicabo eum quia qui. Quia numquam reiciendis esse harum alias. Dolores sint in qui distinctio nihil.', 'en_US');
INSERT INTO `sylius_product_translation` VALUES (34, 5, 'Raglan grey & black Tee', 'raglan-grey-black-tee', 'Asperiores repellendus dolores alias libero cupiditate. Voluptas enim eaque ex autem rem tempora maiores. Aut voluptatem vel velit. Ipsum qui harum velit impedit voluptatem deserunt dolores.\n\nEt consequatur molestiae voluptas voluptatem repudiandae quia ex. Dolores maxime nihil quaerat commodi nisi ut. Ullam et vero doloremque est. Quod aut voluptatem unde accusamus deserunt.\n\nDolore eveniet itaque vel optio nihil qui. Nisi dicta aliquam ut. Aut animi et dolor et et. Aliquam aut exercitationem explicabo nisi nemo vitae quo. Quasi tenetur et aliquid numquam.', NULL, NULL, 'Iste alias tempore fugit fuga autem soluta. Ratione beatae explicabo eum quia qui. Quia numquam reiciendis esse harum alias. Dolores sint in qui distinctio nihil.', 'de_DE');
INSERT INTO `sylius_product_translation` VALUES (35, 5, 'Raglan grey & black Tee', 'raglan-grey-black-tee', 'Asperiores repellendus dolores alias libero cupiditate. Voluptas enim eaque ex autem rem tempora maiores. Aut voluptatem vel velit. Ipsum qui harum velit impedit voluptatem deserunt dolores.\n\nEt consequatur molestiae voluptas voluptatem repudiandae quia ex. Dolores maxime nihil quaerat commodi nisi ut. Ullam et vero doloremque est. Quod aut voluptatem unde accusamus deserunt.\n\nDolore eveniet itaque vel optio nihil qui. Nisi dicta aliquam ut. Aut animi et dolor et et. Aliquam aut exercitationem explicabo nisi nemo vitae quo. Quasi tenetur et aliquid numquam.', NULL, NULL, 'Iste alias tempore fugit fuga autem soluta. Ratione beatae explicabo eum quia qui. Quia numquam reiciendis esse harum alias. Dolores sint in qui distinctio nihil.', 'fr_FR');
INSERT INTO `sylius_product_translation` VALUES (36, 5, 'Raglan grey & black Tee', 'raglan-grey-black-tee', 'Asperiores repellendus dolores alias libero cupiditate. Voluptas enim eaque ex autem rem tempora maiores. Aut voluptatem vel velit. Ipsum qui harum velit impedit voluptatem deserunt dolores.\n\nEt consequatur molestiae voluptas voluptatem repudiandae quia ex. Dolores maxime nihil quaerat commodi nisi ut. Ullam et vero doloremque est. Quod aut voluptatem unde accusamus deserunt.\n\nDolore eveniet itaque vel optio nihil qui. Nisi dicta aliquam ut. Aut animi et dolor et et. Aliquam aut exercitationem explicabo nisi nemo vitae quo. Quasi tenetur et aliquid numquam.', NULL, NULL, 'Iste alias tempore fugit fuga autem soluta. Ratione beatae explicabo eum quia qui. Quia numquam reiciendis esse harum alias. Dolores sint in qui distinctio nihil.', 'pl_PL');
INSERT INTO `sylius_product_translation` VALUES (37, 5, 'Raglan grey & black Tee', 'raglan-grey-black-tee', 'Asperiores repellendus dolores alias libero cupiditate. Voluptas enim eaque ex autem rem tempora maiores. Aut voluptatem vel velit. Ipsum qui harum velit impedit voluptatem deserunt dolores.\n\nEt consequatur molestiae voluptas voluptatem repudiandae quia ex. Dolores maxime nihil quaerat commodi nisi ut. Ullam et vero doloremque est. Quod aut voluptatem unde accusamus deserunt.\n\nDolore eveniet itaque vel optio nihil qui. Nisi dicta aliquam ut. Aut animi et dolor et et. Aliquam aut exercitationem explicabo nisi nemo vitae quo. Quasi tenetur et aliquid numquam.', NULL, NULL, 'Iste alias tempore fugit fuga autem soluta. Ratione beatae explicabo eum quia qui. Quia numquam reiciendis esse harum alias. Dolores sint in qui distinctio nihil.', 'es_ES');
INSERT INTO `sylius_product_translation` VALUES (38, 5, 'Raglan grey & black Tee', 'raglan-grey-black-tee', 'Asperiores repellendus dolores alias libero cupiditate. Voluptas enim eaque ex autem rem tempora maiores. Aut voluptatem vel velit. Ipsum qui harum velit impedit voluptatem deserunt dolores.\n\nEt consequatur molestiae voluptas voluptatem repudiandae quia ex. Dolores maxime nihil quaerat commodi nisi ut. Ullam et vero doloremque est. Quod aut voluptatem unde accusamus deserunt.\n\nDolore eveniet itaque vel optio nihil qui. Nisi dicta aliquam ut. Aut animi et dolor et et. Aliquam aut exercitationem explicabo nisi nemo vitae quo. Quasi tenetur et aliquid numquam.', NULL, NULL, 'Iste alias tempore fugit fuga autem soluta. Ratione beatae explicabo eum quia qui. Quia numquam reiciendis esse harum alias. Dolores sint in qui distinctio nihil.', 'es_MX');
INSERT INTO `sylius_product_translation` VALUES (39, 5, 'Raglan grey & black Tee', 'raglan-grey-black-tee', 'Asperiores repellendus dolores alias libero cupiditate. Voluptas enim eaque ex autem rem tempora maiores. Aut voluptatem vel velit. Ipsum qui harum velit impedit voluptatem deserunt dolores.\n\nEt consequatur molestiae voluptas voluptatem repudiandae quia ex. Dolores maxime nihil quaerat commodi nisi ut. Ullam et vero doloremque est. Quod aut voluptatem unde accusamus deserunt.\n\nDolore eveniet itaque vel optio nihil qui. Nisi dicta aliquam ut. Aut animi et dolor et et. Aliquam aut exercitationem explicabo nisi nemo vitae quo. Quasi tenetur et aliquid numquam.', NULL, NULL, 'Iste alias tempore fugit fuga autem soluta. Ratione beatae explicabo eum quia qui. Quia numquam reiciendis esse harum alias. Dolores sint in qui distinctio nihil.', 'pt_PT');
INSERT INTO `sylius_product_translation` VALUES (40, 5, 'Raglan grey & black Tee', 'raglan-grey-black-tee', 'Asperiores repellendus dolores alias libero cupiditate. Voluptas enim eaque ex autem rem tempora maiores. Aut voluptatem vel velit. Ipsum qui harum velit impedit voluptatem deserunt dolores.\n\nEt consequatur molestiae voluptas voluptatem repudiandae quia ex. Dolores maxime nihil quaerat commodi nisi ut. Ullam et vero doloremque est. Quod aut voluptatem unde accusamus deserunt.\n\nDolore eveniet itaque vel optio nihil qui. Nisi dicta aliquam ut. Aut animi et dolor et et. Aliquam aut exercitationem explicabo nisi nemo vitae quo. Quasi tenetur et aliquid numquam.', NULL, NULL, 'Iste alias tempore fugit fuga autem soluta. Ratione beatae explicabo eum quia qui. Quia numquam reiciendis esse harum alias. Dolores sint in qui distinctio nihil.', 'zh_CN');
INSERT INTO `sylius_product_translation` VALUES (41, 6, 'Oversize white cotton T-Shirt', 'oversize-white-cotton-t-shirt', 'Et occaecati eveniet veritatis voluptatem. Ducimus qui itaque voluptatum tenetur. Sint quis dicta et amet et rem expedita. Ea eveniet at et et omnis.\n\nItaque error ut magni esse sequi dolorem. Explicabo debitis est sunt. Sed quidem beatae debitis expedita molestiae dolor similique.\n\nQuidem accusantium voluptatem enim eum beatae minima veniam. Sunt quasi praesentium voluptatum. Voluptatibus voluptate iusto assumenda similique voluptatum et.', NULL, NULL, 'Ab iste minus dolore laboriosam officiis vitae. Voluptas saepe aut est eos delectus ut. Autem veniam distinctio aut consequatur. Qui natus autem libero perferendis et.', 'en_US');
INSERT INTO `sylius_product_translation` VALUES (42, 6, 'Oversize white cotton T-Shirt', 'oversize-white-cotton-t-shirt', 'Et occaecati eveniet veritatis voluptatem. Ducimus qui itaque voluptatum tenetur. Sint quis dicta et amet et rem expedita. Ea eveniet at et et omnis.\n\nItaque error ut magni esse sequi dolorem. Explicabo debitis est sunt. Sed quidem beatae debitis expedita molestiae dolor similique.\n\nQuidem accusantium voluptatem enim eum beatae minima veniam. Sunt quasi praesentium voluptatum. Voluptatibus voluptate iusto assumenda similique voluptatum et.', NULL, NULL, 'Ab iste minus dolore laboriosam officiis vitae. Voluptas saepe aut est eos delectus ut. Autem veniam distinctio aut consequatur. Qui natus autem libero perferendis et.', 'de_DE');
INSERT INTO `sylius_product_translation` VALUES (43, 6, 'Oversize white cotton T-Shirt', 'oversize-white-cotton-t-shirt', 'Et occaecati eveniet veritatis voluptatem. Ducimus qui itaque voluptatum tenetur. Sint quis dicta et amet et rem expedita. Ea eveniet at et et omnis.\n\nItaque error ut magni esse sequi dolorem. Explicabo debitis est sunt. Sed quidem beatae debitis expedita molestiae dolor similique.\n\nQuidem accusantium voluptatem enim eum beatae minima veniam. Sunt quasi praesentium voluptatum. Voluptatibus voluptate iusto assumenda similique voluptatum et.', NULL, NULL, 'Ab iste minus dolore laboriosam officiis vitae. Voluptas saepe aut est eos delectus ut. Autem veniam distinctio aut consequatur. Qui natus autem libero perferendis et.', 'fr_FR');
INSERT INTO `sylius_product_translation` VALUES (44, 6, 'Oversize white cotton T-Shirt', 'oversize-white-cotton-t-shirt', 'Et occaecati eveniet veritatis voluptatem. Ducimus qui itaque voluptatum tenetur. Sint quis dicta et amet et rem expedita. Ea eveniet at et et omnis.\n\nItaque error ut magni esse sequi dolorem. Explicabo debitis est sunt. Sed quidem beatae debitis expedita molestiae dolor similique.\n\nQuidem accusantium voluptatem enim eum beatae minima veniam. Sunt quasi praesentium voluptatum. Voluptatibus voluptate iusto assumenda similique voluptatum et.', NULL, NULL, 'Ab iste minus dolore laboriosam officiis vitae. Voluptas saepe aut est eos delectus ut. Autem veniam distinctio aut consequatur. Qui natus autem libero perferendis et.', 'pl_PL');
INSERT INTO `sylius_product_translation` VALUES (45, 6, 'Oversize white cotton T-Shirt', 'oversize-white-cotton-t-shirt', 'Et occaecati eveniet veritatis voluptatem. Ducimus qui itaque voluptatum tenetur. Sint quis dicta et amet et rem expedita. Ea eveniet at et et omnis.\n\nItaque error ut magni esse sequi dolorem. Explicabo debitis est sunt. Sed quidem beatae debitis expedita molestiae dolor similique.\n\nQuidem accusantium voluptatem enim eum beatae minima veniam. Sunt quasi praesentium voluptatum. Voluptatibus voluptate iusto assumenda similique voluptatum et.', NULL, NULL, 'Ab iste minus dolore laboriosam officiis vitae. Voluptas saepe aut est eos delectus ut. Autem veniam distinctio aut consequatur. Qui natus autem libero perferendis et.', 'es_ES');
INSERT INTO `sylius_product_translation` VALUES (46, 6, 'Oversize white cotton T-Shirt', 'oversize-white-cotton-t-shirt', 'Et occaecati eveniet veritatis voluptatem. Ducimus qui itaque voluptatum tenetur. Sint quis dicta et amet et rem expedita. Ea eveniet at et et omnis.\n\nItaque error ut magni esse sequi dolorem. Explicabo debitis est sunt. Sed quidem beatae debitis expedita molestiae dolor similique.\n\nQuidem accusantium voluptatem enim eum beatae minima veniam. Sunt quasi praesentium voluptatum. Voluptatibus voluptate iusto assumenda similique voluptatum et.', NULL, NULL, 'Ab iste minus dolore laboriosam officiis vitae. Voluptas saepe aut est eos delectus ut. Autem veniam distinctio aut consequatur. Qui natus autem libero perferendis et.', 'es_MX');
INSERT INTO `sylius_product_translation` VALUES (47, 6, 'Oversize white cotton T-Shirt', 'oversize-white-cotton-t-shirt', 'Et occaecati eveniet veritatis voluptatem. Ducimus qui itaque voluptatum tenetur. Sint quis dicta et amet et rem expedita. Ea eveniet at et et omnis.\n\nItaque error ut magni esse sequi dolorem. Explicabo debitis est sunt. Sed quidem beatae debitis expedita molestiae dolor similique.\n\nQuidem accusantium voluptatem enim eum beatae minima veniam. Sunt quasi praesentium voluptatum. Voluptatibus voluptate iusto assumenda similique voluptatum et.', NULL, NULL, 'Ab iste minus dolore laboriosam officiis vitae. Voluptas saepe aut est eos delectus ut. Autem veniam distinctio aut consequatur. Qui natus autem libero perferendis et.', 'pt_PT');
INSERT INTO `sylius_product_translation` VALUES (48, 6, 'Oversize white cotton T-Shirt', 'oversize-white-cotton-t-shirt', 'Et occaecati eveniet veritatis voluptatem. Ducimus qui itaque voluptatum tenetur. Sint quis dicta et amet et rem expedita. Ea eveniet at et et omnis.\n\nItaque error ut magni esse sequi dolorem. Explicabo debitis est sunt. Sed quidem beatae debitis expedita molestiae dolor similique.\n\nQuidem accusantium voluptatem enim eum beatae minima veniam. Sunt quasi praesentium voluptatum. Voluptatibus voluptate iusto assumenda similique voluptatum et.', NULL, NULL, 'Ab iste minus dolore laboriosam officiis vitae. Voluptas saepe aut est eos delectus ut. Autem veniam distinctio aut consequatur. Qui natus autem libero perferendis et.', 'zh_CN');
INSERT INTO `sylius_product_translation` VALUES (49, 7, 'Knitted burgundy winter cap', 'knitted-burgundy-winter-cap', 'Pariatur nemo veniam repellendus ut eveniet architecto. Praesentium asperiores accusamus voluptatibus odit magni. Sunt officia eos iusto ut.\n\nIpsum dolor animi quasi sed tempore sit qui. Ut minus eum asperiores et.\n\nNam voluptatem occaecati eum quo est. Nostrum quaerat doloremque nihil alias in minima quisquam. Dolorem autem nihil non repellendus non pariatur.', NULL, NULL, 'Odio et asperiores ipsa illo. Eaque harum et non labore eveniet rerum quo laboriosam. Fugiat ut totam amet enim.', 'en_US');
INSERT INTO `sylius_product_translation` VALUES (50, 7, 'Knitted burgundy winter cap', 'knitted-burgundy-winter-cap', 'Pariatur nemo veniam repellendus ut eveniet architecto. Praesentium asperiores accusamus voluptatibus odit magni. Sunt officia eos iusto ut.\n\nIpsum dolor animi quasi sed tempore sit qui. Ut minus eum asperiores et.\n\nNam voluptatem occaecati eum quo est. Nostrum quaerat doloremque nihil alias in minima quisquam. Dolorem autem nihil non repellendus non pariatur.', NULL, NULL, 'Odio et asperiores ipsa illo. Eaque harum et non labore eveniet rerum quo laboriosam. Fugiat ut totam amet enim.', 'de_DE');
INSERT INTO `sylius_product_translation` VALUES (51, 7, 'Knitted burgundy winter cap', 'knitted-burgundy-winter-cap', 'Pariatur nemo veniam repellendus ut eveniet architecto. Praesentium asperiores accusamus voluptatibus odit magni. Sunt officia eos iusto ut.\n\nIpsum dolor animi quasi sed tempore sit qui. Ut minus eum asperiores et.\n\nNam voluptatem occaecati eum quo est. Nostrum quaerat doloremque nihil alias in minima quisquam. Dolorem autem nihil non repellendus non pariatur.', NULL, NULL, 'Odio et asperiores ipsa illo. Eaque harum et non labore eveniet rerum quo laboriosam. Fugiat ut totam amet enim.', 'fr_FR');
INSERT INTO `sylius_product_translation` VALUES (52, 7, 'Knitted burgundy winter cap', 'knitted-burgundy-winter-cap', 'Pariatur nemo veniam repellendus ut eveniet architecto. Praesentium asperiores accusamus voluptatibus odit magni. Sunt officia eos iusto ut.\n\nIpsum dolor animi quasi sed tempore sit qui. Ut minus eum asperiores et.\n\nNam voluptatem occaecati eum quo est. Nostrum quaerat doloremque nihil alias in minima quisquam. Dolorem autem nihil non repellendus non pariatur.', NULL, NULL, 'Odio et asperiores ipsa illo. Eaque harum et non labore eveniet rerum quo laboriosam. Fugiat ut totam amet enim.', 'pl_PL');
INSERT INTO `sylius_product_translation` VALUES (53, 7, 'Knitted burgundy winter cap', 'knitted-burgundy-winter-cap', 'Pariatur nemo veniam repellendus ut eveniet architecto. Praesentium asperiores accusamus voluptatibus odit magni. Sunt officia eos iusto ut.\n\nIpsum dolor animi quasi sed tempore sit qui. Ut minus eum asperiores et.\n\nNam voluptatem occaecati eum quo est. Nostrum quaerat doloremque nihil alias in minima quisquam. Dolorem autem nihil non repellendus non pariatur.', NULL, NULL, 'Odio et asperiores ipsa illo. Eaque harum et non labore eveniet rerum quo laboriosam. Fugiat ut totam amet enim.', 'es_ES');
INSERT INTO `sylius_product_translation` VALUES (54, 7, 'Knitted burgundy winter cap', 'knitted-burgundy-winter-cap', 'Pariatur nemo veniam repellendus ut eveniet architecto. Praesentium asperiores accusamus voluptatibus odit magni. Sunt officia eos iusto ut.\n\nIpsum dolor animi quasi sed tempore sit qui. Ut minus eum asperiores et.\n\nNam voluptatem occaecati eum quo est. Nostrum quaerat doloremque nihil alias in minima quisquam. Dolorem autem nihil non repellendus non pariatur.', NULL, NULL, 'Odio et asperiores ipsa illo. Eaque harum et non labore eveniet rerum quo laboriosam. Fugiat ut totam amet enim.', 'es_MX');
INSERT INTO `sylius_product_translation` VALUES (55, 7, 'Knitted burgundy winter cap', 'knitted-burgundy-winter-cap', 'Pariatur nemo veniam repellendus ut eveniet architecto. Praesentium asperiores accusamus voluptatibus odit magni. Sunt officia eos iusto ut.\n\nIpsum dolor animi quasi sed tempore sit qui. Ut minus eum asperiores et.\n\nNam voluptatem occaecati eum quo est. Nostrum quaerat doloremque nihil alias in minima quisquam. Dolorem autem nihil non repellendus non pariatur.', NULL, NULL, 'Odio et asperiores ipsa illo. Eaque harum et non labore eveniet rerum quo laboriosam. Fugiat ut totam amet enim.', 'pt_PT');
INSERT INTO `sylius_product_translation` VALUES (56, 7, 'Knitted burgundy winter cap', 'knitted-burgundy-winter-cap', 'Pariatur nemo veniam repellendus ut eveniet architecto. Praesentium asperiores accusamus voluptatibus odit magni. Sunt officia eos iusto ut.\n\nIpsum dolor animi quasi sed tempore sit qui. Ut minus eum asperiores et.\n\nNam voluptatem occaecati eum quo est. Nostrum quaerat doloremque nihil alias in minima quisquam. Dolorem autem nihil non repellendus non pariatur.', NULL, NULL, 'Odio et asperiores ipsa illo. Eaque harum et non labore eveniet rerum quo laboriosam. Fugiat ut totam amet enim.', 'zh_CN');
INSERT INTO `sylius_product_translation` VALUES (57, 8, 'Knitted wool-blend green cap', 'knitted-wool-blend-green-cap', 'Impedit velit vel deleniti dolores non quod deleniti. Et deserunt dolorum eum optio ut et. Voluptatem eius sunt atque nostrum vel consequuntur. Et soluta repudiandae aliquid doloremque.\n\nEum quidem minima non nobis. Blanditiis pariatur magnam excepturi labore. Ipsum sunt molestias error eius libero sit.\n\nError quibusdam asperiores aut deleniti. Cum quos aut architecto aliquid ut doloribus. Eveniet autem dolorem pariatur quo explicabo. Ipsam doloremque officiis fugiat voluptatem.', NULL, NULL, 'Facere dignissimos eveniet eos et. Perferendis distinctio fugit dicta ducimus ut iure velit expedita. Cupiditate eligendi non ad odio omnis. Voluptas accusantium minus corrupti iste distinctio.', 'en_US');
INSERT INTO `sylius_product_translation` VALUES (58, 8, 'Knitted wool-blend green cap', 'knitted-wool-blend-green-cap', 'Impedit velit vel deleniti dolores non quod deleniti. Et deserunt dolorum eum optio ut et. Voluptatem eius sunt atque nostrum vel consequuntur. Et soluta repudiandae aliquid doloremque.\n\nEum quidem minima non nobis. Blanditiis pariatur magnam excepturi labore. Ipsum sunt molestias error eius libero sit.\n\nError quibusdam asperiores aut deleniti. Cum quos aut architecto aliquid ut doloribus. Eveniet autem dolorem pariatur quo explicabo. Ipsam doloremque officiis fugiat voluptatem.', NULL, NULL, 'Facere dignissimos eveniet eos et. Perferendis distinctio fugit dicta ducimus ut iure velit expedita. Cupiditate eligendi non ad odio omnis. Voluptas accusantium minus corrupti iste distinctio.', 'de_DE');
INSERT INTO `sylius_product_translation` VALUES (59, 8, 'Knitted wool-blend green cap', 'knitted-wool-blend-green-cap', 'Impedit velit vel deleniti dolores non quod deleniti. Et deserunt dolorum eum optio ut et. Voluptatem eius sunt atque nostrum vel consequuntur. Et soluta repudiandae aliquid doloremque.\n\nEum quidem minima non nobis. Blanditiis pariatur magnam excepturi labore. Ipsum sunt molestias error eius libero sit.\n\nError quibusdam asperiores aut deleniti. Cum quos aut architecto aliquid ut doloribus. Eveniet autem dolorem pariatur quo explicabo. Ipsam doloremque officiis fugiat voluptatem.', NULL, NULL, 'Facere dignissimos eveniet eos et. Perferendis distinctio fugit dicta ducimus ut iure velit expedita. Cupiditate eligendi non ad odio omnis. Voluptas accusantium minus corrupti iste distinctio.', 'fr_FR');
INSERT INTO `sylius_product_translation` VALUES (60, 8, 'Knitted wool-blend green cap', 'knitted-wool-blend-green-cap', 'Impedit velit vel deleniti dolores non quod deleniti. Et deserunt dolorum eum optio ut et. Voluptatem eius sunt atque nostrum vel consequuntur. Et soluta repudiandae aliquid doloremque.\n\nEum quidem minima non nobis. Blanditiis pariatur magnam excepturi labore. Ipsum sunt molestias error eius libero sit.\n\nError quibusdam asperiores aut deleniti. Cum quos aut architecto aliquid ut doloribus. Eveniet autem dolorem pariatur quo explicabo. Ipsam doloremque officiis fugiat voluptatem.', NULL, NULL, 'Facere dignissimos eveniet eos et. Perferendis distinctio fugit dicta ducimus ut iure velit expedita. Cupiditate eligendi non ad odio omnis. Voluptas accusantium minus corrupti iste distinctio.', 'pl_PL');
INSERT INTO `sylius_product_translation` VALUES (61, 8, 'Knitted wool-blend green cap', 'knitted-wool-blend-green-cap', 'Impedit velit vel deleniti dolores non quod deleniti. Et deserunt dolorum eum optio ut et. Voluptatem eius sunt atque nostrum vel consequuntur. Et soluta repudiandae aliquid doloremque.\n\nEum quidem minima non nobis. Blanditiis pariatur magnam excepturi labore. Ipsum sunt molestias error eius libero sit.\n\nError quibusdam asperiores aut deleniti. Cum quos aut architecto aliquid ut doloribus. Eveniet autem dolorem pariatur quo explicabo. Ipsam doloremque officiis fugiat voluptatem.', NULL, NULL, 'Facere dignissimos eveniet eos et. Perferendis distinctio fugit dicta ducimus ut iure velit expedita. Cupiditate eligendi non ad odio omnis. Voluptas accusantium minus corrupti iste distinctio.', 'es_ES');
INSERT INTO `sylius_product_translation` VALUES (62, 8, 'Knitted wool-blend green cap', 'knitted-wool-blend-green-cap', 'Impedit velit vel deleniti dolores non quod deleniti. Et deserunt dolorum eum optio ut et. Voluptatem eius sunt atque nostrum vel consequuntur. Et soluta repudiandae aliquid doloremque.\n\nEum quidem minima non nobis. Blanditiis pariatur magnam excepturi labore. Ipsum sunt molestias error eius libero sit.\n\nError quibusdam asperiores aut deleniti. Cum quos aut architecto aliquid ut doloribus. Eveniet autem dolorem pariatur quo explicabo. Ipsam doloremque officiis fugiat voluptatem.', NULL, NULL, 'Facere dignissimos eveniet eos et. Perferendis distinctio fugit dicta ducimus ut iure velit expedita. Cupiditate eligendi non ad odio omnis. Voluptas accusantium minus corrupti iste distinctio.', 'es_MX');
INSERT INTO `sylius_product_translation` VALUES (63, 8, 'Knitted wool-blend green cap', 'knitted-wool-blend-green-cap', 'Impedit velit vel deleniti dolores non quod deleniti. Et deserunt dolorum eum optio ut et. Voluptatem eius sunt atque nostrum vel consequuntur. Et soluta repudiandae aliquid doloremque.\n\nEum quidem minima non nobis. Blanditiis pariatur magnam excepturi labore. Ipsum sunt molestias error eius libero sit.\n\nError quibusdam asperiores aut deleniti. Cum quos aut architecto aliquid ut doloribus. Eveniet autem dolorem pariatur quo explicabo. Ipsam doloremque officiis fugiat voluptatem.', NULL, NULL, 'Facere dignissimos eveniet eos et. Perferendis distinctio fugit dicta ducimus ut iure velit expedita. Cupiditate eligendi non ad odio omnis. Voluptas accusantium minus corrupti iste distinctio.', 'pt_PT');
INSERT INTO `sylius_product_translation` VALUES (64, 8, 'Knitted wool-blend green cap', 'knitted-wool-blend-green-cap', 'Impedit velit vel deleniti dolores non quod deleniti. Et deserunt dolorum eum optio ut et. Voluptatem eius sunt atque nostrum vel consequuntur. Et soluta repudiandae aliquid doloremque.\n\nEum quidem minima non nobis. Blanditiis pariatur magnam excepturi labore. Ipsum sunt molestias error eius libero sit.\n\nError quibusdam asperiores aut deleniti. Cum quos aut architecto aliquid ut doloribus. Eveniet autem dolorem pariatur quo explicabo. Ipsam doloremque officiis fugiat voluptatem.', NULL, NULL, 'Facere dignissimos eveniet eos et. Perferendis distinctio fugit dicta ducimus ut iure velit expedita. Cupiditate eligendi non ad odio omnis. Voluptas accusantium minus corrupti iste distinctio.', 'zh_CN');
INSERT INTO `sylius_product_translation` VALUES (65, 9, 'Knitted white pompom cap', 'knitted-white-pompom-cap', 'Facilis at non quis alias nisi reprehenderit nihil quis. Veniam sed delectus corporis dolore quaerat. Quia officia omnis possimus et. Esse ipsa deleniti ullam in.\n\nQuod dolorem ut architecto aut ipsa. Tempora itaque modi ea aperiam. Tenetur consequatur nobis enim deleniti aliquid ratione. Id nulla aliquam itaque reiciendis dolor rerum voluptate.\n\nPerferendis vitae totam delectus aut rem quia sequi. Incidunt qui a necessitatibus maxime accusantium quod iure incidunt. Velit et sint sunt provident doloribus assumenda sunt et.', NULL, NULL, 'Et omnis hic cupiditate consequatur ut. Reiciendis voluptatem tenetur facere harum. Ullam laborum consequuntur adipisci fugiat voluptates voluptatibus eius. Sequi cupiditate quo voluptas ut quia voluptatum.', 'en_US');
INSERT INTO `sylius_product_translation` VALUES (66, 9, 'Knitted white pompom cap', 'knitted-white-pompom-cap', 'Facilis at non quis alias nisi reprehenderit nihil quis. Veniam sed delectus corporis dolore quaerat. Quia officia omnis possimus et. Esse ipsa deleniti ullam in.\n\nQuod dolorem ut architecto aut ipsa. Tempora itaque modi ea aperiam. Tenetur consequatur nobis enim deleniti aliquid ratione. Id nulla aliquam itaque reiciendis dolor rerum voluptate.\n\nPerferendis vitae totam delectus aut rem quia sequi. Incidunt qui a necessitatibus maxime accusantium quod iure incidunt. Velit et sint sunt provident doloribus assumenda sunt et.', NULL, NULL, 'Et omnis hic cupiditate consequatur ut. Reiciendis voluptatem tenetur facere harum. Ullam laborum consequuntur adipisci fugiat voluptates voluptatibus eius. Sequi cupiditate quo voluptas ut quia voluptatum.', 'de_DE');
INSERT INTO `sylius_product_translation` VALUES (67, 9, 'Knitted white pompom cap', 'knitted-white-pompom-cap', 'Facilis at non quis alias nisi reprehenderit nihil quis. Veniam sed delectus corporis dolore quaerat. Quia officia omnis possimus et. Esse ipsa deleniti ullam in.\n\nQuod dolorem ut architecto aut ipsa. Tempora itaque modi ea aperiam. Tenetur consequatur nobis enim deleniti aliquid ratione. Id nulla aliquam itaque reiciendis dolor rerum voluptate.\n\nPerferendis vitae totam delectus aut rem quia sequi. Incidunt qui a necessitatibus maxime accusantium quod iure incidunt. Velit et sint sunt provident doloribus assumenda sunt et.', NULL, NULL, 'Et omnis hic cupiditate consequatur ut. Reiciendis voluptatem tenetur facere harum. Ullam laborum consequuntur adipisci fugiat voluptates voluptatibus eius. Sequi cupiditate quo voluptas ut quia voluptatum.', 'fr_FR');
INSERT INTO `sylius_product_translation` VALUES (68, 9, 'Knitted white pompom cap', 'knitted-white-pompom-cap', 'Facilis at non quis alias nisi reprehenderit nihil quis. Veniam sed delectus corporis dolore quaerat. Quia officia omnis possimus et. Esse ipsa deleniti ullam in.\n\nQuod dolorem ut architecto aut ipsa. Tempora itaque modi ea aperiam. Tenetur consequatur nobis enim deleniti aliquid ratione. Id nulla aliquam itaque reiciendis dolor rerum voluptate.\n\nPerferendis vitae totam delectus aut rem quia sequi. Incidunt qui a necessitatibus maxime accusantium quod iure incidunt. Velit et sint sunt provident doloribus assumenda sunt et.', NULL, NULL, 'Et omnis hic cupiditate consequatur ut. Reiciendis voluptatem tenetur facere harum. Ullam laborum consequuntur adipisci fugiat voluptates voluptatibus eius. Sequi cupiditate quo voluptas ut quia voluptatum.', 'pl_PL');
INSERT INTO `sylius_product_translation` VALUES (69, 9, 'Knitted white pompom cap', 'knitted-white-pompom-cap', 'Facilis at non quis alias nisi reprehenderit nihil quis. Veniam sed delectus corporis dolore quaerat. Quia officia omnis possimus et. Esse ipsa deleniti ullam in.\n\nQuod dolorem ut architecto aut ipsa. Tempora itaque modi ea aperiam. Tenetur consequatur nobis enim deleniti aliquid ratione. Id nulla aliquam itaque reiciendis dolor rerum voluptate.\n\nPerferendis vitae totam delectus aut rem quia sequi. Incidunt qui a necessitatibus maxime accusantium quod iure incidunt. Velit et sint sunt provident doloribus assumenda sunt et.', NULL, NULL, 'Et omnis hic cupiditate consequatur ut. Reiciendis voluptatem tenetur facere harum. Ullam laborum consequuntur adipisci fugiat voluptates voluptatibus eius. Sequi cupiditate quo voluptas ut quia voluptatum.', 'es_ES');
INSERT INTO `sylius_product_translation` VALUES (70, 9, 'Knitted white pompom cap', 'knitted-white-pompom-cap', 'Facilis at non quis alias nisi reprehenderit nihil quis. Veniam sed delectus corporis dolore quaerat. Quia officia omnis possimus et. Esse ipsa deleniti ullam in.\n\nQuod dolorem ut architecto aut ipsa. Tempora itaque modi ea aperiam. Tenetur consequatur nobis enim deleniti aliquid ratione. Id nulla aliquam itaque reiciendis dolor rerum voluptate.\n\nPerferendis vitae totam delectus aut rem quia sequi. Incidunt qui a necessitatibus maxime accusantium quod iure incidunt. Velit et sint sunt provident doloribus assumenda sunt et.', NULL, NULL, 'Et omnis hic cupiditate consequatur ut. Reiciendis voluptatem tenetur facere harum. Ullam laborum consequuntur adipisci fugiat voluptates voluptatibus eius. Sequi cupiditate quo voluptas ut quia voluptatum.', 'es_MX');
INSERT INTO `sylius_product_translation` VALUES (71, 9, 'Knitted white pompom cap', 'knitted-white-pompom-cap', 'Facilis at non quis alias nisi reprehenderit nihil quis. Veniam sed delectus corporis dolore quaerat. Quia officia omnis possimus et. Esse ipsa deleniti ullam in.\n\nQuod dolorem ut architecto aut ipsa. Tempora itaque modi ea aperiam. Tenetur consequatur nobis enim deleniti aliquid ratione. Id nulla aliquam itaque reiciendis dolor rerum voluptate.\n\nPerferendis vitae totam delectus aut rem quia sequi. Incidunt qui a necessitatibus maxime accusantium quod iure incidunt. Velit et sint sunt provident doloribus assumenda sunt et.', NULL, NULL, 'Et omnis hic cupiditate consequatur ut. Reiciendis voluptatem tenetur facere harum. Ullam laborum consequuntur adipisci fugiat voluptates voluptatibus eius. Sequi cupiditate quo voluptas ut quia voluptatum.', 'pt_PT');
INSERT INTO `sylius_product_translation` VALUES (72, 9, 'Knitted white pompom cap', 'knitted-white-pompom-cap', 'Facilis at non quis alias nisi reprehenderit nihil quis. Veniam sed delectus corporis dolore quaerat. Quia officia omnis possimus et. Esse ipsa deleniti ullam in.\n\nQuod dolorem ut architecto aut ipsa. Tempora itaque modi ea aperiam. Tenetur consequatur nobis enim deleniti aliquid ratione. Id nulla aliquam itaque reiciendis dolor rerum voluptate.\n\nPerferendis vitae totam delectus aut rem quia sequi. Incidunt qui a necessitatibus maxime accusantium quod iure incidunt. Velit et sint sunt provident doloribus assumenda sunt et.', NULL, NULL, 'Et omnis hic cupiditate consequatur ut. Reiciendis voluptatem tenetur facere harum. Ullam laborum consequuntur adipisci fugiat voluptates voluptatibus eius. Sequi cupiditate quo voluptas ut quia voluptatum.', 'zh_CN');
INSERT INTO `sylius_product_translation` VALUES (73, 10, 'Cashmere-blend violet beanie', 'cashmere-blend-violet-beanie', 'Dolores sit voluptatem assumenda illo. Ipsa sequi consequatur nobis blanditiis itaque cum. Quod corporis voluptatum odio repellat earum nam.\n\nAnimi et dolorem ullam accusantium. Fugiat et aut et nesciunt sint est. Perspiciatis provident sequi ratione cupiditate est alias. Sed quae beatae nam quidem saepe cumque quasi. Consequatur aperiam non reprehenderit ex laborum reiciendis voluptatum.\n\nQui odit id numquam consequuntur. Cupiditate et rerum est voluptas.', NULL, NULL, 'Ut perferendis doloremque magnam voluptatum et officia ea. Blanditiis nesciunt blanditiis et error quia dignissimos cupiditate. Molestias reiciendis amet et aspernatur. Ad sit ratione enim numquam.', 'en_US');
INSERT INTO `sylius_product_translation` VALUES (74, 10, 'Cashmere-blend violet beanie', 'cashmere-blend-violet-beanie', 'Dolores sit voluptatem assumenda illo. Ipsa sequi consequatur nobis blanditiis itaque cum. Quod corporis voluptatum odio repellat earum nam.\n\nAnimi et dolorem ullam accusantium. Fugiat et aut et nesciunt sint est. Perspiciatis provident sequi ratione cupiditate est alias. Sed quae beatae nam quidem saepe cumque quasi. Consequatur aperiam non reprehenderit ex laborum reiciendis voluptatum.\n\nQui odit id numquam consequuntur. Cupiditate et rerum est voluptas.', NULL, NULL, 'Ut perferendis doloremque magnam voluptatum et officia ea. Blanditiis nesciunt blanditiis et error quia dignissimos cupiditate. Molestias reiciendis amet et aspernatur. Ad sit ratione enim numquam.', 'de_DE');
INSERT INTO `sylius_product_translation` VALUES (75, 10, 'Cashmere-blend violet beanie', 'cashmere-blend-violet-beanie', 'Dolores sit voluptatem assumenda illo. Ipsa sequi consequatur nobis blanditiis itaque cum. Quod corporis voluptatum odio repellat earum nam.\n\nAnimi et dolorem ullam accusantium. Fugiat et aut et nesciunt sint est. Perspiciatis provident sequi ratione cupiditate est alias. Sed quae beatae nam quidem saepe cumque quasi. Consequatur aperiam non reprehenderit ex laborum reiciendis voluptatum.\n\nQui odit id numquam consequuntur. Cupiditate et rerum est voluptas.', NULL, NULL, 'Ut perferendis doloremque magnam voluptatum et officia ea. Blanditiis nesciunt blanditiis et error quia dignissimos cupiditate. Molestias reiciendis amet et aspernatur. Ad sit ratione enim numquam.', 'fr_FR');
INSERT INTO `sylius_product_translation` VALUES (76, 10, 'Cashmere-blend violet beanie', 'cashmere-blend-violet-beanie', 'Dolores sit voluptatem assumenda illo. Ipsa sequi consequatur nobis blanditiis itaque cum. Quod corporis voluptatum odio repellat earum nam.\n\nAnimi et dolorem ullam accusantium. Fugiat et aut et nesciunt sint est. Perspiciatis provident sequi ratione cupiditate est alias. Sed quae beatae nam quidem saepe cumque quasi. Consequatur aperiam non reprehenderit ex laborum reiciendis voluptatum.\n\nQui odit id numquam consequuntur. Cupiditate et rerum est voluptas.', NULL, NULL, 'Ut perferendis doloremque magnam voluptatum et officia ea. Blanditiis nesciunt blanditiis et error quia dignissimos cupiditate. Molestias reiciendis amet et aspernatur. Ad sit ratione enim numquam.', 'pl_PL');
INSERT INTO `sylius_product_translation` VALUES (77, 10, 'Cashmere-blend violet beanie', 'cashmere-blend-violet-beanie', 'Dolores sit voluptatem assumenda illo. Ipsa sequi consequatur nobis blanditiis itaque cum. Quod corporis voluptatum odio repellat earum nam.\n\nAnimi et dolorem ullam accusantium. Fugiat et aut et nesciunt sint est. Perspiciatis provident sequi ratione cupiditate est alias. Sed quae beatae nam quidem saepe cumque quasi. Consequatur aperiam non reprehenderit ex laborum reiciendis voluptatum.\n\nQui odit id numquam consequuntur. Cupiditate et rerum est voluptas.', NULL, NULL, 'Ut perferendis doloremque magnam voluptatum et officia ea. Blanditiis nesciunt blanditiis et error quia dignissimos cupiditate. Molestias reiciendis amet et aspernatur. Ad sit ratione enim numquam.', 'es_ES');
INSERT INTO `sylius_product_translation` VALUES (78, 10, 'Cashmere-blend violet beanie', 'cashmere-blend-violet-beanie', 'Dolores sit voluptatem assumenda illo. Ipsa sequi consequatur nobis blanditiis itaque cum. Quod corporis voluptatum odio repellat earum nam.\n\nAnimi et dolorem ullam accusantium. Fugiat et aut et nesciunt sint est. Perspiciatis provident sequi ratione cupiditate est alias. Sed quae beatae nam quidem saepe cumque quasi. Consequatur aperiam non reprehenderit ex laborum reiciendis voluptatum.\n\nQui odit id numquam consequuntur. Cupiditate et rerum est voluptas.', NULL, NULL, 'Ut perferendis doloremque magnam voluptatum et officia ea. Blanditiis nesciunt blanditiis et error quia dignissimos cupiditate. Molestias reiciendis amet et aspernatur. Ad sit ratione enim numquam.', 'es_MX');
INSERT INTO `sylius_product_translation` VALUES (79, 10, 'Cashmere-blend violet beanie', 'cashmere-blend-violet-beanie', 'Dolores sit voluptatem assumenda illo. Ipsa sequi consequatur nobis blanditiis itaque cum. Quod corporis voluptatum odio repellat earum nam.\n\nAnimi et dolorem ullam accusantium. Fugiat et aut et nesciunt sint est. Perspiciatis provident sequi ratione cupiditate est alias. Sed quae beatae nam quidem saepe cumque quasi. Consequatur aperiam non reprehenderit ex laborum reiciendis voluptatum.\n\nQui odit id numquam consequuntur. Cupiditate et rerum est voluptas.', NULL, NULL, 'Ut perferendis doloremque magnam voluptatum et officia ea. Blanditiis nesciunt blanditiis et error quia dignissimos cupiditate. Molestias reiciendis amet et aspernatur. Ad sit ratione enim numquam.', 'pt_PT');
INSERT INTO `sylius_product_translation` VALUES (80, 10, 'Cashmere-blend violet beanie', 'cashmere-blend-violet-beanie', 'Dolores sit voluptatem assumenda illo. Ipsa sequi consequatur nobis blanditiis itaque cum. Quod corporis voluptatum odio repellat earum nam.\n\nAnimi et dolorem ullam accusantium. Fugiat et aut et nesciunt sint est. Perspiciatis provident sequi ratione cupiditate est alias. Sed quae beatae nam quidem saepe cumque quasi. Consequatur aperiam non reprehenderit ex laborum reiciendis voluptatum.\n\nQui odit id numquam consequuntur. Cupiditate et rerum est voluptas.', NULL, NULL, 'Ut perferendis doloremque magnam voluptatum et officia ea. Blanditiis nesciunt blanditiis et error quia dignissimos cupiditate. Molestias reiciendis amet et aspernatur. Ad sit ratione enim numquam.', 'zh_CN');
INSERT INTO `sylius_product_translation` VALUES (81, 11, 'Beige strappy summer dress', 'beige-strappy-summer-dress', 'Laborum et voluptate dolorem dolor. Et doloremque aut ex laboriosam maxime tempore modi. Qui accusantium earum voluptate saepe molestiae.\n\nEst accusantium facere cumque qui. Eius exercitationem sit autem beatae cum rem quidem earum. Et consequuntur sed iste eveniet.\n\nNulla cumque architecto consequatur consectetur. Fuga eum ducimus voluptatibus sed impedit. Velit expedita quaerat magni officiis praesentium fuga. Est placeat voluptatem et ut consectetur impedit quas.', NULL, NULL, 'Eaque qui est hic amet fugit corporis. Rerum sit eum corporis modi. Voluptate voluptas et ad unde voluptas amet magni.', 'en_US');
INSERT INTO `sylius_product_translation` VALUES (82, 11, 'Beige strappy summer dress', 'beige-strappy-summer-dress', 'Laborum et voluptate dolorem dolor. Et doloremque aut ex laboriosam maxime tempore modi. Qui accusantium earum voluptate saepe molestiae.\n\nEst accusantium facere cumque qui. Eius exercitationem sit autem beatae cum rem quidem earum. Et consequuntur sed iste eveniet.\n\nNulla cumque architecto consequatur consectetur. Fuga eum ducimus voluptatibus sed impedit. Velit expedita quaerat magni officiis praesentium fuga. Est placeat voluptatem et ut consectetur impedit quas.', NULL, NULL, 'Eaque qui est hic amet fugit corporis. Rerum sit eum corporis modi. Voluptate voluptas et ad unde voluptas amet magni.', 'de_DE');
INSERT INTO `sylius_product_translation` VALUES (83, 11, 'Beige strappy summer dress', 'beige-strappy-summer-dress', 'Laborum et voluptate dolorem dolor. Et doloremque aut ex laboriosam maxime tempore modi. Qui accusantium earum voluptate saepe molestiae.\n\nEst accusantium facere cumque qui. Eius exercitationem sit autem beatae cum rem quidem earum. Et consequuntur sed iste eveniet.\n\nNulla cumque architecto consequatur consectetur. Fuga eum ducimus voluptatibus sed impedit. Velit expedita quaerat magni officiis praesentium fuga. Est placeat voluptatem et ut consectetur impedit quas.', NULL, NULL, 'Eaque qui est hic amet fugit corporis. Rerum sit eum corporis modi. Voluptate voluptas et ad unde voluptas amet magni.', 'fr_FR');
INSERT INTO `sylius_product_translation` VALUES (84, 11, 'Beige strappy summer dress', 'beige-strappy-summer-dress', 'Laborum et voluptate dolorem dolor. Et doloremque aut ex laboriosam maxime tempore modi. Qui accusantium earum voluptate saepe molestiae.\n\nEst accusantium facere cumque qui. Eius exercitationem sit autem beatae cum rem quidem earum. Et consequuntur sed iste eveniet.\n\nNulla cumque architecto consequatur consectetur. Fuga eum ducimus voluptatibus sed impedit. Velit expedita quaerat magni officiis praesentium fuga. Est placeat voluptatem et ut consectetur impedit quas.', NULL, NULL, 'Eaque qui est hic amet fugit corporis. Rerum sit eum corporis modi. Voluptate voluptas et ad unde voluptas amet magni.', 'pl_PL');
INSERT INTO `sylius_product_translation` VALUES (85, 11, 'Beige strappy summer dress', 'beige-strappy-summer-dress', 'Laborum et voluptate dolorem dolor. Et doloremque aut ex laboriosam maxime tempore modi. Qui accusantium earum voluptate saepe molestiae.\n\nEst accusantium facere cumque qui. Eius exercitationem sit autem beatae cum rem quidem earum. Et consequuntur sed iste eveniet.\n\nNulla cumque architecto consequatur consectetur. Fuga eum ducimus voluptatibus sed impedit. Velit expedita quaerat magni officiis praesentium fuga. Est placeat voluptatem et ut consectetur impedit quas.', NULL, NULL, 'Eaque qui est hic amet fugit corporis. Rerum sit eum corporis modi. Voluptate voluptas et ad unde voluptas amet magni.', 'es_ES');
INSERT INTO `sylius_product_translation` VALUES (86, 11, 'Beige strappy summer dress', 'beige-strappy-summer-dress', 'Laborum et voluptate dolorem dolor. Et doloremque aut ex laboriosam maxime tempore modi. Qui accusantium earum voluptate saepe molestiae.\n\nEst accusantium facere cumque qui. Eius exercitationem sit autem beatae cum rem quidem earum. Et consequuntur sed iste eveniet.\n\nNulla cumque architecto consequatur consectetur. Fuga eum ducimus voluptatibus sed impedit. Velit expedita quaerat magni officiis praesentium fuga. Est placeat voluptatem et ut consectetur impedit quas.', NULL, NULL, 'Eaque qui est hic amet fugit corporis. Rerum sit eum corporis modi. Voluptate voluptas et ad unde voluptas amet magni.', 'es_MX');
INSERT INTO `sylius_product_translation` VALUES (87, 11, 'Beige strappy summer dress', 'beige-strappy-summer-dress', 'Laborum et voluptate dolorem dolor. Et doloremque aut ex laboriosam maxime tempore modi. Qui accusantium earum voluptate saepe molestiae.\n\nEst accusantium facere cumque qui. Eius exercitationem sit autem beatae cum rem quidem earum. Et consequuntur sed iste eveniet.\n\nNulla cumque architecto consequatur consectetur. Fuga eum ducimus voluptatibus sed impedit. Velit expedita quaerat magni officiis praesentium fuga. Est placeat voluptatem et ut consectetur impedit quas.', NULL, NULL, 'Eaque qui est hic amet fugit corporis. Rerum sit eum corporis modi. Voluptate voluptas et ad unde voluptas amet magni.', 'pt_PT');
INSERT INTO `sylius_product_translation` VALUES (88, 11, 'Beige strappy summer dress', 'beige-strappy-summer-dress', 'Laborum et voluptate dolorem dolor. Et doloremque aut ex laboriosam maxime tempore modi. Qui accusantium earum voluptate saepe molestiae.\n\nEst accusantium facere cumque qui. Eius exercitationem sit autem beatae cum rem quidem earum. Et consequuntur sed iste eveniet.\n\nNulla cumque architecto consequatur consectetur. Fuga eum ducimus voluptatibus sed impedit. Velit expedita quaerat magni officiis praesentium fuga. Est placeat voluptatem et ut consectetur impedit quas.', NULL, NULL, 'Eaque qui est hic amet fugit corporis. Rerum sit eum corporis modi. Voluptate voluptas et ad unde voluptas amet magni.', 'zh_CN');
INSERT INTO `sylius_product_translation` VALUES (89, 12, 'Off shoulder boho dress', 'off-shoulder-boho-dress', 'Quo iste et eum aut minus sed nihil. Voluptate optio deserunt et nostrum odit. Expedita incidunt sed sit mollitia.\n\nUt nobis ipsum deleniti est harum ut voluptatem. Odio dolor quidem perspiciatis fuga saepe. Voluptates et facere molestiae nostrum velit praesentium ex est. Non ducimus et dolor dolorem. Quaerat sunt necessitatibus aliquid eum magnam amet quia.\n\nHarum necessitatibus voluptas vel commodi aut. Sed vitae non a eos suscipit amet eius. Illum nesciunt rem quos ab placeat aliquam vel. Dolorem nisi aut dolores labore sint.', NULL, NULL, 'Iusto perspiciatis repellendus minus ratione cupiditate quasi quod. Ex mollitia inventore quia non. Ratione molestiae accusamus vel quod repudiandae suscipit.', 'en_US');
INSERT INTO `sylius_product_translation` VALUES (90, 12, 'Off shoulder boho dress', 'off-shoulder-boho-dress', 'Quo iste et eum aut minus sed nihil. Voluptate optio deserunt et nostrum odit. Expedita incidunt sed sit mollitia.\n\nUt nobis ipsum deleniti est harum ut voluptatem. Odio dolor quidem perspiciatis fuga saepe. Voluptates et facere molestiae nostrum velit praesentium ex est. Non ducimus et dolor dolorem. Quaerat sunt necessitatibus aliquid eum magnam amet quia.\n\nHarum necessitatibus voluptas vel commodi aut. Sed vitae non a eos suscipit amet eius. Illum nesciunt rem quos ab placeat aliquam vel. Dolorem nisi aut dolores labore sint.', NULL, NULL, 'Iusto perspiciatis repellendus minus ratione cupiditate quasi quod. Ex mollitia inventore quia non. Ratione molestiae accusamus vel quod repudiandae suscipit.', 'de_DE');
INSERT INTO `sylius_product_translation` VALUES (91, 12, 'Off shoulder boho dress', 'off-shoulder-boho-dress', 'Quo iste et eum aut minus sed nihil. Voluptate optio deserunt et nostrum odit. Expedita incidunt sed sit mollitia.\n\nUt nobis ipsum deleniti est harum ut voluptatem. Odio dolor quidem perspiciatis fuga saepe. Voluptates et facere molestiae nostrum velit praesentium ex est. Non ducimus et dolor dolorem. Quaerat sunt necessitatibus aliquid eum magnam amet quia.\n\nHarum necessitatibus voluptas vel commodi aut. Sed vitae non a eos suscipit amet eius. Illum nesciunt rem quos ab placeat aliquam vel. Dolorem nisi aut dolores labore sint.', NULL, NULL, 'Iusto perspiciatis repellendus minus ratione cupiditate quasi quod. Ex mollitia inventore quia non. Ratione molestiae accusamus vel quod repudiandae suscipit.', 'fr_FR');
INSERT INTO `sylius_product_translation` VALUES (92, 12, 'Off shoulder boho dress', 'off-shoulder-boho-dress', 'Quo iste et eum aut minus sed nihil. Voluptate optio deserunt et nostrum odit. Expedita incidunt sed sit mollitia.\n\nUt nobis ipsum deleniti est harum ut voluptatem. Odio dolor quidem perspiciatis fuga saepe. Voluptates et facere molestiae nostrum velit praesentium ex est. Non ducimus et dolor dolorem. Quaerat sunt necessitatibus aliquid eum magnam amet quia.\n\nHarum necessitatibus voluptas vel commodi aut. Sed vitae non a eos suscipit amet eius. Illum nesciunt rem quos ab placeat aliquam vel. Dolorem nisi aut dolores labore sint.', NULL, NULL, 'Iusto perspiciatis repellendus minus ratione cupiditate quasi quod. Ex mollitia inventore quia non. Ratione molestiae accusamus vel quod repudiandae suscipit.', 'pl_PL');
INSERT INTO `sylius_product_translation` VALUES (93, 12, 'Off shoulder boho dress', 'off-shoulder-boho-dress', 'Quo iste et eum aut minus sed nihil. Voluptate optio deserunt et nostrum odit. Expedita incidunt sed sit mollitia.\n\nUt nobis ipsum deleniti est harum ut voluptatem. Odio dolor quidem perspiciatis fuga saepe. Voluptates et facere molestiae nostrum velit praesentium ex est. Non ducimus et dolor dolorem. Quaerat sunt necessitatibus aliquid eum magnam amet quia.\n\nHarum necessitatibus voluptas vel commodi aut. Sed vitae non a eos suscipit amet eius. Illum nesciunt rem quos ab placeat aliquam vel. Dolorem nisi aut dolores labore sint.', NULL, NULL, 'Iusto perspiciatis repellendus minus ratione cupiditate quasi quod. Ex mollitia inventore quia non. Ratione molestiae accusamus vel quod repudiandae suscipit.', 'es_ES');
INSERT INTO `sylius_product_translation` VALUES (94, 12, 'Off shoulder boho dress', 'off-shoulder-boho-dress', 'Quo iste et eum aut minus sed nihil. Voluptate optio deserunt et nostrum odit. Expedita incidunt sed sit mollitia.\n\nUt nobis ipsum deleniti est harum ut voluptatem. Odio dolor quidem perspiciatis fuga saepe. Voluptates et facere molestiae nostrum velit praesentium ex est. Non ducimus et dolor dolorem. Quaerat sunt necessitatibus aliquid eum magnam amet quia.\n\nHarum necessitatibus voluptas vel commodi aut. Sed vitae non a eos suscipit amet eius. Illum nesciunt rem quos ab placeat aliquam vel. Dolorem nisi aut dolores labore sint.', NULL, NULL, 'Iusto perspiciatis repellendus minus ratione cupiditate quasi quod. Ex mollitia inventore quia non. Ratione molestiae accusamus vel quod repudiandae suscipit.', 'es_MX');
INSERT INTO `sylius_product_translation` VALUES (95, 12, 'Off shoulder boho dress', 'off-shoulder-boho-dress', 'Quo iste et eum aut minus sed nihil. Voluptate optio deserunt et nostrum odit. Expedita incidunt sed sit mollitia.\n\nUt nobis ipsum deleniti est harum ut voluptatem. Odio dolor quidem perspiciatis fuga saepe. Voluptates et facere molestiae nostrum velit praesentium ex est. Non ducimus et dolor dolorem. Quaerat sunt necessitatibus aliquid eum magnam amet quia.\n\nHarum necessitatibus voluptas vel commodi aut. Sed vitae non a eos suscipit amet eius. Illum nesciunt rem quos ab placeat aliquam vel. Dolorem nisi aut dolores labore sint.', NULL, NULL, 'Iusto perspiciatis repellendus minus ratione cupiditate quasi quod. Ex mollitia inventore quia non. Ratione molestiae accusamus vel quod repudiandae suscipit.', 'pt_PT');
INSERT INTO `sylius_product_translation` VALUES (96, 12, 'Off shoulder boho dress', 'off-shoulder-boho-dress', 'Quo iste et eum aut minus sed nihil. Voluptate optio deserunt et nostrum odit. Expedita incidunt sed sit mollitia.\n\nUt nobis ipsum deleniti est harum ut voluptatem. Odio dolor quidem perspiciatis fuga saepe. Voluptates et facere molestiae nostrum velit praesentium ex est. Non ducimus et dolor dolorem. Quaerat sunt necessitatibus aliquid eum magnam amet quia.\n\nHarum necessitatibus voluptas vel commodi aut. Sed vitae non a eos suscipit amet eius. Illum nesciunt rem quos ab placeat aliquam vel. Dolorem nisi aut dolores labore sint.', NULL, NULL, 'Iusto perspiciatis repellendus minus ratione cupiditate quasi quod. Ex mollitia inventore quia non. Ratione molestiae accusamus vel quod repudiandae suscipit.', 'zh_CN');
INSERT INTO `sylius_product_translation` VALUES (97, 13, 'Ruffle wrap festival dress', 'ruffle-wrap-festival-dress', 'Voluptatem voluptatibus ut tenetur. Enim molestias ullam sunt odio et omnis ea. Odio nisi veritatis numquam ex distinctio.\n\nNemo sint accusantium et cum error dolore. Minus ea iusto occaecati nisi excepturi sed excepturi.\n\nIusto facilis sit enim vero reprehenderit quasi. Ut culpa doloribus perferendis voluptatem omnis incidunt repellat. Debitis temporibus ut quia sequi deserunt. Dolorem alias laudantium in qui.', NULL, NULL, 'Rem eos a laboriosam assumenda beatae voluptatem voluptatem. Et quis quis quis rerum nihil ad quos. Beatae illo id eius nesciunt sint non beatae. Quos enim sit quasi illo placeat voluptatem est.', 'en_US');
INSERT INTO `sylius_product_translation` VALUES (98, 13, 'Ruffle wrap festival dress', 'ruffle-wrap-festival-dress', 'Voluptatem voluptatibus ut tenetur. Enim molestias ullam sunt odio et omnis ea. Odio nisi veritatis numquam ex distinctio.\n\nNemo sint accusantium et cum error dolore. Minus ea iusto occaecati nisi excepturi sed excepturi.\n\nIusto facilis sit enim vero reprehenderit quasi. Ut culpa doloribus perferendis voluptatem omnis incidunt repellat. Debitis temporibus ut quia sequi deserunt. Dolorem alias laudantium in qui.', NULL, NULL, 'Rem eos a laboriosam assumenda beatae voluptatem voluptatem. Et quis quis quis rerum nihil ad quos. Beatae illo id eius nesciunt sint non beatae. Quos enim sit quasi illo placeat voluptatem est.', 'de_DE');
INSERT INTO `sylius_product_translation` VALUES (99, 13, 'Ruffle wrap festival dress', 'ruffle-wrap-festival-dress', 'Voluptatem voluptatibus ut tenetur. Enim molestias ullam sunt odio et omnis ea. Odio nisi veritatis numquam ex distinctio.\n\nNemo sint accusantium et cum error dolore. Minus ea iusto occaecati nisi excepturi sed excepturi.\n\nIusto facilis sit enim vero reprehenderit quasi. Ut culpa doloribus perferendis voluptatem omnis incidunt repellat. Debitis temporibus ut quia sequi deserunt. Dolorem alias laudantium in qui.', NULL, NULL, 'Rem eos a laboriosam assumenda beatae voluptatem voluptatem. Et quis quis quis rerum nihil ad quos. Beatae illo id eius nesciunt sint non beatae. Quos enim sit quasi illo placeat voluptatem est.', 'fr_FR');
INSERT INTO `sylius_product_translation` VALUES (100, 13, 'Ruffle wrap festival dress', 'ruffle-wrap-festival-dress', 'Voluptatem voluptatibus ut tenetur. Enim molestias ullam sunt odio et omnis ea. Odio nisi veritatis numquam ex distinctio.\n\nNemo sint accusantium et cum error dolore. Minus ea iusto occaecati nisi excepturi sed excepturi.\n\nIusto facilis sit enim vero reprehenderit quasi. Ut culpa doloribus perferendis voluptatem omnis incidunt repellat. Debitis temporibus ut quia sequi deserunt. Dolorem alias laudantium in qui.', NULL, NULL, 'Rem eos a laboriosam assumenda beatae voluptatem voluptatem. Et quis quis quis rerum nihil ad quos. Beatae illo id eius nesciunt sint non beatae. Quos enim sit quasi illo placeat voluptatem est.', 'pl_PL');
INSERT INTO `sylius_product_translation` VALUES (101, 13, 'Ruffle wrap festival dress', 'ruffle-wrap-festival-dress', 'Voluptatem voluptatibus ut tenetur. Enim molestias ullam sunt odio et omnis ea. Odio nisi veritatis numquam ex distinctio.\n\nNemo sint accusantium et cum error dolore. Minus ea iusto occaecati nisi excepturi sed excepturi.\n\nIusto facilis sit enim vero reprehenderit quasi. Ut culpa doloribus perferendis voluptatem omnis incidunt repellat. Debitis temporibus ut quia sequi deserunt. Dolorem alias laudantium in qui.', NULL, NULL, 'Rem eos a laboriosam assumenda beatae voluptatem voluptatem. Et quis quis quis rerum nihil ad quos. Beatae illo id eius nesciunt sint non beatae. Quos enim sit quasi illo placeat voluptatem est.', 'es_ES');
INSERT INTO `sylius_product_translation` VALUES (102, 13, 'Ruffle wrap festival dress', 'ruffle-wrap-festival-dress', 'Voluptatem voluptatibus ut tenetur. Enim molestias ullam sunt odio et omnis ea. Odio nisi veritatis numquam ex distinctio.\n\nNemo sint accusantium et cum error dolore. Minus ea iusto occaecati nisi excepturi sed excepturi.\n\nIusto facilis sit enim vero reprehenderit quasi. Ut culpa doloribus perferendis voluptatem omnis incidunt repellat. Debitis temporibus ut quia sequi deserunt. Dolorem alias laudantium in qui.', NULL, NULL, 'Rem eos a laboriosam assumenda beatae voluptatem voluptatem. Et quis quis quis rerum nihil ad quos. Beatae illo id eius nesciunt sint non beatae. Quos enim sit quasi illo placeat voluptatem est.', 'es_MX');
INSERT INTO `sylius_product_translation` VALUES (103, 13, 'Ruffle wrap festival dress', 'ruffle-wrap-festival-dress', 'Voluptatem voluptatibus ut tenetur. Enim molestias ullam sunt odio et omnis ea. Odio nisi veritatis numquam ex distinctio.\n\nNemo sint accusantium et cum error dolore. Minus ea iusto occaecati nisi excepturi sed excepturi.\n\nIusto facilis sit enim vero reprehenderit quasi. Ut culpa doloribus perferendis voluptatem omnis incidunt repellat. Debitis temporibus ut quia sequi deserunt. Dolorem alias laudantium in qui.', NULL, NULL, 'Rem eos a laboriosam assumenda beatae voluptatem voluptatem. Et quis quis quis rerum nihil ad quos. Beatae illo id eius nesciunt sint non beatae. Quos enim sit quasi illo placeat voluptatem est.', 'pt_PT');
INSERT INTO `sylius_product_translation` VALUES (104, 13, 'Ruffle wrap festival dress', 'ruffle-wrap-festival-dress', 'Voluptatem voluptatibus ut tenetur. Enim molestias ullam sunt odio et omnis ea. Odio nisi veritatis numquam ex distinctio.\n\nNemo sint accusantium et cum error dolore. Minus ea iusto occaecati nisi excepturi sed excepturi.\n\nIusto facilis sit enim vero reprehenderit quasi. Ut culpa doloribus perferendis voluptatem omnis incidunt repellat. Debitis temporibus ut quia sequi deserunt. Dolorem alias laudantium in qui.', NULL, NULL, 'Rem eos a laboriosam assumenda beatae voluptatem voluptatem. Et quis quis quis rerum nihil ad quos. Beatae illo id eius nesciunt sint non beatae. Quos enim sit quasi illo placeat voluptatem est.', 'zh_CN');
INSERT INTO `sylius_product_translation` VALUES (105, 14, '911M regular fit jeans', '911m-regular-fit-jeans', 'Sint occaecati nostrum minus saepe veritatis itaque. Eum eum omnis voluptas asperiores est provident hic. Iusto placeat recusandae voluptatem repellat sed. Aut ut voluptates perferendis.\n\nAssumenda quia ut quae totam omnis beatae quisquam iure. Voluptas molestiae minus sit quaerat consectetur consectetur ex. In expedita cupiditate labore dignissimos. Totam iusto blanditiis quidem id sed.\n\nTenetur quia porro id id eligendi aperiam. Eum cupiditate magnam autem ipsum eos praesentium delectus. Blanditiis ea tenetur fuga est ea explicabo modi. Et iste dolores vero est qui.', NULL, NULL, 'Illo est assumenda magni at expedita. Fugiat soluta natus ea voluptatibus consequuntur aut. Cum consequatur non doloremque non. Veritatis mollitia sunt molestias eum.', 'en_US');
INSERT INTO `sylius_product_translation` VALUES (106, 14, '911M regular fit jeans', '911m-regular-fit-jeans', 'Sint occaecati nostrum minus saepe veritatis itaque. Eum eum omnis voluptas asperiores est provident hic. Iusto placeat recusandae voluptatem repellat sed. Aut ut voluptates perferendis.\n\nAssumenda quia ut quae totam omnis beatae quisquam iure. Voluptas molestiae minus sit quaerat consectetur consectetur ex. In expedita cupiditate labore dignissimos. Totam iusto blanditiis quidem id sed.\n\nTenetur quia porro id id eligendi aperiam. Eum cupiditate magnam autem ipsum eos praesentium delectus. Blanditiis ea tenetur fuga est ea explicabo modi. Et iste dolores vero est qui.', NULL, NULL, 'Illo est assumenda magni at expedita. Fugiat soluta natus ea voluptatibus consequuntur aut. Cum consequatur non doloremque non. Veritatis mollitia sunt molestias eum.', 'de_DE');
INSERT INTO `sylius_product_translation` VALUES (107, 14, '911M regular fit jeans', '911m-regular-fit-jeans', 'Sint occaecati nostrum minus saepe veritatis itaque. Eum eum omnis voluptas asperiores est provident hic. Iusto placeat recusandae voluptatem repellat sed. Aut ut voluptates perferendis.\n\nAssumenda quia ut quae totam omnis beatae quisquam iure. Voluptas molestiae minus sit quaerat consectetur consectetur ex. In expedita cupiditate labore dignissimos. Totam iusto blanditiis quidem id sed.\n\nTenetur quia porro id id eligendi aperiam. Eum cupiditate magnam autem ipsum eos praesentium delectus. Blanditiis ea tenetur fuga est ea explicabo modi. Et iste dolores vero est qui.', NULL, NULL, 'Illo est assumenda magni at expedita. Fugiat soluta natus ea voluptatibus consequuntur aut. Cum consequatur non doloremque non. Veritatis mollitia sunt molestias eum.', 'fr_FR');
INSERT INTO `sylius_product_translation` VALUES (108, 14, '911M regular fit jeans', '911m-regular-fit-jeans', 'Sint occaecati nostrum minus saepe veritatis itaque. Eum eum omnis voluptas asperiores est provident hic. Iusto placeat recusandae voluptatem repellat sed. Aut ut voluptates perferendis.\n\nAssumenda quia ut quae totam omnis beatae quisquam iure. Voluptas molestiae minus sit quaerat consectetur consectetur ex. In expedita cupiditate labore dignissimos. Totam iusto blanditiis quidem id sed.\n\nTenetur quia porro id id eligendi aperiam. Eum cupiditate magnam autem ipsum eos praesentium delectus. Blanditiis ea tenetur fuga est ea explicabo modi. Et iste dolores vero est qui.', NULL, NULL, 'Illo est assumenda magni at expedita. Fugiat soluta natus ea voluptatibus consequuntur aut. Cum consequatur non doloremque non. Veritatis mollitia sunt molestias eum.', 'pl_PL');
INSERT INTO `sylius_product_translation` VALUES (109, 14, '911M regular fit jeans', '911m-regular-fit-jeans', 'Sint occaecati nostrum minus saepe veritatis itaque. Eum eum omnis voluptas asperiores est provident hic. Iusto placeat recusandae voluptatem repellat sed. Aut ut voluptates perferendis.\n\nAssumenda quia ut quae totam omnis beatae quisquam iure. Voluptas molestiae minus sit quaerat consectetur consectetur ex. In expedita cupiditate labore dignissimos. Totam iusto blanditiis quidem id sed.\n\nTenetur quia porro id id eligendi aperiam. Eum cupiditate magnam autem ipsum eos praesentium delectus. Blanditiis ea tenetur fuga est ea explicabo modi. Et iste dolores vero est qui.', NULL, NULL, 'Illo est assumenda magni at expedita. Fugiat soluta natus ea voluptatibus consequuntur aut. Cum consequatur non doloremque non. Veritatis mollitia sunt molestias eum.', 'es_ES');
INSERT INTO `sylius_product_translation` VALUES (110, 14, '911M regular fit jeans', '911m-regular-fit-jeans', 'Sint occaecati nostrum minus saepe veritatis itaque. Eum eum omnis voluptas asperiores est provident hic. Iusto placeat recusandae voluptatem repellat sed. Aut ut voluptates perferendis.\n\nAssumenda quia ut quae totam omnis beatae quisquam iure. Voluptas molestiae minus sit quaerat consectetur consectetur ex. In expedita cupiditate labore dignissimos. Totam iusto blanditiis quidem id sed.\n\nTenetur quia porro id id eligendi aperiam. Eum cupiditate magnam autem ipsum eos praesentium delectus. Blanditiis ea tenetur fuga est ea explicabo modi. Et iste dolores vero est qui.', NULL, NULL, 'Illo est assumenda magni at expedita. Fugiat soluta natus ea voluptatibus consequuntur aut. Cum consequatur non doloremque non. Veritatis mollitia sunt molestias eum.', 'es_MX');
INSERT INTO `sylius_product_translation` VALUES (111, 14, '911M regular fit jeans', '911m-regular-fit-jeans', 'Sint occaecati nostrum minus saepe veritatis itaque. Eum eum omnis voluptas asperiores est provident hic. Iusto placeat recusandae voluptatem repellat sed. Aut ut voluptates perferendis.\n\nAssumenda quia ut quae totam omnis beatae quisquam iure. Voluptas molestiae minus sit quaerat consectetur consectetur ex. In expedita cupiditate labore dignissimos. Totam iusto blanditiis quidem id sed.\n\nTenetur quia porro id id eligendi aperiam. Eum cupiditate magnam autem ipsum eos praesentium delectus. Blanditiis ea tenetur fuga est ea explicabo modi. Et iste dolores vero est qui.', NULL, NULL, 'Illo est assumenda magni at expedita. Fugiat soluta natus ea voluptatibus consequuntur aut. Cum consequatur non doloremque non. Veritatis mollitia sunt molestias eum.', 'pt_PT');
INSERT INTO `sylius_product_translation` VALUES (112, 14, '911M regular fit jeans', '911m-regular-fit-jeans', 'Sint occaecati nostrum minus saepe veritatis itaque. Eum eum omnis voluptas asperiores est provident hic. Iusto placeat recusandae voluptatem repellat sed. Aut ut voluptates perferendis.\n\nAssumenda quia ut quae totam omnis beatae quisquam iure. Voluptas molestiae minus sit quaerat consectetur consectetur ex. In expedita cupiditate labore dignissimos. Totam iusto blanditiis quidem id sed.\n\nTenetur quia porro id id eligendi aperiam. Eum cupiditate magnam autem ipsum eos praesentium delectus. Blanditiis ea tenetur fuga est ea explicabo modi. Et iste dolores vero est qui.', NULL, NULL, 'Illo est assumenda magni at expedita. Fugiat soluta natus ea voluptatibus consequuntur aut. Cum consequatur non doloremque non. Veritatis mollitia sunt molestias eum.', 'zh_CN');
INSERT INTO `sylius_product_translation` VALUES (113, 15, '330M slim fit jeans', '330m-slim-fit-jeans', 'Magnam distinctio nostrum quibusdam placeat rerum eligendi omnis. Soluta voluptas quis aut qui voluptatem quibusdam.\n\nCum qui inventore cumque eligendi non necessitatibus. Eaque quis et magni quasi optio nemo. Quia aut eius aut molestiae.\n\nQuaerat natus velit provident molestias laborum. Quidem modi hic corporis voluptas praesentium molestias rem deserunt. Voluptate nisi modi molestiae maiores explicabo harum in. Dicta est ipsa consequatur quia assumenda eligendi animi.', NULL, NULL, 'Facere corporis quasi error. Odio voluptatum maxime sapiente et quos. Et quis itaque assumenda iure illum repellendus praesentium.', 'en_US');
INSERT INTO `sylius_product_translation` VALUES (114, 15, '330M slim fit jeans', '330m-slim-fit-jeans', 'Magnam distinctio nostrum quibusdam placeat rerum eligendi omnis. Soluta voluptas quis aut qui voluptatem quibusdam.\n\nCum qui inventore cumque eligendi non necessitatibus. Eaque quis et magni quasi optio nemo. Quia aut eius aut molestiae.\n\nQuaerat natus velit provident molestias laborum. Quidem modi hic corporis voluptas praesentium molestias rem deserunt. Voluptate nisi modi molestiae maiores explicabo harum in. Dicta est ipsa consequatur quia assumenda eligendi animi.', NULL, NULL, 'Facere corporis quasi error. Odio voluptatum maxime sapiente et quos. Et quis itaque assumenda iure illum repellendus praesentium.', 'de_DE');
INSERT INTO `sylius_product_translation` VALUES (115, 15, '330M slim fit jeans', '330m-slim-fit-jeans', 'Magnam distinctio nostrum quibusdam placeat rerum eligendi omnis. Soluta voluptas quis aut qui voluptatem quibusdam.\n\nCum qui inventore cumque eligendi non necessitatibus. Eaque quis et magni quasi optio nemo. Quia aut eius aut molestiae.\n\nQuaerat natus velit provident molestias laborum. Quidem modi hic corporis voluptas praesentium molestias rem deserunt. Voluptate nisi modi molestiae maiores explicabo harum in. Dicta est ipsa consequatur quia assumenda eligendi animi.', NULL, NULL, 'Facere corporis quasi error. Odio voluptatum maxime sapiente et quos. Et quis itaque assumenda iure illum repellendus praesentium.', 'fr_FR');
INSERT INTO `sylius_product_translation` VALUES (116, 15, '330M slim fit jeans', '330m-slim-fit-jeans', 'Magnam distinctio nostrum quibusdam placeat rerum eligendi omnis. Soluta voluptas quis aut qui voluptatem quibusdam.\n\nCum qui inventore cumque eligendi non necessitatibus. Eaque quis et magni quasi optio nemo. Quia aut eius aut molestiae.\n\nQuaerat natus velit provident molestias laborum. Quidem modi hic corporis voluptas praesentium molestias rem deserunt. Voluptate nisi modi molestiae maiores explicabo harum in. Dicta est ipsa consequatur quia assumenda eligendi animi.', NULL, NULL, 'Facere corporis quasi error. Odio voluptatum maxime sapiente et quos. Et quis itaque assumenda iure illum repellendus praesentium.', 'pl_PL');
INSERT INTO `sylius_product_translation` VALUES (117, 15, '330M slim fit jeans', '330m-slim-fit-jeans', 'Magnam distinctio nostrum quibusdam placeat rerum eligendi omnis. Soluta voluptas quis aut qui voluptatem quibusdam.\n\nCum qui inventore cumque eligendi non necessitatibus. Eaque quis et magni quasi optio nemo. Quia aut eius aut molestiae.\n\nQuaerat natus velit provident molestias laborum. Quidem modi hic corporis voluptas praesentium molestias rem deserunt. Voluptate nisi modi molestiae maiores explicabo harum in. Dicta est ipsa consequatur quia assumenda eligendi animi.', NULL, NULL, 'Facere corporis quasi error. Odio voluptatum maxime sapiente et quos. Et quis itaque assumenda iure illum repellendus praesentium.', 'es_ES');
INSERT INTO `sylius_product_translation` VALUES (118, 15, '330M slim fit jeans', '330m-slim-fit-jeans', 'Magnam distinctio nostrum quibusdam placeat rerum eligendi omnis. Soluta voluptas quis aut qui voluptatem quibusdam.\n\nCum qui inventore cumque eligendi non necessitatibus. Eaque quis et magni quasi optio nemo. Quia aut eius aut molestiae.\n\nQuaerat natus velit provident molestias laborum. Quidem modi hic corporis voluptas praesentium molestias rem deserunt. Voluptate nisi modi molestiae maiores explicabo harum in. Dicta est ipsa consequatur quia assumenda eligendi animi.', NULL, NULL, 'Facere corporis quasi error. Odio voluptatum maxime sapiente et quos. Et quis itaque assumenda iure illum repellendus praesentium.', 'es_MX');
INSERT INTO `sylius_product_translation` VALUES (119, 15, '330M slim fit jeans', '330m-slim-fit-jeans', 'Magnam distinctio nostrum quibusdam placeat rerum eligendi omnis. Soluta voluptas quis aut qui voluptatem quibusdam.\n\nCum qui inventore cumque eligendi non necessitatibus. Eaque quis et magni quasi optio nemo. Quia aut eius aut molestiae.\n\nQuaerat natus velit provident molestias laborum. Quidem modi hic corporis voluptas praesentium molestias rem deserunt. Voluptate nisi modi molestiae maiores explicabo harum in. Dicta est ipsa consequatur quia assumenda eligendi animi.', NULL, NULL, 'Facere corporis quasi error. Odio voluptatum maxime sapiente et quos. Et quis itaque assumenda iure illum repellendus praesentium.', 'pt_PT');
INSERT INTO `sylius_product_translation` VALUES (120, 15, '330M slim fit jeans', '330m-slim-fit-jeans', 'Magnam distinctio nostrum quibusdam placeat rerum eligendi omnis. Soluta voluptas quis aut qui voluptatem quibusdam.\n\nCum qui inventore cumque eligendi non necessitatibus. Eaque quis et magni quasi optio nemo. Quia aut eius aut molestiae.\n\nQuaerat natus velit provident molestias laborum. Quidem modi hic corporis voluptas praesentium molestias rem deserunt. Voluptate nisi modi molestiae maiores explicabo harum in. Dicta est ipsa consequatur quia assumenda eligendi animi.', NULL, NULL, 'Facere corporis quasi error. Odio voluptatum maxime sapiente et quos. Et quis itaque assumenda iure illum repellendus praesentium.', 'zh_CN');
INSERT INTO `sylius_product_translation` VALUES (121, 16, '990M regular fit jeans', '990m-regular-fit-jeans', 'Excepturi commodi sit vel error. Doloremque ut ut repudiandae officiis. Illo ut provident esse omnis. In a quo est aut vero ipsum ut.\n\nQui aliquid laborum consectetur. Vero necessitatibus aut sit voluptatem totam. Cum quaerat pariatur illum ducimus expedita. Nostrum dolorem voluptates eum debitis rerum pariatur magni.\n\nEveniet sint vitae ducimus incidunt placeat laudantium. Delectus similique velit consequuntur saepe magnam. Non ut quos molestiae nulla porro. Optio sunt et fugit expedita voluptate consectetur.', NULL, NULL, 'Doloribus est cum dicta iste dolores dolorem. Voluptate exercitationem autem odit et reprehenderit voluptatem earum. Sint ut iste rem veritatis.', 'en_US');
INSERT INTO `sylius_product_translation` VALUES (122, 16, '990M regular fit jeans', '990m-regular-fit-jeans', 'Excepturi commodi sit vel error. Doloremque ut ut repudiandae officiis. Illo ut provident esse omnis. In a quo est aut vero ipsum ut.\n\nQui aliquid laborum consectetur. Vero necessitatibus aut sit voluptatem totam. Cum quaerat pariatur illum ducimus expedita. Nostrum dolorem voluptates eum debitis rerum pariatur magni.\n\nEveniet sint vitae ducimus incidunt placeat laudantium. Delectus similique velit consequuntur saepe magnam. Non ut quos molestiae nulla porro. Optio sunt et fugit expedita voluptate consectetur.', NULL, NULL, 'Doloribus est cum dicta iste dolores dolorem. Voluptate exercitationem autem odit et reprehenderit voluptatem earum. Sint ut iste rem veritatis.', 'de_DE');
INSERT INTO `sylius_product_translation` VALUES (123, 16, '990M regular fit jeans', '990m-regular-fit-jeans', 'Excepturi commodi sit vel error. Doloremque ut ut repudiandae officiis. Illo ut provident esse omnis. In a quo est aut vero ipsum ut.\n\nQui aliquid laborum consectetur. Vero necessitatibus aut sit voluptatem totam. Cum quaerat pariatur illum ducimus expedita. Nostrum dolorem voluptates eum debitis rerum pariatur magni.\n\nEveniet sint vitae ducimus incidunt placeat laudantium. Delectus similique velit consequuntur saepe magnam. Non ut quos molestiae nulla porro. Optio sunt et fugit expedita voluptate consectetur.', NULL, NULL, 'Doloribus est cum dicta iste dolores dolorem. Voluptate exercitationem autem odit et reprehenderit voluptatem earum. Sint ut iste rem veritatis.', 'fr_FR');
INSERT INTO `sylius_product_translation` VALUES (124, 16, '990M regular fit jeans', '990m-regular-fit-jeans', 'Excepturi commodi sit vel error. Doloremque ut ut repudiandae officiis. Illo ut provident esse omnis. In a quo est aut vero ipsum ut.\n\nQui aliquid laborum consectetur. Vero necessitatibus aut sit voluptatem totam. Cum quaerat pariatur illum ducimus expedita. Nostrum dolorem voluptates eum debitis rerum pariatur magni.\n\nEveniet sint vitae ducimus incidunt placeat laudantium. Delectus similique velit consequuntur saepe magnam. Non ut quos molestiae nulla porro. Optio sunt et fugit expedita voluptate consectetur.', NULL, NULL, 'Doloribus est cum dicta iste dolores dolorem. Voluptate exercitationem autem odit et reprehenderit voluptatem earum. Sint ut iste rem veritatis.', 'pl_PL');
INSERT INTO `sylius_product_translation` VALUES (125, 16, '990M regular fit jeans', '990m-regular-fit-jeans', 'Excepturi commodi sit vel error. Doloremque ut ut repudiandae officiis. Illo ut provident esse omnis. In a quo est aut vero ipsum ut.\n\nQui aliquid laborum consectetur. Vero necessitatibus aut sit voluptatem totam. Cum quaerat pariatur illum ducimus expedita. Nostrum dolorem voluptates eum debitis rerum pariatur magni.\n\nEveniet sint vitae ducimus incidunt placeat laudantium. Delectus similique velit consequuntur saepe magnam. Non ut quos molestiae nulla porro. Optio sunt et fugit expedita voluptate consectetur.', NULL, NULL, 'Doloribus est cum dicta iste dolores dolorem. Voluptate exercitationem autem odit et reprehenderit voluptatem earum. Sint ut iste rem veritatis.', 'es_ES');
INSERT INTO `sylius_product_translation` VALUES (126, 16, '990M regular fit jeans', '990m-regular-fit-jeans', 'Excepturi commodi sit vel error. Doloremque ut ut repudiandae officiis. Illo ut provident esse omnis. In a quo est aut vero ipsum ut.\n\nQui aliquid laborum consectetur. Vero necessitatibus aut sit voluptatem totam. Cum quaerat pariatur illum ducimus expedita. Nostrum dolorem voluptates eum debitis rerum pariatur magni.\n\nEveniet sint vitae ducimus incidunt placeat laudantium. Delectus similique velit consequuntur saepe magnam. Non ut quos molestiae nulla porro. Optio sunt et fugit expedita voluptate consectetur.', NULL, NULL, 'Doloribus est cum dicta iste dolores dolorem. Voluptate exercitationem autem odit et reprehenderit voluptatem earum. Sint ut iste rem veritatis.', 'es_MX');
INSERT INTO `sylius_product_translation` VALUES (127, 16, '990M regular fit jeans', '990m-regular-fit-jeans', 'Excepturi commodi sit vel error. Doloremque ut ut repudiandae officiis. Illo ut provident esse omnis. In a quo est aut vero ipsum ut.\n\nQui aliquid laborum consectetur. Vero necessitatibus aut sit voluptatem totam. Cum quaerat pariatur illum ducimus expedita. Nostrum dolorem voluptates eum debitis rerum pariatur magni.\n\nEveniet sint vitae ducimus incidunt placeat laudantium. Delectus similique velit consequuntur saepe magnam. Non ut quos molestiae nulla porro. Optio sunt et fugit expedita voluptate consectetur.', NULL, NULL, 'Doloribus est cum dicta iste dolores dolorem. Voluptate exercitationem autem odit et reprehenderit voluptatem earum. Sint ut iste rem veritatis.', 'pt_PT');
INSERT INTO `sylius_product_translation` VALUES (128, 16, '990M regular fit jeans', '990m-regular-fit-jeans', 'Excepturi commodi sit vel error. Doloremque ut ut repudiandae officiis. Illo ut provident esse omnis. In a quo est aut vero ipsum ut.\n\nQui aliquid laborum consectetur. Vero necessitatibus aut sit voluptatem totam. Cum quaerat pariatur illum ducimus expedita. Nostrum dolorem voluptates eum debitis rerum pariatur magni.\n\nEveniet sint vitae ducimus incidunt placeat laudantium. Delectus similique velit consequuntur saepe magnam. Non ut quos molestiae nulla porro. Optio sunt et fugit expedita voluptate consectetur.', NULL, NULL, 'Doloribus est cum dicta iste dolores dolorem. Voluptate exercitationem autem odit et reprehenderit voluptatem earum. Sint ut iste rem veritatis.', 'zh_CN');
INSERT INTO `sylius_product_translation` VALUES (129, 17, '007M black elegance jeans', '007m-black-elegance-jeans', 'Aut debitis et unde magni ipsa. Labore nesciunt ipsum omnis eius.\n\nVoluptas commodi atque quam ad amet. Molestiae quis consequatur provident iste temporibus. Provident et vel quod dolorem aut temporibus expedita. Molestiae quis est quas delectus laboriosam aspernatur id.\n\nUt cumque sint quisquam inventore a dolores. Pariatur dolorum inventore ut nisi quidem impedit. Aperiam quaerat et non sequi. Numquam sunt odit sint est sit odio magni.', NULL, NULL, 'Iure esse omnis vero. Sit laboriosam atque velit est similique saepe consequuntur omnis. A fugiat nobis rem vitae.', 'en_US');
INSERT INTO `sylius_product_translation` VALUES (130, 17, '007M black elegance jeans', '007m-black-elegance-jeans', 'Aut debitis et unde magni ipsa. Labore nesciunt ipsum omnis eius.\n\nVoluptas commodi atque quam ad amet. Molestiae quis consequatur provident iste temporibus. Provident et vel quod dolorem aut temporibus expedita. Molestiae quis est quas delectus laboriosam aspernatur id.\n\nUt cumque sint quisquam inventore a dolores. Pariatur dolorum inventore ut nisi quidem impedit. Aperiam quaerat et non sequi. Numquam sunt odit sint est sit odio magni.', NULL, NULL, 'Iure esse omnis vero. Sit laboriosam atque velit est similique saepe consequuntur omnis. A fugiat nobis rem vitae.', 'de_DE');
INSERT INTO `sylius_product_translation` VALUES (131, 17, '007M black elegance jeans', '007m-black-elegance-jeans', 'Aut debitis et unde magni ipsa. Labore nesciunt ipsum omnis eius.\n\nVoluptas commodi atque quam ad amet. Molestiae quis consequatur provident iste temporibus. Provident et vel quod dolorem aut temporibus expedita. Molestiae quis est quas delectus laboriosam aspernatur id.\n\nUt cumque sint quisquam inventore a dolores. Pariatur dolorum inventore ut nisi quidem impedit. Aperiam quaerat et non sequi. Numquam sunt odit sint est sit odio magni.', NULL, NULL, 'Iure esse omnis vero. Sit laboriosam atque velit est similique saepe consequuntur omnis. A fugiat nobis rem vitae.', 'fr_FR');
INSERT INTO `sylius_product_translation` VALUES (132, 17, '007M black elegance jeans', '007m-black-elegance-jeans', 'Aut debitis et unde magni ipsa. Labore nesciunt ipsum omnis eius.\n\nVoluptas commodi atque quam ad amet. Molestiae quis consequatur provident iste temporibus. Provident et vel quod dolorem aut temporibus expedita. Molestiae quis est quas delectus laboriosam aspernatur id.\n\nUt cumque sint quisquam inventore a dolores. Pariatur dolorum inventore ut nisi quidem impedit. Aperiam quaerat et non sequi. Numquam sunt odit sint est sit odio magni.', NULL, NULL, 'Iure esse omnis vero. Sit laboriosam atque velit est similique saepe consequuntur omnis. A fugiat nobis rem vitae.', 'pl_PL');
INSERT INTO `sylius_product_translation` VALUES (133, 17, '007M black elegance jeans', '007m-black-elegance-jeans', 'Aut debitis et unde magni ipsa. Labore nesciunt ipsum omnis eius.\n\nVoluptas commodi atque quam ad amet. Molestiae quis consequatur provident iste temporibus. Provident et vel quod dolorem aut temporibus expedita. Molestiae quis est quas delectus laboriosam aspernatur id.\n\nUt cumque sint quisquam inventore a dolores. Pariatur dolorum inventore ut nisi quidem impedit. Aperiam quaerat et non sequi. Numquam sunt odit sint est sit odio magni.', NULL, NULL, 'Iure esse omnis vero. Sit laboriosam atque velit est similique saepe consequuntur omnis. A fugiat nobis rem vitae.', 'es_ES');
INSERT INTO `sylius_product_translation` VALUES (134, 17, '007M black elegance jeans', '007m-black-elegance-jeans', 'Aut debitis et unde magni ipsa. Labore nesciunt ipsum omnis eius.\n\nVoluptas commodi atque quam ad amet. Molestiae quis consequatur provident iste temporibus. Provident et vel quod dolorem aut temporibus expedita. Molestiae quis est quas delectus laboriosam aspernatur id.\n\nUt cumque sint quisquam inventore a dolores. Pariatur dolorum inventore ut nisi quidem impedit. Aperiam quaerat et non sequi. Numquam sunt odit sint est sit odio magni.', NULL, NULL, 'Iure esse omnis vero. Sit laboriosam atque velit est similique saepe consequuntur omnis. A fugiat nobis rem vitae.', 'es_MX');
INSERT INTO `sylius_product_translation` VALUES (135, 17, '007M black elegance jeans', '007m-black-elegance-jeans', 'Aut debitis et unde magni ipsa. Labore nesciunt ipsum omnis eius.\n\nVoluptas commodi atque quam ad amet. Molestiae quis consequatur provident iste temporibus. Provident et vel quod dolorem aut temporibus expedita. Molestiae quis est quas delectus laboriosam aspernatur id.\n\nUt cumque sint quisquam inventore a dolores. Pariatur dolorum inventore ut nisi quidem impedit. Aperiam quaerat et non sequi. Numquam sunt odit sint est sit odio magni.', NULL, NULL, 'Iure esse omnis vero. Sit laboriosam atque velit est similique saepe consequuntur omnis. A fugiat nobis rem vitae.', 'pt_PT');
INSERT INTO `sylius_product_translation` VALUES (136, 17, '007M black elegance jeans', '007m-black-elegance-jeans', 'Aut debitis et unde magni ipsa. Labore nesciunt ipsum omnis eius.\n\nVoluptas commodi atque quam ad amet. Molestiae quis consequatur provident iste temporibus. Provident et vel quod dolorem aut temporibus expedita. Molestiae quis est quas delectus laboriosam aspernatur id.\n\nUt cumque sint quisquam inventore a dolores. Pariatur dolorum inventore ut nisi quidem impedit. Aperiam quaerat et non sequi. Numquam sunt odit sint est sit odio magni.', NULL, NULL, 'Iure esse omnis vero. Sit laboriosam atque velit est similique saepe consequuntur omnis. A fugiat nobis rem vitae.', 'zh_CN');
INSERT INTO `sylius_product_translation` VALUES (137, 18, '727F patched cropped jeans', '727f-patched-cropped-jeans', 'Ducimus similique voluptatem voluptatem corrupti. Asperiores laboriosam doloremque et magni. Est et eveniet voluptatum consequuntur ipsa incidunt consequatur voluptatem. Ut sed aliquam placeat nihil odio rerum velit culpa.\n\nQuos sed dolor aspernatur consequatur. Reprehenderit quo in vel hic sapiente. Voluptas non ut ea est nisi optio non.\n\nQuia ut est ut et. Aperiam mollitia sapiente rem qui omnis quas impedit.', NULL, NULL, 'Quas ex sit omnis fuga. Velit aperiam animi cum. At et ullam qui deleniti facere sunt sunt.', 'en_US');
INSERT INTO `sylius_product_translation` VALUES (138, 18, '727F patched cropped jeans', '727f-patched-cropped-jeans', 'Ducimus similique voluptatem voluptatem corrupti. Asperiores laboriosam doloremque et magni. Est et eveniet voluptatum consequuntur ipsa incidunt consequatur voluptatem. Ut sed aliquam placeat nihil odio rerum velit culpa.\n\nQuos sed dolor aspernatur consequatur. Reprehenderit quo in vel hic sapiente. Voluptas non ut ea est nisi optio non.\n\nQuia ut est ut et. Aperiam mollitia sapiente rem qui omnis quas impedit.', NULL, NULL, 'Quas ex sit omnis fuga. Velit aperiam animi cum. At et ullam qui deleniti facere sunt sunt.', 'de_DE');
INSERT INTO `sylius_product_translation` VALUES (139, 18, '727F patched cropped jeans', '727f-patched-cropped-jeans', 'Ducimus similique voluptatem voluptatem corrupti. Asperiores laboriosam doloremque et magni. Est et eveniet voluptatum consequuntur ipsa incidunt consequatur voluptatem. Ut sed aliquam placeat nihil odio rerum velit culpa.\n\nQuos sed dolor aspernatur consequatur. Reprehenderit quo in vel hic sapiente. Voluptas non ut ea est nisi optio non.\n\nQuia ut est ut et. Aperiam mollitia sapiente rem qui omnis quas impedit.', NULL, NULL, 'Quas ex sit omnis fuga. Velit aperiam animi cum. At et ullam qui deleniti facere sunt sunt.', 'fr_FR');
INSERT INTO `sylius_product_translation` VALUES (140, 18, '727F patched cropped jeans', '727f-patched-cropped-jeans', 'Ducimus similique voluptatem voluptatem corrupti. Asperiores laboriosam doloremque et magni. Est et eveniet voluptatum consequuntur ipsa incidunt consequatur voluptatem. Ut sed aliquam placeat nihil odio rerum velit culpa.\n\nQuos sed dolor aspernatur consequatur. Reprehenderit quo in vel hic sapiente. Voluptas non ut ea est nisi optio non.\n\nQuia ut est ut et. Aperiam mollitia sapiente rem qui omnis quas impedit.', NULL, NULL, 'Quas ex sit omnis fuga. Velit aperiam animi cum. At et ullam qui deleniti facere sunt sunt.', 'pl_PL');
INSERT INTO `sylius_product_translation` VALUES (141, 18, '727F patched cropped jeans', '727f-patched-cropped-jeans', 'Ducimus similique voluptatem voluptatem corrupti. Asperiores laboriosam doloremque et magni. Est et eveniet voluptatum consequuntur ipsa incidunt consequatur voluptatem. Ut sed aliquam placeat nihil odio rerum velit culpa.\n\nQuos sed dolor aspernatur consequatur. Reprehenderit quo in vel hic sapiente. Voluptas non ut ea est nisi optio non.\n\nQuia ut est ut et. Aperiam mollitia sapiente rem qui omnis quas impedit.', NULL, NULL, 'Quas ex sit omnis fuga. Velit aperiam animi cum. At et ullam qui deleniti facere sunt sunt.', 'es_ES');
INSERT INTO `sylius_product_translation` VALUES (142, 18, '727F patched cropped jeans', '727f-patched-cropped-jeans', 'Ducimus similique voluptatem voluptatem corrupti. Asperiores laboriosam doloremque et magni. Est et eveniet voluptatum consequuntur ipsa incidunt consequatur voluptatem. Ut sed aliquam placeat nihil odio rerum velit culpa.\n\nQuos sed dolor aspernatur consequatur. Reprehenderit quo in vel hic sapiente. Voluptas non ut ea est nisi optio non.\n\nQuia ut est ut et. Aperiam mollitia sapiente rem qui omnis quas impedit.', NULL, NULL, 'Quas ex sit omnis fuga. Velit aperiam animi cum. At et ullam qui deleniti facere sunt sunt.', 'es_MX');
INSERT INTO `sylius_product_translation` VALUES (143, 18, '727F patched cropped jeans', '727f-patched-cropped-jeans', 'Ducimus similique voluptatem voluptatem corrupti. Asperiores laboriosam doloremque et magni. Est et eveniet voluptatum consequuntur ipsa incidunt consequatur voluptatem. Ut sed aliquam placeat nihil odio rerum velit culpa.\n\nQuos sed dolor aspernatur consequatur. Reprehenderit quo in vel hic sapiente. Voluptas non ut ea est nisi optio non.\n\nQuia ut est ut et. Aperiam mollitia sapiente rem qui omnis quas impedit.', NULL, NULL, 'Quas ex sit omnis fuga. Velit aperiam animi cum. At et ullam qui deleniti facere sunt sunt.', 'pt_PT');
INSERT INTO `sylius_product_translation` VALUES (144, 18, '727F patched cropped jeans', '727f-patched-cropped-jeans', 'Ducimus similique voluptatem voluptatem corrupti. Asperiores laboriosam doloremque et magni. Est et eveniet voluptatum consequuntur ipsa incidunt consequatur voluptatem. Ut sed aliquam placeat nihil odio rerum velit culpa.\n\nQuos sed dolor aspernatur consequatur. Reprehenderit quo in vel hic sapiente. Voluptas non ut ea est nisi optio non.\n\nQuia ut est ut et. Aperiam mollitia sapiente rem qui omnis quas impedit.', NULL, NULL, 'Quas ex sit omnis fuga. Velit aperiam animi cum. At et ullam qui deleniti facere sunt sunt.', 'zh_CN');
INSERT INTO `sylius_product_translation` VALUES (145, 19, '111F patched jeans with fancy badges', '111f-patched-jeans-with-fancy-badges', 'Repudiandae fugiat est ad sed molestiae nisi. Occaecati distinctio voluptatibus est non. Nesciunt ea porro culpa quis officiis eligendi culpa. Labore repellat eveniet consequatur veritatis exercitationem.\n\nQuia consequatur eos velit nihil. Totam odio odio sed quia qui assumenda. Reiciendis id maxime labore et rerum veritatis laudantium qui.\n\nEst non ratione blanditiis consequatur dicta ex laudantium voluptatem. Nihil et sit suscipit beatae eveniet ab animi.', NULL, NULL, 'Quas est architecto quaerat magni sunt. Doloribus itaque facilis iste consequatur. Et soluta qui voluptatem aliquam ipsa sapiente omnis. Cupiditate consectetur vero corporis quo voluptatem at consequuntur.', 'en_US');
INSERT INTO `sylius_product_translation` VALUES (146, 19, '111F patched jeans with fancy badges', '111f-patched-jeans-with-fancy-badges', 'Repudiandae fugiat est ad sed molestiae nisi. Occaecati distinctio voluptatibus est non. Nesciunt ea porro culpa quis officiis eligendi culpa. Labore repellat eveniet consequatur veritatis exercitationem.\n\nQuia consequatur eos velit nihil. Totam odio odio sed quia qui assumenda. Reiciendis id maxime labore et rerum veritatis laudantium qui.\n\nEst non ratione blanditiis consequatur dicta ex laudantium voluptatem. Nihil et sit suscipit beatae eveniet ab animi.', NULL, NULL, 'Quas est architecto quaerat magni sunt. Doloribus itaque facilis iste consequatur. Et soluta qui voluptatem aliquam ipsa sapiente omnis. Cupiditate consectetur vero corporis quo voluptatem at consequuntur.', 'de_DE');
INSERT INTO `sylius_product_translation` VALUES (147, 19, '111F patched jeans with fancy badges', '111f-patched-jeans-with-fancy-badges', 'Repudiandae fugiat est ad sed molestiae nisi. Occaecati distinctio voluptatibus est non. Nesciunt ea porro culpa quis officiis eligendi culpa. Labore repellat eveniet consequatur veritatis exercitationem.\n\nQuia consequatur eos velit nihil. Totam odio odio sed quia qui assumenda. Reiciendis id maxime labore et rerum veritatis laudantium qui.\n\nEst non ratione blanditiis consequatur dicta ex laudantium voluptatem. Nihil et sit suscipit beatae eveniet ab animi.', NULL, NULL, 'Quas est architecto quaerat magni sunt. Doloribus itaque facilis iste consequatur. Et soluta qui voluptatem aliquam ipsa sapiente omnis. Cupiditate consectetur vero corporis quo voluptatem at consequuntur.', 'fr_FR');
INSERT INTO `sylius_product_translation` VALUES (148, 19, '111F patched jeans with fancy badges', '111f-patched-jeans-with-fancy-badges', 'Repudiandae fugiat est ad sed molestiae nisi. Occaecati distinctio voluptatibus est non. Nesciunt ea porro culpa quis officiis eligendi culpa. Labore repellat eveniet consequatur veritatis exercitationem.\n\nQuia consequatur eos velit nihil. Totam odio odio sed quia qui assumenda. Reiciendis id maxime labore et rerum veritatis laudantium qui.\n\nEst non ratione blanditiis consequatur dicta ex laudantium voluptatem. Nihil et sit suscipit beatae eveniet ab animi.', NULL, NULL, 'Quas est architecto quaerat magni sunt. Doloribus itaque facilis iste consequatur. Et soluta qui voluptatem aliquam ipsa sapiente omnis. Cupiditate consectetur vero corporis quo voluptatem at consequuntur.', 'pl_PL');
INSERT INTO `sylius_product_translation` VALUES (149, 19, '111F patched jeans with fancy badges', '111f-patched-jeans-with-fancy-badges', 'Repudiandae fugiat est ad sed molestiae nisi. Occaecati distinctio voluptatibus est non. Nesciunt ea porro culpa quis officiis eligendi culpa. Labore repellat eveniet consequatur veritatis exercitationem.\n\nQuia consequatur eos velit nihil. Totam odio odio sed quia qui assumenda. Reiciendis id maxime labore et rerum veritatis laudantium qui.\n\nEst non ratione blanditiis consequatur dicta ex laudantium voluptatem. Nihil et sit suscipit beatae eveniet ab animi.', NULL, NULL, 'Quas est architecto quaerat magni sunt. Doloribus itaque facilis iste consequatur. Et soluta qui voluptatem aliquam ipsa sapiente omnis. Cupiditate consectetur vero corporis quo voluptatem at consequuntur.', 'es_ES');
INSERT INTO `sylius_product_translation` VALUES (150, 19, '111F patched jeans with fancy badges', '111f-patched-jeans-with-fancy-badges', 'Repudiandae fugiat est ad sed molestiae nisi. Occaecati distinctio voluptatibus est non. Nesciunt ea porro culpa quis officiis eligendi culpa. Labore repellat eveniet consequatur veritatis exercitationem.\n\nQuia consequatur eos velit nihil. Totam odio odio sed quia qui assumenda. Reiciendis id maxime labore et rerum veritatis laudantium qui.\n\nEst non ratione blanditiis consequatur dicta ex laudantium voluptatem. Nihil et sit suscipit beatae eveniet ab animi.', NULL, NULL, 'Quas est architecto quaerat magni sunt. Doloribus itaque facilis iste consequatur. Et soluta qui voluptatem aliquam ipsa sapiente omnis. Cupiditate consectetur vero corporis quo voluptatem at consequuntur.', 'es_MX');
INSERT INTO `sylius_product_translation` VALUES (151, 19, '111F patched jeans with fancy badges', '111f-patched-jeans-with-fancy-badges', 'Repudiandae fugiat est ad sed molestiae nisi. Occaecati distinctio voluptatibus est non. Nesciunt ea porro culpa quis officiis eligendi culpa. Labore repellat eveniet consequatur veritatis exercitationem.\n\nQuia consequatur eos velit nihil. Totam odio odio sed quia qui assumenda. Reiciendis id maxime labore et rerum veritatis laudantium qui.\n\nEst non ratione blanditiis consequatur dicta ex laudantium voluptatem. Nihil et sit suscipit beatae eveniet ab animi.', NULL, NULL, 'Quas est architecto quaerat magni sunt. Doloribus itaque facilis iste consequatur. Et soluta qui voluptatem aliquam ipsa sapiente omnis. Cupiditate consectetur vero corporis quo voluptatem at consequuntur.', 'pt_PT');
INSERT INTO `sylius_product_translation` VALUES (152, 19, '111F patched jeans with fancy badges', '111f-patched-jeans-with-fancy-badges', 'Repudiandae fugiat est ad sed molestiae nisi. Occaecati distinctio voluptatibus est non. Nesciunt ea porro culpa quis officiis eligendi culpa. Labore repellat eveniet consequatur veritatis exercitationem.\n\nQuia consequatur eos velit nihil. Totam odio odio sed quia qui assumenda. Reiciendis id maxime labore et rerum veritatis laudantium qui.\n\nEst non ratione blanditiis consequatur dicta ex laudantium voluptatem. Nihil et sit suscipit beatae eveniet ab animi.', NULL, NULL, 'Quas est architecto quaerat magni sunt. Doloribus itaque facilis iste consequatur. Et soluta qui voluptatem aliquam ipsa sapiente omnis. Cupiditate consectetur vero corporis quo voluptatem at consequuntur.', 'zh_CN');
INSERT INTO `sylius_product_translation` VALUES (153, 20, '000F office grey jeans', '000f-office-grey-jeans', 'Accusantium deserunt nesciunt voluptate voluptas explicabo ullam aperiam. Incidunt ipsum est blanditiis esse qui. Explicabo similique assumenda nulla quisquam a beatae autem. Ducimus asperiores autem atque iusto quibusdam.\n\nVeniam laudantium ipsum incidunt atque atque eos non. Iusto possimus pariatur laborum eum.\n\nAliquam molestiae enim quia ea necessitatibus consequatur. Sunt minus dolores magni omnis accusantium harum sit. Aliquam accusantium excepturi vel velit minus. Dicta rem consectetur labore fuga aspernatur natus et.', NULL, NULL, 'Omnis et numquam temporibus sequi porro sapiente assumenda. Qui consequatur nihil voluptas exercitationem. Id corporis explicabo omnis velit dignissimos qui qui. Nobis atque voluptatem ut modi id odit et.', 'en_US');
INSERT INTO `sylius_product_translation` VALUES (154, 20, '000F office grey jeans', '000f-office-grey-jeans', 'Accusantium deserunt nesciunt voluptate voluptas explicabo ullam aperiam. Incidunt ipsum est blanditiis esse qui. Explicabo similique assumenda nulla quisquam a beatae autem. Ducimus asperiores autem atque iusto quibusdam.\n\nVeniam laudantium ipsum incidunt atque atque eos non. Iusto possimus pariatur laborum eum.\n\nAliquam molestiae enim quia ea necessitatibus consequatur. Sunt minus dolores magni omnis accusantium harum sit. Aliquam accusantium excepturi vel velit minus. Dicta rem consectetur labore fuga aspernatur natus et.', NULL, NULL, 'Omnis et numquam temporibus sequi porro sapiente assumenda. Qui consequatur nihil voluptas exercitationem. Id corporis explicabo omnis velit dignissimos qui qui. Nobis atque voluptatem ut modi id odit et.', 'de_DE');
INSERT INTO `sylius_product_translation` VALUES (155, 20, '000F office grey jeans', '000f-office-grey-jeans', 'Accusantium deserunt nesciunt voluptate voluptas explicabo ullam aperiam. Incidunt ipsum est blanditiis esse qui. Explicabo similique assumenda nulla quisquam a beatae autem. Ducimus asperiores autem atque iusto quibusdam.\n\nVeniam laudantium ipsum incidunt atque atque eos non. Iusto possimus pariatur laborum eum.\n\nAliquam molestiae enim quia ea necessitatibus consequatur. Sunt minus dolores magni omnis accusantium harum sit. Aliquam accusantium excepturi vel velit minus. Dicta rem consectetur labore fuga aspernatur natus et.', NULL, NULL, 'Omnis et numquam temporibus sequi porro sapiente assumenda. Qui consequatur nihil voluptas exercitationem. Id corporis explicabo omnis velit dignissimos qui qui. Nobis atque voluptatem ut modi id odit et.', 'fr_FR');
INSERT INTO `sylius_product_translation` VALUES (156, 20, '000F office grey jeans', '000f-office-grey-jeans', 'Accusantium deserunt nesciunt voluptate voluptas explicabo ullam aperiam. Incidunt ipsum est blanditiis esse qui. Explicabo similique assumenda nulla quisquam a beatae autem. Ducimus asperiores autem atque iusto quibusdam.\n\nVeniam laudantium ipsum incidunt atque atque eos non. Iusto possimus pariatur laborum eum.\n\nAliquam molestiae enim quia ea necessitatibus consequatur. Sunt minus dolores magni omnis accusantium harum sit. Aliquam accusantium excepturi vel velit minus. Dicta rem consectetur labore fuga aspernatur natus et.', NULL, NULL, 'Omnis et numquam temporibus sequi porro sapiente assumenda. Qui consequatur nihil voluptas exercitationem. Id corporis explicabo omnis velit dignissimos qui qui. Nobis atque voluptatem ut modi id odit et.', 'pl_PL');
INSERT INTO `sylius_product_translation` VALUES (157, 20, '000F office grey jeans', '000f-office-grey-jeans', 'Accusantium deserunt nesciunt voluptate voluptas explicabo ullam aperiam. Incidunt ipsum est blanditiis esse qui. Explicabo similique assumenda nulla quisquam a beatae autem. Ducimus asperiores autem atque iusto quibusdam.\n\nVeniam laudantium ipsum incidunt atque atque eos non. Iusto possimus pariatur laborum eum.\n\nAliquam molestiae enim quia ea necessitatibus consequatur. Sunt minus dolores magni omnis accusantium harum sit. Aliquam accusantium excepturi vel velit minus. Dicta rem consectetur labore fuga aspernatur natus et.', NULL, NULL, 'Omnis et numquam temporibus sequi porro sapiente assumenda. Qui consequatur nihil voluptas exercitationem. Id corporis explicabo omnis velit dignissimos qui qui. Nobis atque voluptatem ut modi id odit et.', 'es_ES');
INSERT INTO `sylius_product_translation` VALUES (158, 20, '000F office grey jeans', '000f-office-grey-jeans', 'Accusantium deserunt nesciunt voluptate voluptas explicabo ullam aperiam. Incidunt ipsum est blanditiis esse qui. Explicabo similique assumenda nulla quisquam a beatae autem. Ducimus asperiores autem atque iusto quibusdam.\n\nVeniam laudantium ipsum incidunt atque atque eos non. Iusto possimus pariatur laborum eum.\n\nAliquam molestiae enim quia ea necessitatibus consequatur. Sunt minus dolores magni omnis accusantium harum sit. Aliquam accusantium excepturi vel velit minus. Dicta rem consectetur labore fuga aspernatur natus et.', NULL, NULL, 'Omnis et numquam temporibus sequi porro sapiente assumenda. Qui consequatur nihil voluptas exercitationem. Id corporis explicabo omnis velit dignissimos qui qui. Nobis atque voluptatem ut modi id odit et.', 'es_MX');
INSERT INTO `sylius_product_translation` VALUES (159, 20, '000F office grey jeans', '000f-office-grey-jeans', 'Accusantium deserunt nesciunt voluptate voluptas explicabo ullam aperiam. Incidunt ipsum est blanditiis esse qui. Explicabo similique assumenda nulla quisquam a beatae autem. Ducimus asperiores autem atque iusto quibusdam.\n\nVeniam laudantium ipsum incidunt atque atque eos non. Iusto possimus pariatur laborum eum.\n\nAliquam molestiae enim quia ea necessitatibus consequatur. Sunt minus dolores magni omnis accusantium harum sit. Aliquam accusantium excepturi vel velit minus. Dicta rem consectetur labore fuga aspernatur natus et.', NULL, NULL, 'Omnis et numquam temporibus sequi porro sapiente assumenda. Qui consequatur nihil voluptas exercitationem. Id corporis explicabo omnis velit dignissimos qui qui. Nobis atque voluptatem ut modi id odit et.', 'pt_PT');
INSERT INTO `sylius_product_translation` VALUES (160, 20, '000F office grey jeans', '000f-office-grey-jeans', 'Accusantium deserunt nesciunt voluptate voluptas explicabo ullam aperiam. Incidunt ipsum est blanditiis esse qui. Explicabo similique assumenda nulla quisquam a beatae autem. Ducimus asperiores autem atque iusto quibusdam.\n\nVeniam laudantium ipsum incidunt atque atque eos non. Iusto possimus pariatur laborum eum.\n\nAliquam molestiae enim quia ea necessitatibus consequatur. Sunt minus dolores magni omnis accusantium harum sit. Aliquam accusantium excepturi vel velit minus. Dicta rem consectetur labore fuga aspernatur natus et.', NULL, NULL, 'Omnis et numquam temporibus sequi porro sapiente assumenda. Qui consequatur nihil voluptas exercitationem. Id corporis explicabo omnis velit dignissimos qui qui. Nobis atque voluptatem ut modi id odit et.', 'zh_CN');
INSERT INTO `sylius_product_translation` VALUES (161, 21, '666F boyfriend jeans with rips', '666f-boyfriend-jeans-with-rips', 'Ex amet unde tenetur fuga. Voluptate quibusdam omnis ad voluptatum et. Ad libero rerum provident ipsa reiciendis. A ratione laborum rerum optio ad ex.\n\nEius praesentium quibusdam quis libero sapiente officia itaque. Laborum provident eius necessitatibus veniam accusantium et. Nulla esse fugiat pariatur in reprehenderit ea.\n\nEt sed quibusdam provident aliquam aut. Optio sit eveniet dolorem velit consequatur. Et sunt aut vel error porro ut et.', NULL, NULL, 'Saepe necessitatibus reprehenderit et occaecati consequuntur. Aut accusantium error tenetur architecto odio neque. Aliquam ea impedit quisquam maxime ipsum ullam. Nemo sed non reiciendis consequatur et officia qui.', 'en_US');
INSERT INTO `sylius_product_translation` VALUES (162, 21, '666F boyfriend jeans with rips', '666f-boyfriend-jeans-with-rips', 'Ex amet unde tenetur fuga. Voluptate quibusdam omnis ad voluptatum et. Ad libero rerum provident ipsa reiciendis. A ratione laborum rerum optio ad ex.\n\nEius praesentium quibusdam quis libero sapiente officia itaque. Laborum provident eius necessitatibus veniam accusantium et. Nulla esse fugiat pariatur in reprehenderit ea.\n\nEt sed quibusdam provident aliquam aut. Optio sit eveniet dolorem velit consequatur. Et sunt aut vel error porro ut et.', NULL, NULL, 'Saepe necessitatibus reprehenderit et occaecati consequuntur. Aut accusantium error tenetur architecto odio neque. Aliquam ea impedit quisquam maxime ipsum ullam. Nemo sed non reiciendis consequatur et officia qui.', 'de_DE');
INSERT INTO `sylius_product_translation` VALUES (163, 21, '666F boyfriend jeans with rips', '666f-boyfriend-jeans-with-rips', 'Ex amet unde tenetur fuga. Voluptate quibusdam omnis ad voluptatum et. Ad libero rerum provident ipsa reiciendis. A ratione laborum rerum optio ad ex.\n\nEius praesentium quibusdam quis libero sapiente officia itaque. Laborum provident eius necessitatibus veniam accusantium et. Nulla esse fugiat pariatur in reprehenderit ea.\n\nEt sed quibusdam provident aliquam aut. Optio sit eveniet dolorem velit consequatur. Et sunt aut vel error porro ut et.', NULL, NULL, 'Saepe necessitatibus reprehenderit et occaecati consequuntur. Aut accusantium error tenetur architecto odio neque. Aliquam ea impedit quisquam maxime ipsum ullam. Nemo sed non reiciendis consequatur et officia qui.', 'fr_FR');
INSERT INTO `sylius_product_translation` VALUES (164, 21, '666F boyfriend jeans with rips', '666f-boyfriend-jeans-with-rips', 'Ex amet unde tenetur fuga. Voluptate quibusdam omnis ad voluptatum et. Ad libero rerum provident ipsa reiciendis. A ratione laborum rerum optio ad ex.\n\nEius praesentium quibusdam quis libero sapiente officia itaque. Laborum provident eius necessitatibus veniam accusantium et. Nulla esse fugiat pariatur in reprehenderit ea.\n\nEt sed quibusdam provident aliquam aut. Optio sit eveniet dolorem velit consequatur. Et sunt aut vel error porro ut et.', NULL, NULL, 'Saepe necessitatibus reprehenderit et occaecati consequuntur. Aut accusantium error tenetur architecto odio neque. Aliquam ea impedit quisquam maxime ipsum ullam. Nemo sed non reiciendis consequatur et officia qui.', 'pl_PL');
INSERT INTO `sylius_product_translation` VALUES (165, 21, '666F boyfriend jeans with rips', '666f-boyfriend-jeans-with-rips', 'Ex amet unde tenetur fuga. Voluptate quibusdam omnis ad voluptatum et. Ad libero rerum provident ipsa reiciendis. A ratione laborum rerum optio ad ex.\n\nEius praesentium quibusdam quis libero sapiente officia itaque. Laborum provident eius necessitatibus veniam accusantium et. Nulla esse fugiat pariatur in reprehenderit ea.\n\nEt sed quibusdam provident aliquam aut. Optio sit eveniet dolorem velit consequatur. Et sunt aut vel error porro ut et.', NULL, NULL, 'Saepe necessitatibus reprehenderit et occaecati consequuntur. Aut accusantium error tenetur architecto odio neque. Aliquam ea impedit quisquam maxime ipsum ullam. Nemo sed non reiciendis consequatur et officia qui.', 'es_ES');
INSERT INTO `sylius_product_translation` VALUES (166, 21, '666F boyfriend jeans with rips', '666f-boyfriend-jeans-with-rips', 'Ex amet unde tenetur fuga. Voluptate quibusdam omnis ad voluptatum et. Ad libero rerum provident ipsa reiciendis. A ratione laborum rerum optio ad ex.\n\nEius praesentium quibusdam quis libero sapiente officia itaque. Laborum provident eius necessitatibus veniam accusantium et. Nulla esse fugiat pariatur in reprehenderit ea.\n\nEt sed quibusdam provident aliquam aut. Optio sit eveniet dolorem velit consequatur. Et sunt aut vel error porro ut et.', NULL, NULL, 'Saepe necessitatibus reprehenderit et occaecati consequuntur. Aut accusantium error tenetur architecto odio neque. Aliquam ea impedit quisquam maxime ipsum ullam. Nemo sed non reiciendis consequatur et officia qui.', 'es_MX');
INSERT INTO `sylius_product_translation` VALUES (167, 21, '666F boyfriend jeans with rips', '666f-boyfriend-jeans-with-rips', 'Ex amet unde tenetur fuga. Voluptate quibusdam omnis ad voluptatum et. Ad libero rerum provident ipsa reiciendis. A ratione laborum rerum optio ad ex.\n\nEius praesentium quibusdam quis libero sapiente officia itaque. Laborum provident eius necessitatibus veniam accusantium et. Nulla esse fugiat pariatur in reprehenderit ea.\n\nEt sed quibusdam provident aliquam aut. Optio sit eveniet dolorem velit consequatur. Et sunt aut vel error porro ut et.', NULL, NULL, 'Saepe necessitatibus reprehenderit et occaecati consequuntur. Aut accusantium error tenetur architecto odio neque. Aliquam ea impedit quisquam maxime ipsum ullam. Nemo sed non reiciendis consequatur et officia qui.', 'pt_PT');
INSERT INTO `sylius_product_translation` VALUES (168, 21, '666F boyfriend jeans with rips', '666f-boyfriend-jeans-with-rips', 'Ex amet unde tenetur fuga. Voluptate quibusdam omnis ad voluptatum et. Ad libero rerum provident ipsa reiciendis. A ratione laborum rerum optio ad ex.\n\nEius praesentium quibusdam quis libero sapiente officia itaque. Laborum provident eius necessitatibus veniam accusantium et. Nulla esse fugiat pariatur in reprehenderit ea.\n\nEt sed quibusdam provident aliquam aut. Optio sit eveniet dolorem velit consequatur. Et sunt aut vel error porro ut et.', NULL, NULL, 'Saepe necessitatibus reprehenderit et occaecati consequuntur. Aut accusantium error tenetur architecto odio neque. Aliquam ea impedit quisquam maxime ipsum ullam. Nemo sed non reiciendis consequatur et officia qui.', 'zh_CN');
COMMIT;

-- ----------------------------
-- Table structure for sylius_product_variant
-- ----------------------------
DROP TABLE IF EXISTS `sylius_product_variant`;
CREATE TABLE `sylius_product_variant` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `tax_category_id` int DEFAULT NULL,
  `shipping_category_id` int DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `on_hold` int NOT NULL,
  `on_hand` int NOT NULL,
  `tracked` tinyint(1) NOT NULL,
  `width` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `depth` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `position` int NOT NULL,
  `shipping_required` tinyint(1) NOT NULL,
  `version` int NOT NULL DEFAULT '1',
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_A29B52377153098` (`code`),
  KEY `IDX_A29B5234584665A` (`product_id`),
  KEY `IDX_A29B5239DF894ED` (`tax_category_id`),
  KEY `IDX_A29B5239E2D1A41` (`shipping_category_id`),
  CONSTRAINT `FK_A29B5234584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_A29B5239DF894ED` FOREIGN KEY (`tax_category_id`) REFERENCES `sylius_tax_category` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_A29B5239E2D1A41` FOREIGN KEY (`shipping_category_id`) REFERENCES `sylius_shipping_category` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_product_variant
-- ----------------------------
BEGIN;
INSERT INTO `sylius_product_variant` VALUES (1, 1, 1, NULL, 'Everyday_white_basic_T_Shirt-variant-0', '2020-12-18 17:25:14', '2020-12-18 17:25:14', 0, 5, 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (2, 1, 1, NULL, 'Everyday_white_basic_T_Shirt-variant-1', '2020-12-18 17:25:14', '2020-12-18 17:25:14', 0, 0, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (3, 1, 1, NULL, 'Everyday_white_basic_T_Shirt-variant-2', '2020-12-18 17:25:14', '2020-12-18 17:25:14', 0, 4, 0, NULL, NULL, NULL, NULL, 2, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (4, 1, 1, NULL, 'Everyday_white_basic_T_Shirt-variant-3', '2020-12-18 17:25:14', '2020-12-18 17:25:14', 0, 2, 0, NULL, NULL, NULL, NULL, 3, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (5, 1, 1, NULL, 'Everyday_white_basic_T_Shirt-variant-4', '2020-12-18 17:25:14', '2020-12-18 17:25:14', 0, 9, 0, NULL, NULL, NULL, NULL, 4, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (6, 2, 1, NULL, 'Loose_white_designer_T_Shirt-variant-0', '2020-12-18 17:25:14', '2020-12-18 17:25:14', 0, 5, 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (7, 2, 1, NULL, 'Loose_white_designer_T_Shirt-variant-1', '2020-12-18 17:25:14', '2020-12-18 17:25:14', 0, 2, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (8, 2, 1, NULL, 'Loose_white_designer_T_Shirt-variant-2', '2020-12-18 17:25:14', '2020-12-18 17:25:14', 0, 7, 0, NULL, NULL, NULL, NULL, 2, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (9, 2, 1, NULL, 'Loose_white_designer_T_Shirt-variant-3', '2020-12-18 17:25:14', '2020-12-18 17:25:14', 0, 0, 0, NULL, NULL, NULL, NULL, 3, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (10, 2, 1, NULL, 'Loose_white_designer_T_Shirt-variant-4', '2020-12-18 17:25:14', '2020-12-18 17:25:14', 0, 9, 0, NULL, NULL, NULL, NULL, 4, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (11, 3, 1, NULL, 'Ribbed_copper_slim_fit_Tee-variant-0', '2020-12-18 17:25:14', '2020-12-18 17:25:14', 0, 3, 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (12, 3, 1, NULL, 'Ribbed_copper_slim_fit_Tee-variant-1', '2020-12-18 17:25:14', '2020-12-18 17:25:14', 0, 7, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (13, 3, 1, NULL, 'Ribbed_copper_slim_fit_Tee-variant-2', '2020-12-18 17:25:14', '2020-12-18 17:25:14', 0, 4, 0, NULL, NULL, NULL, NULL, 2, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (14, 3, 1, NULL, 'Ribbed_copper_slim_fit_Tee-variant-3', '2020-12-18 17:25:14', '2020-12-18 17:25:14', 0, 3, 0, NULL, NULL, NULL, NULL, 3, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (15, 3, 1, NULL, 'Ribbed_copper_slim_fit_Tee-variant-4', '2020-12-18 17:25:14', '2020-12-18 17:25:14', 0, 2, 0, NULL, NULL, NULL, NULL, 4, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (16, 4, 1, NULL, 'Sport_basic_white_T_Shirt-variant-0', '2020-12-18 17:25:14', '2020-12-18 17:25:14', 0, 6, 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (17, 4, 1, NULL, 'Sport_basic_white_T_Shirt-variant-1', '2020-12-18 17:25:14', '2020-12-18 17:25:14', 0, 0, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (18, 4, 1, NULL, 'Sport_basic_white_T_Shirt-variant-2', '2020-12-18 17:25:14', '2020-12-18 17:25:14', 0, 2, 0, NULL, NULL, NULL, NULL, 2, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (19, 4, 1, NULL, 'Sport_basic_white_T_Shirt-variant-3', '2020-12-18 17:25:14', '2020-12-18 17:25:14', 0, 7, 0, NULL, NULL, NULL, NULL, 3, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (20, 4, 1, NULL, 'Sport_basic_white_T_Shirt-variant-4', '2020-12-18 17:25:14', '2020-12-18 17:25:14', 0, 7, 0, NULL, NULL, NULL, NULL, 4, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (21, 5, 1, NULL, 'Raglan_grey_&_black_Tee-variant-0', '2020-12-18 17:25:14', '2020-12-18 17:25:14', 0, 2, 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (22, 5, 1, NULL, 'Raglan_grey_&_black_Tee-variant-1', '2020-12-18 17:25:14', '2020-12-18 17:25:14', 0, 9, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (23, 5, 1, NULL, 'Raglan_grey_&_black_Tee-variant-2', '2020-12-18 17:25:14', '2020-12-18 17:25:14', 0, 2, 0, NULL, NULL, NULL, NULL, 2, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (24, 5, 1, NULL, 'Raglan_grey_&_black_Tee-variant-3', '2020-12-18 17:25:14', '2020-12-18 17:25:14', 0, 8, 0, NULL, NULL, NULL, NULL, 3, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (25, 5, 1, NULL, 'Raglan_grey_&_black_Tee-variant-4', '2020-12-18 17:25:14', '2020-12-18 17:25:14', 0, 4, 0, NULL, NULL, NULL, NULL, 4, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (26, 6, 1, NULL, 'Oversize_white_cotton_T_Shirt-variant-0', '2020-12-18 17:25:14', '2020-12-18 17:25:14', 0, 2, 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (27, 6, 1, NULL, 'Oversize_white_cotton_T_Shirt-variant-1', '2020-12-18 17:25:14', '2020-12-18 17:25:14', 0, 9, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (28, 6, 1, NULL, 'Oversize_white_cotton_T_Shirt-variant-2', '2020-12-18 17:25:14', '2020-12-18 17:25:14', 0, 5, 0, NULL, NULL, NULL, NULL, 2, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (29, 6, 1, NULL, 'Oversize_white_cotton_T_Shirt-variant-3', '2020-12-18 17:25:14', '2020-12-18 17:25:14', 0, 3, 0, NULL, NULL, NULL, NULL, 3, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (30, 6, 1, NULL, 'Oversize_white_cotton_T_Shirt-variant-4', '2020-12-18 17:25:14', '2020-12-18 17:25:14', 0, 8, 0, NULL, NULL, NULL, NULL, 4, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (31, 7, 2, NULL, 'Knitted_burgundy_winter_cap-variant-0', '2020-12-18 17:25:15', '2020-12-18 17:25:15', 0, 5, 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (32, 8, 2, NULL, 'Knitted_wool_blend_green_cap-variant-0', '2020-12-18 17:25:15', '2020-12-18 17:25:15', 0, 2, 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (33, 9, 2, NULL, 'Knitted_white_pompom_cap-variant-0', '2020-12-18 17:25:15', '2020-12-18 17:25:15', 0, 2, 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (34, 10, 2, NULL, 'Cashmere_blend_violet_beanie-variant-0', '2020-12-18 17:25:15', '2020-12-18 17:25:15', 0, 6, 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (35, 11, 1, NULL, 'Beige_strappy_summer_dress-variant-0', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 7, 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (36, 11, 1, NULL, 'Beige_strappy_summer_dress-variant-1', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 6, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (37, 11, 1, NULL, 'Beige_strappy_summer_dress-variant-2', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 0, 0, NULL, NULL, NULL, NULL, 2, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (38, 11, 1, NULL, 'Beige_strappy_summer_dress-variant-3', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 9, 0, NULL, NULL, NULL, NULL, 3, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (39, 11, 1, NULL, 'Beige_strappy_summer_dress-variant-4', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 9, 0, NULL, NULL, NULL, NULL, 4, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (40, 11, 1, NULL, 'Beige_strappy_summer_dress-variant-5', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 3, 0, NULL, NULL, NULL, NULL, 5, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (41, 11, 1, NULL, 'Beige_strappy_summer_dress-variant-6', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 7, 0, NULL, NULL, NULL, NULL, 6, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (42, 11, 1, NULL, 'Beige_strappy_summer_dress-variant-7', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 3, 0, NULL, NULL, NULL, NULL, 7, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (43, 11, 1, NULL, 'Beige_strappy_summer_dress-variant-8', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 0, 0, NULL, NULL, NULL, NULL, 8, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (44, 11, 1, NULL, 'Beige_strappy_summer_dress-variant-9', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 6, 0, NULL, NULL, NULL, NULL, 9, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (45, 11, 1, NULL, 'Beige_strappy_summer_dress-variant-10', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 9, 0, NULL, NULL, NULL, NULL, 10, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (46, 11, 1, NULL, 'Beige_strappy_summer_dress-variant-11', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 8, 0, NULL, NULL, NULL, NULL, 11, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (47, 11, 1, NULL, 'Beige_strappy_summer_dress-variant-12', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 8, 0, NULL, NULL, NULL, NULL, 12, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (48, 11, 1, NULL, 'Beige_strappy_summer_dress-variant-13', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 6, 0, NULL, NULL, NULL, NULL, 13, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (49, 11, 1, NULL, 'Beige_strappy_summer_dress-variant-14', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 7, 0, NULL, NULL, NULL, NULL, 14, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (50, 12, 1, NULL, 'Off_shoulder_boho_dress-variant-0', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 2, 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (51, 12, 1, NULL, 'Off_shoulder_boho_dress-variant-1', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 6, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (52, 12, 1, NULL, 'Off_shoulder_boho_dress-variant-2', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 0, 0, NULL, NULL, NULL, NULL, 2, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (53, 12, 1, NULL, 'Off_shoulder_boho_dress-variant-3', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 6, 0, NULL, NULL, NULL, NULL, 3, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (54, 12, 1, NULL, 'Off_shoulder_boho_dress-variant-4', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 2, 0, NULL, NULL, NULL, NULL, 4, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (55, 12, 1, NULL, 'Off_shoulder_boho_dress-variant-5', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 8, 0, NULL, NULL, NULL, NULL, 5, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (56, 12, 1, NULL, 'Off_shoulder_boho_dress-variant-6', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 6, 0, NULL, NULL, NULL, NULL, 6, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (57, 12, 1, NULL, 'Off_shoulder_boho_dress-variant-7', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 8, 0, NULL, NULL, NULL, NULL, 7, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (58, 12, 1, NULL, 'Off_shoulder_boho_dress-variant-8', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 9, 0, NULL, NULL, NULL, NULL, 8, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (59, 12, 1, NULL, 'Off_shoulder_boho_dress-variant-9', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 1, 0, NULL, NULL, NULL, NULL, 9, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (60, 12, 1, NULL, 'Off_shoulder_boho_dress-variant-10', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 0, 0, NULL, NULL, NULL, NULL, 10, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (61, 12, 1, NULL, 'Off_shoulder_boho_dress-variant-11', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 8, 0, NULL, NULL, NULL, NULL, 11, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (62, 12, 1, NULL, 'Off_shoulder_boho_dress-variant-12', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 2, 0, NULL, NULL, NULL, NULL, 12, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (63, 12, 1, NULL, 'Off_shoulder_boho_dress-variant-13', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 0, 0, NULL, NULL, NULL, NULL, 13, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (64, 12, 1, NULL, 'Off_shoulder_boho_dress-variant-14', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 7, 0, NULL, NULL, NULL, NULL, 14, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (65, 13, 1, NULL, 'Ruffle_wrap_festival_dress-variant-0', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 5, 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (66, 13, 1, NULL, 'Ruffle_wrap_festival_dress-variant-1', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 3, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (67, 13, 1, NULL, 'Ruffle_wrap_festival_dress-variant-2', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 0, 0, NULL, NULL, NULL, NULL, 2, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (68, 13, 1, NULL, 'Ruffle_wrap_festival_dress-variant-3', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 8, 0, NULL, NULL, NULL, NULL, 3, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (69, 13, 1, NULL, 'Ruffle_wrap_festival_dress-variant-4', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 0, 0, NULL, NULL, NULL, NULL, 4, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (70, 13, 1, NULL, 'Ruffle_wrap_festival_dress-variant-5', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 5, 0, NULL, NULL, NULL, NULL, 5, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (71, 13, 1, NULL, 'Ruffle_wrap_festival_dress-variant-6', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 6, 0, NULL, NULL, NULL, NULL, 6, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (72, 13, 1, NULL, 'Ruffle_wrap_festival_dress-variant-7', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 0, 0, NULL, NULL, NULL, NULL, 7, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (73, 13, 1, NULL, 'Ruffle_wrap_festival_dress-variant-8', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 5, 0, NULL, NULL, NULL, NULL, 8, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (74, 13, 1, NULL, 'Ruffle_wrap_festival_dress-variant-9', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 3, 0, NULL, NULL, NULL, NULL, 9, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (75, 13, 1, NULL, 'Ruffle_wrap_festival_dress-variant-10', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 0, 0, NULL, NULL, NULL, NULL, 10, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (76, 13, 1, NULL, 'Ruffle_wrap_festival_dress-variant-11', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 1, 0, NULL, NULL, NULL, NULL, 11, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (77, 13, 1, NULL, 'Ruffle_wrap_festival_dress-variant-12', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 4, 0, NULL, NULL, NULL, NULL, 12, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (78, 13, 1, NULL, 'Ruffle_wrap_festival_dress-variant-13', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 9, 0, NULL, NULL, NULL, NULL, 13, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (79, 13, 1, NULL, 'Ruffle_wrap_festival_dress-variant-14', '2020-12-18 17:25:16', '2020-12-18 17:25:16', 0, 7, 0, NULL, NULL, NULL, NULL, 14, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (80, 14, 1, NULL, '911M_regular_fit_jeans-variant-0', '2020-12-18 17:25:17', '2020-12-18 17:25:17', 0, 8, 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (81, 14, 1, NULL, '911M_regular_fit_jeans-variant-1', '2020-12-18 17:25:17', '2020-12-18 17:25:17', 0, 9, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (82, 14, 1, NULL, '911M_regular_fit_jeans-variant-2', '2020-12-18 17:25:17', '2020-12-18 17:25:17', 0, 6, 0, NULL, NULL, NULL, NULL, 2, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (83, 14, 1, NULL, '911M_regular_fit_jeans-variant-3', '2020-12-18 17:25:17', '2020-12-18 17:25:17', 0, 7, 0, NULL, NULL, NULL, NULL, 3, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (84, 14, 1, NULL, '911M_regular_fit_jeans-variant-4', '2020-12-18 17:25:17', '2020-12-18 17:25:17', 0, 4, 0, NULL, NULL, NULL, NULL, 4, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (85, 15, 1, NULL, '330M_slim_fit_jeans-variant-0', '2020-12-18 17:25:17', '2020-12-18 17:25:17', 0, 8, 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (86, 15, 1, NULL, '330M_slim_fit_jeans-variant-1', '2020-12-18 17:25:17', '2020-12-18 17:25:17', 0, 8, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (87, 15, 1, NULL, '330M_slim_fit_jeans-variant-2', '2020-12-18 17:25:17', '2020-12-18 17:25:17', 0, 2, 0, NULL, NULL, NULL, NULL, 2, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (88, 15, 1, NULL, '330M_slim_fit_jeans-variant-3', '2020-12-18 17:25:17', '2020-12-18 17:25:17', 0, 3, 0, NULL, NULL, NULL, NULL, 3, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (89, 15, 1, NULL, '330M_slim_fit_jeans-variant-4', '2020-12-18 17:25:17', '2020-12-18 17:25:17', 0, 1, 0, NULL, NULL, NULL, NULL, 4, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (90, 16, 1, NULL, '990M_regular_fit_jeans-variant-0', '2020-12-18 17:25:17', '2020-12-18 17:25:17', 0, 2, 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (91, 16, 1, NULL, '990M_regular_fit_jeans-variant-1', '2020-12-18 17:25:17', '2020-12-18 17:25:17', 0, 4, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (92, 16, 1, NULL, '990M_regular_fit_jeans-variant-2', '2020-12-18 17:25:17', '2020-12-18 17:25:17', 0, 0, 0, NULL, NULL, NULL, NULL, 2, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (93, 16, 1, NULL, '990M_regular_fit_jeans-variant-3', '2020-12-18 17:25:17', '2020-12-18 17:25:17', 0, 9, 0, NULL, NULL, NULL, NULL, 3, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (94, 16, 1, NULL, '990M_regular_fit_jeans-variant-4', '2020-12-18 17:25:17', '2020-12-18 17:25:17', 0, 4, 0, NULL, NULL, NULL, NULL, 4, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (95, 17, 1, NULL, '007M_black_elegance_jeans-variant-0', '2020-12-18 17:25:18', '2020-12-18 17:25:18', 0, 2, 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (96, 17, 1, NULL, '007M_black_elegance_jeans-variant-1', '2020-12-18 17:25:18', '2020-12-18 17:25:18', 0, 4, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (97, 17, 1, NULL, '007M_black_elegance_jeans-variant-2', '2020-12-18 17:25:18', '2020-12-18 17:25:18', 0, 9, 0, NULL, NULL, NULL, NULL, 2, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (98, 17, 1, NULL, '007M_black_elegance_jeans-variant-3', '2020-12-18 17:25:18', '2020-12-18 17:25:18', 0, 9, 0, NULL, NULL, NULL, NULL, 3, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (99, 17, 1, NULL, '007M_black_elegance_jeans-variant-4', '2020-12-18 17:25:18', '2020-12-18 17:25:18', 0, 4, 0, NULL, NULL, NULL, NULL, 4, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (100, 18, 1, NULL, '727F_patched_cropped_jeans-variant-0', '2020-12-18 17:25:18', '2020-12-18 17:25:18', 0, 9, 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (101, 18, 1, NULL, '727F_patched_cropped_jeans-variant-1', '2020-12-18 17:25:18', '2020-12-18 17:25:18', 0, 7, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (102, 18, 1, NULL, '727F_patched_cropped_jeans-variant-2', '2020-12-18 17:25:18', '2020-12-18 17:25:18', 0, 0, 0, NULL, NULL, NULL, NULL, 2, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (103, 18, 1, NULL, '727F_patched_cropped_jeans-variant-3', '2020-12-18 17:25:18', '2020-12-18 17:25:18', 0, 0, 0, NULL, NULL, NULL, NULL, 3, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (104, 18, 1, NULL, '727F_patched_cropped_jeans-variant-4', '2020-12-18 17:25:18', '2020-12-18 17:25:18', 0, 4, 0, NULL, NULL, NULL, NULL, 4, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (105, 19, 1, NULL, '111F_patched_jeans_with_fancy_badges-variant-0', '2020-12-18 17:25:18', '2020-12-18 17:25:18', 0, 3, 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (106, 19, 1, NULL, '111F_patched_jeans_with_fancy_badges-variant-1', '2020-12-18 17:25:18', '2020-12-18 17:25:18', 0, 1, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (107, 19, 1, NULL, '111F_patched_jeans_with_fancy_badges-variant-2', '2020-12-18 17:25:18', '2020-12-18 17:25:18', 0, 2, 0, NULL, NULL, NULL, NULL, 2, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (108, 19, 1, NULL, '111F_patched_jeans_with_fancy_badges-variant-3', '2020-12-18 17:25:18', '2020-12-18 17:25:18', 0, 5, 0, NULL, NULL, NULL, NULL, 3, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (109, 19, 1, NULL, '111F_patched_jeans_with_fancy_badges-variant-4', '2020-12-18 17:25:18', '2020-12-18 17:25:18', 0, 6, 0, NULL, NULL, NULL, NULL, 4, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (110, 20, 1, NULL, '000F_office_grey_jeans-variant-0', '2020-12-18 17:25:18', '2020-12-18 17:25:18', 0, 9, 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (111, 20, 1, NULL, '000F_office_grey_jeans-variant-1', '2020-12-18 17:25:18', '2020-12-18 17:25:18', 0, 6, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (112, 20, 1, NULL, '000F_office_grey_jeans-variant-2', '2020-12-18 17:25:18', '2020-12-18 17:25:18', 0, 3, 0, NULL, NULL, NULL, NULL, 2, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (113, 20, 1, NULL, '000F_office_grey_jeans-variant-3', '2020-12-18 17:25:18', '2020-12-18 17:25:18', 0, 2, 0, NULL, NULL, NULL, NULL, 3, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (114, 20, 1, NULL, '000F_office_grey_jeans-variant-4', '2020-12-18 17:25:18', '2020-12-18 17:25:18', 0, 9, 0, NULL, NULL, NULL, NULL, 4, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (115, 21, 1, NULL, '666F_boyfriend_jeans_with_rips-variant-0', '2020-12-18 17:25:18', '2020-12-18 17:25:18', 0, 1, 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (116, 21, 1, NULL, '666F_boyfriend_jeans_with_rips-variant-1', '2020-12-18 17:25:18', '2020-12-18 17:25:18', 0, 6, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (117, 21, 1, NULL, '666F_boyfriend_jeans_with_rips-variant-2', '2020-12-18 17:25:18', '2020-12-18 17:25:18', 0, 0, 0, NULL, NULL, NULL, NULL, 2, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (118, 21, 1, NULL, '666F_boyfriend_jeans_with_rips-variant-3', '2020-12-18 17:25:18', '2020-12-18 17:25:18', 0, 0, 0, NULL, NULL, NULL, NULL, 3, 1, 1, 1);
INSERT INTO `sylius_product_variant` VALUES (119, 21, 1, NULL, '666F_boyfriend_jeans_with_rips-variant-4', '2020-12-18 17:25:18', '2020-12-18 17:25:18', 0, 0, 0, NULL, NULL, NULL, NULL, 4, 1, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for sylius_product_variant_option_value
-- ----------------------------
DROP TABLE IF EXISTS `sylius_product_variant_option_value`;
CREATE TABLE `sylius_product_variant_option_value` (
  `variant_id` int NOT NULL,
  `option_value_id` int NOT NULL,
  PRIMARY KEY (`variant_id`,`option_value_id`),
  KEY `IDX_76CDAFA13B69A9AF` (`variant_id`),
  KEY `IDX_76CDAFA1D957CA06` (`option_value_id`),
  CONSTRAINT `FK_76CDAFA13B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_76CDAFA1D957CA06` FOREIGN KEY (`option_value_id`) REFERENCES `sylius_product_option_value` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_product_variant_option_value
-- ----------------------------
BEGIN;
INSERT INTO `sylius_product_variant_option_value` VALUES (1, 1);
INSERT INTO `sylius_product_variant_option_value` VALUES (2, 2);
INSERT INTO `sylius_product_variant_option_value` VALUES (3, 3);
INSERT INTO `sylius_product_variant_option_value` VALUES (4, 4);
INSERT INTO `sylius_product_variant_option_value` VALUES (5, 5);
INSERT INTO `sylius_product_variant_option_value` VALUES (6, 1);
INSERT INTO `sylius_product_variant_option_value` VALUES (7, 2);
INSERT INTO `sylius_product_variant_option_value` VALUES (8, 3);
INSERT INTO `sylius_product_variant_option_value` VALUES (9, 4);
INSERT INTO `sylius_product_variant_option_value` VALUES (10, 5);
INSERT INTO `sylius_product_variant_option_value` VALUES (11, 1);
INSERT INTO `sylius_product_variant_option_value` VALUES (12, 2);
INSERT INTO `sylius_product_variant_option_value` VALUES (13, 3);
INSERT INTO `sylius_product_variant_option_value` VALUES (14, 4);
INSERT INTO `sylius_product_variant_option_value` VALUES (15, 5);
INSERT INTO `sylius_product_variant_option_value` VALUES (16, 1);
INSERT INTO `sylius_product_variant_option_value` VALUES (17, 2);
INSERT INTO `sylius_product_variant_option_value` VALUES (18, 3);
INSERT INTO `sylius_product_variant_option_value` VALUES (19, 4);
INSERT INTO `sylius_product_variant_option_value` VALUES (20, 5);
INSERT INTO `sylius_product_variant_option_value` VALUES (21, 1);
INSERT INTO `sylius_product_variant_option_value` VALUES (22, 2);
INSERT INTO `sylius_product_variant_option_value` VALUES (23, 3);
INSERT INTO `sylius_product_variant_option_value` VALUES (24, 4);
INSERT INTO `sylius_product_variant_option_value` VALUES (25, 5);
INSERT INTO `sylius_product_variant_option_value` VALUES (26, 1);
INSERT INTO `sylius_product_variant_option_value` VALUES (27, 2);
INSERT INTO `sylius_product_variant_option_value` VALUES (28, 3);
INSERT INTO `sylius_product_variant_option_value` VALUES (29, 4);
INSERT INTO `sylius_product_variant_option_value` VALUES (30, 5);
INSERT INTO `sylius_product_variant_option_value` VALUES (35, 6);
INSERT INTO `sylius_product_variant_option_value` VALUES (35, 11);
INSERT INTO `sylius_product_variant_option_value` VALUES (36, 6);
INSERT INTO `sylius_product_variant_option_value` VALUES (36, 12);
INSERT INTO `sylius_product_variant_option_value` VALUES (37, 6);
INSERT INTO `sylius_product_variant_option_value` VALUES (37, 13);
INSERT INTO `sylius_product_variant_option_value` VALUES (38, 7);
INSERT INTO `sylius_product_variant_option_value` VALUES (38, 11);
INSERT INTO `sylius_product_variant_option_value` VALUES (39, 7);
INSERT INTO `sylius_product_variant_option_value` VALUES (39, 12);
INSERT INTO `sylius_product_variant_option_value` VALUES (40, 7);
INSERT INTO `sylius_product_variant_option_value` VALUES (40, 13);
INSERT INTO `sylius_product_variant_option_value` VALUES (41, 8);
INSERT INTO `sylius_product_variant_option_value` VALUES (41, 11);
INSERT INTO `sylius_product_variant_option_value` VALUES (42, 8);
INSERT INTO `sylius_product_variant_option_value` VALUES (42, 12);
INSERT INTO `sylius_product_variant_option_value` VALUES (43, 8);
INSERT INTO `sylius_product_variant_option_value` VALUES (43, 13);
INSERT INTO `sylius_product_variant_option_value` VALUES (44, 9);
INSERT INTO `sylius_product_variant_option_value` VALUES (44, 11);
INSERT INTO `sylius_product_variant_option_value` VALUES (45, 9);
INSERT INTO `sylius_product_variant_option_value` VALUES (45, 12);
INSERT INTO `sylius_product_variant_option_value` VALUES (46, 9);
INSERT INTO `sylius_product_variant_option_value` VALUES (46, 13);
INSERT INTO `sylius_product_variant_option_value` VALUES (47, 10);
INSERT INTO `sylius_product_variant_option_value` VALUES (47, 11);
INSERT INTO `sylius_product_variant_option_value` VALUES (48, 10);
INSERT INTO `sylius_product_variant_option_value` VALUES (48, 12);
INSERT INTO `sylius_product_variant_option_value` VALUES (49, 10);
INSERT INTO `sylius_product_variant_option_value` VALUES (49, 13);
INSERT INTO `sylius_product_variant_option_value` VALUES (50, 6);
INSERT INTO `sylius_product_variant_option_value` VALUES (50, 11);
INSERT INTO `sylius_product_variant_option_value` VALUES (51, 6);
INSERT INTO `sylius_product_variant_option_value` VALUES (51, 12);
INSERT INTO `sylius_product_variant_option_value` VALUES (52, 6);
INSERT INTO `sylius_product_variant_option_value` VALUES (52, 13);
INSERT INTO `sylius_product_variant_option_value` VALUES (53, 7);
INSERT INTO `sylius_product_variant_option_value` VALUES (53, 11);
INSERT INTO `sylius_product_variant_option_value` VALUES (54, 7);
INSERT INTO `sylius_product_variant_option_value` VALUES (54, 12);
INSERT INTO `sylius_product_variant_option_value` VALUES (55, 7);
INSERT INTO `sylius_product_variant_option_value` VALUES (55, 13);
INSERT INTO `sylius_product_variant_option_value` VALUES (56, 8);
INSERT INTO `sylius_product_variant_option_value` VALUES (56, 11);
INSERT INTO `sylius_product_variant_option_value` VALUES (57, 8);
INSERT INTO `sylius_product_variant_option_value` VALUES (57, 12);
INSERT INTO `sylius_product_variant_option_value` VALUES (58, 8);
INSERT INTO `sylius_product_variant_option_value` VALUES (58, 13);
INSERT INTO `sylius_product_variant_option_value` VALUES (59, 9);
INSERT INTO `sylius_product_variant_option_value` VALUES (59, 11);
INSERT INTO `sylius_product_variant_option_value` VALUES (60, 9);
INSERT INTO `sylius_product_variant_option_value` VALUES (60, 12);
INSERT INTO `sylius_product_variant_option_value` VALUES (61, 9);
INSERT INTO `sylius_product_variant_option_value` VALUES (61, 13);
INSERT INTO `sylius_product_variant_option_value` VALUES (62, 10);
INSERT INTO `sylius_product_variant_option_value` VALUES (62, 11);
INSERT INTO `sylius_product_variant_option_value` VALUES (63, 10);
INSERT INTO `sylius_product_variant_option_value` VALUES (63, 12);
INSERT INTO `sylius_product_variant_option_value` VALUES (64, 10);
INSERT INTO `sylius_product_variant_option_value` VALUES (64, 13);
INSERT INTO `sylius_product_variant_option_value` VALUES (65, 6);
INSERT INTO `sylius_product_variant_option_value` VALUES (65, 11);
INSERT INTO `sylius_product_variant_option_value` VALUES (66, 6);
INSERT INTO `sylius_product_variant_option_value` VALUES (66, 12);
INSERT INTO `sylius_product_variant_option_value` VALUES (67, 6);
INSERT INTO `sylius_product_variant_option_value` VALUES (67, 13);
INSERT INTO `sylius_product_variant_option_value` VALUES (68, 7);
INSERT INTO `sylius_product_variant_option_value` VALUES (68, 11);
INSERT INTO `sylius_product_variant_option_value` VALUES (69, 7);
INSERT INTO `sylius_product_variant_option_value` VALUES (69, 12);
INSERT INTO `sylius_product_variant_option_value` VALUES (70, 7);
INSERT INTO `sylius_product_variant_option_value` VALUES (70, 13);
INSERT INTO `sylius_product_variant_option_value` VALUES (71, 8);
INSERT INTO `sylius_product_variant_option_value` VALUES (71, 11);
INSERT INTO `sylius_product_variant_option_value` VALUES (72, 8);
INSERT INTO `sylius_product_variant_option_value` VALUES (72, 12);
INSERT INTO `sylius_product_variant_option_value` VALUES (73, 8);
INSERT INTO `sylius_product_variant_option_value` VALUES (73, 13);
INSERT INTO `sylius_product_variant_option_value` VALUES (74, 9);
INSERT INTO `sylius_product_variant_option_value` VALUES (74, 11);
INSERT INTO `sylius_product_variant_option_value` VALUES (75, 9);
INSERT INTO `sylius_product_variant_option_value` VALUES (75, 12);
INSERT INTO `sylius_product_variant_option_value` VALUES (76, 9);
INSERT INTO `sylius_product_variant_option_value` VALUES (76, 13);
INSERT INTO `sylius_product_variant_option_value` VALUES (77, 10);
INSERT INTO `sylius_product_variant_option_value` VALUES (77, 11);
INSERT INTO `sylius_product_variant_option_value` VALUES (78, 10);
INSERT INTO `sylius_product_variant_option_value` VALUES (78, 12);
INSERT INTO `sylius_product_variant_option_value` VALUES (79, 10);
INSERT INTO `sylius_product_variant_option_value` VALUES (79, 13);
INSERT INTO `sylius_product_variant_option_value` VALUES (80, 14);
INSERT INTO `sylius_product_variant_option_value` VALUES (81, 15);
INSERT INTO `sylius_product_variant_option_value` VALUES (82, 16);
INSERT INTO `sylius_product_variant_option_value` VALUES (83, 17);
INSERT INTO `sylius_product_variant_option_value` VALUES (84, 18);
INSERT INTO `sylius_product_variant_option_value` VALUES (85, 14);
INSERT INTO `sylius_product_variant_option_value` VALUES (86, 15);
INSERT INTO `sylius_product_variant_option_value` VALUES (87, 16);
INSERT INTO `sylius_product_variant_option_value` VALUES (88, 17);
INSERT INTO `sylius_product_variant_option_value` VALUES (89, 18);
INSERT INTO `sylius_product_variant_option_value` VALUES (90, 14);
INSERT INTO `sylius_product_variant_option_value` VALUES (91, 15);
INSERT INTO `sylius_product_variant_option_value` VALUES (92, 16);
INSERT INTO `sylius_product_variant_option_value` VALUES (93, 17);
INSERT INTO `sylius_product_variant_option_value` VALUES (94, 18);
INSERT INTO `sylius_product_variant_option_value` VALUES (95, 14);
INSERT INTO `sylius_product_variant_option_value` VALUES (96, 15);
INSERT INTO `sylius_product_variant_option_value` VALUES (97, 16);
INSERT INTO `sylius_product_variant_option_value` VALUES (98, 17);
INSERT INTO `sylius_product_variant_option_value` VALUES (99, 18);
INSERT INTO `sylius_product_variant_option_value` VALUES (100, 14);
INSERT INTO `sylius_product_variant_option_value` VALUES (101, 15);
INSERT INTO `sylius_product_variant_option_value` VALUES (102, 16);
INSERT INTO `sylius_product_variant_option_value` VALUES (103, 17);
INSERT INTO `sylius_product_variant_option_value` VALUES (104, 18);
INSERT INTO `sylius_product_variant_option_value` VALUES (105, 14);
INSERT INTO `sylius_product_variant_option_value` VALUES (106, 15);
INSERT INTO `sylius_product_variant_option_value` VALUES (107, 16);
INSERT INTO `sylius_product_variant_option_value` VALUES (108, 17);
INSERT INTO `sylius_product_variant_option_value` VALUES (109, 18);
INSERT INTO `sylius_product_variant_option_value` VALUES (110, 14);
INSERT INTO `sylius_product_variant_option_value` VALUES (111, 15);
INSERT INTO `sylius_product_variant_option_value` VALUES (112, 16);
INSERT INTO `sylius_product_variant_option_value` VALUES (113, 17);
INSERT INTO `sylius_product_variant_option_value` VALUES (114, 18);
INSERT INTO `sylius_product_variant_option_value` VALUES (115, 14);
INSERT INTO `sylius_product_variant_option_value` VALUES (116, 15);
INSERT INTO `sylius_product_variant_option_value` VALUES (117, 16);
INSERT INTO `sylius_product_variant_option_value` VALUES (118, 17);
INSERT INTO `sylius_product_variant_option_value` VALUES (119, 18);
COMMIT;

-- ----------------------------
-- Table structure for sylius_product_variant_translation
-- ----------------------------
DROP TABLE IF EXISTS `sylius_product_variant_translation`;
CREATE TABLE `sylius_product_variant_translation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `translatable_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_variant_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_8DC18EDC2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_8DC18EDC2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_product_variant_translation
-- ----------------------------
BEGIN;
INSERT INTO `sylius_product_variant_translation` VALUES (1, 1, 'S', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (2, 2, 'M', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (3, 3, 'L', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (4, 4, 'XL', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (5, 5, 'XXL', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (6, 6, 'S', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (7, 7, 'M', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (8, 8, 'L', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (9, 9, 'XL', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (10, 10, 'XXL', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (11, 11, 'S', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (12, 12, 'M', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (13, 13, 'L', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (14, 14, 'XL', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (15, 15, 'XXL', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (16, 16, 'S', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (17, 17, 'M', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (18, 18, 'L', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (19, 19, 'XL', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (20, 20, 'XXL', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (21, 21, 'S', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (22, 22, 'M', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (23, 23, 'L', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (24, 24, 'XL', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (25, 25, 'XXL', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (26, 26, 'S', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (27, 27, 'M', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (28, 28, 'L', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (29, 29, 'XL', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (30, 30, 'XXL', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (31, 31, '', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (32, 32, '', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (33, 33, '', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (34, 34, '', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (35, 35, 'S Petite', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (36, 36, 'S Regular', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (37, 37, 'S Tall', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (38, 38, 'M Petite', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (39, 39, 'M Regular', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (40, 40, 'M Tall', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (41, 41, 'L Petite', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (42, 42, 'L Regular', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (43, 43, 'L Tall', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (44, 44, 'XL Petite', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (45, 45, 'XL Regular', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (46, 46, 'XL Tall', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (47, 47, 'XXL Petite', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (48, 48, 'XXL Regular', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (49, 49, 'XXL Tall', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (50, 50, 'S Petite', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (51, 51, 'S Regular', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (52, 52, 'S Tall', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (53, 53, 'M Petite', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (54, 54, 'M Regular', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (55, 55, 'M Tall', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (56, 56, 'L Petite', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (57, 57, 'L Regular', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (58, 58, 'L Tall', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (59, 59, 'XL Petite', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (60, 60, 'XL Regular', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (61, 61, 'XL Tall', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (62, 62, 'XXL Petite', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (63, 63, 'XXL Regular', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (64, 64, 'XXL Tall', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (65, 65, 'S Petite', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (66, 66, 'S Regular', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (67, 67, 'S Tall', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (68, 68, 'M Petite', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (69, 69, 'M Regular', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (70, 70, 'M Tall', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (71, 71, 'L Petite', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (72, 72, 'L Regular', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (73, 73, 'L Tall', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (74, 74, 'XL Petite', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (75, 75, 'XL Regular', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (76, 76, 'XL Tall', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (77, 77, 'XXL Petite', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (78, 78, 'XXL Regular', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (79, 79, 'XXL Tall', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (80, 80, 'S', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (81, 81, 'M', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (82, 82, 'L', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (83, 83, 'XL', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (84, 84, 'XXL', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (85, 85, 'S', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (86, 86, 'M', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (87, 87, 'L', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (88, 88, 'XL', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (89, 89, 'XXL', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (90, 90, 'S', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (91, 91, 'M', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (92, 92, 'L', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (93, 93, 'XL', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (94, 94, 'XXL', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (95, 95, 'S', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (96, 96, 'M', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (97, 97, 'L', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (98, 98, 'XL', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (99, 99, 'XXL', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (100, 100, 'S', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (101, 101, 'M', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (102, 102, 'L', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (103, 103, 'XL', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (104, 104, 'XXL', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (105, 105, 'S', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (106, 106, 'M', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (107, 107, 'L', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (108, 108, 'XL', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (109, 109, 'XXL', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (110, 110, 'S', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (111, 111, 'M', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (112, 112, 'L', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (113, 113, 'XL', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (114, 114, 'XXL', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (115, 115, 'S', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (116, 116, 'M', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (117, 117, 'L', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (118, 118, 'XL', 'en_US');
INSERT INTO `sylius_product_variant_translation` VALUES (119, 119, 'XXL', 'en_US');
COMMIT;

-- ----------------------------
-- Table structure for sylius_promotion
-- ----------------------------
DROP TABLE IF EXISTS `sylius_promotion`;
CREATE TABLE `sylius_promotion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority` int NOT NULL,
  `exclusive` tinyint(1) NOT NULL,
  `usage_limit` int DEFAULT NULL,
  `used` int NOT NULL,
  `coupon_based` tinyint(1) NOT NULL,
  `starts_at` datetime DEFAULT NULL,
  `ends_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F157396377153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_promotion
-- ----------------------------
BEGIN;
INSERT INTO `sylius_promotion` VALUES (1, 'christmas', 'Christmas', 'Omnis voluptate aspernatur aspernatur dolorem voluptatibus.', 0, 1, NULL, 0, 1, NULL, NULL, '2020-12-18 17:25:13', '2020-12-18 17:25:13');
INSERT INTO `sylius_promotion` VALUES (2, 'new_year', 'New Year', 'Omnis voluptate aspernatur aspernatur dolorem voluptatibus.', 2, 1, 10, 10, 0, '2020-12-11 17:25:13', '2020-12-25 17:25:13', '2020-12-18 17:25:13', '2020-12-18 17:25:24');
COMMIT;

-- ----------------------------
-- Table structure for sylius_promotion_action
-- ----------------------------
DROP TABLE IF EXISTS `sylius_promotion_action`;
CREATE TABLE `sylius_promotion_action` (
  `id` int NOT NULL AUTO_INCREMENT,
  `promotion_id` int DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_933D0915139DF194` (`promotion_id`),
  CONSTRAINT `FK_933D0915139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_promotion_action
-- ----------------------------
BEGIN;
INSERT INTO `sylius_promotion_action` VALUES (1, 1, 'order_percentage_discount', 'a:1:{s:10:\"percentage\";d:0.28;}');
INSERT INTO `sylius_promotion_action` VALUES (2, 2, 'order_fixed_discount', 'a:1:{s:11:\"FASHION_WEB\";a:1:{s:6:\"amount\";i:1000;}}');
COMMIT;

-- ----------------------------
-- Table structure for sylius_promotion_channels
-- ----------------------------
DROP TABLE IF EXISTS `sylius_promotion_channels`;
CREATE TABLE `sylius_promotion_channels` (
  `promotion_id` int NOT NULL,
  `channel_id` int NOT NULL,
  PRIMARY KEY (`promotion_id`,`channel_id`),
  KEY `IDX_1A044F64139DF194` (`promotion_id`),
  KEY `IDX_1A044F6472F5A1AA` (`channel_id`),
  CONSTRAINT `FK_1A044F64139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_1A044F6472F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_promotion_channels
-- ----------------------------
BEGIN;
INSERT INTO `sylius_promotion_channels` VALUES (1, 1);
INSERT INTO `sylius_promotion_channels` VALUES (2, 1);
COMMIT;

-- ----------------------------
-- Table structure for sylius_promotion_coupon
-- ----------------------------
DROP TABLE IF EXISTS `sylius_promotion_coupon`;
CREATE TABLE `sylius_promotion_coupon` (
  `id` int NOT NULL AUTO_INCREMENT,
  `promotion_id` int DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `usage_limit` int DEFAULT NULL,
  `used` int NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `per_customer_usage_limit` int DEFAULT NULL,
  `reusable_from_cancelled_orders` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B04EBA8577153098` (`code`),
  KEY `IDX_B04EBA85139DF194` (`promotion_id`),
  CONSTRAINT `FK_B04EBA85139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_promotion_coupon
-- ----------------------------
BEGIN;
INSERT INTO `sylius_promotion_coupon` VALUES (1, 1, 'CHRISTMAS_SALE', 10, 0, '2020-12-24 00:00:00', '2020-12-18 17:25:13', '2020-12-18 17:25:13', 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for sylius_promotion_order
-- ----------------------------
DROP TABLE IF EXISTS `sylius_promotion_order`;
CREATE TABLE `sylius_promotion_order` (
  `order_id` int NOT NULL,
  `promotion_id` int NOT NULL,
  PRIMARY KEY (`order_id`,`promotion_id`),
  KEY `IDX_BF9CF6FB8D9F6D38` (`order_id`),
  KEY `IDX_BF9CF6FB139DF194` (`promotion_id`),
  CONSTRAINT `FK_BF9CF6FB139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`),
  CONSTRAINT `FK_BF9CF6FB8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_promotion_order
-- ----------------------------
BEGIN;
INSERT INTO `sylius_promotion_order` VALUES (1, 2);
INSERT INTO `sylius_promotion_order` VALUES (4, 2);
INSERT INTO `sylius_promotion_order` VALUES (5, 2);
INSERT INTO `sylius_promotion_order` VALUES (6, 2);
INSERT INTO `sylius_promotion_order` VALUES (7, 2);
INSERT INTO `sylius_promotion_order` VALUES (8, 2);
INSERT INTO `sylius_promotion_order` VALUES (9, 2);
INSERT INTO `sylius_promotion_order` VALUES (10, 2);
INSERT INTO `sylius_promotion_order` VALUES (12, 2);
INSERT INTO `sylius_promotion_order` VALUES (13, 2);
COMMIT;

-- ----------------------------
-- Table structure for sylius_promotion_rule
-- ----------------------------
DROP TABLE IF EXISTS `sylius_promotion_rule`;
CREATE TABLE `sylius_promotion_rule` (
  `id` int NOT NULL AUTO_INCREMENT,
  `promotion_id` int DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_2C188EA8139DF194` (`promotion_id`),
  CONSTRAINT `FK_2C188EA8139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_promotion_rule
-- ----------------------------
BEGIN;
INSERT INTO `sylius_promotion_rule` VALUES (1, 1, 'cart_quantity', 'a:1:{s:5:\"count\";i:7;}');
INSERT INTO `sylius_promotion_rule` VALUES (2, 2, 'item_total', 'a:1:{s:11:\"FASHION_WEB\";a:1:{s:6:\"amount\";i:10000;}}');
COMMIT;

-- ----------------------------
-- Table structure for sylius_province
-- ----------------------------
DROP TABLE IF EXISTS `sylius_province`;
CREATE TABLE `sylius_province` (
  `id` int NOT NULL AUTO_INCREMENT,
  `country_id` int NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `abbreviation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B5618FE477153098` (`code`),
  UNIQUE KEY `UNIQ_B5618FE4F92F3E705E237E06` (`country_id`,`name`),
  KEY `IDX_B5618FE4F92F3E70` (`country_id`),
  CONSTRAINT `FK_B5618FE4F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `sylius_country` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_province
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sylius_shipment
-- ----------------------------
DROP TABLE IF EXISTS `sylius_shipment`;
CREATE TABLE `sylius_shipment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `method_id` int NOT NULL,
  `order_id` int NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tracking` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `shipped_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FD707B3319883967` (`method_id`),
  KEY `IDX_FD707B338D9F6D38` (`order_id`),
  CONSTRAINT `FK_FD707B3319883967` FOREIGN KEY (`method_id`) REFERENCES `sylius_shipping_method` (`id`),
  CONSTRAINT `FK_FD707B338D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_shipment
-- ----------------------------
BEGIN;
INSERT INTO `sylius_shipment` VALUES (1, 1, 1, 'shipped', NULL, '2020-01-30 09:08:29', '2020-12-18 17:25:21', '2020-12-18 17:25:21');
INSERT INTO `sylius_shipment` VALUES (2, 1, 2, 'shipped', NULL, '2020-02-03 12:25:24', '2020-12-18 17:25:22', '2020-12-18 17:25:21');
INSERT INTO `sylius_shipment` VALUES (3, 1, 3, 'shipped', NULL, '2020-02-15 17:28:20', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_shipment` VALUES (4, 1, 4, 'shipped', NULL, '2020-03-23 14:45:19', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_shipment` VALUES (5, 1, 5, 'shipped', NULL, '2020-05-10 10:19:19', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_shipment` VALUES (6, 1, 6, 'shipped', NULL, '2020-07-21 17:26:11', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_shipment` VALUES (7, 1, 7, 'shipped', NULL, '2020-08-15 12:31:10', '2020-12-18 17:25:22', '2020-12-18 17:25:22');
INSERT INTO `sylius_shipment` VALUES (8, 1, 8, 'shipped', NULL, '2020-09-12 23:51:27', '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_shipment` VALUES (9, 1, 9, 'shipped', NULL, '2020-10-18 09:43:03', '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_shipment` VALUES (10, 1, 10, 'shipped', NULL, '2020-10-29 02:15:07', '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_shipment` VALUES (11, 1, 11, 'shipped', NULL, '2020-12-14 09:49:34', '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_shipment` VALUES (12, 1, 12, 'shipped', NULL, '2020-12-17 20:59:14', '2020-12-18 17:25:23', '2020-12-18 17:25:23');
INSERT INTO `sylius_shipment` VALUES (13, 1, 13, 'ready', NULL, '2020-02-17 09:50:16', '2020-12-18 17:25:24', NULL);
INSERT INTO `sylius_shipment` VALUES (14, 1, 14, 'ready', NULL, '2020-04-27 06:59:48', '2020-12-18 17:25:24', NULL);
INSERT INTO `sylius_shipment` VALUES (15, 1, 15, 'ready', NULL, '2020-06-26 11:42:14', '2020-12-18 17:25:24', NULL);
INSERT INTO `sylius_shipment` VALUES (16, 1, 16, 'ready', NULL, '2020-09-07 06:44:52', '2020-12-18 17:25:25', NULL);
INSERT INTO `sylius_shipment` VALUES (17, 1, 17, 'ready', NULL, '2020-10-10 05:27:25', '2020-12-18 17:25:25', NULL);
INSERT INTO `sylius_shipment` VALUES (18, 1, 18, 'ready', NULL, '2020-11-20 08:38:27', '2020-12-18 17:25:25', NULL);
INSERT INTO `sylius_shipment` VALUES (19, 1, 19, 'ready', NULL, '2020-11-23 10:28:50', '2020-12-18 17:25:25', NULL);
INSERT INTO `sylius_shipment` VALUES (20, 1, 20, 'ready', NULL, '2020-12-05 00:48:45', '2020-12-18 17:25:25', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sylius_shipping_category
-- ----------------------------
DROP TABLE IF EXISTS `sylius_shipping_category`;
CREATE TABLE `sylius_shipping_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B1D6465277153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_shipping_category
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sylius_shipping_method
-- ----------------------------
DROP TABLE IF EXISTS `sylius_shipping_method`;
CREATE TABLE `sylius_shipping_method` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int DEFAULT NULL,
  `zone_id` int NOT NULL,
  `tax_category_id` int DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `category_requirement` int NOT NULL,
  `calculator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `position` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `archived_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_5FB0EE1177153098` (`code`),
  KEY `IDX_5FB0EE1112469DE2` (`category_id`),
  KEY `IDX_5FB0EE119F2C3FAB` (`zone_id`),
  KEY `IDX_5FB0EE119DF894ED` (`tax_category_id`),
  CONSTRAINT `FK_5FB0EE1112469DE2` FOREIGN KEY (`category_id`) REFERENCES `sylius_shipping_category` (`id`),
  CONSTRAINT `FK_5FB0EE119DF894ED` FOREIGN KEY (`tax_category_id`) REFERENCES `sylius_tax_category` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_5FB0EE119F2C3FAB` FOREIGN KEY (`zone_id`) REFERENCES `sylius_zone` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_shipping_method
-- ----------------------------
BEGIN;
INSERT INTO `sylius_shipping_method` VALUES (1, NULL, 2, NULL, 'ups', 'a:1:{s:11:\"FASHION_WEB\";a:1:{s:6:\"amount\";i:736;}}', 1, 'flat_rate', 1, 0, '2020-12-18 17:25:09', '2020-12-18 17:25:09', NULL);
INSERT INTO `sylius_shipping_method` VALUES (2, NULL, 1, NULL, 'dhl_express', 'a:1:{s:11:\"FASHION_WEB\";a:1:{s:6:\"amount\";i:560;}}', 1, 'flat_rate', 1, 1, '2020-12-18 17:25:09', '2020-12-18 17:25:09', NULL);
INSERT INTO `sylius_shipping_method` VALUES (3, NULL, 2, NULL, 'fedex', 'a:1:{s:11:\"FASHION_WEB\";a:1:{s:6:\"amount\";i:398;}}', 1, 'flat_rate', 0, 2, '2020-12-18 17:25:09', '2020-12-18 17:25:09', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sylius_shipping_method_channels
-- ----------------------------
DROP TABLE IF EXISTS `sylius_shipping_method_channels`;
CREATE TABLE `sylius_shipping_method_channels` (
  `shipping_method_id` int NOT NULL,
  `channel_id` int NOT NULL,
  PRIMARY KEY (`shipping_method_id`,`channel_id`),
  KEY `IDX_2D9833355F7D6850` (`shipping_method_id`),
  KEY `IDX_2D98333572F5A1AA` (`channel_id`),
  CONSTRAINT `FK_2D9833355F7D6850` FOREIGN KEY (`shipping_method_id`) REFERENCES `sylius_shipping_method` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_2D98333572F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_shipping_method_channels
-- ----------------------------
BEGIN;
INSERT INTO `sylius_shipping_method_channels` VALUES (1, 1);
INSERT INTO `sylius_shipping_method_channels` VALUES (2, 1);
INSERT INTO `sylius_shipping_method_channels` VALUES (3, 1);
COMMIT;

-- ----------------------------
-- Table structure for sylius_shipping_method_rule
-- ----------------------------
DROP TABLE IF EXISTS `sylius_shipping_method_rule`;
CREATE TABLE `sylius_shipping_method_rule` (
  `id` int NOT NULL AUTO_INCREMENT,
  `shipping_method_id` int DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_88A0EB655F7D6850` (`shipping_method_id`),
  CONSTRAINT `FK_88A0EB655F7D6850` FOREIGN KEY (`shipping_method_id`) REFERENCES `sylius_shipping_method` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_shipping_method_rule
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sylius_shipping_method_translation
-- ----------------------------
DROP TABLE IF EXISTS `sylius_shipping_method_translation`;
CREATE TABLE `sylius_shipping_method_translation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `translatable_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_shipping_method_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_2B37DB3D2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_2B37DB3D2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_shipping_method` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_shipping_method_translation
-- ----------------------------
BEGIN;
INSERT INTO `sylius_shipping_method_translation` VALUES (1, 1, 'UPS', 'Praesentium consectetur aut reiciendis dolor omnis.', 'en_US');
INSERT INTO `sylius_shipping_method_translation` VALUES (2, 1, 'UPS', 'Praesentium consectetur aut reiciendis dolor omnis.', 'de_DE');
INSERT INTO `sylius_shipping_method_translation` VALUES (3, 1, 'UPS', 'Praesentium consectetur aut reiciendis dolor omnis.', 'fr_FR');
INSERT INTO `sylius_shipping_method_translation` VALUES (4, 1, 'UPS', 'Praesentium consectetur aut reiciendis dolor omnis.', 'pl_PL');
INSERT INTO `sylius_shipping_method_translation` VALUES (5, 1, 'UPS', 'Praesentium consectetur aut reiciendis dolor omnis.', 'es_ES');
INSERT INTO `sylius_shipping_method_translation` VALUES (6, 1, 'UPS', 'Praesentium consectetur aut reiciendis dolor omnis.', 'es_MX');
INSERT INTO `sylius_shipping_method_translation` VALUES (7, 1, 'UPS', 'Praesentium consectetur aut reiciendis dolor omnis.', 'pt_PT');
INSERT INTO `sylius_shipping_method_translation` VALUES (8, 1, 'UPS', 'Praesentium consectetur aut reiciendis dolor omnis.', 'zh_CN');
INSERT INTO `sylius_shipping_method_translation` VALUES (9, 2, 'DHL Express', 'Doloremque laudantium eveniet recusandae.', 'en_US');
INSERT INTO `sylius_shipping_method_translation` VALUES (10, 2, 'DHL Express', 'Doloremque laudantium eveniet recusandae.', 'de_DE');
INSERT INTO `sylius_shipping_method_translation` VALUES (11, 2, 'DHL Express', 'Doloremque laudantium eveniet recusandae.', 'fr_FR');
INSERT INTO `sylius_shipping_method_translation` VALUES (12, 2, 'DHL Express', 'Doloremque laudantium eveniet recusandae.', 'pl_PL');
INSERT INTO `sylius_shipping_method_translation` VALUES (13, 2, 'DHL Express', 'Doloremque laudantium eveniet recusandae.', 'es_ES');
INSERT INTO `sylius_shipping_method_translation` VALUES (14, 2, 'DHL Express', 'Doloremque laudantium eveniet recusandae.', 'es_MX');
INSERT INTO `sylius_shipping_method_translation` VALUES (15, 2, 'DHL Express', 'Doloremque laudantium eveniet recusandae.', 'pt_PT');
INSERT INTO `sylius_shipping_method_translation` VALUES (16, 2, 'DHL Express', 'Doloremque laudantium eveniet recusandae.', 'zh_CN');
INSERT INTO `sylius_shipping_method_translation` VALUES (17, 3, 'FedEx', 'Ipsam repellat consequatur laudantium explicabo.', 'en_US');
INSERT INTO `sylius_shipping_method_translation` VALUES (18, 3, 'FedEx', 'Ipsam repellat consequatur laudantium explicabo.', 'de_DE');
INSERT INTO `sylius_shipping_method_translation` VALUES (19, 3, 'FedEx', 'Ipsam repellat consequatur laudantium explicabo.', 'fr_FR');
INSERT INTO `sylius_shipping_method_translation` VALUES (20, 3, 'FedEx', 'Ipsam repellat consequatur laudantium explicabo.', 'pl_PL');
INSERT INTO `sylius_shipping_method_translation` VALUES (21, 3, 'FedEx', 'Ipsam repellat consequatur laudantium explicabo.', 'es_ES');
INSERT INTO `sylius_shipping_method_translation` VALUES (22, 3, 'FedEx', 'Ipsam repellat consequatur laudantium explicabo.', 'es_MX');
INSERT INTO `sylius_shipping_method_translation` VALUES (23, 3, 'FedEx', 'Ipsam repellat consequatur laudantium explicabo.', 'pt_PT');
INSERT INTO `sylius_shipping_method_translation` VALUES (24, 3, 'FedEx', 'Ipsam repellat consequatur laudantium explicabo.', 'zh_CN');
COMMIT;

-- ----------------------------
-- Table structure for sylius_shop_billing_data
-- ----------------------------
DROP TABLE IF EXISTS `sylius_shop_billing_data`;
CREATE TABLE `sylius_shop_billing_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_shop_billing_data
-- ----------------------------
BEGIN;
INSERT INTO `sylius_shop_billing_data` VALUES (1, 'Sylius', '0001112222', 'US', 'Test St. 15', 'eCommerce Town', '00 33 22');
COMMIT;

-- ----------------------------
-- Table structure for sylius_shop_user
-- ----------------------------
DROP TABLE IF EXISTS `sylius_shop_user`;
CREATE TABLE `sylius_shop_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `email_verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `encoder_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7C2B74809395C3F3` (`customer_id`),
  CONSTRAINT `FK_7C2B74809395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_shop_user
-- ----------------------------
BEGIN;
INSERT INTO `sylius_shop_user` VALUES (1, 1, 'shop@example.com', 'shop@example.com', 1, '4xv109nfrz8k4c8kgw80skco4s4cgko', '$argon2i$v=19$m=65536,t=4,p=1$bVdiOEF3N0xLMkZQWVE2OQ$D/aCdwa54CLcWaoyaKTLnWjVq7q01cnxfjj3mboZIw4', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2020-12-18 17:25:09', '2020-12-18 17:25:09', 'argon2i');
INSERT INTO `sylius_shop_user` VALUES (2, 2, 'nkunde@hotmail.com', 'nkunde@hotmail.com', 1, 'lagzc06djq8g0kwg4og8oooow48skcs', '$argon2i$v=19$m=65536,t=4,p=1$SWJCRVozNXBrOGZSd0l4bg$9H8ropv098+uZmJIghVYbqMDGqyouGWihaQOSIkj3SI', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2020-12-18 17:25:09', '2020-12-18 17:25:09', 'argon2i');
INSERT INTO `sylius_shop_user` VALUES (3, 3, 'ola.casper@gmail.com', 'ola.casper@gmail.com', 1, 'j1qwjdwhm8occ8k80g00884kk08w8s0', '$argon2i$v=19$m=65536,t=4,p=1$VHNKSTN3dFBRRDFkc0pCSA$qJmuaqM4GOW82kDu23dQGCfAEe/5fWMjl5O790a1BsE', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2020-12-18 17:25:09', '2020-12-18 17:25:09', 'argon2i');
INSERT INTO `sylius_shop_user` VALUES (4, 4, 'leffler.clara@yahoo.com', 'leffler.clara@yahoo.com', 1, 's7m0r8p69c0ww44wggkws0og408kggo', '$argon2i$v=19$m=65536,t=4,p=1$TmwzcVV0NS51L21BWHhHaw$EOBcatyLZyz2U12XeQ/26hmE5JajnMceUu0wCR4MlCM', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2020-12-18 17:25:10', '2020-12-18 17:25:10', 'argon2i');
INSERT INTO `sylius_shop_user` VALUES (5, 5, 'egibson@yahoo.com', 'egibson@yahoo.com', 1, 'cjaokkgnq7ks0woo84o8c0osg0ok0ck', '$argon2i$v=19$m=65536,t=4,p=1$YnRnelZGYjZHc1k4Y0RIOA$5nmJLxIE7vqZF4pCZ005uaHD8KdlTwhyYGdLSbI/UjE', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2020-12-18 17:25:10', '2020-12-18 17:25:10', 'argon2i');
INSERT INTO `sylius_shop_user` VALUES (6, 6, 'aschulist@hotmail.com', 'aschulist@hotmail.com', 1, 'govw1igaqb4sccokcogw8w4c48ogc4c', '$argon2i$v=19$m=65536,t=4,p=1$cXZWSk9RTkhnbVpmcTdUUg$CHRFxDbUcpl4UyFgxAicxS2a1FDdnX0o9jGHH5OqvOQ', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2020-12-18 17:25:10', '2020-12-18 17:25:10', 'argon2i');
INSERT INTO `sylius_shop_user` VALUES (7, 7, 'kassandra03@glover.com', 'kassandra03@glover.com', 1, '3n1874y8bjy848gso8kgkgwsg4w48kg', '$argon2i$v=19$m=65536,t=4,p=1$S29uLi9PSWNsV3hJN3ZkaA$NBsLi4uuEw/LXV6rz8I7G267SK0M2nFb1Pth66YAR58', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2020-12-18 17:25:10', '2020-12-18 17:25:10', 'argon2i');
INSERT INTO `sylius_shop_user` VALUES (8, 8, 'kbashirian@raynor.com', 'kbashirian@raynor.com', 1, 'h8531f5g9u88c44ko8osk4ogcsgs48g', '$argon2i$v=19$m=65536,t=4,p=1$LmtML1ZSZURINmVmMXlrUg$+Mgz+00AJ+CpKNA9mF5k0wGEhFBh/q8RZHZI3NV0znI', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2020-12-18 17:25:10', '2020-12-18 17:25:10', 'argon2i');
INSERT INTO `sylius_shop_user` VALUES (9, 9, 'hallie19@hotmail.com', 'hallie19@hotmail.com', 1, '141xf7kpeug0o0g4ggkwg0kgscswo0g', '$argon2i$v=19$m=65536,t=4,p=1$WjhDSi9Wb1k2eHQ0bTR5dA$cy9rLqIHHsAbYF5wB3ZqcrfLJuEI5DRXLSGzBcxSXLA', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2020-12-18 17:25:10', '2020-12-18 17:25:10', 'argon2i');
INSERT INTO `sylius_shop_user` VALUES (10, 10, 'dorothea.legros@carroll.com', 'dorothea.legros@carroll.com', 1, '53bt9624zfwog0kw8c00gkwcks88c08', '$argon2i$v=19$m=65536,t=4,p=1$NlRmdjFmd2N3dmdKZ0ZQVg$qPyxKmseQ3heWyCOBwwuKpofstaEZAXVsRf23J/QWbA', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2020-12-18 17:25:11', '2020-12-18 17:25:11', 'argon2i');
INSERT INTO `sylius_shop_user` VALUES (11, 11, 'lenore55@yahoo.com', 'lenore55@yahoo.com', 1, 'meo0onkmfs0k4w444g8occkgs8cksgo', '$argon2i$v=19$m=65536,t=4,p=1$UHpnU2twU0FpbS5VQ3dncw$DcpdlGyFqP9zQqwY1cbRdlClJC2DbdYvPEdDsnK9L6A', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2020-12-18 17:25:11', '2020-12-18 17:25:11', 'argon2i');
INSERT INTO `sylius_shop_user` VALUES (12, 12, 'lgoodwin@gulgowski.com', 'lgoodwin@gulgowski.com', 1, 'gklrnxiuye8g4ss4skw8kc4go804gsk', '$argon2i$v=19$m=65536,t=4,p=1$MmlCVExsNlVSSmtOVlFSUg$S/7mT851WUArXkJ45cKEXZ1f+FJsQvwfHcNixkpfh5A', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2020-12-18 17:25:11', '2020-12-18 17:25:11', 'argon2i');
INSERT INTO `sylius_shop_user` VALUES (13, 13, 'qbecker@hotmail.com', 'qbecker@hotmail.com', 1, 'mdc6spmzhj40cck8c8ocw88g44cko8o', '$argon2i$v=19$m=65536,t=4,p=1$eDdYNXAyR2t3Zkl6QUZYWA$hkIVq2nHgj5rby80oMyi9BNTXxNTrShQWbE51sLHhNg', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2020-12-18 17:25:11', '2020-12-18 17:25:11', 'argon2i');
INSERT INTO `sylius_shop_user` VALUES (14, 14, 'tiffany.prosacco@stark.com', 'tiffany.prosacco@stark.com', 1, 'mnpag8lnpb4k0gs0o0cw0o4scwc0g4g', '$argon2i$v=19$m=65536,t=4,p=1$ZWZ3Lk8wQjI3SkV6Ykh2Mg$2L+1CJEIackGZuPnpd9UxcFoJ8G49GUqQGmQXp/El3g', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2020-12-18 17:25:11', '2020-12-18 17:25:11', 'argon2i');
INSERT INTO `sylius_shop_user` VALUES (15, 15, 'keyon.gusikowski@gmail.com', 'keyon.gusikowski@gmail.com', 1, '7ce7oflweq8800k4ckocowco04wgkgg', '$argon2i$v=19$m=65536,t=4,p=1$UDR1cy9OQld2bDR3SkVkRA$sCTTnwRqTINQuNAiQLHy7NkQYscgKMpRzCAoe7KqrAM', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2020-12-18 17:25:11', '2020-12-18 17:25:11', 'argon2i');
INSERT INTO `sylius_shop_user` VALUES (16, 16, 'zrobel@yahoo.com', 'zrobel@yahoo.com', 1, 'payaykj8o28cc8oc8sk4804gw4oo0k8', '$argon2i$v=19$m=65536,t=4,p=1$M2FGdUJwdlFzSGlFcVdhdA$82PP5dpO6HiMcUpmEBDKIly8r3tvaRSDlJxx5opZp2U', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2020-12-18 17:25:12', '2020-12-18 17:25:12', 'argon2i');
INSERT INTO `sylius_shop_user` VALUES (17, 17, 'tony43@koch.com', 'tony43@koch.com', 1, 'ohneo5wr0c0skcggkw4gg8g8084g00k', '$argon2i$v=19$m=65536,t=4,p=1$QXJZZXUvRzdvNC5HSjFCUA$6aoFiUbm7ELmDtyazzgLvuqmCU7K5eMO4HzAZq4GWwA', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2020-12-18 17:25:12', '2020-12-18 17:25:12', 'argon2i');
INSERT INTO `sylius_shop_user` VALUES (18, 18, 'elvis.fadel@hotmail.com', 'elvis.fadel@hotmail.com', 1, 'fme7nhgmctcgco8oo0o88ogo4cwc480', '$argon2i$v=19$m=65536,t=4,p=1$c09NSXRMN0RmRk5DaUtEVg$7XaZvec4Qi5bKGp8UjtmFEwpznkru6DofSgh+NETBFE', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2020-12-18 17:25:12', '2020-12-18 17:25:12', 'argon2i');
INSERT INTO `sylius_shop_user` VALUES (19, 19, 'damon60@heathcote.com', 'damon60@heathcote.com', 1, 'cawwwh358408gww8ckokssso0o84800', '$argon2i$v=19$m=65536,t=4,p=1$aVR5d2JvenIyaEpEMTVaUA$z6EqfTKcR8jv5NHOI0eN3tn15X/vByAmtNNtYwgQ2Tg', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2020-12-18 17:25:12', '2020-12-18 17:25:12', 'argon2i');
INSERT INTO `sylius_shop_user` VALUES (20, 20, 'hkunde@olson.org', 'hkunde@olson.org', 1, 'swtdp7k2uo0wc8ogko4ccssosg0cggk', '$argon2i$v=19$m=65536,t=4,p=1$d2FIRHlIa21LOUdOTVA0QQ$YrYWjtf1STu0PiVgktAS11xXuCdAYJFyQ6cEYuWYAXM', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2020-12-18 17:25:12', '2020-12-18 17:25:12', 'argon2i');
INSERT INTO `sylius_shop_user` VALUES (21, 21, 'von.madge@okuneva.info', 'von.madge@okuneva.info', 1, 'eutnqya2b1w8o84o444co44o8ccowws', '$argon2i$v=19$m=65536,t=4,p=1$Nmk5dUdOMjVzN1ZmTEU1bA$tkmFldKOiw96tbrz1PUB9hRr8ZWnkRD49VAg62N5Loc', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2020-12-18 17:25:12', '2020-12-18 17:25:12', 'argon2i');
COMMIT;

-- ----------------------------
-- Table structure for sylius_tax_category
-- ----------------------------
DROP TABLE IF EXISTS `sylius_tax_category`;
CREATE TABLE `sylius_tax_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_221EB0BE77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_tax_category
-- ----------------------------
BEGIN;
INSERT INTO `sylius_tax_category` VALUES (1, 'clothing', 'Clothing', 'Cum voluptas sunt et et totam eos. Est sit commodi consequatur ea unde doloremque et dolore. Voluptatum molestiae architecto in et veniam totam voluptatem porro. Saepe ut culpa eligendi minus id. Eos facilis iure distinctio libero ad reprehenderit.', '2020-12-18 17:25:13', '2020-12-18 17:25:13');
INSERT INTO `sylius_tax_category` VALUES (2, 'other', 'Other', 'Reiciendis fuga libero officia necessitatibus maxime blanditiis quia voluptate. Ab dolores quia autem sed in sint hic. Suscipit omnis placeat at tempore esse debitis. Qui cum et minus voluptatem voluptatem.', '2020-12-18 17:25:13', '2020-12-18 17:25:13');
COMMIT;

-- ----------------------------
-- Table structure for sylius_tax_rate
-- ----------------------------
DROP TABLE IF EXISTS `sylius_tax_rate`;
CREATE TABLE `sylius_tax_rate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `zone_id` int NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(10,5) NOT NULL,
  `included_in_price` tinyint(1) NOT NULL,
  `calculator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_3CD86B2E77153098` (`code`),
  KEY `IDX_3CD86B2E12469DE2` (`category_id`),
  KEY `IDX_3CD86B2E9F2C3FAB` (`zone_id`),
  CONSTRAINT `FK_3CD86B2E12469DE2` FOREIGN KEY (`category_id`) REFERENCES `sylius_tax_category` (`id`),
  CONSTRAINT `FK_3CD86B2E9F2C3FAB` FOREIGN KEY (`zone_id`) REFERENCES `sylius_zone` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_tax_rate
-- ----------------------------
BEGIN;
INSERT INTO `sylius_tax_rate` VALUES (1, 1, 1, 'clothing_sales_tax_7', 'Clothing Sales Tax 7%', 0.07000, 1, 'default', '2020-12-18 17:25:13', '2020-12-18 17:25:13');
INSERT INTO `sylius_tax_rate` VALUES (2, 2, 1, 'sales_tax_20', 'Sales Tax 20%', 0.20000, 0, 'default', '2020-12-18 17:25:13', '2020-12-18 17:25:13');
COMMIT;

-- ----------------------------
-- Table structure for sylius_taxon
-- ----------------------------
DROP TABLE IF EXISTS `sylius_taxon`;
CREATE TABLE `sylius_taxon` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tree_root` int DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tree_left` int NOT NULL,
  `tree_right` int NOT NULL,
  `tree_level` int NOT NULL,
  `position` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CFD811CA77153098` (`code`),
  KEY `IDX_CFD811CAA977936C` (`tree_root`),
  KEY `IDX_CFD811CA727ACA70` (`parent_id`),
  CONSTRAINT `FK_CFD811CA727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_CFD811CAA977936C` FOREIGN KEY (`tree_root`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_taxon
-- ----------------------------
BEGIN;
INSERT INTO `sylius_taxon` VALUES (1, 1, NULL, 'MENU_CATEGORY', 1, 22, 0, 0, '2020-12-18 17:25:09', '2020-12-18 17:25:09', 1);
INSERT INTO `sylius_taxon` VALUES (2, 1, 1, 't_shirts', 2, 7, 1, 0, '2020-12-18 17:25:13', '2020-12-18 17:25:13', 1);
INSERT INTO `sylius_taxon` VALUES (3, 1, 2, 'mens_t_shirts', 3, 4, 2, 0, '2020-12-18 17:25:13', '2020-12-18 17:25:13', 1);
INSERT INTO `sylius_taxon` VALUES (4, 1, 2, 'womens_t_shirts', 5, 6, 2, 1, '2020-12-18 17:25:13', '2020-12-18 17:25:13', 1);
INSERT INTO `sylius_taxon` VALUES (5, 1, 1, 'caps', 8, 13, 1, 1, '2020-12-18 17:25:15', '2020-12-18 17:25:15', 1);
INSERT INTO `sylius_taxon` VALUES (6, 1, 5, 'simple_caps', 9, 10, 2, 0, '2020-12-18 17:25:15', '2020-12-18 17:25:15', 1);
INSERT INTO `sylius_taxon` VALUES (7, 1, 5, 'caps_with_pompons', 11, 12, 2, 1, '2020-12-18 17:25:15', '2020-12-18 17:25:15', 1);
INSERT INTO `sylius_taxon` VALUES (8, 1, 1, 'dresses', 14, 15, 1, 2, '2020-12-18 17:25:15', '2020-12-18 17:25:15', 1);
INSERT INTO `sylius_taxon` VALUES (9, 1, 1, 'jeans', 16, 21, 1, 3, '2020-12-18 17:25:17', '2020-12-18 17:25:17', 1);
INSERT INTO `sylius_taxon` VALUES (10, 1, 9, 'mens_jeans', 17, 18, 2, 0, '2020-12-18 17:25:17', '2020-12-18 17:25:17', 1);
INSERT INTO `sylius_taxon` VALUES (11, 1, 9, 'womens_jeans', 19, 20, 2, 1, '2020-12-18 17:25:17', '2020-12-18 17:25:17', 1);
COMMIT;

-- ----------------------------
-- Table structure for sylius_taxon_image
-- ----------------------------
DROP TABLE IF EXISTS `sylius_taxon_image`;
CREATE TABLE `sylius_taxon_image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `owner_id` int NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_DBE52B287E3C61F9` (`owner_id`),
  CONSTRAINT `FK_DBE52B287E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_taxon_image
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sylius_taxon_translation
-- ----------------------------
DROP TABLE IF EXISTS `sylius_taxon_translation`;
CREATE TABLE `sylius_taxon_translation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `translatable_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug_uidx` (`locale`,`slug`),
  UNIQUE KEY `sylius_taxon_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_1487DFCF2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_1487DFCF2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_taxon_translation
-- ----------------------------
BEGIN;
INSERT INTO `sylius_taxon_translation` VALUES (1, 1, 'Category', 'category', 'Est rerum nisi quia vero. Et et quo incidunt eum nulla accusantium. Doloribus autem ipsum voluptatem consequuntur expedita temporibus. Unde nihil molestias est a officiis.', 'en_US');
INSERT INTO `sylius_taxon_translation` VALUES (2, 1, 'Category', 'category', 'Exercitationem optio totam velit consequatur consequatur eos id. Sed sequi similique assumenda. Qui beatae ut voluptatem dolorem id quisquam.', 'de_DE');
INSERT INTO `sylius_taxon_translation` VALUES (3, 1, 'Catégorie', 'categorie', 'Alias tempora sed ipsam occaecati dolor. Quae vitae sunt dolorum libero molestias dolorem dolores.', 'fr_FR');
INSERT INTO `sylius_taxon_translation` VALUES (4, 1, 'Category', 'category', 'Exercitationem optio totam velit consequatur consequatur eos id. Sed sequi similique assumenda. Qui beatae ut voluptatem dolorem id quisquam.', 'pl_PL');
INSERT INTO `sylius_taxon_translation` VALUES (5, 1, 'Category', 'category', 'Exercitationem optio totam velit consequatur consequatur eos id. Sed sequi similique assumenda. Qui beatae ut voluptatem dolorem id quisquam.', 'es_ES');
INSERT INTO `sylius_taxon_translation` VALUES (6, 1, 'Category', 'category', 'Exercitationem optio totam velit consequatur consequatur eos id. Sed sequi similique assumenda. Qui beatae ut voluptatem dolorem id quisquam.', 'es_MX');
INSERT INTO `sylius_taxon_translation` VALUES (7, 1, 'Category', 'category', 'Exercitationem optio totam velit consequatur consequatur eos id. Sed sequi similique assumenda. Qui beatae ut voluptatem dolorem id quisquam.', 'pt_PT');
INSERT INTO `sylius_taxon_translation` VALUES (8, 1, 'Category', 'category', 'Exercitationem optio totam velit consequatur consequatur eos id. Sed sequi similique assumenda. Qui beatae ut voluptatem dolorem id quisquam.', 'zh_CN');
INSERT INTO `sylius_taxon_translation` VALUES (9, 2, 'T-shirts', 'category/t-shirts', 'Voluptatem occaecati eius sed quod. Esse quia saepe doloremque soluta. Est commodi dignissimos et. Est ipsum et culpa laudantium dolorem sunt rerum. Et aperiam ipsam iste delectus soluta.', 'en_US');
INSERT INTO `sylius_taxon_translation` VALUES (10, 2, 'T-shirts', 't-shirts', 'Saepe aliquid non praesentium veritatis perferendis dolores nam. Corrupti omnis corporis quis consequatur. Est nisi nihil fugit delectus. Porro aperiam est omnis.', 'de_DE');
INSERT INTO `sylius_taxon_translation` VALUES (11, 2, 'T-shirts', 'categorie/t-shirts', 'Ipsam repellendus sit odit qui. Quia sit voluptatem reprehenderit voluptatibus. Voluptatem minus consectetur dolores perferendis. Velit corrupti consequatur nulla maxime illum quae. Expedita exercitationem doloremque id aspernatur earum cum.', 'fr_FR');
INSERT INTO `sylius_taxon_translation` VALUES (12, 2, 'T-shirts', 't-shirts', 'Saepe aliquid non praesentium veritatis perferendis dolores nam. Corrupti omnis corporis quis consequatur. Est nisi nihil fugit delectus. Porro aperiam est omnis.', 'pl_PL');
INSERT INTO `sylius_taxon_translation` VALUES (13, 2, 'T-shirts', 't-shirts', 'Saepe aliquid non praesentium veritatis perferendis dolores nam. Corrupti omnis corporis quis consequatur. Est nisi nihil fugit delectus. Porro aperiam est omnis.', 'es_ES');
INSERT INTO `sylius_taxon_translation` VALUES (14, 2, 'T-shirts', 't-shirts', 'Saepe aliquid non praesentium veritatis perferendis dolores nam. Corrupti omnis corporis quis consequatur. Est nisi nihil fugit delectus. Porro aperiam est omnis.', 'es_MX');
INSERT INTO `sylius_taxon_translation` VALUES (15, 2, 'T-shirts', 't-shirts', 'Saepe aliquid non praesentium veritatis perferendis dolores nam. Corrupti omnis corporis quis consequatur. Est nisi nihil fugit delectus. Porro aperiam est omnis.', 'pt_PT');
INSERT INTO `sylius_taxon_translation` VALUES (16, 2, 'T-shirts', 't-shirts', 'Saepe aliquid non praesentium veritatis perferendis dolores nam. Corrupti omnis corporis quis consequatur. Est nisi nihil fugit delectus. Porro aperiam est omnis.', 'zh_CN');
INSERT INTO `sylius_taxon_translation` VALUES (17, 3, 'Men', 't-shirts/men', 'Quia minima saepe iste sed voluptates non veritatis. Velit nulla et explicabo modi qui facere. Et ea laboriosam sequi enim dolore cupiditate consequatur. Dicta aut voluptatem fugit voluptas deleniti amet quibusdam. Ex non ipsa et.', 'en_US');
INSERT INTO `sylius_taxon_translation` VALUES (18, 3, 'odio nisi quas', 't-shirts/odio-nisi-quas', 'Aut aut nemo optio delectus sint magnam accusamus. Occaecati est rerum rerum sapiente at perferendis molestias quo.', 'de_DE');
INSERT INTO `sylius_taxon_translation` VALUES (19, 3, 'Hommes', 't-shirts/hommes', 'Nesciunt et dolor consectetur quia aut earum. Quis recusandae dolorem sit nam autem. Laborum molestiae et qui at.', 'fr_FR');
INSERT INTO `sylius_taxon_translation` VALUES (20, 3, 'odio nisi quas', 't-shirts/odio-nisi-quas', 'Aut aut nemo optio delectus sint magnam accusamus. Occaecati est rerum rerum sapiente at perferendis molestias quo.', 'pl_PL');
INSERT INTO `sylius_taxon_translation` VALUES (21, 3, 'odio nisi quas', 't-shirts/odio-nisi-quas', 'Aut aut nemo optio delectus sint magnam accusamus. Occaecati est rerum rerum sapiente at perferendis molestias quo.', 'es_ES');
INSERT INTO `sylius_taxon_translation` VALUES (22, 3, 'odio nisi quas', 't-shirts/odio-nisi-quas', 'Aut aut nemo optio delectus sint magnam accusamus. Occaecati est rerum rerum sapiente at perferendis molestias quo.', 'es_MX');
INSERT INTO `sylius_taxon_translation` VALUES (23, 3, 'odio nisi quas', 't-shirts/odio-nisi-quas', 'Aut aut nemo optio delectus sint magnam accusamus. Occaecati est rerum rerum sapiente at perferendis molestias quo.', 'pt_PT');
INSERT INTO `sylius_taxon_translation` VALUES (24, 3, 'odio nisi quas', 't-shirts/odio-nisi-quas', 'Aut aut nemo optio delectus sint magnam accusamus. Occaecati est rerum rerum sapiente at perferendis molestias quo.', 'zh_CN');
INSERT INTO `sylius_taxon_translation` VALUES (25, 4, 'Women', 't-shirts/women', 'Iure aliquid sed ea dolorum tenetur. Nesciunt quod autem ducimus odit totam et. Et voluptate illum natus est ea. Qui harum animi perspiciatis voluptatum expedita architecto. Dolorum sed omnis veniam quo rem dolores rerum.', 'en_US');
INSERT INTO `sylius_taxon_translation` VALUES (26, 4, 'aut aut temporibus', 't-shirts/aut-aut-temporibus', 'Error assumenda eveniet provident amet a eum et. Molestiae commodi voluptatem vitae eligendi ducimus ut ullam. Quasi libero consequuntur itaque eius dolorem et itaque.', 'de_DE');
INSERT INTO `sylius_taxon_translation` VALUES (27, 4, 'Femmes', 't-shirts/femmes', 'Tempora nostrum molestiae vel ad esse sit. Earum est assumenda atque quod non labore corrupti. Iusto quam dolorum aliquid ab labore numquam facilis fugit.', 'fr_FR');
INSERT INTO `sylius_taxon_translation` VALUES (28, 4, 'aut aut temporibus', 't-shirts/aut-aut-temporibus', 'Error assumenda eveniet provident amet a eum et. Molestiae commodi voluptatem vitae eligendi ducimus ut ullam. Quasi libero consequuntur itaque eius dolorem et itaque.', 'pl_PL');
INSERT INTO `sylius_taxon_translation` VALUES (29, 4, 'aut aut temporibus', 't-shirts/aut-aut-temporibus', 'Error assumenda eveniet provident amet a eum et. Molestiae commodi voluptatem vitae eligendi ducimus ut ullam. Quasi libero consequuntur itaque eius dolorem et itaque.', 'es_ES');
INSERT INTO `sylius_taxon_translation` VALUES (30, 4, 'aut aut temporibus', 't-shirts/aut-aut-temporibus', 'Error assumenda eveniet provident amet a eum et. Molestiae commodi voluptatem vitae eligendi ducimus ut ullam. Quasi libero consequuntur itaque eius dolorem et itaque.', 'es_MX');
INSERT INTO `sylius_taxon_translation` VALUES (31, 4, 'aut aut temporibus', 't-shirts/aut-aut-temporibus', 'Error assumenda eveniet provident amet a eum et. Molestiae commodi voluptatem vitae eligendi ducimus ut ullam. Quasi libero consequuntur itaque eius dolorem et itaque.', 'pt_PT');
INSERT INTO `sylius_taxon_translation` VALUES (32, 4, 'aut aut temporibus', 't-shirts/aut-aut-temporibus', 'Error assumenda eveniet provident amet a eum et. Molestiae commodi voluptatem vitae eligendi ducimus ut ullam. Quasi libero consequuntur itaque eius dolorem et itaque.', 'zh_CN');
INSERT INTO `sylius_taxon_translation` VALUES (33, 5, 'Caps', 'category/caps', 'Autem voluptate natus expedita ut accusantium. Corporis tempora architecto est. Non et et et ratione nam recusandae et est. Commodi et nesciunt quas quia est.', 'en_US');
INSERT INTO `sylius_taxon_translation` VALUES (34, 5, 'Caps', 'caps', 'Quam quisquam voluptatem officiis necessitatibus sunt saepe. Occaecati tenetur nemo fugit deleniti aut sequi. Aspernatur explicabo et quia sit recusandae quis.', 'de_DE');
INSERT INTO `sylius_taxon_translation` VALUES (35, 5, 'Bonnets', 'categorie/bonnets', 'Ut alias debitis cum rerum voluptate. Soluta corporis dolorem earum impedit excepturi praesentium. In eos esse et occaecati labore aliquid aut. Ipsum et alias quis suscipit quam voluptatem.', 'fr_FR');
INSERT INTO `sylius_taxon_translation` VALUES (36, 5, 'Caps', 'caps', 'Quam quisquam voluptatem officiis necessitatibus sunt saepe. Occaecati tenetur nemo fugit deleniti aut sequi. Aspernatur explicabo et quia sit recusandae quis.', 'pl_PL');
INSERT INTO `sylius_taxon_translation` VALUES (37, 5, 'Caps', 'caps', 'Quam quisquam voluptatem officiis necessitatibus sunt saepe. Occaecati tenetur nemo fugit deleniti aut sequi. Aspernatur explicabo et quia sit recusandae quis.', 'es_ES');
INSERT INTO `sylius_taxon_translation` VALUES (38, 5, 'Caps', 'caps', 'Quam quisquam voluptatem officiis necessitatibus sunt saepe. Occaecati tenetur nemo fugit deleniti aut sequi. Aspernatur explicabo et quia sit recusandae quis.', 'es_MX');
INSERT INTO `sylius_taxon_translation` VALUES (39, 5, 'Caps', 'caps', 'Quam quisquam voluptatem officiis necessitatibus sunt saepe. Occaecati tenetur nemo fugit deleniti aut sequi. Aspernatur explicabo et quia sit recusandae quis.', 'pt_PT');
INSERT INTO `sylius_taxon_translation` VALUES (40, 5, 'Caps', 'caps', 'Quam quisquam voluptatem officiis necessitatibus sunt saepe. Occaecati tenetur nemo fugit deleniti aut sequi. Aspernatur explicabo et quia sit recusandae quis.', 'zh_CN');
INSERT INTO `sylius_taxon_translation` VALUES (41, 6, 'Simple', 'caps/simple', 'Enim sed voluptatem magnam voluptas harum. Eum assumenda natus ullam sit sint. Omnis velit et harum delectus laudantium quia sint est.', 'en_US');
INSERT INTO `sylius_taxon_translation` VALUES (42, 6, 'vel odio cupiditate', 'caps/vel-odio-cupiditate', 'Cumque porro doloremque ad quae est ipsum. Sed quis culpa aut iste aut. Qui est officiis blanditiis aut tempore harum.', 'de_DE');
INSERT INTO `sylius_taxon_translation` VALUES (43, 6, 'Simple', 'bonnets/simple', 'Accusamus sit laudantium quia sed voluptas. Ipsa quas repellendus atque et velit odio molestias ducimus. Optio rerum quia reprehenderit occaecati iure provident rem amet.', 'fr_FR');
INSERT INTO `sylius_taxon_translation` VALUES (44, 6, 'vel odio cupiditate', 'caps/vel-odio-cupiditate', 'Cumque porro doloremque ad quae est ipsum. Sed quis culpa aut iste aut. Qui est officiis blanditiis aut tempore harum.', 'pl_PL');
INSERT INTO `sylius_taxon_translation` VALUES (45, 6, 'vel odio cupiditate', 'caps/vel-odio-cupiditate', 'Cumque porro doloremque ad quae est ipsum. Sed quis culpa aut iste aut. Qui est officiis blanditiis aut tempore harum.', 'es_ES');
INSERT INTO `sylius_taxon_translation` VALUES (46, 6, 'vel odio cupiditate', 'caps/vel-odio-cupiditate', 'Cumque porro doloremque ad quae est ipsum. Sed quis culpa aut iste aut. Qui est officiis blanditiis aut tempore harum.', 'es_MX');
INSERT INTO `sylius_taxon_translation` VALUES (47, 6, 'vel odio cupiditate', 'caps/vel-odio-cupiditate', 'Cumque porro doloremque ad quae est ipsum. Sed quis culpa aut iste aut. Qui est officiis blanditiis aut tempore harum.', 'pt_PT');
INSERT INTO `sylius_taxon_translation` VALUES (48, 6, 'vel odio cupiditate', 'caps/vel-odio-cupiditate', 'Cumque porro doloremque ad quae est ipsum. Sed quis culpa aut iste aut. Qui est officiis blanditiis aut tempore harum.', 'zh_CN');
INSERT INTO `sylius_taxon_translation` VALUES (49, 7, 'With pompons', 'caps/with-pompons', 'Rerum corporis eligendi nihil nobis sunt tenetur distinctio. Voluptatibus cupiditate minus non quaerat. Dolorum illo vero error consequatur culpa accusamus quidem sit.', 'en_US');
INSERT INTO `sylius_taxon_translation` VALUES (50, 7, 'incidunt explicabo doloremque', 'caps/incidunt-explicabo-doloremque', 'Qui delectus iusto accusantium qui. Rerum aperiam eaque omnis molestias est ab. Et praesentium consequuntur nesciunt tempore. Natus debitis ea nesciunt commodi optio.', 'de_DE');
INSERT INTO `sylius_taxon_translation` VALUES (51, 7, 'À pompon', 'bonnets/a-pompon', 'Ratione et reprehenderit ut suscipit. Tempore excepturi veniam excepturi dolorem qui. Enim fugit laudantium sapiente cumque. Praesentium odio temporibus aut perspiciatis excepturi necessitatibus. Ut blanditiis omnis ut natus est a.', 'fr_FR');
INSERT INTO `sylius_taxon_translation` VALUES (52, 7, 'incidunt explicabo doloremque', 'caps/incidunt-explicabo-doloremque', 'Qui delectus iusto accusantium qui. Rerum aperiam eaque omnis molestias est ab. Et praesentium consequuntur nesciunt tempore. Natus debitis ea nesciunt commodi optio.', 'pl_PL');
INSERT INTO `sylius_taxon_translation` VALUES (53, 7, 'incidunt explicabo doloremque', 'caps/incidunt-explicabo-doloremque', 'Qui delectus iusto accusantium qui. Rerum aperiam eaque omnis molestias est ab. Et praesentium consequuntur nesciunt tempore. Natus debitis ea nesciunt commodi optio.', 'es_ES');
INSERT INTO `sylius_taxon_translation` VALUES (54, 7, 'incidunt explicabo doloremque', 'caps/incidunt-explicabo-doloremque', 'Qui delectus iusto accusantium qui. Rerum aperiam eaque omnis molestias est ab. Et praesentium consequuntur nesciunt tempore. Natus debitis ea nesciunt commodi optio.', 'es_MX');
INSERT INTO `sylius_taxon_translation` VALUES (55, 7, 'incidunt explicabo doloremque', 'caps/incidunt-explicabo-doloremque', 'Qui delectus iusto accusantium qui. Rerum aperiam eaque omnis molestias est ab. Et praesentium consequuntur nesciunt tempore. Natus debitis ea nesciunt commodi optio.', 'pt_PT');
INSERT INTO `sylius_taxon_translation` VALUES (56, 7, 'incidunt explicabo doloremque', 'caps/incidunt-explicabo-doloremque', 'Qui delectus iusto accusantium qui. Rerum aperiam eaque omnis molestias est ab. Et praesentium consequuntur nesciunt tempore. Natus debitis ea nesciunt commodi optio.', 'zh_CN');
INSERT INTO `sylius_taxon_translation` VALUES (57, 8, 'Dresses', 'category/dresses', 'Nemo corrupti saepe quis et. Tenetur eveniet autem molestiae dignissimos consequatur sit. Libero vel dolores perspiciatis vero.', 'en_US');
INSERT INTO `sylius_taxon_translation` VALUES (58, 8, 'molestiae molestias nulla', 'category/molestiae-molestias-nulla', 'Rerum ratione nisi odio fuga. Ipsum facilis voluptas similique et ut aliquam blanditiis. Voluptate optio et rerum nostrum dolores.', 'de_DE');
INSERT INTO `sylius_taxon_translation` VALUES (59, 8, 'Robes', 'categorie/robes', 'Quis repellendus explicabo at rerum autem sint cumque. Aut voluptas ea ullam tempore. Eum qui ad consequuntur veritatis alias corrupti dicta dolor. Illum quia quas repellendus quos exercitationem.', 'fr_FR');
INSERT INTO `sylius_taxon_translation` VALUES (60, 8, 'molestiae molestias nulla', 'category/molestiae-molestias-nulla', 'Rerum ratione nisi odio fuga. Ipsum facilis voluptas similique et ut aliquam blanditiis. Voluptate optio et rerum nostrum dolores.', 'pl_PL');
INSERT INTO `sylius_taxon_translation` VALUES (61, 8, 'molestiae molestias nulla', 'category/molestiae-molestias-nulla', 'Rerum ratione nisi odio fuga. Ipsum facilis voluptas similique et ut aliquam blanditiis. Voluptate optio et rerum nostrum dolores.', 'es_ES');
INSERT INTO `sylius_taxon_translation` VALUES (62, 8, 'molestiae molestias nulla', 'category/molestiae-molestias-nulla', 'Rerum ratione nisi odio fuga. Ipsum facilis voluptas similique et ut aliquam blanditiis. Voluptate optio et rerum nostrum dolores.', 'es_MX');
INSERT INTO `sylius_taxon_translation` VALUES (63, 8, 'molestiae molestias nulla', 'category/molestiae-molestias-nulla', 'Rerum ratione nisi odio fuga. Ipsum facilis voluptas similique et ut aliquam blanditiis. Voluptate optio et rerum nostrum dolores.', 'pt_PT');
INSERT INTO `sylius_taxon_translation` VALUES (64, 8, 'molestiae molestias nulla', 'category/molestiae-molestias-nulla', 'Rerum ratione nisi odio fuga. Ipsum facilis voluptas similique et ut aliquam blanditiis. Voluptate optio et rerum nostrum dolores.', 'zh_CN');
INSERT INTO `sylius_taxon_translation` VALUES (65, 9, 'Jeans', 'category/jeans', 'Est quia eaque rerum laborum. Quisquam similique rerum culpa quaerat. Esse sed laudantium numquam. Non quod ut dolor vitae. Numquam et illo adipisci repellendus dignissimos temporibus nemo.', 'en_US');
INSERT INTO `sylius_taxon_translation` VALUES (66, 9, 'Jeans', 'jeans', 'Et id dolor dolorem quia. Quis suscipit animi ut aut ex perferendis aperiam. Est magni adipisci voluptas distinctio.', 'de_DE');
INSERT INTO `sylius_taxon_translation` VALUES (67, 9, 'Jeans', 'categorie/jeans', 'Magnam consequuntur laborum dicta assumenda quos libero. Aliquid fuga architecto omnis voluptatem. Iste laborum provident tenetur blanditiis.', 'fr_FR');
INSERT INTO `sylius_taxon_translation` VALUES (68, 9, 'Jeans', 'jeans', 'Et id dolor dolorem quia. Quis suscipit animi ut aut ex perferendis aperiam. Est magni adipisci voluptas distinctio.', 'pl_PL');
INSERT INTO `sylius_taxon_translation` VALUES (69, 9, 'Jeans', 'jeans', 'Et id dolor dolorem quia. Quis suscipit animi ut aut ex perferendis aperiam. Est magni adipisci voluptas distinctio.', 'es_ES');
INSERT INTO `sylius_taxon_translation` VALUES (70, 9, 'Jeans', 'jeans', 'Et id dolor dolorem quia. Quis suscipit animi ut aut ex perferendis aperiam. Est magni adipisci voluptas distinctio.', 'es_MX');
INSERT INTO `sylius_taxon_translation` VALUES (71, 9, 'Jeans', 'jeans', 'Et id dolor dolorem quia. Quis suscipit animi ut aut ex perferendis aperiam. Est magni adipisci voluptas distinctio.', 'pt_PT');
INSERT INTO `sylius_taxon_translation` VALUES (72, 9, 'Jeans', 'jeans', 'Et id dolor dolorem quia. Quis suscipit animi ut aut ex perferendis aperiam. Est magni adipisci voluptas distinctio.', 'zh_CN');
INSERT INTO `sylius_taxon_translation` VALUES (73, 10, 'Men', 'jeans/men', 'Quis sequi rerum rerum dignissimos quam cum natus. Praesentium quos deserunt similique corrupti deleniti. Sit qui aut quo reprehenderit reiciendis accusamus est deleniti. Vel harum mollitia molestiae corrupti incidunt. Omnis provident omnis ipsum eaque beatae et eius.', 'en_US');
INSERT INTO `sylius_taxon_translation` VALUES (74, 10, 'quia omnis inventore', 'jeans/quia-omnis-inventore', 'Reiciendis sed totam laborum sed. Dicta enim veniam ullam amet quae sequi aperiam. Error molestiae harum aliquam nulla quis sint repudiandae neque. Quos id minima pariatur temporibus iusto.', 'de_DE');
INSERT INTO `sylius_taxon_translation` VALUES (75, 10, 'Hommes', 'jeans/hommes', 'Non exercitationem dolores et distinctio dolore. Dolores est est amet earum alias minus id. Ut totam ea sint consectetur voluptas qui. Illum enim animi illum porro natus.', 'fr_FR');
INSERT INTO `sylius_taxon_translation` VALUES (76, 10, 'quia omnis inventore', 'jeans/quia-omnis-inventore', 'Reiciendis sed totam laborum sed. Dicta enim veniam ullam amet quae sequi aperiam. Error molestiae harum aliquam nulla quis sint repudiandae neque. Quos id minima pariatur temporibus iusto.', 'pl_PL');
INSERT INTO `sylius_taxon_translation` VALUES (77, 10, 'quia omnis inventore', 'jeans/quia-omnis-inventore', 'Reiciendis sed totam laborum sed. Dicta enim veniam ullam amet quae sequi aperiam. Error molestiae harum aliquam nulla quis sint repudiandae neque. Quos id minima pariatur temporibus iusto.', 'es_ES');
INSERT INTO `sylius_taxon_translation` VALUES (78, 10, 'quia omnis inventore', 'jeans/quia-omnis-inventore', 'Reiciendis sed totam laborum sed. Dicta enim veniam ullam amet quae sequi aperiam. Error molestiae harum aliquam nulla quis sint repudiandae neque. Quos id minima pariatur temporibus iusto.', 'es_MX');
INSERT INTO `sylius_taxon_translation` VALUES (79, 10, 'quia omnis inventore', 'jeans/quia-omnis-inventore', 'Reiciendis sed totam laborum sed. Dicta enim veniam ullam amet quae sequi aperiam. Error molestiae harum aliquam nulla quis sint repudiandae neque. Quos id minima pariatur temporibus iusto.', 'pt_PT');
INSERT INTO `sylius_taxon_translation` VALUES (80, 10, 'quia omnis inventore', 'jeans/quia-omnis-inventore', 'Reiciendis sed totam laborum sed. Dicta enim veniam ullam amet quae sequi aperiam. Error molestiae harum aliquam nulla quis sint repudiandae neque. Quos id minima pariatur temporibus iusto.', 'zh_CN');
INSERT INTO `sylius_taxon_translation` VALUES (81, 11, 'Women', 'jeans/women', 'Dolores et vero laudantium ipsum. Sed modi fugit pariatur. Asperiores quis odit dolores atque laboriosam libero dolores. Aut architecto non porro alias voluptatum veritatis.', 'en_US');
INSERT INTO `sylius_taxon_translation` VALUES (82, 11, 'ea asperiores porro', 'jeans/ea-asperiores-porro', 'Consequatur omnis necessitatibus maiores est magni aut. Dolor voluptatem et molestiae adipisci. Rem fugit voluptas qui.', 'de_DE');
INSERT INTO `sylius_taxon_translation` VALUES (83, 11, 'Femmes', 'jeans/femmes', 'Eveniet quia totam debitis provident consequatur velit voluptatum maxime. Assumenda ut dolores doloribus aut voluptas. Tempore exercitationem laborum dicta est officiis id.', 'fr_FR');
INSERT INTO `sylius_taxon_translation` VALUES (84, 11, 'ea asperiores porro', 'jeans/ea-asperiores-porro', 'Consequatur omnis necessitatibus maiores est magni aut. Dolor voluptatem et molestiae adipisci. Rem fugit voluptas qui.', 'pl_PL');
INSERT INTO `sylius_taxon_translation` VALUES (85, 11, 'ea asperiores porro', 'jeans/ea-asperiores-porro', 'Consequatur omnis necessitatibus maiores est magni aut. Dolor voluptatem et molestiae adipisci. Rem fugit voluptas qui.', 'es_ES');
INSERT INTO `sylius_taxon_translation` VALUES (86, 11, 'ea asperiores porro', 'jeans/ea-asperiores-porro', 'Consequatur omnis necessitatibus maiores est magni aut. Dolor voluptatem et molestiae adipisci. Rem fugit voluptas qui.', 'es_MX');
INSERT INTO `sylius_taxon_translation` VALUES (87, 11, 'ea asperiores porro', 'jeans/ea-asperiores-porro', 'Consequatur omnis necessitatibus maiores est magni aut. Dolor voluptatem et molestiae adipisci. Rem fugit voluptas qui.', 'pt_PT');
INSERT INTO `sylius_taxon_translation` VALUES (88, 11, 'ea asperiores porro', 'jeans/ea-asperiores-porro', 'Consequatur omnis necessitatibus maiores est magni aut. Dolor voluptatem et molestiae adipisci. Rem fugit voluptas qui.', 'zh_CN');
COMMIT;

-- ----------------------------
-- Table structure for sylius_user_oauth
-- ----------------------------
DROP TABLE IF EXISTS `sylius_user_oauth`;
CREATE TABLE `sylius_user_oauth` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `access_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refresh_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_provider` (`user_id`,`provider`),
  KEY `IDX_C3471B78A76ED395` (`user_id`),
  CONSTRAINT `FK_C3471B78A76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_shop_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_user_oauth
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sylius_zone
-- ----------------------------
DROP TABLE IF EXISTS `sylius_zone`;
CREATE TABLE `sylius_zone` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7BE2258E77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_zone
-- ----------------------------
BEGIN;
INSERT INTO `sylius_zone` VALUES (1, 'US', 'United States of America', 'country', 'all');
INSERT INTO `sylius_zone` VALUES (2, 'WORLD', 'World', 'country', 'all');
COMMIT;

-- ----------------------------
-- Table structure for sylius_zone_member
-- ----------------------------
DROP TABLE IF EXISTS `sylius_zone_member`;
CREATE TABLE `sylius_zone_member` (
  `id` int NOT NULL AUTO_INCREMENT,
  `belongs_to` int DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E8B5ABF34B0E929B77153098` (`belongs_to`,`code`),
  KEY `IDX_E8B5ABF34B0E929B` (`belongs_to`),
  CONSTRAINT `FK_E8B5ABF34B0E929B` FOREIGN KEY (`belongs_to`) REFERENCES `sylius_zone` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sylius_zone_member
-- ----------------------------
BEGIN;
INSERT INTO `sylius_zone_member` VALUES (1, 1, 'US');
INSERT INTO `sylius_zone_member` VALUES (5, 2, 'AU');
INSERT INTO `sylius_zone_member` VALUES (6, 2, 'CA');
INSERT INTO `sylius_zone_member` VALUES (11, 2, 'CN');
INSERT INTO `sylius_zone_member` VALUES (4, 2, 'DE');
INSERT INTO `sylius_zone_member` VALUES (10, 2, 'ES');
INSERT INTO `sylius_zone_member` VALUES (3, 2, 'FR');
INSERT INTO `sylius_zone_member` VALUES (12, 2, 'GB');
INSERT INTO `sylius_zone_member` VALUES (7, 2, 'MX');
INSERT INTO `sylius_zone_member` VALUES (8, 2, 'NZ');
INSERT INTO `sylius_zone_member` VALUES (13, 2, 'PL');
INSERT INTO `sylius_zone_member` VALUES (9, 2, 'PT');
INSERT INTO `sylius_zone_member` VALUES (2, 2, 'US');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
