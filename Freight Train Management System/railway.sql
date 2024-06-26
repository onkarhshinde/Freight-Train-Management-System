-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Jun 01, 2024 at 08:38 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `railway`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_details`
--

CREATE TABLE `admin_details` (
  `admin_id` int(11) NOT NULL COMMENT 'Admin_ID',
  `username` varchar(50) NOT NULL COMMENT 'First_Name',
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_details`
--

INSERT INTO `admin_details` (`admin_id`, `username`, `password`) VALUES
(1, 'cs315', 'cs315'),
(2,'onkar','onkar002');

-- --------------------------------------------------------

--
-- Table structure for table `cancel_cargo`
--

CREATE TABLE `cancel_cargo` (
  `pnr_number` int(11) NOT NULL,
  `cargo_fare` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `classcargo`
--

CREATE TABLE `classcargo` (
  `train_number` int(11) NOT NULL,
  `start_point` varchar(50) NOT NULL COMMENT 'Starting_Point',
  `destination_point` varchar(50) NOT NULL COMMENT 'Destination_Point',
  `journey_date` date NOT NULL,
  `class_name` varchar(10) NOT NULL,
  `cargo_fare1` int(11) NOT NULL COMMENT 'cargo_fare',
  `available_cargo` int(11) NOT NULL,
  `booked_cargo` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classcargo`
--

INSERT INTO `classcargo` (`train_number`, `start_point`, `destination_point`, `journey_date`, `class_name`, `cargo_fare1`, `available_cargo`, `booked_cargo`) VALUES
(1, 'Adilabad', 'Aurangabad', '2024-06-29', 'Oil tanker', 2000, 46, 4),
(1, 'Adilabad', 'Aurangabad', '2024-06-29', 'Gas tanker', 1800, 100, 0),
(1, 'Adilabad', 'Aurangabad', '2024-06-29', 'Solid Goods', 110, 300, 0),
(1, 'Adilabad', 'Aurangabad', '2024-06-29', 'Car carrier', 1600, 142, 17),
(1, 'Adilabad', 'Aurangabad', '2024-06-29', 'Coal carrier', 600, 300, 0),
(1, 'Adilabad', 'Aurangabad', '2024-06-30', 'Oil tanker', 2000, 50, 0),
(1, 'Adilabad', 'Aurangabad', '2024-06-30', 'Gas tanker', 1800, 100, 0),
(1, 'Adilabad', 'Aurangabad', '2024-06-30', 'Solid Goods', 110, 300, 0),
(1, 'Adilabad', 'Aurangabad', '2024-06-30', 'Car carrier', 1600, 150, 0),
(1, 'Adilabad', 'Aurangabad', '2024-06-30', 'Coal carrier', 600, 300, 0),
(1, 'Adilabad', 'Aurangabad', '2024-07-03', 'Oil tanker', 1600, 40, 0),
(1, 'Adilabad', 'Aurangabad', '2024-07-03', 'Gas tanker', 1400, 30, 0),
(1, 'Adilabad', 'Aurangabad', '2024-07-03', 'Solid Goods', 50, 120, 0),
(1, 'Adilabad', 'Aurangabad', '2024-07-03', 'Car carrier', 1200, 40, 0),
(1, 'Adilabad', 'Aurangabad', '2024-07-03', 'Coal carrier', 800, 80, 0),
(1, 'Adilabad', 'Aurangabad', '2024-07-04', 'Oil tanker', 1800, 40, 0),
(1, 'Adilabad', 'Aurangabad', '2024-07-04', 'Gas tanker', 1600, 40, 0),
(1, 'Adilabad', 'Aurangabad', '2024-07-04', 'Solid Goods', 50, 120, 0),
(1, 'Adilabad', 'Aurangabad', '2024-07-04', 'Car carrier', 1200, 30, 0),
(1, 'Adilabad', 'Aurangabad', '2024-07-04', 'Coal carrier', 300, 80, 0),
(1, 'Adilabad', 'Aurangabad', '2024-07-13', 'Oil tanker', 2000, 50, 0),
(1, 'Adilabad', 'Aurangabad', '2024-07-13', 'Gas tanker', 1800, 100, 0),
(1, 'Adilabad', 'Aurangabad', '2024-07-13', 'Solid Goods', 110, 300, 0),
(1, 'Adilabad', 'Aurangabad', '2024-07-13', 'Car carrier', 1600, 150, 0),
(1, 'Adilabad', 'Aurangabad', '2024-07-13', 'Coal carrier', 600, 300, 0),
(1, 'Adilabad', 'Mumbai', '2024-06-29', 'Oil tanker', 3000, 56, 4),
(1, 'Adilabad', 'Mumbai', '2024-06-29', 'Gas tanker', 2700, 120, 0),
(1, 'Adilabad', 'Mumbai', '2024-06-29', 'Solid Goods', 120, 360, 0),
(1, 'Adilabad', 'Mumbai', '2024-06-29', 'Car carrier', 2400, 172, 17),
(1, 'Adilabad', 'Mumbai', '2024-06-29', 'Coal carrier', 900, 360, 0),
(1, 'Adilabad', 'Mumbai', '2024-06-30', 'Oil tanker', 3000, 60, 0),
(1, 'Adilabad', 'Mumbai', '2024-06-30', 'Gas tanker', 2700, 120, 0),
(1, 'Adilabad', 'Mumbai', '2024-06-30', 'Solid Goods', 120, 360, 0),
(1, 'Adilabad', 'Mumbai', '2024-06-30', 'Car carrier', 2400, 180, 0),
(1, 'Adilabad', 'Mumbai', '2024-06-30', 'Coal carrier', 900, 360, 0),
(1, 'Adilabad', 'Mumbai', '2024-07-03', 'Oil tanker', 2400, 40, 0),
(1, 'Adilabad', 'Mumbai', '2024-07-03', 'Gas tanker', 2100, 30, 0),
(1, 'Adilabad', 'Mumbai', '2024-07-03', 'Solid Goods', 50, 120, 0),
(1, 'Adilabad', 'Mumbai', '2024-07-03', 'Car carrier', 1800, 40, 0),
(1, 'Adilabad', 'Mumbai', '2024-07-03', 'Coal carrier', 800, 80, 0),
(1, 'Adilabad', 'Mumbai', '2024-07-04', 'Oil tanker', 2700, 40, 0),
(1, 'Adilabad', 'Mumbai', '2024-07-04', 'Gas tanker', 2400, 40, 0),
(1, 'Adilabad', 'Mumbai', '2024-07-04', 'Solid Goods', 50, 120, 0),
(1, 'Adilabad', 'Mumbai', '2024-07-04', 'Car carrier', 1800, 30, 0),
(1, 'Adilabad', 'Mumbai', '2024-07-04', 'Coal carrier', 400, 80, 0),
(1, 'Adilabad', 'Mumbai', '2024-07-13', 'Oil tanker', 3000, 60, 0),
(1, 'Adilabad', 'Mumbai', '2024-07-13', 'Gas tanker', 2700, 120, 0),
(1, 'Adilabad', 'Mumbai', '2024-07-13', 'Solid Goods', 120, 360, 0),
(1, 'Adilabad', 'Mumbai', '2024-07-13', 'Car carrier', 2400, 180, 0),
(1, 'Adilabad', 'Mumbai', '2024-07-13', 'Coal carrier', 900, 360, 0),
(1, 'Adilabad', 'Nanded', '2024-06-29', 'Oil tanker', 1000, 36, 4),
(1, 'Adilabad', 'Nanded', '2024-06-29', 'Gas tanker', 900, 80, 0),
(1, 'Adilabad', 'Nanded', '2024-06-29', 'Solid Goods', 100, 240, 0),
(1, 'Adilabad', 'Nanded', '2024-06-29', 'Car carrier', 800, 120, 6),
(1, 'Adilabad', 'Nanded', '2024-06-29', 'Coal carrier', 300, 240, 0),
(1, 'Adilabad', 'Nanded', '2024-06-30', 'Oil tanker', 1000, 40, 0),
(1, 'Adilabad', 'Nanded', '2024-06-30', 'Gas tanker', 900, 80, 0),
(1, 'Adilabad', 'Nanded', '2024-06-30', 'Solid Goods', 100, 240, 0),
(1, 'Adilabad', 'Nanded', '2024-06-30', 'Car carrier', 800, 120, 0),
(1, 'Adilabad', 'Nanded', '2024-06-30', 'Coal carrier', 300, 240, 0),
(1, 'Adilabad', 'Nanded', '2024-07-03', 'Oil tanker', 800, 52, 0),
(1, 'Adilabad', 'Nanded', '2024-07-03', 'Gas tanker', 700, 30, 0),
(1, 'Adilabad', 'Nanded', '2024-07-03', 'Solid Goods', 50, 120, 0),
(1, 'Adilabad', 'Nanded', '2024-07-03', 'Car carrier', 600, 40, 0),
(1, 'Adilabad', 'Nanded', '2024-07-03', 'Coal carrier', 400, 80, 0),
(1, 'Adilabad', 'Nanded', '2024-07-04', 'Oil tanker', 900, 40, 0),
(1, 'Adilabad', 'Nanded', '2024-07-04', 'Gas tanker', 800, 40, 0),
(1, 'Adilabad', 'Nanded', '2024-07-04', 'Solid Goods', 50, 120, 0),
(1, 'Adilabad', 'Nanded', '2024-07-04', 'Car carrier', 800, 20, 0),
(1, 'Adilabad', 'Nanded', '2024-07-04', 'Coal carrier', 200, 80, 0),
(1, 'Adilabad', 'Nanded', '2024-07-13', 'Oil tanker', 1000, 40, 0),
(1, 'Adilabad', 'Nanded', '2024-07-13', 'Gas tanker', 900, 80, 0),
(1, 'Adilabad', 'Nanded', '2024-07-13', 'Solid Goods', 100, 240, 0),
(1, 'Adilabad', 'Nanded', '2024-07-13', 'Car carrier', 800, 120, 0),
(1, 'Adilabad', 'Nanded', '2024-07-13', 'Coal carrier', 300, 240, 0),
(1, 'Aurangabad', 'Mumbai', '2024-06-29', 'Oil tanker', 1000, 86, 4),
(1, 'Aurangabad', 'Mumbai', '2024-06-29', 'Gas tanker', 2700, 180, 0),
(1, 'Aurangabad', 'Mumbai', '2024-06-29', 'Solid Goods', 150, 380, 0),
(1, 'Aurangabad', 'Mumbai', '2024-06-29', 'Car carrier', 2400, 265, 11),
(1, 'Aurangabad', 'Mumbai', '2024-06-29', 'Coal carrier', 300, 380, 0),
(1, 'Aurangabad', 'Mumbai', '2024-06-30', 'Oil tanker', 1000, 90, 0),
(1, 'Aurangabad', 'Mumbai', '2024-06-30', 'Gas tanker', 2700, 180, 0),
(1, 'Aurangabad', 'Mumbai', '2024-06-30', 'Solid Goods', 150, 380, 0),
(1, 'Aurangabad', 'Mumbai', '2024-06-30', 'Car carrier', 2400, 270, 0),
(1, 'Aurangabad', 'Mumbai', '2024-06-30', 'Coal carrier', 300, 380, 0),
(1, 'Aurangabad', 'Mumbai', '2024-07-03', 'Oil tanker', 800, 40, 0),
(1, 'Aurangabad', 'Mumbai', '2024-07-03', 'Gas tanker', 700, 30, 0),
(1, 'Aurangabad', 'Mumbai', '2024-07-03', 'Solid Goods', 50, 120, 0),
(1, 'Aurangabad', 'Mumbai', '2024-07-03', 'Car carrier', 1800, 40, 0),
(1, 'Aurangabad', 'Mumbai', '2024-07-03', 'Coal carrier', 800, 80, 0),
(1, 'Aurangabad', 'Mumbai', '2024-07-04', 'Oil tanker', 900, 40, 0),
(1, 'Aurangabad', 'Mumbai', '2024-07-04', 'Gas tanker', 800, 40, 0),
(1, 'Aurangabad', 'Mumbai', '2024-07-04', 'Solid Goods', 50, 120, 0),
(1, 'Aurangabad', 'Mumbai', '2024-07-04', 'Car carrier', 820, 30, 0),
(1, 'Aurangabad', 'Mumbai', '2024-07-04', 'Coal carrier', 400, 80, 0),
(1, 'Aurangabad', 'Mumbai', '2024-07-13', 'Oil tanker', 1000, 90, 0),
(1, 'Aurangabad', 'Mumbai', '2024-07-13', 'Gas tanker', 2700, 180, 0),
(1, 'Aurangabad', 'Mumbai', '2024-07-13', 'Solid Goods', 150, 380, 0),
(1, 'Aurangabad', 'Mumbai', '2024-07-13', 'Car carrier', 2400, 270, 0),
(1, 'Aurangabad', 'Mumbai', '2024-07-13', 'Coal carrier', 300, 380, 0),
(1, 'Nanded', 'Aurangabad', '2024-06-29', 'Oil tanker', 1000, 66, 4),
(1, 'Nanded', 'Aurangabad', '2024-06-29', 'Gas tanker', 900, 140, 0),
(1, 'Nanded', 'Aurangabad', '2024-06-29', 'Solid Goods', 130, 320, 0),
(1, 'Nanded', 'Aurangabad', '2024-06-29', 'Car carrier', 800, 202, 17),
(1, 'Nanded', 'Aurangabad', '2024-06-29', 'Coal carrier', 300, 320, 0),
(1, 'Nanded', 'Aurangabad', '2024-06-30', 'Oil tanker', 1000, 70, 0),
(1, 'Nanded', 'Aurangabad', '2024-06-30', 'Gas tanker', 900, 140, 0),
(1, 'Nanded', 'Aurangabad', '2024-06-30', 'Solid Goods', 130, 320, 0),
(1, 'Nanded', 'Aurangabad', '2024-06-30', 'Car carrier', 800, 210, 0),
(1, 'Nanded', 'Aurangabad', '2024-06-30', 'Coal carrier', 300, 320, 0),
(1, 'Nanded', 'Aurangabad', '2024-07-03', 'Oil tanker', 800, 40, 0),
(1, 'Nanded', 'Aurangabad', '2024-07-03', 'Gas tanker', 700, 30, 0),
(1, 'Nanded', 'Aurangabad', '2024-07-03', 'Solid Goods', 50, 120, 0),
(1, 'Nanded', 'Aurangabad', '2024-07-03', 'Car carrier', 600, 40, 0),
(1, 'Nanded', 'Aurangabad', '2024-07-03', 'Coal carrier', 800, 80, 0),
(1, 'Nanded', 'Aurangabad', '2024-07-04', 'Oil tanker', 900, 40, 0),
(1, 'Nanded', 'Aurangabad', '2024-07-04', 'Gas tanker', 800, 40, 0),
(1, 'Nanded', 'Aurangabad', '2024-07-04', 'Solid Goods', 50, 120, 0),
(1, 'Nanded', 'Aurangabad', '2024-07-04', 'Car carrier', 300, 30, 0),
(1, 'Nanded', 'Aurangabad', '2024-07-04', 'Coal carrier', 200, 80, 0),
(1, 'Nanded', 'Aurangabad', '2024-07-13', 'Oil tanker', 1000, 70, 0),
(1, 'Nanded', 'Aurangabad', '2024-07-13', 'Gas tanker', 900, 140, 0),
(1, 'Nanded', 'Aurangabad', '2024-07-13', 'Solid Goods', 130, 320, 0),
(1, 'Nanded', 'Aurangabad', '2024-07-13', 'Car carrier', 800, 210, 0),
(1, 'Nanded', 'Aurangabad', '2024-07-13', 'Coal carrier', 300, 320, 0),
(1, 'Nanded', 'Mumbai', '2024-06-29', 'Oil tanker', 2000, 76, 4),
(1, 'Nanded', 'Mumbai', '2024-06-29', 'Gas tanker', 1800, 160, 0),
(1, 'Nanded', 'Mumbai', '2024-06-29', 'Solid Goods', 140, 340, 0),
(1, 'Nanded', 'Mumbai', '2024-06-29', 'Car carrier', 1600, 232, 17),
(1, 'Nanded', 'Mumbai', '2024-06-29', 'Coal carrier', 600, 340, 0),
(1, 'Nanded', 'Mumbai', '2024-06-30', 'Oil tanker', 2000, 80, 0),
(1, 'Nanded', 'Mumbai', '2024-06-30', 'Gas tanker', 1800, 160, 0),
(1, 'Nanded', 'Mumbai', '2024-06-30', 'Solid Goods', 140, 340, 0),
(1, 'Nanded', 'Mumbai', '2024-06-30', 'Car carrier', 1600, 240, 0),
(1, 'Nanded', 'Mumbai', '2024-06-30', 'Coal carrier', 600, 340, 0),
(1, 'Nanded', 'Mumbai', '2024-07-03', 'Oil tanker', 800, 40, 0),
(1, 'Nanded', 'Mumbai', '2024-07-03', 'Gas tanker', 1400, 30, 0),
(1, 'Nanded', 'Mumbai', '2024-07-03', 'Solid Goods', 50, 120, 0),
(1, 'Nanded', 'Mumbai', '2024-07-03', 'Car carrier', 1200, 40, 0),
(1, 'Nanded', 'Mumbai', '2024-07-03', 'Coal carrier', 800, 80, 0),
(1, 'Nanded', 'Mumbai', '2024-07-04', 'Oil tanker', 1800, 40, 0),
(1, 'Nanded', 'Mumbai', '2024-07-04', 'Gas tanker', 1600, 40, 0),
(1, 'Nanded', 'Mumbai', '2024-07-04', 'Solid Goods', 50, 120, 0),
(1, 'Nanded', 'Mumbai', '2024-07-04', 'Car carrier', 500, 30, 0),
(1, 'Nanded', 'Mumbai', '2024-07-04', 'Coal carrier', 300, 80, 0),
(1, 'Nanded', 'Mumbai', '2024-07-13', 'Oil tanker', 2000, 80, 0),
(1, 'Nanded', 'Mumbai', '2024-07-13', 'Gas tanker', 1800, 160, 0),
(1, 'Nanded', 'Mumbai', '2024-07-13', 'Solid Goods', 140, 340, 0),
(1, 'Nanded', 'Mumbai', '2024-07-13', 'Car carrier', 1600, 240, 0),
(1, 'Nanded', 'Mumbai', '2024-07-13', 'Coal carrier', 600, 340, 0),
(2, 'Aurangabad', 'Adilabad', '2024-06-29', 'Oil tanker', 2000, 80, 0),
(2, 'Aurangabad', 'Adilabad', '2024-06-29', 'Gas tanker', 1800, 140, 0),
(2, 'Aurangabad', 'Adilabad', '2024-06-29', 'Solid Goods', 200, 340, 0),
(2, 'Aurangabad', 'Adilabad', '2024-06-29', 'Car carrier', 1600, 180, 0),
(2, 'Aurangabad', 'Adilabad', '2024-06-29', 'Coal carrier', 800, 340, 0),
(2, 'Aurangabad', 'Adilabad', '2024-07-03', 'Oil tanker', 1800, 40, 0),
(2, 'Aurangabad', 'Adilabad', '2024-07-03', 'Gas tanker', 1800, 30, 0),
(2, 'Aurangabad', 'Adilabad', '2024-07-03', 'Solid Goods', 150, 120, 0),
(2, 'Aurangabad', 'Adilabad', '2024-07-03', 'Car carrier', 1600, 40, 0),
(2, 'Aurangabad', 'Adilabad', '2024-07-03', 'Coal carrier', 300, 240, 0),
(2, 'Aurangabad', 'Adilabad', '2024-07-04', 'Oil tanker', 1800, 40, 0),
(2, 'Aurangabad', 'Adilabad', '2024-07-04', 'Gas tanker', 1400, 30, 0),
(2, 'Aurangabad', 'Adilabad', '2024-07-04', 'Solid Goods', 150, 120, 0),
(2, 'Aurangabad', 'Adilabad', '2024-07-04', 'Car carrier', 1600, 40, 0),
(2, 'Aurangabad', 'Adilabad', '2024-07-04', 'Coal carrier', 800, 240, 0),
(2, 'Aurangabad', 'Adilabad', '2024-07-13', 'Oil tanker', 2000, 80, 0),
(2, 'Aurangabad', 'Adilabad', '2024-07-13', 'Gas tanker', 1800, 140, 0),
(2, 'Aurangabad', 'Adilabad', '2024-07-13', 'Solid Goods', 200, 340, 0),
(2, 'Aurangabad', 'Adilabad', '2024-07-13', 'Car carrier', 1600, 180, 0),
(2, 'Aurangabad', 'Adilabad', '2024-07-13', 'Coal carrier', 800, 340, 0),
(2, 'Aurangabad', 'Nanded', '2024-06-29', 'Oil tanker', 1000, 70, 0),
(2, 'Aurangabad', 'Nanded', '2024-06-29', 'Gas tanker', 900, 120, 0),
(2, 'Aurangabad', 'Nanded', '2024-06-29', 'Solid Goods', 100, 320, 0),
(2, 'Aurangabad', 'Nanded', '2024-06-29', 'Car carrier', 800, 160, 0),
(2, 'Aurangabad', 'Nanded', '2024-06-29', 'Coal carrier', 400, 320, 0),
(2, 'Aurangabad', 'Nanded', '2024-07-03', 'Oil tanker', 1000, 40, 0),
(2, 'Aurangabad', 'Nanded', '2024-07-03', 'Gas tanker', 800, 30, 0),
(2, 'Aurangabad', 'Nanded', '2024-07-03', 'Solid Goods', 100, 120, 0),
(2, 'Aurangabad', 'Nanded', '2024-07-03', 'Car carrier', 600, 40, 0),
(2, 'Aurangabad', 'Nanded', '2024-07-03', 'Coal carrier', 300, 240, 0),
(2, 'Aurangabad', 'Nanded', '2024-07-04', 'Oil tanker', 1000, 40, 0),
(2, 'Aurangabad', 'Nanded', '2024-07-04', 'Gas tanker', 800, 30, 0),
(2, 'Aurangabad', 'Nanded', '2024-07-04', 'Solid Goods', 100, 120, 0),
(2, 'Aurangabad', 'Nanded', '2024-07-04', 'Car carrier', 600, 40, 0),
(2, 'Aurangabad', 'Nanded', '2024-07-04', 'Coal carrier', 400, 240, 0),
(2, 'Aurangabad', 'Nanded', '2024-07-13', 'Oil tanker', 1000, 70, 0),
(2, 'Aurangabad', 'Nanded', '2024-07-13', 'Gas tanker', 900, 120, 0),
(2, 'Aurangabad', 'Nanded', '2024-07-13', 'Solid Goods', 100, 320, 0),
(2, 'Aurangabad', 'Nanded', '2024-07-13', 'Car carrier', 800, 160, 0),
(2, 'Aurangabad', 'Nanded', '2024-07-13', 'Coal carrier', 400, 320, 0),
(2, 'Mumbai', 'Adilabad', '2024-06-29', 'Oil tanker', 3000, 56, 4),
(2, 'Mumbai', 'Adilabad', '2024-06-29', 'Gas tanker', 2700, 120, 0),
(2, 'Mumbai', 'Adilabad', '2024-06-29', 'Solid Goods', 300, 400, 0),
(2, 'Mumbai', 'Adilabad', '2024-06-29', 'Car carrier', 2400, 180, 0),
(2, 'Mumbai', 'Adilabad', '2024-06-29', 'Coal carrier', 1200, 400, 0),
(2, 'Mumbai', 'Adilabad', '2024-07-03', 'Oil tanker', 2400, 40, 0),
(2, 'Mumbai', 'Adilabad', '2024-07-03', 'Gas tanker', 2400, 30, 0),
(2, 'Mumbai', 'Adilabad', '2024-07-03', 'Solid Goods', 200, 120, 0),
(2, 'Mumbai', 'Adilabad', '2024-07-03', 'Car carrier', 1800, 40, 0),
(2, 'Mumbai', 'Adilabad', '2024-07-03', 'Coal carrier', 400, 240, 0),
(2, 'Mumbai', 'Adilabad', '2024-07-04', 'Oil tanker', 1200, 40, 0),
(2, 'Mumbai', 'Adilabad', '2024-07-04', 'Gas tanker', 2400, 30, 0),
(2, 'Mumbai', 'Adilabad', '2024-07-04', 'Solid Goods', 350, 120, 0),
(2, 'Mumbai', 'Adilabad', '2024-07-04', 'Car carrier', 1800, 40, 0),
(2, 'Mumbai', 'Adilabad', '2024-07-04', 'Coal carrier', 800, 240, 0),
(2, 'Mumbai', 'Adilabad', '2024-07-13', 'Oil tanker', 3000, 60, 0),
(2, 'Mumbai', 'Adilabad', '2024-07-13', 'Gas tanker', 2700, 120, 0),
(2, 'Mumbai', 'Adilabad', '2024-07-13', 'Solid Goods', 300, 400, 0),
(2, 'Mumbai', 'Adilabad', '2024-07-13', 'Car carrier', 2400, 180, 0),
(2, 'Mumbai', 'Adilabad', '2024-07-13', 'Coal carrier', 1200, 400, 0),
(2, 'Mumbai', 'Aurangabad', '2024-06-29', 'Oil tanker', 1000, 36, 4),
(2, 'Mumbai', 'Aurangabad', '2024-06-29', 'Gas tanker', 900, 80, 0),
(2, 'Mumbai', 'Aurangabad', '2024-06-29', 'Solid Goods', 100, 320, 0),
(2, 'Mumbai', 'Aurangabad', '2024-06-29', 'Car carrier', 800, 120, 0),
(2, 'Mumbai', 'Aurangabad', '2024-06-29', 'Coal carrier', 400, 320, 0),
(2, 'Mumbai', 'Aurangabad', '2024-07-03', 'Oil tanker', 1000, 52, 0),
(2, 'Mumbai', 'Aurangabad', '2024-07-03', 'Gas tanker', 1000, 30, 0),
(2, 'Mumbai', 'Aurangabad', '2024-07-03', 'Solid Goods', 100, 120, 0),
(2, 'Mumbai', 'Aurangabad', '2024-07-03', 'Car carrier', 800, 40, 0),
(2, 'Mumbai', 'Aurangabad', '2024-07-03', 'Coal carrier', 400, 240, 0),
(2, 'Mumbai', 'Aurangabad', '2024-07-04', 'Oil tanker', 1200, 52, 0),
(2, 'Mumbai', 'Aurangabad', '2024-07-04', 'Gas tanker', 1000, 30, 0),
(2, 'Mumbai', 'Aurangabad', '2024-07-04', 'Solid Goods', 100, 120, 0),
(2, 'Mumbai', 'Aurangabad', '2024-07-04', 'Car carrier', 600, 40, 0),
(2, 'Mumbai', 'Aurangabad', '2024-07-04', 'Coal carrier', 400, 240, 0),
(2, 'Mumbai', 'Aurangabad', '2024-07-13', 'Oil tanker', 1000, 40, 0),
(2, 'Mumbai', 'Aurangabad', '2024-07-13', 'Gas tanker', 900, 80, 0),
(2, 'Mumbai', 'Aurangabad', '2024-07-13', 'Solid Goods', 100, 320, 0),
(2, 'Mumbai', 'Aurangabad', '2024-07-13', 'Car carrier', 800, 120, 0),
(2, 'Mumbai', 'Aurangabad', '2024-07-13', 'Coal carrier', 400, 320, 0),
(2, 'Mumbai', 'Nanded', '2024-06-29', 'Oil tanker', 2000, 46, 4),
(2, 'Mumbai', 'Nanded', '2024-06-29', 'Gas tanker', 1800, 100, 0),
(2, 'Mumbai', 'Nanded', '2024-06-29', 'Solid Goods', 200, 360, 0),
(2, 'Mumbai', 'Nanded', '2024-06-29', 'Car carrier', 1600, 150, 0),
(2, 'Mumbai', 'Nanded', '2024-06-29', 'Coal carrier', 800, 360, 0),
(2, 'Mumbai', 'Nanded', '2024-07-03', 'Oil tanker', 1300, 40, 0),
(2, 'Mumbai', 'Nanded', '2024-07-03', 'Gas tanker', 900, 30, 0),
(2, 'Mumbai', 'Nanded', '2024-07-03', 'Solid Goods', 150, 120, 0),
(2, 'Mumbai', 'Nanded', '2024-07-03', 'Car carrier', 1200, 40, 0),
(2, 'Mumbai', 'Nanded', '2024-07-03', 'Coal carrier', 600, 240, 0),
(2, 'Mumbai', 'Nanded', '2024-07-04', 'Oil tanker', 2000, 40, 0),
(2, 'Mumbai', 'Nanded', '2024-07-04', 'Gas tanker', 1600, 30, 0),
(2, 'Mumbai', 'Nanded', '2024-07-04', 'Solid Goods', 150, 120, 0),
(2, 'Mumbai', 'Nanded', '2024-07-04', 'Car carrier', 800, 40, 0),
(2, 'Mumbai', 'Nanded', '2024-07-04', 'Coal carrier', 450, 240, 0),
(2, 'Mumbai', 'Nanded', '2024-07-13', 'Oil tanker', 2000, 50, 0),
(2, 'Mumbai', 'Nanded', '2024-07-13', 'Gas tanker', 1800, 100, 0),
(2, 'Mumbai', 'Nanded', '2024-07-13', 'Solid Goods', 200, 360, 0),
(2, 'Mumbai', 'Nanded', '2024-07-13', 'Car carrier', 1600, 150, 0),
(2, 'Mumbai', 'Nanded', '2024-07-13', 'Coal carrier', 800, 360, 0),
(2, 'Nanded', 'Adilabad', '2024-06-30', 'Oil tanker', 1000, 70, 0),
(2, 'Nanded', 'Adilabad', '2024-06-30', 'Gas tanker', 900, 120, 0),
(2, 'Nanded', 'Adilabad', '2024-06-30', 'Solid Goods', 100, 340, 0),
(2, 'Nanded', 'Adilabad', '2024-06-30', 'Car carrier', 800, 160, 0),
(2, 'Nanded', 'Adilabad', '2024-06-30', 'Coal carrier', 400, 340, 0),
(2, 'Nanded', 'Adilabad', '2024-07-04', 'Oil tanker', 900, 40, 0),
(2, 'Nanded', 'Adilabad', '2024-07-04', 'Gas tanker', 2700, 30, 0),
(2, 'Nanded', 'Adilabad', '2024-07-04', 'Solid Goods', 100, 120, 0),
(2, 'Nanded', 'Adilabad', '2024-07-04', 'Car carrier', 300, 40, 0),
(2, 'Nanded', 'Adilabad', '2024-07-04', 'Coal carrier', 300, 240, 0),
(2, 'Nanded', 'Adilabad', '2024-07-05', 'Oil tanker', 800, 40, 0),
(2, 'Nanded', 'Adilabad', '2024-07-05', 'Gas tanker', 2700, 30, 0),
(2, 'Nanded', 'Adilabad', '2024-07-05', 'Solid Goods', 350, 120, 0),
(2, 'Nanded', 'Adilabad', '2024-07-05', 'Car carrier', 2400, 40, 0),
(2, 'Nanded', 'Adilabad', '2024-07-05', 'Coal carrier', 400, 240, 0),
(2, 'Nanded', 'Adilabad', '2024-07-14', 'Oil tanker', 1000, 70, 0),
(2, 'Nanded', 'Adilabad', '2024-07-14', 'Gas tanker', 900, 120, 0),
(2, 'Nanded', 'Adilabad', '2024-07-14', 'Solid Goods', 100, 340, 0),
(2, 'Nanded', 'Adilabad', '2024-07-14', 'Car carrier', 800, 160, 0),
(2, 'Nanded', 'Adilabad', '2024-07-14', 'Coal carrier', 400, 340, 0),
(3, 'Aurangabad', 'Mumbai', '2024-06-29', 'Oil tanker', 1500, 50, 0),
(3, 'Aurangabad', 'Mumbai', '2024-06-29', 'Gas tanker', 1300, 96, 4),
(3, 'Aurangabad', 'Mumbai', '2024-06-29', 'Solid Goods', 180, 360, 3),
(3, 'Aurangabad', 'Mumbai', '2024-06-29', 'Car carrier', 1600, 120, 0),
(3, 'Aurangabad', 'Mumbai', '2024-06-29', 'Coal carrier', 500, 360, 0),
(3, 'Aurangabad', 'Mumbai', '2024-07-03', 'Oil tanker', 580, 20, 0),
(3, 'Aurangabad', 'Mumbai', '2024-07-03', 'Gas tanker', 440, 40, 0),
(3, 'Aurangabad', 'Mumbai', '2024-07-03', 'Car carrier', 5440, 40, 0),
(3, 'Aurangabad', 'Mumbai', '2024-07-04', 'Oil tanker', 450, 30, 0),
(3, 'Aurangabad', 'Mumbai', '2024-07-04', 'Gas tanker', 870, 30, 0),
(3, 'Aurangabad', 'Mumbai', '2024-07-04', 'Car carrier', 540, 30, 0),
(3, 'Aurangabad', 'Mumbai', '2024-07-13', 'Oil tanker', 1500, 50, 0),
(3, 'Aurangabad', 'Mumbai', '2024-07-13', 'Gas tanker', 1300, 100, 0),
(3, 'Aurangabad', 'Mumbai', '2024-07-13', 'Solid Goods', 180, 360, 0),
(3, 'Aurangabad', 'Mumbai', '2024-07-13', 'Car carrier', 1600, 120, 0),
(3, 'Aurangabad', 'Mumbai', '2024-07-13', 'Coal carrier', 500, 360, 0),
(3, 'Aurangabad', 'Nashik', '2024-06-29', 'Oil tanker', 1000, 40, 0),
(3, 'Aurangabad', 'Nashik', '2024-06-29', 'Gas tanker', 900, 76, 4),
(3, 'Aurangabad', 'Nashik', '2024-06-29', 'Solid Goods', 90, 360, 3),
(3, 'Aurangabad', 'Nashik', '2024-06-29', 'Car carrier', 800, 120, 0),
(3, 'Aurangabad', 'Nashik', '2024-06-29', 'Coal carrier', 250, 360, 0),
(3, 'Aurangabad', 'Nashik', '2024-07-03', 'Oil tanker', 780, 50, 0),
(3, 'Aurangabad', 'Nashik', '2024-07-03', 'Gas tanker', 44, 60, 0),
(3, 'Aurangabad', 'Nashik', '2024-07-03', 'Car carrier', 450, 40, 0),
(3, 'Aurangabad', 'Nashik', '2024-07-04', 'Oil tanker', 650, 30, 0),
(3, 'Aurangabad', 'Nashik', '2024-07-04', 'Gas tanker', 340, 30, 0),
(3, 'Aurangabad', 'Nashik', '2024-07-04', 'Car carrier', 340, 30, 0),
(3, 'Aurangabad', 'Nashik', '2024-07-13', 'Oil tanker', 1000, 40, 0),
(3, 'Aurangabad', 'Nashik', '2024-07-13', 'Gas tanker', 900, 80, 0),
(3, 'Aurangabad', 'Nashik', '2024-07-13', 'Solid Goods', 90, 360, 0),
(3, 'Aurangabad', 'Nashik', '2024-07-13', 'Car carrier', 800, 120, 0),
(3, 'Aurangabad', 'Nashik', '2024-07-13', 'Coal carrier', 250, 360, 0),
(3, 'Basar', 'Aurangabad', '2024-06-29', 'Oil tanker', 1500, 50, 0),
(3, 'Basar', 'Aurangabad', '2024-06-29', 'Gas tanker', 1300, 96, 4),
(3, 'Basar', 'Aurangabad', '2024-06-29', 'Solid Goods', 180, 360, 3),
(3, 'Basar', 'Aurangabad', '2024-06-29', 'Car carrier', 1200, 120, 0),
(3, 'Basar', 'Aurangabad', '2024-06-29', 'Coal carrier', 500, 360, 0),
(3, 'Basar', 'Aurangabad', '2024-07-03', 'Oil tanker', 500, 59, 0),
(3, 'Basar', 'Aurangabad', '2024-07-03', 'Gas tanker', 440, 87, 0),
(3, 'Basar', 'Aurangabad', '2024-07-03', 'Car carrier', 550, 40, 0),
(3, 'Basar', 'Aurangabad', '2024-07-04', 'Oil tanker', 450, 30, 0),
(3, 'Basar', 'Aurangabad', '2024-07-04', 'Gas tanker', 550, 30, 0),
(3, 'Basar', 'Aurangabad', '2024-07-04', 'Car carrier', 560, 30, 0),
(3, 'Basar', 'Aurangabad', '2024-07-13', 'Oil tanker', 1500, 50, 0),
(3, 'Basar', 'Aurangabad', '2024-07-13', 'Gas tanker', 1300, 100, 0),
(3, 'Basar', 'Aurangabad', '2024-07-13', 'Solid Goods', 180, 360, 0),
(3, 'Basar', 'Aurangabad', '2024-07-13', 'Car carrier', 1200, 120, 0),
(3, 'Basar', 'Aurangabad', '2024-07-13', 'Coal carrier', 500, 360, 0),
(3, 'Basar', 'Mumbai', '2024-06-29', 'Oil tanker', 2500, 70, 0),
(3, 'Basar', 'Mumbai', '2024-06-29', 'Gas tanker', 2100, 116, 4),
(3, 'Basar', 'Mumbai', '2024-06-29', 'Solid Goods', 360, 360, 3),
(3, 'Basar', 'Mumbai', '2024-06-29', 'Car carrier', 2000, 120, 0),
(3, 'Basar', 'Mumbai', '2024-06-29', 'Coal carrier', 1000, 360, 0),
(3, 'Basar', 'Mumbai', '2024-07-03', 'Oil tanker', 200, 20, 0),
(3, 'Basar', 'Mumbai', '2024-07-03', 'Gas tanker', 440, 32, 0),
(3, 'Basar', 'Mumbai', '2024-07-03', 'Car carrier', 550, 40, 0),
(3, 'Basar', 'Mumbai', '2024-07-04', 'Oil tanker', 540, 30, 0),
(3, 'Basar', 'Mumbai', '2024-07-04', 'Gas tanker', 760, 30, 0),
(3, 'Basar', 'Mumbai', '2024-07-04', 'Car carrier', 450, 30, 0),
(3, 'Basar', 'Mumbai', '2024-07-13', 'Oil tanker', 2500, 70, 0),
(3, 'Basar', 'Mumbai', '2024-07-13', 'Gas tanker', 2100, 120, 0),
(3, 'Basar', 'Mumbai', '2024-07-13', 'Solid Goods', 360, 360, 0),
(3, 'Basar', 'Mumbai', '2024-07-13', 'Car carrier', 2000, 120, 0),
(3, 'Basar', 'Mumbai', '2024-07-13', 'Coal carrier', 1000, 360, 0),
(3, 'Basar', 'Nanded', '2024-06-29', 'Oil tanker', 1000, 40, 0),
(3, 'Basar', 'Nanded', '2024-06-29', 'Gas tanker', 900, 76, 4),
(3, 'Basar', 'Nanded', '2024-06-29', 'Solid Goods', 90, 360, 3),
(3, 'Basar', 'Nanded', '2024-06-29', 'Car carrier', 800, 120, 0),
(3, 'Basar', 'Nanded', '2024-06-29', 'Coal carrier', 250, 360, 0),
(3, 'Basar', 'Nanded', '2024-07-03', 'Oil tanker', 500, 40, 0),
(3, 'Basar', 'Nanded', '2024-07-03', 'Gas tanker', 440, 30, 0),
(3, 'Basar', 'Nanded', '2024-07-03', 'Car carrier', 550, 40, 0),
(3, 'Basar', 'Nanded', '2024-07-04', 'Oil tanker', 540, 30, 0),
(3, 'Basar', 'Nanded', '2024-07-04', 'Gas tanker', 760, 30, 0),
(3, 'Basar', 'Nanded', '2024-07-04', 'Car carrier', 560, 30, 0),
(3, 'Basar', 'Nanded', '2024-07-13', 'Oil tanker', 1000, 40, 0),
(3, 'Basar', 'Nanded', '2024-07-13', 'Gas tanker', 900, 80, 0),
(3, 'Basar', 'Nanded', '2024-07-13', 'Solid Goods', 90, 360, 0),
(3, 'Basar', 'Nanded', '2024-07-13', 'Car carrier', 800, 120, 0),
(3, 'Basar', 'Nanded', '2024-07-13', 'Coal carrier', 250, 360, 0),
(3, 'Basar', 'Nashik', '2024-06-29', 'Oil tanker', 2000, 60, 0),
(3, 'Basar', 'Nashik', '2024-06-29', 'Gas tanker', 1700, 116, 4),
(3, 'Basar', 'Nashik', '2024-06-29', 'Solid Goods', 270, 360, 3),
(3, 'Basar', 'Nashik', '2024-06-29', 'Car carrier', 1600, 120, 0),
(3, 'Basar', 'Nashik', '2024-06-29', 'Coal carrier', 750, 360, 0),
(3, 'Basar', 'Nashik', '2024-07-03', 'Oil tanker', 200, 30, 0),
(3, 'Basar', 'Nashik', '2024-07-03', 'Gas tanker', 440, 65, 0),
(3, 'Basar', 'Nashik', '2024-07-03', 'Car carrier', 555, 40, 0),
(3, 'Basar', 'Nashik', '2024-07-04', 'Oil tanker', 650, 30, 0),
(3, 'Basar', 'Nashik', '2024-07-04', 'Gas tanker', 678, 30, 0),
(3, 'Basar', 'Nashik', '2024-07-04', 'Car carrier', 450, 30, 0),
(3, 'Basar', 'Nashik', '2024-07-13', 'Oil tanker', 2000, 60, 0),
(3, 'Basar', 'Nashik', '2024-07-13', 'Gas tanker', 1700, 120, 0),
(3, 'Basar', 'Nashik', '2024-07-13', 'Solid Goods', 270, 360, 0),
(3, 'Basar', 'Nashik', '2024-07-13', 'Car carrier', 1600, 120, 0),
(3, 'Basar', 'Nashik', '2024-07-13', 'Coal carrier', 750, 360, 0),
(3, 'Nanded', 'Aurangabad', '2024-06-29', 'Oil tanker', 1000, 40, 0),
(3, 'Nanded', 'Aurangabad', '2024-06-29', 'Gas tanker', 900, 76, 4),
(3, 'Nanded', 'Aurangabad', '2024-06-29', 'Solid Goods', 90, 360, 3),
(3, 'Nanded', 'Aurangabad', '2024-06-29', 'Car carrier', 800, 120, 0),
(3, 'Nanded', 'Aurangabad', '2024-06-29', 'Coal carrier', 250, 360, 0),
(3, 'Nanded', 'Aurangabad', '2024-07-03', 'Oil tanker', 850, 52, 0),
(3, 'Nanded', 'Aurangabad', '2024-07-03', 'Gas tanker', 440, 20, 0),
(3, 'Nanded', 'Aurangabad', '2024-07-03', 'Car carrier', 540, 40, 0),
(3, 'Nanded', 'Aurangabad', '2024-07-04', 'Oil tanker', 540, 33, 0),
(3, 'Nanded', 'Aurangabad', '2024-07-04', 'Gas tanker', 650, 30, 0),
(3, 'Nanded', 'Aurangabad', '2024-07-04', 'Car carrier', 540, 30, 0),
(3, 'Nanded', 'Aurangabad', '2024-07-13', 'Oil tanker', 1000, 40, 0),
(3, 'Nanded', 'Aurangabad', '2024-07-13', 'Gas tanker', 900, 80, 0),
(3, 'Nanded', 'Aurangabad', '2024-07-13', 'Solid Goods', 90, 360, 0),
(3, 'Nanded', 'Aurangabad', '2024-07-13', 'Car carrier', 800, 120, 0),
(3, 'Nanded', 'Aurangabad', '2024-07-13', 'Coal carrier', 250, 360, 0),
(3, 'Nanded', 'Mumbai', '2024-06-29', 'Oil tanker', 2000, 60, 0),
(3, 'Nanded', 'Mumbai', '2024-06-29', 'Gas tanker', 1700, 96, 4),
(3, 'Nanded', 'Mumbai', '2024-06-29', 'Solid Goods', 270, 360, 3),
(3, 'Nanded', 'Mumbai', '2024-06-29', 'Car carrier', 1600, 120, 0),
(3, 'Nanded', 'Mumbai', '2024-06-29', 'Coal carrier', 750, 360, 0),
(3, 'Nanded', 'Mumbai', '2024-07-03', 'Oil tanker', 850, 52, 0),
(3, 'Nanded', 'Mumbai', '2024-07-03', 'Gas tanker', 430, 50, 0),
(3, 'Nanded', 'Mumbai', '2024-07-03', 'Car carrier', 540, 40, 0),
(3, 'Nanded', 'Mumbai', '2024-07-04', 'Oil tanker', 450, 30, 0),
(3, 'Nanded', 'Mumbai', '2024-07-04', 'Gas tanker', 450, 30, 0),
(3, 'Nanded', 'Mumbai', '2024-07-04', 'Car carrier', 540, 30, 0),
(3, 'Nanded', 'Mumbai', '2024-07-13', 'Oil tanker', 2000, 60, 0),
(3, 'Nanded', 'Mumbai', '2024-07-13', 'Gas tanker', 1700, 100, 0),
(3, 'Nanded', 'Mumbai', '2024-07-13', 'Solid Goods', 270, 360, 0),
(3, 'Nanded', 'Mumbai', '2024-07-13', 'Car carrier', 1600, 120, 0),
(3, 'Nanded', 'Mumbai', '2024-07-13', 'Coal carrier', 750, 360, 0),
(3, 'Nanded', 'Nashik', '2024-06-29', 'Oil tanker', 1500, 50, 0),
(3, 'Nanded', 'Nashik', '2024-06-29', 'Gas tanker', 1300, 96, 4),
(3, 'Nanded', 'Nashik', '2024-06-29', 'Solid Goods', 180, 360, 3),
(3, 'Nanded', 'Nashik', '2024-06-29', 'Car carrier', 1200, 120, 0),
(3, 'Nanded', 'Nashik', '2024-06-29', 'Coal carrier', 500, 360, 0),
(3, 'Nanded', 'Nashik', '2024-07-03', 'Oil tanker', 808, 50, 0),
(3, 'Nanded', 'Nashik', '2024-07-03', 'Gas tanker', 440, 20, 0),
(3, 'Nanded', 'Nashik', '2024-07-03', 'Car carrier', 654, 40, 0),
(3, 'Nanded', 'Nashik', '2024-07-04', 'Oil tanker', 654, 30, 0),
(3, 'Nanded', 'Nashik', '2024-07-04', 'Gas tanker', 66, 30, 0),
(3, 'Nanded', 'Nashik', '2024-07-04', 'Car carrier', 540, 30, 0),
(3, 'Nanded', 'Nashik', '2024-07-13', 'Oil tanker', 1500, 50, 0),
(3, 'Nanded', 'Nashik', '2024-07-13', 'Gas tanker', 1300, 100, 0),
(3, 'Nanded', 'Nashik', '2024-07-13', 'Solid Goods', 180, 360, 0),
(3, 'Nanded', 'Nashik', '2024-07-13', 'Car carrier', 1200, 120, 0),
(3, 'Nanded', 'Nashik', '2024-07-13', 'Coal carrier', 500, 360, 0),
(3, 'Nashik', 'Mumbai', '2024-06-30', 'Oil tanker', 1000, 50, 0),
(3, 'Nashik', 'Mumbai', '2024-06-30', 'Gas tanker', 900, 80, 0),
(3, 'Nashik', 'Mumbai', '2024-06-30', 'Solid Goods', 90, 360, 0),
(3, 'Nashik', 'Mumbai', '2024-06-30', 'Car carrier', 800, 120, 0),
(3, 'Nashik', 'Mumbai', '2024-06-30', 'Coal carrier', 250, 360, 0),
(3, 'Nashik', 'Mumbai', '2024-07-04', 'Oil tanker', 58, 20, 0),
(3, 'Nashik', 'Mumbai', '2024-07-04', 'Gas tanker', 540, 20, 0),
(3, 'Nashik', 'Mumbai', '2024-07-04', 'Car carrier', 760, 40, 0),
(3, 'Nashik', 'Mumbai', '2024-07-05', 'Oil tanker', 450, 30, 0),
(3, 'Nashik', 'Mumbai', '2024-07-05', 'Gas tanker', 760, 30, 0),
(3, 'Nashik', 'Mumbai', '2024-07-05', 'Car carrier', 650, 30, 0),
(3, 'Nashik', 'Mumbai', '2024-07-14', 'Oil tanker', 1000, 50, 0),
(3, 'Nashik', 'Mumbai', '2024-07-14', 'Gas tanker', 900, 80, 0),
(3, 'Nashik', 'Mumbai', '2024-07-14', 'Solid Goods', 90, 360, 0),
(3, 'Nashik', 'Mumbai', '2024-07-14', 'Car carrier', 800, 120, 0),
(3, 'Nashik', 'Mumbai', '2024-07-14', 'Coal carrier', 250, 360, 0),
(3, 'Secunderabad', 'Aurangabad', '2024-06-29', 'Oil tanker', 2000, 60, 0),
(3, 'Secunderabad', 'Aurangabad', '2024-06-29', 'Gas tanker', 1700, 112, 12),
(3, 'Secunderabad', 'Aurangabad', '2024-06-29', 'Solid Goods', 270, 360, 3),
(3, 'Secunderabad', 'Aurangabad', '2024-06-29', 'Car carrier', 1600, 116, 4),
(3, 'Secunderabad', 'Aurangabad', '2024-06-29', 'Coal carrier', 750, 360, 0),
(3, 'Secunderabad', 'Aurangabad', '2024-07-03', 'Oil tanker', 200, 40, 0),
(3, 'Secunderabad', 'Aurangabad', '2024-07-03', 'Gas tanker', 440, 30, 0),
(3, 'Secunderabad', 'Aurangabad', '2024-07-03', 'Car carrier', 550, 40, 0),
(3, 'Secunderabad', 'Aurangabad', '2024-07-04', 'Oil tanker', 450, 30, 0),
(3, 'Secunderabad', 'Aurangabad', '2024-07-04', 'Gas tanker', 780, 30, 0),
(3, 'Secunderabad', 'Aurangabad', '2024-07-04', 'Car carrier', 670, 30, 0),
(3, 'Secunderabad', 'Aurangabad', '2024-07-13', 'Oil tanker', 2000, 60, 0),
(3, 'Secunderabad', 'Aurangabad', '2024-07-13', 'Gas tanker', 1700, 120, 0),
(3, 'Secunderabad', 'Aurangabad', '2024-07-13', 'Solid Goods', 270, 360, 0),
(3, 'Secunderabad', 'Aurangabad', '2024-07-13', 'Car carrier', 1600, 120, 0),
(3, 'Secunderabad', 'Aurangabad', '2024-07-13', 'Coal carrier', 750, 360, 0),
(3, 'Secunderabad', 'Basar', '2024-06-29', 'Oil tanker', 1000, 40, 0),
(3, 'Secunderabad', 'Basar', '2024-06-29', 'Gas tanker', 900, 76, 8),
(3, 'Secunderabad', 'Basar', '2024-06-29', 'Solid Goods', 90, 360, 0),
(3, 'Secunderabad', 'Basar', '2024-06-29', 'Car carrier', 800, 116, 4),
(3, 'Secunderabad', 'Basar', '2024-06-29', 'Coal carrier', 250, 360, 0),
(3, 'Secunderabad', 'Basar', '2024-07-03', 'Oil tanker', 500, 52, 0),
(3, 'Secunderabad', 'Basar', '2024-07-03', 'Gas tanker', 440, 30, 0),
(3, 'Secunderabad', 'Basar', '2024-07-03', 'Car carrier', 650, 40, 0),
(3, 'Secunderabad', 'Basar', '2024-07-04', 'Oil tanker', 340, 30, 0),
(3, 'Secunderabad', 'Basar', '2024-07-04', 'Gas tanker', 760, 30, 0),
(3, 'Secunderabad', 'Basar', '2024-07-04', 'Car carrier', 760, 20, 0),
(3, 'Secunderabad', 'Basar', '2024-07-13', 'Oil tanker', 1000, 40, 0),
(3, 'Secunderabad', 'Basar', '2024-07-13', 'Gas tanker', 900, 80, 0),
(3, 'Secunderabad', 'Basar', '2024-07-13', 'Solid Goods', 90, 360, 0),
(3, 'Secunderabad', 'Basar', '2024-07-13', 'Car carrier', 800, 120, 0),
(3, 'Secunderabad', 'Basar', '2024-07-13', 'Coal carrier', 250, 360, 0),
(3, 'Secunderabad', 'Mumbai', '2024-06-29', 'Oil tanker', 3000, 80, 0),
(3, 'Secunderabad', 'Mumbai', '2024-06-29', 'Gas tanker', 2500, 112, 12),
(3, 'Secunderabad', 'Mumbai', '2024-06-29', 'Solid Goods', 400, 360, 3),
(3, 'Secunderabad', 'Mumbai', '2024-06-29', 'Car carrier', 2400, 116, 4),
(3, 'Secunderabad', 'Mumbai', '2024-06-29', 'Coal carrier', 1250, 360, 0),
(3, 'Secunderabad', 'Mumbai', '2024-07-03', 'Oil tanker', 620, 40, 0),
(3, 'Secunderabad', 'Mumbai', '2024-07-03', 'Gas tanker', 440, 30, 0),
(3, 'Secunderabad', 'Mumbai', '2024-07-03', 'Car carrier', 550, 40, 0),
(3, 'Secunderabad', 'Mumbai', '2024-07-04', 'Oil tanker', 430, 30, 0),
(3, 'Secunderabad', 'Mumbai', '2024-07-04', 'Gas tanker', 670, 30, 0),
(3, 'Secunderabad', 'Mumbai', '2024-07-04', 'Car carrier', 650, 30, 0),
(3, 'Secunderabad', 'Mumbai', '2024-07-13', 'Oil tanker', 3000, 80, 0),
(3, 'Secunderabad', 'Mumbai', '2024-07-13', 'Gas tanker', 2500, 120, 0),
(3, 'Secunderabad', 'Mumbai', '2024-07-13', 'Solid Goods', 400, 360, 0),
(3, 'Secunderabad', 'Mumbai', '2024-07-13', 'Car carrier', 2400, 120, 0),
(3, 'Secunderabad', 'Mumbai', '2024-07-13', 'Coal carrier', 1250, 360, 0),
(3, 'Secunderabad', 'Nanded', '2024-06-29', 'Oil tanker', 1500, 50, 0),
(3, 'Secunderabad', 'Nanded', '2024-06-29', 'Gas tanker', 1300, 92, 12),
(3, 'Secunderabad', 'Nanded', '2024-06-29', 'Solid Goods', 180, 360, 3),
(3, 'Secunderabad', 'Nanded', '2024-06-29', 'Car carrier', 1200, 116, 4),
(3, 'Secunderabad', 'Nanded', '2024-06-29', 'Coal carrier', 500, 360, 0),
(3, 'Secunderabad', 'Nanded', '2024-07-03', 'Oil tanker', 500, 40, 0),
(3, 'Secunderabad', 'Nanded', '2024-07-03', 'Gas tanker', 4400, 30, 0),
(3, 'Secunderabad', 'Nanded', '2024-07-03', 'Car carrier', 550, 40, 0),
(3, 'Secunderabad', 'Nanded', '2024-07-04', 'Oil tanker', 540, 30, 0),
(3, 'Secunderabad', 'Nanded', '2024-07-04', 'Gas tanker', 760, 30, 0),
(3, 'Secunderabad', 'Nanded', '2024-07-04', 'Car carrier', 670, 30, 0),
(3, 'Secunderabad', 'Nanded', '2024-07-13', 'Oil tanker', 1500, 50, 0),
(3, 'Secunderabad', 'Nanded', '2024-07-13', 'Gas tanker', 1300, 100, 0),
(3, 'Secunderabad', 'Nanded', '2024-07-13', 'Solid Goods', 180, 360, 0),
(3, 'Secunderabad', 'Nanded', '2024-07-13', 'Car carrier', 1200, 120, 0),
(3, 'Secunderabad', 'Nanded', '2024-07-13', 'Coal carrier', 500, 360, 0),
(3, 'Secunderabad', 'Nashik', '2024-06-29', 'Oil tanker', 2500, 70, 0),
(3, 'Secunderabad', 'Nashik', '2024-06-29', 'Gas tanker', 2100, 132, 12),
(3, 'Secunderabad', 'Nashik', '2024-06-29', 'Solid Goods', 360, 360, 3),
(3, 'Secunderabad', 'Nashik', '2024-06-29', 'Car carrier', 2000, 116, 4),
(3, 'Secunderabad', 'Nashik', '2024-06-29', 'Coal carrier', 1000, 360, 0),
(3, 'Secunderabad', 'Nashik', '2024-07-03', 'Oil tanker', 840, 40, 0),
(3, 'Secunderabad', 'Nashik', '2024-07-03', 'Gas tanker', 440, 30, 0),
(3, 'Secunderabad', 'Nashik', '2024-07-03', 'Car carrier', 550, 40, 0),
(3, 'Secunderabad', 'Nashik', '2024-07-04', 'Oil tanker', 540, 30, 0),
(3, 'Secunderabad', 'Nashik', '2024-07-04', 'Gas tanker', 670, 30, 0),
(3, 'Secunderabad', 'Nashik', '2024-07-04', 'Car carrier', 760, 30, 0),
(3, 'Secunderabad', 'Nashik', '2024-07-13', 'Oil tanker', 2500, 70, 0),
(3, 'Secunderabad', 'Nashik', '2024-07-13', 'Gas tanker', 2100, 140, 0),
(3, 'Secunderabad', 'Nashik', '2024-07-13', 'Solid Goods', 360, 360, 0),
(3, 'Secunderabad', 'Nashik', '2024-07-13', 'Car carrier', 2000, 120, 0),
(3, 'Secunderabad', 'Nashik', '2024-07-13', 'Coal carrier', 1000, 360, 0),
(4, 'Aurangabad', 'Basar', '2024-06-30', 'Oil tanker', 2400, 60, 0),
(4, 'Aurangabad', 'Basar', '2024-06-30', 'Gas tanker', 2000, 95, 5),
(4, 'Aurangabad', 'Basar', '2024-06-30', 'Solid Goods', 140, 450, 0),
(4, 'Aurangabad', 'Basar', '2024-06-30', 'Car carrier', 1400, 150, 0),
(4, 'Aurangabad', 'Basar', '2024-06-30', 'Coal carrier', 400, 440, 10),
(4, 'Aurangabad', 'Basar', '2024-07-04', 'Oil tanker', 654, 30, 0),
(4, 'Aurangabad', 'Basar', '2024-07-04', 'Gas tanker', 440, 30, 0),
(4, 'Aurangabad', 'Basar', '2024-07-04', 'Car carrier', 780, 50, 0),
(4, 'Aurangabad', 'Basar', '2024-07-05', 'Oil tanker', 580, 30, 0),
(4, 'Aurangabad', 'Basar', '2024-07-05', 'Gas tanker', 850, 30, 0),
(4, 'Aurangabad', 'Basar', '2024-07-05', 'Car carrier', 80, 60, 0),
(4, 'Aurangabad', 'Basar', '2024-07-14', 'Oil tanker', 2400, 60, 0),
(4, 'Aurangabad', 'Basar', '2024-07-14', 'Gas tanker', 2000, 100, 0),
(4, 'Aurangabad', 'Basar', '2024-07-14', 'Solid Goods', 140, 450, 0),
(4, 'Aurangabad', 'Basar', '2024-07-14', 'Car carrier', 1400, 150, 0),
(4, 'Aurangabad', 'Basar', '2024-07-14', 'Coal carrier', 400, 450, 0),
(4, 'Aurangabad', 'Nanded', '2024-06-30', 'Oil tanker', 1200, 60, 0),
(4, 'Aurangabad', 'Nanded', '2024-06-30', 'Gas tanker', 1000, 95, 5),
(4, 'Aurangabad', 'Nanded', '2024-06-30', 'Solid Goods', 70, 450, 0),
(4, 'Aurangabad', 'Nanded', '2024-06-30', 'Car carrier', 700, 150, 0),
(4, 'Aurangabad', 'Nanded', '2024-06-30', 'Coal carrier', 200, 440, 10),
(4, 'Aurangabad', 'Nanded', '2024-07-04', 'Oil tanker', 850, 30, 0),
(4, 'Aurangabad', 'Nanded', '2024-07-04', 'Gas tanker', 650, 30, 0),
(4, 'Aurangabad', 'Nanded', '2024-07-04', 'Car carrier', 470, 50, 0),
(4, 'Aurangabad', 'Nanded', '2024-07-05', 'Oil tanker', 850, 30, 0),
(4, 'Aurangabad', 'Nanded', '2024-07-05', 'Gas tanker', 960, 30, 0),
(4, 'Aurangabad', 'Nanded', '2024-07-05', 'Car carrier', 520, 60, 0),
(4, 'Aurangabad', 'Nanded', '2024-07-14', 'Oil tanker', 1200, 60, 0),
(4, 'Aurangabad', 'Nanded', '2024-07-14', 'Gas tanker', 1000, 100, 0),
(4, 'Aurangabad', 'Nanded', '2024-07-14', 'Solid Goods', 70, 450, 0),
(4, 'Aurangabad', 'Nanded', '2024-07-14', 'Car carrier', 700, 150, 0),
(4, 'Aurangabad', 'Nanded', '2024-07-14', 'Coal carrier', 200, 450, 0),
(4, 'Aurangabad', 'Secunderabad', '2024-06-30', 'Oil tanker', 3600, 60, 0),
(4, 'Aurangabad', 'Secunderabad', '2024-06-30', 'Gas tanker', 3000, 95, 5),
(4, 'Aurangabad', 'Secunderabad', '2024-06-30', 'Solid Goods', 210, 450, 0),
(4, 'Aurangabad', 'Secunderabad', '2024-06-30', 'Car carrier', 2100, 150, 0),
(4, 'Aurangabad', 'Secunderabad', '2024-06-30', 'Coal carrier', 600, 440, 10),
(4, 'Aurangabad', 'Secunderabad', '2024-07-04', 'Oil tanker', 850, 30, 0),
(4, 'Aurangabad', 'Secunderabad', '2024-07-04', 'Gas tanker', 450, 30, 0),
(4, 'Aurangabad', 'Secunderabad', '2024-07-04', 'Car carrier', 85, 50, 0),
(4, 'Aurangabad', 'Secunderabad', '2024-07-05', 'Oil tanker', 960, 30, 0),
(4, 'Aurangabad', 'Secunderabad', '2024-07-05', 'Gas tanker', 850, 30, 0),
(4, 'Aurangabad', 'Secunderabad', '2024-07-05', 'Car carrier', 850, 60, 0),
(4, 'Aurangabad', 'Secunderabad', '2024-07-14', 'Oil tanker', 3600, 60, 0),
(4, 'Aurangabad', 'Secunderabad', '2024-07-14', 'Gas tanker', 3000, 100, 0),
(4, 'Aurangabad', 'Secunderabad', '2024-07-14', 'Solid Goods', 210, 450, 0),
(4, 'Aurangabad', 'Secunderabad', '2024-07-14', 'Car carrier', 2100, 150, 0),
(4, 'Aurangabad', 'Secunderabad', '2024-07-14', 'Coal carrier', 600, 450, 0),
(4, 'Basar', 'Secunderabad', '2024-06-30', 'Oil tanker', 1200, 60, 0),
(4, 'Basar', 'Secunderabad', '2024-06-30', 'Gas tanker', 1000, 100, 0),
(4, 'Basar', 'Secunderabad', '2024-06-30', 'Solid Goods', 70, 450, 0),
(4, 'Basar', 'Secunderabad', '2024-06-30', 'Car carrier', 700, 150, 0),
(4, 'Basar', 'Secunderabad', '2024-06-30', 'Coal carrier', 200, 444, 6),
(4, 'Basar', 'Secunderabad', '2024-07-04', 'Oil tanker', 450, 30, 0),
(4, 'Basar', 'Secunderabad', '2024-07-04', 'Gas tanker', 540, 30, 0),
(4, 'Basar', 'Secunderabad', '2024-07-04', 'Car carrier', 800, 50, 0),
(4, 'Basar', 'Secunderabad', '2024-07-05', 'Oil tanker', 780, 30, 0),
(4, 'Basar', 'Secunderabad', '2024-07-05', 'Gas tanker', 780, 30, 0),
(4, 'Basar', 'Secunderabad', '2024-07-05', 'Car carrier', 580, 60, 0),
(4, 'Basar', 'Secunderabad', '2024-07-14', 'Oil tanker', 1200, 60, 0),
(4, 'Basar', 'Secunderabad', '2024-07-14', 'Gas tanker', 1000, 100, 0),
(4, 'Basar', 'Secunderabad', '2024-07-14', 'Solid Goods', 70, 450, 0),
(4, 'Basar', 'Secunderabad', '2024-07-14', 'Car carrier', 700, 150, 0),
(4, 'Basar', 'Secunderabad', '2024-07-14', 'Coal carrier', 200, 450, 0),
(4, 'Mumbai', 'Aurangabad', '2024-06-29', 'Oil tanker', 2200, 60, 0),
(4, 'Mumbai', 'Aurangabad', '2024-06-29', 'Gas tanker', 2000, 100, 0),
(4, 'Mumbai', 'Aurangabad', '2024-06-29', 'Solid Goods', 140, 450, 0),
(4, 'Mumbai', 'Aurangabad', '2024-06-29', 'Car carrier', 1400, 150, 0),
(4, 'Mumbai', 'Aurangabad', '2024-06-29', 'Coal carrier', 400, 450, 0),
(4, 'Mumbai', 'Aurangabad', '2024-07-03', 'Oil tanker', 2010, 30, 0),
(4, 'Mumbai', 'Aurangabad', '2024-07-03', 'Gas tanker', 1600, 30, 0),
(4, 'Mumbai', 'Aurangabad', '2024-07-03', 'Car carrier', 850, 50, 0),
(4, 'Mumbai', 'Aurangabad', '2024-07-04', 'Oil tanker', 960, 30, 0),
(4, 'Mumbai', 'Aurangabad', '2024-07-04', 'Gas tanker', 850, 30, 0),
(4, 'Mumbai', 'Aurangabad', '2024-07-04', 'Car carrier', 850, 60, 0),
(4, 'Mumbai', 'Aurangabad', '2024-07-13', 'Oil tanker', 2200, 60, 0),
(4, 'Mumbai', 'Aurangabad', '2024-07-13', 'Gas tanker', 2000, 100, 0),
(4, 'Mumbai', 'Aurangabad', '2024-07-13', 'Solid Goods', 140, 450, 0),
(4, 'Mumbai', 'Aurangabad', '2024-07-13', 'Car carrier', 1400, 150, 0),
(4, 'Mumbai', 'Aurangabad', '2024-07-13', 'Coal carrier', 400, 450, 0),
(4, 'Mumbai', 'Basar', '2024-06-29', 'Oil tanker', 4400, 60, 0),
(4, 'Mumbai', 'Basar', '2024-06-29', 'Gas tanker', 4000, 100, 0),
(4, 'Mumbai', 'Basar', '2024-06-29', 'Solid Goods', 280, 450, 0),
(4, 'Mumbai', 'Basar', '2024-06-29', 'Car carrier', 2800, 150, 0),
(4, 'Mumbai', 'Basar', '2024-06-29', 'Coal carrier', 800, 450, 0),
(4, 'Mumbai', 'Basar', '2024-07-03', 'Oil tanker', 800, 30, 0),
(4, 'Mumbai', 'Basar', '2024-07-03', 'Gas tanker', 800, 30, 0),
(4, 'Mumbai', 'Basar', '2024-07-03', 'Car carrier', 850, 50, 0),
(4, 'Mumbai', 'Basar', '2024-07-04', 'Oil tanker', 690, 30, 0),
(4, 'Mumbai', 'Basar', '2024-07-04', 'Gas tanker', 850, 30, 0),
(4, 'Mumbai', 'Basar', '2024-07-04', 'Car carrier', 690, 60, 0),
(4, 'Mumbai', 'Basar', '2024-07-13', 'Oil tanker', 4400, 60, 0),
(4, 'Mumbai', 'Basar', '2024-07-13', 'Gas tanker', 4000, 100, 0),
(4, 'Mumbai', 'Basar', '2024-07-13', 'Solid Goods', 280, 450, 0),
(4, 'Mumbai', 'Basar', '2024-07-13', 'Car carrier', 2800, 150, 0),
(4, 'Mumbai', 'Basar', '2024-07-13', 'Coal carrier', 800, 450, 0),
(4, 'Mumbai', 'Nanded', '2024-06-29', 'Oil tanker', 3200, 60, 0),
(4, 'Mumbai', 'Nanded', '2024-06-29', 'Gas tanker', 3000, 100, 0),
(4, 'Mumbai', 'Nanded', '2024-06-29', 'Solid Goods', 210, 450, 0),
(4, 'Mumbai', 'Nanded', '2024-06-29', 'Car carrier', 2100, 150, 0),
(4, 'Mumbai', 'Nanded', '2024-06-29', 'Coal carrier', 600, 450, 0),
(4, 'Mumbai', 'Nanded', '2024-07-03', 'Oil tanker', 1400, 30, 0),
(4, 'Mumbai', 'Nanded', '2024-07-03', 'Gas tanker', 800, 30, 0),
(4, 'Mumbai', 'Nanded', '2024-07-03', 'Car carrier', 750, 50, 0),
(4, 'Mumbai', 'Nanded', '2024-07-04', 'Oil tanker', 630, 30, 0),
(4, 'Mumbai', 'Nanded', '2024-07-04', 'Gas tanker', 850, 30, 0),
(4, 'Mumbai', 'Nanded', '2024-07-04', 'Car carrier', 960, 60, 0),
(4, 'Mumbai', 'Nanded', '2024-07-13', 'Oil tanker', 3200, 60, 0),
(4, 'Mumbai', 'Nanded', '2024-07-13', 'Gas tanker', 3000, 100, 0),
(4, 'Mumbai', 'Nanded', '2024-07-13', 'Solid Goods', 210, 450, 0),
(4, 'Mumbai', 'Nanded', '2024-07-13', 'Car carrier', 2100, 150, 0),
(4, 'Mumbai', 'Nanded', '2024-07-13', 'Coal carrier', 600, 450, 0),
(4, 'Mumbai', 'Nashik', '2024-06-29', 'Oil tanker', 1200, 60, 0),
(4, 'Mumbai', 'Nashik', '2024-06-29', 'Gas tanker', 1000, 100, 0),
(4, 'Mumbai', 'Nashik', '2024-06-29', 'Solid Goods', 70, 450, 0),
(4, 'Mumbai', 'Nashik', '2024-06-29', 'Car carrier', 700, 150, 0),
(4, 'Mumbai', 'Nashik', '2024-06-29', 'Coal carrier', 200, 450, 0),
(4, 'Mumbai', 'Nashik', '2024-07-03', 'Oil tanker', 1220, 30, 0),
(4, 'Mumbai', 'Nashik', '2024-07-03', 'Gas tanker', 800, 30, 0),
(4, 'Mumbai', 'Nashik', '2024-07-03', 'Car carrier', 850, 50, 0),
(4, 'Mumbai', 'Nashik', '2024-07-04', 'Oil tanker', 850, 20, 0),
(4, 'Mumbai', 'Nashik', '2024-07-04', 'Gas tanker', 850, 30, 0),
(4, 'Mumbai', 'Nashik', '2024-07-04', 'Car carrier', 850, 60, 0),
(4, 'Mumbai', 'Nashik', '2024-07-13', 'Oil tanker', 1200, 60, 0),
(4, 'Mumbai', 'Nashik', '2024-07-13', 'Gas tanker', 1000, 100, 0),
(4, 'Mumbai', 'Nashik', '2024-07-13', 'Solid Goods', 70, 450, 0),
(4, 'Mumbai', 'Nashik', '2024-07-13', 'Car carrier', 700, 150, 0),
(4, 'Mumbai', 'Nashik', '2024-07-13', 'Coal carrier', 200, 450, 0),
(4, 'Mumbai', 'Secunderabad', '2024-06-29', 'Oil tanker', 5500, 60, 0),
(4, 'Mumbai', 'Secunderabad', '2024-06-29', 'Gas tanker', 5000, 100, 0),
(4, 'Mumbai', 'Secunderabad', '2024-06-29', 'Solid Goods', 350, 450, 0),
(4, 'Mumbai', 'Secunderabad', '2024-06-29', 'Car carrier', 3500, 150, 0),
(4, 'Mumbai', 'Secunderabad', '2024-06-29', 'Coal carrier', 1000, 450, 0),
(4, 'Mumbai', 'Secunderabad', '2024-07-03', 'Oil tanker', 800, 30, 0),
(4, 'Mumbai', 'Secunderabad', '2024-07-03', 'Gas tanker', 670, 30, 0),
(4, 'Mumbai', 'Secunderabad', '2024-07-03', 'Car carrier', 250, 50, 0),
(4, 'Mumbai', 'Secunderabad', '2024-07-04', 'Oil tanker', 780, 30, 0),
(4, 'Mumbai', 'Secunderabad', '2024-07-04', 'Gas tanker', 890, 30, 0),
(4, 'Mumbai', 'Secunderabad', '2024-07-04', 'Car carrier', 690, 60, 0),
(4, 'Mumbai', 'Secunderabad', '2024-07-13', 'Oil tanker', 5500, 60, 0),
(4, 'Mumbai', 'Secunderabad', '2024-07-13', 'Gas tanker', 5000, 100, 0),
(4, 'Mumbai', 'Secunderabad', '2024-07-13', 'Solid Goods', 350, 450, 0),
(4, 'Mumbai', 'Secunderabad', '2024-07-13', 'Car carrier', 3500, 150, 0),
(4, 'Mumbai', 'Secunderabad', '2024-07-13', 'Coal carrier', 1000, 450, 0),
(4, 'Nanded', 'Basar', '2024-06-30', 'Oil tanker', 1200, 60, 0),
(4, 'Nanded', 'Basar', '2024-06-30', 'Gas tanker', 1000, 95, 5),
(4, 'Nanded', 'Basar', '2024-06-30', 'Solid Goods', 70, 450, 0),
(4, 'Nanded', 'Basar', '2024-06-30', 'Car carrier', 700, 150, 0),
(4, 'Nanded', 'Basar', '2024-06-30', 'Coal carrier', 200, 444, 6),
(4, 'Nanded', 'Basar', '2024-07-04', 'Oil tanker', 780, 30, 0),
(4, 'Nanded', 'Basar', '2024-07-04', 'Gas tanker', 340, 30, 0),
(4, 'Nanded', 'Basar', '2024-07-04', 'Car carrier', 550, 50, 0),
(4, 'Nanded', 'Basar', '2024-07-05', 'Oil tanker', 780, 30, 0),
(4, 'Nanded', 'Basar', '2024-07-05', 'Gas tanker', 820, 30, 0),
(4, 'Nanded', 'Basar', '2024-07-05', 'Car carrier', 550, 60, 0),
(4, 'Nanded', 'Basar', '2024-07-14', 'Oil tanker', 1200, 60, 0),
(4, 'Nanded', 'Basar', '2024-07-14', 'Gas tanker', 1000, 100, 0),
(4, 'Nanded', 'Basar', '2024-07-14', 'Solid Goods', 70, 450, 0),
(4, 'Nanded', 'Basar', '2024-07-14', 'Car carrier', 700, 150, 0),
(4, 'Nanded', 'Basar', '2024-07-14', 'Coal carrier', 200, 450, 0),
(4, 'Nanded', 'Secunderabad', '2024-06-30', 'Oil tanker', 2400, 60, 0),
(4, 'Nanded', 'Secunderabad', '2024-06-30', 'Gas tanker', 2000, 95, 5),
(4, 'Nanded', 'Secunderabad', '2024-06-30', 'Solid Goods', 140, 450, 0),
(4, 'Nanded', 'Secunderabad', '2024-06-30', 'Car carrier', 1400, 150, 0),
(4, 'Nanded', 'Secunderabad', '2024-06-30', 'Coal carrier', 400, 444, 6),
(4, 'Nanded', 'Secunderabad', '2024-07-04', 'Oil tanker', 580, 30, 0),
(4, 'Nanded', 'Secunderabad', '2024-07-04', 'Gas tanker', 870, 30, 0),
(4, 'Nanded', 'Secunderabad', '2024-07-04', 'Car carrier', 560, 50, 0),
(4, 'Nanded', 'Secunderabad', '2024-07-05', 'Oil tanker', 890, 30, 0),
(4, 'Nanded', 'Secunderabad', '2024-07-05', 'Gas tanker', 960, 30, 0),
(4, 'Nanded', 'Secunderabad', '2024-07-05', 'Car carrier', 850, 60, 0),
(4, 'Nanded', 'Secunderabad', '2024-07-14', 'Oil tanker', 2400, 60, 0),
(4, 'Nanded', 'Secunderabad', '2024-07-14', 'Gas tanker', 2000, 100, 0),
(4, 'Nanded', 'Secunderabad', '2024-07-14', 'Solid Goods', 140, 450, 0),
(4, 'Nanded', 'Secunderabad', '2024-07-14', 'Car carrier', 1400, 150, 0),
(4, 'Nanded', 'Secunderabad', '2024-07-14', 'Coal carrier', 400, 450, 0),
(4, 'Nashik', 'Aurangabad', '2024-06-30', 'Oil tanker', 1200, 60, 0),
(4, 'Nashik', 'Aurangabad', '2024-06-30', 'Gas tanker', 1000, 100, 0),
(4, 'Nashik', 'Aurangabad', '2024-06-30', 'Solid Goods', 70, 450, 0),
(4, 'Nashik', 'Aurangabad', '2024-06-30', 'Car carrier', 700, 150, 0),
(4, 'Nashik', 'Aurangabad', '2024-06-30', 'Coal carrier', 200, 450, 0),
(4, 'Nashik', 'Aurangabad', '2024-07-04', 'Oil tanker', 900, 30, 0),
(4, 'Nashik', 'Aurangabad', '2024-07-04', 'Gas tanker', 2700, 30, 0),
(4, 'Nashik', 'Aurangabad', '2024-07-04', 'Car carrier', 450, 50, 0),
(4, 'Nashik', 'Aurangabad', '2024-07-05', 'Oil tanker', 850, 30, 0),
(4, 'Nashik', 'Aurangabad', '2024-07-05', 'Gas tanker', 450, 30, 0),
(4, 'Nashik', 'Aurangabad', '2024-07-05', 'Car carrier', 850, 60, 0),
(4, 'Nashik', 'Aurangabad', '2024-07-14', 'Oil tanker', 1200, 60, 0),
(4, 'Nashik', 'Aurangabad', '2024-07-14', 'Gas tanker', 1000, 100, 0),
(4, 'Nashik', 'Aurangabad', '2024-07-14', 'Solid Goods', 70, 450, 0),
(4, 'Nashik', 'Aurangabad', '2024-07-14', 'Car carrier', 700, 150, 0),
(4, 'Nashik', 'Aurangabad', '2024-07-14', 'Coal carrier', 200, 450, 0),
(4, 'Nashik', 'Basar', '2024-06-30', 'Oil tanker', 3600, 60, 0),
(4, 'Nashik', 'Basar', '2024-06-30', 'Gas tanker', 3000, 95, 5),
(4, 'Nashik', 'Basar', '2024-06-30', 'Solid Goods', 210, 450, 0),
(4, 'Nashik', 'Basar', '2024-06-30', 'Car carrier', 2100, 150, 0),
(4, 'Nashik', 'Basar', '2024-06-30', 'Coal carrier', 600, 440, 10),
(4, 'Nashik', 'Basar', '2024-07-04', 'Oil tanker', 650, 30, 0),
(4, 'Nashik', 'Basar', '2024-07-04', 'Gas tanker', 800, 30, 0),
(4, 'Nashik', 'Basar', '2024-07-04', 'Car carrier', 140, 50, 0),
(4, 'Nashik', 'Basar', '2024-07-05', 'Oil tanker', 850, 30, 0),
(4, 'Nashik', 'Basar', '2024-07-05', 'Gas tanker', 560, 30, 0),
(4, 'Nashik', 'Basar', '2024-07-05', 'Car carrier', 550, 60, 0),
(4, 'Nashik', 'Basar', '2024-07-14', 'Oil tanker', 3600, 60, 0),
(4, 'Nashik', 'Basar', '2024-07-14', 'Gas tanker', 3000, 100, 0),
(4, 'Nashik', 'Basar', '2024-07-14', 'Solid Goods', 210, 450, 0),
(4, 'Nashik', 'Basar', '2024-07-14', 'Car carrier', 2100, 150, 0),
(4, 'Nashik', 'Basar', '2024-07-14', 'Coal carrier', 600, 450, 0),
(4, 'Nashik', 'Nanded', '2024-06-30', 'Oil tanker', 2400, 60, 0),
(4, 'Nashik', 'Nanded', '2024-06-30', 'Gas tanker', 2000, 95, 5),
(4, 'Nashik', 'Nanded', '2024-06-30', 'Solid Goods', 140, 450, 0),
(4, 'Nashik', 'Nanded', '2024-06-30', 'Car carrier', 1400, 150, 0),
(4, 'Nashik', 'Nanded', '2024-06-30', 'Coal carrier', 400, 440, 10),
(4, 'Nashik', 'Nanded', '2024-07-04', 'Oil tanker', 500, 30, 0),
(4, 'Nashik', 'Nanded', '2024-07-04', 'Gas tanker', 550, 30, 0),
(4, 'Nashik', 'Nanded', '2024-07-04', 'Car carrier', 960, 50, 0),
(4, 'Nashik', 'Nanded', '2024-07-05', 'Oil tanker', 850, 30, 0),
(4, 'Nashik', 'Nanded', '2024-07-05', 'Gas tanker', 560, 30, 0),
(4, 'Nashik', 'Nanded', '2024-07-05', 'Car carrier', 450, 60, 0),
(4, 'Nashik', 'Nanded', '2024-07-14', 'Oil tanker', 2400, 60, 0),
(4, 'Nashik', 'Nanded', '2024-07-14', 'Gas tanker', 2000, 100, 0),
(4, 'Nashik', 'Nanded', '2024-07-14', 'Solid Goods', 140, 450, 0),
(4, 'Nashik', 'Nanded', '2024-07-14', 'Car carrier', 1400, 150, 0),
(4, 'Nashik', 'Nanded', '2024-07-14', 'Coal carrier', 400, 450, 0),
(4, 'Nashik', 'Secunderabad', '2024-06-30', 'Oil tanker', 4800, 60, 0),
(4, 'Nashik', 'Secunderabad', '2024-06-30', 'Gas tanker', 4000, 95, 5),
(4, 'Nashik', 'Secunderabad', '2024-06-30', 'Solid Goods', 280, 450, 0),
(4, 'Nashik', 'Secunderabad', '2024-06-30', 'Car carrier', 2800, 150, 0),
(4, 'Nashik', 'Secunderabad', '2024-06-30', 'Coal carrier', 800, 440, 10),
(4, 'Nashik', 'Secunderabad', '2024-07-04', 'Oil tanker', 200, 30, 0),
(4, 'Nashik', 'Secunderabad', '2024-07-04', 'Gas tanker', 500, 30, 0),
(4, 'Nashik', 'Secunderabad', '2024-07-04', 'Car carrier', 520, 50, 0),
(4, 'Nashik', 'Secunderabad', '2024-07-05', 'Oil tanker', 450, 30, 0),
(4, 'Nashik', 'Secunderabad', '2024-07-05', 'Gas tanker', 560, 30, 0),
(4, 'Nashik', 'Secunderabad', '2024-07-05', 'Car carrier', 580, 60, 0),
(4, 'Nashik', 'Secunderabad', '2024-07-14', 'Oil tanker', 4800, 60, 0),
(4, 'Nashik', 'Secunderabad', '2024-07-14', 'Gas tanker', 4000, 100, 0),
(4, 'Nashik', 'Secunderabad', '2024-07-14', 'Solid Goods', 280, 450, 0),
(4, 'Nashik', 'Secunderabad', '2024-07-14', 'Car carrier', 2800, 150, 0),
(4, 'Nashik', 'Secunderabad', '2024-07-14', 'Coal carrier', 800, 450, 0),
(5, 'Jhansi', 'Kanpur', '2024-06-30', 'Solid Goods', 180, 710, 10),
(5, 'Jhansi', 'Kanpur', '2024-06-30', 'Industrial goods', 500, 237, 9),
(5, 'Jhansi', 'Kanpur', '2024-07-03', 'Solid Goods', 160, 720, 0),
(5, 'Jhansi', 'Kanpur', '2024-07-03', 'Industrial goods', 580, 360, 0),
(5, 'Jhansi', 'Kanpur', '2024-07-04', 'Solid Goods', 150, 720, 0),
(5, 'Jhansi', 'Kanpur', '2024-07-04', 'Industrial goods', 580, 360, 0),
(5, 'Jhansi', 'Kanpur', '2024-07-13', 'Solid Goods', 160, 720, 0),
(5, 'Jhansi', 'Kanpur', '2024-07-13', 'Industrial goods', 480, 240, 0),
(5, 'Jhansi', 'Lucknow', '2024-06-30', 'Solid Goods', 250, 710, 10),
(5, 'Jhansi', 'Lucknow', '2024-06-30', 'Industrial goods', 900, 2397, 9),
(5, 'Jhansi', 'Lucknow', '2024-07-03', 'Solid Goods', 220, 720, 0),
(5, 'Jhansi', 'Lucknow', '2024-07-03', 'Industrial goods', 850, 360, 0),
(5, 'Jhansi', 'Lucknow', '2024-07-04', 'Solid Goods', 220, 720, 0),
(5, 'Jhansi', 'Lucknow', '2024-07-04', 'Industrial goods', 850, 360, 0),
(5, 'Jhansi', 'Lucknow', '2024-07-13', 'Solid Goods', 220, 720, 0),
(5, 'Jhansi', 'Lucknow', '2024-07-13', 'Industrial goods', 600, 240, 0),
(5, 'Jhansi', 'Orai', '2024-06-30', 'Solid Goods', 90, 710, 10),
(5, 'Jhansi', 'Orai', '2024-06-30', 'Industrial goods', 300, 237, 9),
(5, 'Jhansi', 'Orai', '2024-07-03', 'Solid Goods', 80, 720, 0),
(5, 'Jhansi', 'Orai', '2024-07-03', 'Industrial goods', 300, 360, 0),
(5, 'Jhansi', 'Orai', '2024-07-04', 'Solid Goods', 80, 720, 0),
(5, 'Jhansi', 'Orai', '2024-07-04', 'Industrial goods', 300, 360, 0),
(5, 'Jhansi', 'Orai', '2024-07-13', 'Solid Goods', 90, 720, 0),
(5, 'Jhansi', 'Orai', '2024-07-13', 'Industrial goods', 270, 240, 0),
(5, 'Kanpur', 'Lucknow', '2024-06-30', 'Solid Goods', 110, 716, 4),
(5, 'Kanpur', 'Lucknow', '2024-06-30', 'Industrial goods', 300, 237, 3),
(5, 'Kanpur', 'Lucknow', '2024-07-03', 'Solid Goods', 100, 720, 0),
(5, 'Kanpur', 'Lucknow', '2024-07-03', 'Industrial goods', 340, 360, 0),
(5, 'Kanpur', 'Lucknow', '2024-07-04', 'Solid Goods', 110, 720, 0),
(5, 'Kanpur', 'Lucknow', '2024-07-04', 'Industrial goods', 340, 360, 0),
(5, 'Kanpur', 'Lucknow', '2024-07-13', 'Solid Goods', 1100, 720, 0),
(5, 'Kanpur', 'Lucknow', '2024-07-13', 'Industrial goods', 330, 240, 0),
(5, 'Orai', 'Kanpur', '2024-06-30', 'Solid Goods', 100, 710, 10),
(5, 'Orai', 'Kanpur', '2024-06-30', 'Industrial goods', 300, 237, 9),
(5, 'Orai', 'Kanpur', '2024-07-03', 'Solid Goods', 90, 720, 0),
(5, 'Orai', 'Kanpur', '2024-07-03', 'Industrial goods', 320, 360, 0),
(5, 'Orai', 'Kanpur', '2024-07-04', 'Solid Goods', 90, 720, 0),
(5, 'Orai', 'Kanpur', '2024-07-04', 'Industrial goods', 320, 360, 0),
(5, 'Orai', 'Kanpur', '2024-07-13', 'Solid Goods', 100, 720, 0),
(5, 'Orai', 'Kanpur', '2024-07-13', 'Industrial goods', 300, 240, 0),
(5, 'Orai', 'Lucknow', '2024-06-30', 'Solid Goods', 220, 710, 10),
(5, 'Orai', 'Lucknow', '2024-06-30', 'Industrial goods', 400, 237, 9),
(5, 'Orai', 'Lucknow', '2024-07-03', 'Solid Goods', 170, 720, 0),
(5, 'Orai', 'Lucknow', '2024-07-03', 'Industrial goods', 600, 360, 0),
(5, 'Orai', 'Lucknow', '2024-07-04', 'Solid Goods', 170, 720, 0),
(5, 'Orai', 'Lucknow', '2024-07-04', 'Industrial goods', 560, 360, 0),
(5, 'Orai', 'Lucknow', '2024-07-13', 'Solid Goods', 150, 720, 0),
(5, 'Orai', 'Lucknow', '2024-07-13', 'Industrial goods', 450, 240, 0),
(7, 'Aurangabad', 'Mumbai', '2024-06-29', 'Solid Goods', 210, 840, 0),
(7, 'Aurangabad', 'Mumbai', '2024-06-29', 'Industrial goods', 440, 240, 0),
(7, 'Aurangabad', 'Mumbai', '2024-07-03', 'Solid Goods', 170, 720, 0),
(7, 'Aurangabad', 'Mumbai', '2024-07-03', 'Industrial goods', 600, 360, 0),
(7, 'Aurangabad', 'Mumbai', '2024-07-04', 'Solid Goods', 170, 720, 0),
(7, 'Aurangabad', 'Mumbai', '2024-07-04', 'Industrial goods', 600, 360, 0),
(7, 'Aurangabad', 'Mumbai', '2024-07-13', 'Solid Goods', 190, 720, 0),
(7, 'Aurangabad', 'Mumbai', '2024-07-13', 'Industrial goods', 400, 240, 0),
(7, 'Aurangabad', 'Nashik', '2024-06-29', 'Solid Goods', 100, 840, 0),
(7, 'Aurangabad', 'Nashik', '2024-06-29', 'Industrial goods', 230, 240, 0),
(7, 'Aurangabad', 'Nashik', '2024-07-03', 'Solid Goods', 90, 720, 0),
(7, 'Aurangabad', 'Nashik', '2024-07-03', 'Industrial goods', 300, 360, 0),
(7, 'Aurangabad', 'Nashik', '2024-07-04', 'Solid Goods', 90, 720, 0),
(7, 'Aurangabad', 'Nashik', '2024-07-04', 'Industrial goods', 300, 360, 0),
(7, 'Aurangabad', 'Nashik', '2024-07-13', 'Solid Goods', 100, 720, 0),
(7, 'Aurangabad', 'Nashik', '2024-07-13', 'Industrial goods', 210, 240, 0),
(7, 'Nanded', 'Aurangabad', '2024-06-29', 'Solid Goods', 90, 840, 0),
(7, 'Nanded', 'Aurangabad', '2024-06-29', 'Industrial goods', 230, 240, 0),
(7, 'Nanded', 'Aurangabad', '2024-07-03', 'Solid Goods', 80, 720, 0),
(7, 'Nanded', 'Aurangabad', '2024-07-03', 'Industrial goods', 300, 360, 0),
(7, 'Nanded', 'Aurangabad', '2024-07-04', 'Solid Goods', 80, 720, 0),
(7, 'Nanded', 'Aurangabad', '2024-07-04', 'Industrial goods', 300, 360, 0),
(7, 'Nanded', 'Aurangabad', '2024-07-13', 'Solid Goods', 80, 720, 0),
(7, 'Nanded', 'Aurangabad', '2024-07-13', 'Industrial goods', 200, 240, 0),
(7, 'Nanded', 'Mumbai', '2024-06-29', 'Solid Goods', 250, 840, 0),
(7, 'Nanded', 'Mumbai', '2024-06-29', 'Industrial goods', 570, 240, 0),
(7, 'Nanded', 'Mumbai', '2024-07-03', 'Solid Goods', 220, 720, 0),
(7, 'Nanded', 'Mumbai', '2024-07-03', 'Industrial goods', 900, 360, 0),
(7, 'Nanded', 'Mumbai', '2024-07-04', 'Solid Goods', 220, 720, 0),
(7, 'Nanded', 'Mumbai', '2024-07-04', 'Industrial goods', 900, 360, 0),
(7, 'Nanded', 'Mumbai', '2024-07-13', 'Solid Goods', 220, 720, 0),
(7, 'Nanded', 'Mumbai', '2024-07-13', 'Industrial goods', 550, 240, 0),
(7, 'Nanded', 'Nashik', '2024-06-29', 'Solid Goods', 170, 840, 0),
(7, 'Nanded', 'Nashik', '2024-06-29', 'Industrial goods', 460, 240, 0),
(7, 'Nanded', 'Nashik', '2024-07-03', 'Solid Goods', 150, 720, 0),
(7, 'Nanded', 'Nashik', '2024-07-03', 'Industrial goods', 600, 360, 0),
(7, 'Nanded', 'Nashik', '2024-07-04', 'Solid Goods', 160, 720, 0),
(7, 'Nanded', 'Nashik', '2024-07-04', 'Industrial goods', 600, 360, 0),
(7, 'Nanded', 'Nashik', '2024-07-13', 'Solid Goods', 150, 720, 0),
(7, 'Nanded', 'Nashik', '2024-07-13', 'Industrial goods', 380, 240, 0),
(7, 'Nashik', 'Mumbai', '2024-06-29', 'Solid Goods', 110, 840, 0),
(7, 'Nashik', 'Mumbai', '2024-06-29', 'Industrial goods', 240, 240, 0),
(7, 'Nashik', 'Mumbai', '2024-07-03', 'Solid Goods', 100, 720, 0),
(7, 'Nashik', 'Mumbai', '2024-07-03', 'Industrial goods', 900, 360, 0),
(7, 'Nashik', 'Mumbai', '2024-07-04', 'Solid Goods', 100, 720, 0),
(7, 'Nashik', 'Mumbai', '2024-07-04', 'Industrial goods', 300, 360, 0),
(7, 'Nashik', 'Mumbai', '2024-07-13', 'Solid Goods', 120, 720, 0),
(7, 'Nashik', 'Mumbai', '2024-07-13', 'Industrial goods', 230, 240, 0),
(8, 'Aurangabad', 'Nanded', '2024-06-29', 'Solid Goods', 110, 720, 0),
(8, 'Aurangabad', 'Nanded', '2024-06-29', 'Industrial goods', 210, 240, 0),
(8, 'Aurangabad', 'Nanded', '2024-07-03', 'Solid Goods', 100, 720, 0),
(8, 'Aurangabad', 'Nanded', '2024-07-03', 'Industrial goods', 340, 360, 0);
INSERT INTO `classcargo` (`train_number`, `start_point`, `destination_point`, `journey_date`, `class_name`, `cargo_fare1`, `available_cargo`, `booked_cargo`) VALUES
(8, 'Aurangabad', 'Nanded', '2024-07-04', 'Solid Goods', 90, 720, 0),
(8, 'Aurangabad', 'Nanded', '2024-07-04', 'Industrial goods', 300, 360, 0),
(8, 'Aurangabad', 'Nanded', '2024-07-13', 'Solid Goods', 80, 720, 0),
(8, 'Aurangabad', 'Nanded', '2024-07-13', 'Industrial goods', 270, 240, 0),
(8, 'Mumbai', 'Aurangabad', '2024-06-29', 'Solid Goods', 180, 720, 0),
(8, 'Mumbai', 'Aurangabad', '2024-06-29', 'Industrial goods', 370, 240, 6),
(8, 'Mumbai', 'Aurangabad', '2024-07-03', 'Solid Goods', 160, 720, 0),
(8, 'Mumbai', 'Aurangabad', '2024-07-03', 'Industrial goods', 550, 360, 0),
(8, 'Mumbai', 'Aurangabad', '2024-07-04', 'Solid Goods', 180, 720, 0),
(8, 'Mumbai', 'Aurangabad', '2024-07-04', 'Industrial goods', 600, 360, 0),
(8, 'Mumbai', 'Aurangabad', '2024-07-13', 'Solid Goods', 160, 720, 0),
(8, 'Mumbai', 'Aurangabad', '2024-07-13', 'Industrial goods', 440, 240, 0),
(8, 'Mumbai', 'Nanded', '2024-06-29', 'Solid Goods', 250, 720, 0),
(8, 'Mumbai', 'Nanded', '2024-06-29', 'Industrial goods', 540, 240, 6),
(8, 'Mumbai', 'Nanded', '2024-07-03', 'Solid Goods', 220, 720, 0),
(8, 'Mumbai', 'Nanded', '2024-07-03', 'Industrial goods', 750, 360, 0),
(8, 'Mumbai', 'Nanded', '2024-07-04', 'Solid Goods', 270, 720, 0),
(8, 'Mumbai', 'Nanded', '2024-07-04', 'Industrial goods', 900, 360, 0),
(8, 'Mumbai', 'Nanded', '2024-07-13', 'Solid Goods', 240, 720, 0),
(8, 'Mumbai', 'Nanded', '2024-07-13', 'Industrial goods', 640, 240, 0),
(8, 'Mumbai', 'Nashik', '2024-06-29', 'Solid Goods', 90, 720, 0),
(8, 'Mumbai', 'Nashik', '2024-06-29', 'Industrial goods', 190, 240, 6),
(8, 'Mumbai', 'Nashik', '2024-07-03', 'Solid Goods', 80, 720, 0),
(8, 'Mumbai', 'Nashik', '2024-07-03', 'Industrial goods', 300, 360, 0),
(8, 'Mumbai', 'Nashik', '2024-07-04', 'Solid Goods', 90, 720, 0),
(8, 'Mumbai', 'Nashik', '2024-07-04', 'Industrial goods', 300, 360, 0),
(8, 'Mumbai', 'Nashik', '2024-07-13', 'Solid Goods', 80, 720, 0),
(8, 'Mumbai', 'Nashik', '2024-07-13', 'Industrial goods', 240, 240, 0),
(8, 'Nashik', 'Aurangabad', '2024-06-29', 'Solid Goods', 100, 720, 0),
(8, 'Nashik', 'Aurangabad', '2024-06-29', 'Industrial goods', 200, 240, 6),
(8, 'Nashik', 'Aurangabad', '2024-07-03', 'Solid Goods', 90, 720, 0),
(8, 'Nashik', 'Aurangabad', '2024-07-03', 'Industrial goods', 320, 360, 0),
(8, 'Nashik', 'Aurangabad', '2024-07-04', 'Solid Goods', 90, 720, 0),
(8, 'Nashik', 'Aurangabad', '2024-07-04', 'Industrial goods', 300, 360, 0),
(8, 'Nashik', 'Aurangabad', '2024-07-13', 'Solid Goods', 80, 720, 0),
(8, 'Nashik', 'Aurangabad', '2024-07-13', 'Industrial goods', 250, 240, 0),
(8, 'Nashik', 'Nanded', '2024-06-29', 'Solid Goods', 190, 720, 0),
(8, 'Nashik', 'Nanded', '2024-06-29', 'Industrial goods', 410, 240, 6),
(8, 'Nashik', 'Nanded', '2024-07-03', 'Solid Goods', 170, 720, 0),
(8, 'Nashik', 'Nanded', '2024-07-03', 'Industrial goods', 580, 360, 0),
(8, 'Nashik', 'Nanded', '2024-07-04', 'Solid Goods', 180, 720, 0),
(8, 'Nashik', 'Nanded', '2024-07-04', 'Industrial goods', 600, 360, 0),
(8, 'Nashik', 'Nanded', '2024-07-13', 'Solid Goods', 160, 720, 0),
(8, 'Nashik', 'Nanded', '2024-07-13', 'Industrial goods', 450, 240, 0),
(9, 'Latur', 'Panvel', '2024-06-29', 'Oil tanker', 2000, 80, 0),
(9, 'Latur', 'Panvel', '2024-06-29', 'Gas tanker', 1800, 160, 0),
(9, 'Latur', 'Panvel', '2024-06-29', 'Car carrier', 1400, 240, 0),
(9, 'Latur', 'Panvel', '2024-06-29', 'Coal carrier', 800, 332, 8),
(9, 'Latur', 'Panvel', '2024-07-13', 'Oil tanker', 2000, 80, 0),
(9, 'Latur', 'Panvel', '2024-07-13', 'Gas tanker', 1800, 160, 0),
(9, 'Latur', 'Panvel', '2024-07-13', 'Car carrier', 1400, 240, 0),
(9, 'Latur', 'Panvel', '2024-07-13', 'Coal carrier', 800, 340, 0),
(9, 'Latur', 'Pune', '2024-06-29', 'Oil tanker', 1000, 80, 0),
(9, 'Latur', 'Pune', '2024-06-29', 'Gas tanker', 900, 160, 0),
(9, 'Latur', 'Pune', '2024-06-29', 'Car carrier', 700, 240, 0),
(9, 'Latur', 'Pune', '2024-06-29', 'Coal carrier', 400, 332, 8),
(9, 'Latur', 'Pune', '2024-07-13', 'Oil tanker', 1000, 80, 0),
(9, 'Latur', 'Pune', '2024-07-13', 'Gas tanker', 900, 160, 0),
(9, 'Latur', 'Pune', '2024-07-13', 'Car carrier', 700, 240, 0),
(9, 'Latur', 'Pune', '2024-07-13', 'Coal carrier', 400, 340, 0),
(9, 'Nanded', 'Latur', '2024-06-29', 'Oil tanker', 1000, 80, 0),
(9, 'Nanded', 'Latur', '2024-06-29', 'Gas tanker', 900, 160, 0),
(9, 'Nanded', 'Latur', '2024-06-29', 'Car carrier', 700, 240, 0),
(9, 'Nanded', 'Latur', '2024-06-29', 'Coal carrier', 400, 332, 8),
(9, 'Nanded', 'Latur', '2024-07-13', 'Oil tanker', 1000, 80, 0),
(9, 'Nanded', 'Latur', '2024-07-13', 'Gas tanker', 900, 160, 0),
(9, 'Nanded', 'Latur', '2024-07-13', 'Car carrier', 700, 240, 0),
(9, 'Nanded', 'Latur', '2024-07-13', 'Coal carrier', 400, 340, 0),
(9, 'Nanded', 'Panvel', '2024-06-29', 'Oil tanker', 3000, 80, 0),
(9, 'Nanded', 'Panvel', '2024-06-29', 'Gas tanker', 2700, 160, 0),
(9, 'Nanded', 'Panvel', '2024-06-29', 'Car carrier', 2100, 240, 0),
(9, 'Nanded', 'Panvel', '2024-06-29', 'Coal carrier', 1200, 332, 8),
(9, 'Nanded', 'Panvel', '2024-07-13', 'Oil tanker', 3000, 80, 0),
(9, 'Nanded', 'Panvel', '2024-07-13', 'Gas tanker', 2700, 160, 0),
(9, 'Nanded', 'Panvel', '2024-07-13', 'Car carrier', 2100, 240, 0),
(9, 'Nanded', 'Panvel', '2024-07-13', 'Coal carrier', 1200, 340, 0),
(9, 'Nanded', 'Pune', '2024-06-29', 'Oil tanker', 2000, 80, 0),
(9, 'Nanded', 'Pune', '2024-06-29', 'Gas tanker', 1800, 160, 0),
(9, 'Nanded', 'Pune', '2024-06-29', 'Car carrier', 1400, 240, 0),
(9, 'Nanded', 'Pune', '2024-06-29', 'Coal carrier', 800, 332, 8),
(9, 'Nanded', 'Pune', '2024-07-13', 'Oil tanker', 2000, 80, 0),
(9, 'Nanded', 'Pune', '2024-07-13', 'Gas tanker', 1800, 160, 0),
(9, 'Nanded', 'Pune', '2024-07-13', 'Car carrier', 1400, 240, 0),
(9, 'Nanded', 'Pune', '2024-07-13', 'Coal carrier', 800, 340, 0),
(9, 'Pune', 'Panvel', '2024-06-30', 'Oil tanker', 1000, 80, 0),
(9, 'Pune', 'Panvel', '2024-06-30', 'Gas tanker', 900, 160, 0),
(9, 'Pune', 'Panvel', '2024-06-30', 'Car carrier', 700, 240, 0),
(9, 'Pune', 'Panvel', '2024-06-30', 'Coal carrier', 400, 340, 0),
(9, 'Pune', 'Panvel', '2024-07-14', 'Oil tanker', 1000, 80, 0),
(9, 'Pune', 'Panvel', '2024-07-14', 'Gas tanker', 900, 160, 0),
(9, 'Pune', 'Panvel', '2024-07-14', 'Car carrier', 700, 240, 0),
(9, 'Pune', 'Panvel', '2024-07-14', 'Coal carrier', 400, 340, 0),
(10, 'Aurangabad', 'Amritsar', '2024-06-29', 'Oil tanker', 4000, 120, 0),
(10, 'Aurangabad', 'Amritsar', '2024-06-29', 'Gas tanker', 3500, 240, 0),
(10, 'Aurangabad', 'Amritsar', '2024-06-29', 'Car carrier', 2600, 960, 0),
(10, 'Aurangabad', 'Amritsar', '2024-07-13', 'Oil tanker', 4000, 120, 0),
(10, 'Aurangabad', 'Amritsar', '2024-07-13', 'Gas tanker', 3500, 240, 0),
(10, 'Aurangabad', 'Amritsar', '2024-07-13', 'Car carrier', 2600, 960, 0),
(10, 'Aurangabad', 'Bhopal', '2024-06-29', 'Oil tanker', 800, 120, 0),
(10, 'Aurangabad', 'Bhopal', '2024-06-29', 'Gas tanker', 700, 240, 0),
(10, 'Aurangabad', 'Bhopal', '2024-06-29', 'Car carrier', 550, 960, 0),
(10, 'Aurangabad', 'Bhopal', '2024-07-13', 'Oil tanker', 800, 120, 0),
(10, 'Aurangabad', 'Bhopal', '2024-07-13', 'Gas tanker', 700, 240, 0),
(10, 'Aurangabad', 'Bhopal', '2024-07-13', 'Car carrier', 550, 960, 0),
(10, 'Aurangabad', 'Chandigarh', '2024-06-29', 'Oil tanker', 3200, 120, 0),
(10, 'Aurangabad', 'Chandigarh', '2024-06-29', 'Gas tanker', 2800, 240, 0),
(10, 'Aurangabad', 'Chandigarh', '2024-06-29', 'Car carrier', 2200, 960, 0),
(10, 'Aurangabad', 'Chandigarh', '2024-07-13', 'Oil tanker', 3200, 120, 0),
(10, 'Aurangabad', 'Chandigarh', '2024-07-13', 'Gas tanker', 2800, 240, 0),
(10, 'Aurangabad', 'Chandigarh', '2024-07-13', 'Car carrier', 2200, 960, 0),
(10, 'Aurangabad', 'Delhi', '2024-06-29', 'Oil tanker', 2400, 120, 0),
(10, 'Aurangabad', 'Delhi', '2024-06-29', 'Gas tanker', 2100, 240, 0),
(10, 'Aurangabad', 'Delhi', '2024-06-29', 'Car carrier', 1650, 960, 0),
(10, 'Aurangabad', 'Delhi', '2024-07-13', 'Oil tanker', 2400, 120, 0),
(10, 'Aurangabad', 'Delhi', '2024-07-13', 'Gas tanker', 2100, 240, 0),
(10, 'Aurangabad', 'Delhi', '2024-07-13', 'Car carrier', 1650, 960, 0),
(10, 'Aurangabad', 'Jhansi', '2024-06-29', 'Oil tanker', 1600, 120, 0),
(10, 'Aurangabad', 'Jhansi', '2024-06-29', 'Gas tanker', 1400, 240, 0),
(10, 'Aurangabad', 'Jhansi', '2024-06-29', 'Car carrier', 1100, 960, 0),
(10, 'Aurangabad', 'Jhansi', '2024-07-13', 'Oil tanker', 1600, 120, 0),
(10, 'Aurangabad', 'Jhansi', '2024-07-13', 'Gas tanker', 1400, 240, 0),
(10, 'Aurangabad', 'Jhansi', '2024-07-13', 'Car carrier', 1100, 960, 0),
(10, 'Bhopal', 'Amritsar', '2024-06-30', 'Oil tanker', 3200, 120, 0),
(10, 'Bhopal', 'Amritsar', '2024-06-30', 'Gas tanker', 2800, 240, 0),
(10, 'Bhopal', 'Amritsar', '2024-06-30', 'Car carrier', 2200, 960, 0),
(10, 'Bhopal', 'Amritsar', '2024-07-14', 'Oil tanker', 3200, 120, 0),
(10, 'Bhopal', 'Amritsar', '2024-07-14', 'Gas tanker', 2800, 240, 0),
(10, 'Bhopal', 'Amritsar', '2024-07-14', 'Car carrier', 2200, 960, 0),
(10, 'Bhopal', 'Chandigarh', '2024-06-30', 'Oil tanker', 2400, 120, 0),
(10, 'Bhopal', 'Chandigarh', '2024-06-30', 'Gas tanker', 2100, 240, 0),
(10, 'Bhopal', 'Chandigarh', '2024-06-30', 'Car carrier', 1650, 960, 0),
(10, 'Bhopal', 'Chandigarh', '2024-07-14', 'Oil tanker', 2400, 120, 0),
(10, 'Bhopal', 'Chandigarh', '2024-07-14', 'Gas tanker', 2100, 240, 0),
(10, 'Bhopal', 'Chandigarh', '2024-07-14', 'Car carrier', 1650, 960, 0),
(10, 'Bhopal', 'Delhi', '2024-06-30', 'Oil tanker', 1600, 120, 0),
(10, 'Bhopal', 'Delhi', '2024-06-30', 'Gas tanker', 1400, 240, 0),
(10, 'Bhopal', 'Delhi', '2024-06-30', 'Car carrier', 1100, 960, 0),
(10, 'Bhopal', 'Delhi', '2024-07-14', 'Oil tanker', 1600, 120, 0),
(10, 'Bhopal', 'Delhi', '2024-07-14', 'Gas tanker', 1400, 240, 0),
(10, 'Bhopal', 'Delhi', '2024-07-14', 'Car carrier', 1100, 960, 0),
(10, 'Bhopal', 'Jhansi', '2024-06-30', 'Oil tanker', 800, 120, 0),
(10, 'Bhopal', 'Jhansi', '2024-06-30', 'Gas tanker', 700, 240, 0),
(10, 'Bhopal', 'Jhansi', '2024-06-30', 'Car carrier', 550, 960, 0),
(10, 'Bhopal', 'Jhansi', '2024-07-14', 'Oil tanker', 800, 120, 0),
(10, 'Bhopal', 'Jhansi', '2024-07-14', 'Gas tanker', 700, 240, 0),
(10, 'Bhopal', 'Jhansi', '2024-07-14', 'Car carrier', 550, 960, 0),
(10, 'Chandigarh', 'Amritsar', '2024-06-30', 'Oil tanker', 800, 120, 0),
(10, 'Chandigarh', 'Amritsar', '2024-06-30', 'Gas tanker', 700, 240, 0),
(10, 'Chandigarh', 'Amritsar', '2024-06-30', 'Car carrier', 550, 960, 0),
(10, 'Chandigarh', 'Amritsar', '2024-07-14', 'Oil tanker', 800, 120, 0),
(10, 'Chandigarh', 'Amritsar', '2024-07-14', 'Gas tanker', 700, 240, 0),
(10, 'Chandigarh', 'Amritsar', '2024-07-14', 'Car carrier', 550, 960, 0),
(10, 'Delhi', 'Amritsar', '2024-06-30', 'Oil tanker', 1600, 120, 0),
(10, 'Delhi', 'Amritsar', '2024-06-30', 'Gas tanker', 1400, 240, 0),
(10, 'Delhi', 'Amritsar', '2024-06-30', 'Car carrier', 1100, 960, 0),
(10, 'Delhi', 'Amritsar', '2024-07-14', 'Oil tanker', 1600, 120, 0),
(10, 'Delhi', 'Amritsar', '2024-07-14', 'Gas tanker', 1400, 240, 0),
(10, 'Delhi', 'Amritsar', '2024-07-14', 'Car carrier', 1100, 960, 0),
(10, 'Delhi', 'Chandigarh', '2024-06-30', 'Oil tanker', 800, 120, 0),
(10, 'Delhi', 'Chandigarh', '2024-06-30', 'Gas tanker', 700, 240, 0),
(10, 'Delhi', 'Chandigarh', '2024-06-30', 'Car carrier', 550, 960, 0),
(10, 'Delhi', 'Chandigarh', '2024-07-14', 'Oil tanker', 800, 120, 0),
(10, 'Delhi', 'Chandigarh', '2024-07-14', 'Gas tanker', 700, 240, 0),
(10, 'Delhi', 'Chandigarh', '2024-07-14', 'Car carrier', 550, 960, 0),
(10, 'Jhansi', 'Amritsar', '2024-06-30', 'Oil tanker', 2400, 120, 0),
(10, 'Jhansi', 'Amritsar', '2024-06-30', 'Gas tanker', 2100, 240, 0),
(10, 'Jhansi', 'Amritsar', '2024-06-30', 'Car carrier', 1650, 960, 0),
(10, 'Jhansi', 'Amritsar', '2024-07-14', 'Oil tanker', 2400, 120, 0),
(10, 'Jhansi', 'Amritsar', '2024-07-14', 'Gas tanker', 2100, 240, 0),
(10, 'Jhansi', 'Amritsar', '2024-07-14', 'Car carrier', 1650, 960, 0),
(10, 'Jhansi', 'Chandigarh', '2024-06-30', 'Oil tanker', 1600, 120, 0),
(10, 'Jhansi', 'Chandigarh', '2024-06-30', 'Gas tanker', 1400, 240, 0),
(10, 'Jhansi', 'Chandigarh', '2024-06-30', 'Car carrier', 1100, 960, 0),
(10, 'Jhansi', 'Chandigarh', '2024-07-14', 'Oil tanker', 1600, 120, 0),
(10, 'Jhansi', 'Chandigarh', '2024-07-14', 'Gas tanker', 1400, 240, 0),
(10, 'Jhansi', 'Chandigarh', '2024-07-14', 'Car carrier', 1100, 960, 0),
(10, 'Jhansi', 'Delhi', '2024-06-30', 'Oil tanker', 800, 120, 0),
(10, 'Jhansi', 'Delhi', '2024-06-30', 'Gas tanker', 700, 240, 0),
(10, 'Jhansi', 'Delhi', '2024-06-30', 'Car carrier', 550, 960, 0),
(10, 'Jhansi', 'Delhi', '2024-07-14', 'Oil tanker', 800, 120, 0),
(10, 'Jhansi', 'Delhi', '2024-07-14', 'Gas tanker', 700, 240, 0),
(10, 'Jhansi', 'Delhi', '2024-07-14', 'Car carrier', 550, 960, 0),
(10, 'Nanded', 'Amritsar', '2024-06-29', 'Oil tanker', 4800, 120, 0),
(10, 'Nanded', 'Amritsar', '2024-06-29', 'Gas tanker', 4200, 236, 4),
(10, 'Nanded', 'Amritsar', '2024-06-29', 'Car carrier', 3100, 960, 0),
(10, 'Nanded', 'Amritsar', '2024-07-13', 'Oil tanker', 4800, 120, 0),
(10, 'Nanded', 'Amritsar', '2024-07-13', 'Gas tanker', 4200, 240, 0),
(10, 'Nanded', 'Amritsar', '2024-07-13', 'Car carrier', 3100, 960, 0),
(10, 'Nanded', 'Aurangabad', '2024-06-29', 'Oil tanker', 800, 120, 0),
(10, 'Nanded', 'Aurangabad', '2024-06-29', 'Gas tanker', 700, 236, 4),
(10, 'Nanded', 'Aurangabad', '2024-06-29', 'Car carrier', 550, 960, 0),
(10, 'Nanded', 'Aurangabad', '2024-07-13', 'Oil tanker', 800, 120, 0),
(10, 'Nanded', 'Aurangabad', '2024-07-13', 'Gas tanker', 700, 240, 0),
(10, 'Nanded', 'Aurangabad', '2024-07-13', 'Car carrier', 550, 960, 0),
(10, 'Nanded', 'Bhopal', '2024-06-29', 'Oil tanker', 1600, 120, 0),
(10, 'Nanded', 'Bhopal', '2024-06-29', 'Gas tanker', 1400, 236, 4),
(10, 'Nanded', 'Bhopal', '2024-06-29', 'Car carrier', 1100, 960, 0),
(10, 'Nanded', 'Bhopal', '2024-07-13', 'Oil tanker', 1600, 120, 0),
(10, 'Nanded', 'Bhopal', '2024-07-13', 'Gas tanker', 1400, 240, 0),
(10, 'Nanded', 'Bhopal', '2024-07-13', 'Car carrier', 1100, 960, 0),
(10, 'Nanded', 'Chandigarh', '2024-06-29', 'Oil tanker', 4000, 120, 0),
(10, 'Nanded', 'Chandigarh', '2024-06-29', 'Gas tanker', 3500, 236, 4),
(10, 'Nanded', 'Chandigarh', '2024-06-29', 'Car carrier', 2600, 960, 0),
(10, 'Nanded', 'Chandigarh', '2024-07-13', 'Oil tanker', 4000, 120, 0),
(10, 'Nanded', 'Chandigarh', '2024-07-13', 'Gas tanker', 3500, 240, 0),
(10, 'Nanded', 'Chandigarh', '2024-07-13', 'Car carrier', 2600, 960, 0),
(10, 'Nanded', 'Delhi', '2024-06-29', 'Oil tanker', 3200, 120, 0),
(10, 'Nanded', 'Delhi', '2024-06-29', 'Gas tanker', 2800, 236, 4),
(10, 'Nanded', 'Delhi', '2024-06-29', 'Car carrier', 2200, 960, 0),
(10, 'Nanded', 'Delhi', '2024-07-13', 'Oil tanker', 3200, 120, 0),
(10, 'Nanded', 'Delhi', '2024-07-13', 'Gas tanker', 2800, 240, 0),
(10, 'Nanded', 'Delhi', '2024-07-13', 'Car carrier', 2200, 960, 0),
(10, 'Nanded', 'Jhansi', '2024-06-29', 'Oil tanker', 2400, 120, 0),
(10, 'Nanded', 'Jhansi', '2024-06-29', 'Gas tanker', 2100, 236, 4),
(10, 'Nanded', 'Jhansi', '2024-06-29', 'Car carrier', 1650, 960, 0),
(10, 'Nanded', 'Jhansi', '2024-07-13', 'Oil tanker', 2400, 120, 0),
(10, 'Nanded', 'Jhansi', '2024-07-13', 'Gas tanker', 2100, 240, 0),
(10, 'Nanded', 'Jhansi', '2024-07-13', 'Car carrier', 1650, 960, 0),
(11, 'Amritsar', 'Aurangabad', '2024-06-29', 'Oil tanker', 5000, 120, 0),
(11, 'Amritsar', 'Aurangabad', '2024-06-29', 'Gas tanker', 4500, 297, 3),
(11, 'Amritsar', 'Aurangabad', '2024-06-29', 'Car carrier', 3500, 718, 8),
(11, 'Amritsar', 'Aurangabad', '2024-07-13', 'Oil tanker', 5000, 120, 0),
(11, 'Amritsar', 'Aurangabad', '2024-07-13', 'Gas tanker', 4500, 300, 0),
(11, 'Amritsar', 'Aurangabad', '2024-07-13', 'Car carrier', 3500, 720, 0),
(11, 'Amritsar', 'Bhopal', '2024-06-29', 'Oil tanker', 4000, 120, 0),
(11, 'Amritsar', 'Bhopal', '2024-06-29', 'Gas tanker', 3600, 297, 3),
(11, 'Amritsar', 'Bhopal', '2024-06-29', 'Car carrier', 2800, 718, 8),
(11, 'Amritsar', 'Bhopal', '2024-07-13', 'Oil tanker', 4000, 120, 0),
(11, 'Amritsar', 'Bhopal', '2024-07-13', 'Gas tanker', 3600, 300, 0),
(11, 'Amritsar', 'Bhopal', '2024-07-13', 'Car carrier', 2800, 720, 0),
(11, 'Amritsar', 'Chandigarh', '2024-06-29', 'Oil tanker', 1000, 120, 0),
(11, 'Amritsar', 'Chandigarh', '2024-06-29', 'Gas tanker', 900, 297, 3),
(11, 'Amritsar', 'Chandigarh', '2024-06-29', 'Car carrier', 700, 720, 0),
(11, 'Amritsar', 'Chandigarh', '2024-07-13', 'Oil tanker', 1000, 120, 0),
(11, 'Amritsar', 'Chandigarh', '2024-07-13', 'Gas tanker', 900, 300, 0),
(11, 'Amritsar', 'Chandigarh', '2024-07-13', 'Car carrier', 700, 720, 0),
(11, 'Amritsar', 'Delhi', '2024-06-29', 'Oil tanker', 2000, 120, 0),
(11, 'Amritsar', 'Delhi', '2024-06-29', 'Gas tanker', 1800, 297, 3),
(11, 'Amritsar', 'Delhi', '2024-06-29', 'Car carrier', 1400, 718, 2),
(11, 'Amritsar', 'Delhi', '2024-07-13', 'Oil tanker', 2000, 120, 0),
(11, 'Amritsar', 'Delhi', '2024-07-13', 'Gas tanker', 1800, 300, 0),
(11, 'Amritsar', 'Delhi', '2024-07-13', 'Car carrier', 1400, 720, 0),
(11, 'Amritsar', 'Jhansi', '2024-06-29', 'Oil tanker', 3000, 120, 0),
(11, 'Amritsar', 'Jhansi', '2024-06-29', 'Gas tanker', 2700, 297, 3),
(11, 'Amritsar', 'Jhansi', '2024-06-29', 'Car carrier', 2100, 718, 8),
(11, 'Amritsar', 'Jhansi', '2024-07-13', 'Oil tanker', 3000, 120, 0),
(11, 'Amritsar', 'Jhansi', '2024-07-13', 'Gas tanker', 2700, 300, 0),
(11, 'Amritsar', 'Jhansi', '2024-07-13', 'Car carrier', 2100, 720, 0),
(11, 'Amritsar', 'Nanded', '2024-06-29', 'Oil tanker', 6000, 120, 0),
(11, 'Amritsar', 'Nanded', '2024-06-29', 'Gas tanker', 5400, 297, 3),
(11, 'Amritsar', 'Nanded', '2024-06-29', 'Car carrier', 4200, 718, 8),
(11, 'Amritsar', 'Nanded', '2024-07-13', 'Oil tanker', 6000, 120, 0),
(11, 'Amritsar', 'Nanded', '2024-07-13', 'Gas tanker', 5400, 300, 0),
(11, 'Amritsar', 'Nanded', '2024-07-13', 'Car carrier', 4200, 720, 0),
(11, 'Aurangabad', 'Nanded', '2024-06-30', 'Oil tanker', 1000, 120, 0),
(11, 'Aurangabad', 'Nanded', '2024-06-30', 'Gas tanker', 900, 300, 0),
(11, 'Aurangabad', 'Nanded', '2024-06-30', 'Car carrier', 700, 720, 0),
(11, 'Aurangabad', 'Nanded', '2024-07-14', 'Oil tanker', 1000, 120, 0),
(11, 'Aurangabad', 'Nanded', '2024-07-14', 'Gas tanker', 900, 300, 0),
(11, 'Aurangabad', 'Nanded', '2024-07-14', 'Car carrier', 700, 720, 0),
(11, 'Bhopal', 'Aurangabad', '2024-06-29', 'Oil tanker', 1000, 120, 0),
(11, 'Bhopal', 'Aurangabad', '2024-06-29', 'Gas tanker', 900, 297, 3),
(11, 'Bhopal', 'Aurangabad', '2024-06-29', 'Car carrier', 700, 718, 8),
(11, 'Bhopal', 'Aurangabad', '2024-07-13', 'Oil tanker', 1000, 120, 0),
(11, 'Bhopal', 'Aurangabad', '2024-07-13', 'Gas tanker', 900, 300, 0),
(11, 'Bhopal', 'Aurangabad', '2024-07-13', 'Car carrier', 700, 720, 0),
(11, 'Bhopal', 'Nanded', '2024-06-29', 'Oil tanker', 2000, 120, 0),
(11, 'Bhopal', 'Nanded', '2024-06-29', 'Gas tanker', 1800, 297, 3),
(11, 'Bhopal', 'Nanded', '2024-06-29', 'Car carrier', 1400, 718, 8),
(11, 'Bhopal', 'Nanded', '2024-07-13', 'Oil tanker', 2000, 120, 0),
(11, 'Bhopal', 'Nanded', '2024-07-13', 'Gas tanker', 1800, 300, 0),
(11, 'Bhopal', 'Nanded', '2024-07-13', 'Car carrier', 1400, 720, 0),
(11, 'Chandigarh', 'Aurangabad', '2024-06-29', 'Oil tanker', 4000, 120, 0),
(11, 'Chandigarh', 'Aurangabad', '2024-06-29', 'Gas tanker', 3600, 297, 3),
(11, 'Chandigarh', 'Aurangabad', '2024-06-29', 'Car carrier', 2800, 718, 8),
(11, 'Chandigarh', 'Aurangabad', '2024-07-13', 'Oil tanker', 4000, 120, 0),
(11, 'Chandigarh', 'Aurangabad', '2024-07-13', 'Gas tanker', 3600, 300, 0),
(11, 'Chandigarh', 'Aurangabad', '2024-07-13', 'Car carrier', 2800, 720, 0),
(11, 'Chandigarh', 'Bhopal', '2024-06-29', 'Oil tanker', 3000, 120, 0),
(11, 'Chandigarh', 'Bhopal', '2024-06-29', 'Gas tanker', 2700, 297, 3),
(11, 'Chandigarh', 'Bhopal', '2024-06-29', 'Car carrier', 2100, 718, 8),
(11, 'Chandigarh', 'Bhopal', '2024-07-13', 'Oil tanker', 3000, 120, 0),
(11, 'Chandigarh', 'Bhopal', '2024-07-13', 'Gas tanker', 2700, 300, 0),
(11, 'Chandigarh', 'Bhopal', '2024-07-13', 'Car carrier', 2100, 720, 0),
(11, 'Chandigarh', 'Delhi', '2024-06-29', 'Oil tanker', 1000, 120, 0),
(11, 'Chandigarh', 'Delhi', '2024-06-29', 'Gas tanker', 900, 297, 3),
(11, 'Chandigarh', 'Delhi', '2024-06-29', 'Car carrier', 700, 718, 2),
(11, 'Chandigarh', 'Delhi', '2024-07-13', 'Oil tanker', 1000, 120, 0),
(11, 'Chandigarh', 'Delhi', '2024-07-13', 'Gas tanker', 900, 300, 0),
(11, 'Chandigarh', 'Delhi', '2024-07-13', 'Car carrier', 700, 720, 0),
(11, 'Chandigarh', 'Jhansi', '2024-06-29', 'Oil tanker', 2000, 120, 0),
(11, 'Chandigarh', 'Jhansi', '2024-06-29', 'Gas tanker', 1800, 297, 3),
(11, 'Chandigarh', 'Jhansi', '2024-06-29', 'Car carrier', 1400, 718, 8),
(11, 'Chandigarh', 'Jhansi', '2024-07-13', 'Oil tanker', 2000, 120, 0),
(11, 'Chandigarh', 'Jhansi', '2024-07-13', 'Gas tanker', 1800, 300, 0),
(11, 'Chandigarh', 'Jhansi', '2024-07-13', 'Car carrier', 1400, 720, 0),
(11, 'Chandigarh', 'Nanded', '2024-06-29', 'Oil tanker', 5000, 120, 0),
(11, 'Chandigarh', 'Nanded', '2024-06-29', 'Gas tanker', 4500, 297, 3),
(11, 'Chandigarh', 'Nanded', '2024-06-29', 'Car carrier', 3500, 718, 8),
(11, 'Chandigarh', 'Nanded', '2024-07-13', 'Oil tanker', 5000, 120, 0),
(11, 'Chandigarh', 'Nanded', '2024-07-13', 'Gas tanker', 4500, 300, 0),
(11, 'Chandigarh', 'Nanded', '2024-07-13', 'Car carrier', 3500, 720, 0),
(11, 'Delhi', 'Aurangabad', '2024-06-29', 'Oil tanker', 3000, 120, 0),
(11, 'Delhi', 'Aurangabad', '2024-06-29', 'Gas tanker', 2700, 297, 3),
(11, 'Delhi', 'Aurangabad', '2024-06-29', 'Car carrier', 2100, 718, 8),
(11, 'Delhi', 'Aurangabad', '2024-07-13', 'Oil tanker', 3000, 120, 0),
(11, 'Delhi', 'Aurangabad', '2024-07-13', 'Gas tanker', 2700, 300, 0),
(11, 'Delhi', 'Aurangabad', '2024-07-13', 'Car carrier', 2100, 720, 0),
(11, 'Delhi', 'Bhopal', '2024-06-29', 'Oil tanker', 2000, 120, 0),
(11, 'Delhi', 'Bhopal', '2024-06-29', 'Gas tanker', 1800, 297, 3),
(11, 'Delhi', 'Bhopal', '2024-06-29', 'Car carrier', 1400, 718, 8),
(11, 'Delhi', 'Bhopal', '2024-07-13', 'Oil tanker', 2000, 120, 0),
(11, 'Delhi', 'Bhopal', '2024-07-13', 'Gas tanker', 1800, 300, 0),
(11, 'Delhi', 'Bhopal', '2024-07-13', 'Car carrier', 1400, 720, 0),
(11, 'Delhi', 'Jhansi', '2024-06-29', 'Oil tanker', 1000, 120, 0),
(11, 'Delhi', 'Jhansi', '2024-06-29', 'Gas tanker', 900, 297, 3),
(11, 'Delhi', 'Jhansi', '2024-06-29', 'Car carrier', 700, 718, 8),
(11, 'Delhi', 'Jhansi', '2024-07-13', 'Oil tanker', 1000, 120, 0),
(11, 'Delhi', 'Jhansi', '2024-07-13', 'Gas tanker', 900, 300, 0),
(11, 'Delhi', 'Jhansi', '2024-07-13', 'Car carrier', 700, 720, 0),
(11, 'Delhi', 'Nanded', '2024-06-29', 'Oil tanker', 4000, 120, 0),
(11, 'Delhi', 'Nanded', '2024-06-29', 'Gas tanker', 3600, 297, 3),
(11, 'Delhi', 'Nanded', '2024-06-29', 'Car carrier', 2800, 718, 8),
(11, 'Delhi', 'Nanded', '2024-07-13', 'Oil tanker', 4000, 120, 0),
(11, 'Delhi', 'Nanded', '2024-07-13', 'Gas tanker', 3600, 300, 0),
(11, 'Delhi', 'Nanded', '2024-07-13', 'Car carrier', 2800, 720, 0),
(11, 'Jhansi', 'Aurangabad', '2024-06-29', 'Oil tanker', 2000, 120, 0),
(11, 'Jhansi', 'Aurangabad', '2024-06-29', 'Gas tanker', 1800, 297, 3),
(11, 'Jhansi', 'Aurangabad', '2024-06-29', 'Car carrier', 1400, 718, 8),
(11, 'Jhansi', 'Aurangabad', '2024-07-13', 'Oil tanker', 2000, 120, 0),
(11, 'Jhansi', 'Aurangabad', '2024-07-13', 'Gas tanker', 1800, 300, 0),
(11, 'Jhansi', 'Aurangabad', '2024-07-13', 'Car carrier', 1400, 720, 0),
(11, 'Jhansi', 'Bhopal', '2024-06-29', 'Oil tanker', 1000, 120, 0),
(11, 'Jhansi', 'Bhopal', '2024-06-29', 'Gas tanker', 900, 297, 3),
(11, 'Jhansi', 'Bhopal', '2024-06-29', 'Car carrier', 700, 718, 8),
(11, 'Jhansi', 'Bhopal', '2024-07-13', 'Oil tanker', 1000, 120, 0),
(11, 'Jhansi', 'Bhopal', '2024-07-13', 'Gas tanker', 900, 300, 0),
(11, 'Jhansi', 'Bhopal', '2024-07-13', 'Car carrier', 700, 720, 0),
(11, 'Jhansi', 'Nanded', '2024-06-29', 'Oil tanker', 3000, 120, 0),
(11, 'Jhansi', 'Nanded', '2024-06-29', 'Gas tanker', 2700, 297, 3),
(11, 'Jhansi', 'Nanded', '2024-06-29', 'Car carrier', 2100, 718, 8),
(11, 'Jhansi', 'Nanded', '2024-07-13', 'Oil tanker', 3000, 120, 0),
(11, 'Jhansi', 'Nanded', '2024-07-13', 'Gas tanker', 2700, 300, 0),
(11, 'Jhansi', 'Nanded', '2024-07-13', 'Car carrier', 2100, 720, 0),
(13, 'Akola', 'Bhopal', '2024-06-29', 'Oil tanker', 1100, 80, 0),
(13, 'Akola', 'Bhopal', '2024-06-29', 'Gas tanker', 1000, 150, 6),
(13, 'Akola', 'Bhopal', '2024-06-29', 'Car carrier', 800, 840, 0),
(13, 'Akola', 'Bhopal', '2024-07-13', 'Oil tanker', 1100, 80, 0),
(13, 'Akola', 'Bhopal', '2024-07-13', 'Gas tanker', 1000, 150, 0),
(13, 'Akola', 'Bhopal', '2024-07-13', 'Car carrier', 800, 840, 0),
(13, 'Akola', 'Delhi', '2024-06-29', 'Oil tanker', 3300, 80, 0),
(13, 'Akola', 'Delhi', '2024-06-29', 'Gas tanker', 3000, 150, 6),
(13, 'Akola', 'Delhi', '2024-06-29', 'Car carrier', 2400, 840, 0),
(13, 'Akola', 'Delhi', '2024-07-13', 'Oil tanker', 3300, 80, 0),
(13, 'Akola', 'Delhi', '2024-07-13', 'Gas tanker', 3000, 150, 0),
(13, 'Akola', 'Delhi', '2024-07-13', 'Car carrier', 2400, 840, 0),
(13, 'Akola', 'Jhansi', '2024-06-29', 'Oil tanker', 2200, 80, 0),
(13, 'Akola', 'Jhansi', '2024-06-29', 'Gas tanker', 2000, 150, 6),
(13, 'Akola', 'Jhansi', '2024-06-29', 'Car carrier', 1600, 840, 0),
(13, 'Akola', 'Jhansi', '2024-07-13', 'Oil tanker', 2200, 80, 0),
(13, 'Akola', 'Jhansi', '2024-07-13', 'Gas tanker', 2000, 150, 0),
(13, 'Akola', 'Jhansi', '2024-07-13', 'Car carrier', 1600, 840, 0),
(13, 'Akola', 'Sriganganagar', '2024-06-29', 'Oil tanker', 4400, 80, 0),
(13, 'Akola', 'Sriganganagar', '2024-06-29', 'Gas tanker', 4000, 150, 6),
(13, 'Akola', 'Sriganganagar', '2024-06-29', 'Car carrier', 3200, 840, 0),
(13, 'Akola', 'Sriganganagar', '2024-07-13', 'Oil tanker', 4400, 80, 0),
(13, 'Akola', 'Sriganganagar', '2024-07-13', 'Gas tanker', 4000, 150, 0),
(13, 'Akola', 'Sriganganagar', '2024-07-13', 'Car carrier', 3200, 840, 0),
(13, 'Bhopal', 'Delhi', '2024-06-30', 'Oil tanker', 2200, 80, 0),
(13, 'Bhopal', 'Delhi', '2024-06-30', 'Gas tanker', 2000, 150, 0),
(13, 'Bhopal', 'Delhi', '2024-06-30', 'Car carrier', 1600, 840, 0),
(13, 'Bhopal', 'Delhi', '2024-07-14', 'Oil tanker', 2200, 80, 0),
(13, 'Bhopal', 'Delhi', '2024-07-14', 'Gas tanker', 2000, 150, 0),
(13, 'Bhopal', 'Delhi', '2024-07-14', 'Car carrier', 1600, 840, 0),
(13, 'Bhopal', 'Jhansi', '2024-06-30', 'Oil tanker', 1100, 80, 0),
(13, 'Bhopal', 'Jhansi', '2024-06-30', 'Gas tanker', 1000, 150, 0),
(13, 'Bhopal', 'Jhansi', '2024-06-30', 'Car carrier', 800, 840, 0),
(13, 'Bhopal', 'Jhansi', '2024-07-14', 'Oil tanker', 1100, 80, 0),
(13, 'Bhopal', 'Jhansi', '2024-07-14', 'Gas tanker', 1000, 150, 0),
(13, 'Bhopal', 'Jhansi', '2024-07-14', 'Car carrier', 800, 840, 0),
(13, 'Bhopal', 'Sriganganagar', '2024-06-30', 'Oil tanker', 3300, 80, 0),
(13, 'Bhopal', 'Sriganganagar', '2024-06-30', 'Gas tanker', 3000, 150, 0),
(13, 'Bhopal', 'Sriganganagar', '2024-06-30', 'Car carrier', 2400, 840, 0),
(13, 'Bhopal', 'Sriganganagar', '2024-07-14', 'Oil tanker', 3300, 80, 0),
(13, 'Bhopal', 'Sriganganagar', '2024-07-14', 'Gas tanker', 3000, 150, 0),
(13, 'Bhopal', 'Sriganganagar', '2024-07-14', 'Car carrier', 2400, 840, 0),
(13, 'Delhi', 'Sriganganagar', '2024-06-30', 'Oil tanker', 1100, 80, 0),
(13, 'Delhi', 'Sriganganagar', '2024-06-30', 'Gas tanker', 1000, 150, 0),
(13, 'Delhi', 'Sriganganagar', '2024-06-30', 'Car carrier', 800, 840, 0),
(13, 'Delhi', 'Sriganganagar', '2024-07-14', 'Oil tanker', 1100, 80, 0),
(13, 'Delhi', 'Sriganganagar', '2024-07-14', 'Gas tanker', 1000, 150, 0),
(13, 'Delhi', 'Sriganganagar', '2024-07-14', 'Car carrier', 800, 840, 0),
(13, 'Jhansi', 'Delhi', '2024-06-30', 'Oil tanker', 1100, 80, 0),
(13, 'Jhansi', 'Delhi', '2024-06-30', 'Gas tanker', 1000, 150, 0),
(13, 'Jhansi', 'Delhi', '2024-06-30', 'Car carrier', 800, 840, 0),
(13, 'Jhansi', 'Delhi', '2024-07-14', 'Oil tanker', 1100, 80, 0),
(13, 'Jhansi', 'Delhi', '2024-07-14', 'Gas tanker', 1000, 150, 0),
(13, 'Jhansi', 'Delhi', '2024-07-14', 'Car carrier', 800, 840, 0),
(13, 'Jhansi', 'Sriganganagar', '2024-06-30', 'Oil tanker', 2200, 80, 0),
(13, 'Jhansi', 'Sriganganagar', '2024-06-30', 'Gas tanker', 2000, 150, 0),
(13, 'Jhansi', 'Sriganganagar', '2024-06-30', 'Car carrier', 1600, 840, 0),
(13, 'Jhansi', 'Sriganganagar', '2024-07-14', 'Oil tanker', 2200, 80, 0),
(13, 'Jhansi', 'Sriganganagar', '2024-07-14', 'Gas tanker', 2000, 150, 0),
(13, 'Jhansi', 'Sriganganagar', '2024-07-14', 'Car carrier', 1600, 840, 0),
(13, 'Nanded', 'Akola', '2024-06-29', 'Oil tanker', 1100, 80, 0),
(13, 'Nanded', 'Akola', '2024-06-29', 'Gas tanker', 1000, 150, 6),
(13, 'Nanded', 'Akola', '2024-06-29', 'Car carrier', 800, 840, 0),
(13, 'Nanded', 'Akola', '2024-07-13', 'Oil tanker', 1100, 80, 0),
(13, 'Nanded', 'Akola', '2024-07-13', 'Gas tanker', 1000, 150, 0),
(13, 'Nanded', 'Akola', '2024-07-13', 'Car carrier', 800, 840, 0),
(13, 'Nanded', 'Bhopal', '2024-06-29', 'Oil tanker', 2200, 80, 0),
(13, 'Nanded', 'Bhopal', '2024-06-29', 'Gas tanker', 2000, 150, 6),
(13, 'Nanded', 'Bhopal', '2024-06-29', 'Car carrier', 1600, 840, 0),
(13, 'Nanded', 'Bhopal', '2024-07-13', 'Oil tanker', 2200, 80, 0),
(13, 'Nanded', 'Bhopal', '2024-07-13', 'Gas tanker', 2000, 150, 0),
(13, 'Nanded', 'Bhopal', '2024-07-13', 'Car carrier', 1600, 840, 0),
(13, 'Nanded', 'Delhi', '2024-06-29', 'Oil tanker', 4400, 80, 0),
(13, 'Nanded', 'Delhi', '2024-06-29', 'Gas tanker', 4000, 150, 6),
(13, 'Nanded', 'Delhi', '2024-06-29', 'Car carrier', 3200, 840, 0),
(13, 'Nanded', 'Delhi', '2024-07-13', 'Oil tanker', 4400, 80, 0),
(13, 'Nanded', 'Delhi', '2024-07-13', 'Gas tanker', 4000, 150, 0),
(13, 'Nanded', 'Delhi', '2024-07-13', 'Car carrier', 3200, 840, 0),
(13, 'Nanded', 'Jhansi', '2024-06-29', 'Oil tanker', 3300, 80, 0),
(13, 'Nanded', 'Jhansi', '2024-06-29', 'Gas tanker', 3000, 150, 6),
(13, 'Nanded', 'Jhansi', '2024-06-29', 'Car carrier', 2400, 840, 0),
(13, 'Nanded', 'Jhansi', '2024-07-13', 'Oil tanker', 3300, 80, 0),
(13, 'Nanded', 'Jhansi', '2024-07-13', 'Gas tanker', 3000, 150, 0),
(13, 'Nanded', 'Jhansi', '2024-07-13', 'Car carrier', 2400, 840, 0),
(13, 'Nanded', 'Sriganganagar', '2024-06-29', 'Oil tanker', 5500, 80, 0),
(13, 'Nanded', 'Sriganganagar', '2024-06-29', 'Gas tanker', 5000, 150, 6),
(13, 'Nanded', 'Sriganganagar', '2024-06-29', 'Car carrier', 4000, 840, 0),
(13, 'Nanded', 'Sriganganagar', '2024-07-13', 'Oil tanker', 5500, 80, 0),
(13, 'Nanded', 'Sriganganagar', '2024-07-13', 'Gas tanker', 5000, 150, 0),
(13, 'Nanded', 'Sriganganagar', '2024-07-13', 'Car carrier', 4000, 840, 0);

--
-- Triggers `classcargo`
--
DELIMITER $$
CREATE TRIGGER `add_classcargo` BEFORE INSERT ON `classcargo` FOR EACH ROW begin
        if datediff(new.journey_date,curdate())<0 then
            SIGNAL SQLSTATE '45000' 
            SET MESSAGE_TEXT = 'Booking Date can not be earlier than current date';
        end if;
        if new.available_cargo<=0 then 
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Number Of Cargo you are looking for are not available at momemnt';
        end if;
        if new.cargo_fare1<=0 then 
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'cargo Fare can not be less than or equal to zero';
        end if;
        
    end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_classcargo` BEFORE UPDATE ON `classcargo` FOR EACH ROW begin
            if datediff(curdate(),new.journey_date)>0 then
                SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Booking Date can not be earlier than current date';
            end if;
            if new.cargo_fare1<=0 then 
                SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'cargo Fare can not be less than or equal to zero';
            end if;
            if new.available_cargo<=0 then 
                SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Number Of Cargo you are looking for are not available at momemnt';
            end if;
        end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `passenger_details`
--

CREATE TABLE `passenger_details` (
  `pnr_number` int(11) NOT NULL,
  `passenger_name` varchar(50) NOT NULL COMMENT 'PASSENGER_NAME',
  `passenger_age` int(11) NOT NULL COMMENT 'PASSENGER_AGE',
  `passenger_gender` varchar(10) NOT NULL COMMENT 'PASSENGER GENDER',
  `cargo_type` varchar(10) NOT NULL COMMENT 'cargo COACH',
  `cargo_number` int(11) NOT NULL COMMENT 'SEAT NUMBER',
  
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `passenger_details`
--
DELIMITER $$
CREATE TRIGGER `add_passenger_details` BEFORE INSERT ON `passenger_details` FOR EACH ROW begin
            if new.passenger_gender NOT IN ('M','F','O') then
                SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Enter M:Male F:Female O:Others';
            end if;
        end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_passenger_details` BEFORE UPDATE ON `passenger_details` FOR EACH ROW begin
            if new.passenger_gender NOT IN ('M','F','O') then
                SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Enter M:Male F:Female O:Others';
            end if;
        end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `pnr_number` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `train_number` int(11) NOT NULL,
  `start_point` varchar(50) NOT NULL,
  `destination_point` varchar(50) NOT NULL,
  `journey_date` date NOT NULL,
  `cargo_fare1` int(11) NOT NULL COMMENT 'cargo_Cost',
  `class_name` varchar(50) NOT NULL,
  `number_of_Cargo` int(11) NOT NULL COMMENT 'cargo Count',
  `cargo_status` varchar(50) NOT NULL,
  `quota` varchar(50) NOT NULL DEFAULT 'GENERAL'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `reservation`
--
DELIMITER $$
CREATE TRIGGER `add_reservation` BEFORE INSERT ON `reservation` FOR EACH ROW begin
            if new.cargo_fare1<0 then
                SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'cargo Fare can not have value less than zero';
            end if;
            if new.number_of_Cargo<=0 then
                SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Number Of Cargo you are booking can not be less than zero';
            end if;
            if (select available_cargo from classcargo where train_number=new.train_number AND class_name=new.class_name AND journey_date=new.journey_date AND start_point=new.start_point AND destination_point=new.destination_point) < new.number_of_Cargo then 
                SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Number Of Cargo You are looking for are not available at the momemnt.Sorry for inconvinience';
            end if;
            if datediff(new.journey_date,curdate())<0 then
                SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Journey Date can not smaller than current date';
            end if;
                SET new.cargo_status='BOOKED';
            end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_reservation` BEFORE UPDATE ON `reservation` FOR EACH ROW begin
            if new.cargo_fare1<0 then
                SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'cargo Fare can not have value less than zero';
            end if;
            if new.number_of_Cargo<=0 then
                SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Number Of Cargo you are booking can not be less than zero';
            end if;
            if (select available_cargo from classcargo where train_number=new.train_number AND class_name=new.class_name AND journey_date=new.journey_date AND start_point=new.start_point AND destination_point=new.destination_point) < new.number_of_Cargo then 
                SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Journey Date can not smaller than current date';
            end if;
        end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_reservation_later` AFTER UPDATE ON `reservation` FOR EACH ROW begin
            if (new.cargo_status='CANCELLED' AND datediff(new.journey_date,curdate())<0 ) then
                SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'You can not cancel cargo of the journey that you have completed';
            end if;
            if (new.cargo_status='CANCELLED' AND datediff(new.journey_date,curdate())>=0 )then
                if datediff(new.journey_date,curdate())>=10 then 
                    INSERT INTO cancel_cargo values (new.pnr_number,new.cargo_fare1);
                end if;
                if (datediff(new.journey_date,curdate())<10) and (datediff(new.journey_date,curdate())>2) then 
                    INSERT INTO cancel_cargo values (new.pnr_number,0.2*new.cargo_fare1);
                end if;
                if datediff(new.journey_date,curdate())<=2 then 
                    INSERT INTO cancel_cargo values (new.pnr_number,0.5*new.cargo_fare1);
                end if;
            end if;
        end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `station_details`
--

CREATE TABLE `station_details` (
  `station_id` int(11) NOT NULL,
  `station_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `station_details`
--

INSERT INTO `station_details` (`station_id`, `station_name`) VALUES
(1, 'Nanded'),
(3, 'Aurangabad'),
(4, 'Adilabad'),
(5, 'Secunderabad'),
(6, 'Basar'),
(7, 'Mumbai'),
(8, 'Nashik'),
(10, 'Jhansi'),
(11, 'Orai'),
(12, 'Kanpur'),
(13, 'Lucknow'),
(14, 'Delhi'),
(15, 'Gurgaon'),
(16, 'Jaipur'),
(17, 'Ahmedabad'),
(18, 'Pune'),
(19, 'Panvel'),
(20, 'Latur'),
(23, 'Bhopal'),
(25, 'Agra'),
(26, 'Amritsar'),
(27, 'Chandigarh'),
(28, 'Sriganganagar'),
(29, 'Akola');

-- --------------------------------------------------------


-- --------------------------------------------------------

--
-- Table structure for table `cargo_class`
--

CREATE TABLE `cargo_class` (
  `class_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cargo_class`
--

INSERT INTO `cargo_class` (`class_name`) VALUES
('Oil tanker'),
('Gas tanker'),
('Solid Goods'),
('Car carrier'),
('Industrial goods'),
('Coal carrier');

-- --------------------------------------------------------

--
-- Table structure for table `train_details`
--

CREATE TABLE `train_details` (
  `train_number` int(11) NOT NULL,
  `train_name` varchar(50) NOT NULL,
  `start_point` varchar(50) NOT NULL,
  `arrival_time` time NOT NULL COMMENT 'Arrival_Time',
  `destination_point` varchar(50) NOT NULL,
  `destination_time` time NOT NULL,
  `arrival_day` varchar(10) DEFAULT NULL COMMENT ' Arrival_Day',
  `distance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `train_details`
--

INSERT INTO `train_details` (`train_number`, `train_name`, `start_point`, `arrival_time`, `destination_point`, `destination_time`, `arrival_day`, `distance`) VALUES
(1, 'Nandigram Express', 'Adilabad', '13:00:00', 'Mumbai', '05:35:00', 'Day 2', 800),
(2, 'Nandigram Express', 'Mumbai', '16:35:00', 'Adilabad', '09:30:00', 'Day 2', 800),
(3, 'Devagiri Express', 'Secunderabad', '13:30:00', 'Mumbai', '07:10:00', 'Day 2', 880),
(4, 'Devagiri Express', 'Mumbai', '21:30:00', 'Secunderabad', '14:45:00', 'Day 2', 880),
(5, 'Jhansi - Lucknow Intercity', 'Jhansi', '06:15:00', 'Lucknow', '12:00:00', 'Day 1', 300),
(6, 'Ahmedabad Express', 'Delhi', '19:55:00', 'Ahmedabad', '09:30:00', 'Day 2', 930),
(7, 'Tapovan Express', 'Nanded', '10:05:00', 'Mumbai', '21:55:00', 'Day 1', 600),
(8, 'Tapovan Express', 'Mumbai', '06:15:00', 'Nanded', '18:00:00', 'Day 1', 600),
(9, 'Panvel Express', 'Nanded', '17:35:00', 'Panvel', '09:00:00', 'Day 2', 690),
(10, 'Sachkhand Express', 'Nanded', '09:30:00', 'Amritsar', '20:30:00', 'Day 2', 2120),
(11, 'Sachkhand Express', 'Amritsar', '04:25:00', 'Nanded', '14:25:00', 'Day 2', 2120),
(13, 'Nanded - Sriganganagar Express', 'Nanded', '11:00:00', 'Sriganganagar', '20:15:00', 'Day 2', 2000);

--
-- Triggers `train_details`
--
DELIMITER $$
CREATE TRIGGER `add_train` BEFORE INSERT ON `train_details` FOR EACH ROW begin
            if (new.destination_time<new.arrival_time AND new.arrival_day='Day 1') then
                SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Improper Timings';
            end if;
            if (new.destination_point=new.start_point) then
                SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Same Starting & Destination Points not allowed';
            end if;
        end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_train` BEFORE UPDATE ON `train_details` FOR EACH ROW begin
          if (new.destination_time<new.arrival_time AND new.arrival_day='Day 1') then
              SIGNAL SQLSTATE '45000'
              SET MESSAGE_TEXT = 'Improper Timings';
          end if;
          end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `train_schedule`
--

CREATE TABLE `train_schedule` (
  `schedule_id` int(11) NOT NULL,
  `train_number` int(11) NOT NULL,
  `station_name` varchar(50) NOT NULL,
  `arrival_time` time NOT NULL,
  `departure_time` time NOT NULL DEFAULT '00:00:00',
  `distance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `train_schedule`
--

INSERT INTO `train_schedule` (`schedule_id`, `train_number`, `station_name`, `arrival_time`, `departure_time`, `distance`) VALUES
(1, 1, 'Adilabad', '13:00:00', '13:00:00', 0),
(2, 1, 'Nanded', '16:40:00', '16:45:00', 200),
(3, 1, 'Aurangabad', '21:25:00', '21:30:00', 430),
(4, 1, 'Mumbai', '05:35:00', '05:35:00', 800),
(5, 2, 'Mumbai', '16:35:00', '16:35:00', 0),
(6, 2, 'Aurangabad', '23:50:00', '23:55:00', 370),
(7, 2, 'Nanded', '05:00:00', '05:05:00', 600),
(8, 2, 'Adilabad', '09:30:00', '09:30:00', 800),
(9, 3, 'Secunderabad', '13:30:00', '13:30:00', 0),
(10, 3, 'Basar', '16:29:00', '16:30:00', 190),
(11, 3, 'Nanded', '18:45:00', '18:50:00', 270),
(12, 3, 'Aurangabad', '23:20:00', '23:25:00', 510),
(13, 3, 'Nashik', '02:55:00', '03:00:00', 690),
(14, 3, 'Mumbai', '07:10:00', '07:10:00', 880),
(15, 4, 'Mumbai', '21:30:00', '21:30:00', 0),
(16, 4, 'Nashik', '01:03:00', '01:05:00', 190),
(17, 4, 'Aurangabad', '04:15:00', '04:20:00', 370),
(18, 4, 'Nanded', '08:50:00', '08:55:00', 610),
(19, 4, 'Basar', '10:30:00', '10:32:00', 670),
(20, 4, 'Secunderabad', '14:45:00', '14:45:00', 880),
(21, 5, 'Jhansi', '06:15:00', '06:15:00', 0),
(22, 5, 'Orai', '07:45:00', '07:48:00', 115),
(23, 5, 'Kanpur', '10:25:00', '10:30:00', 220),
(24, 5, 'Lucknow', '12:00:00', '12:00:00', 300),
(25, 6, 'Delhi', '19:55:00', '19:55:00', 0),
(26, 6, 'Gurgaon', '20:40:00', '20:43:00', 32),
(27, 6, 'Jaipur', '00:05:00', '00:10:00', 340),
(28, 6, 'Ahmedabad', '09:30:00', '09:30:00', 930),
(29, 7, 'Nanded', '10:05:00', '10:05:00', 0),
(30, 7, 'Aurangabad', '14:30:00', '14:35:00', 240),
(31, 7, 'Nashik', '18:02:00', '18:05:00', 420),
(32, 7, 'Mumbai', '21:55:00', '21:55:00', 600),
(33, 8, 'Mumbai', '06:15:00', '06:15:00', 0),
(34, 8, 'Nashik', '09:45:00', '09:50:00', 190),
(35, 8, 'Aurangabad', '13:05:00', '13:10:00', 370),
(36, 8, 'Nanded', '18:00:00', '18:00:00', 600),
(37, 9, 'Nanded', '17:35:00', '17:35:00', 0),
(38, 9, 'Latur', '22:50:00', '22:55:00', 220),
(39, 9, 'Pune', '06:15:00', '06:20:00', 570),
(40, 9, 'Panvel', '09:00:00', '09:00:00', 690),
(41, 10, 'Nanded', '09:30:00', '09:30:00', 0),
(42, 10, 'Aurangabad', '13:25:00', '13:30:00', 240),
(43, 10, 'Bhopal', '00:40:00', '00:50:00', 930),
(44, 10, 'Jhansi', '04:27:00', '04:35:00', 1220),
(45, 10, 'Delhi', '11:25:00', '11:40:00', 1630),
(46, 10, 'Chandigarh', '15:35:00', '15:45:00', 1875),
(47, 10, 'Amritsar', '20:30:00', '20:30:00', 2120),
(48, 11, 'Amritsar', '04:25:00', '04:25:00', 0),
(49, 11, 'Chandigarh', '08:43:00', '08:55:00', 250),
(50, 11, 'Delhi', '12:45:00', '13:00:00', 490),
(51, 11, 'Jhansi', '18:37:00', '18:45:00', 900),
(52, 11, 'Bhopal', '22:25:00', '22:30:00', 1190),
(53, 11, 'Aurangabad', '09:40:00', '09:45:00', 1890),
(54, 11, 'Nanded', '14:25:00', '14:25:00', 2120),
(61, 13, 'Nanded', '11:00:00', '11:00:00', 0),
(62, 13, 'Akola', '15:30:00', '15:40:00', 240),
(63, 13, 'Bhopal', '00:20:00', '00:30:00', 770),
(64, 13, 'Jhansi', '04:00:00', '04:10:00', 1060),
(65, 13, 'Delhi', '10:10:00', '10:20:00', 1470),
(66, 13, 'Sriganganagar', '20:15:00', '20:15:00', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `user_id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL COMMENT 'First_Name',
  `lname` varchar(50) NOT NULL COMMENT 'Last_Name',
  `emailid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile_number` varchar(10) NOT NULL,
  `gender` char(1) NOT NULL,
  `dob` date NOT NULL COMMENT 'Date Of Birth',
  `code` mediumint(50) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `fname`, `lname`, `emailid`, `password`, `mobile_number`, `gender`, `dob`, `code`, `status`) VALUES
(44, 'sushant', 'kumar', 'sushant12@gmail.com', 'sushant007', '1234567890', 'M', '2000-05-17', 0, 'verified');

--
-- Triggers `user_details`
--
DELIMITER $$
CREATE TRIGGER `add_user_details` BEFORE INSERT ON `user_details` FOR EACH ROW begin
        if (year(curdate())-year(new.dob))<18 then 
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Minimum age bar of 18 years.';
            end if;
    end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_update_on_user` BEFORE UPDATE ON `user_details` FOR EACH ROW begin
            if (year(curdate())-year(new.dob))<18 then 
                SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Minimum age bar of 18 years.';
            end if;
            end
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_details`
--
ALTER TABLE `admin_details`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `unique_admin_username` (`username`);

--
-- Indexes for table `cancel_cargo`
--
ALTER TABLE `cancel_cargo`
  ADD PRIMARY KEY (`pnr_number`);

--
-- Indexes for table `classcargo`
--
ALTER TABLE `classcargo`
  ADD PRIMARY KEY (`train_number`,`start_point`,`destination_point`,`journey_date`,`class_name`),
  ADD KEY `class_name` (`class_name`),
  ADD KEY `start_point` (`start_point`,`destination_point`),
  ADD KEY `destination_point` (`destination_point`);

--
-- Indexes for table `passenger_details`
--
ALTER TABLE `passenger_details`
  ADD KEY `passenger_details_pnr_number` (`pnr_number`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`pnr_number`),
  ADD KEY `user_id_reservation` (`user_id`),
  ADD KEY `journey_date_train_number_class` (`train_number`,`journey_date`,`class_name`),
  ADD KEY `class_name` (`class_name`),
  ADD KEY `start_point` (`start_point`,`destination_point`),
  ADD KEY `destination_point` (`destination_point`);

--
-- Indexes for table `station_details`
--
ALTER TABLE `station_details`
  ADD PRIMARY KEY (`station_name`),
  ADD KEY `station_id` (`station_id`);

--

-- Indexes for table `cargo_class`
--
ALTER TABLE `cargo_class`
  ADD PRIMARY KEY (`class_name`) COMMENT 'cargo_Class';

--
-- Indexes for table `train_details`
--
ALTER TABLE `train_details`
  ADD PRIMARY KEY (`train_number`),
  ADD KEY `start_point` (`start_point`),
  ADD KEY `destination_point` (`destination_point`);

--
-- Indexes for table `train_schedule`
--
ALTER TABLE `train_schedule`
  ADD PRIMARY KEY (`schedule_id`),
  ADD KEY `train_number` (`train_number`),
  ADD KEY `station_name` (`station_name`),
  ADD KEY `schedule_id` (`schedule_id`),
  ADD KEY `distance` (`distance`),
  ADD KEY `schedule_id2` (`schedule_id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `unique_user_mobile_number` (`mobile_number`),
  ADD UNIQUE KEY `unique_user_emailid` (`emailid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_details`
--
ALTER TABLE `admin_details`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Admin_ID', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `pnr_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `station_details`
--
ALTER TABLE `station_details`
  MODIFY `station_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `train_details`
--
ALTER TABLE `train_details`
  MODIFY `train_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `train_schedule`
--
ALTER TABLE `train_schedule`
  MODIFY `schedule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cancel_cargo`
--
ALTER TABLE `cancel_cargo`
  ADD CONSTRAINT `cancel_cargo_foreign_key_1` FOREIGN KEY (`pnr_number`) REFERENCES `reservation` (`pnr_number`);

--
-- Constraints for table `classcargo`
--
ALTER TABLE `classcargo`
  ADD CONSTRAINT `classcargo_foreign_key_1` FOREIGN KEY (`train_number`) REFERENCES `train_details` (`train_number`),
  ADD CONSTRAINT `classcargo_foreign_key_2` FOREIGN KEY (`start_point`) REFERENCES `station_details` (`station_name`),
  ADD CONSTRAINT `classcargo_foreign_key_3` FOREIGN KEY (`destination_point`) REFERENCES `station_details` (`station_name`),
  ADD CONSTRAINT `classcargo_foreign_key_4` FOREIGN KEY (`class_name`) REFERENCES `cargo_class` (`class_name`);

--
-- Constraints for table `passenger_details`
--
ALTER TABLE `passenger_details`
  ADD CONSTRAINT `passenger_details_foreign_key_1` FOREIGN KEY (`pnr_number`) REFERENCES `reservation` (`pnr_number`);

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_foreign_key_1` FOREIGN KEY (`train_number`) REFERENCES `train_details` (`train_number`),
  ADD CONSTRAINT `reservation_foreign_key_2` FOREIGN KEY (`start_point`) REFERENCES `station_details` (`station_name`),
  ADD CONSTRAINT `reservation_foreign_key_3` FOREIGN KEY (`destination_point`) REFERENCES `station_details` (`station_name`),
  ADD CONSTRAINT `reservation_foreign_key_4` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`);


-- Constraints for table `train_details`
--
ALTER TABLE `train_details`
  ADD CONSTRAINT `train_details_foreign_key_1` FOREIGN KEY (`start_point`) REFERENCES `station_details` (`station_name`),
  ADD CONSTRAINT `train_details_foreign_key_2` FOREIGN KEY (`destination_point`) REFERENCES `station_details` (`station_name`);

--
-- Constraints for table `train_schedule`
--
ALTER TABLE `train_schedule`
  ADD CONSTRAINT `train_schedule_foreign_key_1` FOREIGN KEY (`station_name`) REFERENCES `station_details` (`station_name`),
  ADD CONSTRAINT `train_schedule_foreign_key_2` FOREIGN KEY (`train_number`) REFERENCES `train_details` (`train_number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
