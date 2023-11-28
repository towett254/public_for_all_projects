-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 28, 2023 at 01:02 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `28`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `status`, `created_at`) VALUES
(1, 'John Doe', 'john@example.com', 'active', '2023-11-19'),
(2, 'Alice Smith', 'alice@example.com', 'active', '2023-11-20'),
(3, 'Bob Johnson', 'bob@example.com', 'inactive', '2023-11-21'),
(4, 'Emma Brown', 'emma@example.com', 'active', '2023-11-22'),
(5, 'David Lee', 'david@example.com', 'active', '2023-11-23'),
(6, 'Sophia Garcia', 'sophia@example.com', 'inactive', '2023-11-28'),
(7, 'Michael Clark', 'michael@example.com', 'active', '2023-11-28'),
(8, 'Olivia Martin', 'olivia@example.com', 'active', '2023-11-28'),
(9, 'William Rodriguez', 'william@example.com', 'inactive', '2023-11-28'),
(10, 'Ava Martinez', 'ava@example.com', 'active', '2023-11-28'),
(11, 'Bob Johnson', 'bob@example.com', 'inactive', '2023-11-28'),
(12, 'Emma Brown', 'emma@example.com', 'active', '2023-11-28'),
(13, 'David Lee', 'david@example.com', 'active', '2023-11-28'),
(14, 'Sophia Garcia', 'sophia@example.com', 'inactive', '2023-11-28'),
(15, 'Michael Clark', 'michael@example.com', 'active', '2023-11-28'),
(16, 'Olivia Martin', 'olivia@example.com', 'active', '2023-11-28'),
(17, 'William Rodriguez', 'william@example.com', 'inactive', '2023-11-28'),
(18, 'Ava Martinez', 'ava@example.com', 'active', '2023-11-28'),
(19, 'Bob Johnson', 'bob@example.com', 'inactive', '2023-11-28'),
(20, 'Emma Brown', 'emma@example.com', 'active', '2023-11-28'),
(21, 'David Lee', 'david@example.com', 'active', '2023-11-28'),
(22, 'Sophia Garcia', 'sophia@example.com', 'inactive', '2023-11-28'),
(23, 'Michael Clark', 'michael@example.com', 'active', '2023-11-28'),
(24, 'Olivia Martin', 'olivia@example.com', 'active', '2023-11-28'),
(25, 'William Rodriguez', 'william@example.com', 'inactive', '2023-11-28'),
(26, 'Ava Martinez', 'ava@example.com', 'active', '2023-11-28'),
(27, 'Bob Johnson', 'bob@example.com', 'inactive', '2023-11-28'),
(28, 'Emma Brown', 'emma@example.com', 'active', '2023-11-28'),
(29, 'David Lee', 'david@example.com', 'active', '2023-11-28'),
(30, 'Sophia Garcia', 'sophia@example.com', 'inactive', '2023-11-28'),
(31, 'Michael Clark', 'michael@example.com', 'active', '2023-11-28'),
(32, 'Olivia Martin', 'olivia@example.com', 'active', '2023-11-28'),
(33, 'William Rodriguez', 'william@example.com', 'inactive', '2023-11-28'),
(34, 'Ava Martinez', 'ava@example.com', 'active', '2023-11-28'),
(35, 'Bob Johnson', 'bob@example.com', 'inactive', '2023-11-28'),
(36, 'Emma Brown', 'emma@example.com', 'active', '2023-11-28'),
(37, 'David Lee', 'david@example.com', 'active', '2023-11-28'),
(38, 'Sophia Garcia', 'sophia@example.com', 'inactive', '2023-11-28'),
(39, 'Michael Clark', 'michael@example.com', 'active', '2023-11-28'),
(40, 'Olivia Martin', 'olivia@example.com', 'active', '2023-11-28'),
(41, 'William Rodriguez', 'william@example.com', 'inactive', '2023-11-28'),
(42, 'Ava Martinez', 'ava@example.com', 'active', '2023-11-28'),
(43, 'Bob Johnson', 'bob@example.com', 'inactive', '2023-11-28'),
(44, 'Emma Brown', 'emma@example.com', 'active', '2023-11-28'),
(45, 'David Lee', 'david@example.com', 'active', '2023-11-28'),
(46, 'Sophia Garcia', 'sophia@example.com', 'inactive', '2023-11-28'),
(47, 'Michael Clark', 'michael@example.com', 'active', '2023-11-28'),
(48, 'Olivia Martin', 'olivia@example.com', 'active', '2023-11-28'),
(49, 'William Rodriguez', 'william@example.com', 'inactive', '2023-11-28'),
(50, 'Ava Martinez', 'ava@example.com', 'active', '2023-11-28'),
(51, 'Bob Johnson', 'bob@example.com', 'inactive', '2023-11-28'),
(52, 'Emma Brown', 'emma@example.com', 'active', '2023-11-28'),
(53, 'David Lee', 'david@example.com', 'active', '2023-11-28'),
(54, 'Sophia Garcia', 'sophia@example.com', 'inactive', '2023-11-28'),
(55, 'Michael Clark', 'michael@example.com', 'active', '2023-11-28'),
(56, 'Olivia Martin', 'olivia@example.com', 'active', '2023-11-28'),
(57, 'William Rodriguez', 'william@example.com', 'inactive', '2023-11-28'),
(58, 'Ava Martinez', 'ava@example.com', 'active', '2023-11-28'),
(59, 'Bob Johnson', 'bob@example.com', 'inactive', '2023-11-28'),
(60, 'Emma Brown', 'emma@example.com', 'active', '2023-11-28'),
(61, 'David Lee', 'david@example.com', 'active', '2023-11-28'),
(62, 'Sophia Garcia', 'sophia@example.com', 'inactive', '2023-11-28'),
(63, 'Michael Clark', 'michael@example.com', 'active', '2023-11-28'),
(64, 'Olivia Martin', 'olivia@example.com', 'active', '2023-11-28'),
(65, 'William Rodriguez', 'william@example.com', 'inactive', '2023-11-28'),
(66, 'Ava Martinez', 'ava@example.com', 'active', '2023-11-28'),
(67, 'Bob Johnson', 'bob@example.com', 'inactive', '2023-11-28'),
(68, 'Emma Brown', 'emma@example.com', 'active', '2023-11-28'),
(69, 'David Lee', 'david@example.com', 'active', '2023-11-28'),
(70, 'Sophia Garcia', 'sophia@example.com', 'inactive', '2023-11-28'),
(71, 'Michael Clark', 'michael@example.com', 'active', '2023-11-28'),
(72, 'Olivia Martin', 'olivia@example.com', 'active', '2023-11-28'),
(73, 'William Rodriguez', 'william@example.com', 'inactive', '2023-11-28'),
(74, 'Ava Martinez', 'ava@example.com', 'active', '2023-11-28'),
(75, 'Bob Johnson', 'bob@example.com', 'inactive', '2023-11-28'),
(76, 'Emma Brown', 'emma@example.com', 'active', '2023-11-28'),
(77, 'David Lee', 'david@example.com', 'active', '2023-11-28'),
(78, 'Sophia Garcia', 'sophia@example.com', 'inactive', '2023-11-28'),
(79, 'Michael Clark', 'michael@example.com', 'active', '2023-11-28'),
(80, 'Olivia Martin', 'olivia@example.com', 'active', '2023-11-28'),
(81, 'William Rodriguez', 'william@example.com', 'inactive', '2023-11-28'),
(82, 'Ava Martinez', 'ava@example.com', 'active', '2023-11-28'),
(83, 'Bob Johnson', 'bob@example.com', 'inactive', '2023-11-28'),
(84, 'Emma Brown', 'emma@example.com', 'active', '2023-11-28'),
(85, 'David Lee', 'david@example.com', 'active', '2023-11-28'),
(86, 'Sophia Garcia', 'sophia@example.com', 'inactive', '2023-11-28'),
(87, 'Michael Clark', 'michael@example.com', 'active', '2023-11-28'),
(88, 'Olivia Martin', 'olivia@example.com', 'active', '2023-11-28'),
(89, 'William Rodriguez', 'william@example.com', 'inactive', '2023-11-28'),
(90, 'Ava Martinez', 'ava@example.com', 'active', '2023-11-28'),
(91, 'Bob Johnson', 'bob@example.com', 'inactive', '2023-11-28'),
(92, 'Emma Brown', 'emma@example.com', 'active', '2023-11-28'),
(93, 'David Lee', 'david@example.com', 'active', '2023-11-28'),
(94, 'Sophia Garcia', 'sophia@example.com', 'inactive', '2023-11-28'),
(95, 'Michael Clark', 'michael@example.com', 'active', '2023-11-28'),
(96, 'Olivia Martin', 'olivia@example.com', 'active', '2023-11-28'),
(97, 'William Rodriguez', 'william@example.com', 'inactive', '2023-11-28'),
(98, 'Ava Martinez', 'ava@example.com', 'active', '2023-11-28'),
(99, 'Bob Johnson', 'bob@example.com', 'inactive', '2023-11-28'),
(100, 'Emma Brown', 'emma@example.com', 'active', '2023-11-28'),
(101, 'David Lee', 'david@example.com', 'active', '2023-11-28'),
(102, 'Sophia Garcia', 'sophia@example.com', 'inactive', '2023-11-28'),
(103, 'Michael Clark', 'michael@example.com', 'active', '2023-11-28'),
(104, 'Olivia Martin', 'olivia@example.com', 'active', '2023-11-28'),
(105, 'William Rodriguez', 'william@example.com', 'inactive', '2023-11-28'),
(106, 'Ava Martinez', 'ava@example.com', 'active', '2023-11-28'),
(107, 'Bob Johnson', 'bob@example.com', 'inactive', '2023-11-28'),
(108, 'Emma Brown', 'emma@example.com', 'active', '2023-11-28'),
(109, 'David Lee', 'david@example.com', 'active', '2023-11-28'),
(110, 'Sophia Garcia', 'sophia@example.com', 'inactive', '2023-11-28'),
(111, 'Michael Clark', 'michael@example.com', 'active', '2023-11-28'),
(112, 'Olivia Martin', 'olivia@example.com', 'active', '2023-11-28'),
(113, 'William Rodriguez', 'william@example.com', 'inactive', '2023-11-28'),
(114, 'Ava Martinez', 'ava@example.com', 'active', '2023-11-28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
