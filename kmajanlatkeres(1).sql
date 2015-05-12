-- phpMyAdmin SQL Dump
-- version 4.2.6deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 12, 2015 at 12:07 PM
-- Server version: 5.5.43-0ubuntu0.14.10.1
-- PHP Version: 5.5.12-2ubuntu4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kmajanlatkeres`
--

-- --------------------------------------------------------

--
-- Table structure for table `ajanlatok`
--

CREATE TABLE IF NOT EXISTS `ajanlatok` (
`id` int(11) NOT NULL,
  `nev` varchar(50) NOT NULL,
  `tel` varchar(15) NOT NULL,
  `munka_id` int(11) NOT NULL,
  `m` int(11) NOT NULL,
  `allapot` varchar(10) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ajanlatok`
--

INSERT INTO `ajanlatok` (`id`, `nev`, `tel`, `munka_id`, `m`, `allapot`) VALUES
(1, 'fsd', 'sfd', 1, 32, 'teljesítve'),
(3, 'Peti', '65235', 2, 43, 'teljesítve'),
(4, 'Dávid', '5124454', 1, 32, 'elfogadva');

-- --------------------------------------------------------

--
-- Table structure for table `felhasznalok`
--

CREATE TABLE IF NOT EXISTS `felhasznalok` (
  `felh_nev` varchar(25) NOT NULL,
  `jelszo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `felhasznalok`
--

INSERT INTO `felhasznalok` (`felh_nev`, `jelszo`) VALUES
('admin', '12345'),
('user', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `munkak`
--

CREATE TABLE IF NOT EXISTS `munkak` (
`id` int(11) NOT NULL,
  `munka` varchar(25) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `munkak`
--

INSERT INTO `munkak` (`id`, `munka`) VALUES
(1, 'festés'),
(2, 'burkolás'),
(3, 'szigetelés'),
(4, 'takarító');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ajanlatok`
--
ALTER TABLE `ajanlatok`
 ADD PRIMARY KEY (`id`), ADD KEY `munka_id` (`munka_id`);

--
-- Indexes for table `felhasznalok`
--
ALTER TABLE `felhasznalok`
 ADD PRIMARY KEY (`felh_nev`), ADD UNIQUE KEY `felh_nev` (`felh_nev`);

--
-- Indexes for table `munkak`
--
ALTER TABLE `munkak`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ajanlatok`
--
ALTER TABLE `ajanlatok`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `munkak`
--
ALTER TABLE `munkak`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `ajanlatok`
--
ALTER TABLE `ajanlatok`
ADD CONSTRAINT `ajanlatok_ibfk_1` FOREIGN KEY (`munka_id`) REFERENCES `munkak` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
