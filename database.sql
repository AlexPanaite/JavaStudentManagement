-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2020 at 08:13 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `catalog`
--

CREATE TABLE `catalog` (
  `id` int(11) NOT NULL,
  `CodSt` int(11) NOT NULL,
  `Sesiune` varchar(50) NOT NULL,
  `PLF` int(11) NOT NULL,
  `BD` int(11) NOT NULL,
  `SDA` int(11) NOT NULL,
  `IP` int(11) NOT NULL,
  `PW` int(11) NOT NULL,
  `EGC` int(11) NOT NULL,
  `POO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `catalog`
--

INSERT INTO `catalog` (`id`, `CodSt`, `Sesiune`, `PLF`, `BD`, `SDA`, `IP`, `PW`, `EGC`, `POO`) VALUES
(1, 1, 'iarna', 10, 10, 10, 10, 10, 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `domeniu`
--

CREATE TABLE `domeniu` (
  `CodD` int(11) NOT NULL,
  `DenD` varchar(50) NOT NULL,
  `CodF` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `domeniu`
--

INSERT INTO `domeniu` (`CodD`, `DenD`, `CodF`) VALUES
(1, 'CTI', 1);

-- --------------------------------------------------------

--
-- Table structure for table `facultate`
--

CREATE TABLE `facultate` (
  `CodF` int(11) NOT NULL,
  `DenF` varchar(50) NOT NULL,
  `Locatie` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `facultate`
--

INSERT INTO `facultate` (`CodF`, `DenF`, `Locatie`) VALUES
(1, 'Calculatoare', 'Galati');

-- --------------------------------------------------------

--
-- Table structure for table `inmatriculare`
--

CREATE TABLE `inmatriculare` (
  `CodM` int(11) NOT NULL,
  `Nume` varchar(50) NOT NULL,
  `Prenume` varchar(50) NOT NULL,
  `An` int(11) NOT NULL,
  `Grupa` varchar(50) NOT NULL,
  `Medie` varchar(50) NOT NULL,
  `Bursa` tinyint(1) NOT NULL,
  `FormaInv` varchar(50) NOT NULL,
  `CodSt` int(11) NOT NULL,
  `CodS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inmatriculare`
--

INSERT INTO `inmatriculare` (`CodM`, `Nume`, `Prenume`, `An`, `Grupa`, `Medie`, `Bursa`, `FormaInv`, `CodSt`, `CodS`) VALUES
(1, 'Alex', 'Panaite', 3, '22c31b', '10', 1, 'Frecventa', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `specializare`
--

CREATE TABLE `specializare` (
  `CodS` int(11) NOT NULL,
  `DenS` varchar(50) NOT NULL,
  `CodD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `specializare`
--

INSERT INTO `specializare` (`CodS`, `DenS`, `CodD`) VALUES
(1, 'Inginer', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `CodSt` int(11) NOT NULL,
  `Nume` varchar(50) NOT NULL,
  `Prenume` varchar(50) NOT NULL,
  `Cetatenie` varchar(50) NOT NULL,
  `DataN` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`CodSt`, `Nume`, `Prenume`, `Cetatenie`, `DataN`) VALUES
(1, 'Panaite', 'Alex', 'roman', '1998-03-17');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `role`) VALUES
(1, 'Alex', 'test', 'Admin'),
(2, 'Mihai', 'test', 'Student'),
(3, 'Gigi', 'test', 'Secretar'),
(4, 'Gogu', 'test', 'Profesor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CodSt` (`CodSt`);

--
-- Indexes for table `domeniu`
--
ALTER TABLE `domeniu`
  ADD PRIMARY KEY (`CodD`),
  ADD KEY `CodF` (`CodF`);

--
-- Indexes for table `facultate`
--
ALTER TABLE `facultate`
  ADD PRIMARY KEY (`CodF`);

--
-- Indexes for table `inmatriculare`
--
ALTER TABLE `inmatriculare`
  ADD PRIMARY KEY (`CodM`),
  ADD KEY `CodSt` (`CodSt`),
  ADD KEY `CodS` (`CodS`);

--
-- Indexes for table `specializare`
--
ALTER TABLE `specializare`
  ADD PRIMARY KEY (`CodS`),
  ADD KEY `CodD` (`CodD`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`CodSt`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `domeniu`
--
ALTER TABLE `domeniu`
  MODIFY `CodD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `facultate`
--
ALTER TABLE `facultate`
  MODIFY `CodF` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `inmatriculare`
--
ALTER TABLE `inmatriculare`
  MODIFY `CodM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `specializare`
--
ALTER TABLE `specializare`
  MODIFY `CodS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `CodSt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `catalog`
--
ALTER TABLE `catalog`
  ADD CONSTRAINT `catalog_ibfk_1` FOREIGN KEY (`CodSt`) REFERENCES `student` (`CodSt`);

--
-- Constraints for table `domeniu`
--
ALTER TABLE `domeniu`
  ADD CONSTRAINT `domeniu_ibfk_1` FOREIGN KEY (`CodF`) REFERENCES `facultate` (`CodF`);

--
-- Constraints for table `inmatriculare`
--
ALTER TABLE `inmatriculare`
  ADD CONSTRAINT `inmatriculare_ibfk_1` FOREIGN KEY (`CodSt`) REFERENCES `student` (`CodSt`),
  ADD CONSTRAINT `inmatriculare_ibfk_2` FOREIGN KEY (`CodS`) REFERENCES `specializare` (`CodS`);

--
-- Constraints for table `specializare`
--
ALTER TABLE `specializare`
  ADD CONSTRAINT `specializare_ibfk_1` FOREIGN KEY (`CodD`) REFERENCES `domeniu` (`CodD`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
