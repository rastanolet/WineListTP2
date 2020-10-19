-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 19, 2020 at 10:54 PM
-- Server version: 8.0.18
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wine_list`
--

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`) VALUES
(1, 'White'),
(2, 'Red');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`) VALUES
(1, 'Portugal'),
(2, 'South Africa'),
(3, 'France');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = Active, 0 = Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `path`, `created`, `modified`, `status`) VALUES
(2, 'alain brumont madiran tour bouscasse 2012.png', 'files/add/', '2020-10-19 18:30:02', '2020-10-19 18:30:02', 1),
(4, 'adega de penalva dao 2019.png', 'files/add/', '2020-10-19 19:59:44', '2020-10-19 19:59:44', 1),
(5, 'derriere adega de penalva dao 2019.png', 'files/add/', '2020-10-19 20:33:19', '2020-10-19 20:33:19', 1),
(6, 'the curator 2018.png', 'files/add/', '2020-10-19 20:34:55', '2020-10-19 20:34:56', 1);

-- --------------------------------------------------------

--
-- Table structure for table `files_wines`
--

CREATE TABLE `files_wines` (
  `file_id` int(11) NOT NULL,
  `wine_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files_wines`
--

INSERT INTO `files_wines` (`file_id`, `wine_id`) VALUES
(2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `grapes`
--

CREATE TABLE `grapes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grapes`
--

INSERT INTO `grapes` (`id`, `name`) VALUES
(1, 'Encruzado'),
(2, 'Cercial'),
(3, 'Malvasia fina'),
(4, 'Cinsault'),
(5, 'Grenache'),
(6, 'Mourvèdre'),
(7, 'Syrah'),
(8, 'Tannat'),
(9, 'Cabernet sauvignon'),
(10, 'Cabernet franc');

-- --------------------------------------------------------

--
-- Table structure for table `grapes_wines`
--

CREATE TABLE `grapes_wines` (
  `id` int(11) NOT NULL,
  `grape_id` int(11) NOT NULL,
  `wine_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `i18n`
--

CREATE TABLE `i18n` (
  `id` int(11) NOT NULL,
  `locale` varchar(6) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `foreign_key` int(10) NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `i18n`
--

INSERT INTO `i18n` (`id`, `locale`, `model`, `foreign_key`, `field`, `content`) VALUES
(1, 'fr_CA', 'Wines', 3, 'description', 'aucune description'),
(2, 'fr_CA', 'Wines', 1, 'description', 'Ce vin donne l\'impression d\'un bouquet de fleurs.'),
(3, 'fr_CA', 'Wines', 2, 'description', 'Tout ce qui émerge de cette maison semble faire l\'unanimité.');

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `country_id`, `name`) VALUES
(1, 1, 'Dâo E Lafôes'),
(2, 2, 'Western Cape'),
(3, 3, 'Gascogne');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`) VALUES
(1, 'Admin', 'Accès à toutes les actions sur toutes les données.'),
(2, 'Vendeur', 'Ajouter des vins et modifier leurs enregistrements.'),
(3, 'Visiteur', 'Consulter les données publiques sans démarrer de session.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `username`, `email`, `password`, `uuid`, `confirmed`, `created`, `modified`) VALUES
(3, 3, 'Félix', 'felixmaille@gmail.com', '$2y$10$5mS53Qlg1918paaNutDIZO5D35JFjHw4HsUUyP7Xm5BXU6WNmDL5i', '', 0, '2020-10-13 20:20:23', '2020-10-13 20:20:23'),
(4, 1, 'admin', 'admin@admin.com', '$2y$10$iHXhk8h6mD99evpTme8tC.97S./FLOeZbEMJ0tI0ExgEvrHLGT8iC', '', 0, '2020-10-13 20:22:45', '2020-10-13 20:22:45'),
(5, 1, 'simon', 'simon@admin.com', '$2y$10$LSA7GNN8HaE9h.5CS1C.ne6wyZ/.LAoPNgjXSgq2eu55BCgARZ.zu', '', 0, '2020-10-14 13:36:43', '2020-10-14 13:36:43'),
(6, 1, 'Simon Nolet', 'simnol123@gmail.com', 'secret', '9f3eae72-b61e-4565-a0d5-145b52286850', 1, '2020-10-19 01:02:40', '2020-10-19 01:03:54');

-- --------------------------------------------------------

--
-- Table structure for table `vineyards`
--

CREATE TABLE `vineyards` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vineyards`
--

INSERT INTO `vineyards` (`id`, `name`) VALUES
(1, 'Adega de Penalva'),
(2, 'Adi Badenhorst'),
(3, 'Alain Brumont');

-- --------------------------------------------------------

--
-- Table structure for table `wines`
--

CREATE TABLE `wines` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  `vineyard_id` int(11) NOT NULL,
  `year_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `rating_AVG` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wines`
--

INSERT INTO `wines` (`id`, `user_id`, `color_id`, `country_id`, `region_id`, `vineyard_id`, `year_id`, `name`, `price`, `description`, `rating_AVG`, `created`, `modified`) VALUES
(1, 6, 1, 1, 1, 1, 3, 'Adega de Penalva Dão', '11.95', 'This wine is like a bouquet of flowers. Beautifully aromatic, the floral notes become more precise in the mouth, and complete with muscat accents.', 5, '2020-10-13 18:04:46', '2020-10-19 22:07:24'),
(2, 6, 2, 2, 2, 2, 4, 'The Curator', '14.20', 'Everything that comes out of this estate is unanimously golden. Each cuvee features authenticity, nerve and precision. A must for any fan of Rhone Valley blends.', 1, '2020-10-14 09:45:09', '2020-10-19 22:09:58'),
(3, 6, 2, 3, 3, 3, 10, 'Alain Brumont Madiran Tour Bouscassé', '18.05', 'No description', 5, '2020-10-18 20:56:19', '2020-10-19 22:01:42');

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE `years` (
  `id` int(11) NOT NULL,
  `year_number` varchar(4) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `years`
--

INSERT INTO `years` (`id`, `year_number`) VALUES
(3, '2019'),
(4, '2018'),
(5, '2017'),
(6, '2016'),
(7, '2015'),
(8, '2014'),
(9, '2013'),
(10, '2012'),
(11, '2011'),
(12, '2010'),
(13, '2009'),
(14, '2008');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files_wines`
--
ALTER TABLE `files_wines`
  ADD PRIMARY KEY (`file_id`,`wine_id`),
  ADD KEY `file_key` (`file_id`),
  ADD KEY `files_wines_ibfk_2` (`wine_id`);

--
-- Indexes for table `grapes`
--
ALTER TABLE `grapes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grapes_wines`
--
ALTER TABLE `grapes_wines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grapes_wines_ibfk_1` (`grape_id`),
  ADD KEY `grapes_wines_ibfk_2` (`wine_id`);

--
-- Indexes for table `i18n`
--
ALTER TABLE `i18n`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `I18N_LOCALE_FIELD` (`locale`,`model`,`foreign_key`,`field`),
  ADD KEY `I18N_FIELD` (`model`,`foreign_key`,`field`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `regions_ibfk_1` (`country_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_ibfk_1` (`role_id`);

--
-- Indexes for table `vineyards`
--
ALTER TABLE `vineyards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wines`
--
ALTER TABLE `wines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wines_ibfk_1` (`color_id`),
  ADD KEY `wines_ibfk_2` (`country_id`),
  ADD KEY `wines_ibfk_4` (`region_id`),
  ADD KEY `wines_ibfk_5` (`vineyard_id`),
  ADD KEY `wines_ibfk_6` (`year_id`),
  ADD KEY `wines_ibfk_9` (`user_id`);

--
-- Indexes for table `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `grapes`
--
ALTER TABLE `grapes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `grapes_wines`
--
ALTER TABLE `grapes_wines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `i18n`
--
ALTER TABLE `i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vineyards`
--
ALTER TABLE `vineyards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wines`
--
ALTER TABLE `wines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `years`
--
ALTER TABLE `years`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `files_wines`
--
ALTER TABLE `files_wines`
  ADD CONSTRAINT `files_wines_ibfk_1` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`),
  ADD CONSTRAINT `files_wines_ibfk_2` FOREIGN KEY (`wine_id`) REFERENCES `wines` (`id`);

--
-- Constraints for table `grapes_wines`
--
ALTER TABLE `grapes_wines`
  ADD CONSTRAINT `grapes_wines_ibfk_1` FOREIGN KEY (`grape_id`) REFERENCES `grapes` (`id`),
  ADD CONSTRAINT `grapes_wines_ibfk_2` FOREIGN KEY (`wine_id`) REFERENCES `wines` (`id`);

--
-- Constraints for table `regions`
--
ALTER TABLE `regions`
  ADD CONSTRAINT `regions_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `wines`
--
ALTER TABLE `wines`
  ADD CONSTRAINT `wines_ibfk_1` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`),
  ADD CONSTRAINT `wines_ibfk_2` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `wines_ibfk_4` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`),
  ADD CONSTRAINT `wines_ibfk_5` FOREIGN KEY (`vineyard_id`) REFERENCES `vineyards` (`id`),
  ADD CONSTRAINT `wines_ibfk_6` FOREIGN KEY (`year_id`) REFERENCES `years` (`id`),
  ADD CONSTRAINT `wines_ibfk_9` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
