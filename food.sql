-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2021 at 02:42 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(14, 'Darwin Acio', 'darwinacio12@gmail.com', '0192023a7bbd73250516f069df18b500'),
(15, 'John Christian M. Guiyab', 'johnchristian.m.guiyab@isu.edu.ph', '0192023a7bbd73250516f069df18b500'),
(16, 'Jaylord Agub', 'jaylord.g.agub@isu.edu.ph', '0192023a7bbd73250516f069df18b500'),
(17, 'Kevin Canceran', 'kevincanceran30@gmail.com', '0192023a7bbd73250516f069df18b500'),
(18, 'Ramil Agabin', 'ramil.g.agabin@isu.edu.ph', '0192023a7bbd73250516f069df18b500'),
(19, 'Diosa Ulep', 'diosadalisay.a.aimoete@isu.edu.ph', '0192023a7bbd73250516f069df18b500');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(19, 'Burger', 'Food_Category_508.jpg', 'Yes', 'Yes'),
(20, 'Siomai', 'Food_Category_79.jpg', 'Yes', 'Yes'),
(21, 'Pizza', 'Food_Category_128.jpg', 'Yes', 'Yes'),
(22, 'Dessert', 'Food_Category_936.jpg', 'Yes', 'Yes'),
(23, 'Breakfast', 'Food_Category_812.jpg', 'Yes', 'Yes'),
(24, 'Ulam', 'Food_Category_349.jpg', 'Yes', 'Yes'),
(25, 'Soup', 'Food_Category_89.jpg', 'Yes', 'Yes'),
(26, 'Fries', 'Food_Category_561.jpg', 'Yes', 'Yes'),
(27, 'Meryenda', 'Food_Category_269.jpg', 'Yes', 'Yes'),
(28, 'Starter Pack', 'Food_Category_544.jpg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(10, 'Siomai Rice', 'Yummy Siomai', '50.00', 'Food_Name_1868.jpg', 20, 'Yes', 'Yes'),
(11, 'Cheese Pizza', 'Yummy Cheese Pizza', '400.00', 'Food_Name_7353.jpg', 21, 'Yes', 'Yes'),
(12, 'Tortang Talong', 'Tortang Talong With Rice', '50.00', 'Food_Name_8724.jpg', 24, 'Yes', 'Yes'),
(13, 'Breakfast2', 'PNC Starter Pack', '60.00', 'Food_Name_9988.jpg', 23, 'Yes', 'Yes'),
(14, 'SpamSiLog', 'Spam, Sinangag, Itlog', '60.00', 'Food_Name_616.jpg', 23, 'Yes', 'Yes'),
(16, 'Dinuguang Baboy', 'Dinuguang Baboy', '60.00', 'Food_Name_73.jpg', 24, 'Yes', 'Yes'),
(17, 'Siopao', 'Siopao', '50.00', 'Food_Name_3615.jpg', 27, 'Yes', 'Yes'),
(18, 'Macaroons', 'Macaroons', '10.00', 'Food_Name_2295.jpg', 22, 'Yes', 'Yes'),
(19, 'Dynamite', 'Dynamite', '15.00', 'Food_Name_3252.jpg', 27, 'Yes', 'Yes'),
(25, 'Lumpiang Sianghai', 'Lumpiang Sianghai', '15.00', 'Food_Name_6738.jpg', 24, 'Yes', 'Yes'),
(26, 'Crispy Pata', 'Crispy Pata', '300.00', 'Food_Name_9638.jpg', 24, 'Yes', 'Yes'),
(28, 'Chicken Burger', 'Chicken Burger', '300.00', 'Food_Name_3000.jpg', 19, 'Yes', 'Yes'),
(29, 'Beef Burger', 'Beef Burger', '300.00', 'Food_Name_2898.jpg', 19, 'Yes', 'Yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
