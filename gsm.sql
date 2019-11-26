-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 16, 2019 at 11:46 PM
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
  `size` bigint(11) NOT NULL,
  `country` mediumtext NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `downloads` int(11) NOT NULL DEFAULT '0',
  `url` mediumtext NOT NULL,
  `search_text` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=245 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `type`, `model`, `build_v`, `android_v`, `security_level`, `size`, `country`, `created`, `downloads`, `url`, `search_text`) VALUES
(1, 0, 'SM-T810', 'PSUEW12L90UY1', '10', 'A2', 486794884, 'Qatar', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 Qatar PSUEW12L90UY1'),
(2, 0, 'SM-T670', 'G532FXWU1ASB1', '10', 'A2', 560829565, 'Canada', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T670 Canada G532FXWU1ASB1'),
(3, 0, 'SM-T560', 'O98UQWKSAQATA', '10', 'Y9', 545705140, 'Australia', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T560 Australia O98UQWKSAQATA'),
(4, 0, 'SM-W720', 'V23SQPMXJAWQK', '8', 'OO', 559120490, 'Australia', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 Australia V23SQPMXJAWQK'),
(5, 1, 'SM-N800', 'PPW899UYTQSAW', '10', 'B2', 748967773, 'Egypt', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-N800 Egypt PPW899UYTQSAW'),
(6, 1, 'SM-T560', 'KITTY8642069P', '10', 'A2', 922086471, 'Turkey', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T560 Turkey KITTY8642069P'),
(7, 0, 'SM-P900', 'V23SQPMXJAWQK', '6', 'P3', 760466508, 'Canada', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-P900 Canada V23SQPMXJAWQK'),
(8, 0, 'SM-N800', 'PPW899UYTQSAW', '8', 'P3', 260974969, 'KSA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-N800 KSA PPW899UYTQSAW'),
(9, 1, 'SM-T560', 'KITTY8642069P', '6', 'U2', 43321561, 'Canada', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T560 Canada KITTY8642069P'),
(10, 1, 'SM-N800', 'O98UQWKSAQATA', '7.1', 'U2', 797755713, 'USA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-N800 USA O98UQWKSAQATA'),
(11, 1, 'SM-N800', 'V23SQPMXJAWQK', '7.1', 'B2', 545537590, 'Hong Kong', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-N800 Hong Kong V23SQPMXJAWQK'),
(12, 0, 'SM-P900', 'V23SQPMXJAWQK', '8', 'A2', 721983491, 'Hong Kong', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-P900 Hong Kong V23SQPMXJAWQK'),
(13, 0, 'SM-W720', 'O98UQWKSAQATA', '7.1', 'K7', 748193101, 'Egypt', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 Egypt O98UQWKSAQATA'),
(14, 1, 'SM-P900', 'KITTY8642069P', '9.0', 'Y9', 627495523, 'Turkey', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-P900 Turkey KITTY8642069P'),
(15, 1, 'SM-T670', 'KITTY8642069P', '10', 'OO', 481919435, 'USA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T670 USA KITTY8642069P'),
(16, 0, 'SM-T560', 'PPW899UYTQSAW', '8', 'Y9', 916618161, 'Turkey', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T560 Turkey PPW899UYTQSAW'),
(17, 1, 'SM-T670', 'PPW899UYTQSAW', '6', 'K7', 633316257, 'Turkey', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T670 Turkey PPW899UYTQSAW'),
(18, 1, 'SM-T670', 'V23SQPMXJAWQK', '9.0', 'U2', 783448950, 'Australia', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T670 Australia V23SQPMXJAWQK'),
(19, 0, 'SM-T670', 'O98UQWKSAQATA', '9.0', 'U2', 28862654, 'KSA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T670 KSA O98UQWKSAQATA'),
(20, 1, 'SM-P900', 'PSUEW12L90UY1', '8', 'OO', 754054307, 'Turkey', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-P900 Turkey PSUEW12L90UY1'),
(21, 0, 'SM-W720', 'PSUEW12L90UY1', '6', 'U2', 789682456, 'Turkey', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 Turkey PSUEW12L90UY1'),
(22, 0, 'SM-T560', 'OPU2357765CAT', '8.1', 'OO', 768462213, 'Egypt', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T560 Egypt OPU2357765CAT'),
(23, 1, 'SM-T810', 'G532FXWU1ASB1', '7.1', 'P3', 579129149, 'Qatar', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 Qatar G532FXWU1ASB1'),
(24, 0, 'SM-T810', 'O98UQWKSAQATA', '8.1', 'B2', 658514340, 'KSA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 KSA O98UQWKSAQATA'),
(25, 0, 'SM-T810', 'KITTY8642069P', '7.1', 'B2', 802454986, 'Australia', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 Australia KITTY8642069P'),
(26, 0, 'SM-N800', 'G532FXWU1ASB1', '7.1', 'B2', 25302409, 'Canada', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-N800 Canada G532FXWU1ASB1'),
(27, 1, 'SM-T670', 'OPU2357765CAT', '8', 'U2', 890752167, 'Australia', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T670 Australia OPU2357765CAT'),
(28, 0, 'SM-P900', 'KITTY8642069P', '8', 'K7', 52029888, 'Canada', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-P900 Canada KITTY8642069P'),
(29, 1, 'SM-N800', 'KHJU234SdE211', '10', 'B2', 853664167, 'USA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-N800 USA KHJU234SdE211'),
(30, 1, 'SM-P900', 'KHJU234SdE211', '6', 'OO', 270703109, 'USA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-P900 USA KHJU234SdE211'),
(31, 1, 'SM-T670', 'OPU2357765CAT', '9.0', 'A2', 863551218, 'Egypt', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T670 Egypt OPU2357765CAT'),
(32, 0, 'SM-P900', 'OPU2357765CAT', '6', 'P3', 818227392, 'Turkey', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-P900 Turkey OPU2357765CAT'),
(33, 1, 'SM-P900', 'KHJU234SdE211', '6', 'K7', 601738639, 'USA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-P900 USA KHJU234SdE211'),
(34, 0, 'SM-T670', 'G532FXWU1ASB1', '8.1', 'B2', 133178156, 'KSA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T670 KSA G532FXWU1ASB1'),
(35, 1, 'SM-P900', 'G532FXWU1ASB1', '6', 'OO', 517555004, 'USA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-P900 USA G532FXWU1ASB1'),
(36, 0, 'SM-T560', 'KITTY8642069P', '10', 'OO', 339148302, 'Canada', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T560 Canada KITTY8642069P'),
(37, 0, 'SM-W720', 'PPW899UYTQSAW', '8', 'K7', 948992294, 'Egypt', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 Egypt PPW899UYTQSAW'),
(38, 0, 'SM-W720', 'G532FXWU1ASB1', '9.0', 'P3', 212303977, 'Hong Kong', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 Hong Kong G532FXWU1ASB1'),
(39, 0, 'SM-N800', 'O98UQWKSAQATA', '8.1', 'K7', 542457497, 'Canada', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-N800 Canada O98UQWKSAQATA'),
(40, 0, 'SM-W720', 'OPU2357765CAT', '8', 'P3', 168324225, 'Australia', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 Australia OPU2357765CAT'),
(41, 0, 'SM-W720', 'O98UQWKSAQATA', '8', 'B2', 453074316, 'Australia', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 Australia O98UQWKSAQATA'),
(42, 0, 'SM-W720', 'G532FXWU1ASB1', '6', 'U2', 357726600, 'Qatar', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 Qatar G532FXWU1ASB1'),
(43, 0, 'SM-T810', 'PSUEW12L90UY1', '8.1', 'Y9', 266432453, 'KSA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 KSA PSUEW12L90UY1'),
(44, 0, 'SM-T670', 'OPU2357765CAT', '8.1', 'A2', 211078199, 'Australia', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T670 Australia OPU2357765CAT'),
(45, 1, 'SM-P900', 'O98UQWKSAQATA', '8.1', 'K7', 900008345, 'Australia', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-P900 Australia O98UQWKSAQATA'),
(46, 1, 'SM-P900', 'O98UQWKSAQATA', '9.0', 'U2', 457439634, 'KSA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-P900 KSA O98UQWKSAQATA'),
(47, 0, 'SM-T810', 'OPU2357765CAT', '6', 'A2', 57994877, 'KSA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 KSA OPU2357765CAT'),
(48, 1, 'SM-T560', 'OPU2357765CAT', '10', 'B2', 261544240, 'KSA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T560 KSA OPU2357765CAT'),
(49, 1, 'SM-T670', 'PSUEW12L90UY1', '8', 'B2', 211338684, 'Qatar', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T670 Qatar PSUEW12L90UY1'),
(50, 0, 'SM-T810', 'G532FXWU1ASB1', '7.1', 'B2', 580738375, 'Canada', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 Canada G532FXWU1ASB1'),
(51, 0, 'SM-W720', 'O98UQWKSAQATA', '8', 'Y9', 940916614, 'USA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 USA O98UQWKSAQATA'),
(52, 0, 'SM-T810', 'PPW899UYTQSAW', '10', 'Y9', 363981852, 'USA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 USA PPW899UYTQSAW'),
(53, 1, 'SM-T810', 'KHJU234SdE211', '10', 'A2', 655020360, 'Australia', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 Australia KHJU234SdE211'),
(54, 1, 'SM-N800', 'PPW899UYTQSAW', '9.0', 'OO', 266422600, 'Turkey', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-N800 Turkey PPW899UYTQSAW'),
(55, 0, 'SM-T560', 'KITTY8642069P', '10', 'U2', 713815529, 'Egypt', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T560 Egypt KITTY8642069P'),
(56, 1, 'SM-W720', 'O98UQWKSAQATA', '10', 'U2', 245875848, 'Qatar', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 Qatar O98UQWKSAQATA'),
(57, 1, 'SM-N800', 'PPW899UYTQSAW', '8.1', 'K7', 537655983, 'Hong Kong', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-N800 Hong Kong PPW899UYTQSAW'),
(58, 1, 'SM-N800', 'G532FXWU1ASB1', '8', 'U2', 629779071, 'Egypt', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-N800 Egypt G532FXWU1ASB1'),
(59, 1, 'SM-T560', 'V23SQPMXJAWQK', '8', 'A2', 408467983, 'Turkey', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T560 Turkey V23SQPMXJAWQK'),
(60, 1, 'SM-T810', 'PSUEW12L90UY1', '8', 'OO', 411903414, 'Hong Kong', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 Hong Kong PSUEW12L90UY1'),
(61, 1, 'SM-P900', 'PPW899UYTQSAW', '6', 'P3', 535170058, 'Egypt', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-P900 Egypt PPW899UYTQSAW'),
(62, 0, 'SM-T810', 'KHJU234SdE211', '9.0', 'B2', 521440728, 'USA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 USA KHJU234SdE211'),
(63, 1, 'SM-N800', 'PPW899UYTQSAW', '8.1', 'B2', 64139476, 'Qatar', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-N800 Qatar PPW899UYTQSAW'),
(64, 0, 'SM-W720', 'PSUEW12L90UY1', '8', 'U2', 307946687, 'Canada', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 Canada PSUEW12L90UY1'),
(65, 0, 'SM-P900', 'V23SQPMXJAWQK', '10', 'P3', 512990470, 'Egypt', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-P900 Egypt V23SQPMXJAWQK'),
(66, 1, 'SM-T810', 'OPU2357765CAT', '8.1', 'P3', 540204804, 'Australia', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 Australia OPU2357765CAT'),
(67, 0, 'SM-T670', 'O98UQWKSAQATA', '8.1', 'OO', 468993118, 'Egypt', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T670 Egypt O98UQWKSAQATA'),
(68, 0, 'SM-N800', 'V23SQPMXJAWQK', '10', 'K7', 569781314, 'USA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-N800 USA V23SQPMXJAWQK'),
(69, 0, 'SM-T560', 'G532FXWU1ASB1', '10', 'K7', 110574128, 'Australia', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T560 Australia G532FXWU1ASB1'),
(70, 0, 'SM-N800', 'PSUEW12L90UY1', '8.1', 'P3', 147959761, 'Canada', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-N800 Canada PSUEW12L90UY1'),
(71, 0, 'SM-N800', 'KHJU234SdE211', '10', 'K7', 498725747, 'Egypt', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-N800 Egypt KHJU234SdE211'),
(72, 1, 'SM-T670', 'V23SQPMXJAWQK', '9.0', 'P3', 925305358, 'Hong Kong', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T670 Hong Kong V23SQPMXJAWQK'),
(73, 1, 'SM-N800', 'O98UQWKSAQATA', '8', 'K7', 805956710, 'Egypt', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-N800 Egypt O98UQWKSAQATA'),
(74, 0, 'SM-W720', 'KITTY8642069P', '9.0', 'K7', 443433040, 'Canada', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 Canada KITTY8642069P'),
(75, 0, 'SM-T670', 'PPW899UYTQSAW', '7.1', 'K7', 312474355, 'USA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T670 USA PPW899UYTQSAW'),
(76, 1, 'SM-W720', 'V23SQPMXJAWQK', '8.1', 'B2', 663949929, 'Canada', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 Canada V23SQPMXJAWQK'),
(77, 1, 'SM-N800', 'G532FXWU1ASB1', '10', 'B2', 320652128, 'Canada', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-N800 Canada G532FXWU1ASB1'),
(78, 1, 'SM-P900', 'PSUEW12L90UY1', '8', 'A2', 989387659, 'Egypt', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-P900 Egypt PSUEW12L90UY1'),
(79, 1, 'SM-T810', 'G532FXWU1ASB1', '6', 'K7', 370641555, 'Hong Kong', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 Hong Kong G532FXWU1ASB1'),
(80, 0, 'SM-T810', 'PSUEW12L90UY1', '6', 'Y9', 954876725, 'USA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 USA PSUEW12L90UY1'),
(81, 0, 'SM-T670', 'OPU2357765CAT', '9.0', 'B2', 192187281, 'Australia', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T670 Australia OPU2357765CAT'),
(82, 1, 'SM-P900', 'PSUEW12L90UY1', '6', 'P3', 209057256, 'Hong Kong', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-P900 Hong Kong PSUEW12L90UY1'),
(83, 1, 'SM-T810', 'V23SQPMXJAWQK', '8.1', 'K7', 355277806, 'Australia', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 Australia V23SQPMXJAWQK'),
(84, 1, 'SM-W720', 'OPU2357765CAT', '7.1', 'P3', 538663587, 'Egypt', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 Egypt OPU2357765CAT'),
(85, 1, 'SM-T810', 'G532FXWU1ASB1', '8.1', 'A2', 396749519, 'USA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 USA G532FXWU1ASB1'),
(86, 1, 'SM-P900', 'V23SQPMXJAWQK', '10', 'K7', 387048579, 'KSA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-P900 KSA V23SQPMXJAWQK'),
(87, 0, 'SM-T560', 'KHJU234SdE211', '7.1', 'Y9', 675591168, 'KSA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T560 KSA KHJU234SdE211'),
(88, 1, 'SM-T670', 'G532FXWU1ASB1', '8.1', 'K7', 399733947, 'Egypt', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T670 Egypt G532FXWU1ASB1'),
(89, 0, 'SM-N800', 'O98UQWKSAQATA', '10', 'U2', 73480285, 'Australia', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-N800 Australia O98UQWKSAQATA'),
(90, 0, 'SM-T810', 'KITTY8642069P', '6', 'P3', 213468931, 'Qatar', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 Qatar KITTY8642069P'),
(91, 0, 'SM-N800', 'KHJU234SdE211', '10', 'Y9', 424801998, 'USA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-N800 USA KHJU234SdE211'),
(92, 1, 'SM-T810', 'KHJU234SdE211', '10', 'A2', 191099137, 'Qatar', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 Qatar KHJU234SdE211'),
(93, 0, 'SM-T560', 'KHJU234SdE211', '7.1', 'OO', 819853133, 'Qatar', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T560 Qatar KHJU234SdE211'),
(94, 0, 'SM-T560', 'KHJU234SdE211', '9.0', 'A2', 805756680, 'Turkey', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T560 Turkey KHJU234SdE211'),
(95, 1, 'SM-T560', 'KHJU234SdE211', '6', 'OO', 318951891, 'Australia', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T560 Australia KHJU234SdE211'),
(96, 0, 'SM-P900', 'OPU2357765CAT', '9.0', 'OO', 167515062, 'Hong Kong', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-P900 Hong Kong OPU2357765CAT'),
(97, 1, 'SM-T670', 'PSUEW12L90UY1', '8.1', 'OO', 701908054, 'Turkey', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T670 Turkey PSUEW12L90UY1'),
(98, 0, 'SM-T810', 'G532FXWU1ASB1', '8.1', 'OO', 215634160, 'KSA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 KSA G532FXWU1ASB1'),
(99, 1, 'SM-T560', 'PSUEW12L90UY1', '7.1', 'U2', 285552053, 'KSA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T560 KSA PSUEW12L90UY1'),
(100, 0, 'SM-T810', 'G532FXWU1ASB1', '8.1', 'Y9', 18973060, 'Australia', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 Australia G532FXWU1ASB1'),
(101, 1, 'SM-T670', 'G532FXWU1ASB1', '7.1', 'OO', 241137373, 'Canada', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T670 Canada G532FXWU1ASB1'),
(102, 1, 'SM-W720', 'PSUEW12L90UY1', '6', 'OO', 976589056, 'Egypt', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 Egypt PSUEW12L90UY1'),
(103, 1, 'SM-T810', 'PPW899UYTQSAW', '6', 'Y9', 558530138, 'KSA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 KSA PPW899UYTQSAW'),
(104, 0, 'SM-T810', 'KITTY8642069P', '7.1', 'U2', 44513167, 'Qatar', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 Qatar KITTY8642069P'),
(105, 1, 'SM-P900', 'OPU2357765CAT', '8', 'A2', 538287672, 'USA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-P900 USA OPU2357765CAT'),
(106, 1, 'SM-P900', 'KHJU234SdE211', '8', 'K7', 323781219, 'Turkey', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-P900 Turkey KHJU234SdE211'),
(107, 1, 'SM-P900', 'KHJU234SdE211', '10', 'A2', 729839018, 'Australia', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-P900 Australia KHJU234SdE211'),
(108, 0, 'SM-T810', 'PSUEW12L90UY1', '10', 'K7', 19845375, 'Hong Kong', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 Hong Kong PSUEW12L90UY1'),
(109, 0, 'SM-T670', 'O98UQWKSAQATA', '10', 'A2', 343261233, 'Qatar', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T670 Qatar O98UQWKSAQATA'),
(110, 0, 'SM-W720', 'O98UQWKSAQATA', '8.1', 'OO', 621877310, 'Canada', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 Canada O98UQWKSAQATA'),
(111, 1, 'SM-T560', 'O98UQWKSAQATA', '9.0', 'U2', 492005104, 'Turkey', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T560 Turkey O98UQWKSAQATA'),
(112, 0, 'SM-T810', 'KITTY8642069P', '6', 'A2', 790427037, 'Canada', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 Canada KITTY8642069P'),
(113, 0, 'SM-T810', 'KHJU234SdE211', '6', 'A2', 547345702, 'Turkey', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 Turkey KHJU234SdE211'),
(114, 0, 'SM-N800', 'V23SQPMXJAWQK', '8', 'OO', 396490156, 'USA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-N800 USA V23SQPMXJAWQK'),
(115, 1, 'SM-N800', 'V23SQPMXJAWQK', '8.1', 'K7', 402987034, 'Egypt', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-N800 Egypt V23SQPMXJAWQK'),
(116, 1, 'SM-T560', 'PSUEW12L90UY1', '8.1', 'K7', 391075654, 'Canada', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T560 Canada PSUEW12L90UY1'),
(117, 0, 'SM-T810', 'G532FXWU1ASB1', '9.0', 'A2', 662094737, 'KSA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 KSA G532FXWU1ASB1'),
(118, 0, 'SM-T670', 'KHJU234SdE211', '10', 'P3', 356226835, 'Qatar', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T670 Qatar KHJU234SdE211'),
(119, 0, 'SM-T560', 'PPW899UYTQSAW', '8.1', 'B2', 400489206, 'Canada', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T560 Canada PPW899UYTQSAW'),
(120, 0, 'SM-W720', 'PPW899UYTQSAW', '8', 'OO', 618211005, 'USA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 USA PPW899UYTQSAW'),
(121, 1, 'SM-W720', 'V23SQPMXJAWQK', '7.1', 'P3', 829066346, 'KSA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 KSA V23SQPMXJAWQK'),
(122, 1, 'SM-T810', 'G532FXWU1ASB1', '6', 'U2', 394544314, 'Turkey', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 Turkey G532FXWU1ASB1'),
(123, 1, 'SM-T810', 'V23SQPMXJAWQK', '10', 'Y9', 60729328, 'Turkey', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 Turkey V23SQPMXJAWQK'),
(124, 1, 'SM-P900', 'OPU2357765CAT', '9.0', 'Y9', 149425624, 'Canada', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-P900 Canada OPU2357765CAT'),
(125, 1, 'SM-P900', 'OPU2357765CAT', '10', 'OO', 477104359, 'USA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-P900 USA OPU2357765CAT'),
(126, 0, 'SM-T670', 'KHJU234SdE211', '7.1', 'A2', 834770900, 'Turkey', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T670 Turkey KHJU234SdE211'),
(127, 0, 'SM-T560', 'OPU2357765CAT', '8', 'P3', 935195972, 'KSA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T560 KSA OPU2357765CAT'),
(128, 1, 'SM-W720', 'OPU2357765CAT', '10', 'OO', 47384243, 'KSA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 KSA OPU2357765CAT'),
(129, 1, 'SM-T810', 'KHJU234SdE211', '7.1', 'P3', 909506279, 'USA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 USA KHJU234SdE211'),
(130, 0, 'SM-T670', 'OPU2357765CAT', '10', 'K7', 211826767, 'Egypt', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T670 Egypt OPU2357765CAT'),
(131, 1, 'SM-T810', 'KITTY8642069P', '10', 'Y9', 86544705, 'Australia', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 Australia KITTY8642069P'),
(132, 1, 'SM-T810', 'PPW899UYTQSAW', '8.1', 'P3', 19002533, 'Canada', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 Canada PPW899UYTQSAW'),
(133, 0, 'SM-T560', 'PSUEW12L90UY1', '6', 'B2', 755624201, 'Canada', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T560 Canada PSUEW12L90UY1'),
(134, 0, 'SM-N800', 'KHJU234SdE211', '10', 'U2', 495030081, 'Egypt', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-N800 Egypt KHJU234SdE211'),
(135, 1, 'SM-T810', 'G532FXWU1ASB1', '8.1', 'P3', 731279417, 'Australia', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 Australia G532FXWU1ASB1'),
(136, 0, 'SM-T560', 'PSUEW12L90UY1', '8', 'P3', 140299634, 'Qatar', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T560 Qatar PSUEW12L90UY1'),
(137, 0, 'SM-T560', 'G532FXWU1ASB1', '8.1', 'P3', 678316387, 'Canada', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T560 Canada G532FXWU1ASB1'),
(138, 1, 'SM-T810', 'KITTY8642069P', '10', 'OO', 777871659, 'Turkey', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 Turkey KITTY8642069P'),
(139, 0, 'SM-T560', 'KHJU234SdE211', '9.0', 'P3', 836422968, 'Canada', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T560 Canada KHJU234SdE211'),
(140, 0, 'SM-T810', 'O98UQWKSAQATA', '9.0', 'P3', 513307978, 'Hong Kong', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 Hong Kong O98UQWKSAQATA'),
(141, 1, 'SM-W720', 'O98UQWKSAQATA', '7.1', 'OO', 414258163, 'Turkey', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 Turkey O98UQWKSAQATA'),
(142, 1, 'SM-N800', 'KITTY8642069P', '8.1', 'Y9', 554637149, 'Hong Kong', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-N800 Hong Kong KITTY8642069P'),
(143, 0, 'SM-T810', 'PPW899UYTQSAW', '8.1', 'U2', 921260274, 'Turkey', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 Turkey PPW899UYTQSAW'),
(144, 0, 'SM-T810', 'PPW899UYTQSAW', '6', 'K7', 639393534, 'USA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 USA PPW899UYTQSAW'),
(145, 1, 'SM-W720', 'KHJU234SdE211', '7.1', 'Y9', 750557791, 'Australia', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 Australia KHJU234SdE211'),
(146, 0, 'SM-T670', 'OPU2357765CAT', '9.0', 'K7', 622224942, 'USA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T670 USA OPU2357765CAT'),
(147, 0, 'SM-W720', 'OPU2357765CAT', '7.1', 'U2', 618966730, 'Hong Kong', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 Hong Kong OPU2357765CAT'),
(148, 0, 'SM-T560', 'KHJU234SdE211', '8', 'OO', 612294863, 'KSA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T560 KSA KHJU234SdE211'),
(149, 1, 'SM-T810', 'OPU2357765CAT', '8.1', 'A2', 915331016, 'Turkey', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 Turkey OPU2357765CAT'),
(150, 0, 'SM-P900', 'O98UQWKSAQATA', '6', 'P3', 887153807, 'Australia', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-P900 Australia O98UQWKSAQATA'),
(151, 0, 'SM-T670', 'KITTY8642069P', '8.1', 'P3', 353320799, 'Egypt', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T670 Egypt KITTY8642069P'),
(152, 1, 'SM-T670', 'O98UQWKSAQATA', '6', 'A2', 622887899, 'Turkey', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T670 Turkey O98UQWKSAQATA'),
(153, 1, 'SM-N800', 'KITTY8642069P', '8', 'A2', 934190496, 'Qatar', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-N800 Qatar KITTY8642069P'),
(154, 1, 'SM-N800', 'G532FXWU1ASB1', '9.0', 'OO', 614300739, 'KSA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-N800 KSA G532FXWU1ASB1'),
(155, 0, 'SM-T810', 'PSUEW12L90UY1', '8.1', 'U2', 770828027, 'KSA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 KSA PSUEW12L90UY1'),
(156, 0, 'SM-T810', 'G532FXWU1ASB1', '6', 'U2', 868133190, 'Qatar', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 Qatar G532FXWU1ASB1'),
(157, 1, 'SM-N800', 'KITTY8642069P', '10', 'B2', 663222876, 'Canada', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-N800 Canada KITTY8642069P'),
(158, 1, 'SM-W720', 'OPU2357765CAT', '8', 'U2', 838952967, 'USA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 USA OPU2357765CAT'),
(159, 1, 'SM-W720', 'KITTY8642069P', '9.0', 'A2', 649761204, 'Egypt', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 Egypt KITTY8642069P'),
(160, 1, 'SM-W720', 'V23SQPMXJAWQK', '8.1', 'OO', 963424451, 'Australia', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 Australia V23SQPMXJAWQK'),
(161, 1, 'SM-T560', 'OPU2357765CAT', '8', 'B2', 160182142, 'Hong Kong', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T560 Hong Kong OPU2357765CAT'),
(162, 1, 'SM-N800', 'PPW899UYTQSAW', '6', 'P3', 726586163, 'Qatar', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-N800 Qatar PPW899UYTQSAW'),
(163, 1, 'SM-P900', 'G532FXWU1ASB1', '10', 'P3', 564717508, 'Australia', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-P900 Australia G532FXWU1ASB1'),
(164, 1, 'SM-T670', 'O98UQWKSAQATA', '9.0', 'OO', 143695748, 'Hong Kong', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T670 Hong Kong O98UQWKSAQATA'),
(165, 0, 'SM-W720', 'G532FXWU1ASB1', '7.1', 'Y9', 960792217, 'Hong Kong', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 Hong Kong G532FXWU1ASB1'),
(166, 1, 'SM-W720', 'OPU2357765CAT', '8', 'OO', 852374958, 'Canada', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 Canada OPU2357765CAT'),
(167, 0, 'SM-T670', 'PPW899UYTQSAW', '8', 'K7', 466674534, 'USA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T670 USA PPW899UYTQSAW'),
(168, 1, 'SM-T810', 'OPU2357765CAT', '8', 'U2', 209579523, 'Turkey', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 Turkey OPU2357765CAT'),
(169, 0, 'SM-T670', 'OPU2357765CAT', '8', 'B2', 538188613, 'Turkey', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T670 Turkey OPU2357765CAT'),
(170, 0, 'SM-N800', 'KHJU234SdE211', '7.1', 'A2', 73694206, 'Hong Kong', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-N800 Hong Kong KHJU234SdE211'),
(171, 0, 'SM-T670', 'PPW899UYTQSAW', '6', 'K7', 729347331, 'Hong Kong', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T670 Hong Kong PPW899UYTQSAW'),
(172, 1, 'SM-W720', 'V23SQPMXJAWQK', '8.1', 'P3', 82325155, 'Australia', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 Australia V23SQPMXJAWQK'),
(173, 1, 'SM-N800', 'G532FXWU1ASB1', '10', 'P3', 335934563, 'Hong Kong', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-N800 Hong Kong G532FXWU1ASB1'),
(174, 1, 'SM-T670', 'KITTY8642069P', '8.1', 'OO', 349104013, 'Hong Kong', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T670 Hong Kong KITTY8642069P'),
(175, 1, 'SM-T560', 'V23SQPMXJAWQK', '7.1', 'U2', 264959543, 'Australia', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T560 Australia V23SQPMXJAWQK'),
(176, 1, 'SM-T560', 'V23SQPMXJAWQK', '9.0', 'P3', 575256499, 'KSA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T560 KSA V23SQPMXJAWQK'),
(177, 1, 'SM-N800', 'PSUEW12L90UY1', '8.1', 'U2', 373524197, 'USA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-N800 USA PSUEW12L90UY1'),
(178, 0, 'SM-N800', 'PPW899UYTQSAW', '8.1', 'A2', 737007622, 'Canada', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-N800 Canada PPW899UYTQSAW'),
(179, 0, 'SM-T560', 'PSUEW12L90UY1', '8', 'A2', 272803920, 'USA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T560 USA PSUEW12L90UY1'),
(180, 0, 'SM-P900', 'V23SQPMXJAWQK', '7.1', 'U2', 165602593, 'KSA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-P900 KSA V23SQPMXJAWQK'),
(181, 1, 'SM-T810', 'V23SQPMXJAWQK', '9.0', 'OO', 73011977, 'Turkey', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 Turkey V23SQPMXJAWQK'),
(182, 1, 'SM-T670', 'PSUEW12L90UY1', '7.1', 'P3', 312747350, 'Hong Kong', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T670 Hong Kong PSUEW12L90UY1'),
(183, 0, 'SM-T670', 'PSUEW12L90UY1', '9.0', 'P3', 559147375, 'Turkey', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T670 Turkey PSUEW12L90UY1'),
(184, 1, 'SM-W720', 'PSUEW12L90UY1', '10', 'U2', 662659543, 'Turkey', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 Turkey PSUEW12L90UY1'),
(185, 1, 'SM-T670', 'O98UQWKSAQATA', '10', 'P3', 845540914, 'Hong Kong', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T670 Hong Kong O98UQWKSAQATA'),
(186, 1, 'SM-T560', 'O98UQWKSAQATA', '6', 'P3', 411696146, 'Egypt', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T560 Egypt O98UQWKSAQATA'),
(187, 1, 'SM-P900', 'G532FXWU1ASB1', '7.1', 'B2', 753830638, 'USA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-P900 USA G532FXWU1ASB1'),
(188, 1, 'SM-W720', 'PPW899UYTQSAW', '9.0', 'OO', 257455938, 'Egypt', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 Egypt PPW899UYTQSAW'),
(189, 1, 'SM-N800', 'PPW899UYTQSAW', '8', 'Y9', 293996782, 'Australia', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-N800 Australia PPW899UYTQSAW'),
(190, 1, 'SM-T670', 'PSUEW12L90UY1', '6', 'Y9', 338555578, 'USA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T670 USA PSUEW12L90UY1'),
(191, 0, 'SM-W720', 'PPW899UYTQSAW', '9.0', 'Y9', 682042030, 'Qatar', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 Qatar PPW899UYTQSAW'),
(192, 0, 'SM-P900', 'KITTY8642069P', '9.0', 'A2', 163289112, 'Turkey', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-P900 Turkey KITTY8642069P'),
(193, 0, 'SM-N800', 'KITTY8642069P', '9.0', 'A2', 87632468, 'Turkey', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-N800 Turkey KITTY8642069P'),
(194, 0, 'SM-P900', 'PSUEW12L90UY1', '7.1', 'A2', 140095818, 'Hong Kong', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-P900 Hong Kong PSUEW12L90UY1'),
(195, 1, 'SM-W720', 'PSUEW12L90UY1', '9.0', 'K7', 145354560, 'Qatar', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 Qatar PSUEW12L90UY1'),
(196, 1, 'SM-N800', 'PPW899UYTQSAW', '10', 'B2', 621916221, 'KSA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-N800 KSA PPW899UYTQSAW'),
(197, 1, 'SM-N800', 'KHJU234SdE211', '7.1', 'OO', 589809833, 'Qatar', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-N800 Qatar KHJU234SdE211'),
(198, 1, 'SM-P900', 'PPW899UYTQSAW', '6', 'OO', 551473019, 'Qatar', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-P900 Qatar PPW899UYTQSAW'),
(199, 1, 'SM-T670', 'PPW899UYTQSAW', '9.0', 'Y9', 366113309, 'KSA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T670 KSA PPW899UYTQSAW'),
(200, 0, 'SM-T670', 'KHJU234SdE211', '8.1', 'B2', 383656729, 'KSA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T670 KSA KHJU234SdE211'),
(201, 0, 'SM-P900', 'V23SQPMXJAWQK', '6', 'P3', 493953916, 'USA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-P900 USA V23SQPMXJAWQK'),
(202, 0, 'SM-T810', 'G532FXWU1ASB1', '7.1', 'Y9', 187879269, 'Qatar', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 Qatar G532FXWU1ASB1'),
(203, 0, 'SM-T670', 'KHJU234SdE211', '7.1', 'P3', 509767893, 'Hong Kong', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T670 Hong Kong KHJU234SdE211'),
(204, 0, 'SM-W720', 'KITTY8642069P', '6', 'P3', 542757234, 'Hong Kong', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 Hong Kong KITTY8642069P'),
(205, 1, 'SM-P900', 'PPW899UYTQSAW', '9.0', 'Y9', 549900304, 'Canada', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-P900 Canada PPW899UYTQSAW'),
(206, 0, 'SM-N800', 'KHJU234SdE211', '9.0', 'Y9', 302499523, 'Egypt', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-N800 Egypt KHJU234SdE211'),
(207, 1, 'SM-T670', 'G532FXWU1ASB1', '9.0', 'Y9', 411371060, 'Turkey', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T670 Turkey G532FXWU1ASB1'),
(208, 1, 'SM-T670', 'KITTY8642069P', '8.1', 'A2', 69234470, 'Canada', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T670 Canada KITTY8642069P'),
(209, 0, 'SM-W720', 'PPW899UYTQSAW', '7.1', 'B2', 909176395, 'KSA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 KSA PPW899UYTQSAW'),
(210, 1, 'SM-W720', 'PSUEW12L90UY1', '9.0', 'A2', 426905380, 'Australia', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 Australia PSUEW12L90UY1'),
(211, 1, 'SM-T560', 'PPW899UYTQSAW', '8.1', 'Y9', 527194332, 'Canada', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T560 Canada PPW899UYTQSAW'),
(212, 1, 'SM-P900', 'PSUEW12L90UY1', '6', 'A2', 194951608, 'Canada', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-P900 Canada PSUEW12L90UY1'),
(213, 1, 'SM-N800', 'V23SQPMXJAWQK', '6', 'P3', 311002757, 'Australia', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-N800 Australia V23SQPMXJAWQK'),
(214, 0, 'SM-W720', 'KHJU234SdE211', '8.1', 'U2', 604594436, 'Australia', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 Australia KHJU234SdE211'),
(215, 1, 'SM-W720', 'KITTY8642069P', '9.0', 'OO', 87181624, 'Hong Kong', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 Hong Kong KITTY8642069P'),
(216, 1, 'SM-W720', 'G532FXWU1ASB1', '8', 'P3', 274859682, 'USA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 USA G532FXWU1ASB1'),
(217, 0, 'SM-T560', 'PPW899UYTQSAW', '10', 'B2', 212822785, 'Turkey', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T560 Turkey PPW899UYTQSAW'),
(218, 0, 'SM-T670', 'KHJU234SdE211', '8.1', 'U2', 781480079, 'Australia', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T670 Australia KHJU234SdE211'),
(219, 0, 'SM-T670', 'V23SQPMXJAWQK', '9.0', 'Y9', 594737159, 'Egypt', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T670 Egypt V23SQPMXJAWQK'),
(220, 1, 'SM-T810', 'V23SQPMXJAWQK', '8', 'U2', 321549754, 'Hong Kong', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 Hong Kong V23SQPMXJAWQK'),
(221, 1, 'SM-P900', 'KHJU234SdE211', '8', 'K7', 250717480, 'Canada', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-P900 Canada KHJU234SdE211'),
(222, 1, 'SM-W720', 'G532FXWU1ASB1', '6', 'K7', 248173038, 'USA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 USA G532FXWU1ASB1'),
(223, 1, 'SM-W720', 'PSUEW12L90UY1', '9.0', 'P3', 421535870, 'Egypt', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 Egypt PSUEW12L90UY1'),
(224, 0, 'SM-T560', 'KHJU234SdE211', '9.0', 'K7', 703427633, 'Australia', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T560 Australia KHJU234SdE211'),
(225, 0, 'SM-T560', 'O98UQWKSAQATA', '8.1', 'OO', 952287976, 'KSA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T560 KSA O98UQWKSAQATA'),
(226, 0, 'SM-N800', 'KHJU234SdE211', '9.0', 'K7', 166726140, 'Qatar', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-N800 Qatar KHJU234SdE211'),
(227, 1, 'SM-T810', 'G532FXWU1ASB1', '9.0', 'B2', 724263958, 'USA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 USA G532FXWU1ASB1'),
(228, 1, 'SM-T810', 'KITTY8642069P', '6', 'OO', 296236610, 'Qatar', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 Qatar KITTY8642069P'),
(229, 0, 'SM-W720', 'OPU2357765CAT', '9.0', 'A2', 639667217, 'Canada', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 Canada OPU2357765CAT'),
(230, 1, 'SM-T810', 'V23SQPMXJAWQK', '8', 'U2', 30438708, 'Canada', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 Canada V23SQPMXJAWQK'),
(231, 1, 'SM-T560', 'O98UQWKSAQATA', '6', 'U2', 312488129, 'Canada', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T560 Canada O98UQWKSAQATA'),
(232, 1, 'SM-P900', 'PSUEW12L90UY1', '8.1', 'OO', 400644282, 'Egypt', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-P900 Egypt PSUEW12L90UY1'),
(233, 1, 'SM-T670', 'G532FXWU1ASB1', '8', 'U2', 144754297, 'USA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T670 USA G532FXWU1ASB1'),
(234, 1, 'SM-P900', 'PPW899UYTQSAW', '10', 'B2', 292824338, 'Canada', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-P900 Canada PPW899UYTQSAW'),
(235, 1, 'SM-T810', 'PSUEW12L90UY1', '8', 'OO', 831705055, 'USA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 USA PSUEW12L90UY1'),
(236, 0, 'SM-P900', 'PPW899UYTQSAW', '8.1', 'A2', 167718949, 'Canada', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-P900 Canada PPW899UYTQSAW'),
(237, 1, 'SM-N800', 'PSUEW12L90UY1', '8', 'P3', 950433554, 'Qatar', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-N800 Qatar PSUEW12L90UY1'),
(238, 1, 'SM-W720', 'KITTY8642069P', '10', 'B2', 329937568, 'USA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 USA KITTY8642069P'),
(239, 1, 'SM-P900', 'PSUEW12L90UY1', '8.1', 'P3', 859241623, 'USA', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-P900 USA PSUEW12L90UY1'),
(240, 0, 'SM-W720', 'V23SQPMXJAWQK', '10', 'U2', 380311087, 'Australia', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 Australia V23SQPMXJAWQK'),
(241, 1, 'SM-T810', 'OPU2357765CAT', '8', 'U2', 324107509, 'Australia', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 Australia OPU2357765CAT'),
(242, 1, 'SM-T560', 'G532FXWU1ASB1', '9.0', 'OO', 811384596, 'Egypt', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T560 Egypt G532FXWU1ASB1'),
(243, 0, 'SM-P900', 'OPU2357765CAT', '7.1', 'B2', 701932634, 'Australia', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-P900 Australia OPU2357765CAT'),
(244, 0, 'SM-T810', 'PSUEW12L90UY1', '8.1', 'Y9', 944014054, 'Turkey', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 Turkey PSUEW12L90UY1');

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
  `daily_free` bigint(11) NOT NULL,
  `price` float NOT NULL,
  `maintainance` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `site`
--

INSERT INTO `site` (`logo_as_text`, `logo_file`, `email`, `paypal`, `url`, `site-name`, `description`, `daily_free`, `price`, `maintainance`) VALUES
(1, './imgs/logo.png', 'mohannad@condize.com', 'paypal@googl.ecom', 'http://localhost/gsm', 'Sa2r El Roms', 'This is the site description', 3145728000, 1, 0);

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
  `balance` bigint(11) NOT NULL DEFAULT '0',
  `daily_balance` bigint(11) NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `admin` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `email`, `created`, `balance`, `daily_balance`, `last_login`, `admin`) VALUES
(1, 'Admin User', 'admin', 'admin', 'mohannadize15@gmail.com', '2019-10-26 20:26:38', 0, 3145728000, '2019-11-16 19:16:36', 1),
(3, 'Mohannad Hisham', 'mohannadize', 'asd', 'mohannadize15@gmail.com', '2019-10-27 17:54:20', 0, 2409069473, '2019-11-06 01:18:41', 0),
(6, 'poop', 'poop', 'cool', 'pop2@popawsd.asd', '2019-11-06 01:08:26', 0, 3145728000, '2019-11-16 20:28:03', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
