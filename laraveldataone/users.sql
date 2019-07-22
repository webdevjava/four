-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2019 at 01:53 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelone`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `location`, `phone`, `gender`, `password`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'jhonny22', 'u@gmail.com', 'Dhaka', '01726916304', 'Male', '$2y$10$oUKJkVvFMfqjnsa0DWAKaeXhI06b17zr.6cI/yeouY8jK9hKEdvlm', 'hi.jpg', NULL, '2019-07-21 22:10:44', '2019-07-21 22:10:44'),
(2, 'userone', 'userone@gmail.com', 'Dhaka', '01753788926', 'Male', '$2y$10$2lgFpINAImvdfY7L8Z8hyewll2mgEFPqBOSVBgw365MMCb4et8CWS', 'hi.jpg', NULL, '2019-07-21 23:06:17', '2019-07-21 23:06:17'),
(3, 'usertwo', 'usertwo@gmail.com', 'Tongi', '01918923751', 'on', '$2y$10$oOybNoFsEHw0f4c/pZOWh.m8Q95EqFegZs.mZYn.o/CRS3FCI1Vj2', 'hi.jpg', NULL, '2019-07-21 23:07:45', '2019-07-21 23:07:45'),
(4, 'userthree', 'userthree@gmail.com', 'Manikganj', '017652345', 'Male', '$2y$10$IAMwrZehoYb5zZ4jH4VjWelVBiqSa5.DLeFTsbjAzfdhHygbUU8ui', 'hi.jpg', NULL, '2019-07-21 23:11:55', '2019-07-21 23:11:55'),
(5, 'userfour', 'userfour@gmail.com', 'Chottogram', '01762110687', 'Male', '$2y$10$VxzddOZeakX49QqY8R0T5u41SJ.oXDKh9Q489mG04fkHqULP4ypyK', 'hi.jpg', NULL, '2019-07-22 00:01:54', '2019-07-22 00:01:54'),
(6, 'usersix', 'usersix@gmail.com', 'Feni', '01845618234', 'Female', '$2y$10$EkCDP/ofve0FVAQYtfEYGe6fXJRuAqBnufv8NMjmBDJo8ua1MQsGC', 'hi.jpg', NULL, '2019-07-22 04:05:24', '2019-07-22 04:05:24'),
(7, 'userseven', 'userseven@gmail.com', 'Hobiganj', '01544617892', 'Male', '$2y$10$AaCJ1WBDDqlqRC92CEyiAO0szhl68TZf8Hj3QLeJHpXEvsTmNbaS6', '5d358be288536.jpg', NULL, '2019-07-22 04:11:46', '2019-07-22 04:11:46'),
(8, 'usereight', 'usereight@gmail.com', 'Natore', '01932587976', 'Male', '$2y$10$XsTqYagjtKYux4t0zsTY4eN5KB/wP9ZerN22DS2dmSW/X1yb7mzcm', NULL, NULL, '2019-07-22 04:14:33', '2019-07-22 04:14:33');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
