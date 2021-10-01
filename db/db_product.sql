-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2021 at 01:46 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_product`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`c_id`, `c_name`) VALUES
(1, 'IT');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `d_id` int(10) NOT NULL,
  `o_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `d_qty` int(11) NOT NULL,
  `d_subtotal` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`d_id`, `o_id`, `p_id`, `d_qty`, `d_subtotal`) VALUES
(1, 0, 1, 1, 349),
(2, 0, 2, 1, 349),
(3, 0, 4, 1, 149),
(4, 0, 1, 1, 349),
(5, 0, 2, 1, 349),
(6, 0, 4, 12, 1788),
(7, 0, 5, 1, 249),
(8, 0, 1, 1, 349),
(9, 0, 2, 1, 349),
(10, 0, 4, 12, 1788),
(11, 0, 5, 1, 249),
(12, 1, 1, 1, 349),
(13, 1, 2, 1, 349),
(14, 1, 4, 12, 1788),
(15, 1, 5, 1, 249),
(16, 2, 6, 1, 289),
(17, 0, 6, 1, 289),
(18, 0, 6, 1, 289),
(19, 0, 6, 1, 289),
(20, 0, 2, 1, 349),
(21, 5, 6, 1, 289),
(22, 5, 2, 1, 349),
(23, 5, 5, 1, 249),
(24, 0, 3, 1, 195),
(25, 0, 1, 1, 349),
(26, 6, 3, 1, 195),
(27, 6, 1, 1, 349),
(28, 6, 4, 1, 149),
(29, 7, 2, 1, 35500),
(30, 7, 1, 1, 29999);

-- --------------------------------------------------------

--
-- Table structure for table `order_head`
--

CREATE TABLE `order_head` (
  `o_id` int(10) NOT NULL,
  `o_dttm` datetime NOT NULL,
  `o_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `o_addr` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `o_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `o_phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `o_qty` int(11) NOT NULL,
  `o_total` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_head`
--

INSERT INTO `order_head` (`o_id`, `o_dttm`, `o_name`, `o_addr`, `o_email`, `o_phone`, `o_qty`, `o_total`) VALUES
(1, '2021-10-01 10:21:02', 'Tanakit', '361\r\nบ้าย', 'konkik1520@gmail.com', '0967758061', 0, 0),
(2, '2021-10-01 10:21:34', 'Tanakit', '361\r\nบ้าย', 'konkik1520@gmail.com', '0967758061', 0, 0),
(3, '2021-10-01 10:22:03', 'Tanakit', '361\r\nบ้าย', 'konkik1520@gmail.com', '0967758061', 0, 0),
(4, '2021-10-01 10:22:05', 'Tanakit', '361\r\nบ้าย', 'konkik1520@gmail.com', '0967758061', 0, 0),
(5, '2021-10-01 10:24:07', 'Tanakit', '361\r\nบ้าย', 'konkik1520@gmail.com', '0967758061', 0, 0),
(6, '2021-10-01 10:26:34', 'Tanakit', '361\r\nบ้าย', 'konkik1520@gmail.com', '0967758061', 0, 0),
(7, '2021-10-01 13:45:44', 'Tanakit', '361\r\nบ้าย', 'konkik1520@gmail.com', '0967758061', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p_detail` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `p_price` float DEFAULT NULL,
  `p_pic` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `c_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `p_name`, `p_detail`, `p_price`, `p_pic`, `c_id`) VALUES
(1, 'Notebook Asus X515EA-EJ304T (Transparent Silver)', 'หน้าจอแสดงผลขนาด 15.6\" ระดับ FHD หน่วยประมวลผล Intel Core i3-1115G4 Processor หน่วยประมวลผลกราฟิก Intel UHD Graphics (Integrated) มาพร้อม SSD 512GB และ RAM DDR4 4GB มาพร้อมระบบปฏิบัติการ Windows 10 Home', 29999, '189813033920211001_081023.png', '1'),
(2, 'Notebook Asus X515EA-EJ304T (Transparent Silver)', 'หน้าจอแสดงผลขนาด 15.6\" ระดับ FHD หน่วยประมวลผล Intel Core i3-1115G4 Processor หน่วยประมวลผลกราฟิก Intel UHD Graphics (Integrated) มาพร้อม SSD 512GB และ RAM DDR4 4GB มาพร้อมระบบปฏิบัติการ Windows 10 Home', 35500, '189813033920211001_081023.png', '1'),
(3, 'Notebook Lenovo IdeaPad 3 15ITL6 82H800J9TA (Arctic Grey)', 'หน้าจอแสดงผลขนาด 15.6\" ระดับ FHD IPS หน่วยประมวลผล Intel Core i3-1115G4 Processor หน่วยประมวลผลกราฟิก Intel UHD Graphics (Integrated) มาพร้อม SSD ความจุ 512GB และ RAM DDR4 8GB มาพร้อมระบบปฏิบัติการ Windows 10 Home มีซอฟต์แวร์ Microsoft Office Home&Student 2019 ให้', 39999, '183821206220211001_081458.png', '1'),
(4, 'Notebook Lenovo ThinkBook 15 Gen2 20VGA010TA (Grey)', 'หน้าจอแสดงผลขนาด 15.6\" ระดับ FHD IPS หน่วยประมวลผล AMD Ryzen 7 4700U Processor หน่วยประมวลผลกราฟิก AMD Radeon Graphics (Integrated) มาพร้อม SSD ความจุ 256GB และ RAM DDR4 16GB', 14900, '84874843120211001_081629.png', '1'),
(5, 'Notebook DELL Inspiron 3511-W56625401THW10 (Carbon Black)', 'หน้าจอแสดงผลขนาด 15.6\" ระดับ FHD WVA หน่วยประมวลผล Intel Core i3-1115G4 Processor หน่วยประมวลผลกราฟิก Intel UHD Graphics (Integrated) มาพร้อม SSD ความจุ 256GB และ RAM DDR4 4GB มาพร้อมระบบปฏิบัติการ Windows 10 Home มีซอร์ฟแวร์ Microsoft Office Home&Student 2019', 24900, '13377807620211001_081725.png', '1'),
(6, 'Notebook DELL Inspiron 7501-W56711013THAD (Silver)', 'หน้าจอแสดงผลขนาด 15.6\" ระดับ FHD หน่วยประมวลผล Intel Core i7-10750H Processor หน่วยประมวลผลกราฟิก NVIDIA GeForce GTX 1650 Ti Graphics มาพร้อม SSD ความจุ 512GB และ RAM DDR4 8GB มาพร้อมระบบปฏิบัติการ Windows 10 Home มีซอร์ฟแวร์ Microsoft Office Home&Student 2019', 28900, '129104411520211001_081847.png', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `order_head`
--
ALTER TABLE `order_head`
  ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `d_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `order_head`
--
ALTER TABLE `order_head`
  MODIFY `o_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
