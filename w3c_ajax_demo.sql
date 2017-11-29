-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2015 at 11:47 PM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `w3c_ajax_demo`
--

CREATE TABLE IF NOT EXISTS `w3c_ajax_demo` (
  `id` int(5) NOT NULL,
  `FirstName` varchar(30) NOT NULL,
  `LastName` varchar(30) NOT NULL,
  `Age` int(2) NOT NULL,
  `Hometown` varchar(30) NOT NULL,
  `Job` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='W3C Ajax Demo';

--
-- Dumping data for table `w3c_ajax_demo`
--

INSERT INTO `w3c_ajax_demo` (`id`, `FirstName`, `LastName`, `Age`, `Hometown`, `Job`) VALUES
(1, 'Peter', 'Griffin', 41, 'Quahog', 'Brewery'),
(2, 'Lois', 'Griffin', 40, 'Newport', 'Piano Teacher'),
(3, 'Lois', 'Lane', 32, 'New York', 'Teacher'),
(4, 'John', 'Doe', 88, 'Atlanta', 'Pilot');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `w3c_ajax_demo`
--
ALTER TABLE `w3c_ajax_demo`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
