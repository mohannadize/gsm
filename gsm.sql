-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 27, 2019 at 11:43 PM
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
  `build_v` tinytext NOT NULL,
  `android_v` tinytext NOT NULL,
  `price` int(11) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `views` int(11) NOT NULL,
  `downloads` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
(1, '', 'mohannad@condize.com', 'mohannad@condize.com', 'http://localhost/gsm', 'GSMGood', 'This is the site description', 400, 1, 0);

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
(1, 'Admin User', 'admin', 'admin', 'mohannad@condize.com', '2019-10-26 20:26:38', 9999, 500, '2019-10-26 20:26:38', 1),
(2, '', '', '', '', '2019-10-26 20:57:19', 0, 500, '2019-10-26 20:57:19', 0),
(3, 'Mohannad Hisham', 'mohannadize', 'asd', 'mohannadize15@gmail.com', '2019-10-27 17:54:20', 0, 500, '2019-10-27 17:54:20', 0),
(4, 'bedo hisham', 'bedo', 'poop', 'mohannadize15@gmail.com', '2019-10-27 23:36:25', 0, 400, '2019-10-27 23:36:25', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
