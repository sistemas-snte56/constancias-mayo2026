-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 12, 2026 at 11:54 PM
-- Server version: 8.4.6
-- PHP Version: 8.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `constancias2026`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel_cache_356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1778623921),
('laravel_cache_356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1778623921;', 1778623921),
('laravel_cache_livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6', 'i:1;', 1778604757),
('laravel_cache_livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6:timer', 'i:1778604757;', 1778604757),
('laravel_cache_spatie.permission.cache', 'a:3:{s:5:\"alias\";a:0:{}s:11:\"permissions\";a:0:{}s:5:\"roles\";a:0:{}}', 1778699777);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delegaciones`
--

CREATE TABLE `delegaciones` (
  `id` bigint UNSIGNED NOT NULL,
  `region_id` bigint UNSIGNED NOT NULL,
  `delegacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sede` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nivel_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delegaciones`
--

INSERT INTO `delegaciones` (`id`, `region_id`, `delegacion`, `sede`, `nivel_id`, `created_at`, `updated_at`) VALUES
(2, 1, 'D-II-59', 'PANUCO', 36, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(3, 2, 'D-III-13', 'TUXPAN', 19, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(4, 2, 'D-II-20', 'TUXPAN', 39, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(5, 4, 'D-I-77', 'JUCHIQUE DE FERRER', 35, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(6, 2, 'D-I-94', 'TAMIAHUA', 35, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(7, 6, 'D-I-08', 'CARDEL', 35, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(8, 2, 'D-I-09', 'CERRO AZUL', 35, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(9, 2, 'D-II-22', 'NARANJOS', 39, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(10, 7, 'D-II-31', 'COSCOMATEPEC', 39, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(11, 1, 'D-II-35', 'TANTOYUCA', 39, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(12, 2, 'D-II-53', 'TUXPAN', 22, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(13, 2, 'D-I-57', 'TUXPAN', 35, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(14, 2, 'D-I-35', 'NARANJOS', 35, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(15, 2, 'D-I-19', 'CHONTLA', 35, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(16, 2, 'D-I-38', 'OZULUAMA', 35, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(17, 1, 'D-I-71', 'BENITO JUAREZ', 35, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(18, 2, 'D-I-80', 'TUXPAN', 34, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(19, 1, 'D-II-50', 'TEMPOAL', 39, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(20, 4, 'D-II-34', 'MISANTLA', 39, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(21, 5, 'D-I-60', 'XALAPA', 34, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(22, 6, 'D-I-43', 'PIEDRAS NEGRAS', 35, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(23, 4, 'D-I-93', 'VEGA DE LA TORRE', 35, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(24, 4, 'D-III-15', 'MARTINEZ DE LA TORRE', 19, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(25, 9, 'D-II-12', 'TLACOTALPAN', 37, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(26, 4, 'D-I-74', 'TLAPACOYAN', 35, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(27, 4, 'D-II-32', 'MARTINEZ DE LA TORRE', 39, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(28, 4, 'D-II-42', 'MARTINEZ DE LA TORRE', 40, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(29, 1, 'D-II-37', 'TANTOYUCA', 40, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(30, 4, 'D-II-48', 'SAN RAFAEL', 39, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(31, 4, 'D-I-30', 'MARTINEZ DE LA TORRE', 35, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(32, 4, 'D-I-33', 'MISANTLA', 35, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(33, 9, 'D-II-14', 'ALVARADO', 6, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(34, 6, 'D-I-58', 'VERACRUZ', 35, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(35, 6, 'D-III-18', 'CARDEL', 19, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(36, 9, 'D-I-79', 'ALVARADO', 34, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(37, 7, 'D-I-23', 'HUATUSCO', 35, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(38, 5, 'D-II-58', 'XALAPA', 39, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(39, 7, 'D-I-66', 'CORDOBA', 27, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(40, 4, 'D-I-88', 'MARTINEZ DE LA TORRE', 34, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(41, 8, 'D-I-78', 'ORIZABA', 34, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(42, 10, 'D-I-48', 'SAN ANDRES TUXTLA', 35, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(43, 7, 'D-I-36', 'OMEALCA', 35, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(44, 7, 'D-I-14', 'CORDOBA', 30, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(45, 10, 'D-I-25', 'ISLA', 35, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(46, 9, 'D-II-29', 'TLACOTALPAN', 32, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(47, 10, 'D-II-16', 'SAN ANDRES TUXTLA', 39, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(48, 5, 'D-I-84', 'XALAPA', 38, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(49, 10, 'D-I-45', 'PLAYA VICENTE', 35, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(50, 10, 'D-II-28', 'ISLA', 39, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(51, 9, 'D-II-10', 'ALVARADO', 37, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(52, 9, 'D-I-63', 'COSAMALOAPAN', 34, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(53, 10, 'D-I-29', 'LERDO DE TEJADA', 35, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(54, 10, 'D-I-89', 'ISLA', 34, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(55, 10, 'D-II-51', 'SANTIAGO TUXTLA', 39, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(56, 10, 'D-I-68', 'SANTIAGO TUXTLA', 35, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(57, 8, 'D-I-37', 'IXTACZOQUITLAN', 35, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(58, 5, 'D-III-04', 'XALAPA', 1, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(59, 5, 'D-II-21', 'XALAPA', 39, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(60, 7, 'D-II-09', 'CORDOBA', 24, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(61, 5, 'D-II-46', 'XALAPA', 39, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(62, 10, 'D-I-41', 'SAN ANDRES TUXTLA', 34, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(63, 8, 'D-I-65', 'ZONGOLICA', 35, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(64, 8, 'D-I-55', 'SAN JUAN TEXHUACAN', 35, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(65, 8, 'D-I-10', 'CIUDAD MENDOZA', 35, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(66, 8, 'D-I-54', 'TEQUILA', 35, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(67, 5, 'D-III-01', 'XALAPA', 31, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(68, 7, 'D-III-11', 'CORDOBA', 19, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(69, 5, 'D-I-05', 'ALTOTONGA', 35, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(70, 5, 'D-I-92', 'XALAPA', 20, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(71, 1, 'D-I-90', 'TANTOYUCA', 34, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(72, 1, 'D-I-87', 'IXCATEPEC', 35, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(73, 8, 'D-II-17', 'ORIZABA', 40, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(74, 8, 'D-II-26', 'ORIZABA', 39, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(75, 8, 'D-I-03', 'ACULTZINGO', 35, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(76, 9, 'D-II-27', 'TIERRA BLANCA', 39, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(77, 8, 'D-III-05', 'ORIZABA', 19, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(78, 1, 'D-I-91', 'PANUCO', 34, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(79, 1, 'D-I-44', 'PLATON SANCHEZ', 35, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(80, 5, 'D-III-16', 'COATEPEC', 19, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(81, 7, 'D-I-64', 'CORDOBA', 34, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(82, 5, 'D-II-38', 'XALAPA', 40, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(83, 5, 'D-II-13', 'XALAPA', 32, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(84, 1, 'D-I-51', 'TANTOYUCA', 35, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(85, 5, 'D-II-15', 'XALAPA', 15, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(86, 1, 'D-I-52', 'TEMPOAL', 35, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(87, 5, 'D-III-08', 'XALAPA', 4, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(88, 5, 'D-II-24', 'XALAPA', 42, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(89, 6, 'D-I-07', 'BOCA DEL RIO', 35, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(90, 1, 'D-I-39', 'PANUCO', 35, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(91, 1, 'D-III-17', 'TANTOYUCA', 19, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(92, 9, 'D-II-43', 'ALVARADO', 6, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(93, 9, 'D-I-06', 'ALVARADO', 35, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(94, 5, 'D-II-03', 'XALAPA', 7, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(95, 9, 'D-I-56', 'TIERRA BLANCA', 35, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(96, 5, 'D-I-81', 'COATEPEC', 34, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(97, 5, 'D-I-61', 'XALAPA', 30, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(98, 1, 'D-I-72', 'PUEBLO VIEJO', 35, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(99, 5, 'D-I-53', 'TEOCELO', 35, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(100, 5, 'D-III-03', 'XALAPA', 2, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(101, 5, 'D-I-11', 'COATEPEC', 35, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(102, 5, 'D-I-34', 'NAOLINCO', 35, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(103, 5, 'D-III-24', 'XALAPA', 3, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(104, 5, 'D-I-75', 'CARRIZAL', 35, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(105, 5, 'D-III-23', 'XALAPA', 19, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(106, 5, 'D-I-20', 'EMILIANO ZAPATA', 35, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(107, 5, 'D-II-04', 'XALAPA', 14, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(108, 5, 'D-IV-18', 'ALTOTONGA', 29, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(109, 2, 'D-IV-09', 'TUXPAN', 29, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(110, 4, 'D-IV-28', 'MISANTLA', 29, '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(111, 4, 'D-IV-08', 'MARTINEZ DE LA TORRE', 29, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(112, 6, 'D-IV-05', 'SOLEDAD DE DOBLADO', 29, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(113, 10, 'D-IV-03', 'SAN ANDRES TUXTLA', 29, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(114, 10, 'D-IV-26', 'ISLA', 29, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(115, 9, 'D-IV-06', 'COSAMALOAPAN', 29, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(116, 8, 'D-IV-32', 'ZONGOLICA', 29, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(117, 8, 'D-IV-07', 'ORIZABA', 29, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(118, 5, 'D-IV-17', 'COATEPEC', 29, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(119, 7, 'D-IV-16', 'CORDOBA', 29, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(120, 9, 'D-IV-21', 'ALVARADO', 29, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(121, 5, 'D-IV-02', 'XALAPA', 29, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(122, 1, 'D-IV-13', 'TANTOYUCA', 29, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(123, 4, 'C.T.05', 'MISANTLA', 25, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(124, 5, 'C.T.23', 'XALAPA', 12, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(125, 4, 'C.T.09', 'SAN RAFAEL', 36, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(126, 8, 'C.T.13', 'CIUDAD MENDOZA', 36, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(127, 4, 'C.T.29', 'MARTINEZ DE LA TORRE', 6, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(128, 10, 'C.T.36', 'SANTIAGO TUXTLA', 37, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(129, 5, 'C.T.20', 'XALAPA', 5, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(130, 5, 'C.T.03', 'XALAPA', 13, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(131, 5, 'C.T.21', 'XALAPA', 9, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(132, 8, 'C.T.14', 'ORIZABA', 6, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(133, 6, 'C.T.10', 'SOLEDAD DE DOBLADO', 36, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(134, 8, 'C.T.40', 'ZONGOLICA', 39, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(135, 6, 'C.T.32', 'CARDEL', 36, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(136, 1, 'C.T.07', 'IXCATEPEC', 36, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(137, 6, 'C.T.31', 'VERACRUZ', 42, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(138, 5, 'C.T.33', 'XALAPA', 33, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(139, 5, 'D-II-55', 'XALAPA', 39, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(140, 5, 'C.T.24', 'XALAPA', 17, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(141, 11, 'D-I-28', 'JESUS CARRANZA', 35, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(142, 11, 'D-I-02', 'ACAYUCAN', 35, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(143, 3, 'D-II-25', 'ESPINAL', 39, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(144, 11, 'D-I-31', 'MINATITLAN', 27, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(145, 11, 'D-I-17', 'COSOLEACAQUE', 35, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(146, 3, 'D-I-26', 'IXHUATLAN DE MADERO', 35, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(147, 1, 'D-II-01', 'ACECECA', 32, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(148, 3, 'D-II-54', 'ALAMO', 40, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(149, 11, 'D-I-01', 'ACAYUCAN', 35, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(150, 3, 'D-I-83', 'POZA RICA', 34, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(151, 7, 'D-III-21', 'HUATUSCO', 19, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(152, 7, 'D-I-22', 'FORTIN', 35, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(153, 11, 'D-I-86', 'ACAYUCAN', 18, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(154, 3, 'D-I-69', 'TIHUATLAN', 35, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(155, 7, 'D-I-16', 'COSCOMATEPEC', 35, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(156, 3, 'D-II-47', 'PAPANTLA', 39, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(157, 3, 'D-III-12', 'POZA RICA', 19, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(158, 11, 'D-II-44', 'ACAYUCAN', 39, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(159, 11, 'D-II-52', 'COATZACOALCOS', 40, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(160, 11, 'D-II-23', 'COATZACOALCOS', 36, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(161, 3, 'D-I-24', 'HUAYACOCOTLA', 35, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(162, 3, 'D-I-40', 'PAPANTLA', 35, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(163, 3, 'D-I-21', 'ESPINAL', 35, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(164, 3, 'D-I-85', 'PAPANTLA', 34, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(165, 3, 'D-I-46', 'POZA RICA', 35, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(166, 3, 'D-I-67', 'GUTIERREZ ZAMORA', 35, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(167, 11, 'D-I-12', 'COATZACOALCOS', 27, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(168, 3, 'D-II-41', 'POZA RICA', 40, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(169, 3, 'D-II-19', 'ALAMO', 39, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(170, 11, 'D-I-49', 'SAYULA DE ALEMAN', 35, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(171, 11, 'D-I-59', 'ACAYUCAN', 34, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(172, 11, 'D-II-45', 'COATZACOALCOS', 39, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(173, 11, 'D-III-22', 'COATZACOALCOS', 19, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(174, 11, 'D-I-32', 'MINATITLAN', 30, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(175, 1, 'D-I-18', 'CHICONTEPEC', 35, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(176, 3, 'D-II-57', 'HUAYACOCOTLA', 39, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(177, 7, 'D-I-76', 'TOTUTLA', 35, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(178, 7, 'D-I-42', 'PASO DEL MACHO', 35, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(179, 9, 'D-I-15', 'COSAMALOAPAN', 35, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(180, 9, 'D-III-02', 'TIERRA BLANCA', 19, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(181, 2, 'D-IV-12', 'NARANJOS', 29, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(182, 11, 'D-IV-25', 'MINATITLAN', 29, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(183, 11, 'D-IV-19', 'COATZACOALCOS', 29, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(184, 3, 'D-IV-10', 'POZA RICA', 29, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(185, 3, 'D-IV-31', 'TIHUATLAN', 29, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(186, 3, 'D-IV-15', 'PAPANTLA', 29, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(187, 3, 'C.T.01', 'PAPANTLA', 6, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(188, 11, 'C.T.30', 'MINATITLÁN', 37, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(189, 11, 'C.T.25', 'ACAYUCAN', 19, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(190, 11, 'C.T.26', 'ACAYUCAN', 21, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(228, 2, 'C.T.08', 'TUXPAN', 42, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(237, 2, 'D-IV-36', 'TAMIAHUA', 29, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(238, 5, 'D-I-62', 'XALAPA', 27, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(239, 5, 'D-III-14', 'XALAPA', 19, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(240, 5, 'D-II-02', 'XALAPA', 10, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(241, 5, 'D-III-09', 'XALAPA', 3, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(242, 5, 'D-II-56', 'XALAPA', 8, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(243, 5, 'D-I-47', 'LAS VIGAS DE RAMIREZ', 35, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(245, 9, 'D-III-07', 'ALVARADO', 19, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(253, 6, 'D-II-05', 'VERACRUZ', 39, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(273, 9, 'D-II-30', 'COSAMALOAPAN', 39, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(274, 1, 'D-IV-23', 'PANUCO', 29, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(276, 11, 'D-I-82', 'MINATITLÁN', 34, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(277, 7, 'C.T.02', 'HUATUSCO', 36, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(280, 1, 'D-II-18', 'CHICONTEPEC', 39, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(281, 3, 'D-I-04', 'ALAMO', 35, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(282, 10, 'D-III-19', 'SAN ANDRES TUXTLA', 19, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(284, 6, 'C.T.17', 'VERACRUZ', 41, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(285, 6, 'D-II-40', 'VERACRUZ', 40, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(286, 6, 'D-II-49', 'VERACRUZ', 36, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(287, 1, 'D-IV-11', 'TEMPOAL', 29, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(288, 1, 'D-IV-22', 'CHICONTEPEC', 29, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(289, 1, 'D-IV-35', 'PUEBLO VIEJO', 29, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(290, 1, 'D-IV-37', 'PLATON SANCHEZ', 29, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(291, 3, 'D-II-07', 'POZA RICA', 37, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(292, 3, 'D-II-33', 'POZA RICA', 39, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(293, 3, 'D-IV-14', 'ALAMO', 29, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(294, 3, 'D-IV-24', 'GUTIERREZ ZAMORA', 29, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(295, 5, 'C.T.18', 'XALAPA', 23, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(296, 6, 'C.T.06', 'CARDEL', 6, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(297, 6, 'C.T.11', 'VERACRUZ', 16, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(298, 6, 'C.T.15', 'VERACRUZ', 11, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(299, 6, 'C.T.22', 'VERACRUZ', 26, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(300, 6, 'D-II-06', 'VERACRUZ', 28, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(301, 6, 'D-III-06', 'VERACRUZ', 19, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(302, 6, 'D-IV-01', 'VERACRUZ', 29, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(303, 6, 'D-IV-27', 'BOCA DEL RIO', 29, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(304, 6, 'D-IV-30', 'PIEDRAS NEGRAS', 29, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(305, 8, 'D-I-27', 'IXTACZOQUITLAN', 35, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(306, 8, 'D-II-36', 'ORIZABA', 37, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(307, 8, 'D-III-10', 'CIUDAD MENDOZA', 19, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(308, 8, 'D-IV-04', 'CIUDAD MENDOZA', 29, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(309, 9, 'D-I-70', 'TRES VALLES', 35, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(310, 9, 'D-II-08', 'COSAMALOAPAN', 37, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(311, 9, 'D-III-20', 'COSAMALOAPAN', 19, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(312, 9, 'D-IV-29', 'TIERRA BLANCA', 29, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(313, 9, 'D-IV-34', 'TLACOTALPAN', 29, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(314, 11, 'D-I-13', 'COATZACOALCOS', 35, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(315, 11, 'D-II-11', 'COATZACOALCOS', 36, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(316, 11, 'D-II-39', 'ACAYUCAN', 40, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(317, 11, 'D-IV-20', 'ACAYUCAN', 29, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(318, 6, 'D-I-50', 'SOLEDAD DE DOBLADO', 35, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(332, 6, 'D-I-73', 'PASO DE OVEJAS', 35, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(333, 5, 'C.T.04', 'JACARANDAS', 39, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(334, 7, 'C.T.12', 'HUATUSCO', 39, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(335, 7, 'C.T.16', 'CóRDOBA', 39, '2026-05-01 02:23:06', '2026-05-01 02:23:06'),
(336, 6, 'D-I-95', 'MANLIO FABIO ALTAMIRANO', 35, '2026-05-01 02:23:06', '2026-05-01 02:23:06');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_04_29_154233_create_permission_tables', 1),
(5, '2026_04_29_154343_create_regiones_table', 1),
(6, '2026_04_29_154352_create_niveles_table', 1),
(7, '2026_04_29_154404_create_delegaciones_table', 1),
(8, '2026_04_29_160452_create_participantes_table', 1),
(9, '2026_05_06_164944_add_descargado_at_to_participantes_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `niveles`
--

CREATE TABLE `niveles` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `niveles`
--

INSERT INTO `niveles` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'ADMINISTRATIVOS EDUCACIÓN FÍSICA', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(2, 'ADMINISTRATIVOS OFICINAS CENTRALES', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(3, 'ADMINISTRATIVOS TELEBACHILLERATO', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(4, 'ADMINISTRATIVOS Y DOCENTES DE LA D.G.B.', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(5, 'BACHILLEARTO RICARDO FLORES MAGÓN MIXTO', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(6, 'BACHILLERATO', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(7, 'BACHILLERATO ARTÍCULO 3° DIURNA', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(8, 'BACHILLERATO ANTONIO MARÍA DE RIVERA', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(9, 'BACHILLERATO ANTONIO MARÍA DE RIVERA MIXTA', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(10, 'BACHILLERATO ANTONIO MARÍA DE RIVERA VESPERTINA', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(11, 'BACHILLERATO DE VERACRUZ VESPERTINO', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(12, 'BACHILLERATO JOAQUÍN RAMÍREZ CABAÑAS MIXTA', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(13, 'BACHILLERATO SABATINO', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(14, 'BACHILLERATOS MATUTINOS', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(15, 'BACHILLERATOS VESPERTINOS', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(16, 'BACHILLERES OFICIAL', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(17, 'DEPARTAMENTO NORMALES', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(18, 'EDUCACIÓN ESPECIAL', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(19, 'EDUCACIÓN FÍSICA', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(20, 'ENSEÑANZAS MUSICALES', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(21, 'ESCUELA DE ENFERMERÍA', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(22, 'ESCUELA SECUENDARIA Y BACHILLERATO ABIERTO', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(23, 'ESCUELA SECUNDARIA EXPERIMENTAL', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(24, 'ESCUELA SECUNDARIA Y BACHILLERES DE ARTES Y OFICIOS', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(25, 'ESCUELA Y BACHILLERES ALFONSO REYES', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(26, 'ESTEBAN M', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(27, 'FORÁNEAS', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(28, 'ILLUSTRE', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(29, 'JUBILADOS Y PENSIONADOS', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(30, 'LOCALES', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(31, 'MANUALES', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(32, 'NORMAL', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(33, 'NORMAL MANUEL SUÁREZ TRUJILLO', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(34, 'PREESCOLAR', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(35, 'PRIMARIA', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(36, 'SECUNDARIA', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(37, 'SECUNDARIA Y BACHILLERATO', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(38, 'TÉCNICOS DOCENTES ADMINISTRATIVOS', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(39, 'TELEBACHILLERATO', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(40, 'TELESECUNDARIA', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(41, 'UNIVERSIDAD FEMENINA', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(42, 'UNIVERSIDAD PEDAGÓGICA VERACRUZANA', '2026-05-01 02:23:05', '2026-05-01 02:23:05');

-- --------------------------------------------------------

--
-- Table structure for table `participantes`
--

CREATE TABLE `participantes` (
  `id` bigint UNSIGNED NOT NULL,
  `nombres` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido_paterno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido_materno` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rfc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `genero` enum('H','M','O') COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero_personal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uudd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo_qr` text COLLATE utf8mb4_unicode_ci,
  `delegacion_id` bigint UNSIGNED NOT NULL,
  `created_by` bigint UNSIGNED NOT NULL,
  `status` enum('pendiente','aprobado','rechazado') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pendiente',
  `descargado_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `participantes`
--

INSERT INTO `participantes` (`id`, `nombres`, `apellido_paterno`, `apellido_materno`, `rfc`, `genero`, `telefono`, `email`, `numero_personal`, `uudd`, `folio`, `codigo_qr`, `delegacion_id`, `created_by`, `status`, `descargado_at`, `created_at`, `updated_at`) VALUES
(1, 'MARIA DEL ROCIO', 'HERNANDEZ', 'VELASCO', 'HEVR5608067I0', 'M', '2281114496', 'oicormarioiris@hotmail.com', '500003', 'fb142707-2f81-43b5-ac4b-a006411fb20d', 'SNTE56-CPM-2026-975F0D', 'http://constancias2026.test/validar/fb142707-2f81-43b5-ac4b-a006411fb20d', 97, 1, 'pendiente', NULL, '2026-05-13 03:59:41', '2026-05-13 03:59:41'),
(2, 'ABDIEL', 'ESTRADA', 'CABAÑA', 'EACA690611340', 'M', '0', NULL, '368803', '65842f08-0454-48ea-92a5-796d68b449e3', 'SNTE56-CPM-2026-2E3245', 'http://constancias2026.test/validar/65842f08-0454-48ea-92a5-796d68b449e3', 82, 1, 'pendiente', NULL, '2026-05-13 03:59:41', '2026-05-13 03:59:41'),
(3, 'ABDIEL ANTONIO', 'GUERRERO', 'OSORIO', 'GUOA820216VC6', 'M', '2281327941', 'dumas3@hotmail.com', '377116', '35d15d2e-14df-4538-9e95-83b9e2761ca3', 'SNTE56-CPM-2026-60C3C4', 'http://constancias2026.test/validar/35d15d2e-14df-4538-9e95-83b9e2761ca3', 88, 1, 'pendiente', NULL, '2026-05-13 03:59:41', '2026-05-13 03:59:41'),
(4, 'ABEL', 'HERNANDEZ', 'RODRIGUEZ', 'HERA740806N87', 'M', '7891242392', 'abelhr_1@hotmail.com', '138772', 'dbda7044-5f17-4f91-9bef-bc5a3d168d71', 'SNTE56-CPM-2026-1DBED9', 'http://constancias2026.test/validar/dbda7044-5f17-4f91-9bef-bc5a3d168d71', 16, 1, 'pendiente', NULL, '2026-05-13 03:59:41', '2026-05-13 03:59:41'),
(5, 'ABEL', 'CRISTÓBAL', 'DOMÍNGUEZ', 'CIDA640730362', 'M', '2791127797', 'abel.640730@yahoo.com.mx', '627584', '9326d1d6-644a-4472-976d-cb975eb80db8', 'SNTE56-CPM-2026-A94CCF', 'http://constancias2026.test/validar/9326d1d6-644a-4472-976d-cb975eb80db8', 6, 1, 'pendiente', NULL, '2026-05-13 03:59:41', '2026-05-13 03:59:41'),
(6, 'ABEL', 'PARRA', 'VELÁZQUEZ', 'PAVA670730NA0', 'M', '2351084987', 'abelparraleon@hotmail.com', '896995', '96a05d59-639f-41e7-a9b9-31120cf66903', 'SNTE56-CPM-2026-0922E7', 'http://constancias2026.test/validar/96a05d59-639f-41e7-a9b9-31120cf66903', 32, 1, 'pendiente', NULL, '2026-05-13 03:59:41', '2026-05-13 03:59:41'),
(7, 'ABEL', 'MARIN', 'DE LA LUZ', 'MALA860523C50', 'M', '2821601560', 'marindelaluz@hotmail.com', '620525', 'edb289a7-3b8d-4436-a028-d0f3393b9b88', 'SNTE56-CPM-2026-EF0C58', 'http://constancias2026.test/validar/edb289a7-3b8d-4436-a028-d0f3393b9b88', 243, 1, 'pendiente', NULL, '2026-05-13 03:59:41', '2026-05-13 03:59:41'),
(8, 'ABEL', 'MENDOZA', 'CONDADO', 'MECA780802MC9', 'M', '2281247496', 'mabeluv@hotmail.com', '261954', '325efab9-eff8-4c43-980a-c0d0391f05b4', 'SNTE56-CPM-2026-0F1675', 'http://constancias2026.test/validar/325efab9-eff8-4c43-980a-c0d0391f05b4', 83, 1, 'pendiente', NULL, '2026-05-13 03:59:41', '2026-05-13 03:59:41'),
(9, 'ABEL', 'HERNANDEZ', 'GARCIA', 'HEGA710525L5', 'M', '0', NULL, '240676', '468e79ea-3157-40df-8e3a-1e50ea8bbea1', 'SNTE56-CPM-2026-65D410', 'http://constancias2026.test/validar/468e79ea-3157-40df-8e3a-1e50ea8bbea1', 82, 1, 'pendiente', NULL, '2026-05-13 03:59:41', '2026-05-13 03:59:41'),
(10, 'LETICIA', 'PADILLA', 'SOLIR', 'LETY232323GT6', 'M', '6585659859', 'lety@email.com', '23421', '4a2e95b3-fad7-4292-8a85-edfee704970c', 'SNTE56-CPM-2026-3748F4', 'http://constancias2026.test/validar/4a2e95b3-fad7-4292-8a85-edfee704970c', 131, 1, 'pendiente', NULL, '2026-05-13 04:02:41', '2026-05-13 04:02:41'),
(11, 'ABIGAIL YAMILETH', 'SANTIAGO', 'GONZALEZ', 'SAGA801124M14', 'M', '2282565428', 'abigaelyamileth_24@hotmail.com', '741242', '6d3170ca-17ed-4ca5-9a57-83284f21b10c', 'SNTE56-CPM-2026-FB658B', 'http://constancias2026.test/validar/6d3170ca-17ed-4ca5-9a57-83284f21b10c', 97, 1, 'pendiente', NULL, '2026-05-13 04:11:07', '2026-05-13 04:11:07'),
(12, 'ABRAHAM', 'SEDANO', 'CAMPUZANO', 'SECA861126C69', 'M', '7831394458', 'abraham.sedano@outlook.com', '702860', '9dce97cc-0793-4985-bdd6-19351910b2f6', 'SNTE56-CPM-2026-09F962', 'http://constancias2026.test/validar/9dce97cc-0793-4985-bdd6-19351910b2f6', 3, 1, 'pendiente', NULL, '2026-05-13 04:11:07', '2026-05-13 04:11:07'),
(13, 'ABRAHAM', 'VAZQUEZ', 'CASTILLO', 'VACA801009245', 'M', '7848482338', 'codigoportal@hotmail.com', '959053', '00e53278-cc81-420f-aadd-78837fbccdf3', 'SNTE56-CPM-2026-805CCF', 'http://constancias2026.test/validar/00e53278-cc81-420f-aadd-78837fbccdf3', 162, 1, 'pendiente', NULL, '2026-05-13 04:11:07', '2026-05-13 04:11:07'),
(14, 'ABRAHAM', 'RAMIREZ', 'CRUZ', 'RACA620330SI4', 'M', '7828881077', 'abrahamramirezcruz@hotmail.com', '424629', '0f03c95a-0669-4201-8296-ee2b280e104b', 'SNTE56-CPM-2026-9719C6', 'http://constancias2026.test/validar/0f03c95a-0669-4201-8296-ee2b280e104b', 165, 1, 'pendiente', NULL, '2026-05-13 04:11:07', '2026-05-13 04:11:07'),
(15, 'ABRAHAM ERASMO', 'PEREZ', 'PEREZ', 'PEPA750207IV2', 'M', '7841630726', 'abraham75@live.com.mx', '110447', '0af3ec4c-9eb6-446e-a349-52a443fa5432', 'SNTE56-CPM-2026-3163C6', 'http://constancias2026.test/validar/0af3ec4c-9eb6-446e-a349-52a443fa5432', 162, 1, 'aprobado', '2026-05-13 04:18:29', '2026-05-13 04:11:07', '2026-05-13 04:18:29'),
(16, 'ABRIL NOEMI', 'RIVERA', 'ORTIGOZA', 'RIOA860318KA0', 'M', '2851043151', 'ortigoz@hotmail.com', '647996', '89fc8557-ab25-49f6-b333-65b561e1709f', 'SNTE56-CPM-2026-12068F', 'http://constancias2026.test/validar/89fc8557-ab25-49f6-b333-65b561e1709f', 133, 1, 'pendiente', NULL, '2026-05-13 04:11:07', '2026-05-13 04:11:07'),
(17, 'ABRIL ROXANA', 'DE LOS SANTOS', 'IBAÑEZ', 'SAIA920322RU4', 'M', '2251001722', 'hola_april@hotmail.com', '965934', '3dbe92a6-5db1-47e5-abae-b49b9c26819c', 'SNTE56-CPM-2026-99A2B5', 'http://constancias2026.test/validar/3dbe92a6-5db1-47e5-abae-b49b9c26819c', 26, 1, 'pendiente', NULL, '2026-05-13 04:11:07', '2026-05-13 04:11:07'),
(18, 'ADEMIR', 'APARICIO', 'SESEÑA', 'AASA8603119N2', 'M', '2261031381', 'haragan_115@hotmail.com', '710105', 'a2a9cebf-5293-48c4-9e76-932712d28c79', 'SNTE56-CPM-2026-5B62E2', 'http://constancias2026.test/validar/a2a9cebf-5293-48c4-9e76-932712d28c79', 26, 1, 'pendiente', NULL, '2026-05-13 04:11:07', '2026-05-13 04:11:07'),
(19, 'ADRIAN', 'LEAL', 'PINTO', 'LEPA560305F6', 'M', '2961049921', 'adlepi@hotmail.com', '56695', '2ca58ad1-5d87-4231-af4f-6c0c82131c29', 'SNTE56-CPM-2026-F61C8F', 'http://constancias2026.test/validar/2ca58ad1-5d87-4231-af4f-6c0c82131c29', 59, 1, 'pendiente', NULL, '2026-05-13 04:11:07', '2026-05-13 04:11:07'),
(20, 'ADRIAN', 'TLAXCALTECO', 'TEPO', 'TATA7402206F6', 'M', '0', NULL, '223206', '7d5c00e3-8229-483e-ac0c-73557f1032c7', 'SNTE56-CPM-2026-DE86A5', 'http://constancias2026.test/validar/7d5c00e3-8229-483e-ac0c-73557f1032c7', 82, 1, 'pendiente', NULL, '2026-05-13 04:11:07', '2026-05-13 04:11:07');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `regiones`
--

CREATE TABLE `regiones` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regiones`
--

INSERT INTO `regiones` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'REGIÓN I - TANTOYUCA', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(2, 'REGIÓN II - TUXPAN', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(3, 'REGIÓN III - POZA RICA', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(4, 'REGIÓN IV - MARTÍNEZ DE LA TORRE', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(5, 'REGIÓN V - XALAPA', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(6, 'REGIÓN VI - VERACRUZ', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(7, 'REGIÓN VII - CORDOBA', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(8, 'REGIÓN VIII - ORIZABA', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(9, 'REGIÓN IX - COSAMALOAPAN', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(10, 'REGIÓN X - SAN ANDRES TUXTLA', '2026-05-01 02:23:05', '2026-05-01 02:23:05'),
(11, 'REGIÓN XI - MINATITLÁN', '2026-05-01 02:23:05', '2026-05-01 02:23:05');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2026-05-01 02:23:04', '2026-05-01 02:23:04'),
(2, 'gestor', 'web', '2026-05-01 02:23:04', '2026-05-01 02:23:04');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('MZ7nqxCLKr0OuVE2npKoQNHdJdQsqWhPTiuRaWI8', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoiMm1RVE5ydmR2Uktad2hidWdUMmlXcEV3RUx1NGRSd0VoazN6SFFudSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly9jb25zdGFuY2lhczIwMjYudGVzdC9hZG1pbi9wYXJ0aWNpcGFudGVzIjtzOjU6InJvdXRlIjtzOjQ0OiJmaWxhbWVudC5hZG1pbi5yZXNvdXJjZXMucGFydGljaXBhbnRlcy5pbmRleCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjY0OiIxMGU0YjQxZmYwOTFmY2Y4NzVkZGJjMjFiMmE3ZGNlYWE5YWZhNjllYWY1NjU2MzZiZjE1NTUwZjMyMzYyMGNhIjtzOjY6InRhYmxlcyI7YTo1OntzOjQwOiI4OTFhNjFkYWYzYWQzNGMwYjFlN2EyNmFjNTg1MGFmZV9jb2x1bW5zIjthOjY6e2k6MDthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMDoiZGVsZWdhY2lvbiI7czo1OiJsYWJlbCI7czoxMDoiRGVsZWdhY2lvbiI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjE7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTI6Im5pdmVsLm5vbWJyZSI7czo1OiJsYWJlbCI7czo1OiJOaXZlbCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjI7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6NDoic2VkZSI7czo1OiJsYWJlbCI7czo0OiJTZWRlIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MzthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMzoicmVnaW9uLm5vbWJyZSI7czo1OiJsYWJlbCI7czo2OiJSZWdpb24iO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjoxO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7YjowO31pOjQ7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTA6ImNyZWF0ZWRfYXQiO3M6NToibGFiZWwiO3M6MTA6IkNyZWF0ZWQgYXQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjowO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjoxO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7YjoxO31pOjU7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTA6InVwZGF0ZWRfYXQiO3M6NToibGFiZWwiO3M6MTA6IlVwZGF0ZWQgYXQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjowO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjoxO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7YjoxO319czo0MDoiZjgyZTFkZGJhM2Q5MTIyNmM1OWI2ZGRhZmRlMmI0OWRfY29sdW1ucyI7YToxMjp7aTowO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjE1OiJub21icmVfY29tcGxldG8iO3M6NToibGFiZWwiO3M6NjoiTm9tYnJlIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czozOiJyZmMiO3M6NToibGFiZWwiO3M6MzoiUkZDIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MDtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MTtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO2I6MTt9aToyO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjg6InRlbGVmb25vIjtzOjU6ImxhYmVsIjtzOjk6IlRlbMOpZm9ubyI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjM7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6NToiZW1haWwiO3M6NToibGFiZWwiO3M6NToiRW1haWwiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTo0O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjE1OiJudW1lcm9fcGVyc29uYWwiO3M6NToibGFiZWwiO3M6MTk6Ik7Dum1lcm8gZGUgUGVyc29uYWwiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTo1O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjIxOiJkZWxlZ2FjaW9uLmRlbGVnYWNpb24iO3M6NToibGFiZWwiO3M6MTA6IkRlbGVnYWNpb24iO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTo2O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEwOiJjcmVhdGVkX2J5IjtzOjU6ImxhYmVsIjtzOjEwOiJDcmVhdGVkIGJ5IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MDtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MTtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO2I6MTt9aTo3O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjY6InN0YXR1cyI7czo1OiJsYWJlbCI7czo2OiJFc3RhZG8iO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTo4O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEzOiJkZXNjYXJnYWRvX2F0IjtzOjU6ImxhYmVsIjtzOjE3OiJFc3RhZG8gZGUgRW50cmVnYSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjk7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTA6ImNyZWF0ZWRfYXQiO3M6NToibGFiZWwiO3M6MTA6IkNyZWF0ZWQgYXQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjowO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjoxO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7YjoxO31pOjEwO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEwOiJ1cGRhdGVkX2F0IjtzOjU6ImxhYmVsIjtzOjEwOiJVcGRhdGVkIGF0IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MDtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MTtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO2I6MTt9aToxMTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo0OiJ1dWRkIjtzOjU6ImxhYmVsIjtzOjQ6IlVVSUQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjowO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjoxO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7YjoxO319czo0MToiZjgyZTFkZGJhM2Q5MTIyNmM1OWI2ZGRhZmRlMmI0OWRfcGVyX3BhZ2UiO3M6MjoiNTAiO3M6NDA6IjQ3NjgxZDViYzk2ODZkOTcxMmE5M2RmYmU4Mjg1MGFmX2NvbHVtbnMiO2E6Mzp7aTowO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjY6Im5vbWJyZSI7czo1OiJsYWJlbCI7czo2OiJOb21icmUiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aToxO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEwOiJjcmVhdGVkX2F0IjtzOjU6ImxhYmVsIjtzOjEwOiJDcmVhdGVkIGF0IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MDtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MTtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO2I6MTt9aToyO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEwOiJ1cGRhdGVkX2F0IjtzOjU6ImxhYmVsIjtzOjEwOiJVcGRhdGVkIGF0IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MDtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MTtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO2I6MTt9fXM6NDA6IjUwZWQ0MGQwYmM4ZmZjNDljYTNiZjVmODk1YmZkZDNkX2NvbHVtbnMiO2E6Mzp7aTowO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjY6Im5vbWJyZSI7czo1OiJsYWJlbCI7czo2OiJOb21icmUiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aToxO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEwOiJjcmVhdGVkX2F0IjtzOjU6ImxhYmVsIjtzOjEwOiJDcmVhdGVkIGF0IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MDtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MTtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO2I6MTt9aToyO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEwOiJ1cGRhdGVkX2F0IjtzOjU6ImxhYmVsIjtzOjEwOiJVcGRhdGVkIGF0IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MDtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MTtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO2I6MTt9fX1zOjg6ImZpbGFtZW50IjthOjA6e319', 1778630049);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Vicente Júarez Alarcón', 'admin@email.com', NULL, '$2y$12$wkznGi.TgkrKM80z7dyZtORl.QqZwPPPzb170feE9FJ9ePvdlKwt6', NULL, '2026-05-01 02:23:04', '2026-05-01 02:23:04'),
(2, 'Usuario Gestor', 'gestor@email.com', '2026-05-01 02:23:04', '$2y$12$p2qQvGdsKgP14LudjgO.EOkjNA276B6us7ULhmSn7ybGiD1dIDRA2', 'xug8pdcePt', '2026-05-01 02:23:05', '2026-05-01 02:23:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `delegaciones`
--
ALTER TABLE `delegaciones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `delegaciones_delegacion_unique` (`delegacion`),
  ADD KEY `delegaciones_region_id_foreign` (`region_id`),
  ADD KEY `delegaciones_nivel_id_foreign` (`nivel_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `niveles`
--
ALTER TABLE `niveles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `niveles_nombre_unique` (`nombre`);

--
-- Indexes for table `participantes`
--
ALTER TABLE `participantes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `participantes_numero_personal_unique` (`numero_personal`),
  ADD UNIQUE KEY `participantes_folio_unique` (`folio`),
  ADD KEY `participantes_delegacion_id_foreign` (`delegacion_id`),
  ADD KEY `participantes_created_by_foreign` (`created_by`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `regiones`
--
ALTER TABLE `regiones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `regiones_nombre_unique` (`nombre`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `delegaciones`
--
ALTER TABLE `delegaciones`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `niveles`
--
ALTER TABLE `niveles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `participantes`
--
ALTER TABLE `participantes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `regiones`
--
ALTER TABLE `regiones`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `delegaciones`
--
ALTER TABLE `delegaciones`
  ADD CONSTRAINT `delegaciones_nivel_id_foreign` FOREIGN KEY (`nivel_id`) REFERENCES `niveles` (`id`),
  ADD CONSTRAINT `delegaciones_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regiones` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `participantes`
--
ALTER TABLE `participantes`
  ADD CONSTRAINT `participantes_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `participantes_delegacion_id_foreign` FOREIGN KEY (`delegacion_id`) REFERENCES `delegaciones` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
