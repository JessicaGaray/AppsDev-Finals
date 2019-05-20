-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 13, 2017 at 06:30 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `katrabaho`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `firstName` text NOT NULL,
  `lastName` text NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `firstName`, `lastName`, `username`, `password`) VALUES
(5, 'Enrico', 'Bernardino', 'kiko', '110595'),
(19, 'Kutchai', 'Jovi', 'kutchaijovi', '101991');

-- --------------------------------------------------------

--
-- Table structure for table `emp_details`
--

CREATE TABLE `emp_details` (
  `id` int(20) NOT NULL,
  `employeeID` varchar(20) NOT NULL,
  `firstName` text NOT NULL,
  `lastName` text NOT NULL,
  `birthDate` varchar(10) NOT NULL,
  `department` text NOT NULL,
  `sssNumber` int(20) NOT NULL,
  `yearEmployed` int(4) NOT NULL,
  `position` text NOT NULL,
  `salary` int(100) NOT NULL,
  `allowedRemainingLeaves` int(10) NOT NULL,
  `username` text NOT NULL,
  `password` int(11) NOT NULL,
  `GENDER` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `emp_details`
--

INSERT INTO `emp_details` (`id`, `employeeID`, `firstName`, `lastName`, `birthDate`, `department`, `sssNumber`, `yearEmployed`, `position`, `salary`, `allowedRemainingLeaves`, `username`, `password`, `GENDER`) VALUES
(4, '19', 'Kutchai', 'Viray', '101991', 'Creatives', 12345678, 2015, 'Head', 25000, 8, 'kutch', 101991, 'Female'),
(9, '08', 'Enrico', 'Bernardino', '110595', 'IT', 12345678, 2015, 'IT Specialist', 21000, 10, 'kiko', 110595, 'Male'),
(10, '03', 'Arvi', 'Binanitan', '051499', 'Facilities', 12345678, 2016, 'Facilities Manager', 20000, 10, 'arvi', 51499, 'Male'),
(14, '17', 'Rongie', 'Juayno', '021799', 'Production', 12345678, 2016, 'Production Manager', 20000, 10, 'ron', 101010, 'Male'),
(21, '12', 'Jessica', 'Garay', '120898', 'Human Resource', 1234567, 2017, 'HR Manager', 18000, 10, 'jess', 121212, 'Female');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_details`
--
ALTER TABLE `emp_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `emp_details`
--
ALTER TABLE `emp_details`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
