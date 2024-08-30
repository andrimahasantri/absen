-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2023 at 10:00 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dc_absensiv4`
--

-- --------------------------------------------------------

--
-- Table structure for table `building`
--

CREATE TABLE `building` (
  `building_id` int(8) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `latitude_longtitude` varchar(150) NOT NULL,
  `radius` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `building`
--

INSERT INTO `building` (`building_id`, `code`, `name`, `address`, `latitude_longtitude`, `radius`) VALUES
(1, 'SWUKZ/2021', 'Digital Center', 'Jl. Digital Center', '-6.586884,106.294570', 1000000);

-- --------------------------------------------------------

--
-- Table structure for table `business_card`
--

CREATE TABLE `business_card` (
  `id` int(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `active` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `business_card`
--

INSERT INTO `business_card` (`id`, `name`, `photo`, `active`) VALUES
(1, 'Thema 1', '2021-09-14818db55ed84f450043ad72540c19d46e.jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `cuty`
--

CREATE TABLE `cuty` (
  `cuty_id` int(11) NOT NULL,
  `employees_id` int(11) NOT NULL,
  `cuty_start` date NOT NULL,
  `cuty_end` date NOT NULL,
  `date_work` date NOT NULL,
  `cuty_total` int(5) NOT NULL,
  `cuty_description` varchar(100) NOT NULL,
  `cuty_status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `employees_code` varchar(35) NOT NULL,
  `employees_nip` varchar(30) NOT NULL,
  `employees_email` varchar(30) NOT NULL,
  `employees_password` varchar(100) NOT NULL,
  `employees_name` varchar(50) NOT NULL,
  `position_id` int(5) NOT NULL,
  `shift_id` int(11) NOT NULL,
  `building_id` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `created_login` datetime NOT NULL,
  `created_cookies` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `employees_code`, `employees_nip`, `employees_email`, `employees_password`, `employees_name`, `position_id`, `shift_id`, `building_id`, `photo`, `created_login`, `created_cookies`) VALUES
(27, '2022/8FD6/SW2022-10-21', '123456', 'demo@gmail.com', 'acd2bcf0a751e78ba7a1904d55cb26b00b7b5c21ea1c7a91b373c2cf44ae0b29', 'Demo', 2, 1, 1, '2023-10-03c300ae434343b009621c000ef85bc849.jpg', '2023-10-03 14:40:42', '0a724ce0d3c591e61ee7343a33232e0a'),
(28, '2022/B775/SW2022-10-21', '435438597', 'demo2@gmail.com', 'acd2bcf0a751e78ba7a1904d55cb26b00b7b5c21ea1c7a91b373c2cf44ae0b29', 'Digital Center', 1, 1, 1, '2023-10-03e06d061a77a7bde916b8a91163029d41.jpg', '2023-10-03 14:40:42', '0a724ce0d3c591e61ee7343a33232e0a');

-- --------------------------------------------------------

--
-- Table structure for table `holiday`
--

CREATE TABLE `holiday` (
  `holiday_id` int(11) NOT NULL,
  `holiday_date` date NOT NULL,
  `description` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `permission_id` int(11) NOT NULL,
  `employees_id` int(11) NOT NULL,
  `permission_name` varchar(35) NOT NULL,
  `permission_date` date NOT NULL,
  `permission_date_finish` date NOT NULL,
  `permission_description` text NOT NULL,
  `files` varchar(150) NOT NULL,
  `type` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `position_id` int(5) NOT NULL,
  `position_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`position_id`, `position_name`) VALUES
(1, 'STAFF'),
(2, 'ACCOUNTING'),
(7, 'MARKETING');

-- --------------------------------------------------------

--
-- Table structure for table `presence`
--

CREATE TABLE `presence` (
  `presence_id` int(11) NOT NULL,
  `employees_id` int(11) NOT NULL,
  `presence_date` date NOT NULL,
  `time_in` time NOT NULL,
  `time_out` time NOT NULL,
  `present_id` int(11) NOT NULL COMMENT 'Masuk,Pulang,Tidak Hadir',
  `latitude_longtitude_in` varchar(100) NOT NULL,
  `latitude_longtitude_out` varchar(100) NOT NULL,
  `information` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `presence`
--

INSERT INTO `presence` (`presence_id`, `employees_id`, `presence_date`, `time_in`, `time_out`, `present_id`, `latitude_longtitude_in`, `latitude_longtitude_out`, `information`) VALUES
(28, 6, '2022-07-15', '14:54:44', '00:00:00', 1, '-5.3973627,105.2546003', '', ''),
(29, 27, '2022-10-21', '14:29:17', '21:34:13', 1, '-5.4027714,105.2601946', '-5.3971396,105.2667887', ''),
(30, 27, '2023-10-03', '14:34:53', '00:00:00', 1, '-5.390336,105.299968', '', ''),
(31, 28, '2023-10-03', '14:41:38', '00:00:00', 1, '-5.3929889,105.2999419', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `present_status`
--

CREATE TABLE `present_status` (
  `present_id` int(6) NOT NULL,
  `present_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `present_status`
--

INSERT INTO `present_status` (`present_id`, `present_name`) VALUES
(1, 'Hadir'),
(2, 'Sakit'),
(3, 'Izin'),
(4, 'Dinas Luar Kota'),
(5, 'Dinas Dalam Kota');

-- --------------------------------------------------------

--
-- Table structure for table `shift`
--

CREATE TABLE `shift` (
  `shift_id` int(11) NOT NULL,
  `shift_name` varchar(20) NOT NULL,
  `time_in` time NOT NULL,
  `time_out` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shift`
--

INSERT INTO `shift` (`shift_id`, `shift_name`, `time_in`, `time_out`) VALUES
(1, 'FULL TIME', '07:30:00', '17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sw_site`
--

CREATE TABLE `sw_site` (
  `site_id` int(4) NOT NULL,
  `site_url` varchar(100) NOT NULL,
  `site_name` varchar(50) NOT NULL,
  `site_company` varchar(30) NOT NULL,
  `site_manager` varchar(30) NOT NULL,
  `site_director` varchar(30) NOT NULL,
  `site_phone` char(12) NOT NULL,
  `site_address` text NOT NULL,
  `site_description` text NOT NULL,
  `site_logo` varchar(50) NOT NULL,
  `site_email` varchar(30) NOT NULL,
  `site_email_domain` varchar(50) NOT NULL,
  `gmail_host` varchar(50) NOT NULL,
  `gmail_username` varchar(50) NOT NULL,
  `gmail_password` varchar(50) NOT NULL,
  `gmail_port` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sw_site`
--

INSERT INTO `sw_site` (`site_id`, `site_url`, `site_name`, `site_company`, `site_manager`, `site_director`, `site_phone`, `site_address`, `site_description`, `site_logo`, `site_email`, `site_email_domain`, `gmail_host`, `gmail_username`, `gmail_password`, `gmail_port`) VALUES
(1, 'http://localhost/absensi-v4-radius-oktober-2022', 'Absensi V.4 QRCODE Radius', 'Digital Center', 'DigitalCenter', 'DigitalCenter', '0123456789', 'DigitalCenter', 'Absensi V.4 QRCODE Radius', 'whiteswlogowebpng.png', 'DigitalCenter@gmail.com', 'info@domain.com', 'smtp.gmail.com', 'emailanda@gmail.com', 'passwordemailserver', '465');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fullname` varchar(40) NOT NULL,
  `registered` datetime NOT NULL,
  `created_login` datetime NOT NULL,
  `last_login` datetime NOT NULL,
  `session` varchar(100) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `browser` varchar(30) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `email`, `password`, `fullname`, `registered`, `created_login`, `last_login`, `session`, `ip`, `browser`, `level`) VALUES
(1, 'admin', 'DigitalCenter@gmail.com', '88222999e01f1910a5ac39fa37d3b8b704973d503d0ff7c84d46305b92cfa0f6', 'DigitalCenter', '2021-02-03 10:22:00', '2023-10-03 14:31:16', '2023-10-03 14:29:39', '-', '1', 'Google Crome', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_level`
--

CREATE TABLE `user_level` (
  `level_id` int(4) NOT NULL,
  `level_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_level`
--

INSERT INTO `user_level` (`level_id`, `level_name`) VALUES
(1, 'Administrator'),
(2, 'Operator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `building`
--
ALTER TABLE `building`
  ADD PRIMARY KEY (`building_id`);

--
-- Indexes for table `business_card`
--
ALTER TABLE `business_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cuty`
--
ALTER TABLE `cuty`
  ADD PRIMARY KEY (`cuty_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holiday`
--
ALTER TABLE `holiday`
  ADD PRIMARY KEY (`holiday_id`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`position_id`);

--
-- Indexes for table `presence`
--
ALTER TABLE `presence`
  ADD PRIMARY KEY (`presence_id`);

--
-- Indexes for table `present_status`
--
ALTER TABLE `present_status`
  ADD PRIMARY KEY (`present_id`);

--
-- Indexes for table `shift`
--
ALTER TABLE `shift`
  ADD PRIMARY KEY (`shift_id`);

--
-- Indexes for table `sw_site`
--
ALTER TABLE `sw_site`
  ADD PRIMARY KEY (`site_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_level`
--
ALTER TABLE `user_level`
  ADD PRIMARY KEY (`level_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `building`
--
ALTER TABLE `building`
  MODIFY `building_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `business_card`
--
ALTER TABLE `business_card`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cuty`
--
ALTER TABLE `cuty`
  MODIFY `cuty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `holiday`
--
ALTER TABLE `holiday`
  MODIFY `holiday_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `position_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `presence`
--
ALTER TABLE `presence`
  MODIFY `presence_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `present_status`
--
ALTER TABLE `present_status`
  MODIFY `present_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `shift`
--
ALTER TABLE `shift`
  MODIFY `shift_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sw_site`
--
ALTER TABLE `sw_site`
  MODIFY `site_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_level`
--
ALTER TABLE `user_level`
  MODIFY `level_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
