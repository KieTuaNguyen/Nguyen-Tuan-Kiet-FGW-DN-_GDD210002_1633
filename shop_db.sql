-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 26, 2022 at 03:46 PM
-- Server version: 10.5.16-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id19292484_shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 1, 'Bae', 'bae@gmail.com', '113', 'Call me baby <3'),
(2, 6, 'hieu', 'hieu@gmail.com', '123', 'hello kiet suy tinh` '),
(3, 7, 'HOANG', '123@email.com', '1231', 'TAO MUỐN TẤT CẢ ĐỀU FREE!');


-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(1, 'Banh Mi Grilled Pork', 19000, 'banhmi.details.grilled-pork.jpg'),
(2, 'Banh Mi Pork Meatball', 19000, 'banhmi.details.pork-meatball.jpg'),
(3, 'Banh Mi Roast Pork', 19000, 'banhmi.details.roast-pork.jpg'),
(4, 'Espresso Americano', 45000, 'coffee.details.americano.jpg'),
(5, 'Espresso  Cappuccino', 65000, 'coffee.details.cappuccino.jpg'),
(6, 'Espresso Caramel Macchiato', 69000, 'coffee.details.caramel-macchiato.jpg'),
(7, 'Espresso', 45000, 'coffee.details.espresso.jpg'),
(8, 'Espresso Latte', 65000, 'coffee.details.latte.jpg'),
(9, 'Espresso Mocha Macchiato', 69000, 'coffee.details.mocha-macchiato.jpg'),
(10, 'Phin Bac Xiu Da', 29000, 'coffee.details.bacxiuda.jpg'),
(11, 'Phin Den Da', 29000, 'coffee.details.phindenda.jpg'),
(12, 'Phin Sua Da', 29000, 'coffee.details.phinsuada.jpg'),
(13, 'Phindi Choco', 45000, 'coffee.details.phindichoco.jpg'),
(14, 'Phindi Almondy', 45000, 'coffee.details.phindihanhnhan.jpg'),
(15, 'Phindi Milk Cream', 45000, 'coffee.details.phindikemsua.jpg'),
(16, 'Freeze Chocolate', 55000, 'freeze.details.chocolate.jpg'),
(17, 'Freeze Cookies and Cream', 55000, 'freeze.details.cookies-and-cream.jpg'),
(18, 'Freeze Green Tea', 55000, 'freeze.details.greenteafreeze.jpg'),
(19, 'Freeze Caramel Coffee', 55000, 'freeze.details.caramel-coffee.jpg'),
(20, 'Freeze Basic Phin', 55000, 'freeze.details.basic-phin-freeze.jpg'),
(21, 'Pastry Cocoa Mousse', 35000, 'pastry.details.cocoa-mousse.jpg'),
(22, 'Pastry Chocolate Bomb', 35000, 'pastry.details.chocolate-bomb.jpg'),
(23, 'Pastry Coffee Cheese', 29000, 'pastry.details.coffee-cheese.jpg'),
(24, 'Pastry Passion Fruit', 29000, 'pastry.details.passion-fruit.jpg'),
(25, 'Pastry Peach Mousse', 35000, 'pastry.details.peach-mousse.jpg'),
(26, 'Pastry Tiramisu', 35000, 'pastry.details.tiramisu.jpg'),
(27, 'Tea Golden Lotus (Water Chesnut Topping)', 45000, 'tea.details.chesnut-lotus.jpg'),
(28, 'Tea Golden Lotus (Lotus Seed Topping)', 45000, 'tea.details.golden-lotus.jpg'),
(29, 'Tea Lychee', 45000, 'tea.details.lychee.jpg'),
(30, 'Tea Peach Jelly', 45000, 'tea.details.peach-jelly.jpg'),
(31, 'Tea Peach Lemongrass', 45000, 'tea.details.peach-lemongrass.jpg'),
(32, 'Tea Cerise Apricot', 55000, 'tea.details.cerise-apricot-tea.jpg'),
(33, 'Tea Pink Guava', 55000, 'tea.details.pink-guava-tea.png'),
(34, 'Tea Tropical Mango', 55000, 'tea.details.tropical-mango-tea.jpg'),
(35, 'Signature Tee', 500000, 'tee.staff.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'Tester-User', 'tester@gmail.com', 'f5d1278e8109edd94e1e4197e04873b9', 'user'),
(2, 'Admin-User', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(3, 'hello', 'nhinlugcd201400@fpt.edu.vn', '202cb962ac59075b964b07152d234b70', 'user'),
(4, 'tien', 'tien@gmail.com', '202cb962ac59075b964b07152d234b70', 'user'),
(5, 'Le Anh', 'leanh020103@gmail.com', '45ac0a7cf2bc1cec8991c69745ee7667', 'user'),
(6, 'hieu', 'hieu@gmail.com', 'e36a688e4838c0f47f7eca369706d43b', 'user'),
(7, 'HOANG', 'ronandovip298@gmail.com', '4297f44b13955235245b2497399d7a93', 'user'),
(8, 'Thắng Đẹp trai', 'lethanglaso1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'user'),
(9, 'Le thang', 'thangso1@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', 'user'),
(10, 'kiet@gmail.com', 'kiet@gmail.com', '202cb962ac59075b964b07152d234b70', 'user'),
(11, 'Con ga Tuan Kiet', 'triminh701@gmail.com', '900150983cd24fb0d6963f7d28e17f72', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
