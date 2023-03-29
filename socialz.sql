-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2023 at 07:45 PM
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
-- Database: `assignment er`
--
CREATE DATABASE IF NOT EXISTS `assignment er` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `assignment er`;

-- --------------------------------------------------------

--
-- Table structure for table `sub_cse`
--

CREATE TABLE `sub_cse` (
  `Last_Name` varchar(255) NOT NULL,
  `First_Name` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Salary` int(11) NOT NULL,
  `Graduation` varchar(255) NOT NULL,
  `Join_Date` date NOT NULL,
  `Designation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_cse`
--

INSERT INTO `sub_cse` (`Last_Name`, `First_Name`, `Address`, `Salary`, `Graduation`, `Join_Date`, `Designation`) VALUES
('Sajeeda', 'Afia', 'Azimpur', 40000, 'DU', '2022-12-05', 'Lecturer'),
('Sadek', 'Hasan', 'Uttara', 20000, '', '2019-08-15', 'Staff'),
('Fatema', 'Kaniz', 'Azimpur', 35000, 'DU', '2019-03-12', 'Manager'),
('Alam', 'Khorshed', 'Mohammadpur', 70000, 'CUET', '2020-08-14', 'Assistant Professor'),
('Tarek', 'Masud', 'Mohammadpur', 150000, '', '2014-05-02', 'Associate Professor'),
('Kanchon', 'Muntasir', 'Shahbagh', 100000, 'DU', '2018-04-11', 'Assistant Professor'),
('Farha', 'Sadik', 'Mohammadpur', 45000, 'BUET', '2022-05-11', 'Lecturer'),
('Bashar', 'Sohel', 'Motijheel', 40000, 'BUET', '2022-12-25', 'Lecturer'),
('Saha', 'Trina', 'Narayanganj', 80000, 'NSU', '2020-06-12', 'Assistant Professor');
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"socialz\",\"table\":\"user_info\"},{\"db\":\"socialz\",\"table\":\"friends\"},{\"db\":\"socialz\",\"table\":\"status_comments\"},{\"db\":\"socialz\",\"table\":\"status\"},{\"db\":\"socialz\",\"table\":\"likes\"},{\"db\":\"socialz\",\"table\":\"pending_request\"},{\"db\":\"socialz\",\"table\":\"message\"},{\"db\":\"socialz\",\"table\":\"conversion\"},{\"db\":\"users_info\",\"table\":\"users\"},{\"db\":\"assignment er\",\"table\":\"sub_cse\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Dumping data for table `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('socialz', 'conversion', 'friend_one'),
('socialz', 'friends', 'from_friend'),
('socialz', 'likes', 'liked_by'),
('socialz', 'message', 'from_friend'),
('socialz', 'pending_request', 'from_friend'),
('socialz', 'status', 'status_owner'),
('socialz', 'status_comments', 'comment_owner');

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'assignment er', 'sub_cse', '{\"sorted_col\":\"`sub_cse`.`Salary` DESC\"}', '2023-03-17 15:59:32'),
('root', 'products', 'shirts', '{\"CREATE_TIME\":\"2023-02-09 10:01:46\",\"col_order\":[1,0,2,3,4],\"col_visib\":[1,1,1,1,1]}', '2023-02-09 14:11:54'),
('root', 'socialz', 'status', '{\"sorted_col\":\"`status`.`status_date` DESC\"}', '2023-03-29 15:28:51');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-03-29 17:45:29', '{\"Console\\/Mode\":\"show\",\"Console\\/Height\":251.98566699999998}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `restapi`
--
CREATE DATABASE IF NOT EXISTS `restapi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `restapi`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add users', 7, 'add_users'),
(26, 'Can change users', 7, 'change_users'),
(27, 'Can delete users', 7, 'delete_users'),
(28, 'Can view users', 7, 'view_users'),
(29, 'Can add posts', 8, 'add_posts'),
(30, 'Can change posts', 8, 'change_posts'),
(31, 'Can delete posts', 8, 'delete_posts'),
(32, 'Can view posts', 8, 'view_posts'),
(33, 'Can add comments', 9, 'add_comments'),
(34, 'Can change comments', 9, 'change_comments'),
(35, 'Can delete comments', 9, 'delete_comments'),
(36, 'Can view comments', 9, 'view_comments');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$wuCUsBikTtrUGIvDgfIFuJ$v/kFnmaEdKVo6PLxsatQqr9msk7lm7OwT9SB6keYhkY=', '2023-03-05 17:38:47.210703', 1, 'admin', '', '', 'shaongit@gmail.com', 1, 1, '2023-03-01 16:54:35.785521'),
(2, 'pbkdf2_sha256$260000$UwhLRlNu54MDBGEyAJiqHH$eg6g7dcHd/6jNByeaFcPov9fZk/sQVEEu1zQ3wgnuDw=', NULL, 0, 'demo26', 'demo', 'demo26', 'demo26@gmail.com', 0, 1, '2023-03-01 17:26:14.841003'),
(3, 'pbkdf2_sha256$260000$ktDc4xFWT69FYF9BScWonu$05R15b3UsK/EBom495KqS/ZAX2kaw8WY9VzttZnmxts=', NULL, 0, 'adadad', 'adadad', 'dadadadad', 'dada@gmail.com', 0, 1, '2023-03-09 05:21:44.687603'),
(4, 'pbkdf2_sha256$260000$98oKuTeP6P05pZygeipdK3$j/7Ei7Q+j5o+Iz7whqKTYllLGKjLLQTfZWsCneper2Q=', NULL, 0, 'demo121', 'demo121', 'demo121', 'demo121@gmail.com', 0, 1, '2023-03-09 05:23:06.396791');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(1, 'rabbi', 'shaongit'),
(2, '', ''),
(3, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-03-01 16:55:11.343769', '1', 'posts object (1)', 1, '[{\"added\": {}}]', 8, 1),
(2, '2023-03-01 16:55:16.942858', '035d0c77-7cd0-48f8-ab08-18dd3593ab49', 'comments object (035d0c77-7cd0-48f8-ab08-18dd3593ab49)', 1, '[{\"added\": {}}]', 9, 1),
(3, '2023-03-01 16:56:29.201376', '2', 'posts object (2)', 1, '[{\"added\": {}}]', 8, 1),
(4, '2023-03-01 16:59:48.385562', '1432f432-5629-41ed-b39b-8863cfb4fd30', 'comments object (1432f432-5629-41ed-b39b-8863cfb4fd30)', 1, '[{\"added\": {}}]', 9, 1),
(5, '2023-03-01 17:40:00.455687', '4', 'comments object (4)', 1, '[{\"added\": {}}]', 9, 1),
(6, '2023-03-01 17:40:12.241386', '5', 'comments object (5)', 1, '[{\"added\": {}}]', 9, 1),
(7, '2023-03-01 17:40:21.246558', '5', 'comments object (5)', 3, '', 9, 1),
(8, '2023-03-01 17:40:24.267311', '4', 'comments object (4)', 3, '', 9, 1),
(9, '2023-03-01 17:41:10.590376', '6', 'comments object (6)', 1, '[{\"added\": {}}]', 9, 1),
(10, '2023-03-01 17:41:25.730125', '7', 'comments object (7)', 1, '[{\"added\": {}}]', 9, 1),
(11, '2023-03-01 17:49:42.322449', '8', 'comments object (8)', 1, '[{\"added\": {}}]', 9, 1),
(12, '2023-03-01 17:55:58.988322', '12', 'comments object (12)', 1, '[{\"added\": {}}]', 9, 1),
(13, '2023-03-01 17:56:06.211886', '12', 'comments object (12)', 3, '', 9, 1),
(14, '2023-03-01 17:56:06.213888', '8', 'comments object (8)', 3, '', 9, 1),
(15, '2023-03-01 17:56:06.214888', '7', 'comments object (7)', 3, '', 9, 1),
(16, '2023-03-01 17:56:06.215889', '6', 'comments object (6)', 3, '', 9, 1),
(17, '2023-03-01 17:56:13.601602', '13', 'comments object (13)', 1, '[{\"added\": {}}]', 9, 1),
(18, '2023-03-01 17:56:30.879277', '14', 'comments object (14)', 1, '[{\"added\": {}}]', 9, 1),
(19, '2023-03-02 14:30:10.698302', '15', 'comments object (15)', 2, '[{\"changed\": {\"fields\": [\"Comment\"]}}]', 9, 1),
(20, '2023-03-02 14:30:23.362793', '13', 'comments object (13)', 2, '[{\"changed\": {\"fields\": [\"Comment_ID\", \"Comment\"]}}]', 9, 1),
(21, '2023-03-02 14:30:29.187084', '13', 'comments object (13)', 2, '[{\"changed\": {\"fields\": [\"Comment_ID\"]}}]', 9, 1),
(22, '2023-03-02 14:30:35.269600', '15', 'comments object (15)', 2, '[{\"changed\": {\"fields\": [\"Comment_ID\"]}}]', 9, 1),
(23, '2023-03-02 14:30:40.451301', '13', 'comments object (13)', 2, '[{\"changed\": {\"fields\": [\"Comment_ID\"]}}]', 9, 1),
(24, '2023-03-02 14:31:31.393602', '2', '2', 2, '[{\"changed\": {\"fields\": [\"Post title\", \"Post des\"]}}]', 8, 1),
(25, '2023-03-02 14:31:50.918350', '1', '1', 2, '[{\"changed\": {\"fields\": [\"Post title\", \"Post des\"]}}]', 8, 1),
(26, '2023-03-02 14:36:43.091651', '3', '3', 1, '[{\"added\": {}}]', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'restapi', 'comments'),
(8, 'restapi', 'posts'),
(7, 'restapi', 'users'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-03-01 16:54:09.613063'),
(2, 'auth', '0001_initial', '2023-03-01 16:54:09.772200'),
(3, 'admin', '0001_initial', '2023-03-01 16:54:09.812236'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-03-01 16:54:09.818242'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-03-01 16:54:09.824248'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-03-01 16:54:09.869289'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-03-01 16:54:09.889306'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-03-01 16:54:09.897314'),
(9, 'auth', '0004_alter_user_username_opts', '2023-03-01 16:54:09.903319'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-03-01 16:54:09.918333'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-03-01 16:54:09.920335'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-03-01 16:54:09.927341'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-03-01 16:54:09.936349'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-03-01 16:54:09.944357'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-03-01 16:54:09.953365'),
(16, 'auth', '0011_update_proxy_permissions', '2023-03-01 16:54:09.960371'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-03-01 16:54:09.969379'),
(18, 'sessions', '0001_initial', '2023-03-01 16:54:09.984393');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('ndhnt9s2y48l87o4p6hads7sl3r57ul0', '.eJxVjE0OwiAYBe_C2hCgyI9L9z0DefCBVA1NSrsy3l2bdKHbNzPvxQK2tYat5yVMxC5MstPvFpEeue2A7mi3mae5rcsU-a7wg3Y-zpSf18P9O6jo9VsXbawpVkt4uLOVtgCCvEdOiZImV0RGdArG-KJQpBqc18qTxpCTFez9AfnFOHI:1pYsJr:sSG7j6fqsNijSJBz_dlrcD4nuWFszWF9_QZ2E9A8XbI', '2023-03-19 17:38:47.212705'),
('tf6uo84v1frtylmqbaoz8p6z46kl7bpi', '.eJxVjE0OwiAYBe_C2hCgyI9L9z0DefCBVA1NSrsy3l2bdKHbNzPvxQK2tYat5yVMxC5MstPvFpEeue2A7mi3mae5rcsU-a7wg3Y-zpSf18P9O6jo9VsXbawpVkt4uLOVtgCCvEdOiZImV0RGdArG-KJQpBqc18qTxpCTFez9AfnFOHI:1pXPjE:1hv2p80KY4dLZLtYJ4BwWTeZcRX7KOJ6TkzFdMu2M1w', '2023-03-15 16:54:56.126939');

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
-- Table structure for table `restapi_comments`
--

CREATE TABLE `restapi_comments` (
  `pkid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `Date` datetime(6) NOT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `comment` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restapi_comments`
--

INSERT INTO `restapi_comments` (`pkid`, `id`, `user_id`, `Date`, `post_id`, `comment`) VALUES
(13, 15, 1, '2023-03-02 14:30:40.450300', 2, 'Testing resource hierarchy'),
(15, 15, 1, '2023-03-02 14:30:35.268599', 3, 'Testing resource hierarchy');

-- --------------------------------------------------------

--
-- Table structure for table `restapi_posts`
--

CREATE TABLE `restapi_posts` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `Date` datetime(6) NOT NULL,
  `post_title` longtext NOT NULL,
  `post_des` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restapi_posts`
--

INSERT INTO `restapi_posts` (`id`, `user_id`, `Date`, `post_title`, `post_des`) VALUES
(1, 1, '2023-03-02 14:31:50.916349', 'Renovate is building robots to install roof shingles', 'Roofing isn’t a glamorous job. In fact, one could reasonably argue that it checks off the classic three Ds of automation — dull, dirty and dangerous — with aplomb. It’s a prime candidate for transformation at the hands of some clever roboticists. It always ranks at or toward the top of the list of most dangerous construction jobs, and there are a lot of roofs in the world — every human who wants one should have one.'),
(2, 1, '2023-03-02 14:31:31.392602', 'Google’s Sameer Samat on ecosystems, regulation and competition', 'Android was, predictably, everywhere at Mobile World Congress. At a show where Apple has no public-facing presence, Google’s mobile operating system is almost entirely ubiquitous. As in past years, the company also set up a sprawling outdoor booth between halls. This time, the focus was on interoperability and ecosystem'),
(3, 1, '2023-03-02 14:36:43.090650', 'Snapchat will now let you pause your Snap Streaks', 'Maintaining Snap Streaks — where you send a snap to your friend once every 24 hours — is really important to a lot of Snapchat users. To bank on that fact, the company is now allowing users to pause their Snap streaks, so they don’t have to worry about breaking them if they decide to not access the app for a while.'),
(8, 4, '2023-03-09 05:25:34.437163', 'areu there', 'This is a test porst');

-- --------------------------------------------------------

--
-- Table structure for table `restapi_users`
--

CREATE TABLE `restapi_users` (
  `id` bigint(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `conversion`
--
ALTER TABLE `conversion`
  ADD PRIMARY KEY (`conversion_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `restapi_comments`
--
ALTER TABLE `restapi_comments`
  ADD PRIMARY KEY (`pkid`),
  ADD KEY `restapi_comments_user_id_7c1884a8_fk_auth_user_id` (`user_id`),
  ADD KEY `restapi_comments_post_id_9a44d771_fk_restapi_posts_id` (`post_id`);

--
-- Indexes for table `restapi_posts`
--
ALTER TABLE `restapi_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restapi_users`
--
ALTER TABLE `restapi_users`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conversion`
--
ALTER TABLE `conversion`
  MODIFY `conversion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `restapi_comments`
--
ALTER TABLE `restapi_comments`
  MODIFY `pkid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `restapi_posts`
--
ALTER TABLE `restapi_posts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `restapi_users`
--
ALTER TABLE `restapi_users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

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

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `restapi_comments`
--
ALTER TABLE `restapi_comments`
  ADD CONSTRAINT `restapi_comments_post_id_9a44d771_fk_restapi_posts_id` FOREIGN KEY (`post_id`) REFERENCES `restapi_posts` (`id`),
  ADD CONSTRAINT `restapi_comments_user_id_7c1884a8_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
--
-- Database: `socialz`
--
CREATE DATABASE IF NOT EXISTS `socialz` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `socialz`;

-- --------------------------------------------------------

--
-- Table structure for table `conversion`
--

CREATE TABLE `conversion` (
  `conversion_id` int(11) NOT NULL,
  `friend_one` varchar(20) NOT NULL,
  `friend_two` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
('rabbi', 'begumRokeya', '2023-03-29 17:41:07'),
('rabbi', 'rohan', '2023-03-29 15:54:31'),
('rabbi', 'shaongit', '2023-03-29 17:39:53'),
('rabbit', 'begumRokeya', '2023-03-29 17:40:59');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `likes_id` int(11) NOT NULL,
  `liked_by` varchar(255) NOT NULL,
  `status_id` int(11) NOT NULL,
  `Time` datetime NOT NULL
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

-- --------------------------------------------------------

--
-- Table structure for table `pending_request`
--

CREATE TABLE `pending_request` (
  `from_friend` varchar(255) NOT NULL,
  `to_friend` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(16, 'rohan', 'Thank you everyone', '2023-03-29 15:55:18', 'images/status/gray.jpg'),
(17, 'begumRokeya', 'Chinso amay babaura?', '2023-03-29 17:41:40', 'images/status/Begum-Rokeya.jpg');

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
  `password` varchar(200) NOT NULL,
  `profile_pic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`username`, `first_name`, `last_name`, `gender`, `email`, `phone_no`, `date_of_birth`, `address`, `password`, `profile_pic`) VALUES
('agga', 'fgad', 'gag', 'Male', 'rahelrabbihasan@gmail.com', 1518652714, '2023-03-06', 'forikabadh', '2432453', ''),
('begumRokeya', 'Begum', 'Rokeya', 'Male', 'begum_nowonder@gmail.com', 929329323, '1942-03-06', 'Dhaka', '123456', 'images/profile/Begum-Rokeya.jpg'),
('demo26', 'adad', 'adad', 'ad', 'ea@gmail.com', 2432453, '2222-02-22', 'adad', 'dadad', ''),
('gftygf', 'fhgv', 'jhvgcfg', 'Male', 'rahelrabbihasan@gmail.com', 1518652714, '2000-12-03', 'forikabadh', '1234567', ''),
('rabbi', 'rabbi', 'hasan', 'Male', 'rahelrabbihasan@gmail.com', 1518652714, '2001-03-15', 'forikabadh', '123456', 'images/profile/rabbi.jpg'),
('rabbit', 'hgfg', 'kjbjb', 'Male', 'hghv@gmail.com', 1518652714, '2005-12-12', 'forikabadh', '12345678', ''),
('rohan', 'rohan', 'ahmed', 'Male', 'rahelrabbihasan@gmail.com', 1518652714, '2003-05-06', 'forikabadh', '12345678', 'images/status/pic.PNG'),
('shaongit', 'MD', 'Sha', 'Male', 'shaongit@gmail.com', 18343212, '2000-07-11', 'Dhaka', '12345', '');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`likes_id`),
  ADD KEY `liked_by` (`liked_by`),
  ADD KEY `status_id` (`status_id`);

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
  ADD KEY `from_friend` (`from_friend`),
  ADD KEY `to_friend` (`to_friend`);

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
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `likes_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `status_comments`
--
ALTER TABLE `status_comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

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
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`liked_by`) REFERENCES `user_info` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `pending_request_ibfk_2` FOREIGN KEY (`to_friend`) REFERENCES `user_info` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `users_info`
--
CREATE DATABASE IF NOT EXISTS `users_info` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `users_info`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `fistname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(200) NOT NULL,
  `id` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`fistname`, `lastname`, `email`, `id`, `password`, `address`) VALUES
('MD', 'Siam', 'shaongit@gmail.com', 1, '123', 'adadadad'),
(NULL, 'rssakib', 'rssakib@gmail.com', 2, '123', 'adadadad'),
(NULL, '', '', 3, '0', ''),
('adad', 'ada', 'ada', 4, 'adad', 'adadad'),
('adad', 'ada', 'ada', 5, 'adad', 'adadad'),
('Rs', 'Sakib', 'rssalib@gmail.com', 6, '123', 'Dhaka ');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
