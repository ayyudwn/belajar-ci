-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2025 at 09:04 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2025-05-22-061658', 'App\\Database\\Migrations\\User', 'default', 'App', 1749651965, 1),
(2, '2025-05-22-061710', 'App\\Database\\Migrations\\Product', 'default', 'App', 1749651965, 1),
(3, '2025-05-22-061719', 'App\\Database\\Migrations\\Transaction', 'default', 'App', 1749651965, 1),
(4, '2025-05-22-061726', 'App\\Database\\Migrations\\TransactionDetail', 'default', 'App', 1749651965, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` double NOT NULL,
  `jumlah` int(5) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `nama`, `harga`, `jumlah`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'Raket Padel PR Hybrid Carbon', 110000, 5, 'RaketPadelPRHybridCarbon.png', '2025-06-11 14:27:35', NULL),
(2, 'Sepatu Lari Pria', 120000, 7, 'SepatuLariPriaCushion500.png', '2025-06-11 14:27:35', NULL),
(3, 'Tenda Camping Arpenaz', 800000, 5, 'TendaCampingArpenaz.png', '2025-06-11 14:27:35', NULL),
(4, 'Tas Ransel Hiking', 90000, 8, 'TasRanselHiking.png', '2025-06-11 14:27:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `parent_id` int(11) UNSIGNED DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `meta_title` varchar(100) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `slug`, `description`, `parent_id`, `image`, `meta_title`, `meta_description`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Peralatan Olah Raga', 'peralatan-olah-raga', 'Menyediakan perlatan untuk olahraga', NULL, NULL, NULL, NULL, 1, '2025-06-26 04:48:44', '2025-06-26 04:48:44', NULL),
(3, 'Peralatan Berkemah', 'peralatan-berkemah', 'Menyediakan perlatan untuk berkemah', NULL, NULL, NULL, NULL, 1, '2025-06-26 04:49:53', '2025-06-26 04:49:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `total_harga` double NOT NULL,
  `alamat` text NOT NULL,
  `ongkir` double DEFAULT NULL,
  `status` int(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `username`, `total_harga`, `alamat`, `ongkir`, `status`, `created_at`, `updated_at`) VALUES
(1, 'cakrabirawa94', 220000, 'Perun', 0, 0, '2025-06-26 04:15:45', '2025-06-26 04:15:45'),
(2, 'ayudws25', 110000, 'JL Anggrek', 0, 0, '2025-06-26 05:47:00', '2025-06-26 05:47:00');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_detail`
--

CREATE TABLE `transaction_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `transaction_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `jumlah` int(5) NOT NULL,
  `diskon` double DEFAULT NULL,
  `subtotal_harga` double NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `transaction_detail`
--

INSERT INTO `transaction_detail` (`id`, `transaction_id`, `product_id`, `jumlah`, `diskon`, `subtotal_harga`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, 0, 220000, '2025-06-26 04:15:45', '2025-06-26 04:15:45'),
(2, 2, 1, 1, 0, 110000, '2025-06-26 05:47:00', '2025-06-26 05:47:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'siregar.kiandra', 'okto99@yahoo.co.id', '$2y$10$JgZErENc3iOOob2lSuoqt.2DDsrfKOxpWgb/VxZ/ldSICcws7H5wK', 'guest', '2025-06-11 14:29:30', NULL),
(2, 'ayudws25', 'hartati.ilsa@farida.net', '$2y$10$YlKjk0v324wEIEHNog1.be6S9Vo39sWeZlRPrSnuqCK96y/nmrl3e', 'admin', '2025-06-11 14:29:30', NULL),
(3, 'cakrabirawa94', 'tamba.ika@nababan.or.id', '$2y$10$6OaP6A/sOZv5YG536lh1me1.OgZLA657SnvggXoQSJEb4NT9NMi.a', 'guest', '2025-06-11 14:29:30', NULL),
(4, 'wastuti', 'winarsih.kala@gmail.co.id', '$2y$10$GqJmSjhfKZLFz9WuUpG7MOnVKkGO9dGGhToYimn68E8knsDF5Jgx.', 'admin', '2025-06-11 14:29:30', NULL),
(5, 'shakila.widiastuti', 'tedi.pradana@gmail.co.id', '$2y$10$bNSkaJ.nF/I.GRQ5xmcTTunDsI6n1IJlc0fH5G/qKEOPqh7KkSUPW', 'admin', '2025-06-11 14:29:30', NULL),
(6, 'mandasari.warji', 'aryani.ratna@gmail.co.id', '$2y$10$vPqH2wNVY9uNVoCq8WKApuOOTQIoSWwNA6qy2thEE.W0n4e/XamvW', 'admin', '2025-06-11 14:29:31', NULL),
(7, 'ehariyah', 'candrakanta58@yahoo.co.id', '$2y$10$iLMyTtj1CXhmwjj9.FaZ9.xZr5VlALFuboZAh7gu6Q3f6Ivs9wS82', 'admin', '2025-06-11 14:29:31', NULL),
(8, 'opudjiastuti', 'prabowo86@gmail.com', '$2y$10$BuJCFqtI1.N.2C/9qECYNOOQ7WcZT0SDvz3glDjbPf78WcKhQv4Zq', 'guest', '2025-06-11 14:29:31', NULL),
(9, 'michelle07', 'zusamah@wijayanti.biz.id', '$2y$10$FoB4X2sBKElnCeIfh58gP.M8r10iTXhVuqs9R4sSkZ.nKKOXCVTPG', 'guest', '2025-06-11 14:29:31', NULL),
(10, 'zramadan', 'thamrin.mustofa@yahoo.co.id', '$2y$10$oOcw7iOa/d52n5VjQxv52ualopuQP28hUmiZCE1vRS9tu2q2NMCNu', 'guest', '2025-06-11 14:29:31', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `product_categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_detail`
--
ALTER TABLE `transaction_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaction_detail`
--
ALTER TABLE `transaction_detail`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD CONSTRAINT `product_categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `product_categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
