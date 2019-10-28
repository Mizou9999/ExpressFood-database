-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Aug 21, 2019 at 02:20 AM
-- Server version: 8.0.17
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `delivery`
--

-- --------------------------------------------------------

--
-- Table structure for table `adress`
--

CREATE TABLE `adress` (
  `id` int(11) NOT NULL,
  `adress` varchar(100) NOT NULL,
  `post_code` varchar(10) NOT NULL,
  `city` text NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `adress`
--

INSERT INTO `adress` (`id`, `adress`, `post_code`, `city`, `user_id`) VALUES
(1, 'local street 2', '4477', 'paradise city ', 1),
(2, 'holos st4122', '4122', 'heaven city', 2),
(3, 'lonson rt square st2', '4113', 'heaven city', 3),
(4, 'moswro 99', '4199', 'heaven city', 4),
(5, 'elored street ', '4778', 'heaven city', 5);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Main Dish'),
(2, 'Dessert ');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `user_name` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `family_name` varchar(50) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` char(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `user_name`, `name`, `family_name`, `phone_number`, `email`, `password`) VALUES
(1, 'mos99', 'mosolos', 'aloir', '845457744', 'mos99@email.com', 'D1DB0E8CDC20DCB478C19545439E9E78FFAAB6C6'),
(2, 'jack01', 'jacky', 'dubois', '78855446', 'jacky01@email.com', '9907EFEA737A49F39A3E270B4E534AFCA7BF59BA'),
(3, 'lucieOp', 'lucie', 'moroto', '899889551', 'luc08@email.com', '9D5E91F52FB62FD029A64F6AA398CFF2D1D60EEC'),
(4, 'sofie00', 'sofia', 'lucor', '55778899', 'sofi00@gmail.com', '6D32C30AE35E0113FC5E661C5DFC965BF6919678'),
(5, 'james88', 'james', 'rodger', '788996655', 'jameson88@mail.com', 'DE926E0C36631AB93BB8A34A22336DB92FF19C06');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_guy`
--

CREATE TABLE `delivery_guy` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `family_name` varchar(50) NOT NULL,
  `geo_location` int(11) NOT NULL,
  `delivery_status_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `delivery_guy`
--

INSERT INTO `delivery_guy` (`id`, `name`, `family_name`, `geo_location`, `delivery_status_id`) VALUES
(1, 'loda', 'selkman', 414412, 1),
(2, 'moko', 'loko', 414411, 2);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_guy_status`
--

CREATE TABLE `delivery_guy_status` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `delivery_guy_status`
--

INSERT INTO `delivery_guy_status` (`id`, `status`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`id`, `name`, `description`, `price`, `category`) VALUES
(18, 'Tom Walker\'s chicken & hot sauce gravy', 'you’re a fan of hot sauce, you’ll love this mighty...\r\n', '10', 1),
(19, 'Tomato Basil Salmon', 'This quick salmon dish is perfect for a weeknight ...\r\n', '15', 1),
(20, 'Grilled Steak Tips with Chimichurri', 'Smoky, spicy, and delicious chimichurri gives any ...\r\n', '20', 1),
(21, 'Best Ever Crab Cakes', 'These are the  some of the best I have ever eaten!...\r\n', '15', 1),
(22, 'Summery Lime-Mango Shortcakes', 'With the sunny flavors of lime, mangoes, coconut, ...\r\n', '10', 2),
(23, 'S\'more Ice Cream Pie', 'We\'re turning s\'mores into the perfect Father\'s Da...\r\n', '10', 2),
(24, 'Avocado Lime Cheesecake', 'Mexican desserts are limited. Flan is great, but ...\r\n', '10', 2),
(25, 'Phoenician\'s Key Lime Pie', 'The famous key lime pie, with fresh lime juice.\r\n', '10', 2);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `dish_id` int(11) NOT NULL,
  `quantity` int(10) NOT NULL,
  `day` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `dish_id`, `quantity`, `day`) VALUES
(14, 18, 1, '2019-08-01'),
(15, 19, 2, '2019-08-01'),
(16, 20, 2, '2019-08-02'),
(17, 21, 3, '2019-08-03'),
(18, 22, 1, '2019-08-03'),
(19, 23, 1, '2019-08-03'),
(20, 24, 1, '2019-08-04'),
(21, 25, 2, '2019-08-04');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` smallint(4) NOT NULL,
  `deliver_id` int(10) NOT NULL,
  `date_of_order` datetime NOT NULL,
  `adress_id` int(11) NOT NULL,
  `date_of_delivery` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `status`, `deliver_id`, `date_of_order`, `adress_id`, `date_of_delivery`) VALUES
(1, 1, 2, 1, '2019-08-01 00:00:00', 1, '2019-08-01 00:20:00'),
(2, 2, 2, 2, '2019-08-02 00:00:00', 2, '2019-08-02 00:20:00'),
(3, 3, 2, 1, '2019-08-03 03:00:00', 3, '2019-08-03 03:20:00'),
(4, 4, 2, 1, '2019-08-03 04:00:00', 4, '2019-08-03 04:20:00'),
(5, 5, 2, 2, '2019-08-04 05:20:00', 5, '2019-08-04 05:40:00'),
(6, 2, 2, 1, '2019-08-06 09:00:00', 2, '2019-08-06 09:24:00'),
(7, 3, 2, 2, '2019-08-13 08:00:00', 3, '2019-08-13 08:22:00'),
(8, 4, 2, 2, '2019-08-13 21:15:00', 4, '2019-08-13 21:36:00');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `dish_id` int(11) NOT NULL,
  `quantity` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `dish_id`, `quantity`, `order_id`, `price`) VALUES
(1, 18, 1, 1, '1000'),
(2, 21, 2, 5, '3000'),
(3, 18, 2, 7, '2000'),
(4, 22, 3, 2, '3000');

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `order_status_id` smallint(4) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`order_status_id`, `status`) VALUES
(1, 0),
(2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adress`
--
ALTER TABLE `adress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`);

--
-- Indexes for table `delivery_guy`
--
ALTER TABLE `delivery_guy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delivery_status_id` (`delivery_status_id`);

--
-- Indexes for table `delivery_guy_status`
--
ALTER TABLE `delivery_guy_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dish_id` (`dish_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `adress_id` (`adress_id`),
  ADD KEY `deliver_id` (`deliver_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dish_id` (`dish_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`order_status_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adress`
--
ALTER TABLE `adress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `delivery_guy`
--
ALTER TABLE `delivery_guy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `delivery_guy_status`
--
ALTER TABLE `delivery_guy_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `order_status_id` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adress`
--
ALTER TABLE `adress`
  ADD CONSTRAINT `adress_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `client` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `delivery_guy`
--
ALTER TABLE `delivery_guy`
  ADD CONSTRAINT `delivery_guy_ibfk_1` FOREIGN KEY (`delivery_status_id`) REFERENCES `delivery_guy_status` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `dishes`
--
ALTER TABLE `dishes`
  ADD CONSTRAINT `dishes_ibfk_1` FOREIGN KEY (`category`) REFERENCES `category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_2` FOREIGN KEY (`dish_id`) REFERENCES `dishes` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `client` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`adress_id`) REFERENCES `adress` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`deliver_id`) REFERENCES `delivery_guy` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`status`) REFERENCES `order_status` (`order_status_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`dish_id`) REFERENCES `dishes` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
