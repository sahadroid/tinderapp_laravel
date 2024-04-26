-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 26, 2024 at 06:36 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbtinder`
--

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
(5, '2024_04_25_053301_create_people_table', 2);

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
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `picture` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `name`, `age`, `picture`, `location`, `created_at`, `updated_at`) VALUES
(1, 'Cristian Ronaldo', 25, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTZO17bRzvv3GcF1idzF6tVmTAfpI8LJU2ncN7Dg-YWQ&s', 'Portugal', '2024-04-25 06:25:22', NULL),
(2, 'Lionel Messy', 28, 'https://upload.wikimedia.org/wikipedia/commons/c/c1/Lionel_Messi_20180626.jpg', 'Argentina', NULL, NULL),
(3, 'David Beckham', 30, 'https://media.gq.com/photos/56eb1c3f1740841549748e55/master/pass/david-beckham-gq-0416-2.jpg', 'England', NULL, NULL),
(4, 'Ronaldinho', 23, 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Ronaldinho061115.jpg/800px-Ronaldinho061115.jpg', 'Brazillia', NULL, NULL),
(5, 'Paulo Maldini', 31, 'https://footballmakeshistory.eu/wp-content/uploads/2022/12/Paolo-Maldini-585x775.jpg', 'Italy', NULL, NULL);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `people_id` bigint(20) UNSIGNED NOT NULL,
  `picture` enum('like','nope','') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `person` enum('like','unlike','') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `people_id`, `picture`, `person`, `created_at`, `updated_at`) VALUES
(1, 2, 'nope', 'like', '2024-04-30 03:56:33', NULL),
(2, 3, 'like', 'like', '2024-04-26 03:56:33', NULL),
(3, 3, 'nope', 'unlike', '2024-04-26 03:57:28', NULL),
(4, 4, 'nope', 'unlike', '2024-04-26 03:57:28', NULL),
(5, 5, 'nope', 'like', '2024-04-26 04:19:55', NULL),
(6, 2, 'like', 'unlike', '2024-04-26 04:19:55', NULL),
(7, 3, 'nope', 'unlike', '2024-04-26 04:20:24', NULL),
(8, 4, 'like', 'unlike', '2024-04-26 04:20:24', NULL),
(9, 5, 'like', 'unlike', '2024-04-26 04:21:07', NULL),
(10, 5, 'nope', 'like', '2024-04-26 04:21:07', NULL),
(11, 4, 'nope', 'unlike', '2024-04-26 04:21:28', NULL),
(12, 4, 'like', 'like', '2024-04-26 04:21:28', NULL),
(13, 3, 'nope', 'like', '2024-04-26 04:21:48', NULL),
(14, 3, 'like', 'unlike', '2024-04-26 04:21:48', NULL),
(15, 2, 'nope', 'unlike', '2024-04-26 04:22:08', NULL),
(16, 2, 'like', 'like', '2024-04-26 04:22:08', NULL),
(17, 1, 'nope', 'like', '2024-04-26 04:22:28', NULL),
(18, 1, 'like', 'unlike', '2024-04-26 04:22:28', NULL),
(19, 1, 'nope', 'like', '2024-04-26 04:23:21', NULL),
(20, 1, 'like', 'unlike', '2024-04-26 04:23:21', NULL),
(21, 1, 'like', 'like', '2024-04-26 04:23:56', NULL),
(22, 1, 'like', 'like', '2024-04-26 04:23:56', NULL),
(23, 1, 'like', 'like', '2024-04-25 21:23:56', NULL),
(24, 1, 'like', 'like', '2024-04-25 21:23:56', NULL),
(25, 1, 'like', 'unlike', '2024-04-25 21:23:21', NULL),
(26, 1, 'nope', 'like', '2024-04-25 21:23:21', NULL),
(27, 1, 'like', 'unlike', '2024-04-25 21:22:28', NULL),
(28, 1, 'nope', 'like', '2024-04-25 21:22:28', NULL),
(29, 1, 'like', 'like', '2024-04-25 21:22:08', NULL),
(30, 1, 'nope', 'unlike', '2024-04-25 21:22:08', NULL),
(31, 2, 'nope', 'like', '2024-04-29 20:56:33', NULL),
(32, 2, 'like', 'unlike', '2024-04-25 21:19:55', NULL),
(33, 3, 'nope', 'unlike', '2024-04-25 21:20:24', NULL),
(34, 3, 'like', 'like', '2024-04-25 20:56:33', NULL),
(35, 3, 'nope', 'unlike', '2024-04-25 20:57:28', NULL),
(36, 3, 'nope', 'like', '2024-04-25 21:21:48', NULL),
(37, 3, 'like', 'unlike', '2024-04-25 21:21:48', NULL),
(38, 3, 'nope', 'unlike', '2024-04-25 20:57:28', NULL),
(39, 3, 'like', 'like', '2024-04-25 21:21:28', NULL),
(40, 3, 'like', 'unlike', '2024-04-25 21:20:24', NULL),
(41, 3, 'nope', 'unlike', '2024-04-25 21:21:28', NULL),
(42, 3, 'nope', 'like', '2024-04-25 21:19:55', NULL),
(43, 1, 'like', 'unlike', '2024-04-25 21:21:07', NULL),
(44, 1, 'nope', 'like', '2024-04-25 21:21:07', NULL),
(45, 2, 'like', 'like', '2024-04-25 21:23:56', NULL),
(46, 2, 'like', 'like', '2024-04-25 21:23:56', NULL),
(47, 2, 'like', 'unlike', '2024-04-25 21:23:21', NULL),
(48, 2, 'nope', 'like', '2024-04-25 21:23:21', NULL),
(49, 2, 'like', 'unlike', '2024-04-25 21:22:28', NULL),
(50, 2, 'nope', 'like', '2024-04-25 21:22:28', NULL),
(51, 2, 'like', 'like', '2024-04-25 21:22:08', NULL),
(52, 2, 'nope', 'unlike', '2024-04-25 21:22:08', NULL),
(53, 2, 'nope', 'like', '2024-04-29 20:56:33', NULL),
(54, 2, 'like', 'unlike', '2024-04-25 21:19:55', NULL),
(55, 4, 'nope', 'unlike', '2024-04-25 21:20:24', NULL),
(56, 4, 'like', 'like', '2024-04-25 20:56:33', NULL),
(57, 4, 'nope', 'unlike', '2024-04-25 20:57:28', NULL),
(58, 4, 'nope', 'like', '2024-04-25 21:21:48', NULL),
(59, 4, 'like', 'unlike', '2024-04-25 21:21:48', NULL),
(60, 4, 'nope', 'unlike', '2024-04-25 20:57:28', NULL),
(61, 4, 'like', 'like', '2024-04-25 21:21:28', NULL),
(62, 4, 'like', 'unlike', '2024-04-25 21:20:24', NULL),
(63, 4, 'nope', 'unlike', '2024-04-25 21:21:28', NULL),
(64, 4, 'nope', 'like', '2024-04-25 21:19:55', NULL),
(65, 4, 'like', 'unlike', '2024-04-25 21:21:07', NULL),
(66, 4, 'nope', 'like', '2024-04-25 21:21:07', NULL),
(67, 2, 'like', 'like', '2024-04-25 21:23:56', NULL),
(68, 2, 'like', 'like', '2024-04-25 21:23:56', NULL),
(69, 2, 'like', 'unlike', '2024-04-25 21:23:21', NULL),
(70, 2, 'nope', 'like', '2024-04-25 21:23:21', NULL),
(71, 2, 'like', 'unlike', '2024-04-25 21:22:28', NULL),
(72, 2, 'nope', 'like', '2024-04-25 21:22:28', NULL),
(73, 2, 'like', 'like', '2024-04-25 21:22:08', NULL),
(74, 2, 'nope', 'unlike', '2024-04-25 21:22:08', NULL),
(75, 2, 'nope', 'like', '2024-04-29 20:56:33', NULL),
(76, 2, 'like', 'unlike', '2024-04-25 21:19:55', NULL),
(77, 4, 'nope', 'unlike', '2024-04-25 21:20:24', NULL),
(78, 4, 'like', 'like', '2024-04-25 20:56:33', NULL),
(79, 4, 'nope', 'unlike', '2024-04-25 20:57:28', NULL),
(80, 4, 'nope', 'like', '2024-04-25 21:21:48', NULL),
(81, 4, 'like', 'unlike', '2024-04-25 21:21:48', NULL),
(82, 4, 'nope', 'unlike', '2024-04-25 20:57:28', NULL),
(83, 4, 'like', 'like', '2024-04-25 21:21:28', NULL),
(84, 4, 'like', 'unlike', '2024-04-25 21:20:24', NULL),
(85, 4, 'nope', 'unlike', '2024-04-25 21:21:28', NULL),
(86, 4, 'nope', 'like', '2024-04-25 21:19:55', NULL),
(87, 4, 'like', 'unlike', '2024-04-25 21:21:07', NULL),
(88, 4, 'nope', 'like', '2024-04-25 21:21:07', NULL),
(89, 5, 'like', 'like', '2024-04-25 21:23:56', NULL),
(90, 5, 'like', 'like', '2024-04-25 21:23:56', NULL),
(91, 5, 'like', 'unlike', '2024-04-25 21:23:21', NULL),
(92, 5, 'nope', 'like', '2024-04-25 21:23:21', NULL),
(93, 5, 'like', 'unlike', '2024-04-25 21:22:28', NULL),
(94, 5, 'nope', 'like', '2024-04-25 21:22:28', NULL),
(95, 5, 'like', 'like', '2024-04-25 21:22:08', NULL),
(96, 5, 'nope', 'unlike', '2024-04-25 21:22:08', NULL),
(97, 5, 'nope', 'like', '2024-04-29 20:56:33', NULL),
(98, 5, 'like', 'unlike', '2024-04-25 21:19:55', NULL),
(99, 5, 'nope', 'unlike', '2024-04-25 21:20:24', NULL),
(100, 5, 'like', 'like', '2024-04-25 20:56:33', NULL),
(101, 5, 'nope', 'unlike', '2024-04-25 20:57:28', NULL),
(102, 5, 'nope', 'like', '2024-04-25 21:21:48', NULL),
(103, 5, 'like', 'unlike', '2024-04-25 21:21:48', NULL),
(104, 5, 'nope', 'unlike', '2024-04-25 20:57:28', NULL),
(105, 5, 'like', 'like', '2024-04-25 21:21:28', NULL),
(106, 5, 'like', 'unlike', '2024-04-25 21:20:24', NULL),
(107, 5, 'nope', 'unlike', '2024-04-25 21:21:28', NULL),
(108, 5, 'nope', 'like', '2024-04-25 21:19:55', NULL),
(109, 5, 'like', 'unlike', '2024-04-25 21:21:07', NULL),
(110, 5, 'nope', 'like', '2024-04-25 21:21:07', NULL),
(111, 5, 'like', 'like', '2024-04-25 21:23:56', NULL),
(112, 5, 'like', 'like', '2024-04-25 21:23:56', NULL),
(113, 5, 'like', 'unlike', '2024-04-25 21:23:21', NULL),
(114, 5, 'nope', 'like', '2024-04-25 21:23:21', NULL),
(115, 5, 'like', 'unlike', '2024-04-25 21:22:28', NULL),
(116, 5, 'nope', 'like', '2024-04-25 21:22:28', NULL),
(117, 5, 'like', 'like', '2024-04-25 21:22:08', NULL),
(118, 5, 'nope', 'unlike', '2024-04-25 21:22:08', NULL),
(119, 5, 'nope', 'like', '2024-04-29 20:56:33', NULL),
(120, 5, 'like', 'unlike', '2024-04-25 21:19:55', NULL),
(121, 5, 'nope', 'unlike', '2024-04-25 21:20:24', NULL),
(122, 5, 'like', 'like', '2024-04-25 20:56:33', NULL),
(123, 5, 'nope', 'unlike', '2024-04-25 20:57:28', NULL),
(124, 5, 'nope', 'like', '2024-04-25 21:21:48', NULL),
(125, 5, 'like', 'unlike', '2024-04-25 21:21:48', NULL),
(126, 5, 'nope', 'unlike', '2024-04-25 20:57:28', NULL),
(127, 5, 'like', 'like', '2024-04-25 21:21:28', NULL),
(128, 5, 'like', 'unlike', '2024-04-25 21:20:24', NULL),
(129, 5, 'nope', 'unlike', '2024-04-25 21:21:28', NULL),
(130, 5, 'nope', 'like', '2024-04-25 21:19:55', NULL),
(131, 5, 'like', 'unlike', '2024-04-25 21:21:07', NULL),
(132, 5, 'nope', 'like', '2024-04-25 21:21:07', NULL),
(133, 2, 'like', 'like', '2024-04-25 21:23:56', NULL),
(134, 2, 'like', 'like', '2024-04-25 21:23:56', NULL),
(135, 2, 'like', 'unlike', '2024-04-25 21:23:21', NULL),
(136, 2, 'nope', 'like', '2024-04-25 21:23:21', NULL),
(137, 2, 'like', 'unlike', '2024-04-25 21:22:28', NULL),
(138, 2, 'nope', 'like', '2024-04-25 21:22:28', NULL),
(139, 2, 'like', 'like', '2024-04-25 21:22:08', NULL),
(140, 2, 'nope', 'unlike', '2024-04-25 21:22:08', NULL),
(141, 2, 'nope', 'like', '2024-04-29 20:56:33', NULL),
(142, 2, 'like', 'unlike', '2024-04-25 21:19:55', NULL),
(143, 2, 'nope', 'unlike', '2024-04-25 21:20:24', NULL),
(144, 2, 'like', 'like', '2024-04-25 20:56:33', NULL),
(145, 2, 'nope', 'unlike', '2024-04-25 20:57:28', NULL),
(146, 2, 'nope', 'like', '2024-04-25 21:21:48', NULL),
(147, 2, 'like', 'unlike', '2024-04-25 21:21:48', NULL),
(148, 2, 'nope', 'unlike', '2024-04-25 20:57:28', NULL),
(149, 2, 'like', 'like', '2024-04-25 21:21:28', NULL),
(150, 2, 'like', 'unlike', '2024-04-25 21:20:24', NULL),
(151, 2, 'nope', 'unlike', '2024-04-25 21:21:28', NULL),
(152, 2, 'nope', 'like', '2024-04-25 21:19:55', NULL),
(153, 2, 'like', 'unlike', '2024-04-25 21:21:07', NULL),
(154, 2, 'nope', 'like', '2024-04-25 21:21:07', NULL),
(155, 2, 'like', 'like', '2024-04-25 21:23:56', NULL),
(156, 2, 'like', 'like', '2024-04-25 21:23:56', NULL),
(157, 2, 'like', 'unlike', '2024-04-25 21:23:21', NULL),
(158, 2, 'nope', 'like', '2024-04-25 21:23:21', NULL),
(159, 2, 'like', 'unlike', '2024-04-25 21:22:28', NULL),
(160, 2, 'nope', 'like', '2024-04-25 21:22:28', NULL),
(161, 2, 'like', 'like', '2024-04-25 21:22:08', NULL),
(162, 2, 'nope', 'unlike', '2024-04-25 21:22:08', NULL),
(163, 2, 'nope', 'like', '2024-04-29 20:56:33', NULL),
(164, 2, 'like', 'unlike', '2024-04-25 21:19:55', NULL),
(165, 2, 'nope', 'unlike', '2024-04-25 21:20:24', NULL),
(166, 2, 'like', 'like', '2024-04-25 20:56:33', NULL),
(167, 2, 'nope', 'unlike', '2024-04-25 20:57:28', NULL),
(168, 2, 'nope', 'like', '2024-04-25 21:21:48', NULL),
(169, 2, 'like', 'unlike', '2024-04-25 21:21:48', NULL),
(170, 2, 'nope', 'unlike', '2024-04-25 20:57:28', NULL),
(171, 2, 'like', 'like', '2024-04-25 21:21:28', NULL),
(172, 2, 'like', 'unlike', '2024-04-25 21:20:24', NULL),
(173, 2, 'nope', 'unlike', '2024-04-25 21:21:28', NULL),
(174, 2, 'nope', 'like', '2024-04-25 21:19:55', NULL),
(175, 2, 'like', 'unlike', '2024-04-25 21:21:07', NULL),
(176, 2, 'nope', 'like', '2024-04-25 21:21:07', NULL),
(177, 4, 'like', 'like', '2024-04-25 21:23:56', NULL),
(178, 4, 'like', 'like', '2024-04-25 21:23:56', NULL),
(179, 4, 'like', 'unlike', '2024-04-25 21:23:21', NULL),
(180, 4, 'nope', 'like', '2024-04-25 21:23:21', NULL),
(181, 4, 'like', 'unlike', '2024-04-25 21:22:28', NULL),
(182, 4, 'nope', 'like', '2024-04-25 21:22:28', NULL),
(183, 4, 'like', 'like', '2024-04-25 21:22:08', NULL),
(184, 4, 'nope', 'unlike', '2024-04-25 21:22:08', NULL),
(185, 4, 'nope', 'like', '2024-04-29 20:56:33', NULL),
(186, 4, 'like', 'unlike', '2024-04-25 21:19:55', NULL),
(187, 4, 'nope', 'unlike', '2024-04-25 21:20:24', NULL),
(188, 4, 'like', 'like', '2024-04-25 20:56:33', NULL),
(189, 4, 'nope', 'unlike', '2024-04-25 20:57:28', NULL),
(190, 4, 'nope', 'like', '2024-04-25 21:21:48', NULL),
(191, 4, 'like', 'unlike', '2024-04-25 21:21:48', NULL),
(192, 4, 'nope', 'unlike', '2024-04-25 20:57:28', NULL),
(193, 4, 'like', 'like', '2024-04-25 21:21:28', NULL),
(194, 4, 'like', 'unlike', '2024-04-25 21:20:24', NULL),
(195, 4, 'nope', 'unlike', '2024-04-25 21:21:28', NULL),
(196, 4, 'nope', 'like', '2024-04-25 21:19:55', NULL),
(197, 4, 'like', 'unlike', '2024-04-25 21:21:07', NULL),
(198, 4, 'nope', 'like', '2024-04-25 21:21:07', NULL),
(199, 3, 'like', 'like', '2024-04-25 21:23:56', NULL),
(200, 3, 'like', 'like', '2024-04-25 21:23:56', NULL),
(201, 3, 'like', 'unlike', '2024-04-25 21:23:21', NULL),
(202, 3, 'nope', 'like', '2024-04-25 21:23:21', NULL),
(203, 3, 'like', 'unlike', '2024-04-25 21:22:28', NULL),
(204, 3, 'nope', 'like', '2024-04-25 21:22:28', NULL),
(205, 3, 'like', 'like', '2024-04-25 21:22:08', NULL),
(206, 3, 'nope', 'unlike', '2024-04-25 21:22:08', NULL),
(207, 3, 'nope', 'like', '2024-04-29 20:56:33', NULL),
(208, 3, 'like', 'unlike', '2024-04-25 21:19:55', NULL),
(209, 3, 'nope', 'unlike', '2024-04-25 21:20:24', NULL),
(210, 3, 'like', 'like', '2024-04-25 20:56:33', NULL),
(211, 3, 'nope', 'unlike', '2024-04-25 20:57:28', NULL),
(212, 3, 'nope', 'like', '2024-04-25 21:21:48', NULL),
(213, 3, 'like', 'unlike', '2024-04-25 21:21:48', NULL),
(214, 3, 'nope', 'unlike', '2024-04-25 20:57:28', NULL),
(215, 3, 'like', 'like', '2024-04-25 21:21:28', NULL),
(216, 3, 'like', 'unlike', '2024-04-25 21:20:24', NULL),
(217, 3, 'nope', 'unlike', '2024-04-25 21:21:28', NULL),
(218, 3, 'nope', 'like', '2024-04-25 21:19:55', NULL),
(219, 3, 'like', 'unlike', '2024-04-25 21:21:07', NULL),
(220, 3, 'nope', 'like', '2024-04-25 21:21:07', NULL),
(221, 3, 'like', 'like', '2024-04-25 21:23:56', NULL),
(222, 3, 'like', 'like', '2024-04-25 21:23:56', NULL),
(223, 3, 'like', 'unlike', '2024-04-25 21:23:21', NULL),
(224, 3, 'nope', 'like', '2024-04-25 21:23:21', NULL),
(225, 3, 'like', 'unlike', '2024-04-25 21:22:28', NULL),
(226, 3, 'nope', 'like', '2024-04-25 21:22:28', NULL),
(227, 3, 'like', 'like', '2024-04-25 21:22:08', NULL),
(228, 3, 'nope', 'unlike', '2024-04-25 21:22:08', NULL),
(229, 3, 'nope', 'like', '2024-04-29 20:56:33', NULL),
(230, 3, 'like', 'unlike', '2024-04-25 21:19:55', NULL),
(231, 3, 'nope', 'unlike', '2024-04-25 21:20:24', NULL),
(232, 3, 'like', 'like', '2024-04-25 20:56:33', NULL),
(233, 3, 'nope', 'unlike', '2024-04-25 20:57:28', NULL),
(234, 3, 'nope', 'like', '2024-04-25 21:21:48', NULL),
(235, 3, 'like', 'unlike', '2024-04-25 21:21:48', NULL),
(236, 3, 'nope', 'unlike', '2024-04-25 20:57:28', NULL),
(237, 3, 'like', 'like', '2024-04-25 21:21:28', NULL),
(238, 3, 'like', 'unlike', '2024-04-25 21:20:24', NULL),
(239, 3, 'nope', 'unlike', '2024-04-25 21:21:28', NULL),
(240, 3, 'nope', 'like', '2024-04-25 21:19:55', NULL),
(241, 3, 'like', 'unlike', '2024-04-25 21:21:07', NULL),
(242, 3, 'nope', 'like', '2024-04-25 21:21:07', NULL),
(243, 3, 'like', 'like', '2024-04-25 21:23:56', NULL),
(244, 3, 'like', 'like', '2024-04-25 21:23:56', NULL),
(245, 3, 'like', 'unlike', '2024-04-25 21:23:21', NULL),
(246, 3, 'nope', 'like', '2024-04-25 21:23:21', NULL),
(247, 3, 'like', 'unlike', '2024-04-25 21:22:28', NULL),
(248, 3, 'nope', 'like', '2024-04-25 21:22:28', NULL),
(249, 3, 'like', 'like', '2024-04-25 21:22:08', NULL),
(250, 3, 'nope', 'unlike', '2024-04-25 21:22:08', NULL),
(251, 3, 'nope', 'like', '2024-04-29 20:56:33', NULL),
(252, 3, 'like', 'unlike', '2024-04-25 21:19:55', NULL),
(253, 3, 'nope', 'unlike', '2024-04-25 21:20:24', NULL),
(254, 3, 'like', 'like', '2024-04-25 20:56:33', NULL),
(255, 3, 'nope', 'unlike', '2024-04-25 20:57:28', NULL),
(256, 3, 'nope', 'like', '2024-04-25 21:21:48', NULL),
(257, 3, 'like', 'unlike', '2024-04-25 21:21:48', NULL),
(258, 3, 'nope', 'unlike', '2024-04-25 20:57:28', NULL),
(259, 3, 'like', 'like', '2024-04-25 21:21:28', NULL),
(260, 3, 'like', 'unlike', '2024-04-25 21:20:24', NULL),
(261, 3, 'nope', 'unlike', '2024-04-25 21:21:28', NULL),
(262, 3, 'nope', 'like', '2024-04-25 21:19:55', NULL),
(263, 3, 'like', 'unlike', '2024-04-25 21:21:07', NULL),
(264, 3, 'nope', 'like', '2024-04-25 21:21:07', NULL),
(265, 3, 'like', 'like', '2024-04-25 21:23:56', NULL),
(266, 3, 'like', 'like', '2024-04-25 21:23:56', NULL),
(267, 3, 'like', 'unlike', '2024-04-25 21:23:21', NULL),
(268, 3, 'nope', 'like', '2024-04-25 21:23:21', NULL),
(269, 3, 'like', 'unlike', '2024-04-25 21:22:28', NULL),
(270, 3, 'nope', 'like', '2024-04-25 21:22:28', NULL),
(271, 3, 'like', 'like', '2024-04-25 21:22:08', NULL),
(272, 3, 'nope', 'unlike', '2024-04-25 21:22:08', NULL),
(273, 3, 'nope', 'like', '2024-04-29 20:56:33', NULL),
(274, 3, 'like', 'unlike', '2024-04-25 21:19:55', NULL),
(275, 3, 'nope', 'unlike', '2024-04-25 21:20:24', NULL),
(276, 3, 'like', 'like', '2024-04-25 20:56:33', NULL),
(277, 3, 'nope', 'unlike', '2024-04-25 20:57:28', NULL),
(278, 3, 'nope', 'like', '2024-04-25 21:21:48', NULL),
(279, 3, 'like', 'unlike', '2024-04-25 21:21:48', NULL),
(280, 3, 'nope', 'unlike', '2024-04-25 20:57:28', NULL),
(281, 3, 'like', 'like', '2024-04-25 21:21:28', NULL),
(282, 3, 'like', 'unlike', '2024-04-25 21:20:24', NULL),
(283, 3, 'nope', 'unlike', '2024-04-25 21:21:28', NULL),
(284, 3, 'nope', 'like', '2024-04-25 21:19:55', NULL),
(285, 3, 'like', 'unlike', '2024-04-25 21:21:07', NULL),
(286, 3, 'nope', 'like', '2024-04-25 21:21:07', NULL);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `people`
--
ALTER TABLE `people`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=287;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
