-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 09 nov. 2018 à 14:21
-- Version du serveur :  10.1.26-MariaDB
-- Version de PHP :  7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gogonight`
--

-- --------------------------------------------------------

--
-- Structure de la table `alimentation`
--

CREATE TABLE `alimentation` (
  `idAlimentation` int(11) NOT NULL,
  `TypeAlimentation` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `alimentation`
--

INSERT INTO `alimentation` (`idAlimentation`, `TypeAlimentation`) VALUES
(1, 'Thai'),
(2, 'turque'),
(3, 'libanais'),
(4, 'hallal'),
(5, 'gastronomie francaise'),
(6, 'Vietnamien'),
(7, 'chinois'),
(8, 'hindous'),
(9, 'vegetarien'),
(10, 'italien'),
(11, 'Sans gluten');

-- --------------------------------------------------------

--
-- Structure de la table `amis`
--

CREATE TABLE `amis` (
  `idAmiAssoc` int(11) NOT NULL,
  `idUtilisateur` int(11) NOT NULL,
  `idAmi` int(11) NOT NULL,
  `etatEnvoi` int(11) NOT NULL,
  `notiVue` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `amis`
--

INSERT INTO `amis` (`idAmiAssoc`, `idUtilisateur`, `idAmi`, `etatEnvoi`, `notiVue`) VALUES
(4, 6, 4, 2, 1),
(5, 5, 4, 2, 1),
(8, 4, 5, 2, 1),
(9, 4, 6, 2, 1),
(10, 7, 2, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `invite`
--

CREATE TABLE `invite` (
  `idInvite` int(11) NOT NULL,
  `idOrganisateur` int(11) NOT NULL,
  `idAmi` int(11) NOT NULL,
  `idSoiree` int(11) NOT NULL,
  `etatEnvoi` int(11) NOT NULL,
  `notiVue` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `invite`
--

INSERT INTO `invite` (`idInvite`, `idOrganisateur`, `idAmi`, `idSoiree`, `etatEnvoi`, `notiVue`) VALUES
(1, 4, 6, 1, 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `lieu`
--

CREATE TABLE `lieu` (
  `idLieu` int(11) NOT NULL,
  `nom` varchar(1000) NOT NULL,
  `adresse` varchar(1500) NOT NULL,
  `placeId` varchar(5000) NOT NULL,
  `rating` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `lieu`
--

INSERT INTO `lieu` (`idLieu`, `nom`, `adresse`, `placeId`, `rating`) VALUES
(1, 'Khao Thai', '13 Rue Dauphine, Paris', 'ChIJUQ2wQt9x5kcRnBT5N-KN9tg', 4);

-- --------------------------------------------------------

--
-- Structure de la table `lots`
--

CREATE TABLE `lots` (
  `id_lots` int(11) NOT NULL,
  `id_programme` int(11) NOT NULL,
  `prix` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `lots`
--

INSERT INTO `lots` (`id_lots`, `id_programme`, `prix`) VALUES
(1, 1, 12000),
(2, 1, 15000),
(3, 2, 25000),
(4, 2, 35000),
(5, 3, 15000),
(6, 3, 10000);

-- --------------------------------------------------------

--
-- Structure de la table `soiree`
--

CREATE TABLE `soiree` (
  `idSoiree` int(11) NOT NULL,
  `idOrganisateur` int(11) NOT NULL,
  `idLieu` int(11) NOT NULL,
  `date` varchar(1000) NOT NULL,
  `dHeure` varchar(100) NOT NULL,
  `fHeure` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `soiree`
--

INSERT INTO `soiree` (`idSoiree`, `idOrganisateur`, `idLieu`, `date`, `dHeure`, `fHeure`) VALUES
(1, 4, 1, '2018-05-03', '16:00', '23:00');

-- --------------------------------------------------------

--
-- Structure de la table `useralim`
--

CREATE TABLE `useralim` (
  `idUserAlim` int(11) NOT NULL,
  `idUtilisateur` int(11) NOT NULL,
  `idPrefAlim` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `useralim`
--

INSERT INTO `useralim` (`idUserAlim`, `idUtilisateur`, `idPrefAlim`) VALUES
(4, 3, 2),
(5, 3, 7),
(6, 3, 10),
(7, 4, 1),
(8, 4, 3),
(9, 4, 4),
(11, 5, 6),
(12, 5, 7),
(13, 5, 8),
(15, 6, 2),
(25, 2, 3),
(26, 2, 5),
(27, 2, 6),
(28, 7, 4),
(29, 7, 5),
(30, 8, 4),
(31, 9, 1);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `idUtilisateur` int(11) NOT NULL,
  `Nom` varchar(30) NOT NULL,
  `Prenom` varchar(30) NOT NULL,
  `Age` int(11) NOT NULL,
  `Adresse` varchar(2500) NOT NULL,
  `DateNaiss` varchar(30) NOT NULL,
  `Phone` int(11) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Sex` varchar(10) NOT NULL,
  `MoyTrans` varchar(20) NOT NULL,
  `Budget` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`idUtilisateur`, `Nom`, `Prenom`, `Age`, `Adresse`, `DateNaiss`, `Phone`, `Email`, `Password`, `Sex`, `MoyTrans`, `Budget`) VALUES
(2, 'Chabane', 'Hichem', 23, 'La Fourche -Guy Moquet', '1994-10-16', 123456789, 'hichem@gmail.com', '12345', 'homme', 'tramway', 300),
(3, 'nom1', 'prenom1', 20, 'Paris 18eme', '1995-10-10', 123456, 'nom1@gmail.com', '123456', 'homme', 'train', 250),
(4, 'nom2', 'prenom2', 23, '34 rue Victor basch', '1992-01-14', 123456, 'nom2@gmail.com', '123456', 'homme', 'voiture', 120),
(5, 'nom3', 'prenom3', 25, 'Grand carriere-clichy', '1923-02-20', 12345678, 'nom3@gmail.com', '123456', 'homme', 'tgv', 130),
(6, 'nom4', 'prenom4', 20, '21 Quai de la Loire', '1996-10-21', 12345688, 'nom4@gmail.com', '123456', 'femme', 'bus', 450),
(7, 'Chabane', 'Aymen', 22, 'sdskdjadlkad', '1999-02-17', 1225447785, 'aymen@gmail.com', '5032561e973f1647f319e6a3f7f173', 'homme', 'voiture', 200),
(8, 'kkk', 'kkk', 25, 'kkkkk', '1995-02-12', 1225447785, 'kk@gg.com', '25f9e794323b453885f5181f1b624db', 'homme', 'voiture', 200),
(9, 'll', 'll', 25, 'llllll', '1995-02-02', 1234567891, 'll@gg.com', '25f9e794323b453885f5181f1b624db', 'homme', 'voiture', 200);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `alimentation`
--
ALTER TABLE `alimentation`
  ADD PRIMARY KEY (`idAlimentation`);

--
-- Index pour la table `amis`
--
ALTER TABLE `amis`
  ADD PRIMARY KEY (`idAmiAssoc`);

--
-- Index pour la table `invite`
--
ALTER TABLE `invite`
  ADD PRIMARY KEY (`idInvite`);

--
-- Index pour la table `lieu`
--
ALTER TABLE `lieu`
  ADD PRIMARY KEY (`idLieu`);

--
-- Index pour la table `lots`
--
ALTER TABLE `lots`
  ADD PRIMARY KEY (`id_lots`);

--
-- Index pour la table `soiree`
--
ALTER TABLE `soiree`
  ADD PRIMARY KEY (`idSoiree`);

--
-- Index pour la table `useralim`
--
ALTER TABLE `useralim`
  ADD PRIMARY KEY (`idUserAlim`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`idUtilisateur`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `alimentation`
--
ALTER TABLE `alimentation`
  MODIFY `idAlimentation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `amis`
--
ALTER TABLE `amis`
  MODIFY `idAmiAssoc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `invite`
--
ALTER TABLE `invite`
  MODIFY `idInvite` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `lieu`
--
ALTER TABLE `lieu`
  MODIFY `idLieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `lots`
--
ALTER TABLE `lots`
  MODIFY `id_lots` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `soiree`
--
ALTER TABLE `soiree`
  MODIFY `idSoiree` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `useralim`
--
ALTER TABLE `useralim`
  MODIFY `idUserAlim` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `idUtilisateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
