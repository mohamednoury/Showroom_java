-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2023 at 02:46 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `showroom`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `cin` varchar(20) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `numero_telephone` varchar(15) DEFAULT NULL,
  `date_Cl` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `nom`, `prenom`, `cin`, `adresse`, `numero_telephone`, `date_Cl`) VALUES
(1, 'Lopez', 'Isabella', '444555666', '123 Birch St', '555-7777', NULL),
(2, 'Hill', 'Liam', '666777888', '456 Maple St', '555-8888', NULL),
(3, 'Wright', 'Evelyn', '888999000', '789 Cedar St', '555-9999', NULL),
(4, 'Young', 'Mason', '1112223334', '101 Oak St', '555-1234', NULL),
(5, 'Gonzalez', 'Zoe', '3334445556', '567 Pine St', '555-5678', NULL),
(6, 'Baker', 'Aiden', '5556667778', '789 Elm St', '555-1111', NULL),
(7, 'Morales', 'Sophie', '7778889990', '123 Cedar St', '555-2222', NULL),
(8, 'Hayes', 'Henry', '9990001112', '456 Elm St', '555-3333', NULL),
(9, 'Barnes', 'Mia', '1213141516', '789 Pine St', '555-4444', NULL),
(10, 'Wells', 'Samuel', '1617181920', '101 Maple St', '555-5555', NULL),
(12, '', '', '', '', '', NULL),
(13, 'trh', 'rtht', 'trh4651', 'rthrt489', '68484', NULL),
(14, 'nnnn', '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employes`
--

CREATE TABLE `employes` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `cin` varchar(20) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `numero_telephone` varchar(15) DEFAULT NULL,
  `departement` varchar(255) DEFAULT NULL,
  `salaire` decimal(10,2) DEFAULT NULL,
  `date_Em` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employes`
--

INSERT INTO `employes` (`id`, `nom`, `prenom`, `cin`, `adresse`, `numero_telephone`, `departement`, `salaire`, `date_Em`) VALUES
(1, 'Dufresne', 'Sophie', '1234567890', '456 Rue Chêne', '555-3333', 'Marketing', 54000.00, NULL),
(2, 'Lavoie', 'Gabriel', '2345678901', '789 Rue Érable', '555-4444', 'Ressources Humaines', 59000.00, NULL),
(3, 'Bergeron', 'Léa', '3456789012', '101 Rue Hêtre', '555-5555', 'Ventes', 58000.00, NULL),
(4, 'Roy', 'William', '4567890123', '567 Rue Sapin', '555-6666', 'Finances', 62000.00, NULL),
(5, 'Leclerc', 'Zoé', '5678901234', '890 Rue Pin', '555-7777', 'Opérations', 61000.00, NULL),
(6, 'Girard', 'Thomas', '6789012345', '123 Rue Cèdre', '555-8888', 'TI', 64000.00, NULL),
(7, 'Caron', 'Camille', '7890123456', '456 Rue Orme', '555-9999', 'Marketing', 55000.00, NULL),
(8, 'Lemieux', 'Émile', '8901234567', '789 Rue Bouleau', '555-1111', 'Finances', 60000.00, NULL),
(9, 'Martel', 'Mia', '9012345678', '101 Rue Frêne', '555-2222', 'Opérations', 57000.00, NULL),
(10, 'Dubois', 'Léo', '0123456789', '567 Rue Châtaignier', '555-1234', 'Ressources Humaines', 58000.00, NULL),
(11, 'QR', 'QRGQ', 'QERG', 'GRQE', '222', 'xdepartement', 122.00, NULL),
(20, 'nouryyyyyyyyy', 'mohaaaaa', 'regrg45', 'ergreg45665', '732786378', 'xdepartement', 6000.00, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `Id` int(11) NOT NULL,
  `Marque` varchar(255) DEFAULT NULL,
  `modele` varchar(255) DEFAULT NULL,
  `prix_achat` int(11) DEFAULT NULL,
  `prix_vente` int(11) DEFAULT NULL,
  `quantite` int(11) DEFAULT NULL,
  `Date_sortie` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `date_st` date DEFAULT NULL,
  `vehicule_image_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`Id`, `Marque`, `modele`, `prix_achat`, `prix_vente`, `quantite`, `Date_sortie`, `status`, `date_st`) VALUES
(2, 'Audi', 'A', 18000, 23000, 0, 2013, 'Indisponible', NULL),
(3, 'Mercedes', 'G', 17000, 22000, 2, 2014, 'Critique', NULL ),
(4, 'Audi', 'A', 21000, 27000, 12, 2015, 'Disponible', NULL),
(5, 'Mercedes', 'Model3', 16000, 21000, 3, 2016, 'Disponible', NULL),
(6, 'Audi', 'A', 20000, 26000, 10, 2017, 'Vendu', NULL),
(7, 'Mercedes', 'Model3', 16000, 21000, 3, 2018, 'Disponible', NULL),
(8, 'Audi', 'A', 17000, 22000, 6, 2019, 'Disponible', NULL),
(9, 'Mercedes', 'Model6', 21000, 27000, 12, 2020, 'Disponible', NULL),
(10, 'Mercedes', 'Model3', 16000, 21000, 3, 2021, 'Disponible', NULL),
(12, 'Toyota', 'Corolla', 15000, 18000, 10, 2023, 'Disponible', NULL),
(13, 'Honda', 'Civic', 16000, 19000, 8, 2023, 'Disponible', NULL),
(14, 'Ford', 'Focus', 14000, 17000, 5, 2023, 'Disponible', NULL),
(15, 'Nissan', 'Sentra', 15500, 18500, 12, 2023, 'Disponible', NULL),
(16, 'Chevrolet', 'Cruze', 14500, 17500, 6, 2023, 'Disponible', NULL),
(17, 'BMW', '3 Series', 25000, 28000, 4, 2023, 'Disponible', NULL),
(18, 'Mercedes', 'C-Class', 27000, 30000, 3, 2023, 'Critique', NULL),
(19, 'Audi', 'A4', 26000, 29000, 5, 2023, 'Disponible', NULL),
(20, 'Volkswagen', 'Golf', 18000, 21000, 7, 2023, 'Disponible', NULL),
(21, 'Tesla', 'Model 3', 35000, 38000, 0, 2023, 'Indisponible', NULL),
(22, 'xmarq', 'xmodel', 1, 1, 1, 2006, 'xstatus', NULL),
(23, 'xmarq', 'xmodel', 2, 2, 2, 2000, 'xstatus', NULL);


-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `Id` int(11) NOT NULL,
  `id_vehicule` int(11) DEFAULT NULL,
  `id_client` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `montant` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`Id`, `id_vehicule`, `id_client`, `date`, `montant`) VALUES
(1, 3, 8, '2025-11-01', 100000.00),
(2, 8, 5, '2025-11-01', NULL),
(3, 3, 1, '2025-11-01', 100000.00),
(4, 4, 5, '2025-11-01', 100000.00),
(5, 6, 2, '2025-11-01', 100000.00),
(6, 2, 5, '2025-11-01', 100000.00),
(7, 3, 2, '2025-11-01', 100000.00),
(21, 1, 1, '0001-01-01', 1.00);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`email`, `password`) VALUES
('mohamednoury@gmail.com', '123456789'),
('khalidzado@gmail.com', 'qwertyuiop');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employes`
--
ALTER TABLE `employes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_id_vehicule` (`id_vehicule`),
  ADD KEY `fk_id_client` (`id_client`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `employes`
--
ALTER TABLE `employes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `fk_id_client` FOREIGN KEY (`id_client`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `fk_id_vehicule` FOREIGN KEY (`id_vehicule`) REFERENCES `stocks` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
