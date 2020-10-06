-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2020 at 02:05 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zwallet`
--

-- --------------------------------------------------------

--
-- Table structure for table `topup`
--

CREATE TABLE `topup` (
  `sequence` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topup`
--

INSERT INTO `topup` (`sequence`, `title`, `updatedAt`) VALUES
(2, 'Type your security number on the ATM or E-Banking.', '2020-09-29 08:59:45'),
(3, 'Select “Transfer” in the menu', '2020-09-29 08:59:45'),
(4, 'Type the virtual account number that we provide you at the top.', '2020-09-29 08:59:45'),
(5, 'Type the amount of the money you want to top up.', '2020-09-29 08:59:45'),
(6, 'Read the summary details', '2020-09-29 08:59:45'),
(7, 'Press transfer / top up', '2020-09-29 08:59:45'),
(8, 'You can see your money in Zwallet within 3 hours.', '2020-09-29 08:59:45'),
(9, 'Select bank', '2020-10-01 03:03:56');

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE `transfer` (
  `id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `note` varchar(255) NOT NULL,
  `id_sender` int(11) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `id_receiver` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transfer`
--

INSERT INTO `transfer` (`id`, `amount`, `date`, `note`, `id_sender`, `receiver`, `id_receiver`, `createdAt`) VALUES
(3, 20000, '2020-09-29 12:15:45', 'buat belanja', 2, 'Arung Cahaya Hamzah', 1, '2020-09-29 12:15:45'),
(4, 50000, '2020-09-29 14:46:06', 'gajian', 3, 'Arung Gans', 4, '2020-09-29 14:46:06'),
(5, 50000, '2020-10-01 03:00:52', 'buat beli pc gaming', 2, 'Said Hamzah', 3, '2020-10-01 03:00:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `pin` char(6) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `balance` int(11) NOT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `pin`, `photo`, `phone`, `balance`, `verified`, `createdAt`, `updatedAt`) VALUES
(1, 'Arung Cahaya Hamzah', 'anjaygokil@gmail.co', '$2b$10$yklLqtjBoWQuBJf/Jb/GGuXHgqikfRom55kmOXXhZYg2TUgqbwbje', '328322', '', '', 0, 0, '2020-09-29 11:34:35', '2020-09-29 12:04:46'),
(2, 'Api Rahman', 'apirahl@gmail.id', '$2b$06$0Ybo064i2H4HlDNH96QRyeuzVS5EVaaxjDG5ovZFYm9l/H7p.h5Fy', '185414', '', '', 0, 0, '2020-09-29 14:32:09', '2020-09-29 14:32:09'),
(3, 'Said Hamzah', 'hamzah@gmail.co.id', '$2b$06$XKaOAu/zzkbyumIc5mT32uO3sG.1Tezbai4X55iICZBe/jeNHlpwe', '556416', '', '', 0, 0, '2020-09-29 14:33:47', '2020-09-29 14:33:47'),
(4, 'Arung Gans', 'archaa@ndao.co', '$2b$06$/k6zPdEqalcik.dPEYWhY.yCK3KglPCeBXML1GvpUln9ExDPt48.K', '659416', '', '', 0, 0, '2020-09-29 14:37:47', '2020-09-29 14:37:47'),
(5, 'Om Hanif', 'paksoleh34@gmail', '$2b$06$KktMn89EDzjcLMBv6vxz6.idq0jOiFTMUGlhozyk0SntAbpRqpKBm', '246208', '', '8743284297', 0, 0, '2020-10-01 02:35:29', '2020-10-01 02:59:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transfer`
--
ALTER TABLE `transfer`
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
-- AUTO_INCREMENT for table `transfer`
--
ALTER TABLE `transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
