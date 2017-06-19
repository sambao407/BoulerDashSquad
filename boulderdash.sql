-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Sam 17 Juin 2017 à 12:04
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `boulderdash`
--

DELIMITER $$
--
-- Procédures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `findAllExamples` ()  NO SQL
SELECT id, name
FROM example$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `findExampleById` (IN `id` INT)  NO SQL
SELECT id, name
FROM example
WHERE example.id = id$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `findExampleByName` (IN `name` VARCHAR(255))  NO SQL
SELECT id, name
FROM example
WHERE example.name = name$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `element`
--

CREATE TABLE `element` (
  `Id_Element` int(11) NOT NULL,
  `Object` varchar(255) NOT NULL,
  `Name` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `element`
--

INSERT INTO `element` (`Id_Element`, `Object`, `Name`) VALUES
(1, 'Background', 'Door'),
(2, 'Object', 'Diamond'),
(3, 'Background', 'Mud'),
(4, 'Object', 'Rock'),
(5, 'Background', 'Wall'),
(6, 'Background', 'Special Stone Wall'),
(7, 'Points_Giving_Enemy', 'BuzzBuzz'),
(8, 'Points_Giving_Enemy', 'FlapFlap'),
(9, 'Points_Giving_Enemy', 'BimBim'),
(10, 'Points_Giving_Enemy', 'PingPing'),
(11, 'Points_Giving_Enemy', 'BubbleBubble'),
(12, 'Points_Giving_Enemy', 'GuriGuri'),
(13, 'Diamonds_giving_Enemy', 'PuffPuff'),
(14, 'Diamonds_giving_Enemy', 'TackyTacky'),
(15, 'Diamonds_giving_Enemy', 'PiroPiro'),
(16, 'Diamonds_giving_Enemy', 'Amoeba');

-- --------------------------------------------------------

--
-- Structure de la table `niveau`
--

CREATE TABLE `niveau` (
  `ID_Level` int(10) UNSIGNED NOT NULL,
  `Level` varchar(40) DEFAULT NULL,
  `Width` int(11) NOT NULL,
  `Height` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `niveau`
--

INSERT INTO `niveau` (`ID_Level`, `Level`, `Width`, `Height`) VALUES
(1, 'Level 1', 60, 22),
(2, 'Level 2', 20, 30),
(3, 'Level 3', 30, 15),
(4, 'Level 4', 30, 30),
(5, 'Level 5', 40, 20);

-- --------------------------------------------------------

--
-- Structure de la table `positon`
--

CREATE TABLE `positon` (
  `ID_Position` int(11) NOT NULL,
  `Width` int(11) NOT NULL,
  `Height` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `element`
--
ALTER TABLE `element`
  ADD PRIMARY KEY (`Id_Element`);

--
-- Index pour la table `niveau`
--
ALTER TABLE `niveau`
  ADD PRIMARY KEY (`ID_Level`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `niveau`
--
ALTER TABLE `niveau`
  MODIFY `ID_Level` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
