-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2018 at 12:20 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `dataform_ta`
--

CREATE TABLE `dataform_ta` (
  `nim` int(10) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `fakultas` varchar(25) NOT NULL,
  `jeniskelamin` varchar(20) NOT NULL,
  `foto` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dataform_ta`
--

INSERT INTO `dataform_ta` (`nim`, `nama`, `fakultas`, `jeniskelamin`, `foto`) VALUES
(1111178890, 'Anaya Kaila Putri', 'Fakultas Industri Kreatif', 'Perempuan', 'poto/p2.JPG'),
(2147483647, 'Tri Agustina Putri', 'Fakultas Ekonomi Bisnis', 'Perempuan', 'poto/p1.JPG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dataform_ta`
--
ALTER TABLE `dataform_ta`
  ADD PRIMARY KEY (`nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
