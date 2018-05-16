-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 01, 2017 at 08:51 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `easytrip`
--

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `source` varchar(255) NOT NULL,
  `dest` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`source`, `dest`, `class`, `Price`) VALUES
('Thane', 'Airoli', '1', 200),
('Thane', 'Airoli', 'I', 200);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `email` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `dest` varchar(255) NOT NULL,
  `Class` text NOT NULL,
  `Name` text NOT NULL,
  `NoOfpass` varchar(255) NOT NULL,
  `card_no` varchar(255) NOT NULL,
  `expmonth` varchar(255) NOT NULL,
  `expyear` varchar(255) NOT NULL,
  `cvv` varchar(255) NOT NULL,
  `pin` varchar(255) NOT NULL,
  `Amt` varchar(255) NOT NULL,
  `T_No.` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`email`, `source`, `dest`, `Class`, `Name`, `NoOfpass`, `card_no`, `expmonth`, `expyear`, `cvv`, `pin`, `Amt`, `T_No.`) VALUES
('shehzan@gmail.com', 'Thane', 'Airoli', 'Shehzan', '1', '1', '4523000032375487', '06', '21', '985', '098', '200', 1),
('shehzan@gmail.com', 'Thane', 'Airoli', 'Shehzan', '1', '1', '4523000032375487', '06', '21', '985', '098', '200', 2);

-- --------------------------------------------------------

--
-- Table structure for table `userdatabase`
--

CREATE TABLE `userdatabase` (
  `Name` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Gender` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdatabase`
--

INSERT INTO `userdatabase` (`Name`, `email`, `dob`, `password`, `Gender`) VALUES
('shehzan', 'shehzan@gmail.com', '1998-05-22', 'hello123', 'M');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD UNIQUE KEY `T_No.` (`T_No.`);

--
-- Indexes for table `userdatabase`
--
ALTER TABLE `userdatabase`
  ADD PRIMARY KEY (`email`);
ALTER TABLE `userdatabase` ADD FULLTEXT KEY `Name` (`Name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `T_No.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
