-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 10, 2024 at 01:51 PM
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
-- Database: `Food-Order`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(36, 'anitha', ' anu', '04c5bebde1f6e9eedcaea7a0de3919b3'),
(37, 'shafiya', 'shafiya', 'a9ed7eddf973221cb16e9b64396479c2'),
(38, 'shafiya', 'shafiya', '7f01ab2a517ffc4fb44244318656a3d9'),
(39, 'ammu', 'ammu', '7f01ab2a517ffc4fb44244318656a3d9'),
(40, 's190233', 's190233', '7f01ab2a517ffc4fb44244318656a3d9'),
(41, 'shaf', 'shaf', '7f01ab2a517ffc4fb44244318656a3d9'),
(42, 'shafiya', 'shaf', '02c75fb22c75b23dc963c7eb91a062cc'),
(43, 'sridevi', 'sridevi', 'dcddb75469b4b4875094e14561e573d8');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(10, 'pizza', 'Food_Category_118.jpg', 'yes', 'yes'),
(14, 'Burger', 'Food_Category_1.jpg', 'yes', 'yes'),
(15, 'Momo', 'Food_Category_860.jpg', 'yes', 'yes'),
(16, 'Chicken Biryani', 'Food_Category_684.jpg', 'yes', 'yes'),
(18, 'Fish Biryani', 'Food_Category_656.jpeg', 'yes', 'yes'),
(19, 'Mutton Biryani', 'Food_Category_761.webp', 'yes', 'yes'),
(20, 'Ice-Cream', 'Food_Category_895.jpg', 'yes', 'yes'),
(21, 'Prawns', 'Food_Category_12.webp', 'yes', 'yes'),
(22, 'Cakes', 'Food_Category_355.jpg', 'yes', 'yes'),
(26, 'pizza', 'Food_Category_362.jpg', 'yes', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(5, 'Burger', 'Burger is very Delicious with extra cheese', 50.00, 'Food-Name7.jpg', 10, 'no', 'yes'),
(6, 'Pizza', 'Pizza has extra masala', 50.00, 'Food-Name502.jpg', 10, 'yes', 'yes'),
(7, 'Momo', 'Momo has full of vegetables', 100.00, 'Food-Name618.jpg', 15, 'yes', 'yes'),
(8, 'Chicken Biryani', 'Chicken Biryani with fry pieces', 250.00, 'Food-Name_573.jpeg', 16, 'yes', 'yes'),
(9, 'Chicken - Dum Biryani', 'Chicken with extra Dum and Leg pieces', 245.00, 'Food-Name_984.jpg', 16, 'yes', 'yes'),
(10, 'Chicken -Lolly Pop', 'Chicken Biryani with Extra masala ', 260.00, 'Food-Name_68.jpg', 16, 'yes', 'yes'),
(11, 'Mutton - Biryani', 'Mutton Biryani with plain pieces', 350.00, 'Food-Name_573.jpg', 19, 'yes', 'yes'),
(12, 'Mutton - Fry Piece', 'Mutton curry with extra masala anf fry pieces', 350.00, 'Food-Name_987.webp', 19, 'yes', 'yes'),
(13, 'Mutton - Dum Biryani', 'Mutton Biryani with extra Dum', 265.00, 'Food-Name_847.jpeg', 19, 'yes', 'yes'),
(14, 'Mutton - Kabab', 'Mutton kabab with Biryani rice', 340.00, 'Food-Name_267.jpeg', 19, 'yes', 'yes'),
(15, 'Fish Fry', 'Fish Biryani with Fry pieces', 345.00, 'Food-Name_82.jpg', 18, 'yes', 'yes'),
(16, 'Vennila', 'Vennila Ice-cream with nuts', 150.00, 'Food-Name_181.jpg', 20, 'yes', 'yes'),
(17, 'Strawberry', 'Strawberry Ice-cream with delicious coops', 180.00, 'Food-Name_970.jpg', 20, 'yes', 'yes'),
(18, 'Chocolate', 'Ice-cream with chocolate pieces and nuts', 190.00, 'Food-Name_7.webp', 20, 'yes', 'yes'),
(20, 'Cool-cake', 'Cool-cake is with nuts', 290.00, 'Food-Name_938.jpg', 22, 'yes', 'yes'),
(21, 'prawn', 'prawn has high rating in our restaurent', 350.00, 'Food-Name_717.jpg', 21, 'yes', 'yes'),
(22, 'Buttor-Scoth Extra', 'It is an Buttor-Scotch extra large which contains additional nuts.', 160.00, 'Food-Name_821.jpg', 20, 'yes', 'yes'),
(28, 'Burger ', 'Burger with extra cheese', 70.00, 'Food-Name_234.jpeg', 14, 'yes', 'yes'),
(29, 'pizza', 'pizza is very hot', 150.00, 'Food-Name_702.jpg', 20, 'yes', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `quantity`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(2, 'Burger', 20.00, 2, 40.00, '2024-05-30 10:32:35', 'On-Delivery', 'ammu', '6305517760', 'pizza@gmail.com', ' zxcvbnm,'),
(3, 'Memo', 100.00, 2, 200.00, '2024-05-30 10:36:17', ' Delivered', 'ammu', '6305517760', 'lalli@gmail.com', ' asdfghjk'),
(4, 'Burger', 20.00, 1, 20.00, '2024-05-30 10:37:08', 'Cancelled', 'Lalli', '1234567890', 'ammu@gmail.com', 'asdfghjk '),
(5, 'Pizza', 50.00, 2, 100.00, '2024-05-30 10:38:56', ' Delivered', 'ammu', '6305517760', 'pizza@gmail.com', ' awertyhjk'),
(6, 'Memo', 100.00, 5, 500.00, '2024-05-30 10:40:07', 'ordered', 'shaf', '6305517760', 'shaf@gmail.com', ' asdfghjkl'),
(9, 'Pizza', 50.00, 1, 50.00, '2024-05-30 05:53:15', 'Ordered', 'shafiya', '6305517760', 'shafiyauzma8@gmail.com', 'dfghjk'),
(10, 'Fish Fry', 345.00, 1, 345.00, '2024-06-01 03:19:11', 'Ordered', 'shafiya', '6305517760', '6305517760@gmail.com', 'nkejwng'),
(11, 'Burger', 20.00, 1, 20.00, '2024-06-01 03:24:47', 'Cancelled', 'shafiya', '6305517760', 'shaf@gmail.com', 'qwertyuio'),
(12, 'Chicken -Lolly Pop', 260.00, 1, 260.00, '2024-06-01 03:28:08', 'Ordered', 'shafiya', '6305517760', 'shaf@gmail.com', 'zxcvbnm'),
(13, 'Chicken - Dum Biryani', 245.00, 1, 245.00, '2024-06-01 03:31:31', 'Ordered', 'shafiya', '6305517760', 'shaf@gmail.com', 'asdfghjkl'),
(14, 'Chicken - Dum Biryani', 245.00, 1, 245.00, '2024-06-01 03:35:09', 'Ordered', 'shafiya', '6305517760', 'akberakber5@gmail.com', 'zxcvbnm,'),
(15, 'Chicken Biryani', 250.00, 1, 250.00, '2024-06-01 04:00:31', 'Ordered', 'shafiya', '6305517760', '6305517760@gmail.com', 'zxcvbnm'),
(16, 'Cool-cake', 290.00, 1, 290.00, '2024-06-01 04:02:26', 'Ordered', 'shafiya', '6305517760', 'akberakber5@gmail.com', 'zxcvbnm'),
(17, 'Momo', 100.00, 1, 100.00, '2024-06-08 03:45:24', 'Cancelled', 'sridevi', '23456789', 'shafiyauzma8@gmail.com', 'qwertyuioasdfghjkcvbnm'),
(18, 'Burger ', 70.00, 1, 70.00, '2024-06-10 08:08:49', 'Ordered', 'shafiya', '6305517760', 'akberakber5@gmail.com', 'sdfghj');

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
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
