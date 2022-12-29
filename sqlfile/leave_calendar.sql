-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2022 at 06:19 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leave_calendar`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_leave`
--

CREATE TABLE `add_leave` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Date` date NOT NULL,
  `Reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Other_Comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `User_Id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_leave`
--

INSERT INTO `add_leave` (`id`, `Date`, `Reason`, `Other_Comment`, `User_Id`, `created_at`, `updated_at`) VALUES
(8, '2021-12-29', 'hospital', 'no', 21, '2022-12-26 04:36:31', '2022-12-26 23:01:34'),
(10, '2022-12-14', 'exam', 'no', 21, '2022-12-26 05:39:04', '2022-12-27 05:38:20'),
(11, '2022-12-30', 'acddd', 'no', 21, NULL, '2022-12-27 07:00:21'),
(13, '2022-12-30', 'sunday funday', 'Arun', 19, '2022-12-26 05:39:04', '2022-12-28 07:17:58'),
(14, '2022-12-30', 'sunday funday', 'asdfgh4567', 21, '2022-12-26 05:39:04', '2022-12-28 00:26:22'),
(15, '2022-12-29', 'holiday', 'hsjhsjhs', 19, '2022-12-27 07:25:24', '2022-12-27 07:25:24'),
(16, '2022-12-29', 'holiday', 'hsjhsjhs', 19, '2022-12-27 07:26:00', '2022-12-27 07:26:00'),
(17, '2022-12-29', 'holiday', 'hsjhsjhs', 19, '2022-12-27 07:27:37', '2022-12-27 07:27:37'),
(18, '2022-12-30', 'holiday', 'hsjhsjhs', 19, '2022-12-27 07:28:13', '2022-12-27 07:28:13'),
(19, '2022-12-30', 'holiday', 'no other comment', 21, '2022-12-27 23:20:24', '2022-12-27 23:20:24'),
(20, '2022-12-30', 'holiday', 'no other comment', 21, '2022-12-27 23:21:32', '2022-12-27 23:21:32'),
(21, '2022-12-30', 'holiday', 'no other comment', 21, '2022-12-27 23:21:34', '2022-12-27 23:21:34'),
(22, '2022-12-30', 'holiday', 'no other comment', 21, '2022-12-27 23:22:09', '2022-12-27 23:22:09'),
(23, '2022-12-30', 'holiday', 'no other comment', 21, '2022-12-27 23:22:14', '2022-12-27 23:22:14'),
(24, '2022-12-30', 'holiday', 'qwertyuiop', 21, '2022-12-27 23:23:43', '2022-12-27 23:23:43'),
(25, '2022-12-30', 'asdfghjkl', 'qwertyuiop', 21, '2022-12-27 23:36:18', '2022-12-27 23:36:18'),
(26, '2022-12-30', 'asdfghjkl', 'zxcvbn', 21, '2022-12-27 23:49:19', '2022-12-27 23:49:19'),
(27, '2022-12-30', 'moj', 'zxcvbn', 21, '2022-12-27 23:59:54', '2022-12-27 23:59:54'),
(28, '2022-12-30', 'moj', 'asdfgh4567', 21, '2022-12-28 00:04:26', '2022-12-28 00:04:26'),
(29, '2022-12-30', 'sunday funday', 'asdfgh4567', 21, '2022-12-28 00:24:55', '2022-12-28 00:24:55'),
(30, '2022-12-30', 'sunday funday', 'asdfgh4567', 21, '2022-12-28 01:10:12', '2022-12-28 01:10:12'),
(31, '2022-12-30', 'sunday funday', 'asdfgh4567', 21, '2022-12-28 01:10:36', '2022-12-28 01:10:36'),
(32, '2022-12-30', 'sunday funday', 'asdfgh4567', 21, '2022-12-28 01:10:48', '2022-12-28 01:10:48'),
(33, '2022-12-30', 'sunday funday', 'asdfgh4567', 21, '2022-12-28 01:11:02', '2022-12-28 01:11:02'),
(34, '2022-12-30', 'sunday funday', 'asdfgh4567', 21, '2022-12-28 01:12:12', '2022-12-28 01:12:12'),
(35, '2022-12-26', 'sunday funday', 'hiii', 21, '2022-12-28 01:19:50', '2022-12-28 01:20:27');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_22_072546_create_registers_table', 1),
(6, '2022_12_22_074614_create_add_leave_table', 2),
(7, '2016_06_01_000001_create_oauth_auth_codes_table', 3),
(8, '2016_06_01_000002_create_oauth_access_tokens_table', 3),
(9, '2016_06_01_000003_create_oauth_refresh_tokens_table', 3),
(10, '2016_06_01_000004_create_oauth_clients_table', 3),
(11, '2016_06_01_000005_create_oauth_personal_access_clients_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('008e9fa3f9cc08ca2f035d35c6523557cd09996faa9d24e19bc956d2e547c85344bee5cf6589ceab', 21, 1, 'Access Token', '[]', 0, '2022-12-27 00:49:36', '2022-12-27 00:49:36', '2023-12-27 06:19:36'),
('064f8ad335e4928eba08ed2bb43d8ebed872f8050000ff8e73843d94d48c8b9063558b9644447617', 21, 1, 'Access Token', '[]', 0, '2022-12-28 01:28:05', '2022-12-28 01:28:06', '2023-12-28 06:58:05'),
('124334d84c98f998cffc39d9eec474a679d21f27392182e594999fbf232e39e3a85b4fdd22f2280f', 4, 1, 'Access Token', '[]', 0, '2022-12-26 00:10:31', '2022-12-26 00:10:31', '2023-12-26 05:40:31'),
('15e500a4d4e14343e99bb3ca1172139d81f0b17dcb58f1ed7219a210b7c2dfed4ec6cd286beb00c5', 21, 1, 'Access Token', '[]', 0, '2022-12-26 06:07:07', '2022-12-26 06:07:07', '2023-12-26 11:37:07'),
('219aa960b6f9d70c732d32c6eea5837d6d943ca8884f236ca3671b7e90c48342b3c711ad03e07203', 21, 1, 'Access Token', '[]', 0, '2022-12-26 23:00:37', '2022-12-26 23:00:37', '2023-12-27 04:30:37'),
('21ef61cc1914d7adfbaccb047c87703541b81fc5749a93ffd85f9807ceeb3f8578253c85105aa42d', 21, 1, 'Access Token', '[]', 0, '2022-12-26 06:35:33', '2022-12-26 06:35:33', '2023-12-26 12:05:33'),
('22c85046c20b8a1901822380d54fe0b7a1c432bdd4b5a8c725bb221e72ae106542b7d0c58d270065', 4, 1, 'Access Token', '[]', 0, '2022-12-26 07:10:42', '2022-12-26 07:10:42', '2023-12-26 12:40:42'),
('2432b6141a6cf84a7e320734c081f970ef1033190eaf0478477e34486170f011bcd356191fdd541f', 21, 1, 'Access Token', '[]', 0, '2022-12-26 04:37:36', '2022-12-26 04:37:36', '2023-12-26 10:07:36'),
('2e5ac30fbeb6317dc9b5998acf8daeddd0e39576bac7c8da065511be172d00d884e77ffcfc192fec', 19, 1, 'Access Token', '[]', 0, '2022-12-26 06:03:19', '2022-12-26 06:03:19', '2023-12-26 11:33:19'),
('34ee4633a338b2d0cd8b2a7f315f20a41f8fecef8169d4341dc6f9f2eecc641b3298b60ecf0c0081', 18, 1, 'Access Token', '[]', 0, '2022-12-25 23:43:38', '2022-12-25 23:43:38', '2023-12-26 05:13:38'),
('36f598cf378d64571a3aed70ec4ba1ab0ef65687af507071d92849cf052ed2717ec641cc02aed63c', 21, 1, 'Access Token', '[]', 0, '2022-12-26 04:35:34', '2022-12-26 04:35:34', '2023-12-26 10:05:34'),
('3a84775fa09d7834e97c741defc2af41d01201019335e9e985fb43a1284bf33c069890baf85bf152', 1, 1, 'Access Token', '[]', 0, '2022-12-25 23:50:28', '2022-12-25 23:50:28', '2023-12-26 05:20:28'),
('3c6018c83f49ea5ba4a4f8397d9bcf2827688adccc42e960ef28394bd07ba5fdcb5b451b14e17b32', 4, 1, 'Access Token', '[]', 0, '2022-12-26 02:22:05', '2022-12-26 02:22:05', '2023-12-26 07:52:05'),
('3ccdcd37bb5a04d15623d5435386dd0d85f38a196e47ff5dfac89c75e50c610f1e554dc92fd94f58', 21, 1, 'Access Token', '[]', 0, '2022-12-26 06:06:27', '2022-12-26 06:06:27', '2023-12-26 11:36:27'),
('421aa214a8f420c8a1767c8044be04201eb55fc464223519530c1a47201620bb48f35984b0bdeecb', 19, 1, 'Access Token', '[]', 0, '2022-12-26 06:46:51', '2022-12-26 06:46:51', '2023-12-26 12:16:51'),
('4563b2070253696646a255b37a778a237d0c36a6541b0b9acc5ec86bf1705c907111bcf414b738a5', 10, 1, 'Access Token', '[]', 0, '2022-12-26 05:39:04', '2022-12-26 05:39:04', '2023-12-26 11:09:04'),
('53cd6ca211d3a44a4a71d6a79a26d345a5223945ebf35bcdcfd87116cc77006977219ce17ded885a', 4, 1, 'Access Token', '[]', 0, '2022-12-26 02:24:22', '2022-12-26 02:24:22', '2023-12-26 07:54:22'),
('59e87183556b2795d7d3e9ed9c370989e7375dac934a35873346084476b9f31c9fc6d25768c376f2', 9, 1, 'Access Token', '[]', 0, '2022-12-26 04:52:12', '2022-12-26 04:52:12', '2023-12-26 10:22:12'),
('5c453734a78b115c6e5606c41ce4acff5c4ba823d9863211082e399f136d635d19ebac4d9f6bd031', 19, 1, 'Access Token', '[]', 0, '2022-12-28 06:48:29', '2022-12-28 06:48:29', '2023-12-28 12:18:29'),
('5e614a488c0bff3be3e8fd2745a9d9a549eee059f364f11e10314874beb67d04400ad2e0eabc4ed7', 16, 1, 'Arun', '[]', 0, '2022-12-23 07:23:44', '2022-12-23 07:23:44', '2023-12-23 12:53:44'),
('5f86be42872b8aa32a84a1ee76d8fcbe186bf811de14562709b88c840fbe52b63968a59ae82a6772', 4, 1, 'Access Token', '[]', 0, '2022-12-26 01:43:53', '2022-12-26 01:43:53', '2023-12-26 07:13:53'),
('5f9762c139be5a01b9801c78ec5d260cdbbcb13f882106b29bd718b5baebce9e4845ea12857ca96a', 4, 1, 'Access Token', '[]', 0, '2022-12-26 02:24:05', '2022-12-26 02:24:05', '2023-12-26 07:54:05'),
('62b4c89f752bcb7924c9feb92152812b7ece67dd64e85949d4e9f3dd3bbe064a7fe1144e4d224d50', 11, 1, 'Access Token', '[]', 0, '2022-12-26 05:40:04', '2022-12-26 05:40:04', '2023-12-26 11:10:04'),
('6758572d781c0d6298d7b09bd35b33adc56765ac9ff635faed887349d749e1887c05db31e1f9d211', 17, 1, 'Arun', '[]', 0, '2022-12-23 07:24:20', '2022-12-23 07:24:20', '2023-12-23 12:54:20'),
('679ae1e14ce443eb2ce08b200b2e62fcd54a8eff75ea91f01197e1ce326bc998543c004c84e6d364', 19, 1, 'Access Token', '[]', 0, '2022-12-26 04:34:22', '2022-12-26 04:34:22', '2023-12-26 10:04:22'),
('6891e9de6335b1a0c160a041b71aed0e48436fdd571e94bcee8565fd576a2faec723e6efa810ebe6', 15, 1, 'Access Token', '[]', 0, '2022-12-23 07:18:22', '2022-12-23 07:18:22', '2023-12-23 12:48:22'),
('6fe89206e1c3ce065ee02ff276eae098a54ca123de89abaa7fd7c7197d11fc72f7ea221dba6c065d', 19, 1, 'Access Token', '[]', 0, '2022-12-26 22:57:44', '2022-12-26 22:57:44', '2023-12-27 04:27:44'),
('71314ec3b2e974b41bc45908e6dc9768c67dd051bf2c77a15966748397a80de5fc9e5096b0f2143c', 19, 1, 'Access Token', '[]', 0, '2022-12-28 07:03:49', '2022-12-28 07:03:49', '2023-12-28 12:33:49'),
('732e451dc19111f3e40986056564f37b0ad7ce613fa29e23ccc66efe2dfda4847eb9df07087f9c81', 19, 1, 'Access Token', '[]', 0, '2022-12-26 04:14:15', '2022-12-26 04:14:15', '2023-12-26 09:44:15'),
('82f8a83bbaf9b04395b5d892de4fbe3647d1a2fbfe9cdacca624186e96a71d99ba198003247f98b5', 4, 1, 'Access Token', '[]', 0, '2022-12-26 02:23:47', '2022-12-26 02:23:47', '2023-12-26 07:53:47'),
('83b2210545c211dd00235ce77a689a303cf787628824c14d93c467b3f43da17404243d3ffe8d62fc', 19, 1, 'Access Token', '[]', 0, '2022-12-26 08:13:40', '2022-12-26 08:13:40', '2023-12-26 13:43:40'),
('8e601966afa41cb6b15ecc33e3da51140eccd1dc532c2e2eae4347c519941472e3ad1d5fefc860be', 21, 1, 'Access Token', '[]', 0, '2022-12-27 23:02:30', '2022-12-27 23:02:30', '2023-12-28 04:32:30'),
('90983b2c042c6b8db5400cb2d156eeee72082db70814844c9ff496dac10d30c677227e31414a56b2', 4, 1, 'Access Token', '[]', 0, '2022-12-26 01:40:38', '2022-12-26 01:40:38', '2023-12-26 07:10:38'),
('acdc5f3f88bd0052963ced19a1fd23258e2e2b494493ed7717e6e661009b83f120fdea949616c390', 6, 1, 'Access Token', '[]', 0, '2022-12-26 02:36:33', '2022-12-26 02:36:33', '2023-12-26 08:06:33'),
('b1285405a5db1ff14fa8d81df0f843650c5eb90b8e85706fdd1883cd1ee1730f8ffda8b3cb2cd140', 2, 1, 'Access Token', '[]', 0, '2022-12-25 23:53:01', '2022-12-25 23:53:01', '2023-12-26 05:23:01'),
('b80eb9704fc794c126259ea6cea5281d607095bbdc44e4c3860fab5b8ceb36abd0e45d30918e6aa9', 21, 1, 'Access Token', '[]', 0, '2022-12-26 04:35:49', '2022-12-26 04:35:49', '2023-12-26 10:05:49'),
('bcbea9617b46c0ea7b4628a962779310ba565626d4ba0151b1c5ada3d3c10d09c676ca3fcbd88529', 20, 1, 'Access Token', '[]', 0, '2022-12-26 02:35:05', '2022-12-26 02:35:05', '2023-12-26 08:05:05'),
('bdcd2dbccf1000580d5c18d4a1554588374bd3f395fa075e180f099741d279fe9146012cec4c2fc9', 4, 1, 'Access Token', '[]', 0, '2022-12-26 02:24:26', '2022-12-26 02:24:26', '2023-12-26 07:54:26'),
('c906f7564958e5df8eb0a951cafc3c593eaddcd21b8ff72947bf0bbb6103c9e9e160e106869fb9bd', 19, 1, 'Access Token', '[]', 0, '2022-12-26 05:38:29', '2022-12-26 05:38:29', '2023-12-26 11:08:29'),
('cebc8105ad19493fe3f72f4babdf8be54a37b6ce17f73a8b923993af2620f6d88eff0c32ed319c34', 21, 1, 'Access Token', '[]', 0, '2022-12-27 06:02:40', '2022-12-27 06:02:40', '2023-12-27 11:32:40'),
('d0b5cc9e1e518b6207c126efb7e54af4e13727b008e793a14e76212aed3f59914aafd5c9c0331441', 3, 1, 'Access Token', '[]', 0, '2022-12-26 00:09:10', '2022-12-26 00:09:10', '2023-12-26 05:39:10'),
('d1a5b46a8a11c45d9e25613f44f520d841f31cee5e4c97ed26a7e940932e7949496e120a6b5a6738', 8, 1, 'Access Token', '[]', 0, '2022-12-26 04:36:31', '2022-12-26 04:36:31', '2023-12-26 10:06:31'),
('d9debc20b337af34204b6dc834e00e50bb23a28fcdd0809e4447581a916a512570a861a9acf968ac', 5, 1, 'Access Token', '[]', 0, '2022-12-26 02:31:23', '2022-12-26 02:31:23', '2023-12-26 08:01:23'),
('dc443b9b1903fc015d71009623f66757a3b52682a335b778b6f39cdf2a9f4fb9cc0f2a79927d9378', 19, 1, 'Access Token', '[]', 0, '2022-12-26 02:35:34', '2022-12-26 02:35:34', '2023-12-26 08:05:34'),
('e292b651ef6a28ccedebab75ac40b003cb411b220f62fb17650b70d355730db230206db973c95f75', 19, 1, 'Access Token', '[]', 0, '2022-12-26 23:22:18', '2022-12-26 23:22:18', '2023-12-27 04:52:18'),
('ea98cb482bd6d140c4e1b1bcf2b0ccbf3278bd0f3ccb961dece133fcd5f6eb3d3bd8e1bc2072e93f', 19, 1, 'Access Token', '[]', 0, '2022-12-26 02:34:51', '2022-12-26 02:34:51', '2023-12-26 08:04:51'),
('ec705ebb1b130486e9aa65d12c540eaddac778277653bde8ae1852b3e0d162aadb1fa4136801e777', 4, 1, 'Access Token', '[]', 0, '2022-12-26 02:15:18', '2022-12-26 02:15:18', '2023-12-26 07:45:18'),
('ec991b82416d59176a53079839c2d3d906227d34fb3a6184a5b908f3fb33a34aa0e194d9d148b252', 19, 1, 'Access Token', '[]', 0, '2022-12-26 07:28:19', '2022-12-26 07:28:19', '2023-12-26 12:58:19'),
('f16e0e8c99a1556432b117bb3bc6519a02f02fb699f25afe1ce599bb392f240b4003292e0a5188d5', 7, 1, 'Access Token', '[]', 0, '2022-12-26 04:10:06', '2022-12-26 04:10:07', '2023-12-26 09:40:06'),
('f26939ce78ac67ccfc2de6000adef111171e81da2cd43044b7fb70de253811a5a23ba96dfe34d9e3', 19, 1, 'Access Token', '[]', 0, '2022-12-28 06:41:29', '2022-12-28 06:41:29', '2023-12-28 12:11:29');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'hdculF3XOPyt4AjAeBDnNT9Cmar0RmVPF124QcRE', NULL, 'http://localhost', 1, 0, 0, '2022-12-22 02:44:26', '2022-12-22 02:44:26'),
(2, NULL, 'Laravel Password Grant Client', 'hkhyIw3QzwFFlqnijAiGqJeaKt3o6EzRU4Toywp9', 'users', 'http://localhost', 0, 1, 0, '2022-12-22 02:44:26', '2022-12-22 02:44:26');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-12-22 02:44:26', '2022-12-22 02:44:26');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registers`
--

CREATE TABLE `registers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Full_Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Job_Title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone_Num` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `registers`
--

INSERT INTO `registers` (`id`, `Full_Name`, `Email`, `Password`, `Job_Title`, `Phone_Num`, `created_at`, `updated_at`) VALUES
(4, 'pankaj', 'pankaj@gmail.com', '123', 'intern', '8141810562', '2022-12-22 06:22:58', '2022-12-22 06:22:58'),
(19, 'arun', 'arun@gmail.com', '123', 'intern', '8141810562', '2022-12-26 02:34:51', '2022-12-26 02:34:51'),
(20, 'vishal', 'vishal@gmail.com', '123', 'intern', '8141810562', '2022-12-26 02:35:05', '2022-12-26 02:35:05'),
(21, 'mustakim', 'mustakim@gmail.com', '123', 'intern', '8141810562', '2022-12-26 04:35:34', '2022-12-26 04:35:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_leave`
--
ALTER TABLE `add_leave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `registers`
--
ALTER TABLE `registers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_leave`
--
ALTER TABLE `add_leave`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registers`
--
ALTER TABLE `registers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
