-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 04, 2019 at 08:57 PM
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
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `type`, `model`, `build_v`, `android_v`, `security_level`, `size`, `country`, `created`, `downloads`, `url`, `search_text`) VALUES
(2, 1, 'SM-324222', '7.22.18', '10', 'U2', 12352, 'Egypt', '2019-11-03 20:59:51', 0, 'https://elprinter.com/designer/modize-shop/', 'SM-324222 7.22.18 Egypt'),
(3, 0, 'onyx', 'And991236', '8.1', '', 10, 'Egypt', '2019-11-03 21:01:01', 0, 'https://soundcloud.com/tvquran22/surah-youssef', 'onyx And991236 Egypt'),
(4, 0, 'beryllium', '11.0.5.0', '9', '', 1596981248, 'International', '2019-11-04 10:05:21', 0, 'https://google.com', 'beryllium 11.0.5.0 International'),
(5, 0, 'beryllium', '11.0.5.0', '9', '', 1076887552, 'International', '2019-11-04 10:08:27', 0, 'https://soundcloud.com/tvquran22/surah-youssef', 'beryllium 11.0.5.0 International'),
(6, 0, 'beryllium', '11.0.5.0', '9', NULL, 1523, 'International', '2019-11-04 10:08:27', 0, 'https://soundcloud.com/tvquran22/surah-youssef', 'beryllium 11.0.5.0 International'),
(7, 0, 'beryllium', '11.0.5.0', '9', NULL, 1523, 'International', '2019-11-04 10:08:28', 0, 'https://soundcloud.com/tvquran22/surah-youssef', 'beryllium 11.0.5.0 International'),
(8, 0, 'beryllium', '11.0.5.0', '9', NULL, 1523, 'International', '2019-11-04 10:08:29', 0, 'https://soundcloud.com/tvquran22/surah-youssef', 'beryllium 11.0.5.0 International'),
(9, 0, 'beryllium', '11.0.5.0', '9', NULL, 1523, 'International', '2019-11-04 10:08:29', 0, 'https://soundcloud.com/tvquran22/surah-youssef', 'beryllium 11.0.5.0 International'),
(10, 0, 'beryllium', '11.0.5.0', '9', NULL, 1523, 'International', '2019-11-04 10:08:29', 0, 'https://soundcloud.com/tvquran22/surah-youssef', 'beryllium 11.0.5.0 International'),
(11, 0, 'beryllium', '11.0.5.0', '9', NULL, 1523, 'International', '2019-11-04 10:08:30', 0, 'https://soundcloud.com/tvquran22/surah-youssef', 'beryllium 11.0.5.0 International'),
(12, 0, 'beryllium', '11.0.5.0', '9', NULL, 1523, 'International', '2019-11-04 10:08:30', 0, 'https://soundcloud.com/tvquran22/surah-youssef', 'beryllium 11.0.5.0 International'),
(13, 0, 'beryllium', '11.0.5.0', '9', NULL, 1523, 'International', '2019-11-04 10:08:30', 0, 'https://soundcloud.com/tvquran22/surah-youssef', 'beryllium 11.0.5.0 International'),
(14, 0, 'beryllium', '11.0.5.0', '9', NULL, 1523, 'International', '2019-11-04 10:08:31', 0, 'https://soundcloud.com/tvquran22/surah-youssef', 'beryllium 11.0.5.0 International'),
(15, 0, 'beryllium', '11.0.5.0', '9', NULL, 1523, 'International', '2019-11-04 10:08:31', 0, 'https://soundcloud.com/tvquran22/surah-youssef', 'beryllium 11.0.5.0 International'),
(16, 0, 'beryllium', '11.0.5.0', '9', NULL, 1523, 'International', '2019-11-04 10:08:31', 0, 'https://soundcloud.com/tvquran22/surah-youssef', 'beryllium 11.0.5.0 International'),
(17, 0, 'beryllium', '11.0.5.0', '9', NULL, 1523, 'International', '2019-11-04 10:08:32', 0, 'https://soundcloud.com/tvquran22/surah-youssef', 'beryllium 11.0.5.0 International'),
(18, 0, 'beryllium', '11.0.5.0', '9', NULL, 1523, 'International', '2019-11-04 10:08:32', 0, 'https://soundcloud.com/tvquran22/surah-youssef', 'beryllium 11.0.5.0 International'),
(19, 0, 'beryllium', '11.0.5.0', '9', NULL, 1523, 'International', '2019-11-04 10:08:32', 0, 'https://soundcloud.com/tvquran22/surah-youssef', 'beryllium 11.0.5.0 International'),
(20, 0, 'beryllium', '11.0.5.0', '9', NULL, 1523, 'International', '2019-11-04 10:08:33', 0, 'https://soundcloud.com/tvquran22/surah-youssef', 'beryllium 11.0.5.0 International'),
(21, 0, 'beryllium', '11.0.5.0', '9', NULL, 1523, 'International', '2019-11-04 10:08:33', 0, 'https://soundcloud.com/tvquran22/surah-youssef', 'beryllium 11.0.5.0 International'),
(22, 0, 'beryllium', '11.0.5.0', '9', NULL, 1523, 'International', '2019-11-04 10:08:33', 0, 'https://soundcloud.com/tvquran22/surah-youssef', 'beryllium 11.0.5.0 International'),
(23, 0, 'beryllium', '11.0.5.0', '9', NULL, 1523, 'International', '2019-11-04 10:09:00', 0, 'https://soundcloud.com/tvquran22/surah-youssef', 'beryllium 11.0.5.0 International'),
(24, 0, 'beryllium', '11.0.5.0', '9', NULL, 1523, 'International', '2019-11-04 10:09:01', 0, 'https://soundcloud.com/tvquran22/surah-youssef', 'beryllium 11.0.5.0 International'),
(25, 0, 'beryllium', '11.0.5.0', '9', NULL, 1523, 'International', '2019-11-04 10:09:01', 0, 'https://soundcloud.com/tvquran22/surah-youssef', 'beryllium 11.0.5.0 International'),
(26, 0, 'beryllium', '11.0.5.0', '9', NULL, 1523, 'International', '2019-11-04 10:09:01', 0, 'https://soundcloud.com/tvquran22/surah-youssef', 'beryllium 11.0.5.0 International'),
(27, 0, 'beryllium', '11.0.5.0', '9', NULL, 1523, 'International', '2019-11-04 10:09:02', 0, 'https://soundcloud.com/tvquran22/surah-youssef', 'beryllium 11.0.5.0 International'),
(28, 1, 'combination', '92103123', '10', 'U2', 832612312, 'International', '2019-11-04 10:09:23', 0, 'https://elprinter.com/designer/modize-shop/', 'combination 92103123 International'),
(29, 1, 'combination', '92103123', '10', 'U2', 832612312, 'International', '2019-11-04 10:09:25', 0, 'https://elprinter.com/designer/modize-shop/', 'combination 92103123 International'),
(30, 1, 'combination', '92103123', '10', 'U2', 832612312, 'International', '2019-11-04 10:09:26', 0, 'https://elprinter.com/designer/modize-shop/', 'combination 92103123 International'),
(31, 1, 'combination', '92103123', '10', 'U2', 832612312, 'International', '2019-11-04 10:09:26', 0, 'https://elprinter.com/designer/modize-shop/', 'combination 92103123 International'),
(32, 1, 'combination', '92103123', '10', 'U2', 832612312, 'International', '2019-11-04 10:09:26', 0, 'https://elprinter.com/designer/modize-shop/', 'combination 92103123 International'),
(33, 1, 'combination', '92103123', '10', 'U2', 832612312, 'International', '2019-11-04 10:09:27', 0, 'https://elprinter.com/designer/modize-shop/', 'combination 92103123 International'),
(34, 1, 'combination', '92103123', '10', 'U2', 832612312, 'International', '2019-11-04 10:09:27', 0, 'https://elprinter.com/designer/modize-shop/', 'combination 92103123 International'),
(35, 1, 'combination', '92103123', '10', 'U2', 832612312, 'International', '2019-11-04 10:09:28', 0, 'https://elprinter.com/designer/modize-shop/', 'combination 92103123 International'),
(36, 1, 'combination', '92103123', '10', 'U2', 832612312, 'International', '2019-11-04 10:09:28', 0, 'https://elprinter.com/designer/modize-shop/', 'combination 92103123 International'),
(37, 1, 'combination', '92103123', '10', 'U2', 832612312, 'International', '2019-11-04 10:09:28', 0, 'https://elprinter.com/designer/modize-shop/', 'combination 92103123 International'),
(38, 1, 'combination', '92103123', '10', 'U2', 832612312, 'International', '2019-11-04 10:09:29', 0, 'https://elprinter.com/designer/modize-shop/', 'combination 92103123 International'),
(39, 1, 'combination', '92103123', '10', 'U2', 832612312, 'International', '2019-11-04 10:09:29', 0, 'https://elprinter.com/designer/modize-shop/', 'combination 92103123 International'),
(40, 1, 'combination', '92103123', '10', 'U2', 832612312, 'International', '2019-11-04 10:09:29', 0, 'https://elprinter.com/designer/modize-shop/', 'combination 92103123 International'),
(41, 1, 'combination', '92103123', '10', 'U2', 832612312, 'International', '2019-11-04 10:09:29', 0, 'https://elprinter.com/designer/modize-shop/', 'combination 92103123 International'),
(42, 1, 'combination', '92103123', '10', 'U2', 832612312, 'International', '2019-11-04 10:09:30', 0, 'https://elprinter.com/designer/modize-shop/', 'combination 92103123 International'),
(43, 1, 'combination', '92103123', '10', 'U2', 832612312, 'International', '2019-11-04 10:09:30', 0, 'https://elprinter.com/designer/modize-shop/', 'combination 92103123 International'),
(44, 1, 'combination', '92103123', '10', 'U2', 832612312, 'International', '2019-11-04 10:09:30', 0, 'https://elprinter.com/designer/modize-shop/', 'combination 92103123 International'),
(45, 1, 'combination', '92103123', '10', 'U2', 832612312, 'International', '2019-11-04 10:09:31', 0, 'https://elprinter.com/designer/modize-shop/', 'combination 92103123 International'),
(46, 1, 'combination', '92103123', '10', 'U2', 832612312, 'International', '2019-11-04 10:09:31', 0, 'https://elprinter.com/designer/modize-shop/', 'combination 92103123 International'),
(47, 1, 'combination', '92103123', '10', 'U2', 832612312, 'International', '2019-11-04 10:09:31', 0, 'https://elprinter.com/designer/modize-shop/', 'combination 92103123 International'),
(48, 1, 'combination', '92103123', '10', 'U2', 832612312, 'International', '2019-11-04 10:09:32', 0, 'https://elprinter.com/designer/modize-shop/', 'combination 92103123 International'),
(49, 1, 'combination', '92103123', '10', 'U2', 832612312, 'International', '2019-11-04 10:09:32', 0, 'https://elprinter.com/designer/modize-shop/', 'combination 92103123 International'),
(50, 1, 'combination', '92103123', '10', 'U2', 832612312, 'International', '2019-11-04 10:09:32', 0, 'https://elprinter.com/designer/modize-shop/', 'combination 92103123 International'),
(51, 1, 'combination', '92103123', '10', 'U2', 832612312, 'International', '2019-11-04 10:09:33', 0, 'https://elprinter.com/designer/modize-shop/', 'combination 92103123 International'),
(52, 1, 'combination', '92103123', '10', 'U2', 832612312, 'International', '2019-11-04 10:09:33', 0, 'https://elprinter.com/designer/modize-shop/', 'combination 92103123 International'),
(53, 1, 'combination', '92103123', '10', 'U2', 832612312, 'International', '2019-11-04 10:09:33', 0, 'https://elprinter.com/designer/modize-shop/', 'combination 92103123 International'),
(54, 1, 'combination', '92103123', '10', 'U2', 832612312, 'International', '2019-11-04 10:09:34', 0, 'https://elprinter.com/designer/modize-shop/', 'combination 92103123 International'),
(55, 1, 'combination', '92103123', '10', 'U2', 832612312, 'International', '2019-11-04 10:09:34', 0, 'https://elprinter.com/designer/modize-shop/', 'combination 92103123 International'),
(56, 1, 'combination', '92103123', '10', 'U2', 832612312, 'International', '2019-11-04 10:09:34', 0, 'https://elprinter.com/designer/modize-shop/', 'combination 92103123 International'),
(57, 1, 'combination', '92103123', '10', 'U2', 832612312, 'International', '2019-11-04 10:09:44', 0, 'https://elprinter.com/designer/modize-shop/', 'combination 92103123 International'),
(58, 1, 'combination', '92103123', '10', 'U2', 832612312, 'International', '2019-11-04 10:09:44', 0, 'https://elprinter.com/designer/modize-shop/', 'combination 92103123 International'),
(59, 1, 'combination', '92103123', '10', 'U2', 832612312, 'International', '2019-11-04 10:09:44', 0, 'https://elprinter.com/designer/modize-shop/', 'combination 92103123 International'),
(60, 1, 'combination', '92103123', '10', 'U2', 832612312, 'International', '2019-11-04 10:09:45', 0, 'https://elprinter.com/designer/modize-shop/', 'combination 92103123 International'),
(61, 1, 'combination', '92103123', '10', 'U2', 832612312, 'International', '2019-11-04 10:09:45', 0, 'https://elprinter.com/designer/modize-shop/', 'combination 92103123 International'),
(62, 1, 'combination', '92103123', '10', 'U2', 832612312, 'International', '2019-11-04 10:09:46', 0, 'https://elprinter.com/designer/modize-shop/', 'combination 92103123 International'),
(63, 0, 'cheeseburger', '324324223', '9.0', NULL, 291231, 'KSA', '2019-11-04 10:20:53', 0, 'Listen to Surah youssef Ø³ÙˆØ±Ø© ÙŠÙˆØ³Ù Ù‡Ø²Ø§Ø¹ Ø§Ù„Ø¨Ù„ÙˆØ´ÙŠ by ØªÙ„Ø§ÙˆØ§Øª Ø®Ø§Ø´Ø¹Ø© on #SoundCloud https://soundcloud.com/tvquran22/surah-youssef', 'cheeseburger 324324223 KSA'),
(64, 0, 'cheeseburger', '324324223', '9.0', NULL, 291231, 'KSA', '2019-11-04 10:20:56', 0, 'Listen to Surah youssef Ø³ÙˆØ±Ø© ÙŠÙˆØ³Ù Ù‡Ø²Ø§Ø¹ Ø§Ù„Ø¨Ù„ÙˆØ´ÙŠ by ØªÙ„Ø§ÙˆØ§Øª Ø®Ø§Ø´Ø¹Ø© on #SoundCloud https://soundcloud.com/tvquran22/surah-youssef', 'cheeseburger 324324223 KSA'),
(65, 0, 'cheeseburger', '324324223', '9.0', NULL, 291231, 'KSA', '2019-11-04 10:20:57', 0, 'Listen to Surah youssef Ø³ÙˆØ±Ø© ÙŠÙˆØ³Ù Ù‡Ø²Ø§Ø¹ Ø§Ù„Ø¨Ù„ÙˆØ´ÙŠ by ØªÙ„Ø§ÙˆØ§Øª Ø®Ø§Ø´Ø¹Ø© on #SoundCloud https://soundcloud.com/tvquran22/surah-youssef', 'cheeseburger 324324223 KSA'),
(66, 0, 'cheeseburger', '324324223', '9.0', NULL, 291231, 'KSA', '2019-11-04 10:20:57', 0, 'Listen to Surah youssef Ø³ÙˆØ±Ø© ÙŠÙˆØ³Ù Ù‡Ø²Ø§Ø¹ Ø§Ù„Ø¨Ù„ÙˆØ´ÙŠ by ØªÙ„Ø§ÙˆØ§Øª Ø®Ø§Ø´Ø¹Ø© on #SoundCloud https://soundcloud.com/tvquran22/surah-youssef', 'cheeseburger 324324223 KSA'),
(67, 0, 'cheeseburger', '324324223', '9.0', NULL, 291231, 'KSA', '2019-11-04 10:20:58', 0, 'Listen to Surah youssef Ø³ÙˆØ±Ø© ÙŠÙˆØ³Ù Ù‡Ø²Ø§Ø¹ Ø§Ù„Ø¨Ù„ÙˆØ´ÙŠ by ØªÙ„Ø§ÙˆØ§Øª Ø®Ø§Ø´Ø¹Ø© on #SoundCloud https://soundcloud.com/tvquran22/surah-youssef', 'cheeseburger 324324223 KSA'),
(68, 0, 'cheeseburger', '324324223', '9.0', NULL, 291231, 'KSA', '2019-11-04 10:20:58', 0, 'Listen to Surah youssef Ø³ÙˆØ±Ø© ÙŠÙˆØ³Ù Ù‡Ø²Ø§Ø¹ Ø§Ù„Ø¨Ù„ÙˆØ´ÙŠ by ØªÙ„Ø§ÙˆØ§Øª Ø®Ø§Ø´Ø¹Ø© on #SoundCloud https://soundcloud.com/tvquran22/surah-youssef', 'cheeseburger 324324223 KSA'),
(69, 0, 'cheeseburger', '324324223', '9.0', NULL, 291231, 'KSA', '2019-11-04 10:20:59', 0, 'Listen to Surah youssef Ø³ÙˆØ±Ø© ÙŠÙˆØ³Ù Ù‡Ø²Ø§Ø¹ Ø§Ù„Ø¨Ù„ÙˆØ´ÙŠ by ØªÙ„Ø§ÙˆØ§Øª Ø®Ø§Ø´Ø¹Ø© on #SoundCloud https://soundcloud.com/tvquran22/surah-youssef', 'cheeseburger 324324223 KSA'),
(70, 0, 'cheeseburger', '324324223', '9.0', NULL, 291231, 'KSA', '2019-11-04 10:20:59', 0, 'Listen to Surah youssef Ø³ÙˆØ±Ø© ÙŠÙˆØ³Ù Ù‡Ø²Ø§Ø¹ Ø§Ù„Ø¨Ù„ÙˆØ´ÙŠ by ØªÙ„Ø§ÙˆØ§Øª Ø®Ø§Ø´Ø¹Ø© on #SoundCloud https://soundcloud.com/tvquran22/surah-youssef', 'cheeseburger 324324223 KSA'),
(71, 0, 'cheeseburger', '324324223', '9.0', NULL, 291231, 'KSA', '2019-11-04 10:20:59', 0, 'Listen to Surah youssef Ø³ÙˆØ±Ø© ÙŠÙˆØ³Ù Ù‡Ø²Ø§Ø¹ Ø§Ù„Ø¨Ù„ÙˆØ´ÙŠ by ØªÙ„Ø§ÙˆØ§Øª Ø®Ø§Ø´Ø¹Ø© on #SoundCloud https://soundcloud.com/tvquran22/surah-youssef', 'cheeseburger 324324223 KSA'),
(72, 0, 'cheeseburger', '324324223', '9.0', NULL, 291231, 'KSA', '2019-11-04 10:21:00', 0, 'Listen to Surah youssef Ø³ÙˆØ±Ø© ÙŠÙˆØ³Ù Ù‡Ø²Ø§Ø¹ Ø§Ù„Ø¨Ù„ÙˆØ´ÙŠ by ØªÙ„Ø§ÙˆØ§Øª Ø®Ø§Ø´Ø¹Ø© on #SoundCloud https://soundcloud.com/tvquran22/surah-youssef', 'cheeseburger 324324223 KSA'),
(73, 0, 'cheeseburger', '324324223', '9.0', NULL, 291231, 'KSA', '2019-11-04 10:21:00', 0, 'Listen to Surah youssef Ø³ÙˆØ±Ø© ÙŠÙˆØ³Ù Ù‡Ø²Ø§Ø¹ Ø§Ù„Ø¨Ù„ÙˆØ´ÙŠ by ØªÙ„Ø§ÙˆØ§Øª Ø®Ø§Ø´Ø¹Ø© on #SoundCloud https://soundcloud.com/tvquran22/surah-youssef', 'cheeseburger 324324223 KSA'),
(74, 0, 'cheeseburger', '324324223', '9.0', NULL, 291231, 'KSA', '2019-11-04 10:21:00', 0, 'Listen to Surah youssef Ø³ÙˆØ±Ø© ÙŠÙˆØ³Ù Ù‡Ø²Ø§Ø¹ Ø§Ù„Ø¨Ù„ÙˆØ´ÙŠ by ØªÙ„Ø§ÙˆØ§Øª Ø®Ø§Ø´Ø¹Ø© on #SoundCloud https://soundcloud.com/tvquran22/surah-youssef', 'cheeseburger 324324223 KSA'),
(75, 0, 'cheeseburger', '324324223', '9.0', NULL, 291231, 'KSA', '2019-11-04 10:21:01', 0, 'Listen to Surah youssef Ø³ÙˆØ±Ø© ÙŠÙˆØ³Ù Ù‡Ø²Ø§Ø¹ Ø§Ù„Ø¨Ù„ÙˆØ´ÙŠ by ØªÙ„Ø§ÙˆØ§Øª Ø®Ø§Ø´Ø¹Ø© on #SoundCloud https://soundcloud.com/tvquran22/surah-youssef', 'cheeseburger 324324223 KSA'),
(76, 0, 'cheeseburger', '324324223', '9.0', NULL, 291231, 'KSA', '2019-11-04 10:21:01', 0, 'Listen to Surah youssef Ø³ÙˆØ±Ø© ÙŠÙˆØ³Ù Ù‡Ø²Ø§Ø¹ Ø§Ù„Ø¨Ù„ÙˆØ´ÙŠ by ØªÙ„Ø§ÙˆØ§Øª Ø®Ø§Ø´Ø¹Ø© on #SoundCloud https://soundcloud.com/tvquran22/surah-youssef', 'cheeseburger 324324223 KSA'),
(77, 0, 'cheeseburger', '324324223', '9.0', NULL, 291231, 'KSA', '2019-11-04 10:21:01', 0, 'Listen to Surah youssef Ø³ÙˆØ±Ø© ÙŠÙˆØ³Ù Ù‡Ø²Ø§Ø¹ Ø§Ù„Ø¨Ù„ÙˆØ´ÙŠ by ØªÙ„Ø§ÙˆØ§Øª Ø®Ø§Ø´Ø¹Ø© on #SoundCloud https://soundcloud.com/tvquran22/surah-youssef', 'cheeseburger 324324223 KSA'),
(78, 0, 'cheeseburger', '324324223', '9.0', NULL, 291231, 'KSA', '2019-11-04 10:21:02', 0, 'Listen to Surah youssef Ø³ÙˆØ±Ø© ÙŠÙˆØ³Ù Ù‡Ø²Ø§Ø¹ Ø§Ù„Ø¨Ù„ÙˆØ´ÙŠ by ØªÙ„Ø§ÙˆØ§Øª Ø®Ø§Ø´Ø¹Ø© on #SoundCloud https://soundcloud.com/tvquran22/surah-youssef', 'cheeseburger 324324223 KSA'),
(79, 0, 'cheeseburger', '324324223', '9.0', NULL, 291231, 'KSA', '2019-11-04 10:21:02', 0, 'Listen to Surah youssef Ø³ÙˆØ±Ø© ÙŠÙˆØ³Ù Ù‡Ø²Ø§Ø¹ Ø§Ù„Ø¨Ù„ÙˆØ´ÙŠ by ØªÙ„Ø§ÙˆØ§Øª Ø®Ø§Ø´Ø¹Ø© on #SoundCloud https://soundcloud.com/tvquran22/surah-youssef', 'cheeseburger 324324223 KSA'),
(80, 0, 'cheeseburger', '324324223', '9.0', NULL, 291231, 'KSA', '2019-11-04 10:21:02', 0, 'Listen to Surah youssef Ø³ÙˆØ±Ø© ÙŠÙˆØ³Ù Ù‡Ø²Ø§Ø¹ Ø§Ù„Ø¨Ù„ÙˆØ´ÙŠ by ØªÙ„Ø§ÙˆØ§Øª Ø®Ø§Ø´Ø¹Ø© on #SoundCloud https://soundcloud.com/tvquran22/surah-youssef', 'cheeseburger 324324223 KSA'),
(81, 1, 'comb2', 'kuh', 'iuhukhkh', 'khjhjkhkj', 2332322, 'hhj', '2019-11-04 14:26:43', 0, 'https://elprinter.com/designer/modize-shop/', 'comb2 kuh hhj'),
(82, 0, 'here is a test 2', 'asdkjasldj', 'lksajdlkj', NULL, 223346688, 'lkjlk', '2019-11-04 14:41:23', 0, 'https://soundcloud.com/tvquran22/surah-youssef', 'here is a test 2 asdkjasldj lkjlk');

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
