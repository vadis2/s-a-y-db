-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 27, 2016 at 09:04 AM
-- Server version: 5.5.46-0ubuntu0.14.04.2
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `abp`
--

-- --------------------------------------------------------

--
-- Table structure for table `cancellations`
--

CREATE TABLE IF NOT EXISTS `cancellations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `package_id` int(10) unsigned NOT NULL,
  `question1` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci,
  `question2` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `request` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `cancellations_user_id_foreign` (`user_id`),
  KEY `cancellations_package_id_foreign` (`package_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- Table structure for table `claims`
--

CREATE TABLE IF NOT EXISTS `claims` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `provider_id` int(10) unsigned NOT NULL,
  `package_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `claims_provider_id_foreign` (`provider_id`),
  KEY `claims_package_id_foreign` (`package_id`),
  KEY `claims_user_id_foreign` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE IF NOT EXISTS `colors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `color` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `make_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `colors_make_id_foreign` (`make_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `color`, `make_id`, `created_at`, `updated_at`) VALUES
(1, 'Black', 3, '2015-12-18 09:21:46', '2015-12-18 09:21:46'),
(2, 'White', 3, '2015-12-18 09:22:00', '2016-02-02 22:05:04');

-- --------------------------------------------------------

--
-- Table structure for table `histories`
--

CREATE TABLE IF NOT EXISTS `histories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `ip` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `browser` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `os` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `histories_user_id_foreign` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=336 ;

--
-- Dumping data for table `histories`
--

INSERT INTO `histories` (`id`, `user_id`, `ip`, `browser`, `os`, `created_at`, `updated_at`) VALUES
(1, 1000002, '::1', 'Chrome', 'Windows', '2015-12-22 06:41:30', '2015-12-22 06:41:30'),
(2, 1000002, '::1', 'Chrome', 'Windows', '2015-12-22 13:13:14', '2015-12-22 13:13:14'),
(3, 1000002, '::1', 'Chrome', 'Windows', '2015-12-22 20:30:23', '2015-12-22 20:30:23'),
(4, 1000002, '::1', 'Chrome', 'Windows', '2015-12-23 02:24:02', '2015-12-23 02:24:02'),
(5, 1000002, '::1', 'Chrome', 'Windows', '2015-12-23 05:57:07', '2015-12-23 05:57:07'),
(6, 1000002, '::1', 'Chrome', 'Windows', '2015-12-23 13:06:37', '2015-12-23 13:06:37'),
(7, 1000002, '::1', 'Chrome', 'Windows', '2015-12-24 04:12:13', '2015-12-24 04:12:13'),
(8, 1000002, '::1', 'Chrome', 'Windows', '2015-12-24 11:03:45', '2015-12-24 11:03:45'),
(9, 1000002, '::1', 'Chrome', 'Windows', '2015-12-25 05:07:31', '2015-12-25 05:07:31'),
(10, 1000002, '::1', 'Chrome', 'Windows', '2015-12-25 13:25:25', '2015-12-25 13:25:25'),
(11, 1000002, '::1', 'Chrome', 'Windows', '2015-12-26 07:22:39', '2015-12-26 07:22:39'),
(12, 1000002, '::1', 'Chrome', 'Windows', '2015-12-27 19:52:56', '2015-12-27 19:52:56'),
(13, 1000002, '::1', 'Chrome', 'Windows', '2015-12-28 02:42:51', '2015-12-28 02:42:51'),
(14, 1000002, '::1', 'Chrome', 'Windows', '2015-12-28 07:22:11', '2015-12-28 07:22:11'),
(15, 1000002, '::1', 'Chrome', 'Windows', '2015-12-28 07:40:12', '2015-12-28 07:40:12'),
(16, 1000002, '::1', 'Chrome', 'Windows', '2015-12-28 08:53:31', '2015-12-28 08:53:31'),
(17, 1000002, '::1', 'Chrome', 'Windows', '2015-12-28 14:25:47', '2015-12-28 14:25:47'),
(18, 1000002, '::1', 'Chrome', 'Windows', '2015-12-28 19:58:04', '2015-12-28 19:58:04'),
(19, 1000002, '::1', 'Chrome', 'Windows', '2016-01-03 23:01:06', '2016-01-03 23:01:06'),
(20, 1000002, '::1', 'Chrome', 'Windows', '2016-01-04 22:33:03', '2016-01-04 22:33:03'),
(21, 1000002, '::1', 'Chrome', 'Windows', '2016-01-05 05:32:18', '2016-01-05 05:32:18'),
(22, 1000002, '::1', 'Chrome', 'Windows', '2016-01-05 13:55:19', '2016-01-05 13:55:19'),
(23, 1000002, '::1', 'Chrome', 'Windows', '2016-01-05 21:49:56', '2016-01-05 21:49:56'),
(24, 1000002, '::1', 'Chrome', 'Windows', '2016-01-06 06:43:30', '2016-01-06 06:43:30'),
(25, 1000002, '::1', 'Chrome', 'Windows', '2016-01-07 23:00:51', '2016-01-07 23:00:51'),
(26, 1000002, '::1', 'Chrome', 'Windows', '2016-01-08 09:33:35', '2016-01-08 09:33:35'),
(27, 1000002, '::1', 'Chrome', 'Windows', '2016-01-08 12:21:53', '2016-01-08 12:21:53'),
(28, 1000002, '::1', 'Chrome', 'Windows', '2016-01-10 23:07:22', '2016-01-10 23:07:22'),
(29, 1000002, '::1', 'Chrome', 'Windows', '2016-01-11 06:48:07', '2016-01-11 06:48:07'),
(30, 1000002, '::1', 'Chrome', 'Windows', '2016-01-11 14:37:17', '2016-01-11 14:37:17'),
(31, 1000002, '::1', 'Chrome', 'Windows', '2016-01-11 22:53:21', '2016-01-11 22:53:21'),
(32, 1000002, '::1', 'Chrome', 'Windows', '2016-01-13 08:21:21', '2016-01-13 08:21:21'),
(33, 1000002, '::1', 'Chrome', 'Windows', '2016-01-17 23:41:38', '2016-01-17 23:41:38'),
(34, 1000002, '::1', 'Chrome', 'Windows', '2016-01-18 07:10:23', '2016-01-18 07:10:23'),
(35, 1000002, '::1', 'Chrome', 'Windows', '2016-01-18 17:11:43', '2016-01-18 17:11:43'),
(36, 1000002, '::1', 'Chrome', 'Windows', '2016-01-19 04:38:10', '2016-01-19 04:38:10'),
(37, 1000002, '::1', 'Chrome', 'Windows', '2016-01-19 11:25:13', '2016-01-19 11:25:13'),
(38, 1000002, '::1', 'Chrome', 'Windows', '2016-01-19 15:25:23', '2016-01-19 15:25:23'),
(39, 1000002, '::1', 'Chrome', 'Windows', '2016-01-20 04:49:52', '2016-01-20 04:49:52'),
(40, 1000002, '::1', 'Chrome', 'Windows', '2016-01-20 15:22:58', '2016-01-20 15:22:58'),
(41, 1000002, '::1', 'Chrome', 'Windows', '2016-01-21 01:10:20', '2016-01-21 01:10:20'),
(42, 1000002, '::1', 'Chrome', 'Windows', '2016-01-23 05:49:52', '2016-01-23 05:49:52'),
(43, 1000002, '::1', 'Chrome', 'Windows', '2016-01-23 05:51:31', '2016-01-23 05:51:31'),
(44, 1000002, '::1', 'Chrome', 'Windows', '2016-01-23 05:52:21', '2016-01-23 05:52:21'),
(45, 1000002, '::1', 'Chrome', 'Windows', '2016-01-23 05:57:57', '2016-01-23 05:57:57'),
(46, 1000002, '::1', 'Chrome', 'Windows', '2016-01-23 06:04:44', '2016-01-23 06:04:44'),
(47, 1000002, '::1', 'Chrome', 'Windows', '2016-01-23 06:30:49', '2016-01-23 06:30:49'),
(48, 1000002, '::1', 'Chrome', 'Windows', '2016-01-25 08:48:01', '2016-01-25 08:48:01'),
(49, 1000002, '::1', 'Chrome', 'Windows', '2016-01-25 14:09:06', '2016-01-25 14:09:06'),
(50, 1000002, '::1', 'Chrome', 'Windows', '2016-01-26 05:51:15', '2016-01-26 05:51:15'),
(51, 1000002, '::1', 'Chrome', 'Windows', '2016-01-29 09:57:29', '2016-01-29 09:57:29'),
(52, 1000002, '::1', 'Chrome', 'Windows', '2016-02-01 00:26:33', '2016-02-01 00:26:33'),
(53, 1000002, '::1', 'Chrome', 'Windows', '2016-02-01 11:48:41', '2016-02-01 11:48:41'),
(54, 1000002, '::1', 'Chrome', 'Windows', '2016-02-01 16:58:03', '2016-02-01 16:58:03'),
(55, 1000002, '::1', 'Chrome', 'Windows', '2016-02-01 19:05:33', '2016-02-01 19:05:33'),
(56, 1000002, '::1', 'Chrome', 'Windows', '2016-02-01 21:39:13', '2016-02-01 21:39:13'),
(57, 1000002, '::1', 'Chrome', 'Windows', '2016-02-02 03:43:45', '2016-02-02 03:43:45'),
(58, 1000002, '::1', 'Chrome', 'Windows', '2016-02-02 04:11:02', '2016-02-02 04:11:02'),
(59, 1000002, '::1', 'Chrome', 'Windows', '2016-02-02 09:48:30', '2016-02-02 09:48:30'),
(60, 1000002, '::1', 'Chrome', 'Windows', '2016-02-02 10:10:35', '2016-02-02 10:10:35'),
(61, 1000002, '::1', 'Chrome', 'Windows', '2016-02-02 21:35:08', '2016-02-02 21:35:08'),
(62, 1000002, '::1', 'Chrome', 'Windows', '2016-02-05 01:29:30', '2016-02-05 01:29:30'),
(63, 1000002, '::1', 'Chrome', 'Windows', '2016-02-05 02:26:32', '2016-02-05 02:26:32'),
(64, 1000002, '::1', 'Chrome', 'Windows', '2016-02-11 10:43:20', '2016-02-11 10:43:20'),
(65, 1000002, '::1', 'Chrome', 'Windows', '2016-02-12 02:37:16', '2016-02-12 02:37:16'),
(66, 1000002, '::1', 'Chrome', 'Windows', '2016-02-12 05:28:38', '2016-02-12 05:28:38'),
(67, 1000002, '::1', 'Chrome', 'Windows', '2016-02-12 05:58:48', '2016-02-12 05:58:48'),
(68, 1000002, '::1', 'Chrome', 'Windows', '2016-02-12 06:17:47', '2016-02-12 06:17:47'),
(69, 1000002, '::1', 'Chrome', 'Windows', '2016-02-12 09:49:19', '2016-02-12 09:49:19'),
(70, 1000002, '::1', 'Chrome', 'Windows', '2016-02-15 10:37:25', '2016-02-15 10:37:25'),
(71, 1000002, '::1', 'Chrome', 'Windows', '2016-02-16 00:45:06', '2016-02-16 00:45:06'),
(72, 1000002, '::1', 'Chrome', 'Windows', '2016-02-16 00:53:15', '2016-02-16 00:53:15'),
(73, 1000002, '::1', 'Chrome', 'Windows', '2016-02-16 01:04:47', '2016-02-16 01:04:47'),
(74, 1000000, '::1', 'Chrome', 'Windows', '2016-02-16 02:03:51', '2016-02-16 02:03:51'),
(75, 1000002, '::1', 'Chrome', 'Windows', '2016-02-16 02:12:07', '2016-02-16 02:12:07'),
(76, 1000002, '::1', 'Chrome', 'Windows', '2016-02-16 02:14:05', '2016-02-16 02:14:05'),
(77, 1000000, '::1', 'Chrome', 'Windows', '2016-02-16 02:16:28', '2016-02-16 02:16:28'),
(78, 1000002, '::1', 'Chrome', 'Windows', '2016-02-16 04:04:58', '2016-02-16 04:04:58'),
(79, 1000002, '::1', 'Chrome', 'Windows', '2016-02-16 10:18:57', '2016-02-16 10:18:57'),
(80, 1000002, '::1', 'Chrome', 'Windows', '2016-02-16 10:58:53', '2016-02-16 10:58:53'),
(81, 1000000, '::1', 'Chrome', 'Windows', '2016-02-16 10:59:20', '2016-02-16 10:59:20'),
(82, 1000002, '::1', 'Chrome', 'Windows', '2016-02-16 11:11:06', '2016-02-16 11:11:06'),
(83, 1000002, '::1', 'Chrome', 'Windows', '2016-02-16 11:13:06', '2016-02-16 11:13:06'),
(84, 1000000, '::1', 'Chrome', 'Windows', '2016-02-16 11:13:33', '2016-02-16 11:13:33'),
(85, 1000002, '::1', 'Chrome', 'Windows', '2016-02-16 11:16:16', '2016-02-16 11:16:16'),
(86, 1000000, '::1', 'Chrome', 'Windows', '2016-02-16 11:16:57', '2016-02-16 11:16:57'),
(87, 1000002, '::1', 'Chrome', 'Windows', '2016-02-17 01:10:47', '2016-02-17 01:10:47'),
(88, 1000002, '::1', 'Chrome', 'Windows', '2016-02-17 01:11:39', '2016-02-17 01:11:39'),
(89, 1000000, '::1', 'Chrome', 'Windows', '2016-02-17 01:12:07', '2016-02-17 01:12:07'),
(90, 1000002, '::1', 'Chrome', 'Windows', '2016-02-17 03:00:42', '2016-02-17 03:00:42'),
(92, 1000003, '::1', 'Chrome', 'Windows', '2016-02-17 04:42:13', '2016-02-17 04:42:13'),
(93, 1000004, '::1', 'Chrome', 'Windows', '2016-02-17 05:09:11', '2016-02-17 05:09:11'),
(94, 1000005, '::1', 'Chrome', 'Windows', '2016-02-17 05:20:25', '2016-02-17 05:20:25'),
(95, 1000005, '::1', 'Chrome', 'Windows', '2016-02-17 05:22:32', '2016-02-17 05:22:32'),
(96, 1000006, '::1', 'Chrome', 'Windows', '2016-02-17 05:24:23', '2016-02-17 05:24:23'),
(97, 1000007, '::1', 'Chrome', 'Windows', '2016-02-17 05:26:53', '2016-02-17 05:26:53'),
(98, 1000000, '::1', 'Chrome', 'Windows', '2016-02-17 06:17:09', '2016-02-17 06:17:09'),
(99, 1000002, '::1', 'Chrome', 'Windows', '2016-02-17 06:17:58', '2016-02-17 06:17:58'),
(100, 1000002, '::1', 'Chrome', 'Windows', '2016-02-17 06:27:45', '2016-02-17 06:27:45'),
(101, 1000000, '::1', 'Chrome', 'Windows', '2016-02-17 06:28:14', '2016-02-17 06:28:14'),
(102, 1000000, '::1', 'Chrome', 'Windows', '2016-02-17 06:31:31', '2016-02-17 06:31:31'),
(103, 1000002, '::1', 'Chrome', 'Windows', '2016-02-17 07:13:41', '2016-02-17 07:13:41'),
(104, 1000002, '::1', 'Chrome', 'Windows', '2016-02-17 07:31:47', '2016-02-17 07:31:47'),
(105, 1000002, '::1', 'Chrome', 'Windows', '2016-02-17 07:47:04', '2016-02-17 07:47:04'),
(106, 1000002, '::1', 'Chrome', 'Windows', '2016-02-17 08:35:27', '2016-02-17 08:35:27'),
(107, 1000002, '::1', 'Chrome', 'Windows', '2016-02-17 09:46:37', '2016-02-17 09:46:37'),
(108, 1000002, '::1', 'Firefox', 'Windows', '2016-02-17 10:51:34', '2016-02-17 10:51:34'),
(109, 1000002, '::1', 'Chrome', 'Windows', '2016-02-18 02:05:28', '2016-02-18 02:05:28'),
(110, 1000000, '::1', 'Chrome', 'Windows', '2016-02-18 09:40:45', '2016-02-18 09:40:45'),
(111, 1000002, '::1', 'Chrome', 'Windows', '2016-02-18 09:42:44', '2016-02-18 09:42:44'),
(112, 1000002, '::1', 'Firefox', 'Windows', '2016-02-18 11:59:36', '2016-02-18 11:59:36'),
(113, 1000002, '93.188.36.189', 'Chrome', 'Windows', '2016-02-19 09:58:56', '2016-02-19 09:58:56'),
(114, 1000002, '93.188.36.189', 'Chrome', 'Windows', '2016-02-19 14:00:19', '2016-02-19 14:00:19'),
(115, 1000002, '93.188.36.189', 'Chrome', 'Windows', '2016-02-19 17:21:47', '2016-02-19 17:21:47'),
(116, 1000002, '93.188.36.189', 'Chrome', 'Windows', '2016-02-19 20:31:59', '2016-02-19 20:31:59'),
(117, 1000002, '93.188.36.189', 'Chrome', 'Windows', '2016-02-20 13:33:00', '2016-02-20 13:33:00'),
(118, 1000002, '93.188.36.189', 'Firefox', 'Windows', '2016-02-20 13:34:30', '2016-02-20 13:34:30'),
(119, 1000002, '93.188.36.189', 'Chrome', 'Windows', '2016-02-20 17:08:03', '2016-02-20 17:08:03'),
(120, 1000003, '64.134.96.84', 'Chrome', 'OS X', '2016-02-21 02:21:20', '2016-02-21 02:21:20'),
(121, 1000000, '93.188.36.189', 'Chrome', 'Windows', '2016-02-21 07:10:26', '2016-02-21 07:10:26'),
(122, 1000002, '93.188.36.189', 'Chrome', 'Windows', '2016-02-21 07:13:52', '2016-02-21 07:13:52'),
(123, 1000003, '93.188.36.189', 'Chrome', 'Windows', '2016-02-21 07:17:17', '2016-02-21 07:17:17'),
(124, 1000007, '93.188.36.189', 'Chrome', 'Windows', '2016-02-21 07:18:06', '2016-02-21 07:18:06'),
(125, 1000006, '93.188.36.189', 'Chrome', 'Windows', '2016-02-21 07:22:12', '2016-02-21 07:22:12'),
(126, 1000002, '93.188.36.189', 'Chrome', 'Windows', '2016-02-21 09:30:32', '2016-02-21 09:30:32'),
(127, 1000002, '93.188.36.189', 'Chrome', 'Windows', '2016-02-22 13:25:29', '2016-02-22 13:25:29'),
(128, 1000000, '93.188.36.189', 'Chrome', 'Windows', '2016-02-22 15:26:06', '2016-02-22 15:26:06'),
(129, 1000002, '93.188.36.189', 'Chrome', 'Windows', '2016-02-22 15:28:37', '2016-02-22 15:28:37'),
(130, 1000000, '93.188.36.189', 'Chrome', 'Windows', '2016-02-22 17:40:57', '2016-02-22 17:40:57'),
(131, 1000000, '93.188.36.189', 'Chrome', 'Windows', '2016-02-22 20:20:50', '2016-02-22 20:20:50'),
(132, 1000008, '75.103.4.100', 'Chrome', 'OS X', '2016-02-23 23:18:13', '2016-02-23 23:18:13'),
(133, 1000000, '93.188.36.189', 'Chrome', 'Windows', '2016-02-23 23:29:54', '2016-02-23 23:29:54'),
(134, 1000006, '75.103.4.100', 'Chrome', 'OS X', '2016-02-23 23:31:31', '2016-02-23 23:31:31'),
(135, 1000005, '75.103.4.100', 'Chrome', 'OS X', '2016-02-23 23:32:40', '2016-02-23 23:32:40'),
(136, 1000005, '75.103.4.100', 'Chrome', 'OS X', '2016-02-23 23:34:33', '2016-02-23 23:34:33'),
(137, 1000002, '93.188.36.189', 'Chrome', 'Windows', '2016-02-24 09:13:09', '2016-02-24 09:13:09'),
(138, 1000008, '93.188.36.189', 'Chrome', 'Windows', '2016-02-24 09:35:58', '2016-02-24 09:35:58'),
(139, 1000008, '93.188.36.189', 'Chrome', 'Windows', '2016-02-24 10:26:26', '2016-02-24 10:26:26'),
(140, 1000005, '93.188.36.189', 'Chrome', 'Windows', '2016-02-24 12:22:58', '2016-02-24 12:22:58'),
(141, 1000009, '93.188.36.189', 'Chrome', 'Windows', '2016-02-24 14:25:56', '2016-02-24 14:25:56'),
(142, 1000002, '93.188.36.189', 'Chrome', 'Windows', '2016-02-24 14:36:51', '2016-02-24 14:36:51'),
(143, 1000010, '93.188.36.189', 'Chrome', 'Windows', '2016-02-24 15:23:27', '2016-02-24 15:23:27'),
(144, 1000002, '93.188.36.189', 'Chrome', 'Windows', '2016-02-25 21:57:52', '2016-02-25 21:57:52'),
(145, 1000007, '75.103.4.100', 'Chrome', 'OS X', '2016-02-26 00:57:40', '2016-02-26 00:57:40'),
(146, 1000007, '75.103.4.100', 'Chrome', 'OS X', '2016-02-26 01:13:20', '2016-02-26 01:13:20'),
(147, 1000005, '75.103.4.100', 'Chrome', 'OS X', '2016-02-26 01:42:59', '2016-02-26 01:42:59'),
(148, 1000002, '93.188.36.189', 'Chrome', 'Windows', '2016-02-26 11:30:10', '2016-02-26 11:30:10'),
(149, 1000002, '93.188.36.189', 'Chrome', 'Windows', '2016-02-26 16:29:43', '2016-02-26 16:29:43'),
(150, 1000002, '93.188.36.189', 'Chrome', 'Windows', '2016-02-26 19:42:34', '2016-02-26 19:42:34'),
(151, 1000007, '93.188.36.189', 'Chrome', 'Windows', '2016-02-26 21:18:53', '2016-02-26 21:18:53'),
(152, 1000000, '93.188.36.189', 'Chrome', 'Windows', '2016-02-27 11:14:25', '2016-02-27 11:14:25'),
(153, 1000000, '93.188.36.189', 'Chrome', 'Windows', '2016-02-27 13:42:50', '2016-02-27 13:42:50'),
(154, 1000007, '93.188.36.189', 'Chrome', 'Windows', '2016-02-27 14:41:26', '2016-02-27 14:41:26'),
(155, 1000001, '93.188.36.189', 'Chrome', 'Windows', '2016-02-27 14:55:13', '2016-02-27 14:55:13'),
(156, 1000000, '93.188.36.189', 'Chrome', 'Windows', '2016-02-29 11:49:27', '2016-02-29 11:49:27'),
(157, 1000002, '93.188.36.189', 'Chrome', 'Windows', '2016-02-29 19:07:25', '2016-02-29 19:07:25'),
(158, 1000003, '93.188.36.189', 'Chrome', 'Windows', '2016-02-29 19:08:49', '2016-02-29 19:08:49'),
(159, 1000011, '93.188.36.189', 'Chrome', 'Windows', '2016-02-29 20:26:31', '2016-02-29 20:26:31'),
(160, 1000007, '108.75.20.233', 'Chrome', 'OS X', '2016-03-01 03:57:44', '2016-03-01 03:57:44'),
(161, 1000000, '93.188.36.189', 'Chrome', 'Windows', '2016-03-01 11:37:19', '2016-03-01 11:37:19'),
(162, 1000007, '93.188.36.189', 'Chrome', 'Windows', '2016-03-01 11:44:15', '2016-03-01 11:44:15'),
(163, 1000000, '93.188.36.189', 'Chrome', 'Windows', '2016-03-01 12:45:00', '2016-03-01 12:45:00'),
(164, 1000000, '93.188.36.189', 'Chrome', 'Windows', '2016-03-01 13:04:12', '2016-03-01 13:04:12'),
(165, 1000001, '93.188.36.189', 'Chrome', 'Windows', '2016-03-01 13:05:26', '2016-03-01 13:05:26'),
(166, 1000007, '75.103.4.100', 'Chrome', 'OS X', '2016-03-02 00:29:56', '2016-03-02 00:29:56'),
(167, 1000002, '93.188.36.189', 'Chrome', 'Windows', '2016-03-02 00:32:05', '2016-03-02 00:32:05'),
(168, 1000003, '75.103.4.100', 'Chrome', 'OS X', '2016-03-02 00:32:49', '2016-03-02 00:32:49'),
(169, 1000007, '75.103.4.100', 'Chrome', 'OS X', '2016-03-02 00:56:13', '2016-03-02 00:56:13'),
(170, 1000000, '93.188.36.189', 'Chrome', 'Windows', '2016-03-02 18:46:35', '2016-03-02 18:46:35'),
(171, 1000002, '93.188.36.189', 'Chrome', 'Windows', '2016-03-02 20:19:07', '2016-03-02 20:19:07'),
(172, 1000000, '93.188.36.189', 'Chrome', 'Windows', '2016-03-02 20:20:14', '2016-03-02 20:20:14'),
(173, 1000000, '93.188.36.189', 'Chrome', 'Windows', '2016-03-02 20:21:18', '2016-03-02 20:21:18'),
(174, 1000002, '93.188.36.189', 'Chrome', 'Windows', '2016-03-02 20:22:42', '2016-03-02 20:22:42'),
(175, 1000007, '93.188.36.189', 'Chrome', 'Windows', '2016-03-02 21:07:35', '2016-03-02 21:07:35'),
(176, 1000002, '93.188.36.189', 'Chrome', 'Windows', '2016-03-02 21:09:46', '2016-03-02 21:09:46'),
(177, 1000005, '108.75.20.233', 'Chrome', 'OS X', '2016-03-02 22:30:01', '2016-03-02 22:30:01'),
(178, 1000007, '108.75.20.233', 'Chrome', 'OS X', '2016-03-02 22:36:04', '2016-03-02 22:36:04'),
(179, 1000000, '93.188.36.189', 'Chrome', 'Windows', '2016-03-03 11:58:34', '2016-03-03 11:58:34'),
(180, 1000007, '93.188.36.189', 'Chrome', 'Windows', '2016-03-03 15:20:44', '2016-03-03 15:20:44'),
(181, 1000007, '93.188.36.189', 'Chrome', 'Windows', '2016-03-03 19:18:53', '2016-03-03 19:18:53'),
(182, 1000002, '93.188.36.189', 'Chrome', 'Windows', '2016-03-04 13:32:06', '2016-03-04 13:32:06'),
(183, 1000002, '93.188.36.189', 'Chrome', 'Windows', '2016-03-04 20:36:26', '2016-03-04 20:36:26'),
(184, 1000000, '93.188.36.189', 'Chrome', 'Windows', '2016-03-04 21:24:02', '2016-03-04 21:24:02'),
(185, 1000002, '93.188.36.189', 'Chrome', 'Windows', '2016-03-04 22:58:59', '2016-03-04 22:58:59'),
(186, 1000002, '93.188.36.189', 'Chrome', 'Windows', '2016-03-05 17:56:24', '2016-03-05 17:56:24'),
(187, 1000002, '93.188.36.189', 'Chrome', 'Windows', '2016-03-07 11:04:08', '2016-03-07 11:04:08'),
(188, 1000000, '93.188.36.189', 'Chrome', 'Windows', '2016-03-08 18:18:49', '2016-03-08 18:18:49'),
(237, 1000002, '93.188.36.189', 'Chrome', 'Windows', '2016-03-16 21:16:41', '2016-03-16 21:16:41'),
(273, 1000081, '93.188.36.189', 'Chrome', 'Windows', '2016-03-22 15:25:56', '2016-03-22 15:25:56'),
(274, 1000081, '93.188.36.189', 'Chrome', 'Windows', '2016-03-22 20:18:39', '2016-03-22 20:18:39'),
(275, 1000082, '93.188.36.189', 'Chrome', 'Windows', '2016-03-22 20:53:02', '2016-03-22 20:53:02'),
(276, 1000002, '93.188.36.189', 'Chrome', 'Windows', '2016-03-23 00:13:05', '2016-03-23 00:13:05'),
(277, 1000082, '93.188.36.189', 'Chrome', 'Windows', '2016-03-23 20:28:34', '2016-03-23 20:28:34'),
(278, 1000083, '93.188.36.189', 'Chrome', 'Windows', '2016-03-23 20:29:49', '2016-03-23 20:29:49'),
(279, 1000084, '93.188.36.189', 'Chrome', 'Windows', '2016-03-23 20:35:51', '2016-03-23 20:35:51'),
(280, 1000005, '108.75.20.233', 'Chrome', 'OS X', '2016-03-23 21:07:08', '2016-03-23 21:07:08'),
(281, 1000006, '108.75.20.233', 'Chrome', 'OS X', '2016-03-23 21:08:05', '2016-03-23 21:08:05'),
(282, 1000005, '108.75.20.233', 'Chrome', 'OS X', '2016-03-23 21:10:53', '2016-03-23 21:10:53'),
(283, 1000002, '93.188.36.189', 'Chrome', 'Windows', '2016-03-23 21:39:33', '2016-03-23 21:39:33'),
(284, 1000000, '93.188.36.189', 'Chrome', 'Windows', '2016-03-23 22:15:03', '2016-03-23 22:15:03'),
(285, 1000000, '93.188.36.189', 'Chrome', 'Windows', '2016-03-24 13:25:55', '2016-03-24 13:25:55'),
(286, 1000083, '93.188.36.189', 'Chrome', 'Windows', '2016-03-24 13:56:51', '2016-03-24 13:56:51'),
(287, 1000083, '93.188.36.189', 'Firefox', 'Windows', '2016-03-24 16:28:53', '2016-03-24 16:28:53'),
(288, 1000083, '93.188.36.189', 'Chrome', 'Windows', '2016-03-24 16:57:05', '2016-03-24 16:57:05'),
(289, 1000000, '93.188.36.189', 'Chrome', 'Windows', '2016-03-25 09:09:22', '2016-03-25 09:09:22'),
(290, 1000085, '93.188.36.189', 'Chrome', 'Windows', '2016-03-25 14:41:01', '2016-03-25 14:41:01'),
(291, 1000085, '93.188.36.189', 'Chrome', 'Windows', '2016-03-26 15:38:41', '2016-03-26 15:38:41'),
(292, 1000085, '93.188.36.189', 'Chrome', 'Windows', '2016-03-28 14:19:21', '2016-03-28 14:19:21'),
(294, 1000083, '93.188.36.189', 'Chrome', 'Windows', '2016-03-28 18:26:53', '2016-03-28 18:26:53'),
(296, 1000002, '93.188.36.189', 'Chrome', 'Windows', '2016-03-28 18:37:36', '2016-03-28 18:37:36'),
(297, 1000087, '93.188.36.189', 'Chrome', 'Windows', '2016-03-28 18:55:16', '2016-03-28 18:55:16'),
(298, 1000002, '93.188.36.189', 'Chrome', 'Windows', '2016-03-28 19:01:42', '2016-03-28 19:01:42'),
(300, 1000002, '93.188.36.189', 'Chrome', 'Windows', '2016-03-28 19:18:35', '2016-03-28 19:18:35'),
(301, 1000002, '93.188.36.189', 'Chrome', 'Windows', '2016-03-30 04:10:43', '2016-03-30 04:10:43'),
(302, 1000005, '93.188.36.189', 'Chrome', 'Windows', '2016-03-30 04:12:28', '2016-03-30 04:12:28'),
(303, 1000087, '93.188.36.189', 'Chrome', 'Windows', '2016-03-30 04:16:35', '2016-03-30 04:16:35'),
(304, 1000001, '93.188.36.189', 'Chrome', 'Windows', '2016-03-30 04:29:45', '2016-03-30 04:29:45'),
(305, 1000083, '93.188.36.189', 'Chrome', 'Windows', '2016-03-30 04:58:49', '2016-03-30 04:58:49'),
(306, 1000001, '93.188.36.189', 'Chrome', 'Windows', '2016-03-30 05:17:15', '2016-03-30 05:17:15'),
(307, 1000087, '93.188.36.189', 'Chrome', 'Windows', '2016-03-30 05:28:01', '2016-03-30 05:28:01'),
(308, 1000087, '93.188.36.189', 'Chrome', 'Windows', '2016-03-30 14:11:05', '2016-03-30 14:11:05'),
(309, 1000083, '93.188.36.189', 'Chrome', 'Windows', '2016-03-30 14:13:47', '2016-03-30 14:13:47'),
(310, 1000001, '93.188.36.189', 'Chrome', 'Windows', '2016-03-30 14:18:59', '2016-03-30 14:18:59'),
(311, 1000000, '93.188.36.189', 'Chrome', 'Windows', '2016-03-30 19:02:08', '2016-03-30 19:02:08'),
(312, 1000002, '93.188.36.189', 'Chrome', 'Windows', '2016-03-30 19:06:57', '2016-03-30 19:06:57'),
(313, 1000083, '93.188.36.189', 'Chrome', 'Windows', '2016-03-30 21:03:56', '2016-03-30 21:03:56'),
(314, 1000083, '93.188.36.189', 'Chrome', 'Windows', '2016-03-31 23:07:05', '2016-03-31 23:07:05'),
(315, 1000002, '93.188.36.189', 'Chrome', 'Windows', '2016-03-31 23:44:22', '2016-03-31 23:44:22'),
(316, 1000002, '93.188.36.189', 'Chrome', 'Windows', '2016-04-01 09:15:04', '2016-04-01 09:15:04'),
(317, 1000002, '93.188.36.189', 'Chrome', 'Windows', '2016-04-01 14:57:52', '2016-04-01 14:57:52'),
(318, 1000000, '93.188.36.189', 'Chrome', 'Windows', '2016-04-01 17:45:45', '2016-04-01 17:45:45'),
(319, 1000083, '93.188.36.189', 'Chrome', 'Windows', '2016-04-01 17:46:55', '2016-04-01 17:46:55'),
(320, 1000002, '93.188.36.189', 'Chrome', 'Windows', '2016-04-07 10:06:01', '2016-04-07 10:06:01'),
(321, 1000002, '93.188.36.189', 'Chrome', 'Windows', '2016-04-07 12:48:10', '2016-04-07 12:48:10'),
(322, 1000000, '93.188.36.189', 'Chrome', 'Linux', '2016-06-02 11:39:07', '2016-06-02 11:39:07'),
(323, 1000002, '93.188.36.189', 'Chrome', 'Linux', '2016-06-02 11:41:57', '2016-06-02 11:41:57'),
(324, 1000002, '93.188.36.189', 'Chrome', 'Linux', '2016-06-02 12:47:28', '2016-06-02 12:47:28'),
(325, 1000089, '93.188.36.189', 'Chrome', 'Linux', '2016-06-02 12:53:12', '2016-06-02 12:53:12'),
(326, 1000002, '93.188.36.189', 'Chrome', 'Linux', '2016-06-02 12:54:27', '2016-06-02 12:54:27'),
(327, 1000090, '93.188.36.189', 'Chrome', 'Linux', '2016-06-02 12:56:39', '2016-06-02 12:56:39'),
(328, 1000002, '93.188.36.189', 'Chrome', 'Linux', '2016-06-02 14:56:23', '2016-06-02 14:56:23'),
(329, 1000091, '93.188.36.189', 'Chrome', 'Linux', '2016-06-02 14:58:20', '2016-06-02 14:58:20'),
(330, 1000002, '93.188.36.189', 'Chrome', 'Linux', '2016-06-02 14:58:39', '2016-06-02 14:58:39'),
(331, 1000000, '93.188.36.189', 'Chrome', 'Windows', '2016-06-03 17:33:56', '2016-06-03 17:33:56'),
(332, 1000002, '93.188.36.189', 'Chrome', 'Windows', '2016-06-03 17:36:05', '2016-06-03 17:36:05'),
(333, 1000002, '93.188.36.189', 'Chrome', 'Windows', '2016-06-03 17:38:27', '2016-06-03 17:38:27'),
(334, 1000091, '173.86.132.222', 'Chrome', 'OS X', '2016-06-09 06:04:56', '2016-06-09 06:04:56'),
(335, 1000092, '107.143.44.128', 'Opera', 'Windows', '2016-07-26 18:44:18', '2016-07-26 18:44:18');

-- --------------------------------------------------------

--
-- Table structure for table `makes`
--

CREATE TABLE IF NOT EXISTS `makes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `makes`
--

INSERT INTO `makes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Tesla', '2015-12-17 06:22:51', '2015-12-17 15:37:04'),
(3, 'Subaru', '2015-12-17 06:23:05', '2015-12-17 06:23:05');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_12_07_062505_entrust_setup_tables', 2),
('2015_12_16_131234_create_vehicles_table', 3),
('2015_12_17_035602_create_makes_table', 4),
('2015_12_17_094318_create_vmodels_table', 5),
('2015_12_18_060806_create_years_table', 6),
('2015_12_18_092649_create_colors_table', 7),
('2015_12_18_112718_create_vehicles_table', 8),
('2015_12_21_160150_create_notes_table', 9),
('2015_12_22_070556_create_histories_table', 10),
('2015_12_22_143148_create_products_table', 11),
('2015_12_23_072419_create_providers_table', 12),
('2015_12_23_142415_create_packages_table', 13),
('2015_12_24_083551_create_packusers_table', 14),
('2015_12_24_083551_create_package_users_table', 15),
('2015_12_25_091722_create_package_users_table', 16),
('2015_12_28_054054_create_product_benefits_table', 17),
('2015_12_28_101353_create_package_benefits_table', 18),
('2016_01_05_082145_create_claims_table', 19),
('2016_01_05_111527_create_cancellations_table', 20),
('2016_01_05_173132_create_transactions_table', 21),
('2016_01_18_093240_add_description_to_packagess_table', 22),
('2016_01_18_101256_add_order_to_packagess_table', 23),
('2016_01_18_104705_add_css_to_packagess_table', 24),
('2016_01_19_064006_add_columns_to_products_table', 25),
('2016_01_19_094708_create_product_packages_table', 26),
('2016_01_20_172436_add_columns_to_packages_table', 27),
('2016_01_21_030722_add_terms_to_products_table', 28),
('2016_01_25_091341_add_prices_to_packages_table', 29),
('2016_01_29_111723_add_cashier_columns', 30),
('2016_02_01_031324_modify_to_transactions_table', 31),
('2016_02_01_033442_add_fields_to_transactions_table', 32),
('2016_02_02_121336_add_model_id_to_vehicles_table', 33),
('2016_02_02_224639_create_vehicles_table', 34),
('2016_02_02_232706_create_vehicles_table', 35),
('2016_02_10_023052_change_status_users_table', 36),
('2016_02_10_023932_edit_paid_future_cycles_users_table', 37),
('2016_02_17_063429_add_datetime_to_role_user_table', 38),
('2016_02_20_105936_create_notes_table', 39),
('2016_03_01_134403_add_stripe_plans_to_packages_table', 40),
('2016_03_01_135115_create_plans_table', 40),
('2016_03_01_145545_edit_plans_table', 40),
('2016_03_04_201052_change_of_packages_table', 40),
('2016_03_05_091841_edit_packages_table', 40),
('2016_03_05_100247_editb_packages_table', 40),
('2016_03_05_101314_editc_packages_table', 40),
('2016_03_11_113243_edit_users_table', 41),
('2016_03_12_110104_edit_status_package_users_table', 42);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE IF NOT EXISTS `notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL,
  `purpose_id` int(10) unsigned NOT NULL,
  `details` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `notes_user_id_foreign` (`user_id`),
  KEY `notes_author_id_foreign` (`author_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `user_id`, `author_id`, `purpose_id`, `details`, `created_at`, `updated_at`) VALUES
(1, 1000007, 1000002, 3, 'Test text 1.', '2016-02-20 17:10:39', '2016-02-20 17:10:39'),
(2, 1000007, 1000002, 2, 'Test text 2.', '2016-02-20 17:10:58', '2016-02-20 17:10:58'),
(3, 1000005, 1000002, 1, 'Test text 3.', '2016-02-20 17:11:20', '2016-02-20 17:11:20'),
(4, 1000003, 1000003, 0, 'This is a test note', '2016-02-21 02:22:08', '2016-02-21 02:22:08'),
(5, 1000008, 1000003, 0, 'test note', '2016-03-02 00:34:15', '2016-03-02 00:34:15');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE IF NOT EXISTS `packages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `css` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ad_css` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ad_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ad_description` text COLLATE utf8_unicode_ci NOT NULL,
  `monthly_price` decimal(8,2) NOT NULL,
  `annual_price` decimal(8,2) NOT NULL,
  `stripe_plan_monthly_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripe_plan_annual_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `created_at`, `updated_at`, `description`, `order`, `css`, `ad_css`, `ad_title`, `ad_description`, `monthly_price`, `annual_price`, `stripe_plan_monthly_id`, `stripe_plan_annual_id`) VALUES
(1, 'Gold', '2015-12-24 09:20:58', '2016-04-07 10:35:37', 'Our GOLD package includes the benefits from the SILVER package and broadens the Roadside Assistance and Auto Deductible benefits as well as adding an ID THEFT benefit due to auto break-in for only $17.50/month', '3', 'gold', 'gold-plan', 'Our Gold Plan can''t be beat at $17.50 per month', '<p>SAVE MORE &mdash; purchase our GOLD Plan yearly and get TWO FREE MONTHS!</p>\r\n', 16.95, 169.60, '4', '7'),
(2, 'Bronze', '2015-12-26 12:41:39', '2016-04-07 10:33:43', 'Our BRONZE plan offers 5 essential products at an affordable cost of $6/month. Re-re!', '1', 'bronze', 'bronze-plan', ' Our Bronze Plans is a steal at $6 per month!', '<p>SAVE MORE &mdash; purchase our Bronze Plan yearly and get TWO FREE MONTHS!</p>\r\n', 6.00, 65.00, '2', '5'),
(3, 'Silver', '2016-01-20 11:44:45', '2016-04-07 10:34:56', 'Our SILVER package includes the benefits from the Bronze package covers most of your auto needs for only $12/month', '2', 'silver', 'silver-plan', 'Our Silver Plan is a deal at $11 per month', '<p>SAVE MORE &mdash; purchase our Silver Plan yearly and get TWO FREE MONTHS!</p>\r\n', 10.95, 109.50, '3', '6');

-- --------------------------------------------------------

--
-- Table structure for table `package_benefits`
--

CREATE TABLE IF NOT EXISTS `package_benefits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `provider_id` int(10) unsigned NOT NULL,
  `package_id` int(10) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `terms` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `package_benefits_provider_id_foreign` (`provider_id`),
  KEY `package_benefits_package_id_foreign` (`package_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `package_users`
--

CREATE TABLE IF NOT EXISTS `package_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `package_id` int(10) unsigned NOT NULL,
  `cycle_type` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `cycle_amount` tinyint(3) DEFAULT NULL,
  `effective_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expiration_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `package_users_user_id_foreign` (`user_id`),
  KEY `package_users_package_id_foreign` (`package_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=82 ;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE IF NOT EXISTS `plans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `stripe_plan` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name`, `description`, `stripe_plan`, `created_at`, `updated_at`) VALUES
(1, 'Bronze monthly', '', '1', '2016-03-07 11:15:16', '2016-03-07 11:15:16'),
(2, 'Silver monthly', '', '2', '2016-03-07 11:15:33', '2016-03-07 11:15:33'),
(3, 'Gold monthly', '', '3', '2016-03-07 11:15:48', '2016-03-07 11:15:48'),
(4, 'Bronze annual', '', '4', '2016-03-07 11:16:03', '2016-03-07 11:16:03'),
(5, 'Silver Annual', '', '5', '2016-03-07 11:16:23', '2016-03-07 11:16:23'),
(6, 'Gold Annual', '', '6', '2016-03-07 11:16:45', '2016-03-07 11:16:45');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `monthly_price` decimal(8,2) NOT NULL,
  `annual_price` decimal(8,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `css` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `order` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `terms` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `monthly_price`, `annual_price`, `created_at`, `updated_at`, `css`, `order`, `terms`) VALUES
(1, 'My Auto Expert Repair Advisor', '<ul>\r\n	<li>Repair Shop Locator</li>\r\n	<li>12 Month/12,000 Mile Nationwide Repair Warranty</li>\r\n	<li>Repair Diagnosis Evaluation &amp; Second Opinion</li>\r\n	<li>Repair Cost Estimator</li>\r\n	<li>Mechanical Diagnosis</li>\r\n	<li>Technical Assistance &ndash; Vehicle Features &amp; Mechanical Problems</li>\r\n</ul>\r\n', 0.13, 1.56, '2015-12-22 19:46:18', '2016-04-07 10:10:51', 'repair-advisor', '8', '<p>N/A</p>\r\n'),
(2, 'Tire & Wheel Road Hazard', '<ul>\r\n	<li>Tire Road Hazard Damage Reimbursement</li>\r\n	<li>Wheel Hazard Damage Reimbursement</li>\r\n	<li>Two Claims Per Year</li>\r\n</ul>\r\n', 0.40, 4.80, '2015-12-28 13:00:35', '2016-04-07 09:54:55', 'tire-wheel', '4', '<h5>Limitations</h5>\r\n\r\n<p>$250 / 2 Claims</p>\r\n'),
(3, 'Roadside Assistance', '<p>Expenses covered:</p>\r\n\r\n<ul>\r\n	<li>Towing</li>\r\n	<li>Flat Tire Assistance</li>\r\n	<li>Fuel Delivery Service</li>\r\n	<li>Lock-out Service</li>\r\n	<li>Jump Start</li>\r\n	<li>Winching/Extraction</li>\r\n</ul>\r\n', 0.48, 5.76, '2016-01-19 10:39:28', '2016-04-07 09:57:47', 'roadside-assistance', '5', '<h5>Limitations</h5>\r\n\r\n<p>$100 / 4 Claims</p>\r\n'),
(4, 'Front Windshield Protection', '<ul>\r\n	<li>Chipping</li>\r\n	<li>Repairable Damage</li>\r\n</ul>\r\n', 1.07, 12.84, '2016-01-19 11:38:26', '2016-04-07 10:24:00', 'front-windshield', '12', '<p>N/A</p>\r\n'),
(5, 'Auto Break-in Identity Theft Resolution', '<ul>\r\n	<li>Resolution Benefit provided in the event of Identity Theft due to an Auto Break-in</li>\r\n	<li>Repair Shop Locator</li>\r\n	<li>12 month/12,000 Mile Nationwide Repair Warranty</li>\r\n</ul>\r\n', 0.12, 1.44, '2016-01-19 11:40:21', '2016-04-07 10:12:32', 'autobreak-in', '9', '<p>N/A</p>\r\n'),
(6, 'Paintless Dent Repair', '<ul>\r\n	<li>Repair shop locator</li>\r\n	<li>12 Month/12,000 Mile Nationwide Repair Warranty</li>\r\n	<li>Door Dings</li>\r\n	<li>Minor Dents</li>\r\n</ul>\r\n', 1.73, 20.76, '2016-01-19 11:41:13', '2016-04-07 10:20:09', 'paintless', '11', '<p>N/A</p>\r\n'),
(7, '$1000 Auto Deductible Reimbursement', '<p>Reimburses up to $1000 Automobile Insurance Deductible for:</p>\r\n\r\n<ul>\r\n	<li>Collision Losses</li>\r\n	<li>Comprehensive Losses</li>\r\n	<li>One Claim per Year</li>\r\n</ul>\r\n', 1.33, 13.30, '2016-01-19 11:41:54', '2016-04-07 07:10:52', 'autodeductable-1000', '2', '<h5>Limitations (if any)</h5>\r\n\r\n<p>$1,000 / 2&nbsp;Claim / 1 Vehicle</p>\r\n'),
(8, 'Repair Guard Limited Warranty', '<p>RepairGuard Limited Warranty Doubler Doubles the length of time of the repair shop service warranty</p>\r\n\r\n<ul>\r\n	<li>Repair Shop Locator</li>\r\n	<li>12 Month/12,000 Mile NationwideRepair Warranty</li>\r\n</ul>\r\n', 0.15, 1.80, '2016-01-19 11:42:37', '2016-04-07 10:10:27', 'repair-guard', '7', '<p>N/A</p>\r\n'),
(10, 'ATM Safe Protection', '<p class="atm-safe-paragraph">ATM Safe Protection is afforded for:</p>\r\n\r\n<ul>\r\n	<li>Robbery at an ATM</li>\r\n	<li>Wire Transfers</li>\r\n	<li>Smartphone Fraudulent Withdrawal</li>\r\n	<li>Accidental Death/Hospital Benefit attributable to a robbery</li>\r\n	<li>Emergency Assistance</li>\r\n</ul>\r\n', 0.15, 1.80, '2016-01-19 11:44:10', '2016-04-07 10:17:24', 'atm-safe', '10', '<h5>Limitations</h5>\r\n\r\n<p>Varios</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(11, '$500 Automobile Deductible Reimbursement', '<p>Reimburses up to $1000 Automobile Insurance Deductible for:</p>\r\n\r\n<ul>\r\n	<li>Collision Losses</li>\r\n	<li>Comprehensive Losses</li>\r\n	<li>One Claim per Year</li>\r\n</ul>\r\n', 0.75, 9.00, '2016-04-07 05:35:56', '2016-04-07 06:11:54', 'autodeductable-1000', '1', '<h5>Limitations (if any)</h5>\r\n\r\n<p>$500 / 1 Claim / 1 Vehicle</p>\r\n'),
(12, 'Emergency Travel Reimbursement', '<p>N/A</p>\r\n', 0.04, 0.48, '2016-04-07 07:14:37', '2016-04-07 07:15:29', 'roadside-assistance', '3', '<h5>Limitations (if any)</h5>\r\n\r\n<p>$100 per Day / $500 per Claim</p>\r\n'),
(13, 'Roadside Assistance (+&nbsp;Lost Key)', '<p>Expenses covered:</p>\r\n\r\n<ul>\r\n	<li>Towing</li>\r\n	<li>Flat Tire Assistance</li>\r\n	<li>Fuel Delivery Service</li>\r\n	<li>Lock-out Service</li>\r\n	<li>Jump Start</li>\r\n	<li>Winching/Extraction</li>\r\n</ul>\r\n', 0.60, 7.20, '2016-01-19 10:39:28', '2016-04-07 10:07:00', 'roadside-assistance', '6', '<h5>Limitations</h5>\r\n\r\n<p>$100 / 3 Claims</p>\r\n\r\n<p>$100 / 1 Claim - Lost Key</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `product_benefits`
--

CREATE TABLE IF NOT EXISTS `product_benefits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `provider_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `cost` decimal(8,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `product_benefits_provider_id_foreign` (`provider_id`),
  KEY `product_benefits_product_id_foreign` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `product_packages`
--

CREATE TABLE IF NOT EXISTS `product_packages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `package_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `product_packages_product_id_foreign` (`product_id`),
  KEY `product_packages_package_id_foreign` (`package_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=35 ;

--
-- Dumping data for table `product_packages`
--

INSERT INTO `product_packages` (`id`, `product_id`, `package_id`, `created_at`, `updated_at`) VALUES
(5, 1, 1, '2016-01-20 12:59:37', '2016-01-20 12:59:37'),
(6, 1, 2, '2016-01-20 12:59:37', '2016-01-20 12:59:37'),
(8, 2, 1, '2016-01-20 12:59:54', '2016-01-20 12:59:54'),
(9, 2, 2, '2016-01-20 12:59:54', '2016-01-20 12:59:54'),
(10, 2, 3, '2016-01-20 12:59:54', '2016-01-20 12:59:54'),
(12, 3, 2, '2016-01-20 13:00:11', '2016-01-20 13:00:11'),
(14, 4, 1, '2016-01-20 13:00:30', '2016-01-20 13:00:30'),
(15, 4, 2, '2016-01-20 13:00:30', '2016-01-20 13:00:30'),
(16, 4, 3, '2016-01-20 13:00:30', '2016-01-20 13:00:30'),
(17, 5, 1, '2016-01-20 13:00:48', '2016-01-20 13:00:48'),
(20, 6, 1, '2016-01-20 13:01:12', '2016-01-20 13:01:12'),
(21, 6, 3, '2016-01-20 13:01:12', '2016-01-20 13:01:12'),
(22, 7, 1, '2016-01-20 13:01:58', '2016-01-20 13:01:58'),
(24, 8, 1, '2016-01-20 13:03:59', '2016-01-20 13:03:59'),
(26, 10, 1, '2016-01-20 13:04:53', '2016-01-20 13:04:53'),
(27, 11, 3, '2016-04-07 05:35:56', '2016-04-07 05:35:56'),
(28, 12, 1, '2016-04-07 07:14:37', '2016-04-07 07:14:37'),
(29, 12, 3, '2016-04-07 07:14:37', '2016-04-07 07:14:37'),
(30, 13, 1, '2016-04-07 10:01:48', '2016-04-07 10:01:48'),
(31, 13, 3, '2016-04-07 10:01:48', '2016-04-07 10:01:48'),
(32, 1, 3, '2016-04-07 10:09:58', '2016-04-07 10:09:58'),
(33, 10, 2, '2016-04-07 10:17:24', '2016-04-07 10:17:24'),
(34, 10, 3, '2016-04-07 10:17:24', '2016-04-07 10:17:24');

-- --------------------------------------------------------

--
-- Table structure for table `providers`
--

CREATE TABLE IF NOT EXISTS `providers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `providers`
--

INSERT INTO `providers` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Provider Test1', '2015-12-23 07:32:36', '2015-12-23 07:50:40'),
(2, 'Prov 2', '2015-12-28 07:58:33', '2015-12-28 07:58:33');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'manager', 'manager', 'manager', '2015-12-07 06:37:27', '2015-12-07 06:37:27'),
(2, 'member', 'member', 'member', '2015-12-07 06:37:43', '2015-12-07 06:37:43'),
(3, 'admin', 'admin', 'The highest level of access.', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE IF NOT EXISTS `role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_user_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1000000, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1000001, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1000002, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1000002, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1000003, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1000003, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1000004, 2, '2016-02-17 05:09:11', '2016-02-17 05:09:11'),
(1000005, 3, '2016-02-17 05:20:24', '2016-02-17 05:20:24'),
(1000006, 1, '2016-02-17 05:24:22', '2016-02-17 05:24:22'),
(1000007, 2, '2016-02-17 05:26:52', '2016-02-17 05:26:52'),
(1000008, 2, '2016-02-23 23:18:13', '2016-02-23 23:18:13'),
(1000009, 2, '2016-02-24 14:25:56', '2016-02-24 14:25:56'),
(1000010, 2, '2016-02-24 15:23:26', '2016-02-24 15:23:26'),
(1000011, 2, '2016-02-29 20:26:31', '2016-02-29 20:26:31'),
(1000081, 2, '2016-03-22 15:25:55', '2016-03-22 15:25:55'),
(1000082, 2, '2016-03-22 20:53:01', '2016-03-22 20:53:01'),
(1000083, 2, '2016-03-23 20:29:49', '2016-03-23 20:29:49'),
(1000085, 2, '2016-03-25 14:41:01', '2016-03-25 14:41:01'),
(1000087, 2, '2016-03-28 18:55:16', '2016-03-28 18:55:16'),
(1000089, 2, '2016-06-02 12:53:12', '2016-06-02 12:53:12'),
(1000090, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1000091, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1000091, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1000092, 2, '2016-07-26 18:44:18', '2016-07-26 18:44:18');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE IF NOT EXISTS `transactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `package_id` int(10) unsigned NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `payment_cycle` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `fee` decimal(8,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `charge_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `transactions_user_id_foreign` (`user_id`),
  KEY `transactions_package_id_foreign` (`package_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=159 ;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `package_id`, `amount`, `payment_cycle`, `fee`, `created_at`, `updated_at`, `charge_id`) VALUES
(148, 1000081, 2, 12.00, '0', 0.00, '2016-04-22 16:31:47', '2016-04-22 16:31:47', 'ch_1833ReAJZcZEXcr2mq7CeVy8'),
(149, 1000082, 2, 12.00, '0', 0.00, '2016-04-22 21:59:22', '2016-04-22 21:59:22', 'ch_1838YdAJZcZEXcr2GQOIQwCe'),
(150, 1000087, 2, 12.00, '0', 0.00, '2016-04-28 20:02:09', '2016-04-28 20:02:09', 'ch_185HaUAJZcZEXcr2V69RlctE'),
(151, 1000081, 2, 12.00, '0', 0.00, '2016-05-22 16:31:21', '2016-05-22 16:31:21', 'ch_18DvjkAJZcZEXcr29ySUUwd1'),
(152, 1000082, 2, 12.00, '0', 0.00, '2016-05-22 21:58:15', '2016-05-22 21:58:15', 'ch_18E0q3AJZcZEXcr2S8DXZTED'),
(153, 1000087, 2, 12.00, '0', 0.00, '2016-05-28 20:03:29', '2016-05-28 20:03:29', 'ch_18G9uLAJZcZEXcr2Webbx6Tz'),
(154, 1000081, 2, 12.00, '0', 0.00, '2016-06-22 16:28:16', '2016-06-22 16:28:16', 'ch_18PASZAJZcZEXcr2apwOU5r7'),
(155, 1000082, 2, 12.00, '0', 0.00, '2016-06-22 21:54:17', '2016-06-22 21:54:17', 'ch_18PFYFAJZcZEXcr2BpYdyvk6'),
(156, 1000087, 2, 12.00, '0', 0.00, '2016-06-28 19:57:13', '2016-06-28 19:57:13', 'ch_18ROaAAJZcZEXcr2HGFYPFsq'),
(157, 1000081, 2, 12.00, '0', 0.00, '2016-07-22 16:34:09', '2016-07-22 16:34:09', 'ch_18a2qsAJZcZEXcr2pULusfg1'),
(158, 1000082, 2, 12.00, '0', 0.00, '2016-07-22 22:17:31', '2016-07-22 22:17:31', 'ch_18a8D6AJZcZEXcr22Nu6kwZc');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `primary_phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `primary_phone_label` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `secondary_phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `secondary_phone_label` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_line1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address_line2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `state_id` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `zip` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `address_billing` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paid_future_cycles` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `stripe_active` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `stripe_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripe_subscription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripe_plan` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_four` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `subscription_ends_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1000093 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `primary_phone`, `primary_phone_label`, `secondary_phone`, `secondary_phone_label`, `address_line1`, `address_line2`, `city`, `state_id`, `zip`, `country_id`, `address_billing`, `paid_future_cycles`, `remember_token`, `created_at`, `updated_at`, `stripe_active`, `stripe_id`, `stripe_subscription`, `stripe_plan`, `last_four`, `trial_ends_at`, `subscription_ends_at`) VALUES
(1000000, 'Volodymyr', 'Vadiasov', 'volodymyr.vadiasov@gmail.com', '$2y$10$oyBL9a.r.ZIOV4uorzcbaOZ1i./au3wIvOw055Pl6Ae0CC4cgo/m6', '09619119970', '1', '0961911997', '2', 'pr. Grygorenko 8 171', '12', 'Kyiv', 'CA', '020680', 'US', NULL, '1|3,1|1', 'Qn3Q0MojHzgDX8Jr3lhaVmLLtCPRAnTrJCqCgynzYt76xdSSb06HWi2AVT3s', '2015-12-07 02:36:05', '2016-06-03 17:35:54', 'active', 'cus_88Xb8NebkhgBqh', 'sub_88XbfU4QzM0fQ5', '1', '4242', NULL, '2016-04-23 22:15:57'),
(1000001, 'Ex', 'Pired', 'expired@gmail.com', '$2y$10$NRxd7dJP055e9AxlACi7DuFR99wwgXg9qJHj8FdMOfOX.6PZRcK1C', '+123456789', '0', '', '1', 'Earth, right green corner', '', 'Earth-city', 'AB', '00000', 'CA', NULL, NULL, 'I9pG2oBlO4mOnd20hfpTQ4B7oNOxuBjSL6SHIqu8DbHNKhnL9h5QSg4DBUjH', '2015-12-10 11:35:50', '2016-03-30 05:27:52', 'canceled', NULL, NULL, NULL, NULL, NULL, NULL),
(1000002, 'Volodymyr', 'Vadiasov', 'Vadiasov.Volodymyr@gmail.com', '$2y$10$1T6B5/g45J7MsGZqSsLKz.uAzXET9t2MbPI5t8GhQ9d7mHJpRyq6S', '0961911997', '1', '0961911997', '0', 'pr. Grygorenko 7a 171', '', 'Kyiv', 'AB', '02068', 'CA', NULL, NULL, 'bWKoQbnEdw1lYkOZIVrm1qLCSh5brU1hSazQLruLq1wlc4TqdIETi8gXcDHX', '2015-12-17 03:55:11', '2016-06-02 14:56:34', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(1000003, 'Andrew', 'Benson', 'abenson@bensonmedia.com', '$2y$10$d94Htr5j/sUIXQz.NpMuKux1A9VGl3WeDvVZYoZV32Xw0QQ0tI98q', '1111111111111', '3', '', '2', 'Address Line 1', 'Address Line 2', 'City', 'OH', '11111', 'US', NULL, NULL, 'muxlPVIz3Oav0AVF20JCi30HGav5f2AxQVaJq1lkxpJomnxKLjpMSj6gwcD9', '2016-02-17 04:42:12', '2016-03-02 00:56:03', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(1000004, 'Andrew', 'Benson', 'djab.abenson@gmail.com', '$2y$10$Zl.ohu9cOauwSloKCpK8V.U5msVXTu.EiynaxPiXGBbWC9WJ4QvUC', '1111111111111', '0', '22222222', '1', 'Address Line 1', 'Address Line 2', 'City', 'OH', '11111', 'US', NULL, NULL, 'GHrGlMW8wK2gjXHObr7URJXJxnhFsYQLW86ErTiycMILt7M5lN5BoCRJGSkM', '2016-02-17 05:09:11', '2016-02-17 05:09:58', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(1000005, 'Andrew', 'Benson', 'admin@bensonmedia.com', '$2y$10$r2gn3cyKczx3Z2D4.A.7cexjRS3sF22MrqUOFoLj28yBjwN0ryCDO', '1111111111111', '0', '22222222', '1', 'Address Line 1', 'Address Line 2', 'City', 'OH', '11111', 'US', NULL, NULL, '2VJeGwqxQX2LEirpGC9oZb5GnkZTCaehcNtKddWbCB6utYwu17zR2Kfglc7r', '2016-02-17 05:20:24', '2016-04-01 00:11:16', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(1000006, 'Andrew', 'Benson', 'manager@bensonmedia.com', '$2y$10$q28dHzh/oSSSA88XA3WEbu95Dro1yOEKe6sQu/wRPx8mxogWkXokC', '1111111111111', '0', '22222222', '1', 'Address Line 1', 'Address Line 2', 'City', 'OH', '11111', 'US', NULL, NULL, 'IjOujGSDxDjVnPgn8E1uJq9wLmHnRb5ngCvNnh3n8qUaNKHC7d8TZPiM8pRr', '2016-02-17 05:24:22', '2016-03-23 21:08:20', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(1000007, 'Andrew', 'Benson', 'member@bensonmedia.com', '$2y$10$MSYYC1BVN2brUWYKX6P.NOKdhtoX8eUhAqy8jbgVoyPRBkvwkLZmS', '3047808163', '1', '3045843522', '1', '20 S 3rd St', 'Suite 210', 'Columbus', 'OH', '43215', 'US', NULL, NULL, 'E3WJS6VDswCfmD8kl15n9sCstGycmnvP7BCYPJrYD63OhCJWBnTFSuQySaGm', '2016-02-17 05:26:52', '2016-03-02 23:00:43', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(1000008, 'Test', 'User', 'andrew.benson@apsgci.com', '$2y$10$O7gVax9NJcXP8m1PNrhMT.XHEo2ec1oakig/AUBDqZAvh6DAh.3nm', '3045843522', '0', '6146361875', '2', '19 Highland Park', '', 'Wheeling', 'WV', '26003', 'US', NULL, NULL, '4RzArUc3z0NbljVBMXZP8jYBwDyu0VJrIILE1ANZ2FzGA7frXBG1u7B5K2jH', '2016-02-23 23:18:13', '2016-03-02 00:34:49', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(1000009, 'Test', 'Register', 'test@register.com', '$2y$10$E3EAoCUh0XbJJsCefkMWYe6FtnNoSeu1CZW9miXJOjmyvGJVkfrm6', '11111111111111111111', '0', '222222222222222222', '0', 'jh', ';kjb', 'ljh', 'AL', '01234', 'US', NULL, NULL, 'q7wUwwjXNd2dfT282emoaifQVKxkfYFIZMnEvMrpdSk3eBXFURCRELTyxAh7', '2016-02-24 14:25:56', '2016-04-01 00:10:50', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(1000010, 'Test', 'Testovich', 'test1@testovich.com', '$2y$10$k.z/ZqOh99/pb4Tp2ibd/OM8N4xXDs7PmbWkTHODL4nXC7FoUTs2G', '1111111111111', '0', '', '0', 'ljg', ';jkh', 'hgfd', 'CT', '01234', 'US', NULL, NULL, NULL, '2016-02-24 15:23:26', '2016-02-24 15:23:26', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(1000011, 'Test', 'Testlastname', 'ttt@gmail.com', '$2y$10$8qlrwTVRwgLN1aaGZ3j4JOPX9jt5e3U.8RBF53jCphkMlEEUUakm6', '11111111', '1', '2222222222', '2', 'kghvl', 'kpljbpbp', 'ljh', 'CO', '12345', 'US', NULL, NULL, NULL, '2016-02-29 20:26:31', '2016-02-29 20:26:31', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(1000081, 'Test', 'Test', 'test77@uv2.com', '$2y$10$A9cNuoYuyuN2VBMCJG2QFu58zuwLbLJ9Be/jIgnXFpHCqGdI3mFj6', '1111111111111', '0', '1111111111', '0', 'jhf', 'jhf', 'jhf', 'MB', '12345', 'CA', NULL, NULL, '43XSYYdLCpNs1D8L0EgnY6KQRe5gwAxWFY03FsAfJ9wB7xv1HX0x3ctq45uV', '2016-03-22 15:25:55', '2016-03-22 20:45:08', 'active', 'cus_883mQSLpOxivPD', 'sub_883mRN0O01AGBh', '2', '4242', NULL, '2016-04-22 15:26:20'),
(1000082, 'Test', 'Test', 'test78@uv2.com', '$2y$10$hMp/NAMyKaGM4oTGy623H.eaZelcCubd9iDel/MYCEJ1TH4eJrN1.', '1111111111111', '0', '1111111111', '0', 'jhf', 'jh', 'jhf', 'BC', '12345', 'CA', NULL, NULL, 'nCAORjdseEDaVu9R7SLO5MdZH3NOraFJmrcCgQ9rgScFMcfzYKypYhAxeFLd', '2016-03-22 20:53:01', '2016-04-01 09:32:33', 'active', 'cus_8893720OWIpoZL', 'sub_8893e9vRL0BdTv', '2', '4242', NULL, '2016-04-22 20:53:31'),
(1000083, 'Test', 'Test', 'test79@uv2.com', '$2y$10$DQM0MZ3LxqHX57s5wF5h6eD221FPjTQ/Ja/uMcdPR2vO2M.Tf/pjy', '1111111111111', '0', '1111111111', '0', 'hgf', 'hgf', 'hgf', 'BC', '12345', 'CA', NULL, NULL, 'BW7jTvLbtjvDFgWTcnk9io63OSClbxcogKVROKS73yVQpnUDVnYHz2b8xPrF', '2016-03-23 20:29:49', '2016-03-31 23:44:11', 'active', 'cus_88VtNvu8ALhoIn', 'sub_88VtBMCjzkGFFB', '1', '4242', NULL, '2016-04-23 20:30:19'),
(1000084, 'Test', 'Test', 'test80@uv2.com', '$2y$10$1PA5FreU0m3LiHJHzWVLge0ZKlNNCP2RU0SsLXgys1i5VqkzMz.ya', '1111111111111', '0', '1111111111', '1', 'jhf', 'jhf', 'jhf', 'NU', '12345', 'CA', NULL, NULL, 'TMzrTWddQhNB5eqE1EjWyWxDTeOI4qOu9RgmbFU1tnaF5ZNAXryn1EbY0gCq', '2016-03-23 20:35:51', '2016-03-23 21:39:22', 'active', 'cus_88VzqLw5OgeIIk', 'sub_88VzPok7XUr2Zz', '1', '4242', NULL, '2016-04-23 20:36:16'),
(1000085, 'Test', 'Test', 'test82@uv2.com', '$2y$10$6hy9L3N5qqI7Bk9B4ZTAReQyvJQOTMeO1UwFhN/QgoVV0.gropXBO', '1111111111111', '0', '1111111111', '0', 'jhg', 'jhg', 'jhg', 'NU', '12345', 'CA', NULL, NULL, '2JmoogfTg8V5jKtmfL9yOhGmZraA6nitG5TnB3BxKWjN6S8BL73pHjY9pWXW', '2016-03-25 14:41:01', '2016-03-28 14:36:49', '0', 'cus_8AIDQTmmYgozrl', NULL, NULL, NULL, NULL, NULL),
(1000087, 'Test', 'Test', 'test86@uv2.com', '$2y$10$hned295t1Tvia3KKaSUoTuEE4whRevU/l.K7pBN7kuu4pi2wY.pRe', '1111111111111', '0', '1111111111', '0', 'jhf', 'jhf', 'jhf', 'QC', '12345', 'CA', NULL, NULL, '6zrVWztEOGm6nrR1yu5u0UUMBxU6OW8l8tlJi0kBXkyrRf8ovANesurWwbVZ', '2016-03-28 18:55:16', '2016-04-01 10:26:19', 'active', 'cus_8AMVZtBUSNYjLx', 'sub_8AMVtrAjeYCNUx', '2', '4242', NULL, '2016-04-28 18:55:44'),
(1000089, 'Member', 'Test', 'member@abptest.com', '$2y$10$yzK1jBvUjltK/038peM6GeX6gsUR8rKbjbvkHGRoUhgxnk2zrK7ve', '111111111', '0', '222222222', '0', 'Address Line 1', 'Address Line 2', 'City', 'OH', '12345', 'US', NULL, NULL, '0cw5TEIWUKxIgckF4ZIZPZSy0GuDpEzFLPpnNIMfDjiChaFWMS7F3zWQUbdg', '2016-06-02 12:53:12', '2016-06-02 12:54:12', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(1000090, 'Manager', 'Test', 'manager@abptest.com', '$2y$10$trj7Z2WiXwXUCsSPYGygh.wceJoRlbwkCOWW1Er/P4vr3Y04OBzPS', '111111111', '0', '22222222', '0', 'Address Line 1', 'Address Line 2', 'City', 'OH', '12345', 'US', NULL, NULL, 'bnmvAiU4LCh65QoAwcSvnEeKCSrcAd9khzQUDYvnWv4Z0gRWJpJeeCPJ86aY', '2016-06-02 12:56:39', '2016-06-02 12:56:53', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(1000091, 'Admin', 'Test', 'admin@abptest.com', '$2y$10$xcjQLc6twWCkL/Zhoc6Sp.VcMI8Qd/IZQyJcJzbmYSbkbQCNozPYq', '111111111', '0', '222222222', '0', 'Address Line 1', 'Address Line 2', 'City', 'OH', '12345', 'US', NULL, NULL, 'CFDPMphM5lACalvYP8uEehtfxKwYN1edLRZML4GlnHU871gPS0jZYhPbciTI', '2016-06-02 14:58:20', '2016-06-02 14:58:31', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(1000092, '123', '12', '123@123.net', '$2y$10$NzWBDfiYYrEfIdhX434S7e0TE5RII/eWqw8cY4E3ggLunwHAYS5lm', '', '0', '', '0', '', '', '', 'PT', '', 'US', NULL, NULL, NULL, '2016-07-26 18:44:18', '2016-07-26 18:44:18', '0', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE IF NOT EXISTS `vehicles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `model_id` int(10) unsigned NOT NULL,
  `year_id` int(10) unsigned NOT NULL,
  `color_id` int(10) unsigned NOT NULL,
  `vin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `vehicles_vin_unique` (`vin`),
  KEY `vehicles_user_id_foreign` (`user_id`),
  KEY `vehicles_model_id_foreign` (`model_id`),
  KEY `vehicles_year_id_foreign` (`year_id`),
  KEY `vehicles_color_id_foreign` (`color_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `user_id`, `model_id`, `year_id`, `color_id`, `vin`, `created_at`, `updated_at`) VALUES
(3, 1000000, 1, 1, 1, '121212123', '2016-02-02 22:20:54', '2016-02-03 08:45:15');

-- --------------------------------------------------------

--
-- Table structure for table `vmodels`
--

CREATE TABLE IF NOT EXISTS `vmodels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `make_id` int(10) unsigned NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `vmodels_make_id_foreign` (`make_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `vmodels`
--

INSERT INTO `vmodels` (`id`, `make_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 3, 'Forester', '2015-12-18 02:53:16', '2015-12-18 02:53:16'),
(2, 3, 'Outback', '2015-12-18 03:06:32', '2015-12-18 03:35:49'),
(3, 3, 'Impreza WRX STI', '2015-12-18 03:11:38', '2015-12-18 03:11:38'),
(5, 2, 'Model S', '2015-12-18 03:38:12', '2015-12-18 03:38:12');

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE IF NOT EXISTS `years` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `year` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `years`
--

INSERT INTO `years` (`id`, `year`) VALUES
(1, '2001');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cancellations`
--
ALTER TABLE `cancellations`
  ADD CONSTRAINT `cancellations_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cancellations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `claims`
--
ALTER TABLE `claims`
  ADD CONSTRAINT `claims_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `claims_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `claims_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `colors`
--
ALTER TABLE `colors`
  ADD CONSTRAINT `colors_make_id_foreign` FOREIGN KEY (`make_id`) REFERENCES `makes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `histories`
--
ALTER TABLE `histories`
  ADD CONSTRAINT `histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `package_benefits`
--
ALTER TABLE `package_benefits`
  ADD CONSTRAINT `package_benefits_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `package_benefits_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `package_users`
--
ALTER TABLE `package_users`
  ADD CONSTRAINT `package_users_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `package_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_benefits`
--
ALTER TABLE `product_benefits`
  ADD CONSTRAINT `product_benefits_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_benefits_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_packages`
--
ALTER TABLE `product_packages`
  ADD CONSTRAINT `product_packages_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_packages_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD CONSTRAINT `vehicles_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vehicles_model_id_foreign` FOREIGN KEY (`model_id`) REFERENCES `vmodels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vehicles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vehicles_year_id_foreign` FOREIGN KEY (`year_id`) REFERENCES `years` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vmodels`
--
ALTER TABLE `vmodels`
  ADD CONSTRAINT `vmodels_make_id_foreign` FOREIGN KEY (`make_id`) REFERENCES `makes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
