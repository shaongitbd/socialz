-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2023 at 02:34 PM
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
-- Table structure for table `comment_likes`
--

CREATE TABLE `comment_likes` (
  `comment_like_id` int(11) NOT NULL,
  `liked_by` varchar(255) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comment_likes`
--

INSERT INTO `comment_likes` (`comment_like_id`, `liked_by`, `comment_id`, `time`) VALUES
(1, 'rabbi', 20, '2023-05-08 10:11:27'),
(2, 'sakib', 21, '2023-05-08 12:24:50'),
(3, 'rabbi', 21, '2023-05-08 12:25:22');

-- --------------------------------------------------------

--
-- Table structure for table `conversion`
--

CREATE TABLE `conversion` (
  `conversion_id` int(11) NOT NULL,
  `friend_one` varchar(20) NOT NULL,
  `friend_two` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `conversion`
--

INSERT INTO `conversion` (`conversion_id`, `friend_one`, `friend_two`) VALUES
(4, 'rabbi', 'begumRokeya'),
(5, 'rabbi', 'sakib'),
(21, 'rabbi', 'tasin'),
(23, 'rabbi', 'akashhalder');

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `from_friend` varchar(11) NOT NULL,
  `to_friend` varchar(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`from_friend`, `to_friend`, `added_date`) VALUES
('akashhalder', 'agga', '2023-05-08 11:28:28'),
('akashhalder', 'begumRokeya', '2023-05-07 19:12:53'),
('akashhalder', 'rabbi', '2023-05-08 12:27:09'),
('begumRokeya', 'akashhalder', '2023-05-07 19:12:53'),
('begumRokeya', 'nazmul', '2023-05-07 19:06:59'),
('begumRokeya', 'sakib', '2023-05-07 13:46:22'),
('fahimfaisal', 'rabbi', '2023-05-08 12:31:00'),
('nazmul', 'begumRokeya', '2023-05-07 19:06:59'),
('nazmul', 'rabbi', '2023-05-08 12:31:58'),
('rabbi', 'akashhalder', '2023-05-08 12:27:09'),
('rabbi', 'fahimfaisal', '2023-05-08 12:31:00'),
('rabbi', 'nazmul', '2023-05-08 12:31:58'),
('rabbi', 'sakib', '2023-05-08 12:25:05'),
('rabbi', 'tasin', '2023-05-08 11:44:02'),
('sakib', 'begumRokeya', '2023-05-07 13:46:22'),
('sakib', 'rabbi', '2023-05-08 12:25:05'),
('shaongit', 'tasin', '2023-05-08 11:01:15'),
('tasin', 'rabbi', '2023-05-08 11:44:02'),
('tasin', 'shaongit', '2023-05-08 11:01:15');

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
(7, 'rabbi', 'begumRokeya', 'Hello grandma.... ', '2023-03-29 19:20:32', 4),
(9, 'begumRokeya', 'rabbi', 'How are u my son?', '2023-03-29 20:14:18', 4),
(17, 'rabbi', 'sakib', 'kya hal', '2023-03-29 21:34:00', 5),
(19, 'rabbi', 'begumRokeya', 'u still alive? O_o', '2023-03-30 00:12:55', 4),
(21, 'begumRokeya', 'rabbi', '\r\n\' \'A lion is stronger than a man, but it does not enable him to dominate the human race. You have neglected the duty you owe to yourselves, and you have lost your natural rights by shutting your eyes to your own interests.', '2023-04-04 02:48:40', 4),
(28, 'rabbi', 'begumRokeya', 'What is your point?', '2023-04-03 23:49:17', 4),
(34, 'rabbi', 'sakib', 'a', '2023-04-04 02:47:00', 5),
(35, 'rabbi', 'sakib', 'Ki koros?', '2023-04-04 02:47:49', 5),
(36, 'rabbi', 'sakib', 'kire ?', '2023-04-04 07:57:43', 5),
(46, 'rabbi', 'tasin', 'a', '2023-05-07 19:47:27', 21),
(47, 'rabbi', 'tasin', 'a', '2023-05-07 19:47:50', 21),
(49, 'rabbi', 'akashhalder', 'a', '2023-05-07 19:52:05', 23),
(50, 'rabbi', 'begumRokeya', 'nice work', '2023-05-08 10:22:10', 4),
(51, 'rabbi', 'tasin', '', '2023-05-08 10:34:49', 21);

-- --------------------------------------------------------

--
-- Table structure for table `pending_request`
--

CREATE TABLE `pending_request` (
  `from_friend` varchar(255) NOT NULL,
  `to_friend` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `request_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pending_request`
--

INSERT INTO `pending_request` (`from_friend`, `to_friend`, `status`, `request_by`) VALUES
('agga', 'akashhalder', 'accept', 'agga');

--
-- Triggers `pending_request`
--
DELIMITER $$
CREATE TRIGGER `friend_accept` BEFORE UPDATE ON `pending_request` FOR EACH ROW insert into `friends`(from_friend, to_friend) VALUES (old.from_friend, old.to_friend)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `friend_accept_2` BEFORE UPDATE ON `pending_request` FOR EACH ROW insert into `friends`(from_friend, to_friend) VALUES (old.to_friend, old.from_friend)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status_id` int(11) NOT NULL,
  `status_owner` varchar(11) NOT NULL,
  `status_content` text NOT NULL,
  `status_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status_id`, `status_owner`, `status_content`, `status_date`, `status_image`) VALUES
(3, 'agga', 'adad', '2023-03-15 18:27:45', ''),
(4, 'agga', 'how are u doing ', '2023-03-15 18:28:07', ''),
(5, 'agga', 'how are u doing ', '2023-03-15 18:28:47', ''),
(6, 'rabbi', 'hello it my first status', '2023-03-16 19:10:39', ''),
(7, 'demo26', 'adada', '2023-03-28 01:30:49', ''),
(8, 'rabbi', 'adada', '2023-03-28 01:59:23', ''),
(9, 'rabbi', 'How is everyone?', '2023-03-28 01:59:35', ''),
(10, 'rabbi', 'ajdadad', '2023-03-29 14:19:19', ''),
(11, 'rabbi', 'ajdadad', '2023-03-29 14:21:01', ''),
(12, 'rabbi', 'adada', '2023-03-29 14:22:17', ''),
(13, 'rabbi', 'adadad', '2023-03-29 14:36:47', 'images/status/okpng'),
(14, 'rabbi', 'adad', '2023-03-29 14:37:29', 'images/status/pic.PNG'),
(15, 'rabbi', 'How are u doing  right now?', '2023-03-29 15:36:55', 'images/status/pic.PNG'),
(16, 'sakib', 'Thank you everyone', '2023-03-29 15:55:18', 'images/status/gray.jpg'),
(17, 'begumRokeya', 'Chinso amay babaura?', '2023-03-29 17:41:40', 'images/status/Begum-Rokeya.jpg'),
(19, 'agga', 'what are u doin?', '2023-05-07 01:25:46', 'images/status/benz.png'),
(20, 'sakib', '', '2023-05-07 03:02:14', ''),
(21, 'sakib', 'adad', '2023-05-07 03:26:32', ''),
(22, 'sakib', 'the dark night', '2023-05-07 18:41:16', 'images/status/lane_night_dark_139408_2560x1080.jpg'),
(23, 'sakib', 'aa', '2023-05-07 18:47:04', 'images/status/gray.jpg'),
(24, 'fahimfaisal', 'noukate bose chill pill', '2023-05-07 19:16:59', 'images/status/14324482_1096814920355309_2793467389593769525_o.jpg'),
(25, 'tasin', 'vabuk mon', '2023-05-07 19:18:47', 'images/status/130268413_1808389805976564_7728801332392666972_n.jpg'),
(26, 'rabbi', ':) great day ', '2023-05-07 19:20:13', 'images/status/335416615_1221502272085350_4866266929855674073_n.jpg'),
(27, 'sakib', 'picnic day', '2023-05-07 19:22:15', 'images/status/323342984_738194827742391_9176065270690522609_n.jpg'),
(28, 'akashhalder', 'শীত চলে গেলো যে,\r\nঢাকা ছেড়ে মুন্সিগঞ্জে।', '2023-05-07 19:23:50', 'images/status/329422656_548396793979576_1064017527336175259_n.jpg'),
(29, 'akashhalder', 'ami adhar alor josna', '2023-05-08 12:29:29', 'images/status/342537319_136888182611861_9080054569899670518_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `status_comments`
--

CREATE TABLE `status_comments` (
  `status_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `comment_owner` varchar(11) NOT NULL,
  `comment_desc` varchar(11) NOT NULL,
  `comment_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status_comments`
--

INSERT INTO `status_comments` (`status_id`, `comment_id`, `comment_owner`, `comment_desc`, `comment_date`) VALUES
(26, 20, 'rabbi', 'a', '2023-05-08 09:11:57'),
(27, 21, 'sakib', 'a', '2023-05-08 12:24:48');

-- --------------------------------------------------------

--
-- Table structure for table `status_likes`
--

CREATE TABLE `status_likes` (
  `likes_id` int(11) NOT NULL,
  `liked_by` varchar(255) NOT NULL,
  `status_id` int(11) NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status_likes`
--

INSERT INTO `status_likes` (`likes_id`, `liked_by`, `status_id`, `Time`) VALUES
(1, 'sakib', 15, '2023-04-04 08:49:54'),
(6, 'rabbi', 26, '0000-00-00 00:00:00'),
(7, 'rabbi', 25, '0000-00-00 00:00:00'),
(8, 'rabbi', 24, '0000-00-00 00:00:00');

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
  `password` varchar(200) NOT NULL,
  `profile_pic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`username`, `first_name`, `last_name`, `gender`, `email`, `phone_no`, `date_of_birth`, `address`, `password`, `profile_pic`) VALUES
('agga', 'fgad', 'gag', 'Male', 'rahelrabbihasan@gmail.com', 1518652714, '2023-03-06', 'forikabadh', '243c', ''),
('akashhalder', 'Akash', 'Halder', 'male', 'akashhalder@gmail.com', 142852714, '2000-03-09', 'Barisal', '12345678', 'images/profile/342537319_136888182611861_9080054569899670518_n.jpg'),
('begumRokeya', 'Begum', 'Rokeya', 'Male', 'begum_nowonder@gmail.com', 929329323, '1942-03-06', 'Dhaka', '123456', 'images/profile/Begum-Rokeya.jpg'),
('demo26', 'adad', 'adad', 'ad', 'ea@gmail.com', 2432453, '2222-02-22', 'adad', 'dadad', ''),
('fahimfaisal', 'Fahim', 'Faisal', 'male', 'fahimfaisal', 17637422, '2000-03-05', 'Gabtoli,Savar', '123456', 'images/profile/128806838_105240414783274_1895380407150855437_n.jpg'),
('gftygf', 'fhgv', 'jhvgcfg', 'Male', 'rahelrabbihasan@gmail.com', 1518652714, '2000-12-03', 'forikabadh', '1234567', ''),
('nazmul', 'nazmul', 'Huda', 'male', 'nazmulhuda202@gmail.com', 151852714, '1999-11-11', 'sahanbag, GopalGanj', '12345678', 'images/profile/344391006_182364551388519_481637377131017651_n.jpg'),
('rabbi', 'rabbi', 'hasan', 'Male', 'rahelrabbihasan@gmail.com', 1518652714, '2001-03-15', 'forikabadh', '123456', 'images/profile/rabbi.jpg'),
('rabbit', 'hgfg', 'kjbjb', 'Male', 'hghv@gmail.com', 1518652714, '2005-12-12', 'forikabadh', '12345678', ''),
('sakib', 'sakib', 'ahmed', 'Male', 'sakib_khan@gmail.com', 1518652714, '2003-05-06', 'forikabadh', '12345678', 'images/profile/sakib.jpg'),
('shaongit', 'MD', 'Sha', 'Male', 'shaongit@gmail.com', 18343212, '2000-07-11', 'Dhaka', '12345', ''),
('tasin', 'Tasin', 'Mahmud', 'male', 'tashinmahmud@gmail.com', 18387783, '1999-03-03', 'Barisal', '12345678', 'images/profile/142306845_1847615768720634_3739833070165101284_n.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment_likes`
--
ALTER TABLE `comment_likes`
  ADD PRIMARY KEY (`comment_like_id`),
  ADD KEY `liked_by` (`liked_by`),
  ADD KEY `comment_id` (`comment_id`);

--
-- Indexes for table `conversion`
--
ALTER TABLE `conversion`
  ADD PRIMARY KEY (`conversion_id`),
  ADD KEY `friend_two` (`friend_two`),
  ADD KEY `friend_one` (`friend_one`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`from_friend`,`to_friend`),
  ADD KEY `to_friend` (`to_friend`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `conversion_id` (`conversion_id`),
  ADD KEY `from_friend` (`from_friend`),
  ADD KEY `to_friend` (`to_friend`);

--
-- Indexes for table `pending_request`
--
ALTER TABLE `pending_request`
  ADD PRIMARY KEY (`from_friend`,`to_friend`),
  ADD KEY `to_friend` (`to_friend`),
  ADD KEY `request_by` (`request_by`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`),
  ADD KEY `status_owner` (`status_owner`);

--
-- Indexes for table `status_comments`
--
ALTER TABLE `status_comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `comment_owner` (`comment_owner`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `status_likes`
--
ALTER TABLE `status_likes`
  ADD PRIMARY KEY (`likes_id`),
  ADD KEY `liked_by` (`liked_by`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment_likes`
--
ALTER TABLE `comment_likes`
  MODIFY `comment_like_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `conversion`
--
ALTER TABLE `conversion`
  MODIFY `conversion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `status_comments`
--
ALTER TABLE `status_comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `status_likes`
--
ALTER TABLE `status_likes`
  MODIFY `likes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment_likes`
--
ALTER TABLE `comment_likes`
  ADD CONSTRAINT `comment_likes_ibfk_2` FOREIGN KEY (`liked_by`) REFERENCES `user_info` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comment_likes_ibfk_3` FOREIGN KEY (`comment_id`) REFERENCES `status_comments` (`comment_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `conversion`
--
ALTER TABLE `conversion`
  ADD CONSTRAINT `conversion_ibfk_1` FOREIGN KEY (`friend_two`) REFERENCES `user_info` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `conversion_ibfk_2` FOREIGN KEY (`friend_one`) REFERENCES `user_info` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `friends`
--
ALTER TABLE `friends`
  ADD CONSTRAINT `friends_ibfk_1` FOREIGN KEY (`from_friend`) REFERENCES `user_info` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `friends_ibfk_2` FOREIGN KEY (`to_friend`) REFERENCES `user_info` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`conversion_id`) REFERENCES `conversion` (`conversion_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `message_ibfk_2` FOREIGN KEY (`from_friend`) REFERENCES `user_info` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `message_ibfk_3` FOREIGN KEY (`to_friend`) REFERENCES `user_info` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pending_request`
--
ALTER TABLE `pending_request`
  ADD CONSTRAINT `pending_request_ibfk_1` FOREIGN KEY (`from_friend`) REFERENCES `user_info` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pending_request_ibfk_2` FOREIGN KEY (`to_friend`) REFERENCES `user_info` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pending_request_ibfk_3` FOREIGN KEY (`request_by`) REFERENCES `user_info` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `status`
--
ALTER TABLE `status`
  ADD CONSTRAINT `status_ibfk_1` FOREIGN KEY (`status_owner`) REFERENCES `user_info` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `status_comments`
--
ALTER TABLE `status_comments`
  ADD CONSTRAINT `status_comments_ibfk_1` FOREIGN KEY (`comment_owner`) REFERENCES `user_info` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `status_comments_ibfk_2` FOREIGN KEY (`comment_owner`) REFERENCES `user_info` (`username`),
  ADD CONSTRAINT `status_comments_ibfk_3` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `status_likes`
--
ALTER TABLE `status_likes`
  ADD CONSTRAINT `status_likes_ibfk_1` FOREIGN KEY (`liked_by`) REFERENCES `user_info` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `status_likes_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
