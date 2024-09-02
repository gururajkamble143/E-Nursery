-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2022 at 04:47 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `enursery`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_details`
--

CREATE TABLE IF NOT EXISTS `admin_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_details`
--

INSERT INTO `admin_details` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `cart_whish_list_products`
--

CREATE TABLE IF NOT EXISTS `cart_whish_list_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` varchar(30) DEFAULT NULL,
  `category` varchar(255) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `base_price` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `request_by` varchar(30) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `cart_whish_list_products`
--

INSERT INTO `cart_whish_list_products` (`id`, `p_id`, `category`, `p_name`, `base_price`, `quantity`, `request_by`, `status`) VALUES
(21, '3', 'Oxygen Plant', 'Bass Plant', '150', '1', 'divya113@gmail.com', 'Wish List Product');

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

CREATE TABLE IF NOT EXISTS `customer_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`id`, `name`, `address`, `mobile`, `email`, `password`, `status`) VALUES
(1, 'Piya', 'Katraj, Pune', '9876543211', 'piya@gmail.com', '1122', 'Active'),
(2, 'Raj', 'Shivajinagar, Pune', '9812453217', 'raj@gmail.com', '4545', 'Active'),
(3, 'Yadnesh', 'Sambhajinagar', '8764123456', 'yadnesh@gmail.com', '1010', 'Active'),
(4, 'Divya', 'Shastri Nagar Pune', '7758875124', 'divya113@gmail.com', '12345', 'Active'),
(5, 'divyam', 'ram,nagar', '4423557898', 'divyam@gmail.com', 'divyam', 'Active'),
(6, 'Ram', 'Pune', '8765432123', 'ram@gmail.com', '4455', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feedback` varchar(200) NOT NULL,
  `stars` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `feedback`, `stars`, `email`) VALUES
(2, 'I like product', '3', 'divya113@gmail.com'),
(3, 'I love the plant..', '1', 'divya113@gmail.com'),
(4, 'jklhjnk', '2', 'divyam@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE IF NOT EXISTS `payment_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `totalPrice` varchar(200) NOT NULL,
  `card_no` varchar(200) NOT NULL,
  `month_year` varchar(200) NOT NULL,
  `cvv` varchar(200) NOT NULL,
  `payment_by` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Payment Done',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `payment_details`
--

INSERT INTO `payment_details` (`id`, `totalPrice`, `card_no`, `month_year`, `cvv`, `payment_by`, `status`) VALUES
(1, '400', '718299187600', '12/23', '123', 'raj@gmail.com', 'Payment Done'),
(2, '120', '987654321728', '2024-12', '837', 'divya113@gmail.com', 'Payment Done'),
(3, '750', '786786998098', '2022-03', '234', 'divya113@gmail.com', 'Payment Done'),
(4, '360', '164364786495', '2022-07', '567', 'divyam@gmail.com', 'Payment Done');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE IF NOT EXISTS `product_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(1000) DEFAULT NULL,
  `p_name` varchar(100) DEFAULT NULL,
  `specification` text,
  `file_name` varchar(30) DEFAULT NULL,
  `base_price` varchar(30) DEFAULT NULL,
  `mfg_date` varchar(30) DEFAULT NULL,
  `exp_date` varchar(30) DEFAULT NULL,
  `upload_by` varchar(30) DEFAULT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'Not_Sell',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `category`, `p_name`, `specification`, `file_name`, `base_price`, `mfg_date`, `exp_date`, `upload_by`, `status`) VALUES
(1, 'Oxygen Plant', 'Oxygen Plant', 'Best Oxygen Plant', 'Oxygen.jpg', '100', '2022-07-13', '2022-08-25', 'Admin', 'Not_Sell'),
(2, 'Outdoor Plant', 'Alovera Plant', 'Best Alovera Plant', 'Alovera.png', '120', '2022-07-12', '2022-07-20', 'Admin', 'Not_Sell'),
(4, 'Show Plant', 'Rubber Plant', 'Rubber Plant for Terrace', 'Rubber.jpg', '180', '2022-07-10', '2022-07-20', 'Admin', 'Not_Sell'),
(5, 'Indoor Plant', 'Footstool Plant', 'ABC', 'Footstool plant.PNG', '400', '2022-08-12', '2022-08-15', 'Admin', 'Not_Sell');

-- --------------------------------------------------------

--
-- Table structure for table `seller_details`
--

CREATE TABLE IF NOT EXISTS `seller_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `seller_details`
--

INSERT INTO `seller_details` (`id`, `name`, `address`, `email`, `mobile`, `password`, `status`) VALUES
(1, 'Seller', 'Pune', 'seller@gmail.com', '8900890089', '123456', 'Active'),
(2, 'Yash Patil', 'Pune', 'yash@gmail.com', '8765432098', '12345', 'Active'),
(3, 'Prachipatil', 'ram Nagar,Pune', 'prachikadu123@gmail.com', '9276938876', 'prachi', 'Active'),
(4, 'DevPatil', 'pune', 'dev@gmail.com', '8998786654', 'dev123', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `statistics`
--

CREATE TABLE IF NOT EXISTS `statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `p_name` varchar(255) DEFAULT NULL,
  `base_price` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `statistics`
--

INSERT INTO `statistics` (`id`, `p_id`, `category`, `p_name`, `base_price`, `quantity`) VALUES
(1, '7', 'Oxygen Plant', 'Oxygen Plant', '100', '1'),
(2, '12', 'Terrace Garden Plant', 'Garden Plant', '135', '2'),
(3, '11', 'Garden Plant', 'Garden Plant', '150', '2'),
(4, '3', 'Oxygen Plant', 'Bass Plant', '150', '2'),
(5, '1', 'Oxygen Plant', 'Oxygen Plant', '100', '1'),
(6, '1', 'Oxygen Plant', 'Oxygen Plant', '100', '-1'),
(7, '2', 'Garden Plant', 'Alovera Plant', '120', '1'),
(8, '3', 'Oxygen Plant', 'Bass Plant', '150', '5'),
(9, '3', 'Oxygen Plant', 'Bass Plant', '150', '1'),
(10, '4', 'Terrace Garden Plant', 'Rubber Plant', '180', '2');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
