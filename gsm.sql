-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 29, 2019 at 12:47 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gsm`
--

-- --------------------------------------------------------

--
-- Table structure for table `roms`
--

DROP TABLE IF EXISTS `roms`;
CREATE TABLE IF NOT EXISTS `roms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand` tinytext NOT NULL,
  `model` tinytext NOT NULL,
  `country` tinytext NOT NULL,
  `file_name` tinytext NOT NULL,
  `tmp_name` tinytext NOT NULL,
  `size` int(11) NOT NULL,
  `build_v` tinytext NOT NULL,
  `android_v` tinytext NOT NULL,
  `price` int(11) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `views` int(11) NOT NULL DEFAULT '0',
  `downloads` int(11) NOT NULL DEFAULT '0',
  `search_text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roms`
--

INSERT INTO `roms` (`id`, `brand`, `model`, `country`, `file_name`, `tmp_name`, `size`, `build_v`, `android_v`, `price`, `updated`, `created`, `views`, `downloads`, `search_text`) VALUES
(9, 'Xiaomi', 'Pocophone f1', 'Hong kong', 'FolderSizeExplorer-04-MAR-2018-V200.zip', './uploads/1tHKZ0kq1C8', 1400413, '11.976', '10', 100, '2019-10-28 23:04:01', '2019-10-28 23:04:01', 0, 0, 'Xiaomi Pocophone f1 11.976 Hong kong FolderSizeExplorer-04-MAR-2018-V200.zip'),
(8, 'HTC', 'M8 dual sim', 'KSA', 'Ø­Ø³ÙŠÙ† Ø§Ù„Ø¬Ø³Ù…ÙŠ - Ø§Ù„ØµØ±Ø§Ø· Ø§Ù„Ù…Ø³ØªÙ‚ÙŠÙ… (ÙÙŠØ¯ÙŠÙˆ ÙƒÙ„ÙŠØ¨) _ ØªØªØ± Ø¨Ø±Ù†Ø§Ù…Ø¬ Ø®ÙˆØ§Ø·Ø± 10 ( 360 X 640 ).mp4', './uploads/5t83R9e163E', 10651576, '6.231.385', '7', 100, '2019-10-28 23:03:31', '2019-10-28 23:03:31', 0, 0, 'HTC M8 dual sim 6.231.385 KSA Ø­Ø³ÙŠÙ† Ø§Ù„Ø¬Ø³Ù…ÙŠ - Ø§Ù„ØµØ±Ø§Ø· Ø§Ù„Ù…Ø³ØªÙ‚ÙŠÙ… (ÙÙŠØ¯ÙŠÙˆ ÙƒÙ„ÙŠØ¨) _ ØªØªØ± Ø¨Ø±Ù†Ø§Ù…Ø¬ Ø®ÙˆØ§Ø·Ø± 10 ( 360 X 640 ).mp4'),
(10, 'Samsung', 'SM-3242', 'Egypt', 'FolderSizeExplorer-04-MAR-2018-V200.zip', './uploads/9y5GNY8nJ4v', 1400413, '7.22.18', '10', 100, '2019-10-28 23:04:13', '2019-10-28 23:04:13', 0, 0, 'Samsung SM-3242 7.22.18 Egypt FolderSizeExplorer-04-MAR-2018-V200.zip'),
(11, 'Oppo', 'Reno Ace', 'USA', 'SumatraPDF-3.1.2-64-install.exe', './uploads/2S87RV11Q4Y', 5208720, '90', '10', 100, '2019-10-28 23:04:39', '2019-10-28 23:04:39', 0, 0, 'Oppo Reno Ace 90 USA SumatraPDF-3.1.2-64-install.exe'),
(13, 'Oneplus', '3T', 'China', 'AAct.rar', './uploads/SbZ49k4v7FB', 6298974, '2.176.54', '9', 100, '2019-10-28 23:19:46', '2019-10-28 23:19:46', 0, 0, 'Oneplus 3T 2.176.54 China AAct.rar'),
(14, 'iPhone', '11 Pro', 'Qatar', 'img07190.pdf', './uploads/TF0XkA9Jz61', 386554, 'iOS13.1', '10', 100, '2019-10-29 00:02:47', '2019-10-29 00:02:47', 0, 0, 'iPhone 11 Pro iOS13.1 Qatar img07190.pdf'),
(15, 'Samsung', 'A10', 'Egypt', 'localhost_GSMwebsite_.png', './uploads/8mgZp81n3PN', 1338589, '90', '8.1', 100, '2019-10-29 00:18:36', '2019-10-29 00:18:36', 0, 0, 'Samsung A10 90 Egypt localhost_GSMwebsite_.png'),
(16, 'Nokia', 'Panda', 'KSA', 'road.ai', './uploads/0A0XY9SvMwp', 351020, '5.21', '7', 100, '2019-10-29 00:19:07', '2019-10-29 00:19:07', 0, 0, 'Nokia Panda 5.21 KSA road.ai'),
(17, 'Blackberry', 'Bold', 'Egypt', 'Collateral.2004.720p.BluRay.x264.YIFY.srt', './uploads/252vP8at8RM', 91767, '8', '1', 100, '2019-10-29 00:19:26', '2019-10-29 00:19:26', 0, 0, 'Blackberry Bold 8 Egypt Collateral.2004.720p.BluRay.x264.YIFY.srt'),
(18, 'Nokia', 'N70', 'Egypt', 'bonding essam.pdf', './uploads/x8oSSmD5ge4', 227863, '12', '6', 100, '2019-10-29 00:20:00', '2019-10-29 00:20:00', 0, 0, 'Nokia N70 12 Egypt bonding essam.pdf'),
(19, 'iPhone', '8', 'Austria', 'grad.pdf', './uploads/mnL9Bv6mVVf', 552968, 'iOS 10', '8', 100, '2019-10-29 00:20:46', '2019-10-29 00:20:46', 0, 0, 'iPhone 8 iOS 10 Austria grad.pdf'),
(20, 'Samsung', 'S4', 'Kuwait', 'img07190.pdf', './uploads/EP54qwp313Q', 386554, '9.0', '0', 100, '2019-10-29 00:21:48', '2019-10-29 00:21:48', 0, 0, 'Samsung S4 9.0 Kuwait img07190.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `site`
--

DROP TABLE IF EXISTS `site`;
CREATE TABLE IF NOT EXISTS `site` (
  `logo_as_text` int(11) NOT NULL,
  `logo_file` text NOT NULL,
  `email` text NOT NULL,
  `paypal` text NOT NULL,
  `url` text NOT NULL,
  `site-name` text NOT NULL,
  `description` text NOT NULL,
  `daily_free` int(11) NOT NULL,
  `increment_daily` int(11) NOT NULL,
  `maintainance` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site`
--

INSERT INTO `site` (`logo_as_text`, `logo_file`, `email`, `paypal`, `url`, `site-name`, `description`, `daily_free`, `increment_daily`, `maintainance`) VALUES
(1, './imgs/logo.png', 'mohannad@condize.com', 'mohannad@condize.com', 'http://localhost/gsm', 'GSMGood', 'This is the site description', 3002, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE IF NOT EXISTS `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rom_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `confirmed` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `username` tinytext NOT NULL,
  `password` text NOT NULL,
  `email` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `balance` int(11) NOT NULL DEFAULT '0',
  `daily_balance` int(11) NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `admin` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `email`, `created`, `balance`, `daily_balance`, `last_login`, `admin`) VALUES
(1, 'Admin User', 'admin', 'admin', 'mohannadize15@gmail.com', '2019-10-26 20:26:38', 9999, 500, '2019-10-26 20:26:38', 1),
(3, 'Mohannad Hisham', 'mohannadize3', 'asd', 'mohannadize15@gmail.com', '2019-10-27 17:54:20', 0, 500, '2019-10-27 17:54:20', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
