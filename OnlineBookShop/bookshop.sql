-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: April 01, 2021 at 06:25 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `buyerrequest`
--

CREATE TABLE `buyerrequest` (
  `OrderId` int(6) UNSIGNED NOT NULL,
  `BuyerName` varchar(40) NOT NULL,
  `BuyerPhoneNumber` varchar(30) NOT NULL,
  `SellerName` varchar(10) NOT NULL,
  `BookName` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buyerrequest`
--

INSERT INTO `buyerrequest` (`OrderId`, `BuyerName`, `BuyerPhoneNumber`, `SellerName`, `BookName`) VALUES
(1, 'yasir18', '01316196211', 'saiful22', 'Padma nodir majhi'),
(2, 'yasir18', '01316196211', 'saiful22', 'Thakur maar jhuli');

-- --------------------------------------------------------

--
-- Table structure for table `confirmtable`
--

CREATE TABLE `confirmtable` (
  `orderId` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `BookID` varchar(10) NOT NULL,
  `BookName` varchar(30) NOT NULL,
  `Author` varchar(30) NOT NULL,
  `Publication` varchar(50) NOT NULL,
  `Genre` varchar(15) NOT NULL,
  `BookPrice` double NOT NULL,
  `BookPublished` date NOT NULL,
  `SellerName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`BookID`, `BookName`, `Author`, `Publication`, `Genre`, `BookPrice`, `BookPublished`, `SellerName`) VALUES
('3456', 'Harry Porter', 'Harry', 'A.K Publication', 'Sci-Fiction', 200, '2021-04-07', 'saiful22'),
('1234', 'Thakur maar jhuli', 'Thakupo', 'A.K Publication', 'Fantasy', 100, '2021-04-08', 'saiful22'),
('7890', 'Himu', 'Humayun Ahmed', 'A.K Publication', 'Biography
', 150, '2021-04-09', 'saiful22'),
('0123', 'Padma nodir majhi', 'Manik Bandopadhya', 'G.K Shamim', 'Biography', 100, '2021-04-10', 'saiful22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `firstname` varchar(40) NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) DEFAULT NULL,
  `address` varchar(50) NOT NULL,
  `phoneno` varchar(30) NOT NULL,
  `nid` int(50) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `dob` varchar(30) NOT NULL,
  `imageg` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`firstname`, `email`, `username`, `password`, `address`, `phoneno`, `nid`, `gender`, `type`, `dob`, `imageg`) VALUES
('Somrat Bhuiyan', 'somrat_15@yahoo.com', 'somrat15', '12345', 'Sirajganj,Dhaka', '01717998902', 78945612, 'male', 'admin', '1996-05-15', '../view/uploads/Batman_Arkham-'),
('Yasir Arafat', 'yasir.turzo@gmail.com', 'yasir18', '1234', 'Dhaka', '01316196211', 213654799, 'male', 'buyer', '1997-11-17', '../view/uploads/Blonde-wallpap'),
('Saiful Islam', 'saiful123@gmail.com', 'saiful22', '1234', 'Banani, Dhaka', '01981943367', 421536987, 'male', 'seller', '1996-06-12', '../view/uploads/Arrow-wallpape'),
('Abdul Jabbar', 'rahat.jabbar@gmail.com', 'rahat30', '1234', 'Baridhara, Dhaka', '01456891024', 654221445, 'male', 'dguy', '1999-01-21', '../view/uploads/Chloe-wallpape');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buyerrequest`
--
ALTER TABLE `buyerrequest`
  ADD PRIMARY KEY (`OrderId`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`BookID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buyerrequest`
--
ALTER TABLE `buyerrequest`
  MODIFY `OrderId` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
