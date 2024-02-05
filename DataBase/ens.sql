-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 17 jan. 2024 à 20:40
-- Version du serveur : 10.4.25-MariaDB
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ens`
--

-- --------------------------------------------------------

--
-- Structure de la table `annonces`
--

CREATE TABLE `annonces` (
  `id` int(11) NOT NULL,
  `editeur` varchar(25) NOT NULL,
  `texte_annonce` text NOT NULL,
  `filiere` text NOT NULL,
  `piece_jointe` varchar(255) DEFAULT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `annonces`
--

INSERT INTO `annonces` (`id`, `editeur`, `texte_annonce`, `filiere`, `piece_jointe`, `created_at`, `updated_at`) VALUES
(9, 'G2838127321', 'bonjour , vous trouvez ci joint tous es documents nessaisaires .', 'G-Infogr', 'public/upload/avis/annonce_659b4f4b8032f.pdf', '2024-01-12', '2024-01-12 15:06:44');

-- --------------------------------------------------------

--
-- Structure de la table `avis`
--

CREATE TABLE `avis` (
  `id_avis` int(11) NOT NULL,
  `utilisateur_ens` varchar(50) NOT NULL,
  `groupe` varchar(11) NOT NULL,
  `objet` varchar(200) NOT NULL,
  `contenu` text NOT NULL,
  `piece_jointe` varchar(300) NOT NULL,
  `date_avis` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `cycle`
--

CREATE TABLE `cycle` (
  `ref_cycle` varchar(30) NOT NULL,
  `intitule_cycle` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `cycle`
--

INSERT INTO `cycle` (`ref_cycle`, `intitule_cycle`) VALUES
('CLE', 'LICENCE EN EDUCATION ');

-- --------------------------------------------------------

--
-- Structure de la table `docupload`
--

CREATE TABLE `docupload` (
  `id_doc` int(11) NOT NULL,
  `intitule_doc` varchar(22) NOT NULL,
  `description` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `docupload`
--

INSERT INTO `docupload` (`id_doc`, `intitule_doc`, `description`, `url`) VALUES
(117, 'Doc1', '123', 'http://localhost:8080/Uploads/Doc1.csv'),
(118, 'doc1r', 'g8oyigi', 'http://localhost:8080/Uploads/doc1r.sql'),
(119, 'Doc1w', '3w4', 'http://localhost:8080/Uploads/Doc1w.sql'),
(120, 'Doc1w', '3w4', 'http://localhost:8080/Uploads/Doc1w.sql'),
(121, 'Doc1w', '3w4', 'http://localhost:8080/Uploads/Doc1w.sql');

-- --------------------------------------------------------

--
-- Structure de la table `emploidutemp`
--

CREATE TABLE `emploidutemp` (
  `id` int(25) NOT NULL,
  `objet` varchar(100) NOT NULL,
  `filiere` varchar(11) NOT NULL,
  `piece_jointe` varchar(255) NOT NULL,
  `au` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `emploidutemp`
--

INSERT INTO `emploidutemp` (`id`, `objet`, `filiere`, `piece_jointe`, `au`) VALUES
(8, 'Nouveau EDT avec nouveau cours et TPs', 'G-Info', 'public/upload/emploi/Nouveau_EDT_avec_nouveau_cours_et_TPs.png', '');

-- --------------------------------------------------------

--
-- Structure de la table `filiere`
--

CREATE TABLE `filiere` (
  `ref_fil` varchar(30) NOT NULL,
  `intitule_fil` varchar(200) NOT NULL,
  `ref_cycle` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `filiere`
--

INSERT INTO `filiere` (`ref_fil`, `intitule_fil`, `ref_cycle`) VALUES
('INFO', 'INFORMATIQUE', 'CLE'),
('TMW', 'TMW', 'CLE');

-- --------------------------------------------------------

--
-- Structure de la table `groupe`
--

CREATE TABLE `groupe` (
  `id_grp` int(11) NOT NULL,
  `nom_grp` varchar(70) NOT NULL,
  `abbr_grp` varchar(20) NOT NULL,
  `grp_sup` int(11) DEFAULT NULL,
  `AU` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `groupe`
--

INSERT INTO `groupe` (`id_grp`, `nom_grp`, `abbr_grp`, `grp_sup`, `AU`) VALUES
(2, 'etudiant', 'Etu', NULL, 2023),
(3, 'prof', 'Pr', NULL, 2024);

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

CREATE TABLE `inscription` (
  `cin` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `date_naissance` date NOT NULL,
  `telephone` text NOT NULL,
  `s1` text NOT NULL,
  `s2` text NOT NULL,
  `s3` text NOT NULL,
  `s4` text NOT NULL,
  `releve_notes` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `inscription`
--

INSERT INTO `inscription` (`cin`, `nom`, `prenom`, `email`, `date_naissance`, `telephone`, `s1`, `s2`, `s3`, `s4`, `releve_notes`) VALUES
('', '', '', '', '0000-00-00', '', '', '', '', '', ''),
('AZ345', 'amina', 'mdn', 'moueddeneamina36@gmail.com', '2004-08-09', '0603083124', '15.25', '15.74', '16.55', '16.59', 'inscr1.png'),
('G139010141', 'MOUEDDENE', 'WAFAE', 'moueddenewafae504@gmail.com', '2024-01-25', '0641707913', '15.45', '15.74', '16.55', '16.96', ''),
('YT0000', 'oumaima', 'rochdi', 'oumaima@gmail.com', '2024-01-10', '0603034569', '14.01', '14.00', '17.00', '16.98', ''),
('YT4909', 'MOUEDDENE', 'AMINA', 'moueddeneamina36@gmail.com', '2024-01-11', '0603083124', '15.25', '15.98', '16.56', '16.96', '');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur_ens`
--

CREATE TABLE `utilisateur_ens` (
  `matricule` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `nom_ar` varchar(50) DEFAULT NULL,
  `prenom_ar` varchar(50) DEFAULT NULL,
  `cin` varchar(40) NOT NULL,
  `dateNaiss` date NOT NULL,
  `lieuNaiss` varchar(100) NOT NULL,
  `role` varchar(20) NOT NULL,
  `groupe` int(11) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `dateIns` date DEFAULT NULL,
  `filiere` varchar(30) DEFAULT NULL,
  `semestre` enum('S1','S2','S3','S4','S5','S6') DEFAULT NULL,
  `AU` year(4) NOT NULL,
  `motPasse` varchar(300) NOT NULL,
  `is_confirmed` tinyint(1) DEFAULT 0,
  `confirmation_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateur_ens`
--

INSERT INTO `utilisateur_ens` (`matricule`, `nom`, `prenom`, `nom_ar`, `prenom_ar`, `cin`, `dateNaiss`, `lieuNaiss`, `role`, `groupe`, `email`, `dateIns`, `filiere`, `semestre`, `AU`, `motPasse`, `is_confirmed`, `confirmation_token`) VALUES
('G134000000', 'Moueddene', 'amina', NULL, NULL, 'YT3400', '2004-03-07', 'Marrakech', 'prof', 3, 'moueddeneamina36@gmail.com\r\n', '2022-03-02', 'INFO', 'S4', 2023, '$2y$10$0PUEoqFm7dQKcfzjTuDnuu7VLCw6icmAPe6eP8.dYUHa7p9J7fMNi', 0, NULL),
('YJG3987321', 'wafae', 'mdn', NULL, NULL, 'lfku983w7482', '2003-03-12', 'Marrakech', 'etudiant', 2, 'moueddenewafae504@gmail.com', '2022-03-02', 'TMW', 'S4', 2022, '$2y$10$0PUEoqFm7dQKcfzjTuDnuu7VLCw6icmAPe6eP8.dYUHa7p9J7fMNi', 0, 'd7d2d069282f651a2b40745fa4da960bf1fcd977c0b5825b09ea434c35e15010');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `annonces`
--
ALTER TABLE `annonces`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `avis`
--
ALTER TABLE `avis`
  ADD PRIMARY KEY (`id_avis`),
  ADD KEY `utilisateur_ens` (`utilisateur_ens`),
  ADD KEY `groupe` (`groupe`);

--
-- Index pour la table `cycle`
--
ALTER TABLE `cycle`
  ADD PRIMARY KEY (`ref_cycle`);

--
-- Index pour la table `docupload`
--
ALTER TABLE `docupload`
  ADD PRIMARY KEY (`id_doc`);

--
-- Index pour la table `emploidutemp`
--
ALTER TABLE `emploidutemp`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `filiere`
--
ALTER TABLE `filiere`
  ADD PRIMARY KEY (`ref_fil`),
  ADD KEY `ref_cycle` (`ref_cycle`);

--
-- Index pour la table `groupe`
--
ALTER TABLE `groupe`
  ADD PRIMARY KEY (`id_grp`),
  ADD KEY `grp_sup` (`grp_sup`);

--
-- Index pour la table `inscription`
--
ALTER TABLE `inscription`
  ADD PRIMARY KEY (`cin`);

--
-- Index pour la table `utilisateur_ens`
--
ALTER TABLE `utilisateur_ens`
  ADD PRIMARY KEY (`matricule`),
  ADD UNIQUE KEY `cin` (`cin`),
  ADD KEY `filiere` (`filiere`),
  ADD KEY `groupe` (`groupe`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `annonces`
--
ALTER TABLE `annonces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `avis`
--
ALTER TABLE `avis`
  MODIFY `id_avis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT pour la table `emploidutemp`
--
ALTER TABLE `emploidutemp`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `avis`
--
ALTER TABLE `avis`
  ADD CONSTRAINT `avis_ibfk_1` FOREIGN KEY (`utilisateur_ens`) REFERENCES `utilisateur_ens` (`matricule`);

--
-- Contraintes pour la table `filiere`
--
ALTER TABLE `filiere`
  ADD CONSTRAINT `filiere_ibfk_1` FOREIGN KEY (`ref_cycle`) REFERENCES `cycle` (`ref_cycle`);

--
-- Contraintes pour la table `groupe`
--
ALTER TABLE `groupe`
  ADD CONSTRAINT `groupe_ibfk_1` FOREIGN KEY (`grp_sup`) REFERENCES `groupe` (`id_grp`);

--
-- Contraintes pour la table `utilisateur_ens`
--
ALTER TABLE `utilisateur_ens`
  ADD CONSTRAINT `fk_utilisateur_ens_filiere` FOREIGN KEY (`filiere`) REFERENCES `filiere` (`ref_fil`),
  ADD CONSTRAINT `fk_utilisateur_ens_groupe` FOREIGN KEY (`groupe`) REFERENCES `groupe` (`id_grp`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_utilisateur_ens_groupe_2` FOREIGN KEY (`groupe`) REFERENCES `groupe` (`id_grp`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
