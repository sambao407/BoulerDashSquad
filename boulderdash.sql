-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 22 Juin 2017 à 20:27
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `Call_Niveau` ()  BEGIN
    SELECT * FROM Position, Element 
	WHERE FK_Element = ID_Element AND FK_Level =1;

END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `element`
--

CREATE TABLE `element` (
  `ID_Element` int(10) UNSIGNED NOT NULL,
  `Object_Type` varchar(40) DEFAULT NULL,
  `Name` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `element`
--

INSERT INTO `element` (`ID_Element`, `Object_Type`, `Name`) VALUES
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
-- Structure de la table `level`
--

CREATE TABLE `level` (
  `ID_Level` int(10) UNSIGNED NOT NULL,
  `Width` int(40) DEFAULT NULL,
  `Height` int(40) DEFAULT NULL,
  `Level` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `level`
--

INSERT INTO `level` (`ID_Level`, `Width`, `Height`, `Level`) VALUES
(1, 5, 5, 'Level 1'),
(2, 10, 10, 'Level 2'),
(3, 15, 15, 'Level 3'),
(4, 20, 20, 'Level 4'),
(5, 25, 25, 'Level 5');

-- --------------------------------------------------------

--
-- Structure de la table `position`
--

CREATE TABLE `position` (
  `FK_Element` int(10) DEFAULT NULL,
  `FK_Level` int(10) DEFAULT NULL,
  `Width` int(40) DEFAULT NULL,
  `Height` int(40) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `position`
--

INSERT INTO `position` (`FK_Element`, `FK_Level`, `Width`, `Height`) VALUES
(6, 1, 0, 0),
(6, 1, 1, 0),
(6, 1, 2, 0),
(6, 1, 3, 0),
(6, 1, 4, 0),
(6, 1, 0, 1),
(3, 1, 1, 1),
(3, 1, 2, 1),
(3, 1, 3, 1),
(6, 1, 4, 1),
(6, 1, 0, 2),
(3, 1, 1, 2),
(3, 1, 2, 2),
(3, 1, 3, 2),
(6, 1, 4, 2),
(6, 1, 0, 3),
(3, 1, 1, 3),
(3, 1, 2, 3),
(3, 1, 3, 3),
(6, 1, 4, 3),
(6, 1, 0, 4),
(3, 1, 1, 4),
(3, 1, 2, 4),
(3, 1, 3, 4),
(6, 1, 4, 4),
(6, 2, 0, 0),
(6, 2, 1, 0),
(6, 2, 2, 0),
(6, 2, 3, 0),
(6, 2, 4, 0),
(6, 2, 5, 0),
(6, 2, 6, 0),
(6, 2, 7, 0),
(6, 2, 8, 0),
(6, 2, 9, 0),
(6, 2, 0, 1),
(3, 2, 1, 1),
(3, 2, 2, 1),
(3, 2, 3, 1),
(3, 2, 4, 1),
(4, 2, 5, 1),
(3, 2, 6, 1),
(3, 2, 7, 1),
(4, 2, 8, 1),
(6, 2, 9, 1),
(6, 2, 0, 2),
(3, 2, 1, 2),
(3, 2, 2, 2),
(3, 2, 3, 2),
(4, 2, 4, 2),
(2, 2, 5, 2),
(3, 2, 6, 2),
(3, 2, 7, 2),
(3, 2, 8, 2),
(6, 2, 9, 2),
(6, 2, 0, 3),
(3, 2, 1, 3),
(3, 2, 2, 3),
(3, 2, 3, 3),
(5, 2, 4, 3),
(5, 2, 5, 3),
(3, 2, 6, 3),
(3, 2, 7, 3),
(3, 2, 8, 3),
(6, 2, 9, 3),
(6, 2, 0, 4),
(4, 2, 1, 4),
(3, 2, 2, 4),
(3, 2, 3, 4),
(5, 2, 4, 4),
(4, 2, 5, 4),
(3, 2, 6, 4),
(4, 2, 7, 4),
(3, 2, 8, 4),
(6, 2, 9, 4),
(6, 2, 0, 5),
(4, 2, 1, 5),
(3, 2, 2, 5),
(3, 2, 3, 5),
(2, 2, 4, 5),
(3, 2, 5, 5),
(3, 2, 6, 5),
(3, 2, 7, 5),
(3, 2, 8, 5),
(6, 2, 9, 5),
(6, 2, 0, 6),
(3, 2, 1, 6),
(3, 2, 2, 6),
(4, 2, 3, 6),
(3, 2, 4, 6),
(3, 2, 5, 6),
(4, 2, 6, 6),
(4, 2, 7, 6),
(2, 2, 8, 6),
(6, 2, 9, 6),
(6, 2, 0, 7),
(3, 2, 1, 7),
(3, 2, 2, 7),
(3, 2, 3, 7),
(3, 2, 4, 7),
(2, 2, 5, 7),
(3, 2, 6, 7),
(3, 2, 7, 7),
(3, 2, 8, 7),
(6, 2, 9, 7),
(6, 2, 0, 8),
(3, 2, 1, 8),
(3, 2, 2, 8),
(3, 2, 3, 8),
(3, 2, 4, 8),
(3, 2, 5, 8),
(3, 2, 6, 8),
(3, 2, 7, 8),
(6, 2, 8, 8),
(6, 2, 9, 8),
(6, 2, 0, 9),
(6, 2, 1, 9),
(6, 2, 2, 9),
(6, 2, 3, 9),
(6, 2, 4, 9),
(6, 2, 5, 9),
(6, 2, 6, 9),
(6, 2, 7, 9),
(6, 2, 8, 9),
(6, 2, 9, 9);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `element`
--
ALTER TABLE `element`
  ADD PRIMARY KEY (`ID_Element`);

--
-- Index pour la table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`ID_Level`);

--
-- Index pour la table `position`
--
ALTER TABLE `position`
  ADD KEY `FK_Element` (`FK_Element`),
  ADD KEY `FK_Level` (`FK_Level`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `element`
--
ALTER TABLE `element`
  MODIFY `ID_Element` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `level`
--
ALTER TABLE `level`
  MODIFY `ID_Level` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
