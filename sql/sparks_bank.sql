-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2021 at 05:14 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sparks_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Zonic', 'Dupreeh', 500, '2021-02-16 16:12:21'),
(2, 'Magisk', 'Dupreeh', 700, '2021-02-16 16:12:40'),
(3, 'Magisk', 'Dupreeh', 700, '2021-02-16 16:12:42'),
(4, 'Shox', 'Zonic', 400, '2021-02-16 16:13:58'),
(5, 'Shox', 'Nicolai', 10000, '2021-02-16 16:14:57'),
(6, 'Andreas', 'Zywoo', 100, '2021-02-16 16:16:20'),
(7, 'Zonic', 'Glave', 8000, '2021-02-16 16:16:39'),
(8, 'Niko', 'Apex', 400, '2021-02-16 16:17:38'),
(9, 'Nicolai', 'Glave', 800, '2021-02-16 16:17:57'),
(10, 'Zywoo', 'Glave', 100, '2021-02-16 16:19:06'),
(11, 'Apex', 'Nicolai', 800, '2021-02-16 16:24:50'),
(12, 'Nicolai', 'Magisk', 450, '2021-02-16 16:36:39'),
(13, 'Zywoo', 'Shox', 750, '2021-02-16 16:41:09'),
(14, 'Niko', 'Nicolai', 150, '2021-02-16 16:45:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Zonic', 'Zonic@gmail.com', 41900),
(2, 'Dupreeh', 'Dupreeh@gmail.com', 31200),
(3, 'Magisk', 'magisk@gmail.com', 39750),
(4, 'Zywoo', 'zywoo@gmail.com', 49250),
(5, 'Shox', 'shox@gmail.com', 30350),
(6, 'Apex', 'apex@gmail.com', 29600),
(7, 'Glave', 'g1ave@gmail.com', 58900),
(8, 'Niko', 'niko@gmail.com', 39450),
(9, 'Nicolai', 'dev1ce@gmail.com', 39700),
(10, 'Andreas', 'xyp9x@gmail.com', 49900);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
