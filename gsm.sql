-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 24, 2020 at 01:44 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

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

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `model` mediumtext NOT NULL,
  `build_v` mediumtext NOT NULL,
  `android_v` mediumtext NOT NULL,
  `security_level` text DEFAULT NULL,
  `size` bigint(11) NOT NULL,
  `country` mediumtext NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `downloads` int(11) NOT NULL DEFAULT 0,
  `url` mediumtext NOT NULL,
  `search_text` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `type`, `model`, `build_v`, `android_v`, `security_level`, `size`, `country`, `created`, `downloads`, `url`, `search_text`) VALUES
(1, 0, 'SM-T810', 'PSUEW12L90UY1', '10', 'A2', 486794884, 'Qatar', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T810 Qatar PSUEW12L90UY1'),
(2, 0, 'SM-T670', 'G532FXWU1ASB1', '10', 'A2', 560829565, 'Canada', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T670 Canada G532FXWU1ASB1'),
(3, 0, 'SM-T560', 'O98UQWKSAQATA', '10', 'Y9', 545705140, 'Australia', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-T560 Australia O98UQWKSAQATA'),
(4, 0, 'SM-W720', 'V23SQPMXJAWQK', '8', 'OO', 559120490, 'Australia', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-W720 Australia V23SQPMXJAWQK'),
(5, 1, 'SM-N800', 'PPW899UYTQSAW', '10', 'B2', 748967773, 'Egypt', '2019-11-16 23:42:51', 0, 'https://google.com', 'SM-N800 Egypt PPW899UYTQSAW'),
(245, 0, 'SM-T670', 'O98UQWKSAQATA', '6', 'Y9', 258924442, 'Qatar', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T670 Qatar O98UQWKSAQATA'),
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
(243, 0, 'SM-P900', 'OPU2357765CAT', '7.1', 'B2', 701932634, 'Australia', '2019-11-16 23:42:51', 1, 'https://google.com', 'SM-P900 Australia OPU2357765CAT'),
(246, 0, 'SM-T560', 'O98UQWKSAQATA', '6', 'B2', 803470570, 'Australia', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T560 Australia O98UQWKSAQATA'),
(247, 0, 'SM-T810', 'PSUEW12L90UY1', '6', 'K7', 328411110, 'Hong Kong', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 Hong Kong PSUEW12L90UY1'),
(248, 0, 'SM-P900', 'PPW899UYTQSAW', '7.1', 'OO', 92760035, 'Qatar', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-P900 Qatar PPW899UYTQSAW'),
(249, 1, 'SM-T810', 'KHJU234SdE211', '6', 'Y9', 748911166, 'Canada', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 Canada KHJU234SdE211'),
(250, 1, 'SM-P900', 'KHJU234SdE211', '8.1', 'A2', 534550097, 'Egypt', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-P900 Egypt KHJU234SdE211'),
(251, 0, 'SM-W720', 'V23SQPMXJAWQK', '9.0', 'OO', 159225243, 'Qatar', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-W720 Qatar V23SQPMXJAWQK'),
(252, 0, 'SM-P900', 'V23SQPMXJAWQK', '9.0', 'OO', 224338677, 'Canada', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-P900 Canada V23SQPMXJAWQK'),
(253, 1, 'SM-T810', 'KHJU234SdE211', '10', 'U2', 195329111, 'Australia', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 Australia KHJU234SdE211'),
(254, 0, 'SM-N800', 'PPW899UYTQSAW', '9.0', 'Y9', 109312860, 'Turkey', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-N800 Turkey PPW899UYTQSAW'),
(255, 1, 'SM-P900', 'KHJU234SdE211', '9.0', 'K7', 658053206, 'Qatar', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-P900 Qatar KHJU234SdE211'),
(256, 0, 'SM-P900', 'KHJU234SdE211', '8.1', 'B2', 670750536, 'Hong Kong', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-P900 Hong Kong KHJU234SdE211'),
(257, 1, 'SM-T670', 'O98UQWKSAQATA', '6', 'Y9', 27369452, 'KSA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T670 KSA O98UQWKSAQATA'),
(258, 1, 'SM-T670', 'KITTY8642069P', '8', 'A2', 305592611, 'KSA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T670 KSA KITTY8642069P'),
(259, 0, 'SM-P900', 'KHJU234SdE211', '8.1', 'U2', 35195950, 'Australia', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-P900 Australia KHJU234SdE211'),
(260, 1, 'SM-T560', 'OPU2357765CAT', '8', 'OO', 881501390, 'Egypt', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T560 Egypt OPU2357765CAT'),
(261, 0, 'SM-T560', 'KHJU234SdE211', '6', 'A2', 825099149, 'Hong Kong', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T560 Hong Kong KHJU234SdE211'),
(262, 0, 'SM-T670', 'KITTY8642069P', '9.0', 'OO', 587937219, 'USA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T670 USA KITTY8642069P'),
(263, 1, 'SM-T560', 'V23SQPMXJAWQK', '6', 'B2', 249287972, 'Turkey', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T560 Turkey V23SQPMXJAWQK'),
(264, 0, 'SM-W720', 'G532FXWU1ASB1', '8', 'OO', 456538067, 'Hong Kong', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-W720 Hong Kong G532FXWU1ASB1'),
(265, 1, 'SM-T670', 'V23SQPMXJAWQK', '9.0', 'B2', 391925640, 'Hong Kong', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T670 Hong Kong V23SQPMXJAWQK'),
(266, 0, 'SM-P900', 'O98UQWKSAQATA', '7.1', 'P3', 297957479, 'Canada', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-P900 Canada O98UQWKSAQATA'),
(267, 1, 'SM-W720', 'O98UQWKSAQATA', '6', 'K7', 609599458, 'Qatar', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-W720 Qatar O98UQWKSAQATA'),
(268, 0, 'SM-T670', 'O98UQWKSAQATA', '7.1', 'A2', 440750345, 'Qatar', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T670 Qatar O98UQWKSAQATA'),
(269, 0, 'SM-W720', 'V23SQPMXJAWQK', '10', 'K7', 791291943, 'Qatar', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-W720 Qatar V23SQPMXJAWQK'),
(270, 0, 'SM-T560', 'O98UQWKSAQATA', '10', 'OO', 964287580, 'Turkey', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T560 Turkey O98UQWKSAQATA'),
(271, 1, 'SM-P900', 'PPW899UYTQSAW', '7.1', 'K7', 242864007, 'KSA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-P900 KSA PPW899UYTQSAW'),
(272, 0, 'SM-W720', 'V23SQPMXJAWQK', '8.1', 'U2', 174237205, 'USA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-W720 USA V23SQPMXJAWQK'),
(273, 0, 'SM-T810', 'KHJU234SdE211', '7.1', 'K7', 744400502, 'KSA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 KSA KHJU234SdE211'),
(274, 0, 'SM-T810', 'V23SQPMXJAWQK', '8.1', 'OO', 189846408, 'USA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 USA V23SQPMXJAWQK'),
(275, 0, 'SM-T670', 'KHJU234SdE211', '8.1', 'A2', 265650348, 'Qatar', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T670 Qatar KHJU234SdE211'),
(276, 1, 'SM-P900', 'G532FXWU1ASB1', '6', 'OO', 731779069, 'USA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-P900 USA G532FXWU1ASB1'),
(277, 1, 'SM-W720', 'OPU2357765CAT', '9.0', 'K7', 193709863, 'Hong Kong', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-W720 Hong Kong OPU2357765CAT'),
(278, 0, 'SM-T810', 'O98UQWKSAQATA', '7.1', 'A2', 232135267, 'Qatar', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 Qatar O98UQWKSAQATA'),
(279, 0, 'SM-P900', 'KHJU234SdE211', '9.0', 'OO', 345809525, 'Canada', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-P900 Canada KHJU234SdE211'),
(280, 1, 'SM-N800', 'KHJU234SdE211', '7.1', 'Y9', 789454611, 'Qatar', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-N800 Qatar KHJU234SdE211'),
(281, 0, 'SM-T810', 'PSUEW12L90UY1', '7.1', 'OO', 417151446, 'KSA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 KSA PSUEW12L90UY1'),
(282, 1, 'SM-N800', 'PPW899UYTQSAW', '6', 'P3', 305433084, 'KSA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-N800 KSA PPW899UYTQSAW'),
(283, 1, 'SM-T560', 'V23SQPMXJAWQK', '6', 'U2', 410403543, 'Canada', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T560 Canada V23SQPMXJAWQK'),
(284, 1, 'SM-T560', 'PSUEW12L90UY1', '7.1', 'OO', 753139896, 'Turkey', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T560 Turkey PSUEW12L90UY1'),
(285, 0, 'SM-T560', 'PPW899UYTQSAW', '9.0', 'U2', 981975040, 'Qatar', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T560 Qatar PPW899UYTQSAW'),
(286, 1, 'SM-W720', 'KITTY8642069P', '9.0', 'OO', 230570081, 'KSA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-W720 KSA KITTY8642069P'),
(287, 0, 'SM-T560', 'KHJU234SdE211', '9.0', 'U2', 821132891, 'USA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T560 USA KHJU234SdE211'),
(288, 0, 'SM-T560', 'PSUEW12L90UY1', '6', 'U2', 885849475, 'Hong Kong', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T560 Hong Kong PSUEW12L90UY1'),
(289, 1, 'SM-P900', 'KITTY8642069P', '10', 'Y9', 589928190, 'Turkey', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-P900 Turkey KITTY8642069P'),
(290, 1, 'SM-T560', 'KHJU234SdE211', '9.0', 'U2', 360111740, 'USA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T560 USA KHJU234SdE211'),
(291, 0, 'SM-T810', 'KITTY8642069P', '8.1', 'K7', 233418175, 'Hong Kong', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 Hong Kong KITTY8642069P'),
(292, 0, 'SM-T670', 'OPU2357765CAT', '8', 'A2', 43161738, 'USA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T670 USA OPU2357765CAT'),
(293, 0, 'SM-T670', 'PPW899UYTQSAW', '6', 'OO', 576964809, 'Hong Kong', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T670 Hong Kong PPW899UYTQSAW'),
(294, 0, 'SM-N800', 'G532FXWU1ASB1', '6', 'U2', 306703736, 'KSA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-N800 KSA G532FXWU1ASB1'),
(295, 0, 'SM-W720', 'PSUEW12L90UY1', '8.1', 'A2', 621875864, 'Hong Kong', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-W720 Hong Kong PSUEW12L90UY1'),
(296, 0, 'SM-T810', 'PSUEW12L90UY1', '9.0', 'A2', 373129682, 'USA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 USA PSUEW12L90UY1'),
(297, 0, 'SM-T670', 'PPW899UYTQSAW', '6', 'A2', 265492120, 'Turkey', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T670 Turkey PPW899UYTQSAW'),
(298, 1, 'SM-T810', 'PPW899UYTQSAW', '8.1', 'U2', 888987507, 'Australia', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 Australia PPW899UYTQSAW'),
(299, 0, 'SM-T810', 'KHJU234SdE211', '6', 'OO', 599275898, 'Hong Kong', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 Hong Kong KHJU234SdE211'),
(300, 1, 'SM-T560', 'PSUEW12L90UY1', '8', 'B2', 677574307, 'KSA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T560 KSA PSUEW12L90UY1'),
(301, 0, 'SM-T670', 'PSUEW12L90UY1', '9.0', 'U2', 330871130, 'Egypt', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T670 Egypt PSUEW12L90UY1'),
(302, 1, 'SM-T810', 'G532FXWU1ASB1', '9.0', 'P3', 102336166, 'Hong Kong', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 Hong Kong G532FXWU1ASB1'),
(303, 1, 'SM-T670', 'PPW899UYTQSAW', '10', 'OO', 508072218, 'KSA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T670 KSA PPW899UYTQSAW'),
(304, 1, 'SM-W720', 'KHJU234SdE211', '9.0', 'P3', 456304832, 'Australia', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-W720 Australia KHJU234SdE211'),
(305, 0, 'SM-P900', 'PPW899UYTQSAW', '9.0', 'Y9', 621796107, 'Turkey', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-P900 Turkey PPW899UYTQSAW'),
(306, 0, 'SM-N800', 'PSUEW12L90UY1', '6', 'B2', 386471749, 'Turkey', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-N800 Turkey PSUEW12L90UY1'),
(307, 0, 'SM-P900', 'PSUEW12L90UY1', '6', 'U2', 531468832, 'Turkey', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-P900 Turkey PSUEW12L90UY1'),
(308, 1, 'SM-T810', 'G532FXWU1ASB1', '10', 'P3', 554536062, 'Qatar', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 Qatar G532FXWU1ASB1'),
(309, 1, 'SM-N800', 'G532FXWU1ASB1', '6', 'Y9', 478205993, 'USA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-N800 USA G532FXWU1ASB1'),
(310, 0, 'SM-T670', 'KHJU234SdE211', '6', 'A2', 59262318, 'USA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T670 USA KHJU234SdE211'),
(311, 1, 'SM-W720', 'O98UQWKSAQATA', '10', 'A2', 383281854, 'Egypt', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-W720 Egypt O98UQWKSAQATA'),
(312, 0, 'SM-W720', 'V23SQPMXJAWQK', '10', 'A2', 330734683, 'KSA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-W720 KSA V23SQPMXJAWQK'),
(313, 1, 'SM-N800', 'OPU2357765CAT', '6', 'K7', 10843500, 'Turkey', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-N800 Turkey OPU2357765CAT'),
(314, 0, 'SM-T810', 'G532FXWU1ASB1', '10', 'U2', 593767357, 'Turkey', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 Turkey G532FXWU1ASB1'),
(315, 1, 'SM-N800', 'OPU2357765CAT', '7.1', 'A2', 238706546, 'KSA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-N800 KSA OPU2357765CAT'),
(316, 0, 'SM-N800', 'KITTY8642069P', '8', 'Y9', 122521194, 'Qatar', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-N800 Qatar KITTY8642069P'),
(317, 1, 'SM-T670', 'OPU2357765CAT', '7.1', 'A2', 695488714, 'Egypt', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T670 Egypt OPU2357765CAT'),
(318, 0, 'SM-N800', 'OPU2357765CAT', '7.1', 'A2', 376027356, 'Canada', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-N800 Canada OPU2357765CAT'),
(319, 1, 'SM-T670', 'KITTY8642069P', '7.1', 'P3', 840375529, 'USA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T670 USA KITTY8642069P'),
(320, 0, 'SM-W720', 'PPW899UYTQSAW', '9.0', 'OO', 866139033, 'Australia', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-W720 Australia PPW899UYTQSAW'),
(321, 0, 'SM-T810', 'PPW899UYTQSAW', '8', 'OO', 305397902, 'USA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 USA PPW899UYTQSAW'),
(322, 1, 'SM-T670', 'G532FXWU1ASB1', '7.1', 'A2', 844706207, 'Australia', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T670 Australia G532FXWU1ASB1'),
(323, 0, 'SM-P900', 'OPU2357765CAT', '10', 'U2', 662453669, 'KSA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-P900 KSA OPU2357765CAT'),
(324, 0, 'SM-T670', 'PPW899UYTQSAW', '6', 'Y9', 541583175, 'Australia', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T670 Australia PPW899UYTQSAW'),
(325, 0, 'SM-P900', 'V23SQPMXJAWQK', '7.1', 'B2', 944113604, 'USA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-P900 USA V23SQPMXJAWQK'),
(326, 1, 'SM-P900', 'V23SQPMXJAWQK', '7.1', 'K7', 20194873, 'USA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-P900 USA V23SQPMXJAWQK'),
(327, 1, 'SM-T670', 'OPU2357765CAT', '7.1', 'OO', 37793918, 'Hong Kong', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T670 Hong Kong OPU2357765CAT'),
(328, 0, 'SM-W720', 'PPW899UYTQSAW', '7.1', 'K7', 428912716, 'Canada', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-W720 Canada PPW899UYTQSAW'),
(329, 0, 'SM-T560', 'KHJU234SdE211', '10', 'Y9', 158628770, 'Egypt', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T560 Egypt KHJU234SdE211'),
(330, 1, 'SM-T560', 'KHJU234SdE211', '6', 'A2', 698525764, 'Australia', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T560 Australia KHJU234SdE211'),
(331, 0, 'SM-T560', 'PPW899UYTQSAW', '7.1', 'K7', 563308504, 'Australia', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T560 Australia PPW899UYTQSAW'),
(332, 1, 'SM-N800', 'V23SQPMXJAWQK', '6', 'K7', 74063888, 'Egypt', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-N800 Egypt V23SQPMXJAWQK'),
(333, 1, 'SM-N800', 'G532FXWU1ASB1', '6', 'Y9', 164575551, 'Canada', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-N800 Canada G532FXWU1ASB1'),
(334, 1, 'SM-N800', 'KITTY8642069P', '10', 'B2', 470458484, 'Turkey', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-N800 Turkey KITTY8642069P'),
(335, 0, 'SM-T670', 'PSUEW12L90UY1', '10', 'Y9', 407093896, 'KSA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T670 KSA PSUEW12L90UY1'),
(336, 1, 'SM-W720', 'G532FXWU1ASB1', '9.0', 'U2', 595821000, 'USA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-W720 USA G532FXWU1ASB1'),
(337, 1, 'SM-N800', 'G532FXWU1ASB1', '10', 'P3', 957476738, 'Australia', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-N800 Australia G532FXWU1ASB1'),
(338, 0, 'SM-P900', 'O98UQWKSAQATA', '8', 'A2', 532908185, 'USA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-P900 USA O98UQWKSAQATA');
INSERT INTO `files` (`id`, `type`, `model`, `build_v`, `android_v`, `security_level`, `size`, `country`, `created`, `downloads`, `url`, `search_text`) VALUES
(339, 1, 'SM-T560', 'KITTY8642069P', '8.1', 'OO', 949920015, 'Turkey', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T560 Turkey KITTY8642069P'),
(340, 1, 'SM-T810', 'G532FXWU1ASB1', '7.1', 'B2', 332248733, 'Egypt', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 Egypt G532FXWU1ASB1'),
(341, 0, 'SM-T810', 'G532FXWU1ASB1', '9.0', 'Y9', 509727121, 'Turkey', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 Turkey G532FXWU1ASB1'),
(342, 0, 'SM-T810', 'KHJU234SdE211', '8.1', 'B2', 358700275, 'Hong Kong', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 Hong Kong KHJU234SdE211'),
(343, 0, 'SM-T670', 'V23SQPMXJAWQK', '6', 'B2', 462964466, 'USA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T670 USA V23SQPMXJAWQK'),
(344, 0, 'SM-N800', 'PPW899UYTQSAW', '8', 'Y9', 94108975, 'Turkey', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-N800 Turkey PPW899UYTQSAW'),
(345, 0, 'SM-T670', 'KHJU234SdE211', '8.1', 'U2', 818302017, 'Turkey', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T670 Turkey KHJU234SdE211'),
(346, 0, 'SM-N800', 'KHJU234SdE211', '6', 'OO', 266333887, 'Turkey', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-N800 Turkey KHJU234SdE211'),
(347, 1, 'SM-P900', 'PPW899UYTQSAW', '8', 'B2', 862681719, 'Turkey', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-P900 Turkey PPW899UYTQSAW'),
(348, 0, 'SM-T670', 'PPW899UYTQSAW', '8.1', 'P3', 479605060, 'Hong Kong', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T670 Hong Kong PPW899UYTQSAW'),
(349, 0, 'SM-N800', 'KITTY8642069P', '10', 'A2', 856613991, 'Egypt', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-N800 Egypt KITTY8642069P'),
(350, 1, 'SM-W720', 'PSUEW12L90UY1', '7.1', 'U2', 302567281, 'Qatar', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-W720 Qatar PSUEW12L90UY1'),
(351, 1, 'SM-W720', 'PPW899UYTQSAW', '8.1', 'K7', 407511660, 'Australia', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-W720 Australia PPW899UYTQSAW'),
(352, 0, 'SM-T560', 'OPU2357765CAT', '8', 'OO', 255880707, 'Turkey', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T560 Turkey OPU2357765CAT'),
(353, 1, 'SM-T810', 'KITTY8642069P', '9.0', 'B2', 857289045, 'Australia', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 Australia KITTY8642069P'),
(354, 1, 'SM-T810', 'KHJU234SdE211', '7.1', 'P3', 64999317, 'Canada', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 Canada KHJU234SdE211'),
(355, 0, 'SM-T560', 'V23SQPMXJAWQK', '6', 'Y9', 549735206, 'Egypt', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T560 Egypt V23SQPMXJAWQK'),
(356, 0, 'SM-N800', 'OPU2357765CAT', '6', 'P3', 516674528, 'Hong Kong', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-N800 Hong Kong OPU2357765CAT'),
(357, 0, 'SM-W720', 'KITTY8642069P', '6', 'B2', 11558475, 'Egypt', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-W720 Egypt KITTY8642069P'),
(358, 1, 'SM-P900', 'V23SQPMXJAWQK', '8', 'K7', 983145706, 'Canada', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-P900 Canada V23SQPMXJAWQK'),
(359, 0, 'SM-T810', 'KITTY8642069P', '7.1', 'U2', 330439313, 'Hong Kong', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 Hong Kong KITTY8642069P'),
(360, 1, 'SM-T560', 'V23SQPMXJAWQK', '8', 'K7', 42132553, 'Canada', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T560 Canada V23SQPMXJAWQK'),
(361, 0, 'SM-N800', 'KHJU234SdE211', '9.0', 'U2', 438894751, 'Canada', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-N800 Canada KHJU234SdE211'),
(362, 1, 'SM-N800', 'PPW899UYTQSAW', '8.1', 'B2', 259990058, 'Hong Kong', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-N800 Hong Kong PPW899UYTQSAW'),
(363, 1, 'SM-W720', 'KITTY8642069P', '10', 'P3', 137256253, 'Turkey', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-W720 Turkey KITTY8642069P'),
(364, 0, 'SM-W720', 'PPW899UYTQSAW', '10', 'P3', 910094647, 'Turkey', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-W720 Turkey PPW899UYTQSAW'),
(365, 1, 'SM-N800', 'OPU2357765CAT', '8.1', 'U2', 997695528, 'Canada', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-N800 Canada OPU2357765CAT'),
(366, 1, 'SM-T670', 'KITTY8642069P', '8', 'OO', 192971936, 'Canada', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T670 Canada KITTY8642069P'),
(367, 1, 'SM-P900', 'OPU2357765CAT', '8.1', 'Y9', 407329109, 'USA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-P900 USA OPU2357765CAT'),
(368, 0, 'SM-T810', 'PSUEW12L90UY1', '6', 'Y9', 740368000, 'Canada', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 Canada PSUEW12L90UY1'),
(369, 1, 'SM-T810', 'O98UQWKSAQATA', '10', 'Y9', 560724173, 'USA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 USA O98UQWKSAQATA'),
(370, 1, 'SM-T670', 'V23SQPMXJAWQK', '6', 'K7', 64042429, 'KSA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T670 KSA V23SQPMXJAWQK'),
(371, 1, 'SM-T810', 'PPW899UYTQSAW', '10', 'A2', 759134028, 'Turkey', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 Turkey PPW899UYTQSAW'),
(372, 0, 'SM-T670', 'V23SQPMXJAWQK', '7.1', 'P3', 133203200, 'Hong Kong', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T670 Hong Kong V23SQPMXJAWQK'),
(373, 1, 'SM-T560', 'O98UQWKSAQATA', '7.1', 'Y9', 388669359, 'Qatar', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T560 Qatar O98UQWKSAQATA'),
(374, 0, 'SM-T670', 'O98UQWKSAQATA', '8.1', 'A2', 619214281, 'Qatar', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T670 Qatar O98UQWKSAQATA'),
(375, 0, 'SM-T810', 'G532FXWU1ASB1', '8', 'B2', 790143636, 'Turkey', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 Turkey G532FXWU1ASB1'),
(376, 0, 'SM-T560', 'KITTY8642069P', '9.0', 'U2', 233782617, 'Egypt', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T560 Egypt KITTY8642069P'),
(377, 0, 'SM-P900', 'OPU2357765CAT', '8.1', 'A2', 369966246, 'Hong Kong', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-P900 Hong Kong OPU2357765CAT'),
(378, 0, 'SM-P900', 'OPU2357765CAT', '6', 'A2', 738050296, 'Turkey', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-P900 Turkey OPU2357765CAT'),
(379, 1, 'SM-N800', 'OPU2357765CAT', '8', 'P3', 181932879, 'USA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-N800 USA OPU2357765CAT'),
(380, 0, 'SM-T810', 'OPU2357765CAT', '8.1', 'B2', 165063701, 'Hong Kong', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 Hong Kong OPU2357765CAT'),
(381, 1, 'SM-N800', 'KHJU234SdE211', '9.0', 'OO', 751438540, 'Hong Kong', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-N800 Hong Kong KHJU234SdE211'),
(382, 0, 'SM-T560', 'PPW899UYTQSAW', '8.1', 'Y9', 401521394, 'Qatar', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T560 Qatar PPW899UYTQSAW'),
(383, 0, 'SM-P900', 'O98UQWKSAQATA', '10', 'B2', 967900188, 'KSA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-P900 KSA O98UQWKSAQATA'),
(384, 0, 'SM-N800', 'PPW899UYTQSAW', '8.1', 'OO', 286138758, 'USA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-N800 USA PPW899UYTQSAW'),
(385, 1, 'SM-T670', 'G532FXWU1ASB1', '9.0', 'OO', 142769363, 'Australia', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T670 Australia G532FXWU1ASB1'),
(386, 1, 'SM-N800', 'PPW899UYTQSAW', '9.0', 'P3', 744887565, 'Qatar', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-N800 Qatar PPW899UYTQSAW'),
(387, 0, 'SM-W720', 'G532FXWU1ASB1', '8', 'K7', 40299965, 'Hong Kong', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-W720 Hong Kong G532FXWU1ASB1'),
(388, 0, 'SM-N800', 'KHJU234SdE211', '8', 'K7', 64330951, 'Qatar', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-N800 Qatar KHJU234SdE211'),
(389, 1, 'SM-W720', 'KITTY8642069P', '6', 'B2', 265769149, 'Canada', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-W720 Canada KITTY8642069P'),
(390, 0, 'SM-N800', 'V23SQPMXJAWQK', '10', 'K7', 12252506, 'Qatar', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-N800 Qatar V23SQPMXJAWQK'),
(391, 1, 'SM-T670', 'KHJU234SdE211', '9.0', 'Y9', 974106939, 'USA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T670 USA KHJU234SdE211'),
(392, 1, 'SM-N800', 'O98UQWKSAQATA', '6', 'Y9', 579364516, 'Egypt', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-N800 Egypt O98UQWKSAQATA'),
(393, 0, 'SM-T810', 'G532FXWU1ASB1', '10', 'A2', 897137045, 'Australia', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 Australia G532FXWU1ASB1'),
(394, 1, 'SM-T670', 'V23SQPMXJAWQK', '9.0', 'Y9', 742323490, 'Qatar', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T670 Qatar V23SQPMXJAWQK'),
(395, 0, 'SM-N800', 'KITTY8642069P', '8.1', 'Y9', 935246581, 'KSA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-N800 KSA KITTY8642069P'),
(396, 1, 'SM-T810', 'KHJU234SdE211', '8', 'P3', 198010064, 'Australia', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 Australia KHJU234SdE211'),
(397, 0, 'SM-T560', 'KHJU234SdE211', '9.0', 'OO', 608403881, 'Australia', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T560 Australia KHJU234SdE211'),
(398, 0, 'SM-P900', 'PPW899UYTQSAW', '8.1', 'P3', 882295707, 'Hong Kong', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-P900 Hong Kong PPW899UYTQSAW'),
(399, 1, 'SM-T810', 'KHJU234SdE211', '6', 'K7', 117504750, 'Egypt', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 Egypt KHJU234SdE211'),
(400, 0, 'SM-T560', 'KITTY8642069P', '10', 'B2', 659357205, 'Hong Kong', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T560 Hong Kong KITTY8642069P'),
(401, 1, 'SM-N800', 'PPW899UYTQSAW', '9.0', 'Y9', 793271429, 'KSA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-N800 KSA PPW899UYTQSAW'),
(402, 0, 'SM-T560', 'KITTY8642069P', '8.1', 'U2', 291355620, 'Qatar', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T560 Qatar KITTY8642069P'),
(403, 1, 'SM-N800', 'OPU2357765CAT', '8', 'A2', 230186571, 'Hong Kong', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-N800 Hong Kong OPU2357765CAT'),
(404, 1, 'SM-N800', 'KHJU234SdE211', '9.0', 'Y9', 398804035, 'Australia', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-N800 Australia KHJU234SdE211'),
(405, 1, 'SM-T810', 'O98UQWKSAQATA', '9.0', 'P3', 594082972, 'Australia', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 Australia O98UQWKSAQATA'),
(406, 0, 'SM-T810', 'KITTY8642069P', '9.0', 'A2', 594569219, 'KSA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 KSA KITTY8642069P'),
(407, 1, 'SM-T670', 'O98UQWKSAQATA', '6', 'U2', 31732523, 'Turkey', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T670 Turkey O98UQWKSAQATA'),
(408, 0, 'SM-N800', 'KITTY8642069P', '6', 'Y9', 264979323, 'Canada', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-N800 Canada KITTY8642069P'),
(409, 0, 'SM-T670', 'KITTY8642069P', '8', 'A2', 590249762, 'Canada', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T670 Canada KITTY8642069P'),
(410, 1, 'SM-T810', 'PSUEW12L90UY1', '8', 'A2', 448297851, 'KSA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 KSA PSUEW12L90UY1'),
(411, 1, 'SM-T810', 'O98UQWKSAQATA', '8.1', 'B2', 111572361, 'Egypt', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 Egypt O98UQWKSAQATA'),
(412, 1, 'SM-T810', 'PPW899UYTQSAW', '8', 'B2', 49153964, 'Hong Kong', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 Hong Kong PPW899UYTQSAW'),
(413, 0, 'SM-T560', 'O98UQWKSAQATA', '10', 'U2', 249747200, 'KSA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T560 KSA O98UQWKSAQATA'),
(414, 0, 'SM-T810', 'PPW899UYTQSAW', '9.0', 'OO', 382459198, 'Hong Kong', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 Hong Kong PPW899UYTQSAW'),
(415, 1, 'SM-T810', 'KITTY8642069P', '6', 'A2', 328466649, 'USA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 USA KITTY8642069P'),
(416, 0, 'SM-T560', 'OPU2357765CAT', '8.1', 'OO', 278108346, 'Egypt', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T560 Egypt OPU2357765CAT'),
(417, 0, 'SM-W720', 'KITTY8642069P', '9.0', 'A2', 502713527, 'Canada', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-W720 Canada KITTY8642069P'),
(418, 1, 'SM-T670', 'G532FXWU1ASB1', '8.1', 'Y9', 554737350, 'Egypt', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T670 Egypt G532FXWU1ASB1'),
(419, 1, 'SM-P900', 'OPU2357765CAT', '6', 'P3', 835730465, 'Canada', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-P900 Canada OPU2357765CAT'),
(420, 1, 'SM-N800', 'KITTY8642069P', '7.1', 'Y9', 994815708, 'Hong Kong', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-N800 Hong Kong KITTY8642069P'),
(421, 0, 'SM-W720', 'KHJU234SdE211', '6', 'P3', 845878499, 'Turkey', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-W720 Turkey KHJU234SdE211'),
(422, 1, 'SM-T810', 'V23SQPMXJAWQK', '6', 'OO', 677005614, 'Australia', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 Australia V23SQPMXJAWQK'),
(423, 0, 'SM-W720', 'OPU2357765CAT', '6', 'A2', 106134787, 'Canada', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-W720 Canada OPU2357765CAT'),
(424, 0, 'SM-W720', 'KHJU234SdE211', '7.1', 'P3', 55513181, 'Qatar', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-W720 Qatar KHJU234SdE211'),
(425, 1, 'SM-P900', 'PPW899UYTQSAW', '6', 'A2', 324258081, 'USA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-P900 USA PPW899UYTQSAW'),
(426, 0, 'SM-T810', 'KHJU234SdE211', '8', 'B2', 659979866, 'Qatar', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 Qatar KHJU234SdE211'),
(427, 0, 'SM-N800', 'O98UQWKSAQATA', '7.1', 'K7', 528626894, 'Qatar', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-N800 Qatar O98UQWKSAQATA'),
(428, 0, 'SM-T670', 'PPW899UYTQSAW', '7.1', 'Y9', 443120987, 'Canada', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T670 Canada PPW899UYTQSAW'),
(429, 0, 'SM-T810', 'O98UQWKSAQATA', '8.1', 'Y9', 451764120, 'Hong Kong', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 Hong Kong O98UQWKSAQATA'),
(430, 1, 'SM-P900', 'V23SQPMXJAWQK', '10', 'OO', 500373439, 'Canada', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-P900 Canada V23SQPMXJAWQK'),
(431, 1, 'SM-T560', 'KHJU234SdE211', '8', 'OO', 816057116, 'Canada', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T560 Canada KHJU234SdE211'),
(432, 1, 'SM-T670', 'PPW899UYTQSAW', '10', 'U2', 540892948, 'Qatar', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T670 Qatar PPW899UYTQSAW'),
(433, 1, 'SM-W720', 'OPU2357765CAT', '7.1', 'A2', 809950260, 'Turkey', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-W720 Turkey OPU2357765CAT'),
(434, 1, 'SM-T670', 'G532FXWU1ASB1', '8', 'K7', 16211983, 'Australia', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T670 Australia G532FXWU1ASB1'),
(435, 1, 'SM-W720', 'KHJU234SdE211', '7.1', 'OO', 789276595, 'Canada', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-W720 Canada KHJU234SdE211'),
(436, 0, 'SM-T670', 'O98UQWKSAQATA', '8.1', 'U2', 50416476, 'Australia', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T670 Australia O98UQWKSAQATA'),
(437, 0, 'SM-T670', 'KHJU234SdE211', '9.0', 'OO', 247331800, 'KSA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T670 KSA KHJU234SdE211'),
(438, 1, 'SM-T810', 'G532FXWU1ASB1', '8.1', 'OO', 376911537, 'KSA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 KSA G532FXWU1ASB1'),
(439, 0, 'SM-P900', 'G532FXWU1ASB1', '6', 'A2', 680908756, 'USA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-P900 USA G532FXWU1ASB1'),
(440, 1, 'SM-N800', 'KITTY8642069P', '7.1', 'OO', 338896771, 'KSA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-N800 KSA KITTY8642069P'),
(441, 1, 'SM-P900', 'OPU2357765CAT', '9.0', 'K7', 675297971, 'USA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-P900 USA OPU2357765CAT'),
(442, 0, 'SM-W720', 'PSUEW12L90UY1', '8.1', 'B2', 955976197, 'KSA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-W720 KSA PSUEW12L90UY1'),
(443, 1, 'SM-N800', 'PPW899UYTQSAW', '8', 'K7', 936785611, 'Turkey', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-N800 Turkey PPW899UYTQSAW'),
(444, 1, 'SM-T810', 'G532FXWU1ASB1', '9.0', 'Y9', 993379018, 'USA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 USA G532FXWU1ASB1'),
(445, 1, 'SM-T560', 'OPU2357765CAT', '7.1', 'P3', 220031305, 'Turkey', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T560 Turkey OPU2357765CAT'),
(446, 0, 'SM-W720', 'V23SQPMXJAWQK', '7.1', 'U2', 240048728, 'Qatar', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-W720 Qatar V23SQPMXJAWQK'),
(447, 1, 'SM-T560', 'KHJU234SdE211', '8.1', 'U2', 980335816, 'Canada', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T560 Canada KHJU234SdE211'),
(448, 1, 'SM-W720', 'PPW899UYTQSAW', '10', 'Y9', 694607454, 'USA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-W720 USA PPW899UYTQSAW'),
(449, 1, 'SM-P900', 'KHJU234SdE211', '7.1', 'A2', 751418394, 'Qatar', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-P900 Qatar KHJU234SdE211'),
(450, 0, 'SM-N800', 'V23SQPMXJAWQK', '10', 'P3', 939884720, 'Egypt', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-N800 Egypt V23SQPMXJAWQK'),
(451, 0, 'SM-W720', 'V23SQPMXJAWQK', '10', 'Y9', 610656200, 'Egypt', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-W720 Egypt V23SQPMXJAWQK'),
(452, 1, 'SM-W720', 'G532FXWU1ASB1', '7.1', 'B2', 720070834, 'KSA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-W720 KSA G532FXWU1ASB1'),
(453, 0, 'SM-T560', 'PSUEW12L90UY1', '10', 'A2', 856531469, 'KSA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T560 KSA PSUEW12L90UY1'),
(454, 0, 'SM-T810', 'V23SQPMXJAWQK', '10', 'P3', 276259270, 'USA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 USA V23SQPMXJAWQK'),
(455, 1, 'SM-P900', 'G532FXWU1ASB1', '8.1', 'A2', 560773768, 'Qatar', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-P900 Qatar G532FXWU1ASB1'),
(456, 1, 'SM-N800', 'O98UQWKSAQATA', '6', 'B2', 772007023, 'KSA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-N800 KSA O98UQWKSAQATA'),
(457, 0, 'SM-P900', 'V23SQPMXJAWQK', '6', 'K7', 621175402, 'KSA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-P900 KSA V23SQPMXJAWQK'),
(458, 0, 'SM-N800', 'OPU2357765CAT', '8', 'B2', 312588692, 'KSA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-N800 KSA OPU2357765CAT'),
(459, 1, 'SM-W720', 'O98UQWKSAQATA', '8', 'B2', 757245263, 'Canada', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-W720 Canada O98UQWKSAQATA'),
(460, 1, 'SM-T810', 'V23SQPMXJAWQK', '7.1', 'U2', 685996112, 'KSA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 KSA V23SQPMXJAWQK'),
(461, 0, 'SM-T810', 'V23SQPMXJAWQK', '6', 'P3', 920840312, 'Qatar', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 Qatar V23SQPMXJAWQK'),
(462, 1, 'SM-W720', 'PSUEW12L90UY1', '10', 'K7', 177639849, 'Australia', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-W720 Australia PSUEW12L90UY1'),
(463, 1, 'SM-T560', 'PPW899UYTQSAW', '10', 'Y9', 837337525, 'Canada', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T560 Canada PPW899UYTQSAW'),
(464, 0, 'SM-W720', 'V23SQPMXJAWQK', '6', 'B2', 378182593, 'Hong Kong', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-W720 Hong Kong V23SQPMXJAWQK'),
(465, 0, 'SM-N800', 'O98UQWKSAQATA', '8.1', 'A2', 168835907, 'Australia', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-N800 Australia O98UQWKSAQATA'),
(466, 0, 'SM-N800', 'G532FXWU1ASB1', '9.0', 'K7', 361816270, 'Australia', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-N800 Australia G532FXWU1ASB1'),
(467, 1, 'SM-T810', 'KHJU234SdE211', '8.1', 'Y9', 106432282, 'Hong Kong', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 Hong Kong KHJU234SdE211'),
(468, 0, 'SM-P900', 'KITTY8642069P', '10', 'OO', 285381815, 'Qatar', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-P900 Qatar KITTY8642069P'),
(469, 0, 'SM-W720', 'KHJU234SdE211', '10', 'OO', 49958965, 'Australia', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-W720 Australia KHJU234SdE211'),
(470, 1, 'SM-P900', 'G532FXWU1ASB1', '7.1', 'K7', 441765835, 'Australia', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-P900 Australia G532FXWU1ASB1'),
(471, 0, 'SM-W720', 'PSUEW12L90UY1', '6', 'B2', 633624461, 'Egypt', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-W720 Egypt PSUEW12L90UY1'),
(472, 1, 'SM-T810', 'OPU2357765CAT', '8', 'Y9', 690057237, 'USA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 USA OPU2357765CAT'),
(473, 0, 'SM-T560', 'G532FXWU1ASB1', '7.1', 'A2', 104579291, 'Hong Kong', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T560 Hong Kong G532FXWU1ASB1'),
(474, 1, 'SM-T560', 'OPU2357765CAT', '6', 'K7', 852994158, 'Qatar', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T560 Qatar OPU2357765CAT'),
(475, 0, 'SM-P900', 'OPU2357765CAT', '9.0', 'P3', 172640257, 'USA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-P900 USA OPU2357765CAT'),
(476, 0, 'SM-T810', 'KITTY8642069P', '8.1', 'Y9', 200889162, 'Turkey', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 Turkey KITTY8642069P'),
(477, 0, 'SM-T560', 'PSUEW12L90UY1', '8', 'A2', 800133941, 'Egypt', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T560 Egypt PSUEW12L90UY1'),
(478, 0, 'SM-P900', 'O98UQWKSAQATA', '8', 'A2', 389223784, 'Egypt', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-P900 Egypt O98UQWKSAQATA'),
(479, 0, 'SM-T670', 'V23SQPMXJAWQK', '7.1', 'K7', 622284370, 'Hong Kong', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T670 Hong Kong V23SQPMXJAWQK'),
(480, 1, 'SM-T670', 'O98UQWKSAQATA', '6', 'K7', 348092475, 'Qatar', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T670 Qatar O98UQWKSAQATA'),
(481, 1, 'SM-P900', 'PSUEW12L90UY1', '7.1', 'U2', 321809989, 'Australia', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-P900 Australia PSUEW12L90UY1'),
(482, 0, 'SM-N800', 'KITTY8642069P', '7.1', 'OO', 768955435, 'Egypt', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-N800 Egypt KITTY8642069P'),
(483, 0, 'SM-P900', 'PSUEW12L90UY1', '8', 'B2', 664732832, 'Australia', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-P900 Australia PSUEW12L90UY1'),
(484, 0, 'SM-T670', 'KHJU234SdE211', '10', 'A2', 399221344, 'KSA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T670 KSA KHJU234SdE211'),
(485, 0, 'SM-P900', 'PPW899UYTQSAW', '6', 'Y9', 348002406, 'USA', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-P900 USA PPW899UYTQSAW'),
(486, 1, 'SM-T810', 'KHJU234SdE211', '6', 'U2', 881387502, 'Hong Kong', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 Hong Kong KHJU234SdE211'),
(487, 1, 'SM-T810', 'G532FXWU1ASB1', '10', 'U2', 754414853, 'Canada', '2019-11-26 21:03:04', 0, 'https://google.com', 'SM-T810 Canada G532FXWU1ASB1'),
(488, 0, 'SM-P900', 'KHJU234SdE211', '9.0', 'A2', 303243797, 'Qatar', '2019-11-26 21:03:04', 1, 'https://google.com', 'SM-P900 Qatar KHJU234SdE211');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `color` text NOT NULL,
  `duration` bigint(20) NOT NULL,
  `price` float NOT NULL,
  `cap` bigint(20) NOT NULL,
  `deactivated` text NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name`, `description`, `color`, `duration`, `price`, `cap`, `deactivated`) VALUES
(1, 'المجاني', 'اسبوع مجاني', '#3322ff', 604800, 0, 3145728000, '0'),
(2, 'الشهري', 'اشتراك شهري مجاني', '#22aaaa', 2592000, 5, 20971520000, '0'),
(3, 'الفصلي', 'اشتراك كل 3 شهور', '#aaaa22', 7776000, 20, 62914560000, '0'),
(4, 'سنوي', 'كل سنه مره', '#bf8b30', 31104000, 35, -1048576, '0'),
(5, 'Mohannad Hisham', '2', '#22aaaa', 604800, 2, 12566, '2020-05-24'),
(6, 'Mohannad Hisham', '2', '#22aaaa', 604800, 2, 12566, '2020-05-24'),
(7, 'Mohannad Hisham', '2', '#22aaaa', 604800, 2, 12566, '2020-05-24'),
(8, 'Mohannad Hisham', '2', '#22aaaa', 604800, 2, 12566, '2020-05-24'),
(9, 'Mohannad Hisham', 'new plan B', '#22aaaa', 15552000, 2, 23068672, '2020-05-24'),
(10, 'Mohannad Hisham', 'new plan B', '#22aaaa', 15552000, 2, 23068672, '2020-05-24'),
(11, 'بووب', 'بييب', '#22aaaa', 2592000, 2, 830472192, '2020-05-24');

-- --------------------------------------------------------

--
-- Table structure for table `site`
--

CREATE TABLE `site` (
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
(1, './imgs/logo.png', 'mohannad@condize.com', 'paypal@googl.ecom', 'http://localhost/gsm', 'رومانورا', 'This is the site description', 3145728000, 1.2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `rom_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `confirmed` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` mediumtext NOT NULL,
  `username` text NOT NULL,
  `password` mediumtext NOT NULL,
  `email` mediumtext NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `balance` bigint(11) NOT NULL DEFAULT 0,
  `daily_balance` bigint(11) NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT current_timestamp(),
  `admin` int(11) NOT NULL DEFAULT 0,
  `plan` int(11) NOT NULL DEFAULT 1,
  `plan_expiration` bigint(20) NOT NULL DEFAULT 0,
  `deactivated` text NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `email`, `created`, `balance`, `daily_balance`, `last_login`, `admin`, `plan`, `plan_expiration`, `deactivated`) VALUES
(1, 'Admin User', 'admin', 'admin', 'mohannadize15@gmail.com', '2019-10-26 20:26:38', 0, 2842484203, '2020-05-24 03:49:05', 1, 1, 0, '0'),
(7, 'Mohannad Hesham', 'poop', 'poop2', 'poop@gmaill.com', '2019-11-26 20:44:59', 0, 2842484203, '2020-05-13 00:07:53', 0, 1, 0, '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=489;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
