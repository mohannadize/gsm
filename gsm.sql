-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 06, 2019 at 01:39 AM
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
) ENGINE=MyISAM AUTO_INCREMENT=227 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `type`, `model`, `build_v`, `android_v`, `security_level`, `size`, `country`, `created`, `downloads`, `url`, `search_text`) VALUES
(83, 0, 'SM-W720', 'V23SQPMXJAWQK', '8', 'A2', 2953802111, 'USA', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-W720 V23SQPMXJAWQK 2'),
(84, 1, 'SM-N800', 'KITTY8642069P', '7.1', 'B2', 4518214358, 'Hong Kong', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-N800 KITTY8642069P 3'),
(85, 0, 'SM-P900', 'KHJU234SdE211', '8', 'P3', 3851548404, 'KSA', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-P900 KHJU234SdE211 0'),
(86, 0, 'SM-T560', 'KHJU234SdE211', '6', 'P3', 75585956, 'Canada', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-T560 KHJU234SdE211 7'),
(87, 1, 'SM-W720', 'PPW899UYTQSAW', '8', 'Y9', 4146797296, 'USA', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-W720 PPW899UYTQSAW 2'),
(88, 0, 'SM-W720', 'KITTY8642069P', '6', 'Y9', 3715747408, 'Turkey', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-W720 KITTY8642069P 5'),
(89, 1, 'SM-N800', 'KITTY8642069P', '7.1', 'OO', 668938319, 'USA', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-N800 KITTY8642069P 2'),
(90, 1, 'SM-T670', 'PPW899UYTQSAW', '9.0', 'B2', 2725751675, 'Australia', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-T670 PPW899UYTQSAW 6'),
(91, 1, 'SM-N800', 'V23SQPMXJAWQK', '8.1', 'B2', 3902069436, 'Hong Kong', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-N800 V23SQPMXJAWQK 3'),
(92, 1, 'SM-T670', 'G532FXWU1ASB1', '10', 'K7', 386669182, 'KSA', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-T670 G532FXWU1ASB1 0'),
(93, 1, 'SM-N800', 'KHJU234SdE211', '10', 'U2', 1605924198, 'Qatar', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-N800 KHJU234SdE211 4'),
(94, 1, 'SM-T670', 'PSUEW12L90UY1', '10', 'U2', 3899782819, 'Qatar', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-T670 PSUEW12L90UY1 4'),
(95, 1, 'SM-T560', 'V23SQPMXJAWQK', '10', 'Y9', 3809758647, 'Canada', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-T560 V23SQPMXJAWQK 7'),
(96, 0, 'SM-T810', 'KITTY8642069P', '7.1', 'K7', 4986589411, 'Australia', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-T810 KITTY8642069P 6'),
(97, 0, 'SM-P900', 'PSUEW12L90UY1', '8', 'K7', 700212899, 'Egypt', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-P900 PSUEW12L90UY1 1'),
(98, 0, 'SM-T560', 'KHJU234SdE211', '9.0', 'OO', 3161268932, 'Egypt', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-T560 KHJU234SdE211 1'),
(99, 0, 'SM-T560', 'PSUEW12L90UY1', '9.0', 'OO', 2649095351, 'KSA', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-T560 PSUEW12L90UY1 0'),
(100, 1, 'SM-T810', 'PSUEW12L90UY1', '9.0', 'K7', 1309625007, 'Canada', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-T810 PSUEW12L90UY1 7'),
(101, 0, 'SM-N800', 'V23SQPMXJAWQK', '10', 'P3', 3586115990, 'USA', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-N800 V23SQPMXJAWQK 2'),
(102, 1, 'SM-W720', 'G532FXWU1ASB1', '8.1', 'Y9', 1759844249, 'Qatar', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-W720 G532FXWU1ASB1 4'),
(103, 0, 'SM-T810', 'KHJU234SdE211', '7.1', 'P3', 4572939045, 'Canada', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-T810 KHJU234SdE211 7'),
(104, 1, 'SM-W720', 'KHJU234SdE211', '8', 'OO', 317176905, 'Egypt', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-W720 KHJU234SdE211 1'),
(105, 0, 'SM-T560', 'G532FXWU1ASB1', '10', 'P3', 3784294361, 'Turkey', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-T560 G532FXWU1ASB1 5'),
(106, 0, 'SM-P900', 'G532FXWU1ASB1', '7.1', 'Y9', 3585870284, 'Egypt', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-P900 G532FXWU1ASB1 1'),
(107, 1, 'SM-T670', 'PSUEW12L90UY1', '6', 'P3', 3341843251, 'USA', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-T670 PSUEW12L90UY1 2'),
(108, 0, 'SM-T670', 'O98UQWKSAQATA', '8', 'U2', 2511552483, 'Canada', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-T670 O98UQWKSAQATA 7'),
(109, 0, 'SM-N800', 'PSUEW12L90UY1', '8', 'P3', 4640045539, 'Australia', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-N800 PSUEW12L90UY1 6'),
(110, 0, 'SM-T560', 'KHJU234SdE211', '8.1', 'A2', 1091843457, 'Canada', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-T560 KHJU234SdE211 7'),
(111, 0, 'SM-W720', 'PPW899UYTQSAW', '7.1', 'A2', 568333571, 'Australia', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-W720 PPW899UYTQSAW 6'),
(112, 0, 'SM-P900', 'V23SQPMXJAWQK', '8', 'P3', 1704002562, 'Australia', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-P900 V23SQPMXJAWQK 6'),
(113, 0, 'SM-T670', 'KITTY8642069P', '10', 'A2', 1708518375, 'Canada', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-T670 KITTY8642069P 7'),
(114, 0, 'SM-P900', 'V23SQPMXJAWQK', '9.0', 'A2', 1157538218, 'Canada', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-P900 V23SQPMXJAWQK 7'),
(115, 0, 'SM-T670', 'G532FXWU1ASB1', '10', 'A2', 1030528213, 'Egypt', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-T670 G532FXWU1ASB1 1'),
(116, 1, 'SM-N800', 'PSUEW12L90UY1', '6', 'OO', 1325031532, 'Canada', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-N800 PSUEW12L90UY1 7'),
(117, 1, 'SM-W720', 'OPU2357765CAT', '9.0', 'B2', 1585959991, 'USA', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-W720 OPU2357765CAT 2'),
(118, 0, 'SM-N800', 'KHJU234SdE211', '10', 'U2', 2118148786, 'USA', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-N800 KHJU234SdE211 2'),
(119, 1, 'SM-T560', 'KITTY8642069P', '9.0', 'K7', 3394258791, 'Turkey', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-T560 KITTY8642069P 5'),
(120, 0, 'SM-P900', 'G532FXWU1ASB1', '7.1', 'A2', 3633275149, 'Turkey', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-P900 G532FXWU1ASB1 5'),
(121, 1, 'SM-P900', 'PPW899UYTQSAW', '8', 'U2', 1761602251, 'USA', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-P900 PPW899UYTQSAW 2'),
(122, 1, 'SM-P900', 'KITTY8642069P', '9.0', 'B2', 3009806824, 'Canada', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-P900 KITTY8642069P 7'),
(123, 0, 'SM-T670', 'PPW899UYTQSAW', '7.1', 'P3', 824517177, 'Turkey', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-T670 PPW899UYTQSAW 5'),
(124, 1, 'SM-N800', 'KHJU234SdE211', '9.0', 'B2', 3336935372, 'Hong Kong', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-N800 KHJU234SdE211 3'),
(125, 0, 'SM-T670', 'O98UQWKSAQATA', '8', 'B2', 479971872, 'Hong Kong', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-T670 O98UQWKSAQATA 3'),
(126, 0, 'SM-T670', 'O98UQWKSAQATA', '8.1', 'U2', 940891774, 'KSA', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-T670 O98UQWKSAQATA 0'),
(127, 1, 'SM-T810', 'PSUEW12L90UY1', '10', 'P3', 3952865714, 'USA', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-T810 PSUEW12L90UY1 2'),
(128, 0, 'SM-P900', 'KITTY8642069P', '8', 'OO', 2345800298, 'Turkey', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-P900 KITTY8642069P 5'),
(129, 1, 'SM-P900', 'KITTY8642069P', '6', 'B2', 1678451085, 'Hong Kong', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-P900 KITTY8642069P 3'),
(130, 0, 'SM-W720', 'PSUEW12L90UY1', '8.1', 'OO', 4478585907, 'KSA', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-W720 PSUEW12L90UY1 0'),
(131, 1, 'SM-W720', 'PPW899UYTQSAW', '7.1', 'P3', 1545768200, 'Australia', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-W720 PPW899UYTQSAW 6'),
(132, 0, 'SM-T670', 'KITTY8642069P', '6', 'A2', 153308291, 'USA', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-T670 KITTY8642069P 2'),
(133, 0, 'SM-W720', 'G532FXWU1ASB1', '9.0', 'K7', 1415160972, 'Hong Kong', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-W720 G532FXWU1ASB1 3'),
(134, 0, 'SM-T560', 'OPU2357765CAT', '7.1', 'A2', 2680415188, 'USA', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-T560 OPU2357765CAT 2'),
(135, 1, 'SM-P900', 'KHJU234SdE211', '8.1', 'B2', 1138712455, 'Canada', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-P900 KHJU234SdE211 7'),
(136, 1, 'SM-T670', 'KITTY8642069P', '10', 'A2', 2378981610, 'KSA', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-T670 KITTY8642069P 0'),
(137, 1, 'SM-P900', 'V23SQPMXJAWQK', '7.1', 'OO', 4984775857, 'Turkey', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-P900 V23SQPMXJAWQK 5'),
(138, 1, 'SM-W720', 'KITTY8642069P', '8.1', 'U2', 1193843565, 'Australia', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-W720 KITTY8642069P 6'),
(139, 0, 'SM-W720', 'KHJU234SdE211', '8', 'A2', 1995106230, 'Australia', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-W720 KHJU234SdE211 6'),
(140, 1, 'SM-W720', 'OPU2357765CAT', '9.0', 'P3', 1980249074, 'KSA', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-W720 OPU2357765CAT 0'),
(141, 1, 'SM-T670', 'PSUEW12L90UY1', '8.1', 'OO', 310782679, 'USA', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-T670 PSUEW12L90UY1 2'),
(142, 0, 'SM-P900', 'G532FXWU1ASB1', '8', 'K7', 4080347716, 'Australia', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-P900 G532FXWU1ASB1 6'),
(143, 1, 'SM-P900', 'V23SQPMXJAWQK', '7.1', 'B2', 692872171, 'USA', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-P900 V23SQPMXJAWQK 2'),
(144, 0, 'SM-T560', 'G532FXWU1ASB1', '8', 'P3', 1999559234, 'Hong Kong', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-T560 G532FXWU1ASB1 3'),
(145, 0, 'SM-T810', 'O98UQWKSAQATA', '6', 'U2', 733834583, 'Hong Kong', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-T810 O98UQWKSAQATA 3'),
(146, 0, 'SM-T670', 'O98UQWKSAQATA', '9.0', 'B2', 3595526046, 'KSA', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-T670 O98UQWKSAQATA 0'),
(147, 0, 'SM-T810', 'PSUEW12L90UY1', '10', 'Y9', 4786066607, 'Australia', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-T810 PSUEW12L90UY1 6'),
(148, 0, 'SM-N800', 'KHJU234SdE211', '8.1', 'A2', 1979987928, 'USA', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-N800 KHJU234SdE211 2'),
(149, 0, 'SM-N800', 'G532FXWU1ASB1', '10', 'K7', 2733440208, 'Turkey', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-N800 G532FXWU1ASB1 5'),
(150, 0, 'SM-T560', 'O98UQWKSAQATA', '8', 'U2', 1188539651, 'Turkey', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-T560 O98UQWKSAQATA 5'),
(151, 0, 'SM-T670', 'PPW899UYTQSAW', '8.1', 'OO', 433489486, 'KSA', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-T670 PPW899UYTQSAW 0'),
(152, 1, 'SM-W720', 'PPW899UYTQSAW', '7.1', 'U2', 2773874678, 'Australia', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-W720 PPW899UYTQSAW 6'),
(153, 0, 'SM-T810', 'KITTY8642069P', '7.1', 'U2', 2700928276, 'Australia', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-T810 KITTY8642069P 6'),
(154, 1, 'SM-N800', 'V23SQPMXJAWQK', '7.1', 'B2', 3091107602, 'Canada', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-N800 V23SQPMXJAWQK 7'),
(155, 0, 'SM-T670', 'KHJU234SdE211', '6', 'Y9', 4505891152, 'Qatar', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-T670 KHJU234SdE211 4'),
(156, 1, 'SM-N800', 'O98UQWKSAQATA', '8.1', 'A2', 3082085964, 'Hong Kong', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-N800 O98UQWKSAQATA 3'),
(157, 1, 'SM-N800', 'PSUEW12L90UY1', '8.1', 'Y9', 1824895924, 'Egypt', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-N800 PSUEW12L90UY1 1'),
(158, 1, 'SM-T560', 'V23SQPMXJAWQK', '10', 'OO', 1009607124, 'KSA', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-T560 V23SQPMXJAWQK 0'),
(159, 0, 'SM-W720', 'G532FXWU1ASB1', '9.0', 'OO', 226357395, 'USA', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-W720 G532FXWU1ASB1 2'),
(160, 1, 'SM-N800', 'V23SQPMXJAWQK', '9.0', 'B2', 4811681165, 'USA', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-N800 V23SQPMXJAWQK 2'),
(161, 0, 'SM-N800', 'OPU2357765CAT', '7.1', 'OO', 2772936737, 'Egypt', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-N800 OPU2357765CAT 1'),
(162, 1, 'SM-T560', 'KHJU234SdE211', '8.1', 'K7', 859712437, 'KSA', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-T560 KHJU234SdE211 0'),
(163, 0, 'SM-N800', 'PSUEW12L90UY1', '9.0', 'K7', 1803327025, 'Hong Kong', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-N800 PSUEW12L90UY1 3'),
(164, 0, 'SM-N800', 'G532FXWU1ASB1', '8', 'OO', 1017984003, 'KSA', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-N800 G532FXWU1ASB1 0'),
(165, 0, 'SM-T560', 'PSUEW12L90UY1', '10', 'OO', 4639515657, 'Canada', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-T560 PSUEW12L90UY1 7'),
(166, 0, 'SM-T810', 'O98UQWKSAQATA', '10', 'U2', 2217875435, 'Canada', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-T810 O98UQWKSAQATA 7'),
(167, 1, 'SM-T810', 'OPU2357765CAT', '6', 'Y9', 4482457681, 'Canada', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-T810 OPU2357765CAT 7'),
(168, 1, 'SM-T810', 'PPW899UYTQSAW', '6', 'Y9', 3758766973, 'Egypt', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-T810 PPW899UYTQSAW 1'),
(169, 1, 'SM-W720', 'KITTY8642069P', '8.1', 'K7', 2918795633, 'Hong Kong', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-W720 KITTY8642069P 3'),
(170, 1, 'SM-N800', 'G532FXWU1ASB1', '6', 'B2', 532940289, 'KSA', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-N800 G532FXWU1ASB1 0'),
(171, 0, 'SM-P900', 'KITTY8642069P', '7.1', 'OO', 3569944333, 'KSA', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-P900 KITTY8642069P 0'),
(172, 1, 'SM-W720', 'PSUEW12L90UY1', '10', 'P3', 2021189418, 'Turkey', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-W720 PSUEW12L90UY1 5'),
(173, 1, 'SM-P900', 'O98UQWKSAQATA', '6', 'Y9', 4703036279, 'Turkey', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-P900 O98UQWKSAQATA 5'),
(174, 1, 'SM-T560', 'O98UQWKSAQATA', '8.1', 'K7', 554835218, 'Qatar', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-T560 O98UQWKSAQATA 4'),
(175, 1, 'SM-P900', 'KITTY8642069P', '8.1', 'K7', 736093124, 'Canada', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-P900 KITTY8642069P 7'),
(176, 1, 'SM-P900', 'PPW899UYTQSAW', '10', 'U2', 4580065932, 'Turkey', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-P900 PPW899UYTQSAW 5'),
(177, 0, 'SM-N800', 'PSUEW12L90UY1', '8.1', 'B2', 1436440480, 'Egypt', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-N800 PSUEW12L90UY1 1'),
(178, 0, 'SM-T560', 'V23SQPMXJAWQK', '9.0', 'K7', 1302915244, 'Hong Kong', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-T560 V23SQPMXJAWQK 3'),
(179, 1, 'SM-T560', 'PSUEW12L90UY1', '8.1', 'OO', 1875901542, 'USA', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-T560 PSUEW12L90UY1 2'),
(180, 1, 'SM-N800', 'O98UQWKSAQATA', '8', 'A2', 991043931, 'Hong Kong', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-N800 O98UQWKSAQATA 3'),
(181, 1, 'SM-P900', 'KITTY8642069P', '7.1', 'U2', 1114240384, 'Qatar', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-P900 KITTY8642069P 4'),
(182, 1, 'SM-N800', 'G532FXWU1ASB1', '10', 'K7', 4305737446, 'Hong Kong', '2019-11-06 01:38:08', 0, 'https://google.com', 'SM-N800 G532FXWU1ASB1 3'),
(183, 1, 'SM-W720', 'V23SQPMXJAWQK', '9.0', 'OO', 4124715125, 'Turkey', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-W720 V23SQPMXJAWQK 5'),
(184, 1, 'SM-P900', 'O98UQWKSAQATA', '6', 'A2', 4660691983, 'Qatar', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-P900 O98UQWKSAQATA 4'),
(185, 0, 'SM-T560', 'KHJU234SdE211', '9.0', 'A2', 1116231711, 'Canada', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-T560 KHJU234SdE211 7'),
(186, 0, 'SM-N800', 'G532FXWU1ASB1', '7.1', 'K7', 670541877, 'Egypt', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-N800 G532FXWU1ASB1 1'),
(187, 1, 'SM-T560', 'G532FXWU1ASB1', '8', 'K7', 857121430, 'Canada', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-T560 G532FXWU1ASB1 7'),
(188, 0, 'SM-N800', 'G532FXWU1ASB1', '10', 'K7', 1089638534, 'USA', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-N800 G532FXWU1ASB1 2'),
(189, 1, 'SM-T810', 'KITTY8642069P', '10', 'A2', 319258403, 'Qatar', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-T810 KITTY8642069P 4'),
(190, 0, 'SM-T560', 'G532FXWU1ASB1', '10', 'B2', 3683193183, 'USA', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-T560 G532FXWU1ASB1 2'),
(191, 1, 'SM-T670', 'KITTY8642069P', '8', 'K7', 1728334853, 'Egypt', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-T670 KITTY8642069P 1'),
(192, 0, 'SM-T810', 'O98UQWKSAQATA', '8', 'OO', 4399297984, 'Qatar', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-T810 O98UQWKSAQATA 4'),
(193, 0, 'SM-N800', 'KHJU234SdE211', '6', 'Y9', 2106122820, 'KSA', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-N800 KHJU234SdE211 0'),
(194, 1, 'SM-P900', 'PPW899UYTQSAW', '8.1', 'P3', 262669677, 'Qatar', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-P900 PPW899UYTQSAW 4'),
(195, 1, 'SM-T810', 'O98UQWKSAQATA', '7.1', 'U2', 2542460428, 'KSA', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-T810 O98UQWKSAQATA 0'),
(196, 0, 'SM-T810', 'KITTY8642069P', '10', 'K7', 2526223136, 'Qatar', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-T810 KITTY8642069P 4'),
(197, 0, 'SM-P900', 'PSUEW12L90UY1', '8.1', 'OO', 4796912223, 'Turkey', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-P900 PSUEW12L90UY1 5'),
(198, 1, 'SM-P900', 'KITTY8642069P', '10', 'A2', 688343744, 'Hong Kong', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-P900 KITTY8642069P 3'),
(199, 0, 'SM-N800', 'PSUEW12L90UY1', '7.1', 'U2', 1940237865, 'KSA', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-N800 PSUEW12L90UY1 0'),
(200, 0, 'SM-W720', 'V23SQPMXJAWQK', '8', 'A2', 3684997947, 'Hong Kong', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-W720 V23SQPMXJAWQK 3'),
(201, 0, 'SM-T810', 'PPW899UYTQSAW', '8.1', 'P3', 1309692682, 'Hong Kong', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-T810 PPW899UYTQSAW 3'),
(202, 0, 'SM-T560', 'PSUEW12L90UY1', '8', 'A2', 534030650, 'Egypt', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-T560 PSUEW12L90UY1 1'),
(203, 0, 'SM-T560', 'PPW899UYTQSAW', '9.0', 'A2', 2336667998, 'KSA', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-T560 PPW899UYTQSAW 0'),
(204, 0, 'SM-T560', 'KHJU234SdE211', '9.0', 'K7', 2100276767, 'Canada', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-T560 KHJU234SdE211 7'),
(205, 0, 'SM-N800', 'V23SQPMXJAWQK', '8.1', 'OO', 484019163, 'Australia', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-N800 V23SQPMXJAWQK 6'),
(206, 1, 'SM-T670', 'G532FXWU1ASB1', '9.0', 'Y9', 1916406920, 'Hong Kong', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-T670 G532FXWU1ASB1 3'),
(207, 0, 'SM-T560', 'G532FXWU1ASB1', '8', 'Y9', 2955047607, 'Qatar', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-T560 G532FXWU1ASB1 4'),
(208, 0, 'SM-N800', 'V23SQPMXJAWQK', '8.1', 'B2', 4080985215, 'Qatar', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-N800 V23SQPMXJAWQK 4'),
(209, 0, 'SM-P900', 'V23SQPMXJAWQK', '8.1', 'K7', 2254752646, 'Australia', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-P900 V23SQPMXJAWQK 6'),
(210, 1, 'SM-P900', 'PSUEW12L90UY1', '9.0', 'P3', 539798152, 'Canada', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-P900 PSUEW12L90UY1 7'),
(211, 1, 'SM-N800', 'V23SQPMXJAWQK', '10', 'K7', 1748535936, 'KSA', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-N800 V23SQPMXJAWQK 0'),
(212, 0, 'SM-N800', 'PPW899UYTQSAW', '8.1', 'B2', 3262343167, 'KSA', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-N800 PPW899UYTQSAW 0'),
(213, 1, 'SM-T670', 'G532FXWU1ASB1', '10', 'OO', 4393128198, 'Qatar', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-T670 G532FXWU1ASB1 4'),
(214, 0, 'SM-N800', 'PSUEW12L90UY1', '6', 'B2', 4448899408, 'Hong Kong', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-N800 PSUEW12L90UY1 3'),
(215, 1, 'SM-T560', 'KITTY8642069P', '8.1', 'OO', 1830409277, 'Egypt', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-T560 KITTY8642069P 1'),
(216, 0, 'SM-W720', 'G532FXWU1ASB1', '9.0', 'U2', 4059549599, 'Hong Kong', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-W720 G532FXWU1ASB1 3'),
(217, 1, 'SM-W720', 'O98UQWKSAQATA', '9.0', 'A2', 2770884329, 'Australia', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-W720 O98UQWKSAQATA 6'),
(218, 0, 'SM-W720', 'OPU2357765CAT', '10', 'K7', 3455120594, 'Egypt', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-W720 OPU2357765CAT 1'),
(219, 0, 'SM-T560', 'KHJU234SdE211', '9.0', 'A2', 4039483537, 'Canada', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-T560 KHJU234SdE211 7'),
(220, 1, 'SM-T560', 'V23SQPMXJAWQK', '7.1', 'K7', 1129032112, 'Australia', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-T560 V23SQPMXJAWQK 6'),
(221, 1, 'SM-W720', 'O98UQWKSAQATA', '7.1', 'P3', 2080746374, 'Egypt', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-W720 O98UQWKSAQATA 1'),
(222, 0, 'SM-T810', 'PPW899UYTQSAW', '7.1', 'P3', 3177793198, 'Egypt', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-T810 PPW899UYTQSAW 1'),
(223, 0, 'SM-T560', 'PPW899UYTQSAW', '6', 'B2', 357889572, 'Canada', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-T560 PPW899UYTQSAW 7'),
(224, 1, 'SM-W720', 'OPU2357765CAT', '8', 'B2', 879431271, 'KSA', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-W720 OPU2357765CAT 0'),
(225, 1, 'SM-T560', 'PPW899UYTQSAW', '8.1', 'A2', 3082494926, 'Australia', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-T560 PPW899UYTQSAW 6'),
(226, 1, 'SM-T670', 'KITTY8642069P', '8', 'B2', 1607915494, 'Egypt', '2019-11-06 01:38:40', 0, 'https://google.com', 'SM-T670 KITTY8642069P 1');

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
(1, './imgs/logo.png', 'mohannad@condize.com', 'paypal@googl.ecom', 'http://localhost/gsm', 'Sakr El Roms', 'This is the site description', 3145728000, 1, 0);

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
(1, 'Admin User', 'admin', 'admin', 'mohannadize15@gmail.com', '2019-10-26 20:26:38', 0, 2699034624, '2019-11-06 01:25:16', 1),
(3, 'Mohannad Hisham', 'mohannadize', 'asd', 'mohannadize15@gmail.com', '2019-10-27 17:54:20', 0, 2699034624, '2019-11-06 01:18:41', 0),
(6, 'poop', 'poop', 'cool', 'pop2@popawsd.asd', '2019-11-06 01:08:26', 0, 2699034624, '2019-11-06 01:08:26', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
