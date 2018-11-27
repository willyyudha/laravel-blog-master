-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.19 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for database_percobaan
CREATE DATABASE IF NOT EXISTS `database_percobaan` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `database_percobaan`;

-- Dumping structure for table database_percobaan.areas
CREATE TABLE IF NOT EXISTS `areas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_lft` int(10) unsigned NOT NULL DEFAULT '0',
  `_rgt` int(10) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `areas_slug_unique` (`slug`),
  KEY `areas__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table database_percobaan.areas: ~56 rows (approximately)
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;
INSERT INTO `areas` (`id`, `name`, `slug`, `_lft`, `_rgt`, `parent_id`, `created_at`, `updated_at`) VALUES
	(59, 'Bali', 'bali', 1, 112, NULL, '2018-11-27 08:15:50', '2018-11-27 08:15:50'),
	(60, 'Badung', 'bali-badung', 2, 15, 59, '2018-11-27 08:15:50', '2018-11-27 08:15:50'),
	(61, 'Abiansemal', 'badung-abiansemal', 3, 4, 60, '2018-11-27 08:15:50', '2018-11-27 08:15:50'),
	(62, 'Kuta Selatan', 'badung-kuta-selatan', 5, 6, 60, '2018-11-27 08:15:50', '2018-11-27 08:15:50'),
	(63, 'Kuta Utara', 'badung-kuta-utara', 7, 8, 60, '2018-11-27 08:15:50', '2018-11-27 08:15:50'),
	(64, 'Kuta', 'badung-kuta', 9, 10, 60, '2018-11-27 08:15:50', '2018-11-27 08:15:50'),
	(65, 'Mengwi', 'badung-mengwi', 11, 12, 60, '2018-11-27 08:15:50', '2018-11-27 08:15:50'),
	(66, 'Petang', 'badung-petang', 13, 14, 60, '2018-11-27 08:15:50', '2018-11-27 08:15:50'),
	(67, 'Denpasar', 'bali-denpasar', 16, 25, 59, '2018-11-27 08:15:50', '2018-11-27 08:15:50'),
	(68, 'Denpasar Barat', 'denpasar-denpasar-barat', 17, 18, 67, '2018-11-27 08:15:50', '2018-11-27 08:15:50'),
	(69, 'Denpasar Timur', 'denpasar-denpasar-timur', 19, 20, 67, '2018-11-27 08:15:50', '2018-11-27 08:15:50'),
	(70, 'Denpasar Selatan', 'denpasar-denpasar-selatan', 21, 22, 67, '2018-11-27 08:15:50', '2018-11-27 08:15:50'),
	(71, 'Denpasar Utara', 'denpasar-denpasar-utara', 23, 24, 67, '2018-11-27 08:15:50', '2018-11-27 08:15:50'),
	(72, 'Bangli', 'bali-bangli', 26, 35, 59, '2018-11-27 08:15:50', '2018-11-27 08:15:50'),
	(73, 'Bangli', 'bangli-bangli', 27, 28, 72, '2018-11-27 08:15:50', '2018-11-27 08:15:50'),
	(74, 'Kintamani', 'bangli-kintamani', 29, 30, 72, '2018-11-27 08:15:50', '2018-11-27 08:15:50'),
	(75, 'Susut', 'bangli-susut', 31, 32, 72, '2018-11-27 08:15:50', '2018-11-27 08:15:50'),
	(76, 'Abiansemal', 'bangli-abiansemal', 33, 34, 72, '2018-11-27 08:15:50', '2018-11-27 08:15:50'),
	(77, 'Karangasem', 'bali-karangasem', 36, 53, 59, '2018-11-27 08:15:50', '2018-11-27 08:15:50'),
	(78, 'Abang', 'karangasem-abang', 37, 38, 77, '2018-11-27 08:15:50', '2018-11-27 08:15:50'),
	(79, 'Bebandem', 'karangasem-bebandem', 39, 40, 77, '2018-11-27 08:15:51', '2018-11-27 08:15:51'),
	(80, 'Karangasem', 'karangasem-karangasem', 41, 42, 77, '2018-11-27 08:15:51', '2018-11-27 08:15:51'),
	(81, 'Kubu', 'karangasem-kubu', 43, 44, 77, '2018-11-27 08:15:51', '2018-11-27 08:15:51'),
	(82, 'Manggis', 'karangasem-manggis', 45, 46, 77, '2018-11-27 08:15:51', '2018-11-27 08:15:51'),
	(83, 'Rendang', 'karangasem-rendang', 47, 48, 77, '2018-11-27 08:15:51', '2018-11-27 08:15:51'),
	(84, 'Selat', 'karangasem-selat', 49, 50, 77, '2018-11-27 08:15:51', '2018-11-27 08:15:51'),
	(85, 'Sidemen', 'karangasem-sidemen', 51, 52, 77, '2018-11-27 08:15:51', '2018-11-27 08:15:51'),
	(86, 'Buleleng', 'bali-buleleng', 54, 73, 59, '2018-11-27 08:15:51', '2018-11-27 08:15:51'),
	(87, 'Banjar', 'buleleng-banjar', 55, 56, 86, '2018-11-27 08:15:51', '2018-11-27 08:15:51'),
	(88, 'Buleleng', 'buleleng-buleleng', 57, 58, 86, '2018-11-27 08:15:51', '2018-11-27 08:15:51'),
	(89, 'Busung Biu', 'buleleng-busung-biu', 59, 60, 86, '2018-11-27 08:15:51', '2018-11-27 08:15:51'),
	(90, 'Gerokgak', 'buleleng-gerokgak', 61, 62, 86, '2018-11-27 08:15:51', '2018-11-27 08:15:51'),
	(91, 'Kubutambahan', 'buleleng-kubutambahan', 63, 64, 86, '2018-11-27 08:15:51', '2018-11-27 08:15:51'),
	(92, 'Sawan', 'buleleng-sawan', 65, 66, 86, '2018-11-27 08:15:51', '2018-11-27 08:15:51'),
	(93, 'Sukasada', 'buleleng-sukasada', 67, 68, 86, '2018-11-27 08:15:51', '2018-11-27 08:15:51'),
	(94, 'Tejakula', 'buleleng-tejakula', 69, 70, 86, '2018-11-27 08:15:51', '2018-11-27 08:15:51'),
	(95, 'Seririt', 'buleleng-seririt', 71, 72, 86, '2018-11-27 08:15:51', '2018-11-27 08:15:51'),
	(96, 'Gianyar', 'bali-gianyar', 74, 89, 59, '2018-11-27 08:15:51', '2018-11-27 08:15:51'),
	(97, 'Blahbatuh', 'gianyar-blahbatuh', 75, 76, 96, '2018-11-27 08:15:51', '2018-11-27 08:15:51'),
	(98, 'Gianyar', 'gianyar-gianyar', 77, 78, 96, '2018-11-27 08:15:51', '2018-11-27 08:15:51'),
	(99, 'Payangan', 'gianyar-payangan', 79, 80, 96, '2018-11-27 08:15:51', '2018-11-27 08:15:51'),
	(100, 'Sukawati', 'gianyar-sukawati', 81, 82, 96, '2018-11-27 08:15:52', '2018-11-27 08:15:52'),
	(101, 'Tampaksiring', 'gianyar-tampaksiring', 83, 84, 96, '2018-11-27 08:15:52', '2018-11-27 08:15:52'),
	(102, 'Tegallalang', 'gianyar-tegallalang', 85, 86, 96, '2018-11-27 08:15:52', '2018-11-27 08:15:52'),
	(103, 'Ubud', 'gianyar-ubud', 87, 88, 96, '2018-11-27 08:15:52', '2018-11-27 08:15:52'),
	(104, 'Klungkung', 'bali-klungkung', 90, 99, 59, '2018-11-27 08:15:52', '2018-11-27 08:15:52'),
	(105, 'Banjararangkan', 'klungkung-banjararangkan', 91, 92, 104, '2018-11-27 08:15:52', '2018-11-27 08:15:52'),
	(106, 'Dawan', 'klungkung-dawan', 93, 94, 104, '2018-11-27 08:15:52', '2018-11-27 08:15:52'),
	(107, 'Klungkung', 'klungkung-klungkung', 95, 96, 104, '2018-11-27 08:15:52', '2018-11-27 08:15:52'),
	(108, 'Nusa Penida', 'klungkung-nusa-penida', 97, 98, 104, '2018-11-27 08:15:52', '2018-11-27 08:15:52'),
	(109, 'Jembrana', 'bali-jembrana', 100, 111, 59, '2018-11-27 08:15:52', '2018-11-27 08:15:52'),
	(110, 'Jembrana', 'jembrana-jembrana', 101, 102, 109, '2018-11-27 08:15:52', '2018-11-27 08:15:52'),
	(111, 'Melaya', 'jembrana-melaya', 103, 104, 109, '2018-11-27 08:15:52', '2018-11-27 08:15:52'),
	(112, 'Mendoyo', 'jembrana-mendoyo', 105, 106, 109, '2018-11-27 08:15:52', '2018-11-27 08:15:52'),
	(113, 'Negara', 'jembrana-negara', 107, 108, 109, '2018-11-27 08:15:52', '2018-11-27 08:15:52'),
	(114, 'Pekutatan', 'jembrana-pekutatan', 109, 110, 109, '2018-11-27 08:15:52', '2018-11-27 08:15:52');
/*!40000 ALTER TABLE `areas` ENABLE KEYS */;

-- Dumping structure for table database_percobaan.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `_lft` int(10) unsigned NOT NULL DEFAULT '0',
  `_rgt` int(10) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table database_percobaan.categories: ~24 rows (approximately)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`, `slug`, `price`, `_lft`, `_rgt`, `parent_id`, `created_at`, `updated_at`) VALUES
	(1, 'Komunitas', 'komunitas', 0.00, 1, 20, NULL, '2018-11-27 08:15:52', '2018-11-27 08:15:52'),
	(2, 'Programming', 'komunitas-programming', 0.00, 2, 3, 1, '2018-11-27 08:15:52', '2018-11-27 08:15:52'),
	(3, 'Seni', 'komunitas-seni', 0.00, 4, 5, 1, '2018-11-27 08:15:52', '2018-11-27 08:15:52'),
	(4, 'Kesehatan', 'komunitas-kesehatan', 0.00, 6, 7, 1, '2018-11-27 08:15:52', '2018-11-27 08:15:52'),
	(5, 'Berita Lokal', 'komunitas-berita-lokal', 0.00, 8, 9, 1, '2018-11-27 08:15:52', '2018-11-27 08:15:52'),
	(6, 'Barang Hilang', 'komunitas-barang-hilang', 0.00, 10, 11, 1, '2018-11-27 08:15:52', '2018-11-27 08:15:52'),
	(7, 'Acara', 'komunitas-acara', 0.00, 12, 13, 1, '2018-11-27 08:15:52', '2018-11-27 08:15:52'),
	(8, 'Musik', 'komunitas-musik', 0.00, 14, 15, 1, '2018-11-27 08:15:53', '2018-11-27 08:15:53'),
	(9, 'Politik', 'komunitas-politik', 0.00, 16, 17, 1, '2018-11-27 08:15:53', '2018-11-27 08:15:53'),
	(10, 'Pecinta Hewan', 'komunitas-pecinta-hewan', 0.00, 18, 19, 1, '2018-11-27 08:15:53', '2018-11-27 08:15:53'),
	(11, 'Personal', 'personal', 0.00, 21, 32, NULL, '2018-11-27 08:15:53', '2018-11-27 08:15:53'),
	(12, 'Percintaan', 'personal-percintaan', 0.00, 22, 23, 11, '2018-11-27 08:15:53', '2018-11-27 08:15:53'),
	(13, 'Pria mencari wanita', 'personal-pria-mencari-wanita', 0.00, 24, 25, 11, '2018-11-27 08:15:53', '2018-11-27 08:15:53'),
	(14, 'Wanita mencari pria', 'personal-wanita-mencari-pria', 0.00, 26, 27, 11, '2018-11-27 08:15:53', '2018-11-27 08:15:53'),
	(15, 'Komunikasi', 'personal-komunikasi', 0.00, 28, 29, 11, '2018-11-27 08:15:53', '2018-11-27 08:15:53'),
	(16, 'Kontrol Emosi', 'personal-kontrol-emosi', 0.00, 30, 31, 11, '2018-11-27 08:15:53', '2018-11-27 08:15:53'),
	(17, 'Tempat Tinggal', 'tempat-tinggal', 0.00, 33, 48, NULL, '2018-11-27 08:15:53', '2018-11-27 08:15:53'),
	(18, 'Apartement / rumah', 'tempat-tinggal-apartement-rumah', 0.00, 34, 35, 17, '2018-11-27 08:15:53', '2018-11-27 08:15:53'),
	(19, 'Kos', 'tempat-tinggal-kos', 0.00, 36, 37, 17, '2018-11-27 08:15:53', '2018-11-27 08:15:53'),
	(20, 'Bungalo', 'tempat-tinggal-bungalo', 0.00, 38, 39, 17, '2018-11-27 08:15:53', '2018-11-27 08:15:53'),
	(21, 'Hotel', 'tempat-tinggal-hotel', 0.00, 40, 41, 17, '2018-11-27 08:15:53', '2018-11-27 08:15:53'),
	(22, 'Villa', 'tempat-tinggal-villa', 0.00, 42, 43, 17, '2018-11-27 08:15:53', '2018-11-27 08:15:53'),
	(23, 'Paket Liburan', 'tempat-tinggal-paket-liburan', 0.00, 44, 45, 17, '2018-11-27 08:15:53', '2018-11-27 08:15:53'),
	(24, 'Guest House', 'tempat-tinggal-guest-house', 0.00, 46, 47, 17, '2018-11-27 08:15:53', '2018-11-27 08:15:53');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table database_percobaan.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table database_percobaan.migrations: ~4 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(4, '2014_10_12_000000_create_users_table', 1),
	(5, '2014_10_12_100000_create_password_resets_table', 1),
	(6, '2018_11_25_073800_create_areas_table', 1),
	(7, '2018_11_27_071958_create_categories_table', 2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table database_percobaan.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table database_percobaan.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table database_percobaan.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table database_percobaan.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'yudha', 'yudha@gmail.com', '$2y$10$qYAzZYiPQ6joGHlBD.WM4eMwdycqA4Y34Pf4Zix6S40QM9sXsI.s2', 'OWMA7ByzPvTvg2MZ8DErxiZKiH3v1VOrQ16A22Zjorac7ndAq9X9iL2abpUQ', '2018-11-25 15:34:24', '2018-11-25 15:34:24');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
