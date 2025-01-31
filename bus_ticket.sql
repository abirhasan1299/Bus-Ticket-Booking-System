-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 31, 2024 at 03:54 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bus_ticket`
--

-- --------------------------------------------------------

--
-- Table structure for table `bus_info`
--

CREATE TABLE `bus_info` (
  `id` int NOT NULL,
  `bus_name` varchar(100) NOT NULL,
  `bus_no` varchar(255) NOT NULL,
  `bus_type` varchar(10) NOT NULL,
  `total_seat` int NOT NULL,
  `route_id` int NOT NULL,
  `driver_id` int NOT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bus_info`
--

INSERT INTO `bus_info` (`id`, `bus_name`, `bus_no`, `bus_type`, `total_seat`, `route_id`, `driver_id`, `status`) VALUES
(1, 'Shayamoli', 'ZYHOT', 'AC', 30, 5, 6, 'Active'),
(2, 'Bihongo', '5PDKT', 'AC', 40, 4, 6, 'Active'),
(3, 'কালশী', 'G1ZFH', 'NON-AC', 2, 4, 6, 'Inactive'),
(4, 'ENA', 'P64AX', 'NON-AC', 49, 5, 4, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `id` int NOT NULL,
  `identity` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `nid` int NOT NULL,
  `skilled_percentage` varchar(20) NOT NULL,
  `img` varchar(500) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`id`, `identity`, `name`, `mobile`, `nid`, `skilled_percentage`, `img`, `status`) VALUES
(3, '3001477', 'adsf', 'dsfdsfdsf', 45443, '63', 'driver_6772af9d37fc12.36071418.png', 'Active'),
(4, '7950896', 'asdfdsaf', 'adsfdsaf', 4543543, '25', 'driver_6772b181dfd0a7.06920611.png', 'Active'),
(5, '1511973', 'adsfds', 'fdsaf', 4543543, '38', 'driver_6772b379a3b0c3.29930284.png', 'Rest'),
(6, '6124318', 'Shahidul Islam Polok', '01790681078', 90681078, '55', 'driver_6772b67356daa1.12201779.png', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `r_id` int NOT NULL,
  `route_special_id` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `distance` varchar(255) NOT NULL,
  `estimated_time` varchar(100) NOT NULL,
  `cost` int NOT NULL,
  `time` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`r_id`, `route_special_id`, `source`, `destination`, `distance`, `estimated_time`, `cost`, `time`, `date`) VALUES
(1, 'PNA5VUD', 'fds', 'dsf', 'dsfdsf', 'adsfdsf', 443, '09:35', '2025-01-01'),
(2, '99SDZQ5', 'gdf', 'gdfsgdfsg', 'dfsgdfs', 'gdfsgdfsg', 120, '12:46', '2025-01-02'),
(3, '6HDOWRJ', 'dsfds', 'fdsf', 'dsfds', 'fdsf', 2432, '5:45PM', '2025-01-09'),
(4, 'G10Q9DE', 'Dhaka', 'Cox\'s Bazzar', '370 KM', '7 Hours', 1200, '8:30PM', '2025-01-01'),
(5, 'SG2KUU7', 'Dhaka', 'Chittagoang', '200 KM', '5 Hour', 1000, '7:00PM', '2025-01-03');

-- --------------------------------------------------------

--
-- Table structure for table `system_user`
--

CREATE TABLE `system_user` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `system_user`
--

INSERT INTO `system_user` (`id`, `email`, `name`, `password`) VALUES
(5, 'tamamabir@gmail.com', 'Abir', 'abir'),
(6, 'polok@gmail.com', 'Polok', 'polok');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_request`
--

CREATE TABLE `ticket_request` (
  `bus_id` int NOT NULL,
  `total_seat` int NOT NULL,
  `seat_number` varchar(500) NOT NULL,
  `users_id` int NOT NULL,
  `status` varchar(255) NOT NULL,
  `issue_date` varchar(100) NOT NULL,
  `counter_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus_info`
--
ALTER TABLE `bus_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `system_user`
--
ALTER TABLE `system_user`
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
-- AUTO_INCREMENT for table `bus_info`
--
ALTER TABLE `bus_info`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `route`
--
ALTER TABLE `route`
  MODIFY `r_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `system_user`
--
ALTER TABLE `system_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
