-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2022 at 10:54 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gym`
--

-- --------------------------------------------------------

--
-- Table structure for table `abonnement`
--

CREATE TABLE `abonnement` (
  `id_abonnement` int(50) NOT NULL,
  `nom_ab` varchar(255) NOT NULL,
  `prix_ab` int(10) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `abonnement`
--

INSERT INTO `abonnement` (`id_abonnement`, `nom_ab`, `prix_ab`, `description`) VALUES
(1, 'musculation', 65, 'bla bla bla'),
(4, 'fitnessPro', 100, 'description fitness pro'),
(5, 'Fitness', 80, 'pack basique '),
(8, 'test', 40, 'test test'),
(10, 'test1', 150, 'desc test1');

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE `calendar` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `description` text NOT NULL,
  `all_day` tinyint(1) NOT NULL,
  `background_color` varchar(7) NOT NULL,
  `border_color` varchar(7) NOT NULL,
  `text_color` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `calendar`
--

INSERT INTO `calendar` (`id`, `title`, `start`, `end`, `description`, `all_day`, `background_color`, `border_color`, `text_color`) VALUES
(1, 'boxe', '2022-05-13 12:00:00', '2022-05-12 14:00:00', 'seance', 1, 'rouge', 'rouge', 'rouge'),
(2, 'dance', '2022-05-14 14:15:00', '2022-05-14 18:19:00', 'dance classique', 1, 'rouge', 'rouge', 'rouge'),
(3, 'aerobic', '2022-05-13 12:00:00', '2022-05-13 14:00:00', 'aujourd\'hui', 0, '.', '.', '.');

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

CREATE TABLE `categorie` (
  `id_categorie` int(5) NOT NULL,
  `description_categorie` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categorie`
--

INSERT INTO `categorie` (`id_categorie`, `description_categorie`) VALUES
(11, 'Categorie masse');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mdp_client` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_abonnement` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `nom`, `prenom`, `adresse`, `mail`, `mdp_client`, `id_abonnement`) VALUES
(67, 'raslen', 'ahmed', 'hammamet', 'raslen@gmail.com', '$2y$13$7IY40ycDyz7wpCaYcSPEIe9HPAfy9bcmHC/nhURK1TZ', 1),
(69, 'mahdi', 'ahmed', 'boumhal', 'mahdi@esprit.tn', '$2y$13$7GZ0MHJk1mfe8WEbNm4aOej.CGzdufP/DadQ9K2.UXQ', 4);

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220421175746', '2022-04-24 19:56:36', 1642);

-- --------------------------------------------------------

--
-- Table structure for table `facture`
--

CREATE TABLE `facture` (
  `id_f` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `id` int(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `numtel` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fournisseur`
--

INSERT INTO `fournisseur` (`id`, `nom`, `adresse`, `numtel`) VALUES
(5, 'amine', 'ghazela', 23400724),
(6, 'ahmed', 'ariana', 55432165),
(7, 'salah', 'tunis', 98534776),
(13, 'Aali', 'nabeul', 53777654);

-- --------------------------------------------------------

--
-- Table structure for table `materiel`
--

CREATE TABLE `materiel` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prix` int(255) NOT NULL,
  `etat` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materiel`
--

INSERT INTO `materiel` (`id`, `nom`, `prix`, `etat`, `image`) VALUES
(24, 'test', 51, 'test', '20200602-055045-627d7ba9c083d.jpg'),
(25, 'test5454', 55, 'fdvbfvg', '20200602-055045-627d7c012a60e.jpg'),
(26, 'tapis', 1500, 'neuf', '9a7157e5a60f42ce2e37575d1720aca3-627e2c748e112.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `panier`
--

CREATE TABLE `panier` (
  `id_p` int(11) NOT NULL,
  `prix` float NOT NULL,
  `quantite` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `produit`
--

CREATE TABLE `produit` (
  `id` int(11) NOT NULL,
  `description` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `id_categorie` int(11) DEFAULT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produit`
--

INSERT INTO `produit` (`id`, `description`, `name`, `price`, `image`, `id_categorie`, `updated_at`) VALUES
(68, 'protein', 'protein', 110, '762b11b95374fcf03ef38c705b1df88c.png', 11, '0000-00-00 00:00:00'),
(69, 'desc mass', 'mass gainer', 150, 'd06c1a47d1294a8b1b4b64626283e18a.jpg', 11, '0000-00-00 00:00:00'),
(70, 'bcaaaaa', 'bcaaa test', 20, '8b95bfd79bf30bfd49db8d5c4a257f85.jpg', 11, '0000-00-00 00:00:00'),
(71, 'aaaaaaa', 'aaaaaaaaaa', 140, '92a930af42c2a3841646038d6a100e72.jpg', 11, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tab_coach`
--

CREATE TABLE `tab_coach` (
  `id_coach` int(20) NOT NULL,
  `nom_coach` varchar(25) NOT NULL,
  `specialite` varchar(20) NOT NULL,
  `mail` varchar(25) NOT NULL,
  `mdp_coach` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tab_coach`
--

INSERT INTO `tab_coach` (`id_coach`, `nom_coach`, `specialite`, `mail`, `mdp_coach`) VALUES
(5, 'iheb', 'kick', 'iheb@gmail.com', 'root123'),
(6, 'firas', 'boxe', 'firas@gmail.com', 'dqsdsdssq'),
(7, 'firas', 'kick', 'saidiiheb@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `tab_seance`
--

CREATE TABLE `tab_seance` (
  `id_seance` int(8) NOT NULL,
  `type_seance` varchar(25) NOT NULL,
  `date_debut` varchar(20) NOT NULL,
  `date_fin` varchar(20) NOT NULL,
  `id_coach` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tab_seance`
--

INSERT INTO `tab_seance` (`id_seance`, `type_seance`, `date_debut`, `date_fin`, `id_coach`) VALUES
(25, 'cardio', '14', '16', 6),
(26, 'boxe', '16', '18', 5),
(27, 'taekwondo', '16', '18', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abonnement`
--
ALTER TABLE `abonnement`
  ADD PRIMARY KEY (`id_abonnement`);

--
-- Indexes for table `calendar`
--
ALTER TABLE `calendar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_abonnement` (`id_abonnement`);

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `facture`
--
ALTER TABLE `facture`
  ADD PRIMARY KEY (`id_f`),
  ADD KEY `facture` (`id`);

--
-- Indexes for table `fournisseur`
--
ALTER TABLE `fournisseur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materiel`
--
ALTER TABLE `materiel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `panier`
--
ALTER TABLE `panier`
  ADD PRIMARY KEY (`id_p`),
  ADD KEY `FK_PANIER` (`id`);

--
-- Indexes for table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categorie` (`id_categorie`);

--
-- Indexes for table `tab_coach`
--
ALTER TABLE `tab_coach`
  ADD PRIMARY KEY (`id_coach`);

--
-- Indexes for table `tab_seance`
--
ALTER TABLE `tab_seance`
  ADD PRIMARY KEY (`id_seance`),
  ADD KEY `id_coach` (`id_coach`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abonnement`
--
ALTER TABLE `abonnement`
  MODIFY `id_abonnement` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `calendar`
--
ALTER TABLE `calendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id_categorie` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `facture`
--
ALTER TABLE `facture`
  MODIFY `id_f` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fournisseur`
--
ALTER TABLE `fournisseur`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `materiel`
--
ALTER TABLE `materiel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `panier`
--
ALTER TABLE `panier`
  MODIFY `id_p` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `produit`
--
ALTER TABLE `produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `tab_coach`
--
ALTER TABLE `tab_coach`
  MODIFY `id_coach` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tab_seance`
--
ALTER TABLE `tab_seance`
  MODIFY `id_seance` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `id_abonnement` FOREIGN KEY (`id_abonnement`) REFERENCES `abonnement` (`id_abonnement`);

--
-- Constraints for table `facture`
--
ALTER TABLE `facture`
  ADD CONSTRAINT `facture` FOREIGN KEY (`id`) REFERENCES `produit` (`id`);

--
-- Constraints for table `panier`
--
ALTER TABLE `panier`
  ADD CONSTRAINT `FK_PANIER` FOREIGN KEY (`id`) REFERENCES `produit` (`id`),
  ADD CONSTRAINT `FK_PersonOrder` FOREIGN KEY (`id`) REFERENCES `produit` (`id`),
  ADD CONSTRAINT `panier_ibfk_1` FOREIGN KEY (`id`) REFERENCES `produit` (`id`);

--
-- Constraints for table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `produit_ibfk_1` FOREIGN KEY (`id_categorie`) REFERENCES `categorie` (`id_categorie`);

--
-- Constraints for table `tab_seance`
--
ALTER TABLE `tab_seance`
  ADD CONSTRAINT `id_coach` FOREIGN KEY (`id_coach`) REFERENCES `tab_coach` (`id_coach`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
