-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for bpjsantrian
DROP DATABASE IF EXISTS `bpjsantrian`;
CREATE DATABASE IF NOT EXISTS `bpjsantrian` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `bpjsantrian`;

-- Dumping structure for table bpjsantrian.dokters
DROP TABLE IF EXISTS `dokters`;
CREATE TABLE IF NOT EXISTS `dokters` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kodedokter` char(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namadokter` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kodepoli` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jampraktek` char(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bpjsantrian.dokters: ~0 rows (approximately)
/*!40000 ALTER TABLE `dokters` DISABLE KEYS */;
REPLACE INTO `dokters` (`id`, `kodedokter`, `namadokter`, `kodepoli`, `jampraktek`, `created_at`, `updated_at`) VALUES
	(2, '23456', 'Dr. Maman Surhahman', 'INT', '08.00-16.00', NULL, NULL);
/*!40000 ALTER TABLE `dokters` ENABLE KEYS */;

-- Dumping structure for table bpjsantrian.jadwalpolis
DROP TABLE IF EXISTS `jadwalpolis`;
CREATE TABLE IF NOT EXISTS `jadwalpolis` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kodepoli` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namahari` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kuota` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bpjsantrian.jadwalpolis: ~22 rows (approximately)
/*!40000 ALTER TABLE `jadwalpolis` DISABLE KEYS */;
REPLACE INTO `jadwalpolis` (`id`, `kodepoli`, `namahari`, `kuota`, `created_at`, `updated_at`, `status`) VALUES
	(1, 'JIW', 'Senin', 20, '2020-11-10 00:00:00', '2020-11-10 00:00:00', '1'),
	(2, 'INT', 'Selasa', 2, '2020-11-10 00:00:00', '2020-11-10 00:00:00', '1'),
	(3, 'GIG', 'Selasa', 20, '2020-11-10 00:00:00', '2020-11-10 00:00:00', '1'),
	(4, 'OBG', 'Selasa', 21, '2020-11-10 00:00:00', '2020-11-10 00:00:00', '1'),
	(5, 'BED', 'Selasa', 20, '2020-11-10 00:00:00', '2020-11-10 00:00:00', '1'),
	(6, 'MAT', 'Selasa', 20, '2020-11-10 00:00:00', '2020-11-10 00:00:00', '1'),
	(7, 'KLT', 'Selasa', 20, '2020-11-10 00:00:00', '2020-11-10 00:00:00', '1'),
	(8, 'THT', 'Selasa', 20, '2020-11-10 00:00:00', '2020-11-10 00:00:00', '1'),
	(9, 'ANA', 'Selasa', 20, '2020-11-10 00:00:00', '2020-11-10 00:00:00', '1'),
	(10, 'ORT', 'Selasa', 20, '2020-11-10 00:00:00', '2020-11-10 00:00:00', '1'),
	(11, 'JAN', 'Selasa', 20, '2020-11-10 00:00:00', '2020-11-10 00:00:00', '1'),
	(12, 'SAR', 'Selasa', 20, '2020-11-10 00:00:00', '2020-11-10 00:00:00', '1'),
	(13, 'PAR', 'Selasa', 20, '2020-11-10 00:00:00', '2020-11-10 00:00:00', '1'),
	(14, '030', 'Selasa', 20, '2020-11-10 00:00:00', '2020-11-10 00:00:00', '1'),
	(15, 'INT', 'Senin', 20, '2020-11-10 00:00:00', '2020-11-10 00:00:00', '1'),
	(16, 'INT', 'Rabu', 10, '2020-11-10 00:00:00', '2020-11-10 00:00:00', '1'),
	(17, 'INT', 'Kamis', 20, '2020-11-10 00:00:00', '2020-11-10 00:00:00', '1'),
	(18, 'INT', 'Jumat', 20, '2020-11-10 00:00:00', '2020-11-10 00:00:00', '1'),
	(19, 'OBG', 'Senin', 5, '2020-11-10 00:00:00', '2020-11-10 00:00:00', '1'),
	(20, 'OBG', 'Rabu', 10, '2020-11-10 00:00:00', '2020-11-10 00:00:00', '1'),
	(21, 'OBG', 'Kamis', 20, '2020-11-10 00:00:00', '2020-11-10 00:00:00', '1'),
	(22, 'OBG', 'Jumat', 20, '2020-11-10 00:00:00', '2020-11-10 00:00:00', '1');
/*!40000 ALTER TABLE `jadwalpolis` ENABLE KEYS */;

-- Dumping structure for table bpjsantrian.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bpjsantrian.migrations: ~7 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
REPLACE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2021_07_01_173204_create_produk_table', 1),
	(2, '2021_07_01_181624_create_users_table', 2),
	(3, '2021_07_03_055109_create_polis_table', 3),
	(4, '2021_07_03_060828_create_operasis_table', 3),
	(5, '2021_07_03_060850_create_jadwalpolis_table', 3),
	(6, '2021_07_03_060915_create_referensis_table', 3),
	(7, '2021_07_03_060930_create_dokters_table', 3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table bpjsantrian.no_antrian_ruangan
DROP TABLE IF EXISTS `no_antrian_ruangan`;
CREATE TABLE IF NOT EXISTS `no_antrian_ruangan` (
  `kodepoli` char(10) NOT NULL,
  `tanggalperiksa` date NOT NULL,
  `NOMOR` smallint(6) NOT NULL AUTO_INCREMENT,
  `kodebooking` varchar(20) NOT NULL DEFAULT '0',
  `kodedokter` int(5) NOT NULL DEFAULT '0',
  `namadokter` varchar(50) NOT NULL DEFAULT '0',
  `jampraktek` varchar(11) NOT NULL,
  `norm` varchar(10) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `kodeantri` varchar(1) NOT NULL,
  `namapoli` varchar(20) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `nomorkartu` varchar(45) NOT NULL,
  `nik` varchar(45) NOT NULL,
  `notelp` varchar(15) NOT NULL,
  `nomorreferensi` varchar(45) NOT NULL,
  `jeniskunjungan` int(1) NOT NULL,
  `waktuperiksa` char(15) NOT NULL DEFAULT '0',
  `statusperiksa` char(1) NOT NULL DEFAULT '0' COMMENT '1=terpanggil',
  `checkin` char(1) NOT NULL DEFAULT '0' COMMENT '1=checkin 2=batal',
  `keterangan` char(50) NOT NULL DEFAULT '0',
  `carabayar` char(50) NOT NULL DEFAULT 'BPJS',
  PRIMARY KEY (`kodepoli`,`tanggalperiksa`,`NOMOR`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table bpjsantrian.no_antrian_ruangan: 25 rows
/*!40000 ALTER TABLE `no_antrian_ruangan` DISABLE KEYS */;
REPLACE INTO `no_antrian_ruangan` (`kodepoli`, `tanggalperiksa`, `NOMOR`, `kodebooking`, `kodedokter`, `namadokter`, `jampraktek`, `norm`, `name`, `kodeantri`, `namapoli`, `created_at`, `updated_at`, `nomorkartu`, `nik`, `notelp`, `nomorreferensi`, `jeniskunjungan`, `waktuperiksa`, `statusperiksa`, `checkin`, `keterangan`, `carabayar`) VALUES
	('INT', '2021-07-30', 1, 'LR8lICJi0LgSYDM7k0Mp', 23456, 'Dr. Maman Surhahman', '08.00-14.00', '909', NULL, 'B', 'Dalam', '2021-07-03 14:40:38', '2021-07-03 14:40:38', '9776907730790', '3506141308950052', '081123456778', '0001R0040146A000001', 1, '1627603200000', '1', '0', '0', '1'),
	('INT', '2021-07-30', 2, 'aH5DcfktCzF54KJ8Ke3V', 23456, 'Dr. Maman Surhahman', '08.00-14.00', '909', NULL, 'B', 'Dalam', '2021-07-03 14:40:50', '2021-07-03 14:40:50', '9776907730790', '3506141308950052', '081123456778', '0001R0040146A000001', 1, '1627603500000', '0', '0', '0', '1'),
	('INT', '2021-07-30', 3, 'zfahGF9rdL6m8akatT2h', 23456, 'Dr. Maman Surhahman', '08.00-14.00', '909', NULL, 'B', 'Dalam', '2021-07-03 14:46:05', '2021-07-03 14:46:05', '9776907730798', '3506141308950052', '0811234567789', '0001R0040146A000001', 1, '1627603800000', '0', '0', '0', '1'),
	('INT', '2021-07-30', 4, 'JWNzo2SjP4EvHGXuu5ok', 23456, 'Dr. Maman Surhahman', '08.00-14.00', '909', NULL, 'B', 'Dalam', '2021-07-03 14:46:33', '2021-07-03 14:46:33', '9776907737798', '3506141308950052', '0811234567789', '0001R0040146A000001', 1, '1627604100000', '0', '2', 'acara kawinan', '1'),
	('INT', '2021-07-05', 1, 'gMAYxtLdQYZUA0OZQCIz', 23456, 'Dr. Maman Surhahman', '08.00-14.00', '909', NULL, 'B', 'Dalam', '2021-07-03 15:22:33', '2021-07-03 15:22:33', '9776907730590', '3506141308950052', '0811234567789', '0001R0040146A000001', 1, '1625443200000', '0', '0', '0', '1'),
	('INT', '2021-08-05', 1, 'b3bXhIneadrDZfKa2W4Z', 23456, 'Dr. Maman Surhahman', '08.00-14.00', '909', NULL, 'B', 'Dalam', '2021-08-04 09:42:38', '2021-08-04 09:42:38', '9776907730790', '3506141308950052', '081123456778', '0001R0040146A000001', 1, '1628121600000', '0', '0', '0', '1'),
	('INT', '2021-08-05', 2, 'eGigF6WmWarZM6oT40DQ', 23456, 'Dr. Maman Surhahman', '08.00-14.00', '909', NULL, 'B', 'Dalam', '2021-08-04 09:36:59', '2021-08-04 09:36:59', '0002073834099', '3506141308950052', '081123456778', '0001R0040146A000001', 1, '1628121900000', '0', '0', '0', '1'),
	('INT', '2021-08-05', 3, '5tEKK1OAcbj55UslH754', 23456, 'Dr. Maman Surhahman', '08.00-14.00', '909', NULL, 'B', 'Dalam', '2021-08-04 09:59:41', '2021-08-04 09:59:41', '0000165533769', '3506141308950052', '081123456778', '0001R0040146A000001', 1, '1628122200000', '0', '0', '0', '1'),
	('INT', '2021-08-10', 1, 'FHkL9aKNRekZsaZoLGYd', 23456, 'Dr. Maman Surhahman', '08.00-14.00', '909', NULL, 'B', 'Dalam', '2021-08-09 04:35:51', '2021-08-09 04:35:51', '0000165533769', '3506141308950052', '081123456778', '0001R0040146A000001', 1, '1628578800000', '0', '0', '0', '1'),
	('INT', '2021-08-11', 1, 'WZHq4mi75mM4tqeVBDSM', 23456, 'IDA MUKHOLIFAH', '08.00-14.00', '909', NULL, 'B', 'Dalam', '2021-08-09 04:44:39', '2021-08-09 04:44:39', '0000165533769', '3506141308950052', '081123456778', '0001R0040146A000001', 1, '1628665200000', '0', '0', '0', '1'),
	('INT', '2021-08-12', 1, 'nhYvmRjJu473p5AzZGR4', 23456, 'Dr. Maman Surhahman', '08.00-14.00', '909', 'IDA MUKHOLIFAH', 'B', 'Dalam', '2021-08-09 04:48:50', '2021-08-09 04:48:50', '0000165533769', '3506141308950052', '081123456778', '0001R0040146A000001', 1, '1628751600000', '0', '0', '0', '2'),
	('INT', '2021-08-13', 1, 'qst7hEVnaiBcZNncHQ9Y', 23456, 'Dr. Maman Surhahman', '08.00-14.00', '909', 'IDA MUKHOLIFAH', 'B', 'Dalam', '2021-08-09 04:50:35', '2021-08-09 04:50:35', '0000165533769', '3506141308950052', '081123456778', '0001R0040146A000001', 1, '1628838000000', '0', '0', '0', '1'),
	('1', '2021-08-16', 1, 'WjTUtgBx7xGrE77q7g5E', 0, 'tidka ada', '0', '5', 'INDAH DIAN NOPITA, An', 'T', '1', '2021-08-16 07:16:34', '2021-08-16 07:16:34', '0', '0', '0', '1', 1, '0', '0', '0', '0', '1'),
	('INT', '2021-08-16', 1, '1N5MDPjzAYtWAtjTo41R', 0, 'tidka ada', '0', '5', 'INDAH DIAN NOPITA, An', 'T', '1', '2021-08-16 07:21:07', '2021-08-16 07:21:07', '0', '0', '0', '1', 1, '0', '0', '0', '0', '1'),
	('INT', '2021-08-16', 2, 'UVux4qJnTyIFT3KhYdEA', 0, 'tidka ada', '0', '5', 'INDAH DIAN NOPITA, An', 'T', '1', '2021-08-16 07:21:30', '2021-08-16 07:21:30', '0', '0', '0', '1', 1, '0', '0', '0', '0', '1'),
	('JIW', '2021-08-16', 1, 'NjasSICmR6Yw5fMOfKsO', 0, 'tidka ada', '0', '1', 'Nimah ', 'A', '{"namapoli":"Jiwa"}', '2021-08-16 23:51:52', '2021-08-16 23:51:52', '0', '0', '0', '1', 1, '0', '0', '0', '0', '1'),
	('JIW', '2021-08-16', 2, 'mEOj2wStTFAhI7oWf51x', 0, 'tidka ada', '0', '1', 'Nimah ', 'A', '{"namapoli":"Jiwa"}', '2021-08-16 23:52:31', '2021-08-16 23:52:31', '0', '0', '0', '1', 1, '0', '0', '0', '0', '1'),
	('JIW', '2021-08-16', 3, 'mn6qo5UfVwHQE4DE2DT1', 0, 'tidka ada', '0', '2', 'mastur ', 'A', '{"namapoli":"Jiwa"}', '2021-08-16 23:58:13', '2021-08-16 23:58:13', '0', '0', '0', '1', 1, '0', '0', '0', '0', '1'),
	('INT', '2021-08-18', 2, 'F28e4lmLqUW83cEEbVld', 0, 'tidka ada', '0', '1', 'YULIATI MASRIAH, Ny', 'B', 'Dalam', '2021-08-18 08:24:08', '2021-08-18 08:24:08', '0', '0', '0', '1', 1, '0', '0', '0', '0', 'Umum'),
	('BED', '2021-08-17', 1, 'XVLeYTfwNwN3HbonMgLr', 0, 'tidka ada', '0', '0', 'Minawati2', 'E', 'Bedah', '2021-08-17 22:14:26', '2021-08-17 22:14:26', '0', '1234567890987654', '11111111111', '1', 1, '0', '0', '0', '0', 'Umum'),
	('KLT', '2021-08-17', 1, 'iHeeloWDlEqHhauovP9G', 0, 'tidka ada', '0', '0', 'munir', 'G', 'Kulit', '2021-08-17 22:17:09', '2021-08-17 22:17:09', '0', '1234567890989654', '11111111111', '1', 1, '0', '0', '0', '0', 'BPJS'),
	('PAR', '2021-08-17', 1, 'ciVAoQdPiwBblt39cA7V', 0, 'tidka ada', '0', '0', 'Minawati2', 'M', 'Dot', '2021-08-17 22:33:13', '2021-08-17 22:33:13', '0', '7898767898765654', '11111111111', '1', 1, '0', '0', '0', '0', 'Umum'),
	('INT', '2021-08-18', 1, 'yGUlfpPmRbMBKdZB3wdA', 0, 'tidka ada', '0', '1284461', 'DADANG APANDI NUR', 'B', 'Dalam', '2021-08-18 08:20:30', '2021-08-18 08:20:30', '0', '0', '0', '1', 1, '0', '0', '0', '0', 'Umum'),
	('INT', '2021-08-17', 1, 'e7137ypa8VzMmNczpJGi', 0, 'tidka ada', '0', '0', 'Minawati2', 'B', 'Dalam', '2021-08-17 22:04:14', '2021-08-17 22:04:14', '0', '7898767898765678', '11111111111', '1', 1, '0', '0', '0', '0', 'Umum'),
	('INT', '2021-08-17', 2, 'MQifwkE5Mp2ed24xrZWl', 0, 'tidka ada', '0', '0', 'Minawati2', 'B', 'Dalam', '2021-08-17 22:04:42', '2021-08-17 22:04:42', '0', '78987678987656784', '11111111111', '1', 1, '0', '0', '0', '0', 'BPJS');
/*!40000 ALTER TABLE `no_antrian_ruangan` ENABLE KEYS */;

-- Dumping structure for table bpjsantrian.operasis
DROP TABLE IF EXISTS `operasis`;
CREATE TABLE IF NOT EXISTS `operasis` (
  `kodebooking` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggaloperasi` date NOT NULL,
  `jenistindakan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kodepoli` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namapoli` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `terlaksana` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nopeserta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastupdate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bpjsantrian.operasis: ~6 rows (approximately)
/*!40000 ALTER TABLE `operasis` DISABLE KEYS */;
REPLACE INTO `operasis` (`kodebooking`, `tanggaloperasi`, `jenistindakan`, `kodepoli`, `namapoli`, `terlaksana`, `nopeserta`, `lastupdate`) VALUES
	('6785gghyyj6767', '2020-11-18', 'O', '001', '', '1', '3454544524', '1577417743000'),
	('6785gghyyj6767', '2020-11-18', 'Operasi katarak dan Mata', 'INT', 'Jantung', '1', '435245435', '1577417743000'),
	('', '2020-11-19', 'Operasi Payu Dara dan Operasi Naon we lah ', 'JIW', 'Jiwa', '1', '234234324', '453454534454'),
	('', '2020-11-20', 'adsfjadlfk', 'jiw', 'Jiwa', '1', 'a43543545', '23434324'),
	('6785gghyyj67676', '2020-11-04', 'adfadf', 'JIW', 'Jiwa', '1', '123456789234', '2353425454'),
	('6785gghyyj67676', '2020-11-11', 'Operasi Payu Dara dan Operasi Naon we lah ', 'JIW', 'Dalam', '1', '1234567891234', '425435245245');
/*!40000 ALTER TABLE `operasis` ENABLE KEYS */;

-- Dumping structure for table bpjsantrian.polis
DROP TABLE IF EXISTS `polis`;
CREATE TABLE IF NOT EXISTS `polis` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kodepoli` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namapoli` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kodeantri` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namadokter` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statuspoli` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bpjsantrian.polis: ~15 rows (approximately)
/*!40000 ALTER TABLE `polis` DISABLE KEYS */;
REPLACE INTO `polis` (`id`, `kodepoli`, `namapoli`, `kodeantri`, `namadokter`, `statuspoli`, `created_at`, `updated_at`) VALUES
	(1, 'JIW', 'Jiwa', 'A', 'R.M. Willy Indrawillis, Sp.KJ', '0', '2020-11-10 07:00:00', '2020-11-10 07:00:00'),
	(2, 'INT', 'Dalam', 'B', 'Melly Ismelia, Sp.PD', '0', '2020-11-10 07:00:00', '2020-11-10 07:00:00'),
	(3, 'GIG', 'Gigi', 'C', 'drg. Minessa Mahardika', '0', '2020-11-10 07:00:00', '2020-11-10 07:00:00'),
	(4, 'OBG', 'Kebidanan', 'D', 'dr. H. Dadan Susandi, Sp.OG', '0', '2020-11-10 07:00:00', '2020-11-10 07:00:00'),
	(5, 'BED', 'Bedah', 'E', 'Mohammad Rizal Isburhan, Sp.B', '0', '2020-11-10 07:00:00', '2020-11-10 07:00:00'),
	(6, 'MAT', 'Mata', 'F', 'Laila Wahyuni, Sp.M', '0', '2020-11-10 07:00:00', '2020-11-10 07:00:00'),
	(7, 'KLT', 'Kulit', 'G', 'Hilman Wildan Latief, Sp.DV', '0', '2020-11-10 07:00:00', '2020-11-10 07:00:00'),
	(8, 'THT', 'THT', 'H', 'dr. H. W. Gunawan K, Sp.THT-KL', '0', '2020-11-10 07:00:00', '2020-11-10 07:00:00'),
	(9, 'ANA', 'Anak', 'I', 'Mustakim, Sp.A', '0', '2020-11-10 07:00:00', '2020-11-10 07:00:00'),
	(10, 'ORT', 'Orthopedi', 'J', 'Iwan Hipsa A., Sp.OT', '0', '2020-11-10 07:00:00', '2020-11-10 07:00:00'),
	(11, 'JAN', 'Jantung', 'K', 'Ridwan Sof0ns0h, Sp.JP', '0', '2020-11-10 07:00:00', '2020-11-10 07:00:00'),
	(12, 'SAR', 'Neurologi', 'L', 'Danny Bagus Agfiandi, SP.S', '0', '2020-11-10 07:00:00', '2020-11-10 07:00:00'),
	(13, 'PAR', 'Dot', 'M', 'Fikri Faisal, Sp.P', '0', '2020-11-10 07:00:00', '2020-11-10 07:00:00'),
	(14, '030', 'Thalasemia', 'N', 'Mustakim, Sp.A', '0', '2020-11-10 07:00:00', '2020-11-10 07:00:00'),
	(15, 'HIV', 'Tegar', 'O', 'dr. Hj. Shelvi Febrianti, Sp.PD', '0', '2020-11-10 07:00:00', '2020-11-10 07:00:00');
/*!40000 ALTER TABLE `polis` ENABLE KEYS */;

-- Dumping structure for table bpjsantrian.produk
DROP TABLE IF EXISTS `produk`;
CREATE TABLE IF NOT EXISTS `produk` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int(11) NOT NULL,
  `warna` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kondisi` enum('baru','lama') COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bpjsantrian.produk: ~4 rows (approximately)
/*!40000 ALTER TABLE `produk` DISABLE KEYS */;
REPLACE INTO `produk` (`id`, `nama`, `harga`, `warna`, `kondisi`, `deskripsi`, `created_at`, `updated_at`) VALUES
	(1, 'baju mereah', 6000, 'hijau', 'baru', 'alu pisan', '2021-07-02 00:51:50', '2021-07-02 00:51:50'),
	(2, 'baju mereahw', 7000, 'merah', 'baru', 'alu pisan2', '2021-07-02 03:34:55', '2021-07-02 03:34:55'),
	(3, 'baju mereahw', 7000, 'merah', 'baru', 'alu pisan2', '2021-07-02 04:13:17', '2021-07-02 04:13:17'),
	(4, 'baju mereahw', 7000, 'merah', 'baru', 'alu pisan2', '2021-07-02 04:29:46', '2021-07-02 04:29:46'),
	(5, 'baju mereahw', 7000, 'merah', 'baru', 'alu pisan2', '2021-07-02 04:30:08', '2021-07-02 04:30:08');
/*!40000 ALTER TABLE `produk` ENABLE KEYS */;

-- Dumping structure for table bpjsantrian.referensis
DROP TABLE IF EXISTS `referensis`;
CREATE TABLE IF NOT EXISTS `referensis` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `referensi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bpjsantrian.referensis: ~0 rows (approximately)
/*!40000 ALTER TABLE `referensis` DISABLE KEYS */;
/*!40000 ALTER TABLE `referensis` ENABLE KEYS */;

-- Dumping structure for table bpjsantrian.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `x-username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `x-token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`x-username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bpjsantrian.users: ~2 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`id`, `x-username`, `password`, `x-token`, `created_at`, `updated_at`) VALUES
	(1, 'rsukarawang@gmail.com', '$2y$10$mKLd7G180IMZqpg1tpGF4.Mrkds6CiEVoHe1No6vMP2aOtHaot0nq', '867c97eb60423539f426931e9f72ebb71f61b4f5f35d29801fc295b89466bcf1883f7416152f9c7f', '2021-07-02 02:04:18', '2021-07-02 03:16:06'),
	(2, 'rsudrslamet@rsudrslamet.gov', '$2y$10$nz07nZyQ5fjNQIogSM5Ix.stRPGE9lPTL1gmpkZaHMBWIPdz5Xuei', 'c9e5afbed5e5d3543c6e4efca17e1560faa93b25afc759670599c3996480543c26e6241b3482b4ba', '2021-07-02 03:50:19', '2021-07-02 04:09:49'),
	(3, 'rsudrslametgarut', '12345678', NULL, '2021-08-04 16:58:04', '2021-08-04 16:58:04');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
