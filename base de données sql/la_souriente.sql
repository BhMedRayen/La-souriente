-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 12 déc. 2022 à 09:30
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `la_souriente`
--

-- --------------------------------------------------------

--
-- Structure de la table `achat`
--

DROP TABLE IF EXISTS `achat`;
CREATE TABLE IF NOT EXISTS `achat` (
  `idClient` int(11) NOT NULL AUTO_INCREMENT,
  `nomClient` varchar(40) NOT NULL,
  `numcarte` int(11) NOT NULL,
  `nomProduit` varchar(80) NOT NULL,
  `adresse` varchar(200) NOT NULL,
  `idProduit` int(11) NOT NULL,
  `image` text NOT NULL,
  PRIMARY KEY (`idClient`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `achat`
--

INSERT INTO `achat` (`idClient`, `nomClient`, `numcarte`, `nomProduit`, `adresse`, `idProduit`, `image`) VALUES
(29, 'Ben Hassine Mohamed Rayen', 11437263, 'PC PORTABLE ASUS', 'Zarzouna-Bizerte', 3, 'https://spacenet.tn/44362-large_default/pc-portable-asus-x509jb-i3-1005g1-156-12go-1to.jpg'),
(30, 'Talel Mejri', 55489632, ' Boitier Aerocool PLAYA RGB', 'Bahra-Kef', 5, 'https://www.wiki.tn/50452/pc-gamer-lewis-tan-i5-9600-kf-9-gen-8g-gtx-1650-4g-240go-ssd.jpg'),
(31, 'Iheb Sessi', 1155668, 'PC PORTABLE ASUS', 'Zarzouna-Bizerte', 4, 'https://electrotounes.tn/promo/img/pc-portable-asus-x515ep-i7-11gen-8go-512go.jpg'),
(32, 'Ghassen Ahmed', 44889955, 'PC  PORTABLE-DELL', 'Bizerte Tunisie', 2, 'https://www.wiki.tn/50084-thickbox_default/pc-portable-dell-inspiron-3580-i5-8e-gen-8go-1to-noir-win10.jpg'),
(33, 'Kouki Dhia', 11556688, 'PC PORTABLE ASUS', 'Zarzouna-Bizerte', 3, 'https://spacenet.tn/44362-large_default/pc-portable-asus-x509jb-i3-1005g1-156-12go-1to.jpg'),
(34, 'Malek naamen', 7795656, 'PC PORTABLE ASUS', 'Bizerte', 3, 'https://spacenet.tn/44362-large_default/pc-portable-asus-x509jb-i3-1005g1-156-12go-1to.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) NOT NULL,
  `nom_admin` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id_user`, `user_name`, `nom_admin`, `password`) VALUES
(1, 'bh_medrayen', 'Med rayen ben hassine', '123');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` text NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prix` float NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `image`, `nom`, `prix`, `description`) VALUES
(2, 'https://www.wiki.tn/50084-thickbox_default/pc-portable-dell-inspiron-3580-i5-8e-gen-8go-1to-noir-win10.jpg', 'PC  PORTABLE-DELL', 945, 'Ecran  15.6\"  HD LED - Processeur  Intel Celeron  Dual-Core N4000  (1,1 GHz up to  2.6 Ghz, 4Mo  de Memoire cache ) - Memoire RAM:  4 Go  - Disque Dur:  500 Go  - Carte graphique:  Intel HD Graphics avec Wifi, Bluetooth, Webcam avec Micro'),
(3, 'https://spacenet.tn/44362-large_default/pc-portable-asus-x509jb-i3-1005g1-156-12go-1to.jpg', 'PC PORTABLE ASUS', 1650, 'ecran 15.6\" IPS FHD - Processeur: Intel Core I3-1005G1 (2.6 GHz up to 5.0 GHz, 12 Mo de memoire cache, Hexa-Core) - Windows 10 - MÃ©moire RAM: 12 Go DDR4 - Disque Dur: 1 To  - Carte graphique: MX110 2G avec Wi-Fi et Bluetooth - Garantie: 1 an'),
(4, 'https://electrotounes.tn/promo/img/pc-portable-asus-x515ep-i7-11gen-8go-512go.jpg', 'PC PORTABLE ASUS', 2699, 'Ecran 15.6\" FHD \r\nProcesseur Intel Core i7-1165G7, up to 4.7 Ghz, 12 Mo de RAM\r\nDisque SSD 512 Go \r\nCarte graphique Nvidea Geforce MX330, 2 Go de mÃ©moire dÃ©diÃ©e \r\nLecteur de cartes - Wifi - Bluetooth\r\nWindows 10 '),
(7, 'https://th.bing.com/th/id/R.11e74037ef8f1786c3e0fd0e276c287b?rik=dMhpENuwK5U0dw&pid=ImgRaw&r=0', 'HP - PAVILLON', 2465, 'PC portable 15.6 Â» FULL HD IPS â€“\r\n Intel Core i5-11300H, 3.10 Ghz / 4.40 Ghz â€“ 8 Go DDR4 â€“ Disque Dur 1 To + 256 Go SSD1 To + 256 Go SSDMÃ©moire \r\nRAM : 8GB (1x8GB) DDR4 2666MH\r\nAlimentation : AERO COOL 750W 80+ BRONZE\r\nDisque dur :SSD 240 GB\r\n');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
