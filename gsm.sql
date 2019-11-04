-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 04, 2019 at 12:30 AM
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
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
CREATE TABLE IF NOT EXISTS `files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `model` mediumtext NOT NULL,
  `build_v` mediumtext NOT NULL,
  `android_v` mediumtext NOT NULL,
  `security_level` text,
  `size` int(11) NOT NULL,
  `country` mediumtext NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `downloads` int(11) NOT NULL DEFAULT '0',
  `url` mediumtext NOT NULL,
  `search_text` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `type`, `model`, `build_v`, `android_v`, `security_level`, `size`, `country`, `created`, `downloads`, `url`, `search_text`) VALUES
(2, 1, 'SM-324222', '7.22.18', '10', 'U2', 12352, 'Egypt', '2019-11-03 20:59:51', 0, 'https://elprinter.com/designer/modize-shop/', 'SM-324222 7.22.18 Egypt'),
(3, 0, 'onyx', 'And991236', '8.1', '', 10, 'Egypt', '2019-11-03 21:01:01', 0, 'https://soundcloud.com/tvquran22/surah-youssef', 'onyx And991236 Egypt');

-- --------------------------------------------------------

--
-- Table structure for table `site`
--

DROP TABLE IF EXISTS `site`;
CREATE TABLE IF NOT EXISTS `site` (
  `logo_as_text` int(11) NOT NULL,
  `logo_file` mediumtext NOT NULL,
  `email` mediumtext NOT NULL,
  `paypal` mediumtext NOT NULL,
  `url` mediumtext NOT NULL,
  `site-name` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `daily_free` int(11) NOT NULL,
  `increment_daily` int(11) NOT NULL,
  `maintainance` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` mediumtext NOT NULL,
  `username` text NOT NULL,
  `password` mediumtext NOT NULL,
  `email` mediumtext NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `balance` int(11) NOT NULL DEFAULT '0',
  `daily_balance` int(11) NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `admin` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `email`, `created`, `balance`, `daily_balance`, `last_login`, `admin`) VALUES
(1, 'Admin User', 'admin', 'admin', 'mohannadize15@gmail.com', '2019-10-26 20:26:38', 9999, 500, '2019-10-26 20:26:38', 1),
(3, 'Mohannad Hisham', 'mohannadize', 'asd', 'mohannadize15@gmail.com', '2019-10-27 17:54:20', 0, 500, '2019-10-27 17:54:20', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
