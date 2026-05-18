-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2026 at 03:56 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lakbay_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`payload`)),
  `ts` varchar(50) DEFAULT NULL,
  `customerName` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `customerEmail` varchar(255) DEFAULT NULL,
  `carName` varchar(255) DEFAULT NULL,
  `totalCost` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `dropoffLoc` varchar(255) DEFAULT NULL,
  `driver` varchar(255) DEFAULT NULL,
  `pickupDate` varchar(50) DEFAULT NULL,
  `dropoffDate` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `payload`, `ts`, `customerName`, `username`, `customerEmail`, `carName`, `totalCost`, `location`, `dropoffLoc`, `driver`, `pickupDate`, `dropoffDate`, `status`) VALUES
(1, '{\"car\":{\"id\":2,\"type\":\"Fullsize SUV\",\"name\":\"(H) Toyota Fortuner or Similar\",\"img\":\"https://images.unsplash.com/photo-1533473359331-0135ef1b58bf?q=80&w=2070&auto=format&fit=crop\",\"pax\":7,\"luggage\":5,\"trans\":\"AT\",\"fuel\":\"DIESEL\",\"price\":3500,\"link\":\"https://toyota.com.ph\"},\"pickupDate\":\"2026-04-15\",\"dropoffDate\":\"2026-04-15\",\"driver\":\"No Driver\",\"location\":\"Tanauan\",\"dropoffLoc\":\"Palo\",\"totalCost\":3970,\"customerName\":\"Kirk Daniel Calvin\",\"customerEmail\":\"BR3AD123@gmail.com\",\"specialInstructions\":\"\",\"username\":\"BR3AD\"}', 'Apr 14, 2026, 11:18 AM', 'Kirk Daniel Calvin', 'BR3AD', 'BR3AD123@gmail.com', '(H) Toyota Fortuner or Similar', '3970', 'Tanauan', 'Palo', 'No Driver', '2026-04-15', '2026-04-15', 'Pending'),
(2, '{\"car\":{\"id\":3,\"type\":\"Midsize SUV\",\"name\":\"(G) Honda BR-V or similar\",\"img\":\"https://images.unsplash.com/photo-1563720223185-11003d516935?q=80&w=1932&auto=format&fit=crop\",\"pax\":4,\"luggage\":4,\"trans\":\"AT\",\"fuel\":\"DIESEL\",\"price\":2800,\"link\":\"https://honda.com.ph\"},\"pickupDate\":\"2026-05-19\",\"pickupTime\":\"10:00\",\"dropoffDate\":\"2026-05-24\",\"dropoffTime\":\"21:00\",\"driver\":\"No Driver\",\"location\":\"Tanauan\",\"dropoffLoc\":\"Sto. Niño Parish Church\",\"totalCost\":15730,\"customerName\":\"Kirk Daniel Calvin\",\"customerEmail\":\"kirkcalvin04@gmail.com\",\"specialInstructions\":\"\",\"username\":\"BR3AD\"}', 'Apr 14, 2026, 11:53 AM', 'Kirk Daniel Calvin', 'BR3AD', 'kirkcalvin04@gmail.com', '(G) Honda BR-V or similar', '15730', 'Tanauan', 'Sto. Niño Parish Church', 'No Driver', '2026-05-19', '2026-05-24', 'Pending'),
(3, '{\"car\":{\"id\":4,\"type\":\"Passenger Van\",\"name\":\"(V) Toyota Hiace or similar\",\"img\":\"http://localhost:5000/uploads/1776150864325.jpg\",\"pax\":12,\"luggage\":6,\"trans\":\"MT\",\"fuel\":\"DIESEL\",\"price\":4200,\"link\":\"https://toyota.com.ph/Avanza?utm_source=google&utm_medium=search&utm_campaign=inquire&utm_term=mpvs&gad_source=1&gad_campaignid=23466678376&gbraid=0AAAAAChc3g_RxZrh3AP2vKofpTVGev8IW&gclid=Cj0KCQjwy_fOBhC6ARIsAHKFB78rzz7_fsKxXNUsxXOHe1CRgEIYRDOmJfd0_PqrxZi\"},\"pickupDate\":\"2026-04-18\",\"pickupTime\":\"07:00\",\"dropoffDate\":\"2026-04-25\",\"dropoffTime\":\"07:00\",\"driver\":\"With Driver\",\"location\":\"Tanauan\",\"dropoffLoc\":\"SOHOTON CAVES & NATURAL BRIDGE PARK\",\"totalCost\":32978,\"customerName\":\"Aljon Abines\",\"customerEmail\":\"aljonabines123@gmail.com\",\"specialInstructions\":\"\",\"username\":\"Abines\"}', 'Apr 15, 2026, 11:40 AM', 'Aljon Abines', 'Abines', 'aljonabines123@gmail.com', '(V) Toyota Hiace or similar', '32978', 'Tanauan', 'SOHOTON CAVES & NATURAL BRIDGE PARK', 'With Driver', '2026-04-18', '2026-04-25', 'Pending'),
(4, '{\"car\":{\"id\":1,\"type\":\"Economy Sedan\",\"name\":\"(O) Honda City or Similar\",\"img\":\"http://localhost:5000/uploads/1776150805164.jpg\",\"pax\":5,\"luggage\":4,\"trans\":\"AT\",\"fuel\":\"GASOLINE\",\"price\":1800,\"link\":\"https://www.hondaphil.com/\"},\"pickupDate\":\"2026-04-30\",\"pickupTime\":\"08:00\",\"dropoffDate\":\"2026-05-10\",\"dropoffTime\":\"17:00\",\"driver\":\"With Driver\",\"location\":\"Tanauan\",\"dropoffLoc\":\"San Juanico Bridge\",\"totalCost\":20210,\"customerName\":\"Aljon Abines\",\"customerEmail\":\"aljonabines23@gmail.com\",\"specialInstructions\":\"\",\"username\":\"Abines\"}', 'Apr 27, 2026, 12:30 PM', 'Aljon Abines', 'Abines', 'aljonabines23@gmail.com', '(O) Honda City or Similar', '20210', 'Tanauan', 'San Juanico Bridge', 'With Driver', '2026-04-30', '2026-05-10', 'Pending'),
(5, '{\"car\":{\"id\":4,\"type\":\"Passenger Van\",\"name\":\"(V) Toyota Hiace or similar\",\"img\":\"http://localhost:5000/uploads/1776150864325.jpg\",\"pax\":12,\"luggage\":6,\"trans\":\"MT\",\"fuel\":\"DIESEL\",\"price\":4200,\"link\":\"https://toyota.com.ph/Avanza?utm_source=google&utm_medium=search&utm_campaign=inquire&utm_term=mpvs&gad_source=1&gad_campaignid=23466678376&gbraid=0AAAAAChc3g_RxZrh3AP2vKofpTVGev8IW&gclid=Cj0KCQjwy_fOBhC6ARIsAHKFB78rzz7_fsKxXNUsxXOHe1CRgEIYRDOmJfd0_PqrxZi\"},\"pickupDate\":\"2026-05-05\",\"pickupTime\":\"07:00\",\"dropoffDate\":\"2026-05-10\",\"dropoffTime\":\"07:00\",\"driver\":\"No Driver\",\"location\":\"Brgy: TabonTabon\",\"dropoffLoc\":\"Sto. Niño Parish Church\",\"totalCost\":23570,\"customerName\":\"Antoneth Perez\",\"customerEmail\":\"Antonethperez123@gmail.com\",\"specialInstructions\":\"\",\"username\":\"Perez\"}', 'Apr 30, 2026, 11:48 AM', 'Antoneth Perez', 'Perez', 'Antonethperez123@gmail.com', '(V) Toyota Hiace or similar', '23570', 'Brgy: TabonTabon', 'Sto. Niño Parish Church', 'No Driver', '2026-05-05', '2026-05-10', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `pax` int(11) DEFAULT NULL,
  `luggage` int(11) DEFAULT NULL,
  `trans` varchar(20) DEFAULT NULL,
  `fuel` varchar(20) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `type`, `name`, `img`, `pax`, `luggage`, `trans`, `fuel`, `price`, `link`) VALUES
(1, 'Economy Sedan', '(O) Honda City or Similar', 'http://localhost:5000/uploads/1776150805164.jpg', 5, 4, 'AT', 'GASOLINE', 1800, 'https://www.hondaphil.com/'),
(2, 'Fullsize SUV', '(H) Toyota Fortuner or Similar', 'http://localhost:5000/uploads/1776150818464.jpg', 7, 5, 'AT', 'DIESEL', 3500, 'https://toyota.com.ph/Avanza?utm_source=google&utm_medium=search&utm_campaign=inquire&utm_term=mpvs&gad_source=1&gad_campaignid=23466678376&gbraid=0AAAAAChc3g_RxZrh3AP2vKofpTVGev8IW&gclid=Cj0KCQjwy_fOBhC6ARIsAHKFB78rzz7_fsKxXNUsxXOHe1CRgEIYRDOmJfd0_PqrxZi'),
(3, 'Midsize SUV', '(G) Honda BR-V or similar', 'http://localhost:5000/uploads/1776150835209.jpg', 4, 4, 'AT', 'DIESEL', 2800, 'https://www.hondaphil.com/'),
(4, 'Passenger Van', '(V) Toyota Hiace or similar', 'http://localhost:5000/uploads/1776150864325.jpg', 12, 6, 'MT', 'DIESEL', 4200, 'https://toyota.com.ph/Avanza?utm_source=google&utm_medium=search&utm_campaign=inquire&utm_term=mpvs&gad_source=1&gad_campaignid=23466678376&gbraid=0AAAAAChc3g_RxZrh3AP2vKofpTVGev8IW&gclid=Cj0KCQjwy_fOBhC6ARIsAHKFB78rzz7_fsKxXNUsxXOHe1CRgEIYRDOmJfd0_PqrxZi'),
(5, 'Midsize SUV', 'Suzuki', 'https://images.unsplash.com/photo-1549317661-bd32c8ce0be2?q=80&w=2070&auto=format&fit=crop', 4, 3, 'MT', 'DIESEL', 1200, ''),
(6, 'Fullsize SUV', 'aljon', 'http://localhost:5000/uploads/1777276498585.jpg', 4, 3, 'AT', 'ELECTRIC', 1300, '');

-- --------------------------------------------------------

--
-- Table structure for table `inquiries`
--

CREATE TABLE `inquiries` (
  `id` int(11) NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`payload`)),
  `ts` varchar(50) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inquiries`
--

INSERT INTO `inquiries` (`id`, `payload`, `ts`, `target`, `type`, `name`, `email`, `message`, `rating`) VALUES
(1, '{\"target\":\"LAKBAY Web Portal\",\"type\":\"Platform Feedback\",\"name\":\"Aljon Abines\",\"email\":\"aljonabines123@gmail.com\",\"message\":\"Good Service and we enjoy view\",\"rating\":5}', 'Apr 16, 2026, 8:56 AM', 'LAKBAY Web Portal', 'Platform Feedback', 'Aljon Abines', 'aljonabines123@gmail.com', 'Good Service and we enjoy view', 5),
(2, '{\"target\":\"San Juanico Bridge\",\"type\":\"Spot Inquiry\",\"name\":\"Aljon Abines\",\"email\":\"aljonabines123@gmail.com\",\"message\":\"Not right on time\",\"rating\":3}', 'Apr 27, 2026, 12:31 PM', 'San Juanico Bridge', 'Spot Inquiry', 'Aljon Abines', 'aljonabines123@gmail.com', 'Not right on time', 3),
(3, '{\"target\":\"San Juanico Bridge\",\"type\":\"Spot Inquiry\",\"name\":\"Aljon Abines\",\"email\":\"aljonabines123@gmail.com\",\"message\":\"Beautiful Place\",\"rating\":5}', 'Apr 27, 2026, 12:32 PM', 'San Juanico Bridge', 'Spot Inquiry', 'Aljon Abines', 'aljonabines123@gmail.com', 'Beautiful Place', 5),
(4, '{\"target\":\"Car Rental Portal\",\"type\":\"Service Feedback\",\"name\":\"Aljon Abines\",\"email\":\"aljonabines123@gmail.com\",\"message\":\"Not on time late in 1hours\",\"rating\":2}', 'Apr 27, 2026, 1:06 PM', 'Car Rental Portal', 'Service Feedback', 'Aljon Abines', 'aljonabines123@gmail.com', 'Not on time late in 1hours', 2);

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `ts` varchar(50) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `ts`, `user`, `username`, `role`, `action`, `ip`, `status`) VALUES
(1, 'Apr 13, 2026, 1:04 PM', 'Administrator', 'admin', 'Admin', 'Login', '192.168.1.1', 'Success'),
(2, 'Apr 14, 2026, 10:58 AM', 'Administrator', 'admin', 'Admin', 'Logout', '192.168.1.1', 'Success'),
(3, 'Apr 14, 2026, 11:00 AM', 'Kirk Daniel Calvin', 'BR3AD', 'Visitor', 'Login', '192.168.1.1', 'Success'),
(4, 'Apr 14, 2026, 11:01 AM', 'Administrator', 'admin', 'Admin', 'Login', '192.168.1.1', 'Success'),
(5, 'Apr 14, 2026, 11:18 AM', 'Kirk Daniel Calvin', 'BR3AD', 'Visitor', 'Placed Reservation', '192.168.1.1', 'Success'),
(6, 'Apr 14, 2026, 11:53 AM', 'Kirk Daniel Calvin', 'BR3AD', 'Visitor', 'Placed Reservation', '192.168.1.1', 'Success'),
(7, 'Apr 14, 2026, 2:24 PM', 'Administrator', 'admin', 'Admin', 'Updated Tourist Spot', '192.168.1.1', 'Success'),
(8, 'Apr 14, 2026, 2:24 PM', 'Administrator', 'admin', 'Admin', 'Updated Tourist Spot', '192.168.1.1', 'Success'),
(9, 'Apr 14, 2026, 2:25 PM', 'Administrator', 'admin', 'Admin', 'Updated Tourist Spot', '192.168.1.1', 'Success'),
(10, 'Apr 14, 2026, 2:25 PM', 'Administrator', 'admin', 'Admin', 'Updated Tourist Spot', '192.168.1.1', 'Success'),
(11, 'Apr 14, 2026, 2:26 PM', 'Administrator', 'admin', 'Admin', 'Updated Tourist Spot', '192.168.1.1', 'Success'),
(12, 'Apr 14, 2026, 2:32 PM', 'Administrator', 'admin', 'Admin', 'Updated Tourist Spot', '192.168.1.1', 'Success'),
(13, 'Apr 14, 2026, 2:56 PM', 'Administrator', 'admin', 'Admin', 'Updated Tourist Spot', '192.168.1.1', 'Success'),
(14, 'Apr 14, 2026, 2:58 PM', 'Administrator', 'admin', 'Admin', 'Updated Tourist Spot', '192.168.1.1', 'Success'),
(15, 'Apr 14, 2026, 2:58 PM', 'Administrator', 'admin', 'Admin', 'Updated Tourist Spot', '192.168.1.1', 'Success'),
(16, 'Apr 14, 2026, 2:58 PM', 'Administrator', 'admin', 'Admin', 'Updated Tourist Spot', '192.168.1.1', 'Success'),
(17, 'Apr 14, 2026, 2:59 PM', 'Administrator', 'admin', 'Admin', 'Updated Tourist Spot', '192.168.1.1', 'Success'),
(18, 'Apr 14, 2026, 2:59 PM', 'Administrator', 'admin', 'Admin', 'Updated Tourist Spot', '192.168.1.1', 'Success'),
(19, 'Apr 14, 2026, 2:59 PM', 'Administrator', 'admin', 'Admin', 'Updated Tourist Spot', '192.168.1.1', 'Success'),
(20, 'Apr 14, 2026, 2:59 PM', 'Administrator', 'admin', 'Admin', 'Updated Tourist Spot', '192.168.1.1', 'Success'),
(21, 'Apr 14, 2026, 3:06 PM', 'Administrator', 'admin', 'Admin', 'Updated Rental Vehicle', '192.168.1.1', 'Success'),
(22, 'Apr 14, 2026, 3:06 PM', 'Administrator', 'admin', 'Admin', 'Updated Rental Vehicle', '192.168.1.1', 'Success'),
(23, 'Apr 14, 2026, 3:07 PM', 'Administrator', 'admin', 'Admin', 'Updated Rental Vehicle', '192.168.1.1', 'Success'),
(24, 'Apr 14, 2026, 3:07 PM', 'Administrator', 'admin', 'Admin', 'Updated Rental Vehicle', '192.168.1.1', 'Success'),
(25, 'Apr 14, 2026, 3:13 PM', 'Administrator', 'admin', 'Admin', 'Updated Rental Vehicle', '192.168.1.1', 'Success'),
(26, 'Apr 14, 2026, 3:13 PM', 'Administrator', 'admin', 'Admin', 'Updated Rental Vehicle', '192.168.1.1', 'Success'),
(27, 'Apr 14, 2026, 3:13 PM', 'Administrator', 'admin', 'Admin', 'Updated Rental Vehicle', '192.168.1.1', 'Success'),
(28, 'Apr 14, 2026, 3:14 PM', 'Administrator', 'admin', 'Admin', 'Updated Rental Vehicle', '192.168.1.1', 'Success'),
(29, 'Apr 14, 2026, 3:14 PM', 'Administrator', 'admin', 'Admin', 'Logout', '192.168.1.1', 'Success'),
(30, 'Apr 14, 2026, 3:14 PM', 'Administrator', 'admin', 'Admin', 'Login', '192.168.1.1', 'Success'),
(31, 'Apr 14, 2026, 3:48 PM', 'Administrator', 'admin', 'Admin', 'Updated Tourist Spot', '192.168.1.1', 'Success'),
(32, 'Apr 14, 2026, 3:49 PM', 'Administrator', 'admin', 'Admin', 'Updated Tourist Spot', '192.168.1.1', 'Success'),
(33, 'Apr 14, 2026, 3:57 PM', 'Administrator', 'admin', 'Admin', 'Updated Tourist Spot', '192.168.1.1', 'Success'),
(34, 'Apr 14, 2026, 3:57 PM', 'Administrator', 'admin', 'Admin', 'Updated Tourist Spot', '192.168.1.1', 'Success'),
(35, 'Apr 14, 2026, 3:57 PM', 'Administrator', 'admin', 'Admin', 'Updated Tourist Spot', '192.168.1.1', 'Success'),
(36, 'Apr 14, 2026, 3:57 PM', 'Administrator', 'admin', 'Admin', 'Updated Tourist Spot', '192.168.1.1', 'Success'),
(37, 'Apr 14, 2026, 3:58 PM', 'Administrator', 'admin', 'Admin', 'Updated Tourist Spot', '192.168.1.1', 'Success'),
(38, 'Apr 14, 2026, 3:58 PM', 'Administrator', 'admin', 'Admin', 'Updated Tourist Spot', '192.168.1.1', 'Success'),
(39, 'Apr 14, 2026, 4:01 PM', 'Administrator', 'admin', 'Admin', 'Updated Rental Vehicle', '192.168.1.1', 'Success'),
(40, 'Apr 14, 2026, 4:01 PM', 'Administrator', 'admin', 'Admin', 'Updated Rental Vehicle', '192.168.1.1', 'Success'),
(41, 'Apr 14, 2026, 4:02 PM', 'Administrator', 'admin', 'Admin', 'Updated Rental Vehicle', '192.168.1.1', 'Success'),
(42, 'Apr 14, 2026, 4:02 PM', 'Administrator', 'admin', 'Admin', 'Updated Rental Vehicle', '192.168.1.1', 'Success'),
(43, 'Apr 14, 2026, 4:32 PM', 'Administrator', 'admin', 'Admin', 'Logout', '192.168.1.1', 'Success'),
(44, 'Apr 14, 2026, 4:34 PM', 'Administrator', 'admin', 'Admin', 'Login', '192.168.1.1', 'Success'),
(45, 'Apr 15, 2026, 11:35 AM', 'Administrator', 'admin', 'Admin', 'Logout', '192.168.1.1', 'Success'),
(46, 'Apr 15, 2026, 11:36 AM', 'Aljon', 'Abines', 'Visitor', 'Login', '192.168.1.1', 'Success'),
(47, 'Apr 15, 2026, 11:40 AM', 'Aljon', 'Abines', 'Visitor', 'Placed Reservation', '192.168.1.1', 'Success'),
(48, 'Apr 16, 2026, 3:08 PM', 'Aljon', 'Abines', 'Visitor', 'Logout', '192.168.1.1', 'Success'),
(49, 'Apr 16, 2026, 3:09 PM', 'Administrator', 'admin', 'Admin', 'Login', '192.168.1.1', 'Success'),
(50, 'Apr 27, 2026, 12:24 PM', 'Administrator', 'admin', 'Admin', 'Logout', '192.168.1.1', 'Success'),
(51, 'Apr 27, 2026, 12:24 PM', 'Administrator', 'admin', 'Admin', 'Logout', '192.168.1.1', 'Success'),
(52, 'Apr 27, 2026, 12:24 PM', 'Administrator', 'admin', 'Admin', 'Logout', '192.168.1.1', 'Success'),
(53, 'Apr 27, 2026, 12:25 PM', 'Aljon', 'Abines', 'Visitor', 'Login', '192.168.1.1', 'Success'),
(54, 'Apr 27, 2026, 12:28 PM', 'Aljon', 'Abines', 'Visitor', 'Logout', '192.168.1.1', 'Success'),
(55, 'Apr 27, 2026, 12:28 PM', 'Administrator', 'admin', 'Admin', 'Login', '192.168.1.1', 'Success'),
(56, 'Apr 27, 2026, 12:28 PM', 'Administrator', 'admin', 'Admin', 'Logout', '192.168.1.1', 'Success'),
(57, 'Apr 27, 2026, 12:28 PM', 'Aljon', 'Abines', 'Visitor', 'Login', '192.168.1.1', 'Success'),
(58, 'Apr 27, 2026, 12:30 PM', 'Aljon', 'Abines', 'Visitor', 'Placed Reservation', '192.168.1.1', 'Success'),
(59, 'Apr 27, 2026, 12:33 PM', 'Aljon', 'Abines', 'Visitor', 'Logout', '192.168.1.1', 'Success'),
(60, 'Apr 27, 2026, 12:33 PM', 'Administrator', 'admin', 'Admin', 'Login', '192.168.1.1', 'Success'),
(61, 'Apr 27, 2026, 1:00 PM', 'Administrator', 'admin', 'Admin', 'Logout', '192.168.1.1', 'Success'),
(62, 'Apr 27, 2026, 1:00 PM', 'Aljon', 'Abines', 'Visitor', 'Login', '192.168.1.1', 'Success'),
(63, 'Apr 27, 2026, 1:04 PM', 'Aljon', 'Abines', 'Visitor', 'Logout', '192.168.1.1', 'Success'),
(64, 'Apr 27, 2026, 1:05 PM', 'Aljon', 'Abines', 'Visitor', 'Login', '192.168.1.1', 'Success'),
(65, 'Apr 27, 2026, 1:06 PM', 'Aljon', 'Abines', 'Visitor', 'Logout', '192.168.1.1', 'Success'),
(66, 'Apr 27, 2026, 1:06 PM', 'Administrator', 'admin', 'Admin', 'Login', '192.168.1.1', 'Success'),
(67, 'Apr 27, 2026, 3:45 PM', 'Administrator', 'admin', 'Admin', 'Logout', '192.168.1.1', 'Success'),
(68, 'Apr 27, 2026, 3:45 PM', 'Aljon', 'Abines', 'Visitor', 'Login', '192.168.1.1', 'Success'),
(69, 'Apr 27, 2026, 3:46 PM', 'Aljon', 'Abines', 'Visitor', 'Logout', '192.168.1.1', 'Success'),
(70, 'Apr 27, 2026, 3:47 PM', 'Aljon Abines', 'Abines123', 'Visitor', 'Login', '192.168.1.1', 'Success'),
(71, 'Apr 27, 2026, 3:48 PM', 'Aljon Abines', 'Abines123', 'Visitor', 'Logout', '192.168.1.1', 'Success'),
(72, 'Apr 27, 2026, 3:49 PM', 'Aljon Abines', 'Abines345', 'Visitor', 'Login', '192.168.1.1', 'Success'),
(73, 'Apr 27, 2026, 3:50 PM', 'Aljon Abines', 'Abines345', 'Visitor', 'Logout', '192.168.1.1', 'Success'),
(74, 'Apr 27, 2026, 3:50 PM', 'Administrator', 'admin', 'Admin', 'Login', '192.168.1.1', 'Success'),
(75, 'Apr 27, 2026, 3:51 PM', 'Administrator', 'admin', 'Admin', 'Added new Rental Vehicle', '192.168.1.1', 'Success'),
(76, 'Apr 27, 2026, 3:53 PM', 'Administrator', 'admin', 'Admin', 'Added new Rental Vehicle', '192.168.1.1', 'Success'),
(77, 'Apr 27, 2026, 3:54 PM', 'Administrator', 'admin', 'Admin', 'Updated Rental Vehicle', '192.168.1.1', 'Success'),
(78, 'Apr 29, 2026, 11:36 AM', 'Administrator', 'admin', 'Admin', 'Login', '192.168.1.1', 'Success'),
(79, 'Apr 29, 2026, 11:36 AM', 'Administrator', 'admin', 'Admin', 'Login', '192.168.1.1', 'Success'),
(80, 'Apr 29, 2026, 1:54 PM', 'Administrator', 'admin', 'Admin', 'Logout', '192.168.1.1', 'Success'),
(81, 'Apr 29, 2026, 1:54 PM', 'Administrator', 'admin', 'Admin', 'Login', '192.168.1.1', 'Success'),
(82, 'Apr 29, 2026, 1:54 PM', 'Administrator', 'admin', 'Admin', 'Logout', '192.168.1.1', 'Success'),
(83, 'Apr 30, 2026, 11:35 AM', 'Antoneth', 'Perez', 'Visitor', 'Login', '192.168.1.1', 'Success'),
(84, 'Apr 30, 2026, 11:48 AM', 'Antoneth', 'Perez', 'Visitor', 'Placed Reservation', '192.168.1.1', 'Success'),
(85, 'May 5, 2026, 3:39 AM', 'Antoneth', 'Perez', 'Visitor', 'Logout', '192.168.1.1', 'Success'),
(86, 'May 5, 2026, 3:39 AM', 'Administrator', 'admin', 'Admin', 'Login', '192.168.1.1', 'Success'),
(87, 'May 5, 2026, 3:39 AM', 'Administrator', 'admin', 'Admin', 'Login', '192.168.1.1', 'Success'),
(88, 'May 5, 2026, 3:49 AM', 'Administrator', 'admin', 'Admin', 'Logout', '192.168.1.1', 'Success'),
(89, 'May 5, 2026, 9:38 PM', 'Administrator', 'admin', 'Admin', 'Login', '192.168.1.1', 'Success');

-- --------------------------------------------------------

--
-- Table structure for table `spots`
--

CREATE TABLE `spots` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `municipality` varchar(100) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `emoji` varchar(10) DEFAULT NULL,
  `fee` varchar(50) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `hours` varchar(50) DEFAULT NULL,
  `rating` varchar(10) DEFAULT NULL,
  `tags` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`tags`)),
  `addedBy` varchar(50) DEFAULT NULL,
  `lat` decimal(10,6) DEFAULT NULL,
  `lng` decimal(10,6) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `spots`
--

INSERT INTO `spots` (`id`, `name`, `municipality`, `category`, `emoji`, `fee`, `color`, `description`, `hours`, `rating`, `tags`, `addedBy`, `lat`, `lng`, `img`, `link`) VALUES
(1, 'MacArthur Landing Memorial', 'Palo', 'Historical', '🏛️', 'Free', '#0d4f6c', 'Commemorates General Douglas MacArthur\'s historic return to the Philippines in October 1944. Features life-size bronze statues wading through the surf.', '6AM–6PM', '4.8', '[\"Historical\",\"Landmark\",\"Photography\"]', 'admin', 11.171700, 125.011700, 'http://localhost:5000/uploads/1776149805577.jpg', 'https://en.wikipedia.org/wiki/MacArthur_Landing_Memorial_National_Park'),
(2, 'Kalanggaman Island', 'Palompon', 'Beach', '🏝️', '₱200', '#1a6b4a', 'A pristine sandbar island surrounded by crystal-clear turquoise waters. One of the most photographed islands in the Philippines.', '6AM–5PM', '4.9', '[\"Beach\",\"Snorkeling\",\"Sandbar\"]', 'admin', 11.118900, 124.249200, 'http://localhost:5000/uploads/1776149901043.jpg', 'https://en.wikipedia.org/wiki/Kalanggaman_Island'),
(3, 'SOHOTON CAVES & NATURAL BRIDGE PARK', 'Basey', 'Nature', '🌿', '₱150', '#1a6b4a', 'A magnificent natural limestone arch surrounded by lush jungle and bat colonies. Best explored by kayak through the Sohoton River.', '7AM–4PM', '4.7', '[\"Nature\",\"Cave\",\"Wildlife\"]', 'admin', 11.395300, 125.132000, 'http://localhost:5000/uploads/1776149915409.JPG', 'https://en.wikipedia.org/wiki/Sohoton_Caves_and_Natural_Bridge_Park'),
(4, 'Santo Niño Shrine & Heritage Museum', 'Tacloban City', 'Heritage', '🏛️', '₱100', '#c8941a', 'Former residence of the Marcos family turned into a museum. Showcases Leyte\'s cultural heritage and collections of religious icons.', '9AM–5PM', '4.5', '[\"Heritage\",\"Museum\",\"Culture\"]', 'admin', 11.231900, 125.000300, 'http://localhost:5000/uploads/1776149933227.avif', 'https://en.wikipedia.org/wiki/Santo_Ni%C3%B1o_Shrine_and_Heritage_Museum'),
(5, 'Lake Danao National Park', 'Ormoc City', 'Nature', '🏞️', '₱50', '#1a6b4a', 'A serene crater lake surrounded by pine trees and mountain forest. Ideal for boating, bird watching, and camping.', '6AM–6PM', '4.6', '[\"Nature\",\"Lake\",\"Camping\"]', 'admin', 11.077200, 124.694600, 'http://localhost:5000/uploads/1776149946035.jpg', 'https://en.wikipedia.org/wiki/Lake_Danao_(Leyte)'),
(6, 'Leyte Park Resort', 'Tacloban City', 'Heritage', '🌺', '₱50', '#c8941a', 'Historic park and resort along the shores of San Juanico Strait. Home to cultural shows and panoramic sea views.', 'Open daily', '4.4', '[\"Heritage\",\"Resort\",\"Views\"]', 'guide', 11.250500, 125.006900, 'http://localhost:5000/uploads/1776149965812.webp', 'https://en.wikipedia.org/wiki/The_Oriental_Leyte#:~:text=The%20Oriental%20Leyte%20became%20the%20first%20hotel,would%20eventually%20close%20on%20April%206%2C%202024.'),
(7, 'San Juanico Bridge', 'Tacloban–Samar', 'Historical', '🌉', 'Free', '#0d4f6c', 'The longest bridge in Southeast Asia over sea waters, spanning 2.16 km across San Juanico Strait. An engineering marvel.', 'Open 24hrs', '4.7', '[\"Landmark\",\"Historical\",\"Photography\"]', 'admin', 11.302780, 124.971940, 'http://localhost:5000/uploads/1776149977639.jpg', 'https://en.wikipedia.org/wiki/San_Juanico_Bridge'),
(8, 'Sto. Niño Parish Church', 'Tacloban City', 'Religious', '⛪', 'Free', '#9333ea', 'One of the oldest churches in Leyte, a testament to Spanish colonial architecture and deep Catholic faith of Leyteños.', '6AM–8PM', '4.6', '[\"Religious\",\"Heritage\",\"Architecture\"]', 'guide', 11.240500, 125.001600, 'http://localhost:5000/uploads/1776149987086.jpg', 'https://en.wikipedia.org/wiki/Santo_Ni%C3%B1o_Church_(Tacloban)');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(20) DEFAULT 'Visitor',
  `name` varchar(100) NOT NULL,
  `gcash_number` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `name`, `gcash_number`) VALUES
(1, 'admin', 'admin123', 'Admin', 'Administrator', NULL),
(2, 'guide', 'leyte2024', 'Tour Guide', 'Maria Santos', NULL),
(8, 'Abines345', 'abines1234', 'Visitor', 'Aljon Abines', NULL),
(9, 'Perez', 'perez123', 'Visitor', 'Antoneth', '09097768636');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inquiries`
--
ALTER TABLE `inquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spots`
--
ALTER TABLE `spots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `inquiries`
--
ALTER TABLE `inquiries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `spots`
--
ALTER TABLE `spots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
