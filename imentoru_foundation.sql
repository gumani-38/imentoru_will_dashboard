-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2024 at 08:43 PM
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
-- Database: `imentoru_foundation`
--

-- --------------------------------------------------------

--
-- Table structure for table `beneficiaries`
--

CREATE TABLE `beneficiaries` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL,
  `area` varchar(100) NOT NULL,
  `active_since` varchar(100) NOT NULL,
  `Facebook` varchar(100) NOT NULL,
  `Twitter` varchar(100) NOT NULL,
  `LinkedIn` varchar(100) NOT NULL,
  `Whatsapp` varchar(12) NOT NULL,
  `website` varchar(100) NOT NULL,
  `date_reg` varchar(100) NOT NULL,
  `logo_pic` text NOT NULL,
  `active` tinyint(4) NOT NULL,
  `updated` tinyint(4) NOT NULL,
  `deleted` tinyint(4) NOT NULL,
  `suspended` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `ticket_no` varchar(100) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `province` varchar(100) NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `active_since` varchar(100) NOT NULL,
  `date_reg` varchar(100) NOT NULL,
  `updated` tinyint(4) NOT NULL,
  `deleted` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `ticket_no`, `first_name`, `last_name`, `email`, `phone`, `province`, `subject`, `message`, `active_since`, `date_reg`, `updated`, `deleted`) VALUES
(1, 'm98', 'Tinyiko', 'Mabale', 'tinyiko@ntid.co.za', '0711412199', 'Limpopo Province', 'Testing', 'hello there', '', '02 Feb 2020 00:02:09', 0, 0),
(2, 'm90', 'Tinyiko', 'Mabale', 'tinyiko@ntid.co.za', '0711412199', 'Limpopo Province', 'Testing', 'hello there', '', '02 Feb 2020 00:02:10', 0, 0),
(3, 'm39608', 'Tinyiko', 'Mabale', 'tinyiko@ntid.co.za', '0711412199', 'Free State Province', 'Testing', 'hello', '', '02 Feb 2020 00:2:11', 0, 0),
(4, 'm60715', 'Tinyiko', 'Mabale', 'tinyiko@ntid.co.za', '0711412199', 'Free State Province', 'Testing', 'hello', '', '02 Feb 2020 00:13:31', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `coordinators`
--

CREATE TABLE `coordinators` (
  `id` int(11) NOT NULL,
  `id_number` varchar(20) NOT NULL,
  `user` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `p_address` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL,
  `town` varchar(100) NOT NULL,
  `notes` text NOT NULL,
  `skills` text NOT NULL,
  `active_since` varchar(100) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `twitter` varchar(100) NOT NULL,
  `linkedin` varchar(100) NOT NULL,
  `instagram` varchar(100) NOT NULL,
  `whatsapp` varchar(100) NOT NULL,
  `profile_pic` text NOT NULL,
  `added_by` varchar(100) NOT NULL,
  `added_by_id` varchar(100) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `can_add` tinyint(4) NOT NULL,
  `can_update` tinyint(4) NOT NULL,
  `can_delete` tinyint(4) NOT NULL,
  `updated` tinyint(4) NOT NULL,
  `deleted` tinyint(4) NOT NULL,
  `suspended` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `coordinators`
--

INSERT INTO `coordinators` (`id`, `id_number`, `user`, `username`, `first_name`, `last_name`, `gender`, `phone`, `email`, `occupation`, `p_address`, `country`, `province`, `town`, `notes`, `skills`, `active_since`, `facebook`, `twitter`, `linkedin`, `instagram`, `whatsapp`, `profile_pic`, `added_by`, `added_by_id`, `active`, `can_add`, `can_update`, `can_delete`, `updated`, `deleted`, `suspended`) VALUES
(2, '977567 4746 536', 'MM49762', 'mosibudim79', 'Anita', 'Mashala', 'Female', '(098) 986-57', 'mathipam@imentoru.org.za', 'Information System', 'Francis Baard\r\nJohan', 'South Africa', 'Limpopo', 'Pretoria', '', '', '03 Dec 2019', '', '', '', '', '27798764436', 'user_female.png', 'mosibudim79', '1', 1, 0, 0, 0, 0, 0, 0),
(3, '952847 5552 092', 'DT58629', 'dikengkengt62', 'Refilwe', 'Ramaili', 'Male', '(078) 738-29', 'tsotetsid@imentoru.org.za', 'Nurse', 'Qalabotja', 'South Africa', 'Free State', 'Villiers', '', '', '03 Dec 2019', '', '', '', '', '27889798798', 'user_male.png', 'dikengkengt62', '1', 1, 0, 0, 0, 0, 0, 0),
(4, '0328389811', '', '', 'gumani', 'Moila', 'Male', '061476371', 'surprisegumani@gmail.com', 'software', 'siusjud hksdhbnd hsdnkksidjid', 'South Africa', 'Gauteng', 'pretoria', '', '', '', '', '', '', '', '098182821', '', '', '', 0, 0, 0, 0, 0, 0, 0),
(5, '0328389811', '', '', 'gumani', 'Moila', 'Male', '061476371', 'surprisegumani@gmail.com', 'software', 'siusjud hksdhbnd hsdnkksidjid', 'South Africa', 'Gauteng', 'pretoria', '', '', '', '', '', '', '', '098182821', '', '', '', 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `country_name` text NOT NULL,
  `country_code` text NOT NULL,
  `coordinates` text NOT NULL,
  `active` tinyint(11) NOT NULL,
  `updated` tinyint(11) NOT NULL,
  `deleted` tinyint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `country_name`, `country_code`, `coordinates`, `active`, `updated`, `deleted`) VALUES
(1, 'South Africa', 'RSA', '', 1, 0, 0),
(2, 'Mozambique', 'MZ', '', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

CREATE TABLE `directors` (
  `id` int(11) NOT NULL,
  `role_code` varchar(100) NOT NULL,
  `id_number` varchar(20) NOT NULL,
  `user` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `p_address` text NOT NULL,
  `country` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL,
  `town` varchar(100) NOT NULL,
  `notes` text NOT NULL,
  `skills` text NOT NULL,
  `active_since` varchar(100) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `twitter` varchar(100) NOT NULL,
  `linkedin` text NOT NULL,
  `instagram` varchar(100) NOT NULL,
  `whatsapp` varchar(100) NOT NULL,
  `profile_pic` text NOT NULL,
  `added_by` text NOT NULL,
  `added_by_id` text NOT NULL,
  `active` tinyint(4) NOT NULL,
  `updated` tinyint(4) NOT NULL,
  `deleted` tinyint(4) NOT NULL,
  `suspended` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Can ';

--
-- Dumping data for table `directors`
--

INSERT INTO `directors` (`id`, `role_code`, `id_number`, `user`, `username`, `first_name`, `last_name`, `gender`, `phone`, `email`, `position`, `occupation`, `p_address`, `country`, `province`, `town`, `notes`, `skills`, `active_since`, `facebook`, `twitter`, `linkedin`, `instagram`, `whatsapp`, `profile_pic`, `added_by`, `added_by_id`, `active`, `updated`, `deleted`, `suspended`) VALUES
(5, 'role3', '', 'TM18882', 'tinyikom23', 'Tinyiko', 'Mabale', 'Male', '(076) 723-25', 'tinyiko@imentoru.org.za', 'Executive Director', 'Entrepreneur', 'Francis Baard\r\nJohan', 'South Africa', 'Gauteng', 'Pretoria', '', '', '03 Dec 2019', '', '', '', '', '27767232579', 'user_male.png', 'tinyikom23', '1', 1, 0, 0, 0),
(6, 'role3', '940813 1341 135', 'KM96472', 'kgothatsom47', 'Kgothatso', 'Mofokeng', 'Female', '(071) 488-20', 'kgothatso@imentoru.org.za', 'Assistant Director', 'Pharmacist', 'Hammanskraal\r\n', 'South Africa', 'Gauteng', 'Pretoria', '', '', '03 Dec 2019', '', '', '', '', '27714882020', 'user_female.png', 'kgothatsom47', '1', 1, 0, 0, 0),
(7, 'role3', '990917 7473 436', 'NS26368', 'nqobiles30', 'Nqobile', 'Skhosana', 'Female', '(078) 743-74', 'nqobile@imentoru.org.za', 'Information Technology Director', 'Information Technology', 'Siyabuswa', 'South Africa', 'Mpumalanga', 'Siyabuswa', '', '', '03 Dec 2019', '', '', '', '', '27783373267', 'user_female.png', 'nqobiles30', '1', 1, 0, 0, 0),
(8, 'role3', '980446 7890 097', 'NM33892', 'nhlamulotyronm43', 'Nhlamulo Tyron', 'Maluleke', 'Male', '(078) 665-65', 'tyron@imentoru.org.za', 'Finance Director', 'Financial Management', 'Pta', 'South Africa', 'Gauteng', 'Pretoria', '', '', '03 Dec 2019', '', '', '', '', '27071134553', 'user_female.png', 'nhlamulotyronm43', '1', 1, 0, 0, 0),
(9, 'role3', '840921 1434 334', 'HM44859', 'harrisonrhulanim16', 'Harrison Rhulani', 'Maluleke', 'Male', '(078) 823-74', 'harrison@imentoru.org.za', 'Non-Executive Director', 'Safety Management', 'House 1', 'South Africa', 'Gauteng', 'Soweto', '', '', '03 Dec 2019', '', '', '', '', '27788237423', 'user_male.png', 'harrisonrhulanim16', '1', 1, 0, 0, 0),
(13, 'role4', '', 'TM17207', 'tinyikom59', 'Tinyiko', 'Mabale', 'Male', '(071) 141-21', 'tinyiko@imentoru.org.za', 'Executive Chairperson', 'Founder', 'Francis Baard\r\nJohan', 'South Africa', 'Gauteng', 'Pretoria', '', '', '10 Feb 2020', '', '', '', '', '27711412199', 'user_male.png', 'tinyikom67', '1', 1, 0, 0, 0),
(19, 'role4', '99____ ____ ___', 'NS21475', 'nqobiles50', 'Nqobile', 'Skhosana', 'Female', '(072) 937-34', 'nqobile@ntidgroup.co.za', 'Deputy Chairperson', 'Software Developer', 'Siya', 'South Africa', 'Mpumalanga', 'Siyabuswa', '', '', '10 Aug 2022', '', '', '', '', '27729373409', 'user_female.png', 'guestg38', '1', 1, 0, 0, 0),
(20, 'role4', '0328389811', '', '', 'gumani', 'Moila', 'Male', '0718181223', 'surprisegumani@gmail.com', '', 'software', 'sjskd d d ewdjkwdjkkwd jkd wjkk wdjdwk  md', 'South Africa', 'Gauteng', 'pretoria', '', '', '', '', '', '', '', '01872721333', '', '', '', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `directors_role`
--

CREATE TABLE `directors_role` (
  `id` int(11) NOT NULL,
  `role_code` varchar(100) NOT NULL,
  `role_name` varchar(100) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `updated` tinyint(4) NOT NULL,
  `deleted` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `directors_role`
--

INSERT INTO `directors_role` (`id`, `role_code`, `role_name`, `active`, `updated`, `deleted`) VALUES
(1, 'role3', 'Assistant Director', 1, 0, 0),
(2, 'role3', 'Executive Director', 1, 0, 0),
(3, 'role3', 'Finance Director', 1, 0, 0),
(4, 'role3', 'Information Technology Director', 1, 0, 0),
(5, 'role3', 'Non-Executive Director', 1, 0, 0),
(6, 'role3', 'Secretary Director', 1, 0, 0),
(7, 'role4', 'Deputy Chairperson', 1, 0, 0),
(8, 'role4', 'Deputy Secretary', 1, 0, 0),
(9, 'role4', 'Deputy Treasurer', 1, 0, 0),
(10, 'role4', 'Executive Chairperson', 1, 0, 0),
(11, 'role4', 'Executive Secretary', 1, 0, 0),
(12, 'role4', 'Executive Treasurer', 1, 0, 0),
(13, 'role4', 'Programme Development Officer', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `event_id` varchar(100) NOT NULL,
  `event_name` text NOT NULL,
  `event_description` text NOT NULL,
  `event_start_date` text NOT NULL,
  `event_end_date` text NOT NULL,
  `event_start_time` text NOT NULL,
  `event_end_time` text NOT NULL,
  `background_color` text NOT NULL,
  `event_status` text NOT NULL,
  `event_link` text NOT NULL,
  `date_created` text NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_user_id` varchar(100) NOT NULL,
  `updated_on` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  `updated` tinyint(4) NOT NULL,
  `deleted` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event_id`, `event_name`, `event_description`, `event_start_date`, `event_end_date`, `event_start_time`, `event_end_time`, `background_color`, `event_status`, `event_link`, `date_created`, `created_by`, `created_user_id`, `updated_on`, `updated_by`, `updated`, `deleted`) VALUES
(17, 'event4668', 'Mentors Induction', ' New mentors induction', '09/01/2022', '09/01/2022', '13:00', '14:00', '#f70bb9', 'In Session', 'www.imentorufoundation.org.za', '01 09 2022 11:26:16', 'guestg38', 'GG56864', '0000-00-00 00:00:00', '', 0, 0),
(21, 'event4319', 'Personal Development', 'talk with youth', '09/08/2022', '09/08/2022', '10:00', '13:00', '#3e15f7', 'Active', 'imentorufoundation.org.za', '08 09 2022 00:07:58', '', '', '0000-00-00 00:00:00', '', 0, 0),
(50, 'event9485', 'Career Tour', 'Grade 9 and 10 career tour', '11/02/2022', '11/02/2022', '09:00', '13:00', '#0420f7', 'Active', 'imentorufoundation.org.za', '26 10 2022 23:52:41', 'guestg38', 'info@imentoru.org.za', '0000-00-00 00:00:00', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mentees`
--

CREATE TABLE `mentees` (
  `id` int(11) NOT NULL,
  `id_number` text NOT NULL,
  `user` text NOT NULL,
  `username` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `password_encrypted` text NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `gender` text NOT NULL,
  `phone` text NOT NULL,
  `email` text NOT NULL,
  `occupation` text NOT NULL,
  `p_address` text NOT NULL,
  `country` text NOT NULL,
  `province` text NOT NULL,
  `town` text NOT NULL,
  `notes` text NOT NULL,
  `skills` text NOT NULL,
  `school` varchar(255) NOT NULL,
  `active_since` text NOT NULL,
  `added_by` text NOT NULL,
  `adder_role_id` text NOT NULL,
  `facebook` text NOT NULL,
  `twitter` text NOT NULL,
  `linkedin` text NOT NULL,
  `instagram` text NOT NULL,
  `whatsapp` text NOT NULL,
  `profile_pic` text NOT NULL,
  `active` tinyint(4) NOT NULL,
  `updated` tinyint(4) NOT NULL,
  `deleted` tinyint(4) NOT NULL,
  `suspended` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mentees`
--

INSERT INTO `mentees` (`id`, `id_number`, `user`, `username`, `password`, `password_encrypted`, `first_name`, `last_name`, `gender`, `phone`, `email`, `occupation`, `p_address`, `country`, `province`, `town`, `notes`, `skills`, `school`, `active_since`, `added_by`, `adder_role_id`, `facebook`, `twitter`, `linkedin`, `instagram`, `whatsapp`, `profile_pic`, `active`, `updated`, `deleted`, `suspended`) VALUES
(4, '070803 ____ ___', 'XC28920', 'xiluvac64', '', '', 'Xiluva', 'Chauke', 'Female', '(071) 141-2199', 'info@imentoru.org.za', 'Learner', 'Ndlazini\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '27711412199', 'user_female.png', 1, 0, 0, 0),
(5, '070716 ____ ___', 'DM45744', 'dunisanimm92', '', '', 'DunisaniM', 'Mnyayi', 'Female', '(071) 141-2199', 'info@imentoru.org.za', 'Learner', 'Ndlazini\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '27711412199', 'user_female.png', 1, 0, 0, 0),
(6, '', 'TD52236', 'tintswalod72', '', '', 'Tintswalo', 'Dlamini', 'Female', '', '', 'Learner (Maths & Sciences)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_female.png', 1, 0, 0, 0),
(7, '', 'CH61603', 'claytonh97', '', '', 'Clayton', 'Hlungwani', 'Male', '', '', 'Learner (Maths & Sciences)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_male.png', 1, 0, 0, 0),
(8, '', 'ML54808', 'mulisal19', '', '', 'Mulisa', 'Langwane', 'Male', '', '', 'Learner (Maths & Sciences)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_male.png', 1, 0, 0, 0),
(9, '', 'SK11880', 'sibongilek46', '', '', 'Sibongile', 'Khosa', 'Female', '', '', 'Learner (Maths & Sciences)', 'Nkatini High School', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_female.png', 1, 0, 0, 0),
(10, '', 'IM15768', 'innocentm98', '', '', 'Innocent', 'Macebele', 'Female', '', '', 'Learner (Maths & Sciences)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_female.png', 1, 0, 0, 0),
(11, '', 'MM69835', 'miehleketom40', '', '', 'Miehleketo', 'Macebele', 'Male', '', '', 'Learner (Maths & Sciences)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_male.png', 1, 0, 0, 0),
(12, '', 'HM67294', 'helterm78', '', '', 'Helter', 'Maluleke', 'Female', '', '', 'Learner (Maths & Sciences)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_female.png', 1, 0, 0, 0),
(13, '', 'HM61742', 'hlamulom45', '', '', 'Hlamulo', 'Muthuki', 'Male', '', '', 'Learner (Maths & Sciences)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_male.png', 1, 0, 0, 0),
(14, '', 'NM60049', 'ntsakom85', '', '', 'Ntsako', 'Muthuki', 'Female', '', '', 'Learner (Maths & Sciences)', 'Nkatini High School', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_female.png', 1, 0, 0, 0),
(15, '', 'FN61795', 'fannien14', '', '', 'Fannie', 'Ndove', 'Male', '', '', 'Learner (Maths & Sciences)', 'Nkatini High School', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_male.png', 1, 0, 0, 0),
(17, '', 'ES55913', 'eulenders52', '', '', 'Eulender', 'Shirinda', 'Female', '', '', 'Learner (Maths & Sciences)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_female.png', 1, 0, 0, 0),
(18, '', 'PS93288', 'patricias78', '', '', 'Patricia', 'Shitlhangu', 'Female', '', '', 'Learner (Maths & Sciences)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_female.png', 1, 0, 0, 0),
(19, '', 'TZ81173', 'tsakanez18', '', '', 'Tsakane', 'Zitha', 'Female', '', '', 'Learner (Maths & Sciences)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_female.png', 1, 0, 0, 0),
(20, '', 'MZ52426', 'moriesz76', '', '', 'Mories', 'Nkuna', 'Male', '', '', 'Learner (Maths & Sciences)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_male.png', 1, 0, 0, 0),
(21, '', 'RS65121', 'rhulanis18', '', '', 'Rhulani', 'Shidumo', 'Female', '', '', 'Learner (Maths & Sciences)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_female.png', 1, 0, 0, 0),
(22, '', 'NC77127', 'nkhensanic50', '', '', 'Nkhensani', 'Chauke', 'Female', '', '', 'Learner (Maths & Sciences)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_female.png', 1, 0, 0, 0),
(23, '', 'PM12729', 'preciousm74', '', '', 'Precious', 'Mathebula', 'Female', '', '', 'Learner (Maths & Sciences)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_female.png', 1, 0, 0, 0),
(24, '', 'VM79805', 'valentiam80', '', '', 'Valentia', 'Mashimbyi', 'Female', '', '', 'Learner (Maths & Sciences)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_female.png', 1, 0, 0, 0),
(25, '', 'RM30487', 'rifumom25', '', '', 'Rifumo', 'Macevele', 'Male', '', '', 'Learner (Maths & Sciences)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_male.png', 1, 0, 0, 0),
(26, '', 'AM49656', 'ayam79', '', '', 'Aya', 'Makuhani', 'Male', '', '', 'Learner (Maths & Sciences)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_male.png', 1, 0, 0, 0),
(27, '', 'HM89138', 'hlulanim29', '', '', 'Hlulani', 'Mathwasa', 'Male', '', '', 'Learner (Maths & Sciences)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_male.png', 1, 0, 0, 0),
(28, '', 'VM48334', 'vutlharim74', '', '', 'Vutlhari', 'Mathwasa', 'Male', '', '', 'Learner (Maths & English)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_male.png', 1, 0, 0, 0),
(29, '', 'EM59933', 'eliam67', '', '', 'Elia', 'Makwakwa', 'Male', '', '', 'Learner (Maths & Sciences)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_male.png', 1, 0, 0, 0),
(30, '', 'IM31236', 'isaacm16', '', '', 'Isaac', 'Mazive', 'Male', '', '', 'Learner (Maths & Sciences)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_male.png', 1, 0, 0, 0),
(31, '', 'SB78324', 'sollyb78', '', '', 'Solly', 'Baloyi', 'Male', '', '', 'Learner (Maths & Sciences)', 'Nkatini High School\r\nXigalo\r\n', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_male.png', 1, 0, 0, 0),
(32, '', 'YM30740', 'yetrom23', '', '', 'Yetro', 'Mathwasa', 'Male', '', '', 'Learner (Maths & Sciences)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_male.png', 1, 0, 0, 0),
(33, '', 'TM22944', 'thulanim84', '', '', 'Thulani', 'Machava', 'Male', '', '', 'Learner (Maths & Sciences)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_male.png', 1, 0, 0, 0),
(34, '', 'DM44326', 'dyondzom58', '', '', 'Dyondzo', 'Mahori', 'Female', '', '', 'Learner (Maths & Sciences)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_female.png', 1, 0, 0, 0),
(35, '', 'SS65652', 'smangeles86', '', '', 'Smangele', 'Soyani', 'Female', '', '', 'Learner (Maths & Sciences)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_female.png', 1, 0, 0, 0),
(36, '', 'NH24684', 'nelsonh33', '', '', 'Nelson', 'Hlungwani', 'Male', '', '', 'Learner (Maths & Sciences)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_male.png', 1, 0, 0, 0),
(37, '', 'NM24319', 'nhlamulom14', '', '', 'Nhlamulo', 'Maluleke', 'Male', '', '', 'Learner (Maths & Sciences)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_male.png', 1, 0, 0, 0),
(38, '', 'DM71087', 'dunisanim10', '', '', 'Dunisani', 'Mabasa', 'Female', '', '', 'Learner (Maths & Sciences)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_female.png', 1, 0, 0, 0),
(39, '', 'IN85944', 'ishmaeln63', '', '', 'Ishmael', 'Ndlovu', 'Male', '', '', 'Learner (Maths & Sciences)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_male.png', 1, 0, 0, 0),
(40, '', 'AM76281', 'augustinem22', '', '', 'Augustine', 'Mashaba', 'Male', '', '', 'Learner (Maths & Sciences)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_male.png', 1, 0, 0, 0),
(41, '', 'RM68416', 'rendanim74', '', '', 'Rendani', 'Mabasa', 'Male', '', '', 'Learner (Maths & Sciences)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_male.png', 1, 0, 0, 0),
(42, '', 'PS33665', 'pauls57', '', '', 'Paul', 'Sithole', 'Male', '', '', 'Sciences & Geography', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_male.png', 1, 0, 0, 0),
(43, '', 'IC74412', 'isaacc15', '', '', 'Isaac', 'Chauke', 'Male', '', '', 'Learner (English & Life Sciences)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_male.png', 1, 0, 0, 0),
(44, '', 'SM81390', 'stephinahm49', '', '', 'Stephinah', 'Mbhiza', 'Female', '', '', 'Learner (Maths Lit & Business)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_female.png', 1, 0, 0, 0),
(45, '', 'XC52417', 'xitshembisoc53', '', '', 'Xitshembiso', 'Chauke', 'Female', '', '', 'Learner (Maths Lit & Business)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_female.png', 1, 0, 0, 0),
(46, '', 'TN29783', 'tsakanin95', '', '', 'Tsakani', 'Ncobeni', 'Female', '', '', 'Learner (Economics & Geography)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_female.png', 1, 0, 0, 0),
(47, '', 'DN52643', 'danieln39', '', '', 'Daniel', 'Ncobeni', 'Male', '', '', 'Learner (Maths Lit & Geography)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_male.png', 1, 0, 0, 0),
(48, '', 'PC52595', 'pertuniac63', '', '', 'Pertunia', 'Chauke', 'Female', '', '', 'Learner (Maths Lit & Geography)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_female.png', 1, 0, 0, 0),
(49, '', 'NM46029', 'ntiyisom61', '', '', 'Ntiyiso', 'Mabasa', 'Male', '', '', 'Learner (Maths Lit & Business)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_male.png', 1, 0, 0, 0),
(50, '', 'YB16764', 'yingisanib21', '', '', 'Yingisani', 'Baloyi', 'Female', '', '', 'Learner (Maths Lit & Geography)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_female.png', 1, 0, 0, 0),
(51, '', 'NM99005', 'nkhensanim99', '', '', 'Nkhensani', 'Makuhani', 'Female', '', '', 'Learner (Maths Lit & Geography)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_female.png', 1, 0, 0, 0),
(52, '', 'BS63063', 'basanis41', '', '', 'Basani', 'Shidumo', 'Female', '', '', 'Learner (Maths Lit & Geography)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_female.png', 1, 0, 0, 0),
(53, '', 'RM67890', 'rirhandzum88', '', '', 'Rirhandzu', 'Maluleke', 'Female', '', '', 'Learner (Maths Lit & Business)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_female.png', 1, 0, 0, 0),
(54, '', 'MM11620', 'meriumm78', '', '', 'Merium', 'Mgidi', 'Female', '', '', 'Learner (Maths Lit & Business)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_female.png', 1, 0, 0, 0),
(55, '', 'LM57697', 'luckym72', '', '', 'Lucky', 'Mbendzani', 'Male', '', '', 'Learner (Maths Lit & Economics)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_male.png', 1, 0, 0, 0),
(56, '', 'MS53386', 'muxes16', '', '', 'Muxe', 'Shithangu', 'Male', '', '', 'Learner (Maths Lit & Geography)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_male.png', 1, 0, 0, 0),
(57, '', 'NS27308', 'nkhensanis36', '', '', 'Nkhensani', 'Sithole', 'Female', '', '', 'Learner (Business & Economics)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_female.png', 1, 0, 0, 0),
(58, '', 'EM17122', 'emelym45', '', '', 'Emely', 'Matuassa', 'Female', '', '', 'Learner (Economics & Geography)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_female.png', 1, 0, 0, 0),
(59, '', 'SC34711', 'sbongilec69', '', '', 'Sbongile', 'Chauke', 'Female', '', '', 'Learner (Maths Lit & Business)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_female.png', 1, 0, 0, 0),
(60, '', 'RP74854', 'ritop48', '', '', 'Rito', 'Pandeka', 'Female', '', '', 'Learner (Maths Lit & Business)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_female.png', 1, 0, 0, 0),
(61, '', 'AN20128', 'allyn83', '', '', 'Ally', 'Novela', 'Male', '', '', 'Learner (Business & Geography)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_male.png', 1, 0, 0, 0),
(62, '', 'LC59951', 'lindiwec10', '', '', 'Lindiwe', 'Chauke', 'Female', '', '', 'Learner (Business & Geography)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', '', '', '', '', '', '', '', 'user_female.png', 1, 0, 0, 0),
(64, '', 'NM82372', 'nkhensanim80', '', '', 'Nkhensani', 'Mhlanga', 'Female', '', '', 'Learner (Maths Lit & Business)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', 'tinyikom67', 'NM82372', '', '', '', '', '', 'user_female.png', 1, 0, 0, 0),
(65, '', 'VS62123', 'vonanos22', '', '', 'Vonano', 'Sithole', 'Female', '', '', 'Learner (Maths Lit & Business)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', 'tinyikom67', 'VS62123', '', '', '', '', '', 'user_female.png', 1, 0, 0, 0),
(66, '', 'TM78667', 'tintswalom26', '', '', 'Tintswalo', 'Manganyi', 'Female', '', '', 'Learner (Business & Geography)', 'Nkatini High School\r\nXiaglo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', 'tinyikom67', 'TM78667', '', '', '', '', '', 'user_female.png', 1, 0, 0, 0),
(67, '', 'RS91282', 'rirhandzus28', '', '', 'Rirhandzu', 'Shibambu', 'Female', '', '', 'Learner (Maths Lit & Business)', 'Nkatini High School\r\nXigalo', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '08 Feb 2020', 'tinyikom67', 'RS91282', '', '', '', '', '', 'user_female.png', 1, 0, 0, 0),
(68, '', 'MM46574', 'muhlurim72', '', '', 'Muhluri', 'Matsuvuki', 'Female', '(063) 932-8261', '', 'Learner (Maths & Sciences)', 'EPP Mhinga Secondary School\r\nMalamulele', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '09 Feb 2020', 'tinyikom67', 'MM46574', '', '', '', '', '', 'user_female.png', 1, 0, 0, 0),
(69, '042404 ____ ___', 'lr61295', 'luciar90', '', '', 'lucia', 'rashimadi', 'Female', '(072) 237-9122', 'info@imentoru.org.za', 'Learner (Maths & Sciences)', 'roandhuis', 'South Africa', 'Limpopo', 'Malamulele', '', '', '', '13 Feb 2020', 'tinyikom67', 'lr61295', '', '', '', '', '', 'user_female.png', 1, 0, 0, 0),
(71, '990525 6236 085', 'CM48421', 'clementm65', '', '', 'Clement', 'Maepa', 'Male', '(063) 663-0353', 'admin@imentorufoundation.org.za', 'Rewrite(Maths, Physics, Life Sciences, Agriculture)', '16 Tawu street\r\nSosville\r\n', 'South Africa', 'Gauteng', 'Atterridgeville', '', '', '', '07 Sep 2022', '', 'CM48421', '', '', '', '', '27636630353', 'user_male.png', 1, 0, 0, 0),
(72, '051016 5310 085', 'TM56504', 'tshiamom53', '', '', 'Tshiamo', 'Makitla', 'Male', '(081) 587-6598', 'tshiamomakitla06@gmail.com', 'Learner (Maths, Physics, Life Sciences)', 'Rey Street\r\nOrchards Ex 46', 'South Africa', 'Gauteng', 'Akasia', '', '', '', '07 Sep 2022', '', 'TM56504', '', '', '', '', '27815876598', 'user_male.png', 1, 0, 0, 0),
(73, '050330 1085 083', 'MT53915', 'mufunt78', '', '', 'Mufun', 'Tshivhenya', 'Female', '(079) 735-5119', 'mufunwatshifhenya@gmail.com', 'Learner (Maths, Physics)', 'Maham', 'South Africa', 'Gauteng', 'Pretoria West', '', '', '', '07 Sep 2022', '', 'MT53915', '', '', '', '', '27797355119', 'user_female.png', 1, 0, 0, 0),
(74, '020928 0344 083', 'TM66216', 'tlotlangm39', '', '', 'Tlotlang', 'Mashigo', 'Female', '(079) 022-5031', 'tlotlangmashigo22@gmail.com', 'Rewrite(Maths, Physics, Life Sciences)', '242 Ext 19\r\n', 'South Africa', 'Gauteng', 'Atterridgeville', '', '', '', '07 Sep 2022', '', 'TM66216', '', '', '', '', '27790225031', 'user_female.png', 1, 0, 0, 0),
(75, '030421 0538 084', 'TM81443', 'tshepangm96', '', '', 'Tshepang', 'Moagi', 'Female', '(079) 070-2912', 'tnolundimoagi@gmail.com', 'Student (Civil Engineering - 1st Year)', 'Riverside CDB Residence\r\nSunnyside', 'South Africa', 'Gauteng', 'Pretoria', '', '', '', '07 Sep 2022', '', 'TM81443', '', '', '', '', '27790702912', 'user_female.png', 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mentors`
--

CREATE TABLE `mentors` (
  `id` int(11) NOT NULL,
  `id_number` decimal(13,0) NOT NULL,
  `user` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `p_address` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL,
  `town` varchar(100) NOT NULL,
  `notes` text NOT NULL,
  `skills` text NOT NULL,
  `active_since` varchar(100) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `twitter` varchar(100) NOT NULL,
  `linkedin` varchar(100) NOT NULL,
  `instagram` varchar(100) NOT NULL,
  `whatsapp` varchar(100) NOT NULL,
  `profile_pic` text NOT NULL,
  `added_by` varchar(100) NOT NULL,
  `added_by_id` varchar(100) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `updated` tinyint(4) NOT NULL,
  `deleted` tinyint(4) NOT NULL,
  `suspended` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mentors`
--

INSERT INTO `mentors` (`id`, `id_number`, `user`, `username`, `first_name`, `last_name`, `gender`, `phone`, `email`, `position`, `occupation`, `p_address`, `country`, `province`, `town`, `notes`, `skills`, `active_since`, `facebook`, `twitter`, `linkedin`, `instagram`, `whatsapp`, `profile_pic`, `added_by`, `added_by_id`, `active`, `updated`, `deleted`, `suspended`) VALUES
(1, 980727, 'NV51855', 'nkatekosibusisov31', 'Nkateko Sibusiso', 'Vilakazi', 'Male', '(076) 286-69', 'sibusisovilakanzi27@gmail.com', '', 'Student (Teaching)', '5577 Palmridge Ext. 4\r\n', 'South Africa', 'Free State', 'Germiston', '', '', '08 Feb 2020', '', '', '', '', '27762866880', 'user_male.png', 'tinyikom67', '1', 1, 0, 0, 0),
(2, 200210, 'MM63192', 'marciam70', 'Marcia', 'Mahatlane', 'Female', '(060) 761-52', 'info@imentoru.org.za', '', 'Tutor (Maths & Sciences)', 'Mphakati', 'South Africa', 'Limpopo', 'Malamulele', '', '', '10 Feb 2020', '', '', '', '', '27607615222', 'user_female.png', 'tinyikom67', '1', 1, 0, 0, 0),
(3, 200210, 'DH45010', 'dunisanih40', 'Dunisani', 'Hlongwani', 'Female', '(064) 688-54', 'info@imentoru.org.za', '', 'Tutor (English P1,P3 & History)', 'Mavambe', 'South Africa', 'Limpopo', 'Malamulele', '', '', '10 Feb 2020', '', '', '', '', '27646885481', 'user_female.png', 'tinyikom67', '1', 1, 0, 0, 0),
(4, 870730, 'Tm28334', 'tintswalobeautym18', 'Tintswalo Beauty  ', 'mabaso', 'Female', '(082) 447-95', 'tintswalomabaso.b@gmail', '', 'Teacher (Business Studies,Life Sciences)', 'stand no;214 xigalo ndlazinis', 'South Africa', 'Limpopo', 'Malamulele', '', '', '13 Feb 2020', '', '', '', '', '27824479570', 'user_female.png', 'tinyikom67', '1', 1, 0, 0, 0),
(5, 200105, 'ZM67087', 'zenanim76', 'Zenani', 'Mntingane', 'Female', '(073) 072-03', 'zenani.mntingane05@gmail.com', '', 'Student', 'P.O Box 5972\r\nConfessions 5120', 'South Africa', 'Eastern Cape', 'Port st johns', '', '', '13 Apr 2020', '', '', '', '', '27730720373', 'user_female.png', 'tinyikom67', '1', 1, 0, 0, 0),
(6, 950512, 'MX36148', 'mbonenix66', 'Mboneni', 'Xhayimpi', 'Male', '(073) 637-01', 'monwabic95@gmail.com', '', 'Student', 'P.O Box 123\r\n', 'South Africa', 'Eastern Cape', 'Port st Johns', '', '', '13 Apr 2020', '', '', '', '', '27736370141', 'user_male.png', 'tinyikom67', '1', 1, 0, 0, 0),
(7, 1223, 'MX25386', 'mcingelwax68', 'Mcingelwa', 'Xola Kevin', 'Male', '(078) 358-95', 'xalakevinmcingelwa2000@gmail.com', '', 'Student', 'P.O Box 123', 'South Africa', 'Eastern Cape', 'Port St Johns', '', '', '13 Apr 2020', '', '', '', '', '27783589540', 'user_male.png', 'tinyikom67', '1', 1, 0, 0, 0),
(8, 20419, 'AN52228', 'andisiwen33', 'Andisiwe', 'Nojoyi', 'Female', '(078) 044-93', 'andynojoyi@gmail.com', '', 'Student', 'P.O Box 61', 'South Africa', 'Eastern Cape', 'Port St Johns', '', '', '13 Apr 2020', '', '', '', '', '27780449317', 'user_female.png', 'tinyikom67', '1', 1, 0, 0, 0),
(9, 990201, 'SD47470', 'sibusisod75', 'Sibusiso', 'Dube', 'Male', '(063) 357-73', 'sibusisodube1738@gmail.com', '', 'Student', 'P.O Box 135', 'South Africa', 'Eastern Cape', 'Port St Johns', '', '', '13 Apr 2020', '', '', '', '', '27633577345', 'user_male.png', 'tinyikom67', '1', 1, 0, 0, 0),
(10, 10512, 'AM49698', 'anakhom52', 'Anakho', 'Myalwa', 'Male', '(078) 449-25', 'anakhomyalwa@gmail.com', '', 'Student', 'P.O Box 155', 'South Africa', 'Eastern Cape', 'Port St Johns', '', '', '13 Apr 2020', '', '', '', '', '27784492543', 'user_male.png', 'tinyikom67', '1', 1, 0, 0, 0),
(11, 980726, 'IM90964', 'izem23', 'Ize', 'Madabalala', 'Female', '(063) 593-10', 'izemadabalala@gmail.com', '', 'Student', 'No. 6 Mawawa Str\r\nMandela Park', 'South Africa', 'Eastern Cape', 'Mtata', '', '', '13 Apr 2020', '', '', '', '', '27635931021', 'user_female.png', 'tinyikom67', '1', 1, 0, 0, 0),
(12, 10929, 'YN94914', 'yoliswan60', 'Yoliswa', 'Nkayitsahana', 'Male', '(073) 277-00', 'yoliswankayitshana100@gmail.com', '', 'Student', 'P.O Box 135', 'South Africa', 'Eastern Cape', 'Port St. Johns', '', '', '13 Apr 2020', '', '', '', '', '27732770030', 'user_male.png', 'tinyikom67', '1', 1, 0, 0, 0),
(13, 11012, 'NN90977', 'ntombiphiwen69', 'Ntombiphiwe', 'Ndamase', 'Female', '(060) 414-99', 'ntombiphiwen@gmail.com', '', 'Mentor', 'P.O Box 61', 'South Africa', 'Eastern Cape', 'Port St Johns', '', '', '13 Apr 2020', '', '', '', '', '27604149995', 'user_female.png', 'tinyikom67', '1', 1, 0, 0, 0),
(14, 11123, 'LM84990', 'lihlem16', 'Lihle', 'Mgcotyelwa', 'Female', '(073) 015-01', 'lihle1571@gmail.com', '', 'Mentor', 'Mngazi A/A', 'South Africa', 'Eastern Cape', 'Libode', '', '', '13 Apr 2020', '', '', '', '', '27730150167', 'user_female.png', 'tinyikom67', '1', 1, 0, 0, 0),
(15, 225, 'SN79560', 'siphesihlen48', 'Siphesihle', 'Ngibe', 'Male', '(078) 522-33', 'ngibesiphesihle@gmail.com', '', 'Mentor', 'P.O Box 1019', 'South Africa', 'Eastern Cape', 'Port St Johns', '', '', '15 Apr 2020', '', '', '', '', '27785223307', 'user_male.png', 'nhlamulotyronm52', '1', 1, 0, 0, 0),
(16, 990102, 'TJ55997', 'thulanij35', 'Thulani', 'Jumba', 'Male', '(073) 277-00', 'thulanijumba@gmail.com', '', 'Mentor', 'P.O Box 1019', 'South Africa', 'Eastern Cape', 'Port St Johns', '', '', '15 Apr 2020', '', '', '', '', '27732770030', 'user_male.png', 'nhlamulotyronm52', '1', 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `pic` text NOT NULL,
  `country` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL,
  `area` varchar(100) NOT NULL,
  `active_since` varchar(100) NOT NULL,
  `date_reg` varchar(100) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `updated` tinyint(4) NOT NULL,
  `deleted` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(11) NOT NULL,
  `id_number` decimal(13,0) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL,
  `area` varchar(100) NOT NULL,
  `active_since` varchar(100) NOT NULL,
  `Facebook` varchar(100) NOT NULL,
  `Twitter` varchar(100) NOT NULL,
  `LinkedIn` varchar(100) NOT NULL,
  `Whatsapp` varchar(100) NOT NULL,
  `date_reg` varchar(100) NOT NULL,
  `profile_pic` text NOT NULL,
  `active` tinyint(4) NOT NULL,
  `can_add` tinyint(4) NOT NULL,
  `can_update` tinyint(4) NOT NULL,
  `can_delete` tinyint(4) NOT NULL,
  `updated` tinyint(4) NOT NULL,
  `deleted` tinyint(4) NOT NULL,
  `suspended` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `id_number`, `first_name`, `last_name`, `gender`, `phone`, `email`, `position`, `occupation`, `address`, `country`, `province`, `area`, `active_since`, `Facebook`, `Twitter`, `LinkedIn`, `Whatsapp`, `date_reg`, `profile_pic`, `active`, `can_add`, `can_update`, `can_delete`, `updated`, `deleted`, `suspended`) VALUES
(1, 1234567890123, 'John', 'Doe', 'Male', '+27123456789', 'john.doe@example.com', 'Manager', 'Engineer', '123 Main St', 'South Africa', 'Gauteng', 'Johannesburg', '2020-01-01', 'john_doe', '@johndoe', 'john-doe-linkedin', '+27123456789', '2020-01-01', 'profile_pic_1.png', 1, 1, 1, 0, 0, 0, 0),
(2, 1234567890124, 'Jane', 'Smith', 'Female', '+27123456780', 'jane.smith@example.com', 'Developer', 'Software Engineer', '456 Elm St', 'South Africa', 'Western Cape', 'Cape Town', '2021-02-01', 'jane_smith', '@janesmith', 'jane-smith-linkedin', '+27123456780', '2021-02-01', 'profile_pic_2.png', 1, 1, 1, 1, 0, 0, 0),
(3, 1234567890125, 'Mike', 'Johnson', 'Male', '+27123456781', 'mike.johnson@example.com', 'Designer', 'Graphic Designer', '789 Pine St', 'South Africa', 'KwaZulu-Natal', 'Durban', '2019-03-01', 'mike_johnson', '@mikejohnson', 'mike-johnson-linkedin', '+27123456781', '2019-03-01', 'profile_pic_3.png', 1, 0, 0, 0, 1, 0, 0),
(4, 1234567890126, 'Emily', 'Davis', 'Female', '+27123456782', 'emily.davis@example.com', 'Analyst', 'Data Analyst', '101 Maple St', 'South Africa', 'Eastern Cape', 'Port Elizabeth', '2018-04-01', 'emily_davis', '@emilydavis', 'emily-davis-linkedin', '+27123456782', '2018-04-01', 'profile_pic_4.png', 1, 1, 0, 0, 0, 1, 0),
(5, 1234567890127, 'Robert', 'Brown', 'Male', '+27123456783', 'robert.brown@example.com', 'Consultant', 'Business Consultant', '202 Oak St', 'South Africa', 'Limpopo', 'Polokwane', '2017-05-01', 'robert_brown', '@robertbrown', 'robert-brown-linkedin', '+27123456783', '2017-05-01', 'profile_pic_5.png', 1, 1, 1, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `id` int(11) NOT NULL,
  `program_code` varchar(100) NOT NULL,
  `symbol` text NOT NULL,
  `bg_color` text NOT NULL,
  `program_name` varchar(255) NOT NULL,
  `date_start` varchar(100) NOT NULL,
  `date_end` varchar(100) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `updated` tinyint(4) NOT NULL,
  `deleted` tinyint(4) NOT NULL,
  `date_reg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`id`, `program_code`, `symbol`, `bg_color`, `program_name`, `date_start`, `date_end`, `active`, `updated`, `deleted`, `date_reg`) VALUES
(1, 'ES', 'graduation-cap', 'aqua', 'Educational Support', 'Feb', 'Nov', 1, 0, 0, '10/02/2020'),
(2, 'CM', 'sitemap', 'teal', 'Career Mentorship', 'Mar', 'Jul', 0, 1, 0, '10/02/2020'),
(3, 'CSS', 'handshake-o', 'maroon', 'Community Service Support', 'Sep', 'Mar', 0, 1, 0, '10/02/2020'),
(4, 'SR', 'trophy', 'red', 'Sports & Recreation', 'Jan', 'Dec', 1, 0, 0, '10/02/2020'),
(5, 'L', 'language', 'green', 'Language Learning', 'Jan', 'Dec', 1, 0, 0, '10/02/2020'),
(6, 'STEM', 'laptop', 'yellow', 'STEMA Education', 'May', 'Sep', 1, 0, 0, '10/02/2020');

-- --------------------------------------------------------

--
-- Table structure for table `programmes`
--

CREATE TABLE `programmes` (
  `id` int(11) NOT NULL,
  `program_name` varchar(100) NOT NULL,
  `symbol` varchar(100) NOT NULL,
  `bg_color` varchar(100) NOT NULL,
  `activities` varchar(100) NOT NULL,
  `photo` text NOT NULL,
  `activity_description` text NOT NULL,
  `date_reg` varchar(100) NOT NULL,
  `date_start` varchar(100) NOT NULL,
  `date_end` varchar(100) NOT NULL,
  `duration` varchar(100) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `updated` tinyint(4) NOT NULL,
  `deleted` tinyint(4) NOT NULL,
  `suspended` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `programmes`
--

INSERT INTO `programmes` (`id`, `program_name`, `symbol`, `bg_color`, `activities`, `photo`, `activity_description`, `date_reg`, `date_start`, `date_end`, `duration`, `active`, `updated`, `deleted`, `suspended`) VALUES
(5, 'Educational Support', '', '', 'After School Program', '', 'Helping learners with extra classes, assignments, projects researches and more...', '10 Feb 2020', 'Feb', 'Nov', '', 1, 0, 0, 0),
(6, 'Educational Support', '', '', 'Educational Competition', '', 'Awarding learners and schools for performing very well', '10 Feb 2020', 'Feb', 'Nov', '', 1, 0, 0, 0),
(7, 'Community Service Support', '', '', 'Hope with iMentorU', '', 'Giving hope to the hopeless youth', '10 Feb 2020', 'Sep', 'Feb', '', 1, 0, 0, 0),
(8, 'Career Mentorship', '', '', 'Entrepreneurship Development', '', 'Helping young entrepreneurs with development', '10 Feb 2020', 'Mar', 'Sep', '', 1, 0, 0, 0),
(9, 'Educational Support', '', '', 'Tertiary Applications', '', 'Helping learners with admission applications for tertiary', '10 Feb 2020', 'Feb', 'Nov', '', 1, 0, 0, 0),
(10, 'Sports & Recreation', '', '', 'Soccer', '', 'Boys and ladies soccer for 8 - 27 years', '13 Feb 2020', 'Jan', 'Dec', '', 1, 0, 0, 0),
(11, 'Sports & Recreation', '', '', 'Netball', '', 'Ladies netball from 8 - 27  years', '13 Feb 2020', 'Jan', 'Dec', '', 1, 0, 0, 0),
(12, 'Language Learning', '', '', 'Speelling Bee', '', '              Spelling bee competition to enhance languages, especially in English', '10 Aug 2022', 'Jan', 'Dec', '', 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `program_schedule`
--

CREATE TABLE `program_schedule` (
  `id` int(11) NOT NULL,
  `schedule_code` varchar(100) NOT NULL,
  `schedule_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `program_schedule`
--

INSERT INTO `program_schedule` (`id`, `schedule_code`, `schedule_name`) VALUES
(1, 'Jan', 'January'),
(2, 'Feb', 'February'),
(3, 'Mar', 'March'),
(4, 'Apr', 'April'),
(5, 'May', 'May'),
(6, 'Jun', 'June'),
(7, 'Jul', 'July'),
(8, 'Aug', 'August'),
(9, 'Sep', 'September'),
(10, 'Oct', 'October'),
(11, 'Nov', 'November'),
(12, 'Dec', 'December');

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `id` int(11) NOT NULL,
  `province_name` text NOT NULL,
  `province_code` text NOT NULL,
  `coordinates` text NOT NULL,
  `country_code` text NOT NULL,
  `active` tinyint(4) NOT NULL,
  `updated` tinyint(4) NOT NULL,
  `deleted` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`id`, `province_name`, `province_code`, `coordinates`, `country_code`, `active`, `updated`, `deleted`) VALUES
(1, 'Eastern Cape', 'EC', '', 'RSA', 1, 0, 0),
(2, 'Free State', 'FS', '', 'RSA', 1, 0, 0),
(3, 'Gauteng', 'GP', '', 'RSA', 1, 0, 0),
(4, 'KwaZulu-Natal', 'ZN', '', 'RSA', 1, 0, 0),
(5, 'Limpopo', 'LP', '', 'RSA', 1, 0, 0),
(6, 'Matola', 'MT', '', 'MZ', 1, 0, 0),
(7, 'Mpumalanga', 'MP', '', 'RSA', 1, 0, 0),
(8, 'North West', 'NW', '', 'RSA', 1, 0, 0),
(9, 'Northern Cape', 'NC', '', 'RSA', 0, 0, 0),
(10, 'Western Cape', 'WC', '', 'RSA', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `quick_forum`
--

CREATE TABLE `quick_forum` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `message` text NOT NULL,
  `date_sent` text NOT NULL,
  `time_sent` text NOT NULL,
  `deleted` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quick_forum`
--

INSERT INTO `quick_forum` (`id`, `username`, `message`, `date_sent`, `time_sent`, `deleted`) VALUES
(1, 'tinyikom67', 'HELLO', '08 Feb', '13:49:54', 1),
(2, 'tinyikom67', 'hello MNHLURI', '09 Feb', '17:37:57', 1),
(3, 'tinyikom67', 'hey there, you good', '10 Feb', '22:44:19', 1),
(4, 'tinyikom67', 'hey there, you good', '13 Feb', '16:21:53', 1),
(5, 'tinyikom67', 'Hello Mr Chauke, I need help', '17 Feb', '11:11:04', 1),
(6, 'tinyikom67', 'Chat with mentees', '04 Aug', '01:50:49', 0),
(7, 'guestg38', 'hello there', '08 Aug', '12:30:28', 0),
(8, 'guestg38', 'hello there', '10 Aug', '23:20:30', 0),
(9, 'guestg38', 'Can we chat?', '10 Aug', '23:20:41', 0),
(10, 'guestg38', 'Are you sleeping already?', '10 Aug', '23:20:53', 0),
(11, 'guestg38', 'we`ll see soon', '10 Aug', '23:22:04', 0),
(12, 'tinyikom67', 'Let`s chat tomorrow', '11 Aug', '00:06:19', 1),
(13, 'tinyikom67', 'Good day', '11 Aug', '13:49:48', 0),
(14, 'tinyikom67', 'Hello everyone, hoping you are well', '03 Sep', '15:12:19', 1),
(15, 'tinyikom67', 'Hello everyone, hoping you are well', '03 Sep', '15:13:37', 1),
(16, 'tinyikom67', 'Hello everyone, hoping you are well', '03 Sep', '15:17:02', 1),
(17, 'tinyikom67', 'tinyiko', '03 Sep', '15:19:37', 0),
(20, 'guestg38', 'hello', '07 Sep', '22:28:00', 0),
(21, 'guestg38', 'Hello everyone, hoping you are well', '08 Sep', '11:13:30', 0),
(22, 'tinyikom67', 'i want a new app that deal with bugs managements', '2024-08-10', '19:44:58', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sponsors`
--

CREATE TABLE `sponsors` (
  `id` int(11) NOT NULL,
  `id_number` decimal(13,0) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL,
  `area` varchar(100) NOT NULL,
  `active_since` varchar(100) NOT NULL,
  `Facebook` varchar(100) NOT NULL,
  `Twitter` varchar(100) NOT NULL,
  `LinkedIn` varchar(100) NOT NULL,
  `Whatsapp` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `date_reg` varchar(100) NOT NULL,
  `logo_pic` text NOT NULL,
  `active` tinyint(4) NOT NULL,
  `updated` tinyint(4) NOT NULL,
  `deleted` tinyint(4) NOT NULL,
  `suspended` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sponsors`
--

INSERT INTO `sponsors` (`id`, `id_number`, `first_name`, `last_name`, `gender`, `phone`, `email`, `address`, `country`, `province`, `area`, `active_since`, `Facebook`, `Twitter`, `LinkedIn`, `Whatsapp`, `website`, `date_reg`, `logo_pic`, `active`, `updated`, `deleted`, `suspended`) VALUES
(1, 9876543210123, 'Alice', 'Johnson', 'Female', '+27123456789', 'alice.johnson@sponsor.com', '789 Corporate St', 'South Africa', 'Gauteng', 'Johannesburg', '2019-01-01', 'alice_johnson', '@alicejohnson', 'alice-johnson-linkedin', '+27123456789', 'www.alicesponsors.com', '2019-01-01', 'logo1.png', 1, 0, 0, 0),
(2, 9876543210124, 'Bob', 'Smith', 'Male', '+27123456780', 'bob.smith@sponsor.com', '456 Business Ave', 'South Africa', 'Western Cape', 'Cape Town', '2020-02-01', 'bob_smith', '@bobsmith', 'bob-smith-linkedin', '+27123456780', 'www.bobsponsors.com', '2020-02-01', 'logo2.png', 1, 1, 0, 0),
(3, 9876543210125, 'Catherine', 'Lee', 'Female', '+27123456781', 'catherine.lee@sponsor.com', '123 Main St', 'South Africa', 'KwaZulu-Natal', 'Durban', '2018-03-01', 'catherine_lee', '@catherinelee', 'catherine-lee-linkedin', '+27123456781', 'www.catherinesponsors.com', '2018-03-01', 'logo3.png', 1, 0, 0, 1),
(4, 9876543210126, 'David', 'Brown', 'Male', '+27123456782', 'david.brown@sponsor.com', '101 Maple St', 'South Africa', 'Eastern Cape', 'Port Elizabeth', '2021-04-01', 'david_brown', '@davidbrown', 'david-brown-linkedin', '+27123456782', 'www.davidsponsors.com', '2021-04-01', 'logo4.png', 1, 1, 0, 0),
(5, 9876543210127, 'Eve', 'Davis', 'Female', '+27123456783', 'eve.davis@sponsor.com', '202 Oak St', 'South Africa', 'Limpopo', 'Polokwane', '2022-05-01', 'eve_davis', '@evedavis', 'eve-davis-linkedin', '+27123456783', 'www.evesponsors.com', '2022-05-01', 'logo5.png', 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sponsorship`
--

CREATE TABLE `sponsorship` (
  `id` int(11) NOT NULL,
  `org_name` varchar(250) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `website` text NOT NULL,
  `message` text NOT NULL,
  `date_reg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `task` text NOT NULL,
  `date_set` varchar(50) NOT NULL,
  `time_set` varchar(50) NOT NULL,
  `date_due` varchar(50) NOT NULL,
  `time_due` varchar(50) NOT NULL,
  `task_status` varchar(20) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `updated` tinyint(4) NOT NULL,
  `deleted` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `username`, `task`, `date_set`, `time_set`, `date_due`, `time_due`, `task_status`, `active`, `updated`, `deleted`) VALUES
(1, 'tinyikom67', 'Teach grade 12', '10 Feb 2020', '22:45:09', '02/11/2020', '14:30', 'on', 0, 0, 0),
(2, 'guestg38', 'Check', '10 Aug 2022', '20:32:43', '08/11/2022', '10:30', 'off', 1, 0, 0),
(3, 'tinyikom67', 'TEST SYSTEM', '03 Sep 2022', '17:27:05', '09/01/2022', '19:29', 'on', 1, 0, 0),
(4, 'tinyikom67', 'Check again', '0303/0909/2022', '22:57:30', '08/30/2022', '01:00', 'off', 0, 0, 0),
(5, 'tinyikom67', 'Testing', '03/09/2022', '23:16:19', '09/02/2022', '00:17', 'off', 1, 0, 0),
(6, 'guestg38', 'Test system', '10/26/2022', '23:09:16', '10/28/2022', '14:00', 'off', 1, 0, 0),
(7, 'tinyikom67', 'finish the dashboard', '2024-08-10', '19:27:46', '2024-08-14', '23:59:59', 'pending', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_account`
--

CREATE TABLE `user_account` (
  `id` int(11) NOT NULL,
  `id_number` varchar(20) NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `gender` text NOT NULL,
  `date_of_birth` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` text NOT NULL,
  `physical_address` text NOT NULL,
  `postal_address` text NOT NULL,
  `occupation` text NOT NULL,
  `role_id` int(11) NOT NULL,
  `role_name` text NOT NULL,
  `country_id` int(11) NOT NULL,
  `country_name` text NOT NULL,
  `province_id` int(11) NOT NULL,
  `province_name` text NOT NULL,
  `town` varchar(100) NOT NULL,
  `terms` varchar(4) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `password_encrypted` varchar(100) NOT NULL,
  `profile_pic` text NOT NULL,
  `notes` text NOT NULL,
  `skills` text NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `instagram` varchar(100) NOT NULL,
  `linkedin` varchar(100) NOT NULL,
  `twitter` varchar(100) NOT NULL,
  `whatsapp` varchar(100) NOT NULL,
  `login_date` varchar(20) NOT NULL,
  `login_time` varchar(20) NOT NULL,
  `login_status` varchar(100) NOT NULL,
  `active_since` varchar(100) NOT NULL,
  `can_add` tinyint(4) NOT NULL,
  `can_update` tinyint(4) NOT NULL,
  `can_delete` tinyint(4) NOT NULL,
  `can_suspend` tinyint(4) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `updated` tinyint(4) NOT NULL,
  `deleted` tinyint(4) NOT NULL,
  `suspended` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_account`
--

INSERT INTO `user_account` (`id`, `id_number`, `first_name`, `last_name`, `gender`, `date_of_birth`, `email`, `phone`, `physical_address`, `postal_address`, `occupation`, `role_id`, `role_name`, `country_id`, `country_name`, `province_id`, `province_name`, `town`, `terms`, `user_id`, `username`, `password`, `password_encrypted`, `profile_pic`, `notes`, `skills`, `facebook`, `instagram`, `linkedin`, `twitter`, `whatsapp`, `login_date`, `login_time`, `login_status`, `active_since`, `can_add`, `can_update`, `can_delete`, `can_suspend`, `active`, `updated`, `deleted`, `suspended`) VALUES
(19, '0', 'Tinyiko Jr', 'Mabale', 'Male', '', 'tinyiko@ntidgroup.co.za', '27767232579', '', '', 'Entrepreneur, Software Developer', 1, 'Admin', 1, '', 3, '', 'Pretoria', 'on', 'TM59549', 'tinyikom67', '3100', 'cc3d69ed781b16bce06687822ae56e6d', 'user_male.png', '', 'Programming, Typing, Communication', 'tmiraclemabale', 'tmiraclemabale', 'tmiraclemabale', 'tmiraclemabale', '27684399291', '18 May 24', '09:35:39', 'Online', '30/11/2019', 0, 0, 0, 0, 1, 1, 0, 0),
(25, '', 'Guest', 'Guest', 'Male', '02/01/2020', 'info@imentoru.org.za', '(0__) ___-____', '', '', '', 1, 'General', 1, 'South Africa', 3, 'Gauteng', 'Pretoria', 'on', 'GG56864', 'guestg38', '3100', 'cc3d69ed781b16bce06687822ae56e6d', 'user_male.png', '', '', '', '', '', '', '', '26 Oct 22', '23:59:57', 'Online', '08 Feb 2020', 1, 1, 1, 1, 1, 0, 0, 0),
(26, '', 'gumani', 'Moila', 'Male', '09/22/23', 'surprisegumani@gmail.com', '0716714840', '', '', '', 1, 'Admin', 1, 'South Africa', 3, 'Gauteng', 'Pretoria', 'on', 'gM19916', 'gumanim63', '5791', '05b0afd266cc205432b8dad3f3413c28', 'user_male.png', '', '', '', '', '', '', '', '', '', '', '22 Apr 2024', 1, 1, 1, 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_report`
--

CREATE TABLE `user_report` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_id` text NOT NULL,
  `username` text NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `login_date` text NOT NULL,
  `login_time` text NOT NULL,
  `login_location` text NOT NULL,
  `login_ip` text NOT NULL,
  `login_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_report`
--

INSERT INTO `user_report` (`id`, `role_id`, `user_id`, `username`, `first_name`, `last_name`, `login_date`, `login_time`, `login_location`, `login_ip`, `login_status`) VALUES
(76, 1, 'GG56864', 'guestg38', 'Guest', 'Guest', '26 Oct 22', '23:59:50', '', '', 'Offline'),
(77, 1, 'GG56864', 'guestg38', 'Guest', 'Guest', '26 Oct 22', '23:59:57', '', '', 'Online'),
(78, 1, 'TM59549', 'tinyikom67', 'Tinyiko Jr', 'Mabale', '22 Apr 24', '13:46:46', '', '', 'Online'),
(79, 1, 'TM59549', 'tinyikom67', 'Tinyiko Jr', 'Mabale', '22 Apr 24', '20:29:29', '', '', 'Online'),
(80, 1, 'TM59549', 'tinyikom67', 'Tinyiko Jr', 'Mabale', '18 May 24', '09:35:39', '', '', 'Online');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `role_code` varchar(50) NOT NULL,
  `can_add` tinyint(4) NOT NULL,
  `can_update` tinyint(4) NOT NULL,
  `can_delete` tinyint(4) NOT NULL,
  `updated` tinyint(4) NOT NULL,
  `deleted` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role_name`, `role_code`, `can_add`, `can_update`, `can_delete`, `updated`, `deleted`) VALUES
(1, 'Admin', 'role1', 1, 1, 1, 0, 0),
(2, 'Coordinator', 'role2', 1, 1, 1, 0, 0),
(3, 'Director', 'role3', 1, 1, 1, 0, 0),
(4, 'Executive', 'role4', 1, 1, 1, 0, 0),
(5, 'General', 'role5', 0, 0, 0, 0, 0),
(6, 'Mentor', 'role6', 0, 0, 0, 0, 0),
(7, 'Mentee', 'role7', 0, 0, 0, 0, 0),
(8, 'Partner', 'role8', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `ip_address_encrypted` varchar(255) NOT NULL,
  `visitor_location` varchar(255) NOT NULL,
  `date_visit` varchar(100) NOT NULL,
  `time_visit` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `ip_address`, `ip_address_encrypted`, `visitor_location`, `date_visit`, `time_visit`) VALUES
(1, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:12:56'),
(2, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:18:22'),
(3, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:12:45'),
(4, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:Dec:05'),
(5, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '1608294390'),
(6, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020-12-18', '13:12:08'),
(7, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020-12-18', '13:12:15'),
(8, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:27:43'),
(9, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:10'),
(10, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:11'),
(11, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:12'),
(12, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:13'),
(13, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:13'),
(14, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:14'),
(15, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:14'),
(16, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:15'),
(17, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:15'),
(18, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:16'),
(19, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:17'),
(20, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:18'),
(21, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:18'),
(22, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:18'),
(23, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:19'),
(24, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:19'),
(25, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:20'),
(26, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:21'),
(27, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:22'),
(28, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:22'),
(29, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:23'),
(30, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:23'),
(31, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:24'),
(32, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:25'),
(33, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:25'),
(34, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:26'),
(35, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:27'),
(36, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:27'),
(37, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:28'),
(38, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:28'),
(39, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:29'),
(40, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:30'),
(41, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:30'),
(42, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:31'),
(43, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:32'),
(44, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:32'),
(45, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:33'),
(46, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:33'),
(47, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:34'),
(48, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:34'),
(49, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:35'),
(50, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:36'),
(51, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:36'),
(52, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:37'),
(53, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:38'),
(54, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:38'),
(55, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:38'),
(56, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:39'),
(57, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:39'),
(58, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:40'),
(59, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:41'),
(60, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:41'),
(61, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:42'),
(62, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:42'),
(63, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:43'),
(64, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:44'),
(65, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:44'),
(66, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:45'),
(67, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:45'),
(68, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:46'),
(69, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:47'),
(70, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:47'),
(71, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:48'),
(72, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:48'),
(73, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:49'),
(74, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:50'),
(75, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:50'),
(76, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:50'),
(77, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:51'),
(78, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:52'),
(79, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:52'),
(80, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:53'),
(81, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:54'),
(82, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:54'),
(83, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:55'),
(84, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:55'),
(85, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:56'),
(86, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:57'),
(87, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:57'),
(88, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:58'),
(89, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:58'),
(90, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:28:59'),
(91, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:00'),
(92, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:00'),
(93, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:01'),
(94, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:01'),
(95, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:02'),
(96, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:02'),
(97, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:03'),
(98, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:04'),
(99, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:05'),
(100, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:05'),
(101, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:06'),
(102, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:10'),
(103, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:10'),
(104, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:11'),
(105, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:12'),
(106, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:12'),
(107, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:13'),
(108, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:13'),
(109, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:14'),
(110, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:15'),
(111, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:15'),
(112, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:16'),
(113, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:17'),
(114, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:17'),
(115, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:18'),
(116, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:18'),
(117, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:19'),
(118, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:20'),
(119, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:20'),
(120, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:21'),
(121, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:22'),
(122, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:22'),
(123, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:23'),
(124, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:24'),
(125, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:24'),
(126, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:25'),
(127, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:26'),
(128, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:28'),
(129, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:28'),
(130, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:29'),
(131, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:30'),
(132, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:30'),
(133, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:31'),
(134, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:31'),
(135, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:32'),
(136, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:33'),
(137, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:34'),
(138, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:34'),
(139, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:35'),
(140, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:35'),
(141, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:36'),
(142, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:37'),
(143, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:37'),
(144, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:38'),
(145, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:38'),
(146, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:39'),
(147, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:40'),
(148, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:40'),
(149, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:41'),
(150, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:29:42'),
(151, '::1', '837ec5754f503cfaaee0929fd48974e7\r\n', '', '2020 Dec 18', '14:30:47'),
(5001, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:31:49'),
(5002, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:31:49'),
(5003, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:31:50'),
(5004, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:31:51'),
(5005, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:31:51'),
(5006, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:31:53'),
(5007, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:31:53'),
(5008, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:31:54'),
(5009, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:31:55'),
(5010, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:31:56'),
(5011, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:31:56'),
(5012, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:31:57'),
(5013, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:31:57'),
(5014, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:31:58'),
(5015, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:31:58'),
(5016, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:31:59'),
(5017, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:00'),
(5018, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:01'),
(5019, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:01'),
(5020, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:02'),
(5021, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:02'),
(5022, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:03'),
(5023, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:04'),
(5024, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:04'),
(5025, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:05'),
(5026, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:06'),
(5027, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:07'),
(5028, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:07'),
(5029, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:08'),
(5030, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:09'),
(5031, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:09'),
(5032, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:10'),
(5033, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:11'),
(5034, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:11'),
(5035, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:12'),
(5036, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:12'),
(5037, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:13'),
(5038, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:13'),
(5039, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:14'),
(5040, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:14'),
(5041, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:15'),
(5042, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:16'),
(5043, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:16'),
(5044, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:17'),
(5045, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:18'),
(5046, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:18'),
(5047, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:19'),
(5048, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:19'),
(5049, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:20'),
(5050, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:21'),
(5051, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:21'),
(5052, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:22'),
(5053, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:22'),
(5054, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:23'),
(5055, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:23'),
(5056, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:24'),
(5057, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:25'),
(5058, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:26'),
(5059, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:26'),
(5060, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:27'),
(5061, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:28'),
(5062, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:29'),
(5063, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:30'),
(5064, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:31'),
(5065, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:32'),
(5066, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:33'),
(5067, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:34'),
(5068, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:35'),
(5069, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:36'),
(5070, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:37'),
(5071, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:38'),
(5072, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:39'),
(5073, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:40'),
(5074, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:40'),
(5075, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:42'),
(5076, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:43'),
(5077, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:44'),
(5078, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:45'),
(5079, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:47'),
(5080, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:48'),
(5081, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:49'),
(5082, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:50'),
(5083, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:50'),
(5084, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:53'),
(5085, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:54'),
(5086, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:55'),
(5087, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:55'),
(5088, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:56'),
(5089, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:57'),
(5090, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:58'),
(5091, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:32:59'),
(5092, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:00'),
(5093, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:00'),
(5094, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:02'),
(5095, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:03'),
(5096, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:04'),
(5097, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:05'),
(5098, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:05'),
(5099, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:06'),
(5100, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:07'),
(5101, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:07'),
(5102, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:08'),
(5103, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:09'),
(5104, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:09'),
(5105, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:10'),
(5106, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:11'),
(5107, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:11'),
(5108, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:12'),
(5109, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:13'),
(5110, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:14'),
(5111, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:15'),
(5112, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:16'),
(5113, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:18'),
(5114, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:20'),
(5115, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:21'),
(5116, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:22'),
(5117, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:23'),
(5118, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:24'),
(5119, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:25'),
(5120, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:25'),
(5121, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:26'),
(5122, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:27'),
(5123, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:28'),
(5124, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:29'),
(5125, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:30'),
(5126, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:30'),
(5127, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:30'),
(5128, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:31'),
(5129, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:32'),
(5130, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:32'),
(5131, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:36'),
(5132, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:39'),
(5133, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:40'),
(5134, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:40'),
(5135, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:41'),
(5136, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:42'),
(5137, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:43'),
(5138, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:44'),
(5139, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:45'),
(5140, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:45'),
(5141, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:46'),
(5142, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:47'),
(5143, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:47'),
(5144, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:48'),
(5145, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:49'),
(5146, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:49'),
(5147, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:50'),
(5148, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:51'),
(5149, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:52'),
(5150, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:52'),
(5151, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:54'),
(5152, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:54'),
(5153, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:55'),
(5154, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:56'),
(5155, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:57'),
(5156, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:57'),
(5157, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:58'),
(5158, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:58'),
(5159, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:33:59'),
(5160, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:00'),
(5161, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:00'),
(5162, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:01'),
(5163, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:01'),
(5164, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:02'),
(5165, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:02'),
(5166, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:03'),
(5167, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:04'),
(5168, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:04'),
(5169, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:05'),
(5170, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:05'),
(5171, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:06'),
(5172, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:06'),
(5173, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:07'),
(5174, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:08'),
(5175, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:09'),
(5176, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:10'),
(5177, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:10'),
(5178, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:11'),
(5179, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:11'),
(5180, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:12'),
(5181, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:13'),
(5182, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:14'),
(5183, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:14'),
(5184, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:15'),
(5185, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:15'),
(5186, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:15'),
(5187, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:16'),
(5188, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:17'),
(5189, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:17'),
(5190, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:18'),
(5191, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:19'),
(5192, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:19'),
(5193, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:22'),
(5194, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:23'),
(5195, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:24'),
(5196, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:24'),
(5197, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:25'),
(5198, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:26'),
(5199, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:27'),
(5200, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:28'),
(5201, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:29'),
(5202, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:29'),
(5203, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:30'),
(5204, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:31'),
(5205, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:31'),
(5206, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:32'),
(5207, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:33'),
(5208, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:33'),
(5209, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:35'),
(5210, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:36'),
(5211, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:37'),
(5212, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:38'),
(5213, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:38'),
(5214, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:39'),
(5215, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:40'),
(5216, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:40'),
(5217, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:41'),
(5218, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:42'),
(5219, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:43'),
(5220, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:43'),
(5221, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:44'),
(5222, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:45'),
(5223, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:45'),
(5224, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:46'),
(5225, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:47'),
(5226, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:47'),
(5227, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:48'),
(5228, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:49'),
(5229, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:50'),
(5230, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:51'),
(5231, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:52'),
(5232, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:53'),
(5233, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:54'),
(5234, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:56'),
(5235, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:57'),
(5236, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:34:58'),
(5237, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:35:01'),
(5238, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:35:04'),
(5239, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:35:05'),
(5240, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:35:06'),
(5241, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:35:06'),
(5242, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:35:07'),
(5243, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:35:08'),
(5244, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:35:11'),
(5245, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:35:12'),
(5246, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:35:13'),
(5247, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:35:15'),
(5248, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:35:15'),
(5249, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:35:17'),
(5250, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:35:18'),
(5251, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:35:19'),
(5252, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:35:20'),
(5253, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:35:21'),
(5254, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:35:22'),
(5255, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:35:23'),
(5256, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:35:24'),
(5257, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:35:25'),
(5258, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:35:26'),
(5259, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:35:29'),
(5260, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:35:33'),
(5261, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:35:34'),
(5262, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:35:35'),
(5263, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:35:36'),
(5264, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:35:37'),
(5265, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:35:38'),
(5266, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:35:40'),
(5267, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:35:41'),
(5268, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:35:42'),
(5269, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:35:45'),
(5270, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:35:48'),
(5271, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:35:49'),
(5272, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:35:51'),
(5273, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:35:52'),
(5274, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:35:53'),
(5275, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:35:54'),
(5276, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:35:55'),
(5277, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:35:56'),
(5278, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:35:58'),
(5279, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:35:59'),
(5280, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:00'),
(5281, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:01'),
(5282, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:02'),
(5283, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:03'),
(5284, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:05'),
(5285, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:06'),
(5286, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:07'),
(5287, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:07'),
(5288, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:08'),
(5289, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:09'),
(5290, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:09'),
(5291, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:10'),
(5292, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:11'),
(5293, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:11'),
(5294, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:12'),
(5295, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:13'),
(5296, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:13'),
(5297, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:14'),
(5298, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:15'),
(5299, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:16'),
(5300, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:17'),
(5301, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:18'),
(5302, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:19'),
(5303, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:19'),
(5304, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:20'),
(5305, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:21'),
(5306, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:21'),
(5307, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:22'),
(5308, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:23'),
(5309, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:23'),
(5310, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:24'),
(5311, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:25'),
(5312, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:26'),
(5313, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:26'),
(5314, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:27'),
(5315, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:28'),
(5316, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:31'),
(5317, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:32'),
(5318, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:34'),
(5319, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:35'),
(5320, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:36'),
(5321, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:36'),
(5322, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:37'),
(5323, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:38'),
(5324, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:39'),
(5325, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:40'),
(5326, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:41'),
(5327, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:42'),
(5328, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:43'),
(5329, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:43'),
(5330, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:44'),
(5331, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:47'),
(5332, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:47'),
(5333, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:48'),
(5334, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:49'),
(5335, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:51'),
(5336, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:53'),
(5337, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:53'),
(5338, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:54'),
(5339, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:55'),
(5340, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:56'),
(5341, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:56'),
(5342, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:36:57'),
(5343, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:37:00'),
(5344, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:37:01'),
(5345, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:37:02'),
(5346, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:37:04'),
(5347, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:37:06'),
(5348, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:37:08'),
(5349, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:37:10'),
(5350, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:37:11'),
(5351, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:37:14'),
(5352, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:37:15'),
(5353, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:37:19'),
(5354, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:37:20'),
(5355, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:37:21'),
(5356, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:37:22'),
(5357, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:37:22'),
(5358, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:37:23'),
(5359, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:37:24'),
(5360, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:37:25'),
(5361, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:37:28'),
(5362, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:37:29'),
(5363, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:37:32'),
(5364, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:37:34'),
(5365, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:37:38'),
(5366, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:37:40'),
(5367, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:37:42'),
(5368, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:37:43'),
(5369, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:37:43'),
(5370, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:37:44'),
(5371, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:37:45'),
(5372, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:37:45'),
(5373, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:37:46'),
(5374, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:37:47'),
(5375, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:37:47'),
(5376, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:37:48'),
(5377, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:37:49'),
(5378, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:37:50'),
(5379, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:37:51'),
(5380, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:37:51'),
(5381, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:37:52'),
(5382, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:37:53'),
(5383, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:37:57'),
(5384, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:37:58'),
(5385, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:38:02'),
(5386, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:38:04'),
(5387, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:38:12'),
(5388, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:38:14'),
(5389, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:38:16'),
(5390, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:38:18'),
(5391, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:38:18'),
(5392, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:38:19'),
(5393, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:38:20'),
(5394, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:38:21'),
(5395, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:38:22'),
(5396, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:38:23'),
(5397, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:38:30'),
(5398, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:38:31'),
(5399, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:38:32'),
(5400, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:38:35'),
(5401, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:38:44'),
(5402, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:38:46'),
(5403, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:38:48'),
(5404, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:38:49'),
(5405, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:38:50'),
(5406, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:38:51'),
(5407, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:38:54'),
(5408, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:38:55'),
(5409, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:38:56'),
(5410, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:38:58'),
(5411, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:38:59'),
(5412, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:38:59'),
(5413, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:00'),
(5414, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:01'),
(5415, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:05'),
(5416, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:06'),
(5417, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:09'),
(5418, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:14'),
(5419, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:15'),
(5420, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:17'),
(5421, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:18'),
(5422, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:19'),
(5423, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:21'),
(5424, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:22'),
(5425, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:23'),
(5426, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:24'),
(5427, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:24'),
(5428, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:25'),
(5429, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:27'),
(5430, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:27'),
(5431, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:28'),
(5432, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:29'),
(5433, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:29'),
(5434, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:30'),
(5435, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:31'),
(5436, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:32'),
(5437, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:33'),
(5438, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:34'),
(5439, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:35'),
(5440, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:35'),
(5441, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:36'),
(5442, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:38'),
(5443, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:41'),
(5444, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:42'),
(5445, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:43'),
(5446, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:43'),
(5447, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:47'),
(5448, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:47'),
(5449, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:49'),
(5450, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:49'),
(5451, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:50'),
(5452, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:51'),
(5453, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:52'),
(5454, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:53'),
(5455, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:54'),
(5456, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:55'),
(5457, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:55'),
(5458, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:56'),
(5459, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:57'),
(5460, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:58'),
(5461, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:59'),
(5462, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:39:59'),
(5463, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:00'),
(5464, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:00'),
(5465, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:01'),
(5466, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:02'),
(5467, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:03'),
(5468, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:04'),
(5469, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:04'),
(5470, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:05'),
(5471, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:06'),
(5472, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:07'),
(5473, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:08'),
(5474, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:08'),
(5475, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:08');
INSERT INTO `visitors` (`id`, `ip_address`, `ip_address_encrypted`, `visitor_location`, `date_visit`, `time_visit`) VALUES
(5476, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:10'),
(5477, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:10'),
(5478, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:11'),
(5479, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:12'),
(5480, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:12'),
(5481, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:13'),
(5482, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:14'),
(5483, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:14'),
(5484, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:15'),
(5485, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:15'),
(5486, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:16'),
(5487, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:17'),
(5488, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:17'),
(5489, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:18'),
(5490, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:20'),
(5491, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:20'),
(5492, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:21'),
(5493, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:22'),
(5494, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:22'),
(5495, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:23'),
(5496, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:24'),
(5497, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:24'),
(5498, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:25'),
(5499, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:26'),
(5500, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:27'),
(5501, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:28'),
(5502, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:28'),
(5503, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:29'),
(5504, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:30'),
(5505, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:30'),
(5506, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:31'),
(5507, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:32'),
(5508, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:31'),
(5509, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:33'),
(5510, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:34'),
(5511, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:34'),
(5512, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:35'),
(5513, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:36'),
(5514, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:38'),
(5515, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:42'),
(5516, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:44'),
(5517, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:49'),
(5518, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:50'),
(5519, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:54'),
(5520, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:53'),
(5521, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:52'),
(5522, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:54'),
(5523, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:47'),
(5524, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:46'),
(5525, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:46'),
(5526, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:58'),
(5527, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:57'),
(5528, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:45'),
(5529, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:59'),
(5530, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:40:50'),
(5531, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:41:02'),
(5532, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:41:04'),
(5533, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:41:05'),
(5534, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:51:13'),
(5535, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:51:14'),
(5536, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:51:15'),
(5537, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:51:16'),
(5538, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:51:17'),
(5539, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:51:18'),
(5540, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:51:19'),
(5541, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:51:24'),
(5542, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:51:24'),
(5543, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:51:25'),
(5544, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:51:26'),
(5545, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:51:27'),
(5546, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:51:28'),
(5547, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:51:28'),
(5548, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:51:29'),
(5549, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:51:30'),
(5550, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:51:31'),
(5551, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:51:32'),
(5552, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:51:32'),
(5553, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:51:33'),
(5554, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:51:34'),
(5555, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:51:35'),
(5556, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:52:34'),
(5557, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:52:38'),
(5558, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:52:38'),
(5559, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:52:40'),
(5560, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:52:41'),
(5561, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:52:41'),
(5562, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:52:42'),
(5563, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:52:42'),
(5564, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:52:43'),
(5565, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:52:44'),
(5566, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:52:44'),
(5567, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:52:45'),
(5568, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:52:45'),
(5569, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:52:46'),
(5570, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:52:47'),
(5571, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:52:52'),
(5572, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:52:53'),
(5573, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:52:55'),
(5574, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:52:55'),
(5575, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:52:57'),
(5576, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:52:59'),
(5577, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:00'),
(5578, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:02'),
(5579, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:03'),
(5580, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:04'),
(5581, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:04'),
(5582, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:05'),
(5583, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:06'),
(5584, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:07'),
(5585, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:07'),
(5586, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:08'),
(5587, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:09'),
(5588, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:10'),
(5589, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:12'),
(5590, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:14'),
(5591, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:14'),
(5592, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:16'),
(5593, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:20'),
(5594, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:21'),
(5595, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:23'),
(5596, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:24'),
(5597, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:25'),
(5598, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:25'),
(5599, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:26'),
(5600, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:26'),
(5601, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:28'),
(5602, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:29'),
(5603, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:29'),
(5604, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:32'),
(5605, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:32'),
(5606, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:34'),
(5607, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:34'),
(5608, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:37'),
(5609, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:38'),
(5610, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:39'),
(5611, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:40'),
(5612, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:41'),
(5613, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:42'),
(5614, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:43'),
(5615, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:44'),
(5616, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:44'),
(5617, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:45'),
(5618, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:46'),
(5619, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:47'),
(5620, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:48'),
(5621, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:49'),
(5622, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:49'),
(5623, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:50'),
(5624, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:50'),
(5625, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:51'),
(5626, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:52'),
(5627, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:52'),
(5628, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:53'),
(5629, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:53'),
(5630, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:54'),
(5631, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:54'),
(5632, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:55'),
(5633, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:56'),
(5634, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:57'),
(5635, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:57'),
(5636, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:58'),
(5637, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:58'),
(5638, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:53:59'),
(5639, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:00'),
(5640, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:00'),
(5641, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:01'),
(5642, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:02'),
(5643, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:02'),
(5644, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:03'),
(5645, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:04'),
(5646, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:04'),
(5647, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:05'),
(5648, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:05'),
(5649, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:06'),
(5650, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:06'),
(5651, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:07'),
(5652, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:08'),
(5653, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:09'),
(5654, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:09'),
(5655, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:10'),
(5656, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:11'),
(5657, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:11'),
(5658, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:11'),
(5659, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:12'),
(5660, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:12'),
(5661, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:13'),
(5662, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:14'),
(5663, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:14'),
(5664, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:15'),
(5665, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:16'),
(5666, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:16'),
(5667, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:17'),
(5668, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:17'),
(5669, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:18'),
(5670, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:19'),
(5671, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:20'),
(5672, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:21'),
(5673, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:23'),
(5674, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:24'),
(5675, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:24'),
(5676, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:25'),
(5677, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:26'),
(5678, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:26'),
(5679, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:27'),
(5680, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:28'),
(5681, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:28'),
(5682, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:28'),
(5683, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:29'),
(5684, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:30'),
(5685, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:31'),
(5686, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:31'),
(5687, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:32'),
(5688, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:33'),
(5689, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:33'),
(5690, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:34'),
(5691, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:34'),
(5692, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:35'),
(5693, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:35'),
(5694, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:36'),
(5695, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:36'),
(5696, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:37'),
(5697, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:37'),
(5698, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:38'),
(5699, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:39'),
(5700, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:39'),
(5701, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:44'),
(5702, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:45'),
(5703, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:46'),
(5704, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:46'),
(5705, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:47'),
(5706, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:48'),
(5707, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:48'),
(5708, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:55'),
(5709, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:56'),
(5710, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:57'),
(5711, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:57'),
(5712, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:58'),
(5713, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:59'),
(5714, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:54:59'),
(5715, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:00'),
(5716, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:00'),
(5717, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:01'),
(5718, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:01'),
(5719, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:02'),
(5720, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:03'),
(5721, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:04'),
(5722, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:04'),
(5723, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:05'),
(5724, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:06'),
(5725, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:06'),
(5726, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:07'),
(5727, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:07'),
(5728, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:08'),
(5729, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:10'),
(5730, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:10'),
(5731, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:11'),
(5732, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:11'),
(5733, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:12'),
(5734, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:13'),
(5735, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:14'),
(5736, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:15'),
(5737, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:15'),
(5738, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:17'),
(5739, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:17'),
(5740, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:18'),
(5741, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:19'),
(5742, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:21'),
(5743, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:21'),
(5744, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:22'),
(5745, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:23'),
(5746, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:23'),
(5747, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:24'),
(5748, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:25'),
(5749, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:40'),
(5750, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:41'),
(5751, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:43'),
(5752, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:43'),
(5753, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:45'),
(5754, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:46'),
(5755, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:51'),
(5756, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:53'),
(5757, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:54'),
(5758, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:55'),
(5759, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:56'),
(5760, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:56'),
(5761, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:57'),
(5762, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:58'),
(5763, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:55:59'),
(5764, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:00'),
(5765, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:01'),
(5766, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:02'),
(5767, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:03'),
(5768, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:04'),
(5769, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:05'),
(5770, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:12'),
(5771, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:13'),
(5772, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:14'),
(5773, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:15'),
(5774, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:15'),
(5775, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:16'),
(5776, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:17'),
(5777, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:18'),
(5778, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:18'),
(5779, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:19'),
(5780, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:19'),
(5781, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:20'),
(5782, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:21'),
(5783, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:22'),
(5784, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:22'),
(5785, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:23'),
(5786, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:24'),
(5787, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:25'),
(5788, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:25'),
(5789, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:26'),
(5790, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:26'),
(5791, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:27'),
(5792, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:30'),
(5793, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:30'),
(5794, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:32'),
(5795, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:33'),
(5796, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:34'),
(5797, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:35'),
(5798, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:36'),
(5799, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:36'),
(5800, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:38'),
(5801, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:38'),
(5802, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:40'),
(5803, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:41'),
(5804, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:43'),
(5805, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:45'),
(5806, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:46'),
(5807, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:47'),
(5808, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:47'),
(5809, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:49'),
(5810, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:50'),
(5811, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:51'),
(5812, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:53'),
(5813, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:59'),
(5814, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:56:59'),
(5815, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:57:00'),
(5816, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:57:02'),
(5817, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:57:03'),
(5818, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:57:03'),
(5819, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:57:05'),
(5820, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:57:05'),
(5821, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:57:06'),
(5822, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:57:08'),
(5823, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:57:12'),
(5824, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:57:14'),
(5825, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:57:15'),
(5826, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:57:16'),
(5827, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:57:17'),
(5828, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:57:18'),
(5829, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:57:19'),
(5830, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:57:19'),
(5831, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:57:21'),
(5832, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:57:23'),
(5833, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:57:25'),
(5834, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:57:25'),
(5835, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:57:26'),
(5836, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:57:26'),
(5837, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:57:28'),
(5838, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:57:32'),
(5839, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:57:33'),
(5840, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:57:34'),
(5841, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:57:35'),
(5842, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:57:35'),
(5843, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:57:36'),
(5844, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:57:37'),
(5845, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:57:38'),
(5846, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:57:39'),
(5847, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:57:40'),
(5848, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:57:42'),
(5849, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:57:43'),
(5850, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:57:46'),
(5851, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:57:46'),
(5852, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:57:52'),
(5853, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:57:53'),
(5854, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:57:56'),
(5855, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:57:56'),
(5856, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:57:59'),
(5857, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:58:01'),
(5858, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:58:04'),
(5859, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:58:07'),
(5860, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:58:08'),
(5861, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:58:10'),
(5862, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:58:10'),
(5863, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:58:11'),
(5864, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:58:12'),
(5865, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:58:13'),
(5866, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:58:16'),
(5867, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:58:17'),
(5868, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:58:22'),
(5869, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:58:23'),
(5870, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:58:24'),
(5871, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:58:26'),
(5872, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:58:30'),
(5873, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:58:31'),
(5874, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:58:32'),
(5875, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:58:33'),
(5876, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:58:35'),
(5877, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:58:36'),
(5878, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:58:37'),
(5879, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:58:49'),
(5880, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:58:51'),
(5881, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:58:52'),
(5882, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:58:53'),
(5883, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:58:54'),
(5884, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:58:54'),
(5885, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:58:55'),
(5886, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:58:56'),
(5887, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:58:57'),
(5888, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:58:57'),
(5889, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:58:58'),
(5890, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:58:59'),
(5891, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:58:59'),
(5892, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:00'),
(5893, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:01'),
(5894, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:02'),
(5895, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:02'),
(5896, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:03'),
(5897, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:03'),
(5898, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:04'),
(5899, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:05'),
(5900, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:05'),
(5901, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:06'),
(5902, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:07'),
(5903, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:08'),
(5904, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:08'),
(5905, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:09'),
(5906, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:09'),
(5907, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:10'),
(5908, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:10'),
(5909, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:11'),
(5910, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:11'),
(5911, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:12'),
(5912, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:13'),
(5913, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:14'),
(5914, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:14'),
(5915, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:15'),
(5916, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:15'),
(5917, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:16'),
(5918, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:17'),
(5919, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:18'),
(5920, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:18'),
(5921, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:19'),
(5922, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:20'),
(5923, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:21'),
(5924, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:22'),
(5925, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:22'),
(5926, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:23'),
(5927, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:24'),
(5928, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:25'),
(5929, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:29'),
(5930, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:30'),
(5931, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:30'),
(5932, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:31'),
(5933, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:33'),
(5934, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:34'),
(5935, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:35'),
(5936, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:37'),
(5937, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:40'),
(5938, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:42'),
(5939, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:43'),
(5940, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:44'),
(5941, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:47'),
(5942, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:50'),
(5943, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:50'),
(5944, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:52'),
(5945, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:54'),
(5946, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:55'),
(5947, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:56'),
(5948, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '13:59:58'),
(5949, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:00:00'),
(5950, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:00:06'),
(5951, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:00:11'),
(5952, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:00:14'),
(5953, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:00:17'),
(5954, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:00:18'),
(5955, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:00:20'),
(5956, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:00:23'),
(5957, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:00:26'),
(5958, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:00:28'),
(5959, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:00:30'),
(5960, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:00:34'),
(5961, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:00:39'),
(5962, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:00:42'),
(5963, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:00:47'),
(5964, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:00:49'),
(5965, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:00:50'),
(5966, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:01'),
(5967, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:01'),
(5968, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:02'),
(5969, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:03'),
(5970, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:03'),
(5971, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:04'),
(5972, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:05'),
(5973, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:05'),
(5974, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:06'),
(5975, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:07'),
(5976, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:07'),
(5977, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:08'),
(5978, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:09'),
(5979, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:09'),
(5980, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:10'),
(5981, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:11'),
(5982, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:12'),
(5983, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:13'),
(5984, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:13'),
(5985, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:17'),
(5986, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:17'),
(5987, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:18'),
(5988, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:19'),
(5989, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:19'),
(5990, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:20'),
(5991, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:21'),
(5992, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:22'),
(5993, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:22'),
(5994, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:23'),
(5995, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:24'),
(5996, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:25'),
(5997, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:26'),
(5998, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:27'),
(5999, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:27'),
(6000, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:28'),
(6001, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:29'),
(6002, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:31'),
(6003, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:34'),
(6004, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:35'),
(6005, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:36'),
(6006, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:37'),
(6007, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:37'),
(6008, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:38'),
(6009, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:39'),
(6010, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:40'),
(6011, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:40'),
(6012, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:41'),
(6013, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:42'),
(6014, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:43'),
(6015, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:43'),
(6016, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:44'),
(6017, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:45'),
(6018, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:45'),
(6019, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:47'),
(6020, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:47'),
(6021, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:48'),
(6022, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:50'),
(6023, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:51'),
(6024, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:52'),
(6025, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:56'),
(6026, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:57'),
(6027, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:02:59'),
(6028, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:14'),
(6029, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:15'),
(6030, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:15'),
(6031, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:16'),
(6032, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:17'),
(6033, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:18'),
(6034, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:19'),
(6035, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:19'),
(6036, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:20'),
(6037, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:21'),
(6038, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:21'),
(6039, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:22'),
(6040, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:23'),
(6041, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:23'),
(6042, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:24'),
(6043, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:25'),
(6044, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:25'),
(6045, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:26'),
(6046, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:27'),
(6047, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:27'),
(6048, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:28'),
(6049, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:28'),
(6050, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:29'),
(6051, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:30'),
(6052, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:30'),
(6053, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:31'),
(6054, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:32'),
(6055, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:33'),
(6056, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:34'),
(6057, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:35'),
(6058, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:37'),
(6059, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:38'),
(6060, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:39'),
(6061, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:40'),
(6062, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:41'),
(6063, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:42'),
(6064, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:42'),
(6065, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:43'),
(6066, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:44'),
(6067, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:45'),
(6068, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:46'),
(6069, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:47'),
(6070, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:48'),
(6071, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:49'),
(6072, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:50'),
(6073, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:50'),
(6074, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:51'),
(6075, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:53'),
(6076, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:54'),
(6077, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:55'),
(6078, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:56'),
(6079, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:57'),
(6080, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:58'),
(6081, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:58'),
(6082, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:03:59'),
(6083, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:00'),
(6084, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:00'),
(6085, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:01'),
(6086, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:02'),
(6087, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:02'),
(6088, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:03'),
(6089, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:04'),
(6090, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:05'),
(6091, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:05'),
(6092, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:06'),
(6093, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:07'),
(6094, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:08'),
(6095, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:08'),
(6096, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:09'),
(6097, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:10'),
(6098, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:11');
INSERT INTO `visitors` (`id`, `ip_address`, `ip_address_encrypted`, `visitor_location`, `date_visit`, `time_visit`) VALUES
(6099, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:13'),
(6100, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:13'),
(6101, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:14'),
(6102, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:16'),
(6103, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:17'),
(6104, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:18'),
(6105, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:19'),
(6106, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:19'),
(6107, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:20'),
(6108, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:23'),
(6109, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:24'),
(6110, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:26'),
(6111, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:26'),
(6112, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:27'),
(6113, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:28'),
(6114, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:29'),
(6115, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:30'),
(6116, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:30'),
(6117, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:31'),
(6118, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:33'),
(6119, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:33'),
(6120, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:34'),
(6121, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:34'),
(6122, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:35'),
(6123, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:36'),
(6124, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:37'),
(6125, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:37'),
(6126, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:38'),
(6127, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:39'),
(6128, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:39'),
(6129, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:40'),
(6130, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:41'),
(6131, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:41'),
(6132, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:42'),
(6133, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:43'),
(6134, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:44'),
(6135, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:44'),
(6136, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:45'),
(6137, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:45'),
(6138, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:46'),
(6139, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:47'),
(6140, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:47'),
(6141, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:48'),
(6142, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:48'),
(6143, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:49'),
(6144, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:49'),
(6145, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:50'),
(6146, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:51'),
(6147, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:51'),
(6148, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:52'),
(6149, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:53'),
(6150, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:54'),
(6151, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:54'),
(6152, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:56'),
(6153, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:57'),
(6154, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:04:57'),
(6155, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:00'),
(6156, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:01'),
(6157, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:01'),
(6158, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:02'),
(6159, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:03'),
(6160, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:05'),
(6161, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:06'),
(6162, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:08'),
(6163, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:12'),
(6164, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:13'),
(6165, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:14'),
(6166, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:15'),
(6167, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:16'),
(6168, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:17'),
(6169, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:18'),
(6170, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:18'),
(6171, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:18'),
(6172, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:19'),
(6173, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:20'),
(6174, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:20'),
(6175, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:21'),
(6176, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:22'),
(6177, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:22'),
(6178, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:23'),
(6179, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:23'),
(6180, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:24'),
(6181, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:25'),
(6182, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:25'),
(6183, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:26'),
(6184, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:27'),
(6185, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:28'),
(6186, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:29'),
(6187, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:30'),
(6188, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:30'),
(6189, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:31'),
(6190, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:32'),
(6191, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:33'),
(6192, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:36'),
(6193, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:36'),
(6194, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:36'),
(6195, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:37'),
(6196, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:39'),
(6197, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:40'),
(6198, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:42'),
(6199, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:48'),
(6200, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:50'),
(6201, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:51'),
(6202, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:51'),
(6203, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:52'),
(6204, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:52'),
(6205, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:53'),
(6206, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:54'),
(6207, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:54'),
(6208, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:55'),
(6209, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:57'),
(6210, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:58'),
(6211, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:59'),
(6212, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:05:59'),
(6213, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:06:00'),
(6214, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:19:15'),
(6215, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:19:15'),
(6216, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:19:16'),
(6217, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:19:17'),
(6218, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:19:18'),
(6219, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:19:56'),
(6220, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:19:57'),
(6221, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:19:58'),
(6222, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:19:59'),
(6223, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:19:59'),
(6224, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:20:00'),
(6225, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:20:01'),
(6226, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:20:02'),
(6227, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:20:02'),
(6228, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:20:03'),
(6229, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:20:04'),
(6230, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:20:05'),
(6231, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:20:06'),
(6232, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:20:07'),
(6233, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:20:07'),
(6234, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:20:08'),
(6235, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:20:09'),
(6236, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:20:10'),
(6237, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:20:10'),
(6238, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:20:11'),
(6239, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:20:12'),
(6240, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:20:13'),
(6241, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:20:14'),
(6242, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:20:15'),
(6243, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:20:15'),
(6244, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:20:43'),
(6245, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:20:44'),
(6246, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:20:44'),
(6247, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:20:45'),
(6248, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:20:45'),
(6249, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:20:46'),
(6250, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:20:47'),
(6251, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:20:47'),
(6252, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:20:48'),
(6253, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:20:48'),
(6254, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:20:49'),
(6255, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:20:49'),
(6256, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:20:50'),
(6257, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:20:51'),
(6258, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:20:52'),
(6259, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:20:53'),
(6260, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:20:55'),
(6261, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:20:56'),
(6262, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:20:56'),
(6263, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:20:57'),
(6264, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:20:58'),
(6265, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:20:58'),
(6266, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:20:59'),
(6267, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:00'),
(6268, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:00'),
(6269, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:01'),
(6270, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:02'),
(6271, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:02'),
(6272, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:03'),
(6273, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:04'),
(6274, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:04'),
(6275, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:05'),
(6276, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:06'),
(6277, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:06'),
(6278, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:06'),
(6279, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:07'),
(6280, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:08'),
(6281, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:08'),
(6282, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:09'),
(6283, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:10'),
(6284, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:11'),
(6285, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:11'),
(6286, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:12'),
(6287, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:12'),
(6288, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:13'),
(6289, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:13'),
(6290, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:14'),
(6291, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:14'),
(6292, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:15'),
(6293, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:16'),
(6294, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:16'),
(6295, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:17'),
(6296, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:17'),
(6297, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:18'),
(6298, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:19'),
(6299, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:19'),
(6300, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:20'),
(6301, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:20'),
(6302, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:21'),
(6303, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:22'),
(6304, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:22'),
(6305, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:23'),
(6306, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:23'),
(6307, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:24'),
(6308, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:25'),
(6309, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:25'),
(6310, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:26'),
(6311, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:27'),
(6312, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:28'),
(6313, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:29'),
(6314, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:29'),
(6315, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:30'),
(6316, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:31'),
(6317, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:31'),
(6318, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:32'),
(6319, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:33'),
(6320, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:33'),
(6321, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:34'),
(6322, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:34'),
(6323, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:35'),
(6324, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:35'),
(6325, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:36'),
(6326, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:37'),
(6327, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:37'),
(6328, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:37'),
(6329, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:38'),
(6330, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:39'),
(6331, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:39'),
(6332, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:40'),
(6333, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:40'),
(6334, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:41'),
(6335, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:42'),
(6336, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:42'),
(6337, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:43'),
(6338, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:44'),
(6339, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:44'),
(6340, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:45'),
(6341, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:46'),
(6342, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:46'),
(6343, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:47'),
(6344, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:48'),
(6345, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:48'),
(6346, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:49'),
(6347, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:50'),
(6348, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:50'),
(6349, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:51'),
(6350, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:51'),
(6351, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:52'),
(6352, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:52'),
(6353, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:53'),
(6354, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:53'),
(6355, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:54'),
(6356, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:55'),
(6357, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:55'),
(6358, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:56'),
(6359, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:57'),
(6360, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:57'),
(6361, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:57'),
(6362, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:58'),
(6363, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:59'),
(6364, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:21:59'),
(6365, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:22:00'),
(6366, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:22:00'),
(6367, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:22:01'),
(6368, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:22:02'),
(6369, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:22:03'),
(6370, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:22:03'),
(6371, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:22:04'),
(6372, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:22:04'),
(6373, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:22:05'),
(6374, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:22:05'),
(6375, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:22:06'),
(6376, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:22:06'),
(6377, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:22:07'),
(6378, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:22:08'),
(6379, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:22:08'),
(6380, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:22:09'),
(6381, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:22:09'),
(6382, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:22:10'),
(6383, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:22:10'),
(6384, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:22:11'),
(6385, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:22:12'),
(6386, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:22:12'),
(6387, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:22:13'),
(6388, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:22:14'),
(6389, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:22:14'),
(6390, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:22:15'),
(6391, '::1', '837ec5754f503cfaaee0929fd48974e7', '', '2020 Dec 18', '14:22:15'),
(6392, '127.0.0.1', 'f528764d624db129b32c21fbca0cb8d6', '', '2021 Jan 23', '01:21:04'),
(6393, '127.0.0.1', 'f528764d624db129b32c21fbca0cb8d6', '', '2021 Jan 23', '01:22:53');

-- --------------------------------------------------------

--
-- Table structure for table `volunteers`
--

CREATE TABLE `volunteers` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL,
  `where_did_you_hear_about_us` varchar(100) NOT NULL,
  `involved_in_community_projects` varchar(100) NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `what_inspired_you` text NOT NULL,
  `how_to_contact` varchar(100) NOT NULL,
  `date_reg` varchar(100) NOT NULL,
  `updated` tinyint(4) NOT NULL,
  `deleted` tinyint(4) NOT NULL,
  `suspended` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beneficiaries`
--
ALTER TABLE `beneficiaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coordinators`
--
ALTER TABLE `coordinators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directors_role`
--
ALTER TABLE `directors_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
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
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `programmes`
--
ALTER TABLE `programmes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `program_schedule`
--
ALTER TABLE `program_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quick_forum`
--
ALTER TABLE `quick_forum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sponsors`
--
ALTER TABLE `sponsors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sponsorship`
--
ALTER TABLE `sponsorship`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_account`
--
ALTER TABLE `user_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_report`
--
ALTER TABLE `user_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `volunteers`
--
ALTER TABLE `volunteers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beneficiaries`
--
ALTER TABLE `beneficiaries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `coordinators`
--
ALTER TABLE `coordinators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `directors`
--
ALTER TABLE `directors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `directors_role`
--
ALTER TABLE `directors_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `mentees`
--
ALTER TABLE `mentees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `mentors`
--
ALTER TABLE `mentors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `programmes`
--
ALTER TABLE `programmes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `program_schedule`
--
ALTER TABLE `program_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `quick_forum`
--
ALTER TABLE `quick_forum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `sponsors`
--
ALTER TABLE `sponsors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sponsorship`
--
ALTER TABLE `sponsorship`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_account`
--
ALTER TABLE `user_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user_report`
--
ALTER TABLE `user_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6394;

--
-- AUTO_INCREMENT for table `volunteers`
--
ALTER TABLE `volunteers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
