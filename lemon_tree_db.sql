-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 22, 2022 at 05:52 AM
-- Server version: 8.0.27
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lemon_tree_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `username` varchar(11) NOT NULL,
  `password` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int NOT NULL,
  `item_no` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `detail` varchar(500) NOT NULL,
  `price` varchar(50) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `item_no`, `name`, `type`, `detail`, `price`, `image`) VALUES
(5, 3, 'g Milk shake', 'Veg', '16 g of protein milk shake with chocolate flavoured . ', '6', 'chocmilk.jpg'),
(6, 4, 'vanilla milk shake', 'Veg', 'Tasty vanilla flavoured milk shake with 17 g of protein. ', '5', 'milk.jpg'),
(7, 5, 'Hamburger ', 'Non Veg', 'Ham burger with potato dots, lettuce and tomatoes ', '5', 'hb.jpg'),
(9, 7, 'veg sandwich ', 'Veg', 'Veg sandwich with lettuce, tomatoes and potato dots', '9', 'vsw.jpg'),
(10, 8, 'bread omelette ', 'Non Veg', 'fresh bread and 3 eggs omelette with olive oil ', '7', 'bo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `Id` int NOT NULL,
  `orderId` int NOT NULL,
  `userId` int NOT NULL,
  `itemName` varchar(50) NOT NULL,
  `price` varchar(100) NOT NULL,
  `qty` int NOT NULL,
  `total` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`Id`, `orderId`, `userId`, `itemName`, `price`, `qty`, `total`, `name`, `address`, `email`) VALUES
(18, 2, 2, 'Jalebi', '49', 1, '49', 'abcd', 'Shankar Ngr, Tilak Rd, ABC(east) eee\r\nMumbai 400001', 'aaa@g.c'),
(19, 2, 2, 'Samosa', '15', 1, '15', 'abcd', 'Shankar Ngr, Tilak Rd, ABC(east) eee\r\nMumbai 400001', 'aaa@g.c'),
(20, 1, 1, 'Samosa', '15', 2, '79', 'Nitish Nagar', 'Shivaji Road, Thane(W), Thane - 400601', 'nitish@gmail.com'),
(21, 1, 1, 'Jalebi', '49', 1, '79', 'Nitish Nagar', 'Shivaji Road, Thane(W), Thane - 400601', 'nitish@gmail.com'),
(22, 13, 13, 'Samosa', '15', 1, '126', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(23, 13, 13, 'Jalebi', '49', 1, '126', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(24, 13, 13, 'Naan', '12', 1, '126', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(25, 13, 13, 'Paneer Bhurji', '50', 1, '126', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(26, 13, 13, 'Samosa', '15', 1, '27', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(27, 13, 13, 'Naan', '12', 1, '27', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(28, 13, 13, 'Samosa', '15', 1, '127', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(29, 13, 13, 'Naan', '12', 1, '127', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(30, 13, 13, 'Biryani', '100', 1, '127', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(31, 13, 13, 'Jalebi', '49', 1, '349', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(32, 13, 13, 'Biryani', '100', 3, '349', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(33, 13, 13, 'Jalebi', '49', 1, '349', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(34, 13, 13, 'Biryani', '100', 3, '349', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(35, 13, 13, 'Jalebi', '49', 1, '349', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(36, 13, 13, 'Biryani', '100', 3, '349', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(37, 13, 13, 'Jalebi', '49', 1, '349', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(38, 13, 13, 'Biryani', '100', 3, '349', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(39, 13, 13, 'Jalebi', '49', 1, '349', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(40, 13, 13, 'Biryani', '100', 3, '349', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(41, 13, 13, 'Jalebi', '49', 1, '349', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(42, 13, 13, 'Biryani', '100', 3, '349', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(43, 13, 13, 'Samosa', '15', 1, '162', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(44, 13, 13, 'Jalebi', '49', 3, '162', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(45, 13, 13, 'Jalebi', '49', 2, '122', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(46, 13, 13, 'Naan', '12', 2, '122', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(47, 13, 13, 'Jalebi', '49', 2, '122', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(48, 13, 13, 'Naan', '12', 2, '122', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(49, 13, 13, 'Samosa', '15', 4, '109', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(50, 13, 13, 'Jalebi', '49', 1, '109', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(51, 13, 13, 'Samosa', '15', 4, '109', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(52, 13, 13, 'Jalebi', '49', 1, '109', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(53, 13, 13, 'Samosa', '15', 4, '109', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(54, 13, 13, 'Jalebi', '49', 1, '109', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(55, 13, 13, 'Samosa', '15', 4, '109', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(56, 13, 13, 'Jalebi', '49', 1, '109', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(57, 13, 13, 'Naan', '12', 1, '12', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(58, 13, 13, 'Naan', '12', 1, '12', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(59, 13, 13, 'Naan', '12', 1, '12', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(60, 13, 13, 'Naan', '12', 1, '12', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(61, 13, 13, 'Naan', '12', 1, '12', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(62, 13, 13, 'Jalebi', '49', 3, '973', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(63, 13, 13, 'Samosa', '15', 2, '973', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(64, 13, 13, 'Biryani', '100', 4, '973', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(65, 13, 13, 'Butter Chicken', '99', 4, '973', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(66, 13, 13, 'Samosa', '15', 1, '76', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(67, 13, 13, 'Jalebi', '49', 1, '76', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(68, 13, 13, 'Naan', '12', 1, '76', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(69, 13, 13, 'Samosa', '15', 1, '15', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(70, 13, 13, 'Jalebi', '49', 1, '49', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(71, 13, 13, 'Jalebi', '49', 1, '49', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(72, 13, 13, 'Naan', '12', 1, '12', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(73, 13, 13, 'Naan', '12', 1, '12', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(74, 13, 13, 'Samosa', '15', 3, '217', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(75, 13, 13, 'Jalebi', '49', 2, '217', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(76, 13, 13, 'Naan', '12', 2, '217', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(77, 13, 13, 'Paneer Bhurji', '50', 1, '217', 'Jethalal Gada', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com'),
(78, 15, 15, 'Samosa', '15', 1, '226', 'Dinesh Durgam', '623, west university Avenue\r\nunit 4', 'dinesh.durgam@okstate.edu'),
(79, 15, 15, 'Naan', '12', 1, '226', 'Dinesh Durgam', '623, west university Avenue\r\nunit 4', 'dinesh.durgam@okstate.edu'),
(80, 15, 15, 'Biryani', '100', 1, '226', 'Dinesh Durgam', '623, west university Avenue\r\nunit 4', 'dinesh.durgam@okstate.edu'),
(81, 15, 15, 'Butter Chicken', '99', 1, '226', 'Dinesh Durgam', '623, west university Avenue\r\nunit 4', 'dinesh.durgam@okstate.edu'),
(82, 15, 15, 'Samosa', '15', 1, '226', 'Dinesh Durgam', '623, west university Avenue\r\nunit 4', 'dinesh.durgam@okstate.edu'),
(83, 15, 15, 'Naan', '12', 1, '226', 'Dinesh Durgam', '623, west university Avenue\r\nunit 4', 'dinesh.durgam@okstate.edu'),
(84, 15, 15, 'Biryani', '100', 1, '226', 'Dinesh Durgam', '623, west university Avenue\r\nunit 4', 'dinesh.durgam@okstate.edu'),
(85, 15, 15, 'Butter Chicken', '99', 1, '226', 'Dinesh Durgam', '623, west university Avenue\r\nunit 4', 'dinesh.durgam@okstate.edu'),
(86, 15, 15, 'water', '1', 1, '12', 'Dinesh Durgam', '623, west university Avenue\r\nunit 4', 'dinesh.durgam@okstate.edu'),
(87, 15, 15, 'vanilla milk shake', '5', 1, '12', 'Dinesh Durgam', '623, west university Avenue\r\nunit 4', 'dinesh.durgam@okstate.edu'),
(88, 15, 15, 'Waffles ', '6', 1, '12', 'Dinesh Durgam', '623, west university Avenue\r\nunit 4', 'dinesh.durgam@okstate.edu'),
(89, 15, 15, 'water', '1', 1, '12', 'Dinesh Durgam', '623, west university Avenue\r\nunit 4', 'dinesh.durgam@okstate.edu'),
(90, 15, 15, 'vanilla milk shake', '5', 1, '12', 'Dinesh Durgam', '623, west university Avenue\r\nunit 4', 'dinesh.durgam@okstate.edu'),
(91, 15, 15, 'Waffles ', '6', 1, '12', 'Dinesh Durgam', '623, west university Avenue\r\nunit 4', 'dinesh.durgam@okstate.edu'),
(92, 15, 15, 'Protein Choc Milk shake', '4', 1, '4', 'Dinesh Durgam', '623, west university Avenue\r\nunit 4', 'dinesh.durgam@okstate.edu'),
(93, 15, 15, 'Protein Choc Milk shake', '4', 1, '4', 'Dinesh Durgam', '623, west university Avenue\r\nunit 4', 'dinesh.durgam@okstate.edu'),
(94, 15, 15, 'Protein Choc Milk shake', '4', 1, '4', 'Dinesh Durgam', '623, west university Avenue\r\nunit 4', 'dinesh.durgam@okstate.edu'),
(95, 15, 15, 'Protein Choc Milk shake', '4', 1, '4', 'Dinesh Durgam', '623, west university Avenue\r\nunit 4', 'dinesh.durgam@okstate.edu'),
(96, 15, 15, 'water', '1', 1, '1', 'Dinesh Durgam', '623, west university Avenue\r\nunit 4', 'dinesh.durgam@okstate.edu'),
(97, 15, 15, 'water', '1', 1, '1', 'Dinesh Durgam', '623, west university Avenue\r\nunit 4', 'dinesh.durgam@okstate.edu'),
(98, 17, 17, 'water', '1', 1, '21', 'Siva Inampudi', '623, west university Avenue\r\nunit 4', 'siva.inampudi@okstate.edu'),
(99, 17, 17, 'Hamburger ', '5', 1, '21', 'Siva Inampudi', '623, west university Avenue\r\nunit 4', 'siva.inampudi@okstate.edu'),
(100, 17, 17, 'veg sandwich ', '9', 1, '21', 'Siva Inampudi', '623, west university Avenue\r\nunit 4', 'siva.inampudi@okstate.edu'),
(101, 17, 17, 'Waffles ', '6', 1, '21', 'Siva Inampudi', '623, west university Avenue\r\nunit 4', 'siva.inampudi@okstate.edu'),
(102, 17, 17, 'water', '1', 1, '21', 'Siva Inampudi', '623, west university Avenue\r\nunit 4', 'siva.inampudi@okstate.edu'),
(103, 17, 17, 'Hamburger ', '5', 1, '21', 'Siva Inampudi', '623, west university Avenue\r\nunit 4', 'siva.inampudi@okstate.edu'),
(104, 17, 17, 'veg sandwich ', '9', 1, '21', 'Siva Inampudi', '623, west university Avenue\r\nunit 4', 'siva.inampudi@okstate.edu'),
(105, 17, 17, 'Waffles ', '6', 1, '21', 'Siva Inampudi', '623, west university Avenue\r\nunit 4', 'siva.inampudi@okstate.edu'),
(106, 15, 15, 'Protein Choc Milk shake', '4', 1, '4', 'Dinesh Durgam', '623, west university Avenue\r\nunit 4', 'dinesh.durgam@okstate.edu'),
(107, 15, 15, 'Protein Choc Milk shake', '4', 1, '4', 'Dinesh Durgam', '623, west university Avenue\r\nunit 4', 'dinesh.durgam@okstate.edu'),
(108, 15, 15, 'vanilla milk shake', '5', 1, '5', 'Dinesh Durgam', '623, west university Avenue\r\nunit 4', 'dinesh.durgam@okstate.edu'),
(109, 15, 15, 'vanilla milk shake', '5', 1, '5', 'Dinesh Durgam', '623, west university Avenue\r\nunit 4', 'dinesh.durgam@okstate.edu'),
(110, 15, 15, 'vanilla milk shake', '5', 1, '5', 'Dinesh Durgam', '623, west university Avenue\r\nunit 4', 'dinesh.durgam@okstate.edu'),
(111, 15, 15, 'vanilla milk shake', '5', 1, '5', 'Dinesh Durgam', '623, west university Avenue\r\nunit 4', 'dinesh.durgam@okstate.edu'),
(112, 15, 15, 'Protein Choc Milk shake', '4', 1, '4', 'Dinesh Durgam', '623, west university Avenue\r\nunit 4', 'dinesh.durgam@okstate.edu'),
(113, 15, 15, 'Protein Choc Milk shake', '4', 1, '4', 'Dinesh Durgam', '623, west university Avenue\r\nunit 4', 'dinesh.durgam@okstate.edu'),
(114, 15, 15, 'vanilla milk shake', '5', 2, '10', 'Dinesh Durgam', '623, west university Avenue\r\nunit 4', 'dinesh.durgam@okstate.edu'),
(115, 15, 15, 'vanilla milk shake', '5', 2, '10', 'Dinesh Durgam', '623, west university Avenue\r\nunit 4', 'dinesh.durgam@okstate.edu'),
(116, 18, 18, 'Protein Choc Milk shake', '4', 2, '13', 'Siva', 'Oksu', 'inampude@gmail.com'),
(117, 18, 18, 'Hamburger ', '5', 1, '13', 'Siva', 'Oksu', 'inampude@gmail.com'),
(118, 18, 18, 'Protein Choc Milk shake', '4', 2, '13', 'Siva', 'Oksu', 'inampude@gmail.com'),
(119, 18, 18, 'Hamburger ', '5', 1, '13', 'Siva', 'Oksu', 'inampude@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `name` varchar(200) NOT NULL,
  `mobile` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `cpassword` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `mobile`, `address`, `email`, `password`, `cpassword`) VALUES
(1, 'Nitish Nagar', '9874651230', 'Shivaji Road, Thane(W), Thane - 400601', 'nitish@gmail.com', 'nitishfood@123', 'nitishfood@123'),
(2, 'Nilesh Kawar', '9988776655', 'Plot-15, Sector-4, Sanpada, Navi Mumbai - 400028', 'nilesh@gmail.com', 'nileshfood-456', 'nileshfood-456'),
(3, 'Gajodhar Singh', '9988776543', 'No Chill Nagar, Plot No. 20, Ghodbunder Rd, Thane(W)-400069', 'gajodhar@gmail.com', 'gajju@42069', 'gajju@42069'),
(4, 'Bheem', '1213141516', 'Dholakpur Housing Society, Kasarvadavli, Thane(W)-400036', 'bheem@gmail.com', 'bheem_000', 'bheem_000'),
(5, 'Sherlock Holmes', '9988554433', '221-B, Baker Street, Navi Mumbai - 400078', 'sherlock@yahoo.com', 'sherlock-221', 'sherlock-221'),
(6, 'Ganesh Gaitonde', '9988770420', 'Plot no.6, Gopalmath, Panvel, Navi Mumbai - 400110', 'kukkoo@gmail.com', 'bhagwan@123', 'bhagwan@123'),
(12, 'Nil', '9988776540', 'rgaraea ragre', 'aaa@g.c', '123', '123'),
(13, 'Jethalal Gada', '987456321', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya@gmail.com', 'jethiya@123', 'jethiya@123'),
(14, 'Jethalal Gada', '987456321', 'Flat No. 100, B wing Gokuldhan Soceity, Powder Gully, Goregoan Mumbai, 400005', 'jethiya1@gmail.com', 'jethiya@123', 'jethiya@123'),
(15, 'Dinesh Durgam', '4699713042', '623, west university Avenue\r\nunit 4', 'dinesh.durgam@okstate.edu', '1234', '1234'),
(16, 'DURGAM DINESH KUMAR', '09916995379', '2-9-241/5, road no 07\r\nvikas nagar, hanamkonda', 'dd17896@gmailcom', '4321', '4321'),
(17, 'Siva Inampudi', '9179939019', '623, west university Avenue\r\nunit 4', 'siva.inampudi@okstate.edu', '4321', '4321'),
(18, 'Siva', '999990', 'Oksu', 'inampude@gmail.com', '123456', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item_no` (`item_no`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
