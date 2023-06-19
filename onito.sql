-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2023 at 09:21 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onito`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
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
(5, '2023_06_14_111158_create_movies_table', 1),
(6, '2023_06_14_112113_create_ratings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tconst` varchar(255) NOT NULL,
  `titleType` varchar(255) NOT NULL,
  `primaryTitle` varchar(255) NOT NULL,
  `runtimeMinutes` varchar(255) NOT NULL,
  `genres` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `tconst`, `titleType`, `primaryTitle`, `runtimeMinutes`, `genres`, `created_at`, `updated_at`) VALUES
(2, 'tt0000001', 'short', 'Carmencita', '61', 'Documentary', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(3, 'tt0000002', 'movie', 'Le clown et ses chiens', '5', 'Animation', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(4, 'tt0000003', 'short', 'Pauvre Pierrot', '4', 'Animation', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(5, 'tt0000004', 'short', 'Un bon bock', '12', 'Animation', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(6, 'tt0000005', 'movie', 'Blacksmith Scene', '1', 'Comedy', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(7, 'tt0000006', 'short', 'Chinese Opium Den', '1', 'Short', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(8, 'tt0000007', 'short', 'Corbett and Courtney Before the Kinetograph', '1', 'Sport', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(9, 'tt0000008', 'movie', 'Edison Kinetoscopic Record of a Sneeze', '61', 'Documentary', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(10, 'tt0000009', 'movie', 'Miss Jerry', '45', 'Romance', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(11, 'tt0000010', 'short', 'Leaving the Factory', '1', 'Action', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(12, 'tt0000011', 'movie', 'Akrobatisches Potpourri', '61', 'Documentary', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(13, 'tt0000012', 'movie', 'The Arrival of a Train', '1', 'Action', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(14, 'tt0000013', 'movie', 'The Photographical Congress Arrives in Lyon', '61', 'Documentary', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(15, 'tt0000014', 'short', 'The Waterer Watered', '1', 'Comedy', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(16, 'tt0000015', 'movie', 'Autour dune cabine', '2', 'Animation', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(17, 'tt0000016', 'short', 'Boat Leaving the Port', '1', 'Action', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(18, 'tt0000017', 'movie', 'Italienischer Bauerntanz', '1', 'Action', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(19, 'tt0000018', 'short', 'Das boxende Känguruh', '1', 'Short', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(20, 'tt0000019', 'short', 'The Clown Barber', '12', 'Comedy', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(21, 'tt0000020', 'short', 'The Derby 1895', '61', 'Documentary', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(22, 'tt0000022', 'short', 'Blacksmith Scene', '61', 'Documentary', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(23, 'tt0000023', 'movie', 'The Sea', '61', 'Documentary', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(24, 'tt0000024', 'short', 'Opening of the Kiel Canal', '34', 'News', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(25, 'tt0000025', 'short', 'The Oxford and Cambridge University Boat Race', '415', 'News', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(26, 'tt0000026', 'short', 'The Messers. Lumière at Cards', '61', 'Documentary', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(27, 'tt0000027', 'short', 'Cordeliers Square in Lyon', '1', 'Action', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(28, 'tt0000028', 'short', 'Fishing for Goldfish', '1', 'Action', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(29, 'tt0000029', 'movie', 'Babys Meal', '61', 'Documentary', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(30, 'tt0000030', 'short', 'Rough Sea at Dover', '61', 'Documentary', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(31, 'tt0000031', 'short', 'Jumping the Blanket', '61', 'Documentary', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(32, 'tt0000032', 'movie', 'Die Serpentintänzerin', '1', 'Short', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(33, 'tt0000033', 'short', 'Horse Trick Riders', '61', 'Documentary', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(34, 'tt0000034', 'short', 'Arrivée dun train gare de Vincennes', '61', 'Documentary', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(35, 'tt0000035', 'short', 'Watering the Flowers', '1', 'Comedy', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(36, 'tt0000036', 'movie', 'Awakening of Rip', '0', 'Drama', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(37, 'tt0000037', 'short', 'Sea Bathing', '1', 'Short', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(38, 'tt0000038', 'movie', 'The Ball Game', '126', 'Documentary', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(39, 'tt0000039', 'movie', 'Barnet Horse Fair', '415', 'Short', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(40, 'tt0000040', 'short', 'Barque sortant du port de Trouville', '138', 'Documentary', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(41, 'tt0000041', 'movie', 'Bataille de neige', '66', 'Comedy', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(42, 'tt0000042', 'short', 'Bateau-mouche sur la Seine', '162', 'Documentary', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(43, 'tt0000043', 'short', 'Batteuse à vapeur', '145', 'Documentary', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(44, 'tt0000044', 'short', 'Le bivouac', '1', 'Short', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(45, 'tt0000045', 'movie', 'Les blanchisseuses', '458', 'Short', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(46, 'tt0000046', 'short', 'Bois de Boulogne', '120', 'Comedy', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(47, 'tt0000047', 'movie', 'Boulevard des Italiens', '504', 'Documentary', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(48, 'tt0000048', 'short', 'The Boxing Kangaroo', '555', 'Short', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(49, 'tt0000049', 'movie', 'Glove Contest', '695', 'Short', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(50, 'tt0000050', 'short', 'Bébé et fillettes', '120', 'Comedy', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(51, 'tt0000051', 'movie', 'The Bohemian Encampment', '714', 'Documentary', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(52, 'tt0000052', 'short', 'Carga de rurales', '222', 'Comedy', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(53, 'tt0000053', 'movie', 'A Chegada do Comboio Inaugural à Estação Central do Porto', '102', 'Documentary', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(54, 'tt0000054', 'movie', 'A Merry-Go-Round', '65', 'Short', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(55, 'tt0000055', 'movie', 'Le chiffonnier', '325', 'Short', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(56, 'tt0000056', 'short', 'Uma Corrida de Touros no Campo Pequeno', '415', 'Short', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(57, 'tt0000057', 'movie', 'Cortège de tzar allant à Versailles', '9621', 'Comedy', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(58, 'tt0000058', 'short', 'Cortège de tzar au Bois de Boulogne', '4745', 'Comedy', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(59, 'tt0000059', 'movie', 'Coronation of a Village Maiden', '456', 'Short', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(60, 'tt0000060', 'movie', 'Dancing Darkies', '78', 'Horror', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(61, 'tt0000061', 'movie', 'Dancing Girls', '445', 'Short', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(62, 'tt0000062', 'movie', 'Danse serpentine', '23', 'Short', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(63, 'tt0000063', 'short', 'Dessinateur express', '456', 'Short', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(64, 'tt0000064', 'short', 'Dessinateur: Chamberlain', '455', 'Horror', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(65, 'tt0000065', 'short', 'Dessinateur: Reine Victoria', '23', 'Short', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(66, 'tt0000066', 'movie', 'Dessinateur: Von Bismark', '12', 'Short', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(67, 'tt0000067', 'movie', 'Conjurer Making Ten Hats in Sixty Seconds', '12', 'Fantasy', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(68, 'tt0000068', 'movie', 'Unloading the Boat', '45', 'Horror', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(69, 'tt0000069', 'short', 'Post No Bills', '1', 'Short', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(70, 'tt0000070', 'movie', 'Demolition of a Wall', '61', 'Documentary', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(71, 'tt0000071', 'short', 'Automobiles Starting a Race', '52', 'Sport', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(72, 'tt0000072', 'movie', 'Officers of French Army Leaving Service', '41', 'Short', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(73, 'tt0000073', 'movie', 'Effets de mer sur les rochers', '145', 'Documentary', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(74, 'tt0000074', 'short', 'Enfants jouant sur la plage', '475', 'Horror', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(75, 'tt0000075', 'movie', 'The Conjuring of a Woman at the House of Robert Houdin', '122', 'Horror', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(76, 'tt0000076', 'short', 'Exit of Rip and the Dwarf', '1', 'Drama', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(77, 'tt0000077', 'movie', 'indien', '457', 'Short', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(78, 'tt0000078', 'short', 'Feira de Gado na Corujeira', '61', 'Documentary', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(79, 'tt0000079', 'movie', 'La gare Saint-Lazare', '183', 'Documentary', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(80, 'tt0000080', 'short', 'Grandes manoeuvres', '65', 'Family', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(81, 'tt0000081', 'movie', 'Towing a Boat on the River', '100', 'Family', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(82, 'tt0000082', 'short', 'A Hard Wash', '45', 'Comedy', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(83, 'tt0000083', 'short', 'Les indiscrets', '121', 'Short', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(84, 'tt0000084', 'short', 'Les ivrognes', '3', 'Short', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(85, 'tt0000085', 'movie', 'Gardener Burning Weeds', '125', 'Short', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(86, 'tt0000086', 'movie', 'Family', '100', 'Family', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(87, 'tt0000087', 'short', 'Life ', '535', 'Documentary', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(88, 'tt0000088', 'short', 'Market Day', '111', 'Family', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(89, 'tt0000089', 'movie', 'Leaving Jerusalem by Railway', '61', 'Documentary', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(90, 'tt0000090', 'short', 'Libération des territoriaux', '919', 'Documentary', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(91, 'tt0000091', 'short', 'The House of the Devil', '3', 'Horror', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(92, 'tt0000092', 'short', 'Marée montante sur Brise-Larmes', '712', 'Documentary', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(93, 'tt0000093', 'movie', 'Melbourne', '713', 'Documentary', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(94, 'tt0000094', 'short', 'Miss de Vere', '22', 'Short', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(95, 'tt0000095', 'movie', 'The Mysterious Paper', '88', 'Short', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(96, 'tt0000096', 'short', 'Place Saint-Augustin', '547', 'Documentary', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(97, 'tt0000097', 'movie', 'Picasso', '1025', 'Documentary', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(98, 'tt0000098', 'short', 'alice In Wonderland', '222', 'Fantasy', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(99, 'tt0000099', 'short', 'Pele', '615', 'Documentary', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(100, 'tt0000100', 'movie', 'Ronaldo', '145', 'Fantasy', '2023-06-19 09:04:56', '2023-06-19 09:04:56'),
(101, 'tt000101', 'Bikram', 'bk', '12', 'fun', '2023-06-19 09:58:14', '2023-06-19 09:58:14'),
(102, 'tt000102', 'Bikram1', 'bk1', '121', 'fun1', '2023-06-19 10:54:40', '2023-06-19 10:54:40');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tconst` varchar(255) NOT NULL,
  `averageRating` varchar(255) NOT NULL,
  `numVotes` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `tconst`, `averageRating`, `numVotes`, `created_at`, `updated_at`) VALUES
(2, 'tt0000001', '5.7', '1911', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(3, 'tt0000002', '5.8', '257', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(4, 'tt0000003', '6.5', '1716', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(5, 'tt0000004', '5.6', '169', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(6, 'tt0000005', '6.2', '2532', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(7, 'tt0000006', '5.1', '173', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(8, 'tt0000007', '5.4', '790', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(9, 'tt0000008', '5.4', '2054', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(10, 'tt0000009', '5.2', '199', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(11, 'tt0000010', '6.9', '6929', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(12, 'tt0000011', '5.3', '355', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(13, 'tt0000012', '7.4', '11869', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(14, 'tt0000013', '5.7', '1829', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(15, 'tt0000014', '7.1', '5322', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(16, 'tt0000015', '6.2', '1020', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(17, 'tt0000016', '5.9', '1440', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(18, 'tt0000017', '4.6', '314', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(19, 'tt0000018', '5.3', '577', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(20, 'tt0000019', '5', '31', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(21, 'tt0000020', '4.8', '345', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(22, 'tt0000022', '5.1', '1061', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(23, 'tt0000023', '5.7', '1387', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(24, 'tt0000024', '4.2', '99', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(25, 'tt0000025', '4', '45', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(26, 'tt0000026', '5.6', '1496', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(27, 'tt0000027', '5.6', '1118', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(28, 'tt0000028', '5.1', '1036', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(29, 'tt0000029', '5.9', '3266', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(30, 'tt0000030', '5.2', '820', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(31, 'tt0000031', '5.5', '975', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(32, 'tt0000032', '5', '408', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(33, 'tt0000033', '5.5', '992', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(34, 'tt0000034', '5', '190', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(35, 'tt0000035', '5.3', '78', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(36, 'tt0000036', '4.4', '594', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(37, 'tt0000037', '4.2', '66', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(38, 'tt0000038', '4.1', '197', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(39, 'tt0000039', '3.1', '30', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(40, 'tt0000040', '4.2', '64', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(41, 'tt0000041', '6.8', '1772', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(42, 'tt0000042', '3.8', '37', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(43, 'tt0000043', '3.6', '32', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(44, 'tt0000044', '3.7', '45', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(45, 'tt0000045', '4.1', '33', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(46, 'tt0000046', '3.6', '34', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(47, 'tt0000047', '3.1', '34', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(48, 'tt0000048', '4.8', '191', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(49, 'tt0000049', '4.8', '49', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(50, 'tt0000050', '3.7', '34', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(51, 'tt0000051', '3.2', '35', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(52, 'tt0000052', '4.2', '97', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(53, 'tt0000053', '2.7', '18', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(54, 'tt0000054', '4.5', '34', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(55, 'tt0000055', '3.2', '30', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(56, 'tt0000056', '2.5', '22', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(57, 'tt0000057', '4.5', '34', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(58, 'tt0000058', '4.3', '33', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(59, 'tt0000059', '3', '27', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(60, 'tt0000060', '7.4', '87', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(61, 'tt0000061', '4.1', '24', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(62, 'tt0000062', '6.3', '193', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(63, 'tt0000063', '2.9', '28', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(64, 'tt0000064', '2.7', '29', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(65, 'tt0000065', '2.9', '29', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(66, 'tt0000066', '2.8', '29', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(67, 'tt0000067', '5.6', '62', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(68, 'tt0000068', '3.3', '31', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(69, 'tt0000069', '4.9', '441', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(70, 'tt0000070', '6.4', '2574', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(71, 'tt0000071', '3.5', '29', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(72, 'tt0000072', '3.2', '27', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(73, 'tt0000073', '2.9', '30', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(74, 'tt0000074', '4.1', '31', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(75, 'tt0000075', '6.3', '1866', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(76, 'tt0000076', '4.4', '523', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(77, 'tt0000077', '4.1', '35', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(78, 'tt0000078', '3.6', '76', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(79, 'tt0000079', '4.4', '35', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(80, 'tt0000080', '3.5', '31', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(81, 'tt0000081', '3.6', '32', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(82, 'tt0000082', '4.5', '49', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(83, 'tt0000083', '4.2', '32', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(84, 'tt0000084', '4', '30', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(85, 'tt0000085', '4.2', '33', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(86, 'tt0000086', '3.7', '33', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(87, 'tt0000087', '4.3', '37', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(88, 'tt0000088', '3.7', '32', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(89, 'tt0000089', '6.2', '977', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(90, 'tt0000090', '3.5', '31', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(91, 'tt0000091', '6.7', '3479', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(92, 'tt0000092', '4', '29', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(93, 'tt0000093', '4.7', '93', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(94, 'tt0000094', '4.5', '32', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(95, 'tt0000095', '4.3', '34', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(96, 'tt0000096', '3.8', '29', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(97, 'tt0000097', '4.5', '33', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(98, 'tt0000098', '4.6', '36', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(99, 'tt0000099', '4.1', '32', '2023-06-19 08:52:33', '2023-06-19 08:52:33'),
(100, 'tt0000100', '4.6', '53', '2023-06-19 08:52:33', '2023-06-19 08:52:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
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
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
