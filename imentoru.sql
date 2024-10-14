-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2024 at 04:39 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `imentoru`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `phone` text NOT NULL,
  `email` text NOT NULL,
  `subject` text NOT NULL,
  `province` text NOT NULL,
  `message` text NOT NULL,
  `date_reg` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `phone`, `email`, `subject`, `province`, `message`, `date_reg`) VALUES
(1, 'john', '0671829012', 'johnm07@gmail.com', 'general', 'North West', 'i want to know about the program sign up process', '2024-10-14 12:05:35'),
(2, 'gumani', 'moila', 'surprisegumani@gmail.com', 'mentor', 'Eastern Cape', 'I\'ve lost my credential to the app', '2024-10-14 12:05:35'),
(3, 'sam', 'mahoka', 'surprisegumani@gmail.com', 'mentor', 'Eastern Cape', 'i need help with the php course', '2024-10-14 12:05:35'),
(4, 'gumani', '0716714840', 'moilasurprise7@gmail.com', 'mentor', 'Eastern Cape', 'BECOME  A Mentor', '2024-10-14 12:05:35'),
(5, 'INNOCENT', '07345678989', 'inno@gmail.com', 'SOFTWARE', 'Western Cape', 'WE ARE HUNGRY', '2024-10-14 12:05:35'),
(6, 'lesedi', '0719829123', 'lesedi@gmail.com', 'will presentation', 'Gauteng', 'i love my team and will', '2024-10-14 12:05:35');

-- --------------------------------------------------------

--
-- Table structure for table `mentees`
--

CREATE TABLE `mentees` (
  `id` int(11) NOT NULL,
  `id_number` text NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `gender` text NOT NULL,
  `phone` text NOT NULL,
  `email` text NOT NULL,
  `occupation` text NOT NULL,
  `province` text NOT NULL,
  `vacant_application` text NOT NULL,
  `benefited_already` text NOT NULL,
  `program_interest` text NOT NULL,
  `program_found_lead` text NOT NULL,
  `Home_Language` text NOT NULL,
  `summary` varchar(250) NOT NULL,
  `town_village` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mentees`
--

INSERT INTO `mentees` (`id`, `id_number`, `first_name`, `last_name`, `gender`, `phone`, `email`, `occupation`, `province`, `vacant_application`, `benefited_already`, `program_interest`, `program_found_lead`, `Home_Language`, `summary`, `town_village`) VALUES
(1, '086253658586', 'mosa', 'lephondo', 'male', '0723489906', 'mosalephondo12@gmail.com', 'IT software development student', 'Gauteng', '', 'no', 'Community Service Support', 'Social Media', 'English', 'IT SOFTWARE', 'Mokopane'),
(2, '086253658586', 'gumani', 'lephondo', 'female', '0723489906', 'mosalephondo12@gmail.com', 'IT software development student', 'North West', '', 'yes', 'Learning Language', 'Internet (browsing)', 'Northern Sotho', 'yyiuiuiuiuiuiu', 'Mokopane'),
(3, '0213387598686', 'Innocent ', 'Ramatladi', 'male', '0723489906', 'inno@gmail.com', 'software', 'Limpopo', '', 'no', 'Learning Language', 'Social Media', 'Afrikaans', 'SOFTWARE', 'Mokopane'),
(4, '03838291831', 'john', 'nkadimeng', 'female', '0918910432', 'lesedi2@gmail.com', 'software', 'Gauteng', '', 'no', 'Select program you want to be part of it', 'Instagram', 'English', ' i want to join the the program', 'pretoria');

-- --------------------------------------------------------

--
-- Table structure for table `mentors`
--

CREATE TABLE `mentors` (
  `id` int(11) NOT NULL,
  `id_number` text NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `gender` text NOT NULL,
  `phone` text NOT NULL,
  `email` text NOT NULL,
  `occupation` text NOT NULL,
  `province` text NOT NULL,
  `vacant_application` text NOT NULL,
  `benefited_already` text NOT NULL,
  `program_interested` text NOT NULL,
  `program_found_lead` text NOT NULL,
  `Home_Language` text NOT NULL,
  `linkedin` text NOT NULL,
  `summary` varchar(250) NOT NULL,
  `town_village` text NOT NULL,
  `date_reg` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mentors`
--

INSERT INTO `mentors` (`id`, `id_number`, `first_name`, `last_name`, `gender`, `phone`, `email`, `occupation`, `province`, `vacant_application`, `benefited_already`, `program_interested`, `program_found_lead`, `Home_Language`, `linkedin`, `summary`, `town_village`, `date_reg`) VALUES
(1, '086253658586', 'mosa', 'Moila', 'male', '0723489901', 'tinyiko@ntidgroup.co.za', 'software', 'Mpumalanga', 'SOFTWARE', 'no', 'Career Mentorship', 'Radio', 'English', '', 'NDHDHBKDCF HCD BCDJGSDCJGSDCJG SDJVG SDXSDJGSDGJSGDVSDX GXSDAGHXS', 'Mokopane', '2024-05-31 09:58:15'),
(2, '0313292833', 'lesedi', 'nkadiemeng', 'male', '0614910912', 'lesedi2@gmail.com', 'student', 'Gauteng', 'adminstrator', 'no', 'Career Mentorship', 'Linkedin', 'English', '', ' i love to become mentor to this company', 'sunnyside ', '2024-06-01 14:23:24');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `date_reg` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`id`, `email`, `date_reg`) VALUES
(7, 'RAMTLADI@gmail.com', '2024-05-31 13:46:44'),
(8, 'lesedi@gmail.com', '2024-06-01 13:12:30'),
(9, 'john@gmail.com', '2024-06-01 13:12:34'),
(10, 'sam@gmail.com', '2024-06-01 13:12:58'),
(11, 'robert@gmail.com', '2024-06-01 13:12:58'),
(12, 'peterm07@gmail.com', '2024-06-01 13:12:58'),
(13, 'maryjane@gmail.com', '2024-06-01 13:12:59'),
(15, 'hopemalina@gmail.com', '2024-06-01 13:13:10'),
(16, 'mosa@gmail.com', '2024-06-01 13:13:10');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(11) NOT NULL,
  `id_number` decimal(13,0) NOT NULL,
  `name` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `partnership_type` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL,
  `program_found_lead` text NOT NULL,
  `program_interested` text NOT NULL,
  `summary` text NOT NULL,
  `date_reg` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `id_number`, `name`, `website`, `phone`, `email`, `partnership_type`, `province`, `program_found_lead`, `program_interested`, `summary`, `date_reg`) VALUES
(2, 0, 'property24', 'none', '0761387391', 'john@gmail.com', 'Partnership', 'Gauteng', 'Instagram', 'Career Mentorship', ' i want to love to work with you as a partner', '2024-06-01 14:48:33'),
(3, 0, 'property24', 'none', '0761387391', 'lesedi3@gmail.com', 'Partnership', 'Gauteng', 'Instagram', 'Career Mentorship', ' i want to love to work with you as a partner', '2024-06-01 14:48:37'),
(4, 0, 'property24', 'none', '0761387391', 'lesedi3@gmail.com', 'Partnership', 'Gauteng', 'Instagram', 'Career Mentorship', ' i want to love to work with you as a partner', '2024-06-01 14:48:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `id_number` varchar(20) NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` text NOT NULL,
  `password` varchar(100) NOT NULL,
  `password_encrypted` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `id_number`, `first_name`, `last_name`, `email`, `phone`, `password`, `password_encrypted`) VALUES
(1, '1028191281', 'john', 'maliteba', 'johnmaliteba@gmail.com', '0719811022', '3100', '3100');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mentees`
--
ALTER TABLE `mentees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mentors`
--
ALTER TABLE `mentors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mentees`
--
ALTER TABLE `mentees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mentors`
--
ALTER TABLE `mentors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
