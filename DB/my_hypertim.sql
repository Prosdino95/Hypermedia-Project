-- phpMyAdmin SQL Dump
-- version 4.1.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 30, 2016 at 12:20 AM
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
  `category` enum('LineManagment','TechnicalSupport','SmartLifeSupport','MonitoringCost') NOT NULL DEFAULT 'LineManagment',
  `highlights` tinyint(1) NOT NULL,
  `preview` longtext CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`nameID`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii COMMENT='Table About the Assistance Service';

--
-- Dumping data for table `assistanceservice`
--

INSERT INTO `assistanceservice` (`nameID`, `img`, `description`, `category`, `highlights`, `preview`) VALUES
('MyTimFisso', './img/mytim-fisso.png', '<span class="subtitle">Descrizione</span><br>\nMyTIM Fisso &eacute; l&rsquo;applicazione ufficiale di TIM che permette di gestire al meglio la tua linea telefonica mobile.<br>\nOvunque tu sia, avrai sempre a disposizione le informazioni su:<br>\n&ndash; Credito residuo, per le TIM Card Ricaricabili, o saldo del bimestre in corso non ancora fatturato <br> \n&ndash; Piano tariffario e scadenza SIM per le TIM Card Ricaricabili<br>\n&ndash; Avanzamento del consumo del traffico incluso nelle tue offerte attive, per alcune offerte anche in formato grafico<br>\n&ndash; Dettaglio della tua spesa telefonica per le TIM Card Ricaricabili.<br><br>\n\n<span class="subtitle">Inoltre potrai</span><br>\n\nSe utilizzi l&rsquo;applicazione MyTIM Mobile connettendoti dalla rete dati TIM, potrai visualizzare direttamente le informazioni della linea TIM corrispondente alla SIM inserita nel tuo iPhone,iPad.\nSe invece utilizzi l&rsquo;applicazione connettendoti da rete Wi&ndash;Fi o da rete di altro operatore mobile, potrai accedere alle informazioni della tua linea TIM, utilizzando le stesse credenziali di accesso alla sezione MyTIM Mobile del sito tim.it. \nIn entrambi i casi, potrai visualizzare le informazioni di una qualsiasi tua linea TIM Consumer utilizzando le credenziali di accesso della sezione MyTIM Mobile del sito tim.it .\nAvrai anche la possibilit&agrave; di memorizzare tali credenziali per evitare di doverle digitare ad ogni accesso.  \n', 'MonitoringCost', 1, 'La fattura della linea fissa &egrave; semplice e facile da leggere perch&eacute; disegnata prendendo spunto dai suggerimenti dei clienti. La veste grafica, moderna e raffinata, utilizza un linguaggio sempre pi&ugrave; chiaro per l&rsquo;esposizione delle voci di spesa, facilitando la lettura di tutte le informazioni di cui hai bisogno e garantendo maggiore trasparenza nei contenuti e negli importi.'),
('MyTimMobile', './img/mytim-mobile.png', '<span class="subtitle">Descrizione</span><br>\nMyTIM Mobile &eacute; l&rsquo;applicazione ufficiale di TIM che permette di gestire al meglio la tua linea telefonica mobile.<br>\nOvunque tu sia, avrai sempre a disposizione le informazioni su:<br>\n&ndash; Credito residuo, per le TIM Card Ricaricabili, o saldo del bimestre in corso non ancora fatturato <br> \n&ndash; Piano tariffario e scadenza SIM per le TIM Card Ricaricabili<br>\n&ndash; Avanzamento del consumo del traffico incluso nelle tue offerte attive, per alcune offerte anche in formato grafico<br>\n&ndash; Dettaglio della tua spesa telefonica per le TIM Card Ricaricabili.<br><br>\n\n<span class="subtitle">Inoltre potrai</span><br>\n\nSe utilizzi l&rsquo;applicazione MyTIM Mobile connettendoti dalla rete dati TIM, potrai visualizzare direttamente le informazioni della linea TIM corrispondente alla SIM inserita nel tuo iPhone,iPad.\nSe invece utilizzi l&rsquo;applicazione connettendoti da rete Wi&ndash;Fi o da rete di altro operatore mobile, potrai accedere alle informazioni della tua linea TIM, utilizzando le stesse credenziali di accesso alla sezione MyTIM Mobile del sito tim.it. \nIn entrambi i casi, potrai visualizzare le informazioni di una qualsiasi tua linea TIM Consumer utilizzando le credenziali di accesso della sezione MyTIM Mobile del sito tim.it .\nAvrai anche la possibilit&agrave; di memorizzare tali credenziali per evitare di doverle digitare ad ogni accesso.  ', 'MonitoringCost', 0, 'Direttamente online sul sito tim.it nella sezione MyTIM Mobile riservata ai nostri clienti che ti permette di verificare il credito residuo, le quantit&aacute; di minuti, SMS, GB ancora disponibili, i bonus in euro  eventualmente presenti ed effettuare variazioni sulla tua linea telefonica;'),
('MyTimMail', './img/mytim-mail.png', '<span class="subtitle">Descrizione</span><br>\nMyTIM Mail &eacute; l&rsquo;applicazione ufficiale di TIM che permette di gestire al meglio la tua mail.<br>\nOvunque tu sia, avrai sempre a disposizione le informazioni su:<br>\n&ndash; Credito residuo, per le TIM Card Ricaricabili, o saldo del bimestre in corso non ancora fatturato <br> \n&ndash; Piano tariffario e scadenza SIM per le TIM Card Ricaricabili<br>\n&ndash; Avanzamento del consumo del traffico incluso nelle tue offerte attive, per alcune offerte anche in formato grafico<br>\n&ndash; Dettaglio della tua spesa telefonica per le TIM Card Ricaricabili.<br><br>\n\n<span class="subtitle">Inoltre potrai</span><br>\n\nSe utilizzi l&rsquo;applicazione MyTIM Mobile connettendoti dalla rete dati TIM, potrai visualizzare direttamente le informazioni della linea TIM corrispondente alla SIM inserita nel tuo iPhone,iPad.\nSe invece utilizzi l&rsquo;applicazione connettendoti da rete Wi&ndash;Fi o da rete di altro operatore mobile, potrai accedere alle informazioni della tua linea TIM, utilizzando le stesse credenziali di accesso alla sezione MyTIM Mobile del sito tim.it. \nIn entrambi i casi, potrai visualizzare le informazioni di una qualsiasi tua linea TIM Consumer utilizzando le credenziali di accesso della sezione MyTIM Mobile del sito tim.it .\nAvrai anche la possibilit&agrave; di memorizzare tali credenziali per evitare di doverle digitare ad ogni accesso.  ', 'TechnicalSupport', 1, 'Hai qualche tipo di problema ed hai bisogno di assistenza?<br> \r\nUtilizza il nostro servizio di posta per contattarci!'),
('TariffaInternet', './img/mytim-tariffa.png', 'wkjfonw', 'LineManagment', 0, 'Scopri le caratteristiche della tariffa base per la navigazione internet da telefonino, Tablet e PC, che si applica se non sono attive offerte specifiche per il traffico dati.'),
('TimMusic', './img/tim-music.jpg', 'woifnwofne', 'SmartLifeSupport', 1, 'TIMmusic &eacute; il servizio di streaming musicale di TIM che ti permette di ascoltare milioni di brani su Smartphone e Tablet SENZA CONSUMARE GIGA, o su PC.\r\n '),
('TimReading', './img/tim-reading.jpg', 'eofinweogwoinfwe', 'SmartLifeSupport', 1, 'TIMreading &eacute; lo Store di TIM che permette di acquistare e leggere eBook, quotidiani e Magazine su PC, Tablet e Smartphone.');

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE IF NOT EXISTS `devices` (
  `id` int(11) NOT NULL,
  `device_name` char(50) DEFAULT NULL,
  `Brand` text NOT NULL,
  `price` float DEFAULT NULL,
  `price_range` enum('1','2','3','4','5','6') NOT NULL,
  `OS` text,
  `inpromotion` enum('YES','NO') DEFAULT NULL,
  `img` text,
  `category` enum('SmartphonesandPhones','TVandSmartLiving','TabletsandComputers','ModemandNetworking') DEFAULT NULL,
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

INSERT INTO `devices` (`id`, `device_name`, `Brand`, `price`, `price_range`, `OS`, `inpromotion`, `img`, `category`, `description`, `technical`) VALUES
(1, 'Huawei P9', 'Huawei', 599.9, '5', 'Android', 'NO', './img/devices/huawei-p9.png', 'SmartphonesandPhones', '<span class="description">PREMIUM. ELEGANT. STYLISH.</span><BR><BR>\r\nHuawei P9 presenta un design con linee dal forte impatto visivo, caratterizzate da spigoli tagliati a regola d''arte.Lo smartphone ha una struttura unibody in alluminio aerospaziale e vetro 2.5D di categoria superiore, ed &egrave; disponibile in due varianti cromatiche: Titanium Grey e Mystic Silver.<BR><BR>\r\n\r\n<span class="description">DISPLAY LUMINOSO E DAI COLORI INTENSI</span><BR><BR>\r\nCon una resa cromatica del 96% il sensazionale display IPS Full HD da 5,2"  porta alla scoperta di un mondo ricco di colori intensi e ancora pi&ugrave; naturali<BR><BR>\r\n\r\n<span class="description">UN INNOVATIVO SISTEMA CON DOPPIA FOTOCAMERA, UNA COLLABORAZIONE UNICA</span><BR><BR>\r\n\r\nLa collaborazione tra Huawei e Leica ha dato vita a uno smartphone con doppia fotocamera. Il risultato: maggiore luminosit&agrave; e nitidezza per foto e video sensazionali.<BR><BR>\r\n\r\n<span class="description">INNOVATIVO SISTEMA CON DOPPIA FOTOCAMERA</span><BR><BR>\r\nHuawei P9 &egrave; in grado di catturare immagini dai colori luminosi e garantire al contempo una resa in bianco e nero straordinaria; il tutto con lo stile senza tempo di Leica.La tecnologia con doppia fotocamera di Huawei P9 consente di catturare una maggiore quantit&agrave; di luce, combinando al meglio la qualit&agrave; del colore acquisito dal sensore RGB con i dettagli ottenuti dal sensore in bianco e nero. Il tutto per garantire il massimo risultato ad ogni scatto.<BR>\r\n', '\r\n<span class="technicaltitle">Tecnologia</span> <BR>\r\nAbilitato tecnologia 4GPlus/4G/HSDPA 42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900MHz<BR><BR>\r\n\r\n<span class="technicaltitle">Connettivita</span> <BR>\r\n4G cat.6/HSDPA42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900/2100 Wi-Fi a/b/g/n/ac dual band 2,4/5GHz con Wi-Fi Direct Bluetooth 4.2, BLE USB Type-C, NFC<BR><BR>\r\n\r\n\r\n<span class="technicaltitle">GPS</span> <BR>\r\nGPS Integrato<BR><BR>\r\n\r\n<span class="technicaltitle">Display</span> <BR>\r\nDisplay IPS Full HD da 5.2"<BR><BR>\r\n\r\n<span class="technicaltitle">Fotocamera</span> <BR>\r\nPrincipale 12MP x 2, f/2.2 Leica BSI CMOS Flash dual-tone Frontale 8MP, f/2.4<BR><BR>\r\n\r\n<span class="technicaltitle">Memoria Interna</span> <BR>\r\n32GB<BR><BR>\r\n\r\n<span class="technicaltitle">Processore</span> <BR>\r\nProcessore Kirin 955 - Octa-Core (4x2,5 GHz + 4x1,8 GHz)<BR><BR>\r\n\r\n<span class="technicaltitle">In dotazione</span> <BR>\r\nSmartphone Auricolari stereo - Caricabatteria Cavo USB Type-C - Estrattore SIM Guida rapida<BR><BR>\r\n\r\n<span class="technicaltitle">Dimensioni</span> <BR>\r\n145 x 70,9 x 6,95 mm<BR><BR>\r\n\r\n<span class="technicaltitle">Peso</span> <BR>\r\n144 grammi<BR><BR>\r\n\r\n<span class="technicaltitle">Autonomia</span> <BR>\r\nStand-by fino a 566 ore - Conversazione fino a 1980 min<BR><BR>\r\n'),
(2, 'Facile Maxi', 'Tim', 39.9, '1', 'NULL', 'NO', './img/devices/facile_maxi.jpg', 'SmartphonesandPhones', '', NULL),
(3, 'Apple iPhone 6S', 'Apple', 789.9, '6', 'iOS', 'NO', './img/devices/apple-iPhone6s.png', 'SmartphonesandPhones', '', NULL),
(4, 'Huawei Mediapad', 'Huawei', 299.9, '2', 'Android', 'YES', './img/devices/blocchetto_huawei-t1-10-white-1.jpg', 'SmartphonesandPhones', '', NULL),
(5, 'Samsung Galaxy TAB A', 'Samsung', 349.9, '3', 'Android', 'YES', './img/devices/blocchetto_samsung-galaxy-tab-a-9.7-white.jpg', 'TabletsandComputers', '', NULL),
(6, 'Apple Watch Sport 38', 'Apple', 369.9, '3', 'iOS', 'YES', './img/devices/apple-watch38.png', 'TVandSmartLiving', '', NULL),
(7, 'Modem Tim 4g Wi-fi', 'Tim', 69.9, '1', 'NULL', 'NO', './img/devices/modem_wifi_4g.png', 'ModemandNetworking', '', NULL),
(8, 'Samsung Smart TV 50''''', 'Samsung', 1199.99, '6', 'NULL', 'NO', './img/devices/Samsung-smart-tv.png', 'TVandSmartLiving', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hasassistanceservice`
--

CREATE TABLE IF NOT EXISTS `hasassistanceservice` (
  `iddevice` int(11) NOT NULL,
  `idassistanceservice` char(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasassistanceservice`
--

INSERT INTO `hasassistanceservice` (`iddevice`, `idassistanceservice`) VALUES
(1, 'MyTimMobile'),
(1, 'TimMusic'),
(2, 'MyTimFisso'),
(3, 'MyTimMobile'),
(4, 'MyTimMobile'),
(4, 'TimMusic'),
(3, 'TimMusic'),
(5, 'TimReading'),
(6, 'MyTimMail'),
(7, 'TariffaInternet'),
(8, 'MyTimMail');

-- --------------------------------------------------------

--
-- Table structure for table `hassmartlife`
--

CREATE TABLE IF NOT EXISTS `hassmartlife` (
  `iddevice` int(11) NOT NULL,
  `idsmartlife` char(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hassmartlife`
--

INSERT INTO `hassmartlife` (`iddevice`, `idsmartlife`) VALUES
(1, 'seriea'),
(1, 'TIMHomeConnect'),
(1, 'MyTimFisso');

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
  `Price` int(11) NOT NULL,
  `FAQ` mediumtext NOT NULL,
  `Rules` mediumtext NOT NULL,
  `Abbonamento` tinyint(1) NOT NULL,
  PRIMARY KEY (`nameID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smartlifeservices`
--

INSERT INTO `smartlifeservices` (`nameID`, `img`, `description`, `inpromotion`, `category`, `Price`, `FAQ`, `Rules`, `Abbonamento`) VALUES
('TIMHomeConnect', './img/timhome.png', 'La soluzione ideale per gestire tutti i sistemi di domotica presenti nella tua casa, dalla semplice caldaia domestica, ai sistemi di protezione della casa, ai pi&ugrave; avanzati sistemi di monitoraggio.\r\n', 'YES', 'HOME', 2, '<span class="description">l&#180;IVA &egrave; inclusa?</span><BR>\r\nTutti i prezzi sono IVA inclusa.<BR>\r\n<span class="description">l&#180;offerta prevede incompatibilit&agrave?</span><BR>\r\nL&#180;offerta non prevede incompatibilit&agrave con altre opzioni. L&#180attivazione dell&#180offerta non comporta la disattivazione automatica di eventuali altre opzioni attive sul proprio numero; per gestire le opzioni presenti sulla linea basta accedere al Servizio Clienti 119 o chiamare il numero gratuito 409161.<BR>', '<span class="description">Come si attiva</span><BR><BR>\r\nSe sei gi&agrave; in possesso di una TIM Card, direttamente online cliccando sul tasto ATTIVA<BR>\r\nPresso i Negozi TIM<BR><BR>\r\n<span class="description">TIM Home Connect 24 36&euro;</span><BR><BR>\r\n24 mesi senza pensieri<BR> \r\nA partire dal 25 mese l&#180; offerta continuer&agrave ad essere fruibile ad un costo di 3&euro; al mese.\r\n\r\n\r\n\r\n', 1),
('SerieA', './img/seriea-tim.png', 'L&lsquo;APP Serie A TIM &egrave; l&lsquo;applicazione ufficiale del Campionato di Calcio di Serie A e continuer&agrave; ad essere il riferimento per tutti gli appassionati, con un modo nuovo e completo di seguire dove vuoi e in qualunque momento lo spettacolo del Campionato.<BR><BR>\r\n \r\nIn esclusiva, potrai seguire ogni partita dove vuoi, non perdendo neanche un minuto di gioco grazie alla cronaca in tempo reale di tutte le gare, la disponibilit&agrave; dei video di tutti i goal e le azioni salienti a pochi minuti dall&lsquo;evento. Alla fine del primo tempo e della gara, avrai a disposizione gli highlight per rivivere tutte le emozioni, oltre alle innovative infografiche statistiche che arricchiranno la cronaca, aiutandoti a interpretare al meglio l&lsquo;andamento delllsquo;incontro.\r\nAccedi in qualsiasi momento a tutte le statistiche del Campionato, quando vuoi e in mobilit&agrave; potrai rivedere tutti i goal del Campionato. Nella sezione Top hai anche una selezione delle migliori giocate della giornata. Grazie alle notifiche push in tempo reale, anche fuori casa o quando sei impegnato, avrai un canale sempre acceso sulla tua squadra del cuore e su tutta la Serie A. Personalizza gli aggiornamenti live, scegliendo una singola partita, videogoal, news o tutti i contenuti pi&ugrave; accattivanti delllsquo;App Serie A TIM.<BR><BR>\r\n \r\nNell&lsquo;App Serie A TIM trovi tutte le ultime notizie sul mondo del Calcio, anche quando sei in viaggio, con news sul Campionato italiano, ma anche su tutte le altre competizioni. Inoltre, puoi partecipare alla vita social grazie all&lsquo;accesso diretto alla Fan Page Serie A TIM di Facebook e Serie A TIM su Twitter.<BR><BR>\r\n\r\n \r\nScarica l&lsquo;App Serie A TIM e avrai il meglio del Calcio sul tuo smartphone o tablet .\r\nE se sei cliente TIM non consumi GB! Prima di abbonarti potrai provare gratuitamente i contenuti esclusivi e rimanere aggiornato con le news e le statistiche disponibili per tutti.<BR><BR>\r\n', 'NO', 'TV', 3, '<span class="description">Che cosa &egrave; il season pack Serie A TIM?</span><BR>\r\nIl Season Pack Serie A TIM a soli 9,99 &euro; ti permette di accedere a tutti i contenuti esclusivi dell&lsquo;APP Serie A TIM fino al 30/06/2017, e di seguire quindi l&lsquo;intero Campionato 2016/17<BR>\r\n\r\n<span class="description">Che cosa &egrave; compreso nell&lsquo;abbonamento Serie A TIM</span><BR>\r\n\r\nSe sei Abbonato non perdi neanche un minuto di gioco, grazie alla cronaca in tempo reale di tutte le gare del Campionato e la disponibilit&aacute; dei video di tutti i goal e le azioni salienti a pochi minuti dall&lsquo;evento. Inoltre, potrai usufruire degli Highlights delle gare in qualsiasi momento e di tutti i contenuti video esclusivi, come Goal Collection e le giocate Top per ogni giornata.<BR>\r\n\r\n<span class="description">Dove posso scaricare l&lsquo;applicazione Serie A TIM?</span><BR>\r\nClicca su Scarica App, oppure potrai trovare l&lsquo;APP Serie A TIM direttamente nello Store del tuo dispositivo. L&lsquo;applicazione &egrave; disponibile per Smartphone e Tablet con sistema operativo Android, iOS e Windows Phone.<BR>\r\n\r\n<span class="description">Quanto costa l&lsquo;applicazione Serie A TIM?</span><BR>\r\n\r\nIl Pack annuale costa 9,99&euro;, mentre se scegli l&lsquoopzione mensile puoi abbonarti direttamente dall&lsquoapplicazione al costo di 2,49&euro; al mese per Android e Windows Phone e 2,99&euro; per iOS.\r\n\r\n', '<span class="description">Attivazione\r\n</span><BR>\r\nPuoi attivare l&lsquo;offerta presso i Negozi TIM\r\nAttivazione dei servizi di intrattenimento<BR><BR>\r\n \r\nPer attivare i 3 mesi di TIMvision, TIMmusic, TIMgames, Serie A TIM, TIMreading con la rivista Elle inclusi nella tua TIM Special, dovrai accedere dal tuo smartphone, con connessione 3G o 4G, alla pagina vai.tim.it,play e scegliere tra film, musica, riviste, giochi e calcio.<BR><BR>\r\n\r\n<span class="description">Regole\r\n</span><BR>\r\n\r\nL&lsquo;abbonamento &egrave; disponibile in due modalit&agrave;:<BR>\r\n \r\nPACK ANNUALE SERIE A TIM<BR>\r\nPuoi sfruttare il Pack Annuale e avrai la possibilit&agrave; di seguire tutta la fine del Campionato 2015&ndash;16, il calciomercato e  le news dai ritiri, e tutto  il Campionato della Serie A TIM 2016&ndash; fino al 30/06/2017 a soli 9,99  &euro;.<BR>\r\n \r\nABBONAMENTO MENSILE<BR>\r\n Puoi scegliere l&lsquo;abbonamento Mensile a 2,49&euro; e per 30 giorni potrai godere di tutti i contenuti esclusivi dell&lsquo;App, non perdendoti neanche un minuto della Serie A.\r\nL&lsquo;abbonamento mensile &egrave; attivabile direttamente dall&lsquo;App Serie A TIM, scaricala subito cliccando su Scarica l&lsquo;App.<BR>', 1),
('FidelityCard', './img/FidelityCard.png', '', 'NO', 'PERSON', 0, '', '', 1),
('PolarLoopH7HR', './img/PolarLoopH7HR.png', '', 'YES', 'HEALTH', 99, '', '', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
