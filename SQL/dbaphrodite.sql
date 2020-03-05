-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2020 at 07:40 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbaphrodite`
--

-- --------------------------------------------------------

--
-- Table structure for table `aphrodite`
--

CREATE TABLE `aphrodite` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `psw` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aphrodite`
--

INSERT INTO `aphrodite` (`id`, `email`, `psw`) VALUES
(3, 'enitanayandike@gmail.com', 'enitan'),
(4, 'enitan1900@student.hamk.fi', 'sewedo'),
(6, 'vicktella@yahoo.com ', 'dolapo'),
(14, 'vicktella11@yahoo.com ', 'enitan'),
(15, 'lidija.simo@gmail.com', '12345'),
(16, 'enitanayandike@yahoo.co.uk', 'seton'),
(17, 'seton.mautin@gmail.com', 'sewedo'),
(18, 'tolu.titi@gmail.com', 'tolutiti'),
(19, 'temmy@yahoo.com', 'temmy'),
(20, 'promise@gmail', 'mami'),
(21, 'emmanuel@gmail.com', 'mautin'),
(22, 'martha@yahoo.com', 'akporo'),
(23, 'oluwaseun@gmail.com', 'toluwa'),
(24, 'comfort@gmail.com', 'comffy'),
(25, 'esther@gmail.com', 'odebode'),
(26, 'bunmi@gmail.com', 'odebode'),
(27, 'kikelomo@gmail.com', 'kokoko'),
(28, 'tolu@gmail.com', 'tititi');

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE `card` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `cardname` varchar(100) NOT NULL,
  `cardnumber` int(11) NOT NULL,
  `expmonth` int(11) NOT NULL,
  `expyear` int(11) NOT NULL,
  `cvv` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orderaph`
--

CREATE TABLE `orderaph` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `productid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `desc` text NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `rrp` decimal(7,2) NOT NULL DEFAULT 0.00,
  `quantity` int(11) NOT NULL,
  `img` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `desc`, `price`, `rrp`, `quantity`, `img`, `date_added`) VALUES
(1, 'Jaiman Earrings', '', '10.99', '0.00', 10, 'jp3.jpg', '2020-02-18 19:10:42'),
(2, 'Royal Blue', '', '45.99', '0.00', 12, 'bs2.jfif', '2020-02-18 19:10:42'),
(3, 'Björg Jewellery', '', '11.99', '0.00', 15, 'bb4.jfif', '2020-02-18 19:10:42'),
(4, 'Beading Pattern', '', '4.99', '0.00', 14, 'Bdd4.jfif', '2020-02-18 19:10:42'),
(5, 'Dairy', '', '6.99', '0.00', 11, 'bm8.jfif', '2020-02-18 19:10:42'),
(6, 'Blues', '', '16.99', '0.00', 12, 'ee2.jfif', '2020-02-18 19:10:42'),
(7, 'Bron', '', '6.99', '0.00', 8, 'mm.jfif', '2020-02-18 19:10:42'),
(8, 'Colon', '', '26.99', '0.00', 9, 'jw3.jfif', '2020-02-18 19:10:42'),
(9, 'Tealworld', '', '12.99', '0.00', 11, 'tf3.jfif', '2020-02-18 19:10:42'),
(10, 'Whitee', '', '5.99', '0.00', 10, 'tt.jfif', '2020-02-18 19:10:42'),
(11, 'Jammy', '', '99.99', '0.00', 18, 'ww.jfif', '2020-02-18 19:10:42'),
(12, 'Roomy', '', '56.99', '0.00', 11, 'rr1.jfif', '2020-02-18 19:10:42'),
(13, 'Beyonce', '', '50.99', '0.00', 7, 'ff.jfif', '2020-02-18 19:10:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aphrodite`
--
ALTER TABLE `aphrodite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderaph`
--
ALTER TABLE `orderaph`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aphrodite`
--
ALTER TABLE `aphrodite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `card`
--
ALTER TABLE `card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orderaph`
--
ALTER TABLE `orderaph`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
