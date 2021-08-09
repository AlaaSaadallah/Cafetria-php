-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2021 at 11:30 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cafetria`
--

-- --------------------------------------------------------

--
-- Table structure for table `order-product`
--

CREATE TABLE `order-product` (
  `OID` int(100) NOT NULL,
  `PID` int(100) NOT NULL,
  `Quantity` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order-product`
--

INSERT INTO `order-product` (`OID`, `PID`, `Quantity`) VALUES
(79, 10, 1),
(79, 5, 1),
(76, 5, 1),
(75, 7, 1),
(75, 6, 1),
(75, 5, 1),
(74, 8, 1),
(74, 11, 1),
(74, 12, 1),
(74, 7, 1),
(73, 10, 1),
(73, 9, 1),
(73, 11, 1),
(72, 5, 1),
(72, 7, 1),
(72, 10, 1),
(78, 6, 1),
(78, 7, 3),
(79, 11, 1),
(79, 12, 1),
(79, 8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OID` int(100) NOT NULL,
  `OrderDate` datetime DEFAULT NULL,
  `Status` varchar(50) NOT NULL,
  `UserId` int(100) DEFAULT NULL,
  `TotalPrice` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OID`, `OrderDate`, `Status`, `UserId`, `TotalPrice`) VALUES
(75, '2021-01-06 19:20:16', 'deliverd', 5, 150),
(74, '2021-01-06 19:20:03', 'deliverd', 2, 100),
(73, '2021-01-06 19:19:47', 'pending', 4, 180),
(72, '2021-01-06 19:19:26', 'deliverd', 1, 150),
(76, '2021-01-06 20:47:20', 'pending', 4, NULL),
(79, '2021-06-04 14:26:23', 'pending', 4, NULL),
(78, '2021-06-04 14:21:56', 'pending', 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `PID` int(100) NOT NULL,
  `Pname` varchar(30) NOT NULL,
  `Price` float NOT NULL,
  `Category` varchar(100) NOT NULL,
  `PPicPath` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`PID`, `Pname`, `Price`, `Category`, `PPicPath`) VALUES
(18, 'cold tea', 15, 'Cold Drinks', 'tea.jpg'),
(5, 'Ice Coffee', 40, 'cold drinks', 'icecofee.jpg'),
(6, 'Ice Chocolate', 50, 'cold drinks', 'icechocolate.jpg'),
(7, 'MilkShake', 60, 'cold drinks', 'milkshake.jpeg'),
(8, 'Fresh Orange', 35, 'cold drinks', 'freshorange.webp'),
(9, 'cheese cake', 60, 'desserts', 'cheesecake.jpg'),
(10, 'strawberycake', 60, 'desserts', 'strawberycake.jpg'),
(11, 'blueberrycake', 60, 'desserts', 'blueberrycake.jpg'),
(17, 'cold tea', 15, 'Cold Drinks', 'tea.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `systemuser`
--

CREATE TABLE `systemuser` (
  `UID` int(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `RoomNo` int(100) NOT NULL,
  `Ext` varchar(100) NOT NULL,
  `role` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `systemuser`
--

INSERT INTO `systemuser` (`UID`, `Name`, `Email`, `Password`, `RoomNo`, `Ext`, `role`) VALUES
(1, 'admin', 'admin@gmail.com', '12345678', 1000, '666', 'admin'),
(2, 'user1', 'user1@gmail.com', '12345678', 5, '1005', 'user'),
(4, 'user2', 'user2@gmail.com', '12345678', 33, '1000', 'user'),
(5, 'user3', 'user3@gmail.com', '12345678', 2, '1001', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order-product`
--
ALTER TABLE `order-product`
  ADD PRIMARY KEY (`OID`,`PID`),
  ADD KEY `PID` (`PID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OID`),
  ADD KEY `UserId` (`UserId`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`PID`);

--
-- Indexes for table `systemuser`
--
ALTER TABLE `systemuser`
  ADD PRIMARY KEY (`UID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `PID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `systemuser`
--
ALTER TABLE `systemuser`
  MODIFY `UID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
