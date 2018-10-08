-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 08 oct. 2018 à 12:41
-- Version du serveur :  5.7.19
-- Version de PHP :  7.1.9

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de données :  `sym_02`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `temps` datetime DEFAULT NULL,
  `auteur` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `titre`, `description`, `temps`, `auteur`) VALUES
(1, 'Wolfgang Amadeus Mozart', 'Johannes Chrysostomus Wolfgangus Theophilus Mozart1 ou Wolfgang Amadeus Mozart2 (en allemand : [ˈvɔlfɡaŋ amaˈdeus ˈmoːtsaʁt]), né à Salzbourg (principauté du Saint-Empire romain germanique) le 27 janvier 17563 et mort à Vienne le 5 décembre 17913, est un compositeur.\r\n\r\nMort à trente-cinq ans, il laisse une œuvre impressionnante (626 œuvres sont répertoriées dans le catalogue Köchel), qui embrasse tous les genres musicaux de son époque. Selon le témoignage de ses contemporains, il était, au piano comme au violon, un virtuose.', '2018-10-08 08:21:19', 'Artem Tsymbalov'),
(2, 'Johann Christian Bach', 'Johann Christian Bach est un compositeur et organiste allemand, né à Leipzig le 5 septembre 1735 et mort à Londres le 1er janvier 1782. Il fut surnommé le « Bach de Milan » et le « Bach de Londres ». Certains ouvrages français l\'appellent « Jean-Chrétien Bach ».\r\n\r\n', '2018-10-08 09:14:17', 'Artem Tsymbalov');

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE IF NOT EXISTS `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`) VALUES
('20181008123003');
SET FOREIGN_KEY_CHECKS=1;
COMMIT;