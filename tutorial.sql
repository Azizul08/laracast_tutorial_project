-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2020 at 07:25 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tutorial`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_12_29_144116_create_projects_table', 1),
(4, '2020_04_04_133154_create_tasks_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `owner_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `owner_id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Azizul', 'H', '2020-04-06 11:54:24', '2020-04-10 03:48:20'),
(2, 1, 'Mr. Jabbari', 'Hello Jabbari', '2020-04-06 11:56:05', '2020-04-08 12:08:16'),
(3, 2, 'Sagor', 'Hello Sagor', '2020-04-06 11:58:03', '2020-04-06 11:58:03'),
(4, 2, 'ASD', 'ZZZZZZZZZZZZZZZ', '2020-04-06 12:15:09', '2020-04-06 12:15:09'),
(5, 2, 'WWW', 'ZZZZZZZ', '2020-04-06 12:15:23', '2020-04-06 12:15:36'),
(6, 1, 'Email Testing', 'How to send mail in the client account', '2020-04-10 05:42:05', '2020-04-10 05:42:05'),
(7, 1, 'Email Testing', 'How to send mail in the client account', '2020-04-10 05:43:04', '2020-04-10 05:43:04'),
(8, 1, 'Email Testing', 'How to send mail in the client account', '2020-04-10 05:44:21', '2020-04-10 05:44:21'),
(9, 2, 'Safe Email Test', 'Hi ! We are happy to see you at Mailtrap!\r\n\r\nNow you have a set of tools for safe email testing for staging and development.', '2020-04-10 05:49:19', '2020-04-10 05:49:19'),
(10, 2, 'Test', 'Set Mailtrap as an SMTP server for your application:\r\n\r\ngo to your first Inbox\r\ncopy the SMTP credentials (host, username, password, and the appropriate port)\r\nPaste them to your application code - see config examples for different environments in the integration section inside your inbox.', '2020-04-10 06:05:18', '2020-04-10 06:05:18'),
(11, 2, 'Test', 'Set Mailtrap as an SMTP server for your application:\r\n\r\ngo to your first Inbox\r\ncopy the SMTP credentials (host, username, password, and the appropriate port)\r\nPaste them to your application code - see config examples for different environments in the integration section inside your inbox.', '2020-04-10 06:06:07', '2020-04-10 06:06:07'),
(12, 2, 'Test', 'Set Mailtrap as an SMTP server for your application:\r\n\r\ngo to your first Inbox\r\ncopy the SMTP credentials (host, username, password, and the appropriate port)\r\nPaste them to your application code - see config examples for different environments in the integration section inside your inbox.', '2020-04-10 06:07:36', '2020-04-10 06:07:36');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `project_id`, `description`, `completed`, `created_at`, `updated_at`) VALUES
(1, 1, 'Welcome', 0, '2020-04-06 11:54:36', '2020-04-06 11:54:36'),
(2, 2, 'Hi', 0, '2020-04-06 11:56:26', '2020-04-08 10:57:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Azizul', 'azizul@gmail.com', NULL, '$2y$10$fqOffT4ZQ7Bd5Aile0C79ujC7B0GL5JQinUEiMTNL9DHn33.H0Egm', '80RpgdAMZ8klqqWqY5Voi3QSAgFZovtINE0icaTGYuOE3iHQKumFQPap2Vmc', '2020-04-06 11:41:48', '2020-04-06 11:41:48'),
(2, 'sagor', 'sagor@gmail.com', NULL, '$2y$10$PAw2l2PogIDzINur3vo4R.6tMRWNZjRgnNevXduaoLK7ddDeiya6S', 'X8TnGEbXF4pHXhvb5QHW7LXfuxvAsClDqG5XRqdjiC8xolxqorhk9T1ucU4A', '2020-04-06 11:57:25', '2020-04-06 11:57:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_owner_id_foreign` (`owner_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
