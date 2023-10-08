-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2022 at 10:56 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ismail`
--

-- --------------------------------------------------------

--
-- Table structure for table `plivaci`
--

CREATE TABLE `plivaci` (
  `IDP` int(11) NOT NULL,
  `Ime` varchar(25) NOT NULL,
  `Prezime` varchar(25) NOT NULL,
  `Spol` varchar(1) NOT NULL DEFAULT 'm',
  `Godiste` date NOT NULL DEFAULT '2004-01-01',
  `Glavni_stil` varchar(10) NOT NULL DEFAULT 'Slobodno',
  `Vrijeme_slobodnog_stila` time NOT NULL DEFAULT '00:00:35',
  `Vrijeme_prsno_stila` time NOT NULL DEFAULT '00:00:45',
  `Vrijeme_ledjno_stila` time NOT NULL DEFAULT '00:00:40',
  `Vrijeme_delfin_stila` time NOT NULL DEFAULT '00:00:40',
  `IDTR` int(11) NOT NULL,
  `IDTA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plivaci`
--

INSERT INTO `plivaci` (`IDP`, `Ime`, `Prezime`, `Spol`, `Godiste`, `Glavni_stil`, `Vrijeme_slobodnog_stila`, `Vrijeme_prsno_stila`, `Vrijeme_ledjno_stila`, `Vrijeme_delfin_stila`, `IDTR`, `IDTA`) VALUES
(1, 'Ismail', 'Mujanovic', 'm', '2004-04-19', 'Prsno', '00:00:29', '00:00:34', '00:00:38', '00:00:37', 1, 20),
(2, 'Ibrahim', 'Hodzic', 'm', '2004-07-14', 'Ledjno', '00:00:32', '00:00:38', '00:00:33', '00:00:50', 2, 9),
(3, 'Ahmed', 'Ramic', 'm', '2004-05-30', 'Delfin', '00:00:35', '00:00:45', '00:00:40', '00:00:40', 3, 10),
(4, 'Tarik', 'Halilovic', 'm', '2004-01-01', 'Slobodno', '00:00:35', '00:00:45', '00:00:40', '00:00:40', 4, 19),
(5, 'Eman', 'Djuric', 'm', '2004-01-02', 'Prsno', '00:00:29', '00:00:56', '00:00:44', '00:00:34', 5, 1),
(6, 'Dzejla', 'Lukic', 'f', '2005-05-27', 'Prsno', '00:00:32', '00:00:34', '00:00:35', '00:00:39', 6, 4),
(7, 'Lana', 'Pudar', 'f', '2006-10-12', 'Delfin', '00:00:30', '00:00:39', '00:00:38', '00:00:32', 6, 1),
(8, 'Muhamed', 'Imamovic', 'm', '2005-08-18', 'Ledjno', '00:00:28', '00:00:40', '00:00:32', '00:00:35', 1, 16),
(9, 'Ela', 'Spahic', 'f', '2004-02-01', 'Delfin', '00:00:29', '00:00:45', '00:00:40', '00:00:30', 3, 2),
(10, 'Amela', 'Laric', 'f', '2007-01-20', 'Ledjno', '00:00:30', '00:00:53', '00:00:33', '00:00:57', 2, 4),
(11, 'Karolina', 'Jankovic', 'f', '2004-05-25', 'Prsno', '00:00:33', '00:00:36', '00:00:40', '00:00:45', 5, 9),
(12, 'Tamara', 'Delic', 'f', '2005-11-21', 'Ledjno', '00:00:35', '00:00:45', '00:00:34', '00:00:40', 6, 7),
(13, 'Ivan', 'Kolar', 'm', '2004-01-27', 'Slobodno', '00:00:27', '00:00:45', '00:00:40', '00:00:40', 1, 6),
(14, 'Matilda', 'Jovanovic', 'f', '2005-12-13', 'Delfin', '00:00:31', '00:00:45', '00:00:40', '00:00:33', 3, 11),
(15, 'Daniela', 'Galic', 'f', '2004-04-21', 'Slobodno', '00:00:29', '00:00:45', '00:00:40', '00:00:40', 4, 15),
(16, 'Anamarija', 'Nikolic', 'f', '2004-03-29', 'Ledjno', '00:00:30', '00:00:45', '00:00:35', '00:00:40', 2, 2),
(17, 'Patrik', 'Novakovic', 'm', '2005-06-02', 'Prsno', '00:00:28', '00:00:32', '00:00:40', '00:00:40', 1, 17),
(18, 'Nina', 'Bosanac', 'f', '2004-07-12', 'Prsno', '00:00:29', '00:00:35', '00:00:40', '00:00:40', 6, 7),
(19, 'Gojslav', 'Antunovic', 'm', '2004-02-24', 'Delfin', '00:00:27', '00:00:45', '00:00:40', '00:00:30', 4, 18),
(20, 'Marijo', 'Delic', 'm', '2004-01-11', 'Slobodno', '00:00:26', '00:00:45', '00:00:40', '00:00:40', 5, 8);

-- --------------------------------------------------------

--
-- Table structure for table `takmicenje`
--

CREATE TABLE `takmicenje` (
  `IDTA` int(11) NOT NULL,
  `Ime` varchar(100) NOT NULL,
  `Klub_domacin` varchar(50) NOT NULL,
  `Datum` date NOT NULL,
  `Osvojeno_mjesto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `takmicenje`
--

INSERT INTO `takmicenje` (`IDTA`, `Ime`, `Klub_domacin`, `Datum`, `Osvojeno_mjesto`) VALUES
(1, 'Sarajevu s ljubavlju', 'Bosna', '2021-02-18', 1),
(2, 'Sarajevu s ljubavlju', 'Bosna', '2021-02-18', 2),
(3, 'Sarajevu s ljubavlju', 'Bosna', '2021-02-18', 3),
(4, 'Zimsko prvenstvo BiH', '', '2021-02-23', 1),
(5, 'Zimsko prvenstvo BiH', '', '2021-02-23', 2),
(6, 'Zimsko prvenstvo BiH', '', '2021-02-23', 3),
(7, 'Bosna PICCOLO CUP', 'Bosna', '2021-10-23', 1),
(8, 'Bosna PICCOLO CUP', 'Bosna', '2021-10-23', 2),
(9, 'Bosna PICCOLO CUP', 'Bosna', '2021-10-23', 3),
(10, 'Sharks kup', 'Sharks', '2021-09-25', 1),
(11, 'Sharks kup', 'Sharks', '2021-09-25', 2),
(12, 'Sharks kup', 'Sharks', '2021-09-25', 3),
(13, 'Orka – Arena Cup', 'Orka', '2021-06-19', 1),
(14, 'Orka – Arena Cup', 'Orka', '2021-06-19', 2),
(15, 'Orka – Arena Cup', 'Orka', '2021-06-19', 3),
(16, 'Ljetno otvoreno prvenstvo BiH', '', '2021-07-15', 1),
(17, 'Ljetno otvoreno prvenstvo BiH', '', '2021-07-15', 2),
(18, 'Ljetno otvoreno prvenstvo BiH', '', '2021-07-15', 3),
(19, 'Bozicni kup', 'Zrinjski', '2021-11-08', 1),
(20, 'Bozicni kup', 'Zrinjski', '2021-11-08', 2),
(21, 'Bozicni kup', 'Zrinjski', '2021-11-08', 3);

-- --------------------------------------------------------

--
-- Table structure for table `treneri`
--

CREATE TABLE `treneri` (
  `IDTR` int(11) NOT NULL,
  `Ime` varchar(25) NOT NULL,
  `Prezime` varchar(25) NOT NULL,
  `Spol` varchar(1) NOT NULL DEFAULT 'm',
  `Staz` int(11) NOT NULL,
  `Godiste` date NOT NULL DEFAULT '1995-01-01',
  `Klub` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treneri`
--

INSERT INTO `treneri` (`IDTR`, `Ime`, `Prezime`, `Spol`, `Staz`, `Godiste`, `Klub`) VALUES
(1, 'Brady', 'Allen', 'm', 15, '1987-01-01', 'Bosna'),
(2, 'Vicki', 'Poston', 'f', 5, '1995-01-01', 'Sharks'),
(3, 'Mattie', 'Schenck', 'f', 6, '1991-01-01', 'GKVS'),
(4, 'Leonard', 'Green', 'm', 10, '1990-01-01', 'Sport Time'),
(5, 'Helen', 'Guarino', 'f', 7, '1989-01-01', 'Zrinjski'),
(6, 'Edna', 'Seal', 'f', 3, '1998-01-01', 'Orka');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `plivaci`
--
ALTER TABLE `plivaci`
  ADD PRIMARY KEY (`IDP`),
  ADD KEY `test` (`IDTR`),
  ADD KEY `test1` (`IDTA`);

--
-- Indexes for table `takmicenje`
--
ALTER TABLE `takmicenje`
  ADD PRIMARY KEY (`IDTA`);

--
-- Indexes for table `treneri`
--
ALTER TABLE `treneri`
  ADD PRIMARY KEY (`IDTR`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `plivaci`
--
ALTER TABLE `plivaci`
  MODIFY `IDP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `takmicenje`
--
ALTER TABLE `takmicenje`
  MODIFY `IDTA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `treneri`
--
ALTER TABLE `treneri`
  MODIFY `IDTR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `plivaci`
--
ALTER TABLE `plivaci`
  ADD CONSTRAINT `test1` FOREIGN KEY (`IDTA`) REFERENCES `takmicenje` (`IDTA`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
