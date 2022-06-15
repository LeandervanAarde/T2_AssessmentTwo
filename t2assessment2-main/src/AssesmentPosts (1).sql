-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 14, 2022 at 10:16 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `AssesmentPosts`
--

-- --------------------------------------------------------

--
-- Table structure for table `appPosts`
--

CREATE TABLE `appPosts` (
  `id` int(11) NOT NULL,
  `userpost` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appPosts`
--

INSERT INTO `appPosts` (`id`, `userpost`, `timestamp`, `message`) VALUES
(52, 'Lele', '2022-06-01 15:46:54', 'Ek hou van kaas bra, middle van die aand dat dit raas bra, Feta, cheddar , mozzirella ja bra'),
(73, 'Lele', '2022-06-13 15:48:23', 'I hate my life wd'),
(75, 'Lele', '2022-06-13 15:35:18', 'I hate it more than yesterday'),
(84, 'Lele', '2022-06-13 15:35:43', 'LEANDER IS DIE BESTE , Ek praat net kkak\n'),
(85, 'Lele', '2022-06-13 14:14:26', 'cscascascasc'),
(86, 'Lele', '2022-06-13 14:14:39', 'LEander van Aarde tsest'),
(92, 'Lele', '2022-06-13 15:37:41', 'Leander is hierso is ek though'),
(93, 'Lele', '2022-06-13 14:20:06', 'Leander is hierso weer'),
(94, 'Lele', '2022-06-13 14:21:36', 'Foktog '),
(95, 'Lele', '2022-06-13 15:37:54', 'Foktog dit was dom'),
(96, 'Lele', '2022-06-13 15:38:12', 'Dit het finally gewerk kan jy sien'),
(97, 'Lele', '2022-06-13 15:47:46', 'asccsa'),
(98, 'Lele', '2022-06-13 15:53:29', 'asccsa'),
(99, 'Lele', '2022-06-14 08:49:15', 'Leander Ook'),
(101, 'Lele', '2022-06-14 22:15:12', 'acs');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(4) NOT NULL,
  `first` varchar(255) NOT NULL,
  `last` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `userCreate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first`, `last`, `email`, `contact`, `username`, `password`, `userCreate`) VALUES
(17, 'Mike', 'Maynard', 'mike@openwindow.co.za', 844091837, 'MikeyMike', 'af52ad1e25ff06900b79d8308b16cec3', '2022-06-12 22:09:23'),
(40, 'Leander', 'van Aarde', 'Leander.vaonline@gmail.com', 786627745, 'Leander123', 'f2991d0bc4c3edd114843a044033b00b', '2022-06-13 11:03:40'),
(41, 'Leander', 'van Aarde', 'Leander.vaonline@gmail.com', 786627745, 'Leander123', 'f2991d0bc4c3edd114843a044033b00b', '2022-06-13 11:03:43'),
(42, 'Leander', 'van Aarde', 'Leander.vaonline@gmail.com', 875671233, 'Lele', 'pass546', '2022-06-13 14:11:25'),
(43, 'Leander', 'VN AURD', '200211@virtualwindow.co.za', 876541234, 'user', 'user12', '2022-06-13 15:07:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appPosts`
--
ALTER TABLE `appPosts`
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
-- AUTO_INCREMENT for table `appPosts`
--
ALTER TABLE `appPosts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
