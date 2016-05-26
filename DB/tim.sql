-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Creato il: Mag 26, 2016 alle 14:12
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
('My Tim Fisso', '', '', 'Line Managment'),
('My Tim Mobile', '', '', 'Line Managment'),
('My Tim Mail', '', '', 'Technical Support'),
('Modem Fibra', '', '', 'Technical Support'),
('Dettaglio delle chiamate per Clienti Ricaricabili', '', '', 'Monitoring Costs'),
('Tariffa per la navigazione', '', '', 'Monitoring Costs'),
('Tim Music', '', '', 'Smart Life Support'),
('Tim Reading', '', '', 'Smart Life Support');

-- --------------------------------------------------------

--
-- Struttura della tabella `devices`
--

DROP TABLE IF EXISTS `devices`;
CREATE TABLE IF NOT EXISTS `devices` (
  `id` int(11) NOT NULL,
  `device_name` varchar(45) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `img` text,
  `category` enum('Smartphones and Phones','TV and SMart Living','Tablets and Computers','Modem and Networking') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `devices`
--

INSERT INTO `devices` (`id`, `device_name`, `price`, `img`, `category`) VALUES
(1, 'Huawei P9', 599.9, '<img src="images/devices/huawei-p9.png" />', 'Smartphones and Phones'),
(2, 'Facile Maxi', 39.9, '<img src="images/devices/facile_maxi.jpg" />', 'Smartphones and Phones'),
(3, 'Apple iPhone 6S', 789.9, '<img src="images/devices/apple-iPhone6s.png" />', 'Smartphones and Phones'),
(4, 'Huawei Mediapad', 299.9, '<img src="images/devices/blocchetto_huawei-t1-10-white-1.jpg" />', 'Tablets and Computers'),
(5, 'Samsung Galaxy TAB A', 349.9, '<img src="images/devices/blocchetto_samsung-galaxy-tab-a-9.7-white.jpg" />', 'Tablets and Computers'),
(6, 'Apple Watch Sport 38', 369.9, '<img src="images/devices/apple-watch38.png" />', 'TV and SMart Living'),
(7, 'Modem Tim 4g Wi-fi', 69.9, '<img src="images/devices/modem_wifi_4g.png" />', 'Modem and Networking'),
(8, 'Samsung Smart TV 50''''', 1199.99, '<img src="images/devices/Samsung-smart-tv.png" />', 'TV and SMart Living');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
