-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2023 at 07:58 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `socialz`
--

-- --------------------------------------------------------

--
-- Table structure for table `conversion`
--

CREATE TABLE `conversion` (
  `conversion_id` int(11) NOT NULL,
  `friend_one` varchar(20) NOT NULL,
  `firend_two` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `conversion`
--

INSERT INTO `conversion` (`conversion_id`, `friend_one`, `firend_two`) VALUES
(1, '', ''),
(2, '', ''),
(3, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `from_friend` varchar(11) NOT NULL,
  `to_friend` varchar(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `from_friend` varchar(11) NOT NULL,
  `to_friend` varchar(11) NOT NULL,
  `msg_desc` text NOT NULL,
  `msg_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `conversion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `from_friend`, `to_friend`, `msg_desc`, `msg_time`, `conversion_id`) VALUES
(1, 'rabbi', 'siam', 'hi ', '2023-03-16 19:30:03', 1),
(2, 'siam', 'rabbi', 'hello', '2023-03-16 19:30:03', 1),
(3, 'rabbi', 'sakib', 'ki re ki koros', '2023-03-16 19:49:38', 2),
(4, 'sakib', 'rabbi', 'gf ar ste kotha koi . toi ki koros', '2023-03-16 19:49:38', 2);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status_id` int(11) NOT NULL,
  `status_owner` varchar(11) NOT NULL,
  `status_content` text NOT NULL,
  `status_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status_id`, `status_owner`, `status_content`, `status_date`) VALUES
(3, 'agga', 'adad', '2023-03-15 18:27:45'),
(4, 'agga', 'how are u doing ', '2023-03-15 18:28:07'),
(5, 'agga', 'how are u doing ', '2023-03-15 18:28:47'),
(6, 'rabbi', 'hello it my first status', '2023-03-16 19:10:39');

-- --------------------------------------------------------

--
-- Table structure for table `status_comments`
--

CREATE TABLE `status_comments` (
  `status_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `comment_owner` varchar(11) NOT NULL,
  `comment_desc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `username` varchar(15) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone_no` int(15) NOT NULL,
  `date_of_birth` date NOT NULL,
  `address` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`username`, `first_name`, `last_name`, `gender`, `email`, `phone_no`, `date_of_birth`, `address`, `password`) VALUES
('agga', 'fgad', 'gag', 'Male', 'rahelrabbihasan@gmail.com', 1518652714, '2023-03-06', 'forikabadh', '2432453'),
('demo26', 'adad', 'adad', 'ad', 'ea@gmail.com', 2432453, '2222-02-22', 'adad', 'dadad'),
('gftygf', 'fhgv', 'jhvgcfg', 'Male', 'rahelrabbihasan@gmail.com', 1518652714, '2000-12-03', 'forikabadh', '1234567'),
('rabbi', 'rabbi', 'hasan', 'Male', 'rahelrabbihasan@gmail.com', 1518652714, '2001-03-15', 'forikabadh', '123456'),
('rabbit', 'hgfg', 'kjbjb', 'Male', 'hghv@gmail.com', 1518652714, '2005-12-12', 'forikabadh', '12345678'),
('rohan', 'rohan', 'ahmed', 'Male', 'rahelrabbihasan@gmail.com', 1518652714, '2003-05-06', 'forikabadh', '12345678'),
('shaongit', 'MD', 'Sha', 'Male', 'shaongit@gmail.com', 18343212, '2000-07-11', 'Dhaka', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `conversion`
--
ALTER TABLE `conversion`
  ADD PRIMARY KEY (`conversion_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `status_comments`
--
ALTER TABLE `status_comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `conversion`
--
ALTER TABLE `conversion`
  MODIFY `conversion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `status_comments`
--
ALTER TABLE `status_comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
