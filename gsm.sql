-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 03, 2020 at 05:08 PM
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
(1, 'FREE', 'One GB One Week', '#3322ff', 604800, 0, 1073741824, '0'),
(2, 'BLUE', 'Monthly', '#22aaaa', 2592000, 5, 20971520000, '0'),
(3, 'GREEN', 'Quarterly', '#aaaa22', 7776000, 20, 62914560000, '0'),
(4, 'GOLD', 'Yearly', '#bf8b30', 31104000, 35, -1, '0'),
(5, 'Mohannad Hisham', '2', '#22aaaa', 604800, 2, 12566, '2020-05-24'),
(6, 'Mohannad Hisham', '2', '#22aaaa', 604800, 2, 12566, '2020-05-24'),
(7, 'Mohannad Hisham', '2', '#22aaaa', 604800, 2, 12566, '2020-05-24'),
(8, 'Mohannad Hisham', '2', '#22aaaa', 604800, 2, 12566, '2020-05-24'),
(9, 'Mohannad Hisham', 'new plan B', '#22aaaa', 15552000, 2, 23068672, '2020-05-24'),
(10, 'Mohannad Hisham', 'new plan B', '#22aaaa', 15552000, 2, 23068672, '2020-05-24'),
(11, 'بووب', 'بييب', '#22aaaa', 2592000, 2, 830472192, '2020-05-24');

-- --------------------------------------------------------

--
-- Table structure for table `privacy`
--

CREATE TABLE `privacy` (
  `text` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `privacy`
--

INSERT INTO `privacy` (`text`) VALUES
('# Heading 1\r\n## Heading 2\r\n### Heading 3\r\n#### Heading 4\r\n##### Heading 5\r\n###### Heading 6\r\n\r\n---\r\n\r\n*Italics*	\r\n**Bold**	\r\n\r\n---\r\n * List item one\r\n* List item two\r\n    * A nested item\r\n\r\n---\r\n\r\n1. Number list item one		\r\n	1.1. A nested item\r\n2. Number list item two\r\n3. Number list item three\r\n\r\n\r\n\r\n---\r\n\r\nStandard link =  http://ghost.org	\r\n[Custom Text Link](http://ghost.org)\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `message` text DEFAULT NULL,
  `model` text NOT NULL,
  `country` text DEFAULT NULL,
  `build_v` text DEFAULT NULL,
  `android_v` text DEFAULT NULL,
  `date` text NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `site`
--

CREATE TABLE `site` (
  `logo_as_text` int(11) NOT NULL,
  `logo_file` mediumtext NOT NULL,
  `email` mediumtext NOT NULL,
  `contact_email` text NOT NULL,
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

INSERT INTO `site` (`logo_as_text`, `logo_file`, `email`, `contact_email`, `paypal`, `url`, `site-name`, `description`, `daily_free`, `price`, `maintainance`) VALUES
(1, './imgs/logo.jpg', 'mohannad@condize.com', 'mohannadize15@gmail.com', 'plz-buyer@exam.com', 'https://localhost:800/gsm/', 'Romanora', 'This is the site descriptionasdsa', 0, 1.2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `transaction_ref` text NOT NULL,
  `plan_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `date` int(11) NOT NULL,
  `confirmed` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `transaction_ref`, `plan_id`, `user_id`, `price`, `date`, `confirmed`) VALUES
(15, 'fae4S12Q', 3, 7, 20, 1590482605, 0),
(22, 'yXWJm35M', 2, 8, 5, 1590831685, 0);

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(11) NOT NULL,
  `tmp_name` text NOT NULL,
  `location` text NOT NULL,
  `file_name` text NOT NULL,
  `content_type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `plan` int(11) NOT NULL DEFAULT 0,
  `plan_expiration` int(20) NOT NULL DEFAULT 0,
  `deactivated` text NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `email`, `created`, `balance`, `daily_balance`, `last_login`, `admin`, `plan`, `plan_expiration`, `deactivated`) VALUES
(1, 'Admin User', 'admin', 'admin', 'mohannadize15@gmail.com', '2019-10-26 20:26:38', 0, 0, '2020-06-03 13:30:35', 1, 1, 0, '0'),
(8, 'mohanad', 'mohannad', 'poop', 'mohannadize15@gmail.com', '2020-05-30 09:33:37', -1, 0, '2020-05-30 09:33:37', 0, 1, 1591436030, '0');

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
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tmp_name` (`tmp_name`) USING HASH;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
