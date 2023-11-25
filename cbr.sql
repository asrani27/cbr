/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50739 (5.7.39)
 Source Host           : localhost:3306
 Source Schema         : cbr

 Target Server Type    : MySQL
 Target Server Version : 50739 (5.7.39)
 File Encoding         : 65001

 Date: 25/11/2023 11:35:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ciri
-- ----------------------------
DROP TABLE IF EXISTS `ciri`;
CREATE TABLE `ciri` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ciri
-- ----------------------------
BEGIN;
INSERT INTO `ciri` (`id`, `nama`) VALUES (1, 'Suka Berkumpul\r');
INSERT INTO `ciri` (`id`, `nama`) VALUES (2, 'Berpikir Kritis\r');
INSERT INTO `ciri` (`id`, `nama`) VALUES (3, 'Senang Berkreasi\r');
INSERT INTO `ciri` (`id`, `nama`) VALUES (4, 'Suka Menyendiri\r');
INSERT INTO `ciri` (`id`, `nama`) VALUES (5, 'Peka Terhadap Perasaan\r');
INSERT INTO `ciri` (`id`, `nama`) VALUES (6, 'Suka Kegiatan Logis\r');
INSERT INTO `ciri` (`id`, `nama`) VALUES (7, 'Aktif Di Komunitas\r');
INSERT INTO `ciri` (`id`, `nama`) VALUES (8, 'Suka Memecahkan Masalah');
COMMIT;

-- ----------------------------
-- Table structure for kasus
-- ----------------------------
DROP TABLE IF EXISTS `kasus`;
CREATE TABLE `kasus` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nomor_kasus` varchar(255) DEFAULT NULL,
  `kepribadian_id` int(11) DEFAULT NULL,
  `ciri_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kasus
-- ----------------------------
BEGIN;
INSERT INTO `kasus` (`id`, `nomor_kasus`, `kepribadian_id`, `ciri_id`, `created_at`, `updated_at`) VALUES (1, '1', 1, 2, NULL, NULL);
INSERT INTO `kasus` (`id`, `nomor_kasus`, `kepribadian_id`, `ciri_id`, `created_at`, `updated_at`) VALUES (2, '1', 1, 6, NULL, NULL);
INSERT INTO `kasus` (`id`, `nomor_kasus`, `kepribadian_id`, `ciri_id`, `created_at`, `updated_at`) VALUES (3, '2', 1, 2, NULL, NULL);
INSERT INTO `kasus` (`id`, `nomor_kasus`, `kepribadian_id`, `ciri_id`, `created_at`, `updated_at`) VALUES (4, '2', 1, 6, NULL, NULL);
INSERT INTO `kasus` (`id`, `nomor_kasus`, `kepribadian_id`, `ciri_id`, `created_at`, `updated_at`) VALUES (5, '2', 1, 7, NULL, NULL);
INSERT INTO `kasus` (`id`, `nomor_kasus`, `kepribadian_id`, `ciri_id`, `created_at`, `updated_at`) VALUES (6, '3', 2, 1, NULL, NULL);
INSERT INTO `kasus` (`id`, `nomor_kasus`, `kepribadian_id`, `ciri_id`, `created_at`, `updated_at`) VALUES (7, '3', 2, 3, NULL, NULL);
INSERT INTO `kasus` (`id`, `nomor_kasus`, `kepribadian_id`, `ciri_id`, `created_at`, `updated_at`) VALUES (8, '3', 2, 4, NULL, NULL);
INSERT INTO `kasus` (`id`, `nomor_kasus`, `kepribadian_id`, `ciri_id`, `created_at`, `updated_at`) VALUES (9, '3', 2, 8, NULL, NULL);
INSERT INTO `kasus` (`id`, `nomor_kasus`, `kepribadian_id`, `ciri_id`, `created_at`, `updated_at`) VALUES (10, '4', 2, 3, NULL, NULL);
INSERT INTO `kasus` (`id`, `nomor_kasus`, `kepribadian_id`, `ciri_id`, `created_at`, `updated_at`) VALUES (11, '4', 2, 4, NULL, NULL);
INSERT INTO `kasus` (`id`, `nomor_kasus`, `kepribadian_id`, `ciri_id`, `created_at`, `updated_at`) VALUES (12, '4', 2, 8, NULL, NULL);
INSERT INTO `kasus` (`id`, `nomor_kasus`, `kepribadian_id`, `ciri_id`, `created_at`, `updated_at`) VALUES (13, '5', 3, 1, NULL, NULL);
INSERT INTO `kasus` (`id`, `nomor_kasus`, `kepribadian_id`, `ciri_id`, `created_at`, `updated_at`) VALUES (14, '5', 3, 6, NULL, NULL);
INSERT INTO `kasus` (`id`, `nomor_kasus`, `kepribadian_id`, `ciri_id`, `created_at`, `updated_at`) VALUES (15, '5', 3, 7, NULL, NULL);
INSERT INTO `kasus` (`id`, `nomor_kasus`, `kepribadian_id`, `ciri_id`, `created_at`, `updated_at`) VALUES (16, '6', 3, 1, NULL, NULL);
INSERT INTO `kasus` (`id`, `nomor_kasus`, `kepribadian_id`, `ciri_id`, `created_at`, `updated_at`) VALUES (17, '6', 3, 2, NULL, NULL);
INSERT INTO `kasus` (`id`, `nomor_kasus`, `kepribadian_id`, `ciri_id`, `created_at`, `updated_at`) VALUES (18, '6', 3, 6, NULL, NULL);
INSERT INTO `kasus` (`id`, `nomor_kasus`, `kepribadian_id`, `ciri_id`, `created_at`, `updated_at`) VALUES (19, '6', 3, 7, NULL, NULL);
INSERT INTO `kasus` (`id`, `nomor_kasus`, `kepribadian_id`, `ciri_id`, `created_at`, `updated_at`) VALUES (20, '7', 4, 1, NULL, NULL);
INSERT INTO `kasus` (`id`, `nomor_kasus`, `kepribadian_id`, `ciri_id`, `created_at`, `updated_at`) VALUES (21, '7', 4, 2, NULL, NULL);
INSERT INTO `kasus` (`id`, `nomor_kasus`, `kepribadian_id`, `ciri_id`, `created_at`, `updated_at`) VALUES (22, '7', 4, 3, NULL, NULL);
INSERT INTO `kasus` (`id`, `nomor_kasus`, `kepribadian_id`, `ciri_id`, `created_at`, `updated_at`) VALUES (23, '7', 4, 4, NULL, NULL);
INSERT INTO `kasus` (`id`, `nomor_kasus`, `kepribadian_id`, `ciri_id`, `created_at`, `updated_at`) VALUES (24, '7', 4, 5, NULL, NULL);
INSERT INTO `kasus` (`id`, `nomor_kasus`, `kepribadian_id`, `ciri_id`, `created_at`, `updated_at`) VALUES (25, '7', 4, 6, NULL, NULL);
INSERT INTO `kasus` (`id`, `nomor_kasus`, `kepribadian_id`, `ciri_id`, `created_at`, `updated_at`) VALUES (26, '7', 4, 7, NULL, NULL);
INSERT INTO `kasus` (`id`, `nomor_kasus`, `kepribadian_id`, `ciri_id`, `created_at`, `updated_at`) VALUES (27, '8', 4, 1, NULL, NULL);
INSERT INTO `kasus` (`id`, `nomor_kasus`, `kepribadian_id`, `ciri_id`, `created_at`, `updated_at`) VALUES (28, '8', 4, 2, NULL, NULL);
INSERT INTO `kasus` (`id`, `nomor_kasus`, `kepribadian_id`, `ciri_id`, `created_at`, `updated_at`) VALUES (29, '8', 4, 3, NULL, NULL);
INSERT INTO `kasus` (`id`, `nomor_kasus`, `kepribadian_id`, `ciri_id`, `created_at`, `updated_at`) VALUES (30, '8', 4, 5, NULL, NULL);
INSERT INTO `kasus` (`id`, `nomor_kasus`, `kepribadian_id`, `ciri_id`, `created_at`, `updated_at`) VALUES (31, '8', 4, 6, NULL, NULL);
INSERT INTO `kasus` (`id`, `nomor_kasus`, `kepribadian_id`, `ciri_id`, `created_at`, `updated_at`) VALUES (32, '8', 4, 7, NULL, NULL);
INSERT INTO `kasus` (`id`, `nomor_kasus`, `kepribadian_id`, `ciri_id`, `created_at`, `updated_at`) VALUES (33, '8', 4, 8, NULL, NULL);
INSERT INTO `kasus` (`id`, `nomor_kasus`, `kepribadian_id`, `ciri_id`, `created_at`, `updated_at`) VALUES (34, '9', 4, 1, NULL, NULL);
INSERT INTO `kasus` (`id`, `nomor_kasus`, `kepribadian_id`, `ciri_id`, `created_at`, `updated_at`) VALUES (35, '9', 4, 3, NULL, NULL);
INSERT INTO `kasus` (`id`, `nomor_kasus`, `kepribadian_id`, `ciri_id`, `created_at`, `updated_at`) VALUES (36, '9', 4, 4, NULL, NULL);
INSERT INTO `kasus` (`id`, `nomor_kasus`, `kepribadian_id`, `ciri_id`, `created_at`, `updated_at`) VALUES (37, '9', 4, 5, NULL, NULL);
INSERT INTO `kasus` (`id`, `nomor_kasus`, `kepribadian_id`, `ciri_id`, `created_at`, `updated_at`) VALUES (38, '9', 4, 6, NULL, NULL);
INSERT INTO `kasus` (`id`, `nomor_kasus`, `kepribadian_id`, `ciri_id`, `created_at`, `updated_at`) VALUES (39, '9', 4, 7, NULL, NULL);
INSERT INTO `kasus` (`id`, `nomor_kasus`, `kepribadian_id`, `ciri_id`, `created_at`, `updated_at`) VALUES (40, '9', 4, 8, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for kepribadian
-- ----------------------------
DROP TABLE IF EXISTS `kepribadian`;
CREATE TABLE `kepribadian` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kepribadian
-- ----------------------------
BEGIN;
INSERT INTO `kepribadian` (`id`, `nama`) VALUES (1, 'Eksttrovert, Pemikir, Kreatif');
INSERT INTO `kepribadian` (`id`, `nama`) VALUES (2, 'Introvert, Perasa, Logis');
INSERT INTO `kepribadian` (`id`, `nama`) VALUES (3, 'Ekstrovert, Pemikir, Logis');
INSERT INTO `kepribadian` (`id`, `nama`) VALUES (4, 'Introvert, Perasa, Kreatif');
COMMIT;

-- ----------------------------
-- Table structure for role_users
-- ----------------------------
DROP TABLE IF EXISTS `role_users`;
CREATE TABLE `role_users` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  UNIQUE KEY `role_users_user_id_role_id_unique` (`user_id`,`role_id`) USING BTREE,
  KEY `role_users_role_id_foreign` (`role_id`) USING BTREE,
  CONSTRAINT `role_users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of role_users
-- ----------------------------
BEGIN;
INSERT INTO `role_users` (`user_id`, `role_id`) VALUES (1, 1);
INSERT INTO `role_users` (`user_id`, `role_id`) VALUES (5, 2);
COMMIT;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of roles
-- ----------------------------
BEGIN;
INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'superadmin', '2020-12-23 23:17:35', '2020-12-23 23:17:35');
INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'user', '2023-11-25 09:02:02', '2023-11-25 09:02:02');
COMMIT;

-- ----------------------------
-- Table structure for tes
-- ----------------------------
DROP TABLE IF EXISTS `tes`;
CREATE TABLE `tes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `ciri_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes
-- ----------------------------
BEGIN;
INSERT INTO `tes` (`id`, `user_id`, `ciri_id`) VALUES (1, 5, 1);
INSERT INTO `tes` (`id`, `user_id`, `ciri_id`) VALUES (2, 5, 2);
INSERT INTO `tes` (`id`, `user_id`, `ciri_id`) VALUES (3, 5, 3);
INSERT INTO `tes` (`id`, `user_id`, `ciri_id`) VALUES (4, 5, 5);
INSERT INTO `tes` (`id`, `user_id`, `ciri_id`) VALUES (5, 5, 7);
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `password` varchar(255) NOT NULL,
  `password_superadmin` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `api_token` varchar(255) DEFAULT NULL,
  `last_session` varchar(255) DEFAULT NULL,
  `change_password` int(1) unsigned DEFAULT '0' COMMENT '0: belum, 1: sudah',
  `nama_kelompok` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `users_username_unique` (`username`) USING BTREE,
  UNIQUE KEY `users_email_unique` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `password_superadmin`, `remember_token`, `created_at`, `updated_at`, `api_token`, `last_session`, `change_password`, `nama_kelompok`) VALUES (1, 'superadmin', NULL, 'superadmin', '2022-11-07 00:40:59', '$2y$10$E9xG1OtIFvBRbHqlwHCC3u48vO5eBf2OQ9wFNpi.qKOAzVqNDUdW2', NULL, NULL, '2022-11-07 00:40:59', '2022-11-06 16:40:59', '$2y$10$tjMANlV25IUwvKuPxEODW.3qE3zPSKjwhmgTcZUgsPDZRGcpgGAN.', NULL, 0, NULL);
INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `password_superadmin`, `remember_token`, `created_at`, `updated_at`, `api_token`, `last_session`, `change_password`, `nama_kelompok`) VALUES (5, 'adi', NULL, 'adi', '2023-11-25 09:18:03', '$2y$10$kNoRDvN/3k04mBN7cpKycu9TGgRmmnzrbrx1sAzCMzXW0DLIj58Ye', NULL, NULL, '2023-11-25 09:18:03', '2023-11-25 09:18:03', NULL, NULL, 0, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
