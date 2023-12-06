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

 Date: 06/12/2023 10:02:50
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
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for hasil
-- ----------------------------
DROP TABLE IF EXISTS `hasil`;
CREATE TABLE `hasil` (
  `id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `hasil` varchar(255) DEFAULT NULL,
  `kepribadian` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hasil
-- ----------------------------
BEGIN;
INSERT INTO `hasil` (`id`, `user_id`, `hasil`, `kepribadian`) VALUES (NULL, 5, '50', 'Introvert, Perasa, Logis');
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
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
COMMIT;

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------
BEGIN;
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES (3, 'App\\Models\\User', 6, 'adi2', 'c29dcab6df7e024af7cfe7d5b61077b8b75eec24e153a6df088e86099e98eae3', '[\"*\"]', NULL, '2023-12-05 23:54:35', '2023-12-05 23:54:35');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES (4, 'App\\Models\\User', 7, 'as', '21d32a38b4b5d926000327fbde95f8b86698a6b1afc0c712664885c133f9e260', '[\"*\"]', NULL, '2023-12-06 01:12:48', '2023-12-06 01:12:48');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES (6, 'App\\Models\\User', 9, 'ad', '56961abe325f215aa3d4d2fe7feaa64858c32beef12aaeddb0fd18fc3f9b750f', '[\"*\"]', NULL, '2023-12-06 01:16:30', '2023-12-06 01:16:30');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES (7, 'App\\Models\\User', 10, 'rt', '339084bb0e6bd542fa902aa920d4aec7ab58a0fae9eca9c67af8149da5837141', '[\"*\"]', NULL, '2023-12-06 01:17:18', '2023-12-06 01:17:18');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES (8, 'App\\Models\\User', 11, 'asep', '93893c0b16d499ca18486c56cabe43bfe54dae87957bf40594add01a5fd870d5', '[\"*\"]', NULL, '2023-12-06 01:19:15', '2023-12-06 01:19:15');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES (9, 'App\\Models\\User', 12, 'hh', '253079c98ead6c82cb67a8f5c9d0c339bd5f1e3bd0cd1d2b2b497541fc9b69b6', '[\"*\"]', NULL, '2023-12-06 01:21:09', '2023-12-06 01:21:09');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES (10, 'App\\Models\\User', 13, '11', '968c6446d85f788b9d6a9008a8bf9eb58254b4dcb328c431dd523da40b88799b', '[\"*\"]', NULL, '2023-12-06 01:23:36', '2023-12-06 01:23:36');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES (11, 'App\\Models\\User', 14, 'ee', 'a9a411ae7961caae515510bf05291ba38808061f3f05349c992beca3d767fe12', '[\"*\"]', NULL, '2023-12-06 01:23:56', '2023-12-06 01:23:56');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES (12, 'App\\Models\\User', 15, 'uu', '07aec7afe4ffa292dcb041ce78306dc1992e2e3ba968148441c24f3dedf8b9e2', '[\"*\"]', NULL, '2023-12-06 01:24:29', '2023-12-06 01:24:29');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES (13, 'App\\Models\\User', 16, 'yuji', 'fe8a8d4b54f6c1dab4b041870149ea084665888a2c8d152efdd2c4a362571423', '[\"*\"]', NULL, '2023-12-06 01:27:08', '2023-12-06 01:27:08');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES (15, 'App\\Models\\User', 8, 'ayu', '2e55667945b6b2914af2547e5bd08516ad22fe43682101ccea0c5ba7fe49a5a4', '[\"*\"]', '2023-12-06 06:58:09', '2023-12-06 06:34:45', '2023-12-06 06:58:09');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES (17, 'App\\Models\\User', 5, 'adi', '5bab96684b4596478b2a18176c35b1e0289e10c546e0fd2f6fb95d892d82aae5', '[\"*\"]', '2023-12-06 09:43:23', '2023-12-06 08:32:30', '2023-12-06 09:43:23');
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
INSERT INTO `role_users` (`user_id`, `role_id`) VALUES (6, 2);
INSERT INTO `role_users` (`user_id`, `role_id`) VALUES (7, 2);
INSERT INTO `role_users` (`user_id`, `role_id`) VALUES (8, 2);
INSERT INTO `role_users` (`user_id`, `role_id`) VALUES (9, 2);
INSERT INTO `role_users` (`user_id`, `role_id`) VALUES (10, 2);
INSERT INTO `role_users` (`user_id`, `role_id`) VALUES (11, 2);
INSERT INTO `role_users` (`user_id`, `role_id`) VALUES (12, 2);
INSERT INTO `role_users` (`user_id`, `role_id`) VALUES (13, 2);
INSERT INTO `role_users` (`user_id`, `role_id`) VALUES (14, 2);
INSERT INTO `role_users` (`user_id`, `role_id`) VALUES (15, 2);
INSERT INTO `role_users` (`user_id`, `role_id`) VALUES (16, 2);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes
-- ----------------------------
BEGIN;
INSERT INTO `tes` (`id`, `user_id`, `ciri_id`) VALUES (14, 5, 3);
INSERT INTO `tes` (`id`, `user_id`, `ciri_id`) VALUES (15, 5, 1);
INSERT INTO `tes` (`id`, `user_id`, `ciri_id`) VALUES (16, 5, 2);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `password_superadmin`, `remember_token`, `created_at`, `updated_at`, `api_token`, `last_session`, `change_password`, `nama_kelompok`) VALUES (1, 'superadmin', NULL, 'superadmin', '2022-11-07 00:40:59', '$2y$10$E9xG1OtIFvBRbHqlwHCC3u48vO5eBf2OQ9wFNpi.qKOAzVqNDUdW2', NULL, NULL, '2022-11-07 00:40:59', '2022-11-06 16:40:59', '$2y$10$tjMANlV25IUwvKuPxEODW.3qE3zPSKjwhmgTcZUgsPDZRGcpgGAN.', NULL, 0, NULL);
INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `password_superadmin`, `remember_token`, `created_at`, `updated_at`, `api_token`, `last_session`, `change_password`, `nama_kelompok`) VALUES (5, 'adi', NULL, 'adi', '2023-11-25 09:18:03', '$2y$10$kNoRDvN/3k04mBN7cpKycu9TGgRmmnzrbrx1sAzCMzXW0DLIj58Ye', NULL, NULL, '2023-11-25 09:18:03', '2023-11-25 09:18:03', NULL, NULL, 0, NULL);
INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `password_superadmin`, `remember_token`, `created_at`, `updated_at`, `api_token`, `last_session`, `change_password`, `nama_kelompok`) VALUES (6, 'asrrani', NULL, 'adi2', '2023-12-05 23:53:25', '$2y$10$BoFdWO5FVpvseZ/5DaUGkOJhpa8LzTYo9yttuteBpb6omGXbcUFLO', NULL, NULL, '2023-12-05 23:53:25', '2023-12-05 23:53:25', NULL, NULL, 0, NULL);
INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `password_superadmin`, `remember_token`, `created_at`, `updated_at`, `api_token`, `last_session`, `change_password`, `nama_kelompok`) VALUES (7, 'as', NULL, 'as', '2023-12-06 01:12:48', '$2y$10$adJ9XYaWCnVBjDamEDG2lOkO45Fqnevj38BgQxgx5HZoLvZNffCKK', NULL, NULL, '2023-12-06 01:12:48', '2023-12-06 01:12:48', NULL, NULL, 0, NULL);
INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `password_superadmin`, `remember_token`, `created_at`, `updated_at`, `api_token`, `last_session`, `change_password`, `nama_kelompok`) VALUES (8, 'ayu', NULL, 'ayu', '2023-12-06 01:15:31', '$2y$10$2e0ntBF78mIYKb.Q4nkOM.UqbMfMS2Oy3NzEbsMnl2Mp5gtTOsnrK', NULL, NULL, '2023-12-06 01:15:31', '2023-12-06 01:15:31', NULL, NULL, 0, NULL);
INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `password_superadmin`, `remember_token`, `created_at`, `updated_at`, `api_token`, `last_session`, `change_password`, `nama_kelompok`) VALUES (9, 'ad', NULL, 'ad', '2023-12-06 01:16:30', '$2y$10$0Ea71y8hDNmtRrWmiaSMCObbS/3Qq/.sWkL49Cy1iR7vC6bSiBIK.', NULL, NULL, '2023-12-06 01:16:30', '2023-12-06 01:16:30', NULL, NULL, 0, NULL);
INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `password_superadmin`, `remember_token`, `created_at`, `updated_at`, `api_token`, `last_session`, `change_password`, `nama_kelompok`) VALUES (10, 'rt', NULL, 'rt', '2023-12-06 01:17:18', '$2y$10$4jADBJx07UUQycdMGDzloOw8r2pG/CVLStPbjyzjbRUsclSlEfJ8q', NULL, NULL, '2023-12-06 01:17:18', '2023-12-06 01:17:18', NULL, NULL, 0, NULL);
INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `password_superadmin`, `remember_token`, `created_at`, `updated_at`, `api_token`, `last_session`, `change_password`, `nama_kelompok`) VALUES (11, 'asep', NULL, 'asep', '2023-12-06 01:19:15', '$2y$10$Xxgv9EiYRKekpc1qrhiDe.3tRgqAfWjzbn9s457Tzm1Jt6gEwvjDW', NULL, NULL, '2023-12-06 01:19:15', '2023-12-06 01:19:15', NULL, NULL, 0, NULL);
INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `password_superadmin`, `remember_token`, `created_at`, `updated_at`, `api_token`, `last_session`, `change_password`, `nama_kelompok`) VALUES (12, 'hh', NULL, 'hh', '2023-12-06 01:21:09', '$2y$10$E92q36n.EG0UBTVf0OJ8R.c5T6jbEg1R/3i0gSEvQ.6Fix9eiFBwC', NULL, NULL, '2023-12-06 01:21:09', '2023-12-06 01:21:09', NULL, NULL, 0, NULL);
INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `password_superadmin`, `remember_token`, `created_at`, `updated_at`, `api_token`, `last_session`, `change_password`, `nama_kelompok`) VALUES (13, '11', NULL, '11', '2023-12-06 01:23:36', '$2y$10$HnkiJ1GHni..KHIqD8TopeXhLvd4PUuQWoMDSuBZkOmj6Ii4U7UjO', NULL, NULL, '2023-12-06 01:23:36', '2023-12-06 01:23:36', NULL, NULL, 0, NULL);
INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `password_superadmin`, `remember_token`, `created_at`, `updated_at`, `api_token`, `last_session`, `change_password`, `nama_kelompok`) VALUES (14, 'ee', NULL, 'ee', '2023-12-06 01:23:56', '$2y$10$kO0ltEmbpv/o6g95WLvB6.PL296INdNKKJtZP/G0rWsUaJSYRTwT.', NULL, NULL, '2023-12-06 01:23:56', '2023-12-06 01:23:56', NULL, NULL, 0, NULL);
INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `password_superadmin`, `remember_token`, `created_at`, `updated_at`, `api_token`, `last_session`, `change_password`, `nama_kelompok`) VALUES (15, 'uu', NULL, 'uu', '2023-12-06 01:24:29', '$2y$10$zTeZzX9MTFEVG3esT.VxOuI9PsZfsRGthxNT07iRaPFZQ2QLs85Ni', NULL, NULL, '2023-12-06 01:24:29', '2023-12-06 01:24:29', NULL, NULL, 0, NULL);
INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `password_superadmin`, `remember_token`, `created_at`, `updated_at`, `api_token`, `last_session`, `change_password`, `nama_kelompok`) VALUES (16, 'yuji', NULL, 'yuji', '2023-12-06 01:27:08', '$2y$10$baz7NyiraeqcB3SqIrt0XO3qNmyzJ/urCBcREKzv.iWtFQWVNONDi', NULL, NULL, '2023-12-06 01:27:08', '2023-12-06 01:27:08', NULL, NULL, 0, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
