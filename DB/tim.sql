-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2016 at 08:36 AM
-- Server version: 5.7.9
-- PHP Version: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tim`
--

-- --------------------------------------------------------

--
-- Table structure for table `assistanceservice`
--

DROP TABLE IF EXISTS `assistanceservice`;
CREATE TABLE IF NOT EXISTS `assistanceservice` (
  `nameID` char(50) NOT NULL,
  `img` text NOT NULL,
  `description` text NOT NULL,
  `category` enum('Line Managment','Technical Support','Smart Life Support','Monitoring Costs') NOT NULL,
  PRIMARY KEY (`nameID`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii COMMENT='Table About the Assistance Service';

--
-- Dumping data for table `assistanceservice`
--

INSERT INTO `assistanceservice` (`nameID`, `img`, `description`, `category`) VALUES
('<h1>Prova</h1>', '<img src="images/mytim-fisso.png" />', 'ciao', 'Line Managment'),
('secondaprova', 'wowowowowo', 'ieieie', 'Monitoring Costs');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
