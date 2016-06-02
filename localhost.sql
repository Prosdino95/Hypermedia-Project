-- phpMyAdmin SQL Dump
-- version 4.1.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 03, 2016 at 01:28 AM
-- Server version: 5.6.29-log
-- PHP Version: 5.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `my_hypertim`
--

-- --------------------------------------------------------

--
-- Table structure for table `assistanceservice`
--

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
('MyTimFisso', './img/mytim-fisso.png', 'ciaoao', 'Line Managment'),
('MyTimMobile', './img/mytim-mobile.png', 'ooornogngnrige', 'Line Managment'),
('MyTimMail', './img/mytim-mail.png', 'oain', 'Technical Support'),
('TariffaInternet', './img/mytim-tariffa.png', 'wkjfonw', 'Monitoring Costs'),
('TimMusic', './img/tim-music.jpg', 'woifnwofne', 'Smart Life Support'),
('TimReading', './img/tim-reading.jpg', 'eofinweogwoinfwe', 'Smart Life Support');

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE IF NOT EXISTS `devices` (
  `id` int(11) NOT NULL,
  `device_name` varchar(45) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `inpromotion` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `img` text,
  `category` enum('Smartphones and Phones','TV and SMart Living','Tablets and Computers','Modem and Networking') DEFAULT NULL,
  `description` longtext,
  `technical` mediumtext,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `description_2` (`description`),
  FULLTEXT KEY `description_3` (`description`),
  FULLTEXT KEY `description_4` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `device_name`, `price`, `inpromotion`, `img`, `category`, `description`, `technical`) VALUES
(1, 'Huawei P9', 599.9, 'YES', './img/devices/huawei-p9.png', 'Smartphones and Phones', '<span class="description">PREMIUM. ELEGANT. STYLISH.</span><BR><BR>\r\nHuawei P9 presenta un design con linee dal forte impatto visivo, caratterizzate da spigoli tagliati a regola d''arte.Lo smartphone ha una struttura unibody in alluminio aerospaziale e vetro 2.5D di categoria superiore, ed &egrave; disponibile in due varianti cromatiche: Titanium Grey e Mystic Silver.<BR><BR>\r\n\r\n<span class="description">DISPLAY LUMINOSO E DAI COLORI INTENSI</span><BR><BR>\r\nCon una resa cromatica del 96% il sensazionale display IPS Full HD da 5,2"  porta alla scoperta di un mondo ricco di colori intensi e ancora pi&ugrave; naturali<BR><BR>\r\n\r\n<span class="description">UN INNOVATIVO SISTEMA CON DOPPIA FOTOCAMERA, UNA COLLABORAZIONE UNICA</span><BR><BR>\r\n\r\nLa collaborazione tra Huawei e Leica ha dato vita a uno smartphone con doppia fotocamera. Il risultato: maggiore luminosit&agrave; e nitidezza per foto e video sensazionali.<BR><BR>\r\n\r\n<span class="description">INNOVATIVO SISTEMA CON DOPPIA FOTOCAMERA</span><BR><BR>\r\nHuawei P9 &egrave; in grado di catturare immagini dai colori luminosi e garantire al contempo una resa in bianco e nero straordinaria; il tutto con lo stile senza tempo di Leica.La tecnologia con doppia fotocamera di Huawei P9 consente di catturare una maggiore quantit&agrave; di luce, combinando al meglio la qualit&agrave; del colore acquisito dal sensore RGB con i dettagli ottenuti dal sensore in bianco e nero. Il tutto per garantire il massimo risultato ad ogni scatto.<BR>\r\n', '\r\n<span class="technicaltitle">Tecnologia</span> <BR>\r\nAbilitato tecnologia 4GPlus/4G/HSDPA 42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900MHz<BR><BR>\r\n\r\n<span class="technicaltitle">Connettivita</span> <BR>\r\n4G cat.6/HSDPA42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900/2100 Wi-Fi a/b/g/n/ac dual band 2,4/5GHz con Wi-Fi Direct Bluetooth 4.2, BLE USB Type-C, NFC<BR><BR>\r\n\r\n\r\n<span class="technicaltitle">GPS</span> <BR>\r\nGPS Integrato<BR><BR>\r\n\r\n<span class="technicaltitle">Display</span> <BR>\r\nDisplay IPS Full HD da 5.2"<BR><BR>\r\n\r\n<span class="technicaltitle">Fotocamera</span> <BR>\r\nPrincipale 12MP x 2, f/2.2 Leica BSI CMOS Flash dual-tone Frontale 8MP, f/2.4<BR><BR>\r\n\r\n<span class="technicaltitle">Memoria Interna</span> <BR>\r\n32GB<BR><BR>\r\n\r\n<span class="technicaltitle">Processore</span> <BR>\r\nProcessore Kirin 955 - Octa-Core (4x2,5 GHz + 4x1,8 GHz)<BR><BR>\r\n\r\n<span class="technicaltitle">In dotazione</span> <BR>\r\nSmartphone Auricolari stereo - Caricabatteria Cavo USB Type-C - Estrattore SIM Guida rapida<BR><BR>\r\n\r\n<span class="technicaltitle">Dimensioni</span> <BR>\r\n145 x 70,9 x 6,95 mm<BR><BR>\r\n\r\n<span class="technicaltitle">Peso</span> <BR>\r\n144 grammi<BR><BR>\r\n\r\n<span class="technicaltitle">Autonomia</span> <BR>\r\nStand-by fino a 566 ore - Conversazione fino a 1980 min<BR><BR>\r\n'),
(2, 'Facile Maxi', 39.9, 'NO', './img/devices/facile_maxi.jpg', 'Smartphones and Phones', '', NULL),
(3, 'Apple iPhone 6S', 789.9, 'NO', './img/devices/apple-iPhone6s.png', 'Smartphones and Phones', '', NULL),
(4, 'Huawei Mediapad', 299.9, 'NO', './img/devices/blocchetto_huawei-t1-10-white-1.jpg', 'Tablets and Computers', '', NULL),
(5, 'Samsung Galaxy TAB A', 349.9, 'YES', './img/devices/blocchetto_samsung-galaxy-tab-a-9.7-white.jpg', 'Tablets and Computers', '', NULL),
(6, 'Apple Watch Sport 38', 369.9, 'NO', './img/devices/apple-watch38.png', 'TV and SMart Living', '', NULL),
(7, 'Modem Tim 4g Wi-fi', 69.9, 'NO', './img/devices/modem_wifi_4g.png', 'Modem and Networking', '', NULL),
(8, 'Samsung Smart TV 50''''', 1199.99, 'YES', './img/devices/Samsung-smart-tv.png', 'TV and SMart Living', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `smartlifeservices`
--

CREATE TABLE IF NOT EXISTS `smartlifeservices` (
  `nameID` char(50) NOT NULL,
  `img` text NOT NULL,
  `description` text NOT NULL,
  `inpromotion` enum('YES','NO') DEFAULT 'NO',
  `category` enum('TV','HEALTH','HOME','PERSON') NOT NULL,
  PRIMARY KEY (`nameID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smartlifeservices`
--

INSERT INTO `smartlifeservices` (`nameID`, `img`, `description`, `inpromotion`, `category`) VALUES
('TIMHomeConnect', './img/timhome.png', 'oifowif', 'YES', 'HOME');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
