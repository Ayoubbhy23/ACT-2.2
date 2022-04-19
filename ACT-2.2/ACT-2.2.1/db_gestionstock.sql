-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 19 avr. 2022 à 11:49
-- Version du serveur : 8.0.27
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `db_gestionstock`
--

-- --------------------------------------------------------

--
-- Structure de la table `ft_clients`
--

DROP TABLE IF EXISTS `ft_clients`;
CREATE TABLE IF NOT EXISTS `ft_clients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(32) NOT NULL,
  `telephone` int NOT NULL,
  `abonnement` enum('premium','vip','classique','') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `interet` set('sport','cinema','musique','') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `ft_clients`
--

INSERT INTO `ft_clients` (`id`, `nom`, `telephone`, `abonnement`, `interet`) VALUES
(3, 'claude', 1, '', 'sport,cinema,musique'),
(4, 'claude', 556468522, 'premium', 'sport,cinema,musique'),
(5, 'gerome', 335669855, 'classique', 'sport,cinema'),
(6, 'sami', 33256452, 'premium', 'sport,cinema,musique,');

-- --------------------------------------------------------

--
-- Structure de la table `ft_fournisseurs`
--

DROP TABLE IF EXISTS `ft_fournisseurs`;
CREATE TABLE IF NOT EXISTS `ft_fournisseurs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `ft_fournisseurs`
--

INSERT INTO `ft_fournisseurs` (`id`, `nom`) VALUES
(1, 'orange'),
(2, 'bouegues'),
(3, 'sfr');

-- --------------------------------------------------------

--
-- Structure de la table `ft_produits`
--

DROP TABLE IF EXISTS `ft_produits`;
CREATE TABLE IF NOT EXISTS `ft_produits` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(32) NOT NULL,
  `type` varchar(32) NOT NULL,
  `marque` varchar(32) NOT NULL,
  `id_fournisseur` int NOT NULL,
  `prix` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `ft_produits`
--

INSERT INTO `ft_produits` (`id`, `nom`, `type`, `marque`, `id_fournisseur`, `prix`) VALUES
(4, 'bouquets films', 'cinema', 'netflix', 1, 200),
(5, 'ligue1', 'sport', 'bein', 2, 200),
(6, 'liga', 'sport', 'bein', 3, 200),
(7, 'breaking bad', 'cinema', 'amc', 2, 200);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
