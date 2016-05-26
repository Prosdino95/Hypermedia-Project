-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Creato il: Mag 26, 2016 alle 13:05
-- Versione del server: 5.7.9
-- Versione PHP: 5.6.16

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
-- Struttura della tabella `assistanceservice`
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
-- Dump dei dati per la tabella `assistanceservice`
--

INSERT INTO `assistanceservice` (`nameID`, `img`, `description`, `category`) VALUES
('<h1>Prova</h1>', '<img src="images/mytim-fisso.png" />', 'ciao', 'Line Managment'),
('secondaprova', 'wowowowowo', 'ieieie', 'Monitoring Costs');

-- --------------------------------------------------------

--
-- Struttura della tabella `devices`
--

DROP TABLE IF EXISTS `devices`;
CREATE TABLE IF NOT EXISTS `devices` (
  `id` int(11) NOT NULL,
  `Nome_device` varchar(45) DEFAULT NULL,
  `Prezzo` float DEFAULT NULL,
  `Categoria` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `devices`
--

INSERT INTO `devices` (`id`, `Nome_device`, `Prezzo`, `Categoria`) VALUES
(1, 'Huawei P9', 599.9, 'Phones'),
(2, 'Facile Maxi', 39.9, 'Phones'),
(3, 'Apple iPhone 6S', 789.9, 'Phones'),
(4, 'Huawei Mediapad', 299.9, 'Tablet'),
(5, 'Samsung Galaxy TAB A', 349.9, 'Tablet'),
(6, 'Apple Watch Sport 38', 369.9, 'Tv and Smart Living'),
(7, 'Modem Tim 4g Wi-fi', 69.9, 'Modem and Networking'),
(8, 'Samsung Smart TV 50''''', 1199.99, 'Tv and Smart Living');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
