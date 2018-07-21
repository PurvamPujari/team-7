-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 21, 2018 at 07:11 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `educon`
--

-- --------------------------------------------------------

--
-- Table structure for table `forum_answer`
--

CREATE TABLE `forum_answer` (
  `question_id` int(4) NOT NULL DEFAULT '0',
  `a_id` int(4) NOT NULL DEFAULT '0',
  `a_name` varchar(65) NOT NULL DEFAULT '',
  `a_email` varchar(65) NOT NULL DEFAULT '',
  `a_answer` longtext NOT NULL,
  `a_datetime` varchar(25) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL,
  `upvote` int(11) NOT NULL,
  `downvote` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forum_answer`
--

INSERT INTO `forum_answer` (`question_id`, `a_id`, `a_name`, `a_email`, `a_answer`, `a_datetime`, `id`, `upvote`, `downvote`) VALUES
(3, 1, 'Mandar Mhapsekar', 'mhapsekarmandar@live.com', 'Register on http://goo.gl/jjfnsr', '04/08/14 22:57:49', 2, 0, 0),
(18, 1, 'Prathamesh Mhapsekar', 'prathmesh36@yahoo.com', 'hey vinay ithe nahi G-Store madhe sell kar\r\n', '14/08/14 23:16:26', 1, 0, 0),
(23, 1, 'Prathamesh Mhapsekar', 'prathmesh36@yahoo.com', 'Sell in the G-Store Section Below the Community forum Section on the Left Menu Bar', '17/08/14 17:06:35', 1, 0, 0),
(22, 1, 'Prathamesh Mhapsekar', 'prathmesh36@yahoo.com', 'Please Share this Message of our Site as we want all the GPM students on this Site', '17/08/14 17:07:40', 1, 0, 0),
(4, 1, 'Tanmay Thakare', 'tanmaythakare24@gmail.com', 'YOLO ! SWAG! ', '19/08/14 11:38:23', 120, 0, 0),
(23, 2, 'Prathamesh Mhapsekar', 'prathmesh36@yahoo.com', 'Don''t sell Books in the Forum', '27/08/14 03:11:39', 1, 0, 1),
(24, 1, 'Prathamesh Mhapsekar', 'prathmesh36@yahoo.com', 'It would have been clear if u hand Mentioned the Subjects name but anyways\r\nFor Basic Mathematics-: Nirali Publication by B.M. Patel (E-Scheme) and for Physics try to get Applied Physics by Bhandarkar its less in Stock (Only one in Library) either go for basic physics by Nirali Publication (Only Few Chapters)\r\n ', '30/08/14 17:43:02', 1, 0, 0),
(24, 2, 'Ajay Upadhyaya', 'ajayu712@gmail.com', 'Thanks for your reply Sir...', '01/09/14 17:19:34', 105, 0, 1),
(25, 1, 'GPM Network', 'gpmnetwork@outlook.com', 'Basic Electronics notes would come soon But for that First please Change your pseudo name as GPM Network Doesn''t allow pseudo name.it would be Better if u had ur Real Name', '08/09/14 20:27:21', 7, 0, 0),
(4, 2, 'Dragon Skater', 'jagtapakash638@gmail.com', 'YO MAN FUCK YOU!!', '05/12/14 19:58:34', 347, 0, 1),
(3, 2, 'Prathamesh Mhapsekar', 'prathmesh36@yahoo.com', 'hiii', '18/01/17 00:31:25', 1, 0, 1),
(25, 2, 'Test User', 'testuser2@gpmnetwork.in', 'hii', '09/09/17 11:50:44', 5, 0, 1),
(26, 1, ' ', '', 'Urgent help, submissions tomorrow !', '10/09/17 19:22:47', 1, 0, 0),
(27, 1, ' ', '', 'Urgent!  only 2 members', '10/09/17 19:26:53', 1, 0, 0),
(27, 2, ' ', '', 'faculty alos !\r\n', '10/09/17 19:27:07', 1, 0, 1),
(27, 3, ' ', '', 'I would love to work with your team !', '10/09/17 19:30:37', 5, 0, 0),
(28, 1, 'Prathamesh Mhapsekar', 'prathmesh36@yahoo.com', 'Hii', '15/09/17 19:40:38', 1, 0, 0),
(33, 1, 'Bill Patient', 'billp@gmail.com', 'I want it ', '10/02/18 12:45:03', 437, 0, 0),
(35, 1, 'Akshay Jain', 'akshayd@gmail.com', 'hello', '11/02/18 11:23:38', 439, 0, 0),
(33, 2, 'Akshay Jain', 'akshayd@gmail.com', 'hi bill', '11/02/18 11:24:59', 439, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `forum_question`
--

CREATE TABLE `forum_question` (
  `topic_id` int(11) NOT NULL,
  `topic` varchar(255) NOT NULL,
  `detail` longtext NOT NULL,
  `name` varchar(65) NOT NULL,
  `email` varchar(65) NOT NULL,
  `datetime` varchar(25) NOT NULL,
  `id` int(11) NOT NULL,
  `view` int(4) NOT NULL,
  `reply` int(4) NOT NULL,
  `type` varchar(4) NOT NULL,
  `page_id` int(4) NOT NULL,
  `upvote` int(11) NOT NULL,
  `downvote` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forum_question`
--

INSERT INTO `forum_question` (`topic_id`, `topic`, `detail`, `name`, `email`, `datetime`, `id`, `view`, `reply`, `type`, `page_id`, `upvote`, `downvote`) VALUES
(33, 'I Have Extra Medicine', 'If someone want extra medicine ping me', 'Steve Chem', 'stevec@gmail.com', '10/02/18 12:42:19', 418, 13, 2, 'perl', 1, 15, 9),
(34, 'I need 10pcs of Paracetomol', 'Its Urgent!', 'Bill Patient', 'billp@gmail.com', '10/02/18 03:33:57', 437, 0, 0, 'perl', 1, 6, 1),
(35, 'Medical Meeting', 'Meeting at Vile Parle', 'Akshay Jain', 'akshayd@gmail.com', '11/02/18 11:20:36', 439, 4, 1, 'perl', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `password` varchar(40) NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `surname` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `dob` date NOT NULL,
  `doj` datetime NOT NULL,
  `contact` varchar(10) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `mname` varchar(40) NOT NULL,
  `aadharno` varchar(40) NOT NULL,
  `institute` varchar(40) NOT NULL,
  `typeedu` varchar(20) NOT NULL,
  `result` varchar(40) NOT NULL,
  `income` varchar(20) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `sibling` varchar(10) NOT NULL,
  `follow` longtext NOT NULL,
  `lastvisit` datetime NOT NULL,
  `lastlog` datetime NOT NULL,
  `view` bigint(20) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `type` int(11) NOT NULL,
  `previousgrants` varchar(50) NOT NULL,
  `pemail` varchar(40) NOT NULL,
  `amountneed` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `password`, `firstname`, `surname`, `email`, `gender`, `dob`, `doj`, `contact`, `fname`, `mname`, `aadharno`, `institute`, `typeedu`, `result`, `income`, `occupation`, `sibling`, `follow`, `lastvisit`, `lastlog`, `view`, `ip`, `type`, `previousgrants`, `pemail`, `amountneed`) VALUES
(1, '1ca79c2b08552325ab41a7ac393cb451', 'Prathamesh', 'Mhapsekar', 'prathmesh36@yahoo.com', 'male', '1997-12-16', '2014-05-15 00:00:00', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',2,3,11,27,17,33,35,67,24,76,88,97,5,29,404', '2017-04-21 09:48:26', '2018-07-21 09:40:23', 6, 'abc', 1, '', 'needydad@gmail.com', '1000000'),
(2, '9726bc2d93d0087466c1ed790ff7ca9c', 'Mandar', 'Mhapsekar', 'mhapsekarmandar@live.com', 'male', '1997-12-16', '2014-05-15 00:00:00', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1,3,27,35,11,29,404,5', '2017-04-20 02:06:48', '2018-01-28 02:20:01', 2, 'abc', 1, '', 'needydad@gmail.com', '1000000'),
(5, '098f6bcd4621d373cade4e832627b4f6 ', 'Prof. John', 'Smith', 'testuser2@gpmnetwork.in', 'male', '1996-01-01', '2014-05-20 11:44:49', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1', '2017-09-09 06:40:20', '2017-10-13 09:49:07', 0, 'abc', 1, '', 'needydad@gmail.com', '1000000'),
(7, '1ca79c2b08552325ab41a7ac393cb451', 'GPM', 'Network', 'gpmnetwork@outlook.com', 'male', '1996-01-01', '2014-06-14 11:52:41', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1,97', '2014-08-21 11:14:33', '2014-09-08 08:24:41', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(8, '6a9c50f83f98f88692fb76ceb3c2edfb', 'Sukh', 'Shah', 'yurajshah05@gmail.in', 'male', '1996-07-05', '2014-06-15 05:52:49', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1,2,3,5', '2014-08-14 06:39:02', '2014-08-14 06:38:57', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(9, '098f6bcd4621d373cade4e832627b4f6 ', 'Pranay', 'Salunkhe', 'pranay954@gmail.com', 'male', '1996-01-01', '2014-07-22 04:45:02', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1,5', '2014-08-11 09:54:06', '2017-09-19 10:02:40', 0, 'abc', 1, '', 'needydad@gmail.com', '1000000'),
(11, '2ac50850517eedcebd3b8ded1eb7c739', 'Onkar ', 'Dake', 'omkarpradeepdake@gmail.com', 'male', '1997-10-16', '2014-07-24 08:32:31', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1,27,56,5,29,2', '2014-11-24 06:48:46', '2014-12-06 10:53:01', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(17, '65c46fffdc4ebf249e528f064e29fe54', 'Santosh', 'Yadav', 'santoshyadav3210@gmail.com', 'male', '1997-06-18', '2014-08-01 12:08:02', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1,27,11,5', '2014-10-30 03:06:58', '2014-10-30 02:38:06', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(18, '8e0a4056e0a3449e9322e3250f71e34f', 'Vishakha', 'Sutar', 'vishakhasutar02@gmail.com', 'female', '1998-04-02', '2014-08-01 04:46:20', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1,85,76,35,5', '2014-11-23 04:46:59', '2014-11-23 04:43:22', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(21, 'ffafa77029f061e3a2134f9e41a6506d', 'Prachiti', 'Tayshete', 'prachititayshete2112@gmail.com', 'female', '1997-12-21', '2014-08-01 07:17:10', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1,76,85,11,5', '2014-09-06 11:50:42', '2014-09-06 11:19:45', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(22, '870ee96c013aad77691b78fc010c6bd9', 'Pratish', 'Chavan', 'chavanpratish@live.com', 'male', '1997-09-04', '2014-08-01 07:22:09', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1,35,29', '0000-00-00 00:00:00', '2014-11-27 02:06:40', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(23, '583c174096c35461c920142422d52036', 'Komal', 'Varadkar', 'varadkarkomal@gmail.com', 'female', '1997-03-16', '2014-08-01 07:27:39', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1,85,21', '2014-08-08 02:44:53', '2014-08-08 02:44:25', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(24, 'd9ab01c94e0f0bb8ef67a50287400621', 'Nirali', 'Shah', 'niralishah1998@gmail.com', 'female', '1998-01-23', '2014-08-01 08:24:36', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1,55,85,5', '2014-12-14 06:40:48', '2014-12-14 06:37:13', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(25, '29d19670304fa0d9b0d6be41b38e5ff5', 'Chaitrali', 'Yadav', 'chaitraliyadav9@gmail.com', 'female', '1998-03-29', '2014-08-01 09:07:42', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1,85', '2014-08-18 03:29:18', '2014-09-07 03:36:07', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(26, '06cff91b7765237285ac88491b7c0706', 'Prachi', 'Gaikwad', 'prachigaikwad1410@gmail.com', 'female', '1997-10-14', '2014-08-01 10:57:58', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1,82,85', '2014-09-25 02:49:33', '2014-09-25 02:48:10', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(27, 'f4e2d312dc76c6584bab2285d3688b05', 'Lalchand', 'Gaund', 'lalchand0201@gmail.com', 'male', '1997-01-02', '2014-08-01 11:24:54', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1,29,5', '2014-11-10 10:12:18', '2014-11-10 10:06:55', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(28, 'b2cf876478eaa3acae8606a1b6b8340e', 'Prasad', 'Maharana', 'prasadmaharana1996@gmail.com', 'male', '1996-12-28', '2014-08-01 11:51:40', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1', '2014-12-22 08:44:12', '2014-12-22 07:59:47', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(29, 'fe546279a62683de8ca334b673420696', 'Vrushabh', 'Jadhav', 'vrushabh101@outlook.com', 'male', '1997-07-30', '2014-08-02 01:17:24', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',2,1,5', '0000-00-00 00:00:00', '2014-10-26 12:33:03', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(30, 'd41d8cd98f00b204e9800998ecf8427e', 'Bhagyashri', 'Kamble', 'bl.kamble03@gmail.com', 'female', '1996-08-12', '2014-08-02 05:51:56', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1,85', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(32, '976e1b360b8ccd4f1b0c794e84dfb428', 'Sail', 'Khedekar', 'sailkhedekar@in.com', 'male', '1996-02-29', '2014-08-04 11:00:23', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1,85', '2014-08-25 08:01:23', '2014-08-25 08:00:54', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(33, 'b6ec875c83130c8ecbb0a6e791c9229d ', 'Omkar', 'Hindlekar', 'omkar7oct@gmail.com', 'male', '1997-10-07', '2014-08-06 05:25:14', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1,75,5', '2014-09-25 02:19:01', '2014-12-16 08:54:13', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(34, '098f6bcd4621d373cade4e832627b4f6 ', 'Online', 'Counsellor', 'ocits@gmail.com', 'male', '1997-11-24', '2014-08-06 06:24:07', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1,5', '2014-08-07 04:13:37', '2017-09-19 09:03:23', 0, 'abc', 1, '', 'needydad@gmail.com', '1000000'),
(35, 'dc338be4fef995b9e9d0d4c38d59f596', 'Vinay', 'Mobharkar', 'vinayrm@outlook.com', 'male', '1997-10-20', '2014-08-06 06:49:40', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1,75,5', '2014-09-18 11:28:17', '2014-12-12 11:23:30', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(36, '500bd9f65281103d7b086dd721f1f701', 'Shraddhaa', 'Dhuri', 'shraddhaa.dhuri@gmail.com', 'female', '1997-11-11', '2014-08-06 09:39:29', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1,85', '2014-08-20 08:23:00', '2014-11-29 07:27:47', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(37, 'a1e7a6f4276294a3bcf60e1b224fa98a', 'Ravindra', ' golhe', 'ravindragolhe12@live.com', 'male', '1998-04-12', '2014-08-07 09:38:41', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1,5', '2014-12-12 12:37:40', '2014-12-12 12:35:20', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(38, 'd9bcf45f370578d25e51bf596e4d0c1e', 'Sumit', 'Vishwakarma', 'vishwakarmasumit421@live.com', 'male', '1998-08-20', '2014-08-07 04:06:34', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1', '2014-08-12 02:41:35', '2014-08-12 02:38:57', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(39, '221007446e5ebeeba70bd5307481c0f4', 'Abhishek', 'Vichare', 'vichareabhi55@ovi.com', 'male', '1993-08-18', '2014-08-07 04:12:05', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-08-07 04:12:31', '0000-00-00 00:00:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(40, 'd9bcf45f370578d25e51bf596e4d0c1e', 'Sumit', 'Vishwakarma', 'vishwakarmasumit256@live.com', 'male', '1998-08-20', '2014-08-07 04:13:38', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1', '2014-08-07 04:17:45', '0000-00-00 00:00:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(41, '4c3d1f814efe73197c30e324cf1d9bc3', 'Kanchan', 'Kolhe', 'kanchanmkolhe@gmail.com', 'female', '1997-03-17', '2014-08-07 04:19:25', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',82,1,85', '2014-08-07 04:19:57', '2014-11-28 10:41:10', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(42, 'ef52b903d9c0c142fc45d82dbf1db8b5', 'Ankita', 'Yadav', 'yadavankita376@gmail.com', 'female', '1997-06-03', '2014-08-07 08:53:45', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',82', '0000-00-00 00:00:00', '2014-12-04 09:55:53', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(43, 'fa6cae6dc367f5c4ed05833bc6bb3095', 'Akshay', 'Sonawane', 'so.akshay59@gmail.com', 'male', '1998-09-23', '2014-08-07 09:56:56', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1', '2014-11-30 03:55:51', '2014-11-30 03:41:31', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(45, 'e99a18c428cb38d5f260853678922e03', 'India', 'Login', 'indialogin@gmail.com', 'male', '1998-03-03', '2014-08-07 11:03:20', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1,274', '2014-08-07 11:04:42', '2014-08-08 10:38:58', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(46, '393d93a395545b1564f639b40d2562a4', 'Durgesh', 'Rane', 'ranedurgesh244@gmail.com', 'male', '1998-04-24', '2014-08-08 02:32:42', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1', '2014-10-17 03:19:54', '2014-10-17 03:13:21', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(47, '05cc6a4f7a6ab6c593a5d57d0a889e3e', 'Saurabh', 'Mahadik', 'smahadik097@gmail.com', 'male', '1997-10-01', '2014-08-08 02:33:38', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1', '2014-12-15 11:34:28', '2014-12-15 11:27:28', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(48, '7dca60edc7c017ed05d384d8f9bb49c1', 'Princess', 'Singh', 'princesssingh1997@yahoo.in', 'female', '1997-03-16', '2014-08-08 02:41:58', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-08-08 02:58:49', '2014-08-08 02:52:43', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(49, '027027d0e0a25fa91667d77908befb46', 'Rachit', 'Makwana', 'rachitmakwana83@gmail.com', 'male', '1996-10-17', '2014-08-08 06:19:06', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(50, '2e30c8eb9c9f16c8002e7812dca66858', 'Prasad', 'Gujar', 'prasadgujar16@gmail.com', 'male', '1998-01-05', '2014-08-08 06:38:00', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1', '2014-09-23 05:43:18', '2014-11-29 08:35:16', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(51, '19c1edc4fd60ec594e8467bc9a034878', 'Deepak', 'Gupta', 'dgdeepak.246@gmail.com', 'male', '1997-06-24', '2014-08-08 06:41:17', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',76,85,101', '0000-00-00 00:00:00', '2014-11-27 06:12:02', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(52, 'f50fbf06640ff8c15ad79e31df530404', 'Prajakta', 'Zodge', 'prajaktazodge21@gmail.com', 'female', '1997-06-21', '2014-08-08 06:42:03', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-12-20 11:49:05', '2014-12-20 11:46:13', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(53, 'e574d2c661e39f371b5bb9d9b6ee26d1', 'Akshay ', 'Wakode', 'akssup@gmail.com', 'male', '1996-08-20', '2014-08-08 10:48:32', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(54, '55bab4dbbc130cafc7a71cca90b66c21', 'Ninad', 'Kamble', 'ninadkamble16@gmail.com', 'male', '1998-06-29', '2014-08-09 12:49:53', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1', '2014-08-31 06:56:38', '2014-08-31 06:54:01', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(55, '601d888339cb664e6e0856b7df664c48', 'Pratik', 'Tirodkar', 'tirodkarpratik@gmail.com', 'male', '1997-03-27', '2014-08-09 06:11:37', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1', '0000-00-00 00:00:00', '2014-08-23 01:23:50', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(56, '8922c663baa48073ac0a6ae586b06828', 'Omkar ', 'Naik', 'onaik444@gmail.com', 'male', '1997-09-25', '2014-08-09 06:21:53', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-08-18 01:53:21', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(57, 'e9a36c7f5fa4d41bb70cdda95d18aeed', 'Shubham', 'Mohire', 'shubhammohire@gmail.com', 'male', '1996-07-07', '2014-08-09 09:01:37', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',67,1', '0000-00-00 00:00:00', '2014-12-21 08:55:30', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(58, '1faf63f571ec4f4422040def26147718', 'Suyog', 'Sawardekar', 'suyogsaw94@gmail.com', 'male', '1996-01-26', '2014-08-09 09:21:48', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-08-09 09:23:38', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(59, 'dc068e47907f39a58047009c96734ab6', 'Sonal', 'Karle', 'sonalkarle60@gmail.com', 'male', '1998-01-31', '2014-08-09 09:26:29', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',85', '2014-08-09 09:27:54', '2014-08-09 09:27:22', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(60, 'e96e9ae011f66360f6b334de29435a35', 'Surabhi', 'Kadam', 'kadamsurbhi@gmailcom', 'female', '1998-03-26', '2014-08-09 10:20:59', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(61, '44af1749c54a3d1ef1d8812d422245c0', 'Abhishek', 'Pardeshi', 'abhipardeshi45@gmail.com', 'male', '1997-06-18', '2014-08-09 11:48:22', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-08-09 11:54:57', '2014-08-09 11:51:08', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(63, 'afb3e036237ef25bce3e6e2eddbbe05b', 'Pramod', 'Ghodagekar', 'pramodghodagekar21@gmail.com', 'female', '1996-12-25', '2014-08-10 12:15:29', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-08-10 12:16:05', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(64, 'ec34c4adb3d0241b978c94eab4288e1b', 'Apoorv', 'Bhatkar', 'apoorvbhatkar@gmail.com', 'male', '1996-05-06', '2014-08-10 12:34:28', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-08-10 12:37:56', '2014-08-10 12:35:07', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(65, '86ab6427cd9da12bd5925ee09627af99', 'Pavan', 'Koli', 'p.one.koli@gmail.com', 'male', '1998-03-14', '2014-08-10 12:57:56', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-08-10 12:58:45', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(66, 'bd999e21a72938d309b330d13ad0def9', 'Sachin', 'Narawade', 'narawadesachin255@gmail.com', 'male', '1998-02-28', '2014-08-10 09:27:42', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-08-10 09:29:16', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(67, '9db29dcf9d8e821e068044f71fc9d23b', 'Vaibhav', 'Wankhedkar', 'vaibhavwankhedkar@gmail.com', 'male', '1998-04-18', '2014-08-10 02:04:54', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1', '2014-08-25 05:14:44', '2014-12-01 04:49:27', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(68, '3cad22e033bc87bbb259a1b53bb092c2', 'Sushant', 'Shelar', 'sushantshelar121@gmail.com', 'male', '1998-02-07', '2014-08-10 08:15:19', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1', '2014-10-30 06:00:25', '2014-10-30 05:56:19', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(70, 'c6bf80b54bfe6748bfa87f9a473e517a', 'Deepak', 'Pawar', 'pawar.deepak499@gmail.com', 'male', '1996-07-02', '2014-08-11 11:22:34', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-08-26 09:28:34', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(71, '88c1976f330ea9e6fcf8f2b7561c71b6', 'Shekhar', 'Wankhede', 'coolshekhar6@gmail.com', 'male', '1998-06-06', '2014-08-11 03:36:56', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-08-11 03:37:23', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(72, 'e02fa677209c022378b66a100ebe807b', 'Heena', 'Sawant', 'imhinasawant53@gmail.com', 'female', '1997-02-21', '2014-08-11 06:00:44', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',274', '2014-08-16 05:52:22', '2014-08-26 12:01:26', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(73, 'be2ea7d82b0686d7cf14b125eb1a666f', 'Rachana', 'Chavan', 'rachana.d.chavan111@gmail.com', 'male', '1997-11-10', '2014-08-11 06:47:27', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1,85', '0000-00-00 00:00:00', '2014-08-11 08:17:16', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(74, '2bcfbad6da2ac5f47fdddaf325346c1f', 'Akshaykumar', 'Jadhav', 'akshayjadhav.cool789@gmail.com', 'male', '1997-10-18', '2014-08-11 06:52:38', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-11-19 06:05:13', '2014-11-19 05:58:19', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(75, '2d981400f5ee87f09cc2d14a5c5c71af', 'Pratik', 'Pednekar', 'ppednekarrt@gmail.com', 'male', '1998-02-25', '2014-08-11 07:37:47', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1', '2014-08-11 07:42:20', '2014-12-14 02:00:04', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(76, '645f212d7980d8c98c3880e711521bbe', 'Omkar', 'Yadav', 'oyadav2012@gmail.com', 'male', '1998-07-25', '2014-08-11 07:49:24', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',82,1,183', '2014-12-06 11:10:40', '2014-12-06 11:02:37', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(77, '987798b8258f2cd84cb8308c7e1069ad', 'Ashwyn', 'More', 'ashwynmore50@gmail.com', 'male', '1998-07-28', '2014-08-11 07:55:09', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',372', '0000-00-00 00:00:00', '2014-11-19 03:27:26', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(78, '9f087763e480990ebe3c7f78ee026a2c', 'Amit ', 'Dubey', 'Amitdubey117@gmail.com', 'male', '1997-08-13', '2014-08-11 08:27:38', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1', '0000-00-00 00:00:00', '2014-08-11 08:28:43', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(79, 'd7c41fa4941d9dbfe0459edc19907f06', 'Shubham', 'Gaikwad', 'shubhamgaikwad500@gmail.com', 'male', '1997-10-07', '2014-08-12 08:08:56', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',82,76', '0000-00-00 00:00:00', '2014-09-10 10:22:14', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(80, 'a10a4df9e7b3b67e17493214266af265', 'Saurabh', 'Patil', 'patil.sauarbh60@gmail.com', 'male', '1997-07-22', '2014-08-12 10:26:11', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',81', '2014-08-12 10:36:16', '2014-08-12 10:35:19', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(81, 'f788dbdafee05ddfdce49b64cfb335d2', 'Sarthak', 'Dadhakar', 'saru.dadkr@gmail.com', 'male', '1997-10-14', '2014-08-12 10:33:13', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',80,1,76', '2014-08-12 10:35:01', '2014-12-05 12:07:20', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(82, 'debfc84be4bdd3d671807c9ba7f63aaa', 'Jayesh', 'Kale', 'jayesh6297@gmail.com', 'male', '1997-02-06', '2014-08-12 02:35:07', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-12-20 08:48:37', '2014-12-20 08:47:03', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(83, 'c0c3d6e630bf77c7092f2d60c76bc97d', 'Mayur', 'Koltharkar', 'mayurk2014@gmail.com', 'male', '1994-01-07', '2014-08-12 02:43:36', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-11-23 11:36:32', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(84, '83742b07bfd59511924ecef5f4e6a6d8', 'Sitaram', 'Supe', 'anilsupe2@gmail.com', 'male', '1996-07-31', '2014-08-12 02:44:39', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1', '2014-08-12 02:46:13', '2014-08-12 02:45:11', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(85, '666ba1f79974c8056e9d81fba18db3b7', 'Pranay', 'Ubhe', 'pranayubhe37@gmail.com', 'male', '1996-03-20', '2014-08-12 02:51:08', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',82,76,18', '2014-12-22 10:29:49', '2014-12-22 09:03:09', 4, '', 1, '', 'needydad@gmail.com', '1000000'),
(86, '66b0b59aa1400b420ba97f3fbbf72c87', 'Sagar', 'Thombare', 'Sam94dv@yahoo.com', 'male', '1994-06-04', '2014-08-12 02:59:58', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',137,274', '0000-00-00 00:00:00', '2014-08-12 03:00:42', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(87, 'e5f9f950fa15738ac9a60123f4e1b232', 'Mukund', 'Mahakale', 'mukundmahakale@gmail.com', 'male', '1996-09-12', '2014-08-12 04:54:18', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-03 08:23:37', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(88, '89cd1ce30a934cdf1575fe3e5b2458d2', 'Omkar ', 'Sanap', 'osanap2@gmail.com', 'male', '1996-12-19', '2014-08-12 05:22:57', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',76,1', '2014-12-09 09:12:37', '2014-12-15 10:57:48', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(89, 'cb2e020ca61a401083b83bdc851daf1a', 'Pooja', 'Jadhao', 'poojajadhao559@gmail.com', 'female', '1996-05-03', '2014-08-12 08:13:30', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1', '2014-08-25 07:29:19', '2014-08-25 07:20:31', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(90, 'f55e5639b5a67859a90c31819390bb11', 'Pradnya', 'Salvi', 'pradnyasalvi1994@gmail.com', 'female', '1996-11-11', '2014-08-12 08:51:56', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1', '2014-08-12 08:57:31', '2014-08-12 08:53:10', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(91, '3942fd3255f3796882f57d6e2fae9177', 'Siddhesh', 'Rane', 'siddheshrane24@gmail.com', 'male', '1997-05-24', '2014-08-12 09:27:25', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',81,88,76', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(92, '0dd0088068af159d0e0c96ae4f5271b8', 'Prasad', 'Nandoskar', 'prasadnandoskar97@gmail.com', 'male', '1997-05-29', '2014-08-13 06:49:27', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-12-11 09:05:20', '2014-12-11 09:00:43', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(93, 'dffe46722ba2257211341616992e1a6e', 'Tushar', 'Nawale', 'tusharnawale1997@gmail.com', 'male', '1997-07-23', '2014-08-13 08:38:28', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-08-13 08:39:57', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(94, 'df53ca268240ca76670c8566ee54568a', 'Jaydeep', 'Rathod', 'jaydeeprathod48@gmail.com', 'male', '1997-08-19', '2014-08-14 03:10:41', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-08-14 03:15:03', '2014-08-14 03:11:09', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(95, 'c0c3d6e630bf77c7092f2d60c76bc97d', 'Mayur', 'Koltharkar', 'mayur2014@gmail.com', 'male', '1994-01-07', '2014-08-14 03:34:41', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-08-14 03:36:59', '2014-08-14 03:35:45', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(97, '098f6bcd4621d373cade4e832627b4f6', 'Test', 'User', 'testuser1@gpmnetwork.co.in', 'male', '1997-01-01', '2014-08-14 06:33:14', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-09-13 03:54:07', '2014-10-27 09:32:40', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(98, 'a24306b88b1ac8120d3ddf091ffdf016', 'Sailee', 'Surve', 'saileesurve981@gmail.com', 'female', '1996-07-09', '2014-08-14 08:18:53', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-11-25 12:45:29', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(99, 'ff54aacd5a2284a07b9e48b1684720f2', 'Saurav', 'Avhad', 'sureshavhad1997@gmail.com', 'male', '1997-10-12', '2014-08-14 09:17:39', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1', '0000-00-00 00:00:00', '2014-08-14 09:18:07', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(100, '91fb158354ec86512a373932a1211d7a', 'Mayuresh', 'Kode', 'Mayurkode@ymail.com', 'male', '1998-09-19', '2014-08-14 09:48:51', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-12-09 06:21:53', '2014-12-09 06:19:49', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(101, '47437ac597c387bfdbac2371ea75cf34', 'Siddharth', 'Gangurde', 'siddharthgangurde22@gmail.com', 'male', '1997-06-22', '2014-08-15 01:15:39', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-12-22 09:34:41', '2014-12-22 09:32:52', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(102, '8031d4af0183aa3af449a97c7caffd8d', 'Mandar', 'Warang', 'mandarwarang12@gmail.com', 'male', '1998-02-12', '2014-08-15 02:22:20', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1', '2014-08-15 02:27:38', '2014-08-15 02:25:12', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(103, 'fe7485eb3f56fe451f664750a1942488', 'Shruti', 'Bendugade', 'shrutibendugade@gmail.com', 'female', '1997-10-14', '2014-08-15 02:30:09', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-08-15 02:48:32', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(104, 'de446bbf918d2d2d38a607047377e156', 'Vighnesh', 'Vanjari', 'vanjarivighnesh366@gmail.com', 'male', '1998-02-06', '2014-08-15 11:19:27', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-12-08 07:41:24', '2014-12-12 12:40:42', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(105, '4590831625c8a63a83fdffda74cf837e', 'Ajay', 'Upadhyaya', 'ajayu712@gmail.com', 'male', '1998-12-07', '2014-08-16 10:46:23', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1', '2014-12-17 09:03:22', '2014-12-17 09:02:55', 1, '', 1, '', 'needydad@gmail.com', '1000000'),
(106, '7410cce06686d60ee2b6791584a000c2', 'Mayuresh', 'Supe', 'mayuresh.supe@gmail.com', 'male', '1997-08-31', '2014-08-16 01:34:48', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-11-16 03:59:49', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(107, '128752a5ca51c400d28b37ddd744477e', 'Aditya', 'Bolade', 'adityabolade@gmail.com', 'male', '1996-07-04', '2014-08-16 01:53:36', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-08-16 01:58:40', '2014-08-16 01:54:10', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(108, 'e364d074cf974d881f93ac2674f3fa90', 'Bunty', 'Bommera ', 'bugsbunny61998@gmail.com', 'male', '1998-01-06', '2014-08-17 12:12:17', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-12-03 07:04:04', '2014-12-03 06:32:46', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(109, '446c1e8721015e56050814c8caee0c89', 'Siddharth', 'Waghela', 'sidknightwolf0097@gmail.com', 'male', '1997-08-19', '2014-08-17 12:48:42', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-08-17 12:49:14', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(110, '0a22470bc6ad453a0367443fc0e0e62a', 'Kiran', 'Giri', 'kirangiri59@gmail.com', 'male', '1997-11-10', '2014-08-17 12:53:05', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-12-15 11:09:53', '2014-12-15 10:50:08', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(111, '1c648ae65fe0741ad936db50a60295d7', 'Pranav', 'Zambre', 'pranav.z1997@gmail.com', 'male', '1997-08-08', '2014-08-17 02:34:44', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-11-07 07:32:27', '2014-12-08 04:17:03', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(112, 'b85735fbd9b27c03b8d7dc2915b3835b', 'Suyash', 'Malpekar', 'Suyashmalpekar@gmail.com', 'male', '1997-11-12', '2014-08-17 02:50:14', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(113, 'b441c9d1d703f8d8e6576bbcc0cf2426', 'Sanket', 'Dalvi', 'Sanketdalvi@gmail.com', 'male', '1998-04-30', '2014-08-17 05:18:42', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(114, '10918176e09bd13e3d26daa132b67d0e', 'Akshay', 'Bhadrige', 'akshaybhadrige18@gmail.com', 'male', '1995-03-18', '2014-08-17 07:57:30', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-17 10:52:24', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(115, '9da89139e5667c7ef995f5ec7e39ded4', 'Vighnesh', 'Vanjari', 'vighneshv00@gmail.com', 'male', '1998-02-06', '2014-08-18 04:34:56', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-08-18 07:25:51', '2014-08-18 04:37:43', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(116, 'c63c16f71a21ffcc24bbb0f180d9e21c', 'Snehal', 'Tambe', 'snehaltambe1997@gmail.com', 'female', '1997-10-05', '2014-08-18 05:07:24', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1', '0000-00-00 00:00:00', '2014-08-18 05:07:52', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(117, '6e5774a0d0944a78bec0369b90fe0621', 'Sagar', 'Pednekar', 'sagarpednekar04@gmail.com', 'male', '1995-04-21', '2014-08-19 10:42:24', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-11-21 12:15:30', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(119, '0f316ac782496f9a867be405d271db6c', 'Uttreshwar', 'Kamble', 'uttreshwarkamble10@gmail;com', 'male', '1993-12-10', '2014-08-19 10:48:48', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-08-19 10:53:24', '2014-08-19 10:49:21', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(120, 'f1e830ec0d1906a72815b7a5a9f65f5e', 'Tanmay', 'Thakare', 'tanmaythakare24@gmail.com', 'male', '1996-07-24', '2014-08-19 11:35:39', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-08-22 07:17:20', '2014-12-09 05:54:57', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(121, 'efffc15b25238459ef668ed99a04a6c8', 'Kunal', 'Aklekar', 'aklekar84@gmail.com', 'male', '1997-02-16', '2014-08-19 11:39:30', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-08-19 11:42:24', '2014-08-19 11:39:54', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(122, 'c745dd1e3653d9f3afdda59f419ca794', 'Mayur', 'Surve', 'mayurajaysurve@gmail.com', 'male', '1996-10-08', '2014-08-19 11:45:09', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(123, 'c8f79c7fa991848323eb14ecd2682349', 'Pratik', 'Raut', 'pratik24298raut@gmail.com', 'male', '1998-02-24', '2014-08-19 04:34:27', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-11-20 04:09:30', '2014-11-20 03:49:01', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(124, '9f2ecc6b3eb3f965ffcf700036dd3522', 'Ganesh', 'Khopade', 'kpganesh@gmail.com', 'male', '1997-04-24', '2014-08-19 07:08:15', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-08-24 12:20:26', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(125, '1c925d5156110253118f688e7c8de0dd', 'Ankur', 'Chavan', '444ankurchavan@gmail.com', 'male', '1997-08-21', '2014-08-19 09:25:03', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-08-19 09:34:29', '2014-09-04 08:59:49', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(127, '439b2a98957a8ec20ea811dd47c4244e', 'Dhanesh', 'Dhumal', '274dhanesh@gmail.com', 'male', '1996-04-27', '2014-08-20 12:16:55', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-01 05:01:35', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(128, 'ed87496b0d756d9d4fdf1fb2ab28c175', 'Akash', 'Shikare', 'shikareakash3@gmail.com', 'male', '1996-01-14', '2014-08-20 12:35:32', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',274', '2014-08-23 11:11:11', '2014-08-23 11:09:25', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(129, '4030a93de6b76e92a964fc8fb2173bda', 'Leena', 'Patil', 'leenapatil960@gmail.com', 'female', '1997-07-27', '2014-08-20 08:45:05', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-11-13 02:16:19', '2014-11-13 02:12:50', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(130, 'ab7ac9689e70d99287d095dc15442e30', 'Shradha', 'Pandhare', 'shradhapandhare@gmail.com', 'female', '1995-08-31', '2014-08-20 08:47:34', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-08-20 08:58:47', '2014-08-20 08:57:26', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(131, 'ed5d47b4dfb5232da5cf4fe8d4e617a2', 'Kajal', 'Dalai', 'kajaldalai06@gmail.com', 'female', '1995-03-06', '2014-08-20 08:53:32', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-08-20 08:56:38', '2014-08-20 08:54:09', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(132, 'eefbdd632733e12a78b4660c23c5c7ab', 'Aishwarya', 'Jadhav', 'aishwaryajadhav06@gmail.com', 'female', '1996-08-26', '2014-08-20 08:54:58', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-11-10 07:55:02', '2014-11-10 08:02:34', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(133, 'c3e8fcbbf84bc30fe3c2a90b9c61fe6d', 'Prajakta ', 'Parab', 'pparab8855@gmail.com', 'female', '1995-10-23', '2014-08-20 09:00:39', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-08-20 09:03:36', '2014-08-20 09:02:23', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(134, '6e5774a0d0944a78bec0369b90fe0621', 'Sagar', 'Pednekar', 'chunkeypandey@gmail.com', 'male', '1997-04-21', '2014-08-20 09:03:11', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-08-20 09:23:52', '2014-08-20 09:03:36', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(135, 'df7c905d9ffebe7cda405cf1c82a3add', 'Tushar', 'Borse', 'tushar.nice@gmail.com', 'male', '1985-06-02', '2014-08-20 01:56:06', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-08-20 01:56:21', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(136, '6092d0a3d9f881b9b1d67121cb80aea9', 'Kishan', 'Bhawar', 'kishanrbhawar@rediffmail.co', 'male', '1985-06-01', '2014-08-20 02:05:14', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-08-20 02:06:35', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(138, '9a9f03699c304ca60d124ff39392d2c9', 'Vinayak', 'Satam', 'vinayaksatam7@gmail.com', 'male', '1995-04-18', '2014-08-20 07:04:57', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',274', '2014-12-07 07:11:58', '2014-12-14 01:35:21', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(139, 'dc7f6c19c0030062ce8b1d60e28d6fc7', 'Ankit', 'Narkhede', 'ankit.narkhede56@gmail.com', 'male', '1997-02-20', '2014-08-20 09:24:31', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-08-20 09:36:53', '2014-08-20 09:24:50', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(141, 'ba4e638b3efde0d4f02727cb40abd3b2', 'Rushikesh', 'Gawade', 'rushikeshgawade57@gmail.com', 'male', '1997-01-23', '2014-08-21 09:34:47', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-15 12:53:13', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(142, 'bec68854d76bdbbc3950010b9bd0133d', 'Anuj', 'Jaiswar', 'anuj.jaiswar16@gmail.com', 'male', '1995-01-16', '2014-08-21 10:01:31', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-08-21 10:03:14', '2014-08-21 12:44:29', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(143, '19509d57c436cd29c46271855b8ef4ce', 'Umesh', 'Palav', 'umeshpalav96@gmail.com', 'male', '1996-07-11', '2014-08-21 10:03:15', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-08-21 10:09:17', '2014-11-25 11:23:25', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(144, '0f316ac782496f9a867be405d271db6c', 'Uttreshwar', 'Kamble', 'uttreshwarkamble10@gmail.com', 'male', '1993-12-10', '2014-08-21 10:07:23', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-12-09 07:13:32', '2014-12-09 07:10:10', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(145, '71a8bca26612ae273eaf3ace2b1f008b', 'Prasad', 'Nijai', 'prasadnijai@gmail.com', 'male', '1992-04-29', '2014-08-21 07:29:05', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(146, 'ee4554563c3bf512c81d3db997bcabcf', 'Pranav', 'Zambre', 'zambre1997@gmail.com', 'male', '1985-01-01', '2014-08-21 09:05:46', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(147, 'e139be8fde725cdbfc114da3ee7dc501', 'Shubham', 'Tate', 'shubham.tate95@gmail.com', 'male', '1995-04-01', '2014-08-21 11:20:43', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-08-21 11:21:17', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(148, '899c13e166531cfb9e2a259989589ac6', 'Sagar', 'Mali', 'sm26494@gmail.com', 'male', '1996-02-18', '2014-08-22 07:50:59', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-08-22 07:53:42', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(149, '8a0c203395bd78714335057b577990b3', 'Bhargav', 'Makwana', 'bhargavmak@gmail.com', 'male', '1997-02-04', '2014-08-22 09:02:58', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-12 10:09:16', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(150, '33a168b4db52b1d2b46855104d883be6', 'Shubham', 'Chinchkar', 'shubhamchinchkar95@gmail.com', 'male', '1995-10-06', '2014-08-22 11:09:45', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',18', '0000-00-00 00:00:00', '2014-08-22 11:10:09', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(151, '6bc133cbb37e6574fdfe4f05d63fa382', 'Vaibhavi', 'Kokate', 'vaibhavi1509@gmail.com', 'female', '1995-09-15', '2014-08-22 11:42:54', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-08-22 11:48:58', '2014-08-22 11:45:37', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(152, '6a7682865fb1364153a3979f2fa273eb', 'Shubham', 'Shimpi', 'shubham.shimpi85@gmail.com', 'male', '1995-01-06', '2014-08-22 01:09:01', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-08-22 01:11:18', '2014-08-22 01:09:26', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(153, '2840180493ff3073dc8ed330c972437d', 'Poonam', 'Patil', 'patil.poonam.11it5004@gmail.com', 'female', '1993-02-06', '2014-08-22 02:15:10', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-08-22 02:15:25', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(154, '6b844c61227627606def1bfd69fcbf43', 'Dnyaneshwar', 'Avhad', 'davhad04@yahoo.com', 'male', '1996-04-10', '2014-08-22 05:45:12', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-08-22 06:19:42', '2014-08-22 05:46:50', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(155, 'd244b2547b3cf82141d71cc0766f6a65', 'Vijay', 'Shrungarpure', 'vijay.shru1995@gmail.com', 'male', '1995-02-26', '2014-08-22 07:36:10', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-09-06 12:38:45', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(156, '1f3bbedcef8b15b508a2ab3b94433321', 'Philip', 'Mavchi', 'philipmavchi8@gmail.com', 'male', '1994-04-15', '2014-08-23 03:56:28', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1', '2014-08-23 04:04:20', '2014-08-23 03:56:48', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(157, '16834e74663934c0a64d7b70152e614a', 'Pratik', 'Borhade', 'pratik.borhade2003@gmail.com', 'male', '1992-05-01', '2014-08-25 12:50:38', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-08-25 12:59:19', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(158, '976e1b360b8ccd4f1b0c794e84dfb428', 'Sail', 'Khedekar', 'sailkhedekar8@gmail.com', 'male', '0000-00-00', '2014-08-25 07:58:28', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(159, '62f9778b6bbbc89ee8738118b1a77e06', 'Nikhil ', 'Sharma', 'sharma.nikhil334@gmail.com', 'male', '1998-10-09', '2014-08-25 08:57:26', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-08-27 12:09:16', '2014-10-15 05:22:12', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(160, '9d7ddd71818f87d150c8ef28cee9010a', 'Mohit', 'Jain', 'mohitj014@gmail.com', 'male', '1999-01-06', '2014-08-26 09:24:23', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(161, '152499e753e8c504a75a631dbd4e72a7', 'Prathmesh', 'Gaonkar', 'pratham1128@gmail.com', 'male', '1995-11-28', '2014-08-27 07:36:07', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1', '2014-08-27 07:39:40', '2014-10-11 09:30:44', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(162, 'e15cbfba87bb1ee1417953db8515857d', 'Pawan', 'Chaudhary', 'pawanc125@gmail.com', 'male', '1985-01-01', '2014-08-28 07:28:59', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-08-28 07:44:57', '2014-08-28 07:30:25', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(163, '984b839b395a1e8ef84fe77b3dd70037', 'Vivek', 'Andher', 'vivekandher34@gmail.com', 'male', '1994-11-27', '2014-08-28 07:38:36', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-08-28 07:39:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(164, '0fd0f70b834f6cf29a490ace0e35bd47', 'Arpita', 'Kawale', 'arpitakawale2408@gmail.com', 'female', '1997-08-24', '2014-08-28 07:40:09', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1,29', '2014-08-28 07:43:14', '2014-08-28 07:41:25', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(165, 'e6df158bd8bbcd5d44c32f1bdd08cd4d', 'Sohail', 'Shaikh', 'shaikhsohail78601@gmail.com', 'male', '1999-04-28', '2014-08-28 09:42:52', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-11 12:06:21', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(166, 'c95b7e88a3ed1037d5197858a2d30977', 'Nehal', 'Malap', 'malapn24@gmail.com', 'female', '1997-11-03', '2014-08-29 12:07:06', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1', '2014-09-23 09:54:49', '2014-09-23 09:53:46', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(167, 'cade63b31418e0842e98b9add97bb8c4', 'Arvind', 'Ghosh', 'Arvind.rg.143@gmail.com', 'male', '1997-08-24', '2014-08-29 12:43:01', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-08-29 12:47:55', '2014-08-29 12:50:27', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(168, '3d4bf96ebf5594372ab049215da17a2e', 'Aditya', 'Jadhav', 'adityajadhavaj@gmail.com', 'male', '1998-02-01', '2014-08-29 01:26:37', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1', '0000-00-00 00:00:00', '2014-08-29 01:27:34', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(169, 'd0c76006355090e79bec967e656eafa1', 'Shahrukh', 'Shikalgar', 'shahrukhshikalgar011@gmail.com', 'male', '1994-04-04', '2014-08-29 02:03:33', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-08-29 02:04:22', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(170, '884883c27e3ae3c3044a90f22e59012d', 'Bilal', 'Rumani', 'Bilal_rumani@yahoo.com', 'male', '1998-03-31', '2014-08-29 03:38:52', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-14 04:32:04', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(171, '50c3e9b41377adfdcfc64fb6f226b21a', 'Sujit', 'Shimpi', 'vicky.shimpi26@gmail.com', 'male', '1998-03-26', '2014-08-29 06:19:23', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1', '0000-00-00 00:00:00', '2014-08-29 06:19:44', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(172, 'a34f39f6895fee190c3d1b5362caad7b', 'Chetana', 'Mhatre', 'chetanamhatre2011@gmail.com', 'female', '1997-10-16', '2014-08-29 09:11:32', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1', '2014-08-29 09:24:49', '2014-12-05 11:44:21', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(173, '119061b48169c33515247c3f3b1c2557', 'Prasad', 'Berde', 'Prasadberde365@gmail.com', 'male', '1995-01-05', '2014-08-29 10:00:28', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-08-29 10:01:31', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(174, '7731f9c869d37853780cd05966abbbf7', 'Neha', 'Borulkar', 'neyha8@gmail.com', 'female', '1996-05-08', '2014-08-30 08:38:40', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1', '0000-00-00 00:00:00', '2014-11-25 04:03:52', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(175, '492ab0d0797d4ece3eb066cfa4f5e07e', 'Pritee', 'Gaikwad', 'priti.gaikwad2013@gmail.com', 'female', '1997-03-22', '2014-08-30 11:12:43', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(176, '1111853d557213e69ca1f514bfb820d8', 'Mohit', 'Jain', 'mohitjain014@gmail.com', 'male', '1999-01-06', '2014-08-30 05:04:09', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-08-30 05:04:36', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(177, '645ad18e8f347504793064768d6e38e2', 'Prathamesh', 'Mahadik', 'pssm962@gmail.com', 'male', '1997-07-28', '2014-09-01 12:41:44', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1', '0000-00-00 00:00:00', '2014-09-01 12:42:49', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(178, '5a2a788e35454f77cdad92dad17fe88a', 'Abhishek', 'Lad', 'abhisheklad1996@gmail.com', 'male', '1996-11-06', '2014-09-01 09:37:34', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-09-01 09:46:16', '2014-09-01 09:40:03', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(179, 'ffa238608aa1e3c4c6877aef9788095b', 'Krutadnya', 'Raut', 'krutadnyaraut@gmail.com', 'female', '1997-10-22', '2014-09-02 02:53:45', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-09-02 02:54:18', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(180, '30227d56a8b402e26bd3ef6ad34db28b', 'Rahul', 'Patil', 'rahulpatil@live.com', 'male', '1991-09-01', '2014-09-05 07:16:46', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-09-05 07:51:51', '0000-00-00 00:00:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(181, '2e21c60690daf50fa3dcf1f4e47fab67', 'Yogesh ', 'Patil', 'yogspatil07@gmail.com', 'male', '1993-08-08', '2014-09-05 08:30:39', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-11-04 06:45:46', '2014-12-01 02:59:47', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(182, '27f5ead81887c55af0e3f163226f40b5', 'Bhavesh', 'Sawant', 'bhaveshrocks64@gmail.com', 'male', '1997-08-14', '2014-09-07 11:00:52', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-09-16 12:38:58', '2014-11-20 01:22:25', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(183, '81dc9bdb52d04dc20036dbd8313ed055', 'Ifat', 'Mirza', 'ifat11@gmail.com', 'female', '1999-06-21', '2014-09-07 01:04:05', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-09-07 01:08:58', '2014-09-07 01:07:05', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(184, 'f046bdee09a2aab03d3dc7fb8f8362c0', 'Dragonskater', 'Offabulousness', 'highfives007@gmail.com', 'male', '1997-05-30', '2014-09-08 05:55:26', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',7', '0000-00-00 00:00:00', '2014-09-08 05:56:11', 0, '', 1, '', 'needydad@gmail.com', '1000000');
INSERT INTO `login` (`id`, `password`, `firstname`, `surname`, `email`, `gender`, `dob`, `doj`, `contact`, `fname`, `mname`, `aadharno`, `institute`, `typeedu`, `result`, `income`, `occupation`, `sibling`, `follow`, `lastvisit`, `lastlog`, `view`, `ip`, `type`, `previousgrants`, `pemail`, `amountneed`) VALUES
(185, '098f6bcd4621d373cade4e832627b4f6', 'Test', 'User', 'testuser3@gpmnetwork.co.in', 'male', '1985-01-01', '2014-09-10 12:12:45', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-10-30 05:36:14', '2014-10-30 05:34:43', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(186, '7152aa36f4a013d164aacf38174f8ced', 'Anas', 'Solkar', 'solkaranas@gmail.com', 'male', '1999-10-06', '2014-09-10 10:40:57', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-12-21 11:20:22', '2014-12-21 11:18:22', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(187, 'd3421dd0641d37abea58f8bb17b20447', 'Vaibhav', 'Naik', 'Vaibhavnaik809@gmail.com', 'male', '1995-12-31', '2014-09-12 03:35:11', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-09-12 03:35:49', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(188, '6286cd4d23bd4efdb6e174fd4f0fe386', 'Sunil', 'Shinde', 'sunilshinde531998@gmail.com', 'male', '1998-03-05', '2014-09-12 06:15:43', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-09-12 06:33:49', '2014-09-12 06:16:34', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(189, '9a188922dece6efbf498895916c70551', 'Shravan ', 'Jadhav', 'shravanjadhav38@gmail.com', 'male', '1994-08-13', '2014-09-12 10:07:59', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-09-12 10:16:35', '2014-09-12 10:08:17', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(190, '560685179f8dc32453a8803aaeffcba1', 'Atul', 'Suroshi', 'suroshiatul19@gmail.com', 'male', '1996-10-18', '2014-09-14 03:20:13', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-09-14 03:21:10', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(192, '8d191361c7acbc51f2418be6a83ba6be', 'Tuhsar', 'Dhuwali', 'dhuwalit@gmail .com', 'male', '1994-12-01', '2014-09-16 01:32:01', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-09-16 01:50:25', '2014-11-29 01:21:19', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(193, '040cd3088fa558f9d41ebce969ef182f', 'Ajay', 'Tambe', 'ajaytambe936@gmail.com', 'male', '1994-04-09', '2014-09-16 10:43:54', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(194, '244bcecc31e0e7a2c19b2c37917bdcba', 'Bharti', 'More', 'bharti.more61@gmail.com', 'female', '1997-08-20', '2014-09-17 12:12:30', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-09-17 12:29:55', '2014-09-17 12:15:28', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(195, 'd4341d61b15732812f81339ae4683690', 'Sachin', 'Jamdade', 'mesachinjamdade@gmail.com', 'male', '1991-06-01', '2014-09-17 09:57:00', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-09-17 10:01:22', '2014-09-17 09:58:18', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(196, '8eb2140009ed7d5d283b6df7aaaea5fb', 'Shubham', 'Bauskar', 'shubhambauskar80@gmail.com', 'male', '1996-06-20', '2014-09-17 05:25:55', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-12-11 01:15:41', '2014-12-11 01:07:59', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(197, '4e3e32a9bb20b3bd351b5b029a8fe9f8', 'Ketan', 'Dhanke', 'ketan.dhanke18@gmail.com', 'male', '1996-05-21', '2014-09-21 02:53:17', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-09-21 02:57:26', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(198, '0a421295d1faf4596d2d351575d390de', 'Abaso', 'Kolekar', 'abasokolekar99@gmail.com', 'male', '1994-06-02', '2014-09-22 08:54:50', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-09-27 08:25:28', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(199, '84db5bddea1693a77cf352888ea8406d', 'Rahul', 'Kashyap', 'rahulkashyap0201@live.com', 'male', '1996-01-02', '2014-09-23 01:58:03', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(200, '781e5e245d69b566979b86e28d23f2c7', 'Prashant', 'Sonawane', 'prashantsonawane1996@yahoo.com', 'male', '1996-12-22', '2014-09-24 01:31:21', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-09-24 01:42:15', '2014-09-24 01:40:50', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(201, '9b108cf8ba22b755ff9b3fb04c168f42', 'Akshay', 'Gawade', 'akshaygawade@rocketmail.com', 'male', '1995-11-01', '2014-09-24 01:38:39', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(202, '1111853d557213e69ca1f514bfb820d8', 'Mohit', 'Jain', 'gpmmj@gmail.com', 'male', '1999-01-06', '2014-09-24 07:41:30', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-20 08:45:59', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(203, '00b73c403a96ff752f15f57749f4653d', 'Saurabh', 'Mahadik', 'smahadik905@gmail.com', 'male', '1997-10-01', '2014-09-25 02:27:38', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-09-25 02:55:35', '2014-09-25 02:28:22', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(204, '20408e798079a6e8ee10bc2d22b45499', 'Akshada', 'Pawar', 'akshadapawar25@gmail.com', 'female', '1985-01-01', '2014-09-25 02:40:34', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-09-25 02:45:40', '2014-09-27 10:36:22', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(205, 'c90f6076c1307d0159c75d843a122a18', 'Snehal', 'Katare', 'snehal.katare28@gmail.com', 'female', '1997-11-28', '2014-09-27 10:59:57', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-09-27 11:00:44', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(206, '45848348f4b18e2c3e4c2e804b8079a8', 'Alisha ', 'Ubale', 'ualisha85@gmail.com', 'female', '1996-01-21', '2014-09-27 11:13:12', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-09-27 11:25:59', '2014-09-27 11:13:57', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(207, 'cd8bab785b329ac6da8de04d6e11a22c', 'Akshata', 'Bagle', 'bagleakshata@gmail.com', 'female', '1996-07-10', '2014-09-27 11:13:54', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-09-27 11:14:56', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(208, 'aa989d324d81bc54b22a3ecde0a47783', 'Kajal', 'Sankhe', '2101kajalsankhe @gmail.com', 'female', '1997-01-21', '2014-09-27 11:26:12', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(209, '9f2ecc6b3eb3f965ffcf700036dd3522', 'Ganesh', 'Khopade', 'kpganesh121@gmail.com', 'male', '1997-04-24', '2014-09-27 06:32:14', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-09-27 06:32:53', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(212, '711d4eaee1812d7a96ab8507eef787de', 'Shankar', 'Vajarekar', '<b style="color:red">No-Email</b>', 'male', '1995-06-17', '2014-09-28 09:31:55', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',213', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(213, 'bab7c4bd13f14402566482f7e36cef80', 'Sanket', 'Vajarekar', 'vajarekarsanket176@gmail.com', 'male', '1995-06-17', '2014-09-28 09:40:48', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-09-29 12:17:59', '2014-12-21 10:15:36', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(214, 'f90ccb4c33325a571a33d2be7dc56e7e', 'Bhagyashri', 'Kamble', 'bl.kamble.03@gmail.com', 'female', '1996-08-12', '2014-09-30 04:09:01', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(216, 'ef6f61531e1e7fb76185c0e1a5fa688a', 'Shaikh suleman', 'Usman', 'sulemans031@gmail.com', 'male', '1999-05-20', '2014-10-02 10:16:24', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1,5', '0000-00-00 00:00:00', '2014-10-02 10:17:13', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(217, 'd3e96e9180f6f1b15a099ed8f5c79fa0', 'Pranavi', 'Pawar', 'pranavipawar', 'female', '1997-11-27', '2014-10-05 08:49:23', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-10-05 09:29:29', '2014-10-05 09:29:12', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(218, '1111853d557213e69ca1f514bfb820d8', 'Mohit', 'Jain', 'mohitgpm@gmail.com', 'male', '1999-01-06', '2014-10-06 10:59:55', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(219, 'd41d8cd98f00b204e9800998ecf8427e', 'Pratik', 'Shinde', 'darshanshinde001@gmail.com', 'male', '1999-04-29', '2014-10-06 08:35:43', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(220, 'c924ad0d15b8a9f253c3f0b1a522d7bc', 'Darshan', 'Madke', 'darshanmadke@gmail.com', 'male', '1998-12-26', '2014-10-07 12:16:45', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-10-07 12:17:30', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(221, '3d4bf96ebf5594372ab049215da17a2e', 'Aditya', 'Jadhav', 'adityahjadhavaj1298@gmail.com', 'male', '1998-02-01', '2014-10-07 12:15:48', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-10-26 11:50:25', '2014-11-08 02:23:49', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(223, '77158701962339c74416d191fa4d9001', 'Pratik', 'Bhagat', 'pratikbhagat28@gmail.com', 'male', '1998-09-28', '2014-10-07 12:33:49', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-11-16 05:16:33', '2014-11-25 12:44:37', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(224, '57f064d736aceded5127c4656c0e003f', 'Ajay', 'Patil', 'ajayshivajipatil1998@gmail.com', 'male', '1998-01-20', '2014-10-08 05:37:55', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-22 09:48:18', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(225, '62410af8c325d4378f3afc1785e35a3a', 'Romel', 'Tilak', 'tilak.romel95@gmail.com', 'male', '1995-11-22', '2014-10-09 02:01:47', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-10-09 02:35:02', '2014-10-09 02:02:35', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(226, '33756c73801c6ebc246aac08e822205d', 'Ravi', 'Holgir', 'raviholgir@gmail.com', 'male', '1997-05-31', '2014-10-13 12:21:25', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-11-24 01:42:06', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(227, '1bea3a3d4bc3be1149a75b33fb8d82bc', 'Mitesh', 'Salvi', 'miteshsalvi@gmail.com', 'male', '1996-03-22', '2014-10-14 08:51:38', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-10-14 08:52:03', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(228, '44c751cabfafe91d01744439e5988ac6', 'Ashish', 'Raut', 'ashishraut912@gmail.com', 'male', '1998-12-09', '2014-10-15 10:58:51', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-10-30 02:45:24', '2014-10-30 02:46:40', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(229, 'd4a13ed7e271105203cfe71489339887', 'Rahul', 'Kashyap', 'rahulkashyap0201@gmail.com', 'male', '1996-01-02', '2014-10-18 04:41:02', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1', '0000-00-00 00:00:00', '2014-10-18 04:42:43', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(230, 'd6c5d87854434b460232ecc00108c524', 'Omkar', 'Deshmukh', 'omkardeshmukh68@gmail.com', 'male', '1998-03-04', '2014-10-18 05:34:27', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-10-19 12:41:13', '2014-10-19 03:02:26', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(231, 'a034486e9e43fc2a5f1ea52fcf51a1d5', 'Shailesh', 'Nisargan', 'nisarganshailu@gmail.com', 'male', '1998-05-26', '2014-10-18 09:36:14', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-10-18 09:36:53', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(232, '2777c180f3c0c18c68958dbc89b0ea95', 'Aditya', 'Gurjar', 'adityagurjar.3719@gmail.com', 'male', '1997-06-06', '2014-10-19 07:15:47', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-10-19 07:41:30', '2014-10-19 07:38:14', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(233, '1503e075fd614d54b451f1d01f900861', 'Harshal', 'Ghude', 'harshal.ghude.2897@gmail.com', 'male', '1997-08-02', '2014-10-19 07:44:16', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-10-27 05:03:34', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(234, 'a8a3048529bb7d03e19e1d59db64e58e', 'Rohit', 'Gupta', 'guptarohit50396@gmail.com', 'male', '1998-03-05', '2014-10-19 07:48:43', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-20 01:07:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(235, '182a15b93cd323556be21fd4fe8f3a8a', 'Pooja', 'Chaurasiya', 'poojachaurasiya1212@gmail.com', 'female', '1998-05-10', '2014-10-19 08:10:14', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-10-19 08:10:29', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(236, '669c3717f19428ec9aa5147ba2b73577', 'Nitin', 'Juikar', 'nitinjuikar@gmail.com', 'male', '1997-11-02', '2014-10-20 06:51:55', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-10-20 06:52:20', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(238, '9f2d50d43e2b017f18307ce516210bb5', 'Pratap', 'Sargar', 'pratapsargar.11.ps@gmail.com', 'male', '1998-12-04', '2014-10-23 04:53:31', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-10-23 05:06:03', '2014-10-23 04:54:36', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(239, '777f6dc44760701de35b1d0e49aa5ebc', 'Harish', 'Bendale', 'haribendale@gmail.com', 'male', '1998-04-04', '2014-10-26 05:10:05', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-12-10 09:06:31', '2014-12-10 07:39:47', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(240, '6be736a0a77a22ca4e75c55b9a87a73f', 'Shardul', 'Sawant', 'shardulrocks99@gmail.com', 'male', '1999-03-13', '2014-10-26 09:59:55', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-11-30 09:20:58', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(241, '8a16f4bcea0ffcf3c1aa3fd47780a1ba', 'Anu', 'Shah', 'anu24.shah@gmail.com', 'female', '2000-01-01', '2014-10-28 11:02:22', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-10-29 05:33:35', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(242, 'ed4760e62f3655bd3a40c6d83ab74f2e', 'Rajesh', 'Manjrekar', 'rajeah.manjrekar002@gmail.com', 'male', '1998-09-23', '2014-10-30 04:52:22', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(243, 'ed4760e62f3655bd3a40c6d83ab74f2e', 'Rajesh', 'Manjrekar', 'rajesh.manjrekar002@gmail.com', 'male', '1998-09-23', '2014-10-30 05:40:33', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-10-30 05:59:38', '2014-12-09 10:48:30', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(244, 'f91e15dbec69fc40f81f0876e7009648', 'Deepak', 'Pawar', 'deepakp271994@gmail.com', 'male', '1994-07-02', '2014-10-30 05:41:14', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-18 10:30:04', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(246, '098f6bcd4621d373cade4e832627b4f6', 'Test', 'User', 'testuser4@gpmnetwork.co.in', 'male', '1985-01-01', '2014-10-30 05:54:00', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-18 12:53:18', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(247, '25f9e794323b453885f5181f1b624d0b', 'Raksha', 'Shetty', 'rakshashetty680@gmail.com', 'female', '1998-09-23', '2014-10-30 07:34:04', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',76', '0000-00-00 00:00:00', '2014-10-30 07:34:25', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(248, '895d5b1063073eba01498b6757dff31b', 'Dipti', 'Borke', 'diptiborke@gmail.com', 'female', '1999-03-17', '2014-10-31 09:50:45', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',76', '2014-11-02 01:34:47', '2014-11-30 06:36:22', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(249, '2acb7811397a5c3bea8cba57b0388b79', 'Rahul', 'Patil', 'prahul.patil01@gmail.com', 'male', '1994-10-10', '2014-11-01 09:40:11', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',244', '2014-11-01 09:46:58', '2014-12-18 01:20:28', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(250, '412fa0873b92e62e728bded90b5c86fa', 'Akshay', 'Tupsamudre ', 'akshaytupsamudre3@gmail.com  ', 'male', '1995-05-02', '2014-11-02 12:46:28', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-11-02 12:47:05', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(251, '4e78f20fe96f95b273ff453e73e58533', 'Akshay ', 'Gawande ', 'gawandeakshay100@gmail.com ', 'male', '1998-11-05', '2014-11-03 10:48:21', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-11-03 10:49:08', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(252, '8f94db5408d9488c0992f834f4319bc5', 'Rohit', 'Mohite', 'rohitmohite150@gmail.com', 'male', '1998-02-15', '2014-11-04 05:01:46', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-06 10:43:06', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(253, '1903ba9bb1829b474ce2f9c49de86b72', 'Siddeshwar ', 'Chiliveri', 'sidchiliveri1234@gmail.com', 'male', '1997-03-24', '2014-11-05 10:08:47', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-11-06 02:17:39', '2014-11-06 01:53:53', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(254, '3d4bf96ebf5594372ab049215da17a2e', 'Aditya', 'Jadhav', 'adityahjadhavaj1298@gmail. com', 'male', '1998-02-01', '2014-11-08 02:25:56', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(255, '02f43142dc9f9ad687154660dc8c610c', 'Bhagyashri', 'Kamble', 'kamblebala33@gmail.com', 'female', '1996-08-12', '2014-11-09 12:57:34', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-12-13 12:12:19', '2014-12-13 12:11:23', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(256, 'ec2a9353dd1b3c9a5bbc8bd6f945f67d', 'Krutika', 'Sawant', 'sawantkru96@gmail.com', 'female', '1996-11-29', '2014-11-09 05:48:44', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-11-09 05:59:11', '2014-11-09 05:49:47', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(257, '0ae2b544d37847450a8f4009692acef7', 'Sairaj', 'Nalawade', 'sairaj.nalawade47@gmail.com', 'male', '1988-09-11', '2014-11-09 06:18:15', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',360', '2014-11-09 06:23:35', '2014-11-09 06:18:54', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(258, 'a364921fd473016f7a689be0d50aa392', 'Abhishek', 'Sule', 'abhirajsule302@gmail.com', 'male', '1994-06-04', '2014-11-10 07:27:44', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-11-11 10:01:09', '2014-11-11 09:59:38', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(259, 'c452af7c3e78ec024305f1fc3fd5e35b', 'Rushikesh', 'Gaikwad', 'rushikesh21111996@gmail.com', 'male', '1996-11-21', '2014-11-11 12:22:22', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-11-26 07:41:57', '2014-12-21 10:29:30', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(260, '182e343f0e2825bfc92581495eed636c', 'Kiran ', 'Yadav', 'kiranyadav161196@Gmail.com', 'male', '1986-11-16', '2014-11-11 10:45:25', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',76', '0000-00-00 00:00:00', '2014-12-21 08:37:33', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(261, '412fa0873b92e62e728bded90b5c86fa', 'Abhishek', 'Padge', 'abhishekpadge@gmail.com', 'male', '1995-07-03', '2014-11-11 12:33:42', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-11-11 12:35:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(262, '827ccb0eea8a706c4c34a16891f84e7b', 'Kishor', 'Desai', '<b style="color:red;">No-Email</b>', 'male', '1997-08-06', '2014-11-11 07:22:14', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',76', '2014-11-11 09:05:38', '2014-11-11 07:22:43', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(264, '8f94db5408d9488c0992f834f4319bc5', 'Rohit', 'Mohite', ' rohitmohite150@gmail.com ', 'male', '1998-05-20', '2014-11-14 09:48:44', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-12 01:36:56', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(265, '48634a0453a0f965761c77dac0384b1c', 'Lalit ', 'Sinnarkar ', 'sinnarkarlalit57@gmail.com ', 'male', '1997-12-11', '2014-11-15 10:24:31', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-11-15 10:29:55', '2014-11-15 10:25:01', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(266, 'f4eb8940d1c2c11e41e24bd69d22bd48', 'Suruchi', 'Pednekar', 'suruchi.pednekar15@gmail.com', 'female', '1996-07-31', '2014-11-16 05:21:00', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-11-16 05:39:19', '2014-11-16 05:32:13', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(269, 'cdd41045bdab8e696084afce19873fcd', 'Prabhat ', 'Panchal', 'prabhatpanchal100@ gmail.com', 'male', '1998-08-08', '2014-11-19 05:55:27', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(270, 'ff041def019fe9cf24c3139bd423f8ae', 'Pooja', 'Tiwari', 'pooja13111@gmail.com', 'female', '1998-04-06', '2014-11-19 07:11:31', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-12-19 10:37:09', '2014-12-19 10:32:50', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(271, '049671e28a386427e432b3370a22aae4', 'Neeraj ', 'Yadav', 'nyadav316@gmail.com', 'male', '1994-07-06', '2014-11-19 09:20:19', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-11-19 09:20:52', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(273, '6aee8a2044e3b84c93b748b75bcf101a', 'Hari', 'Gavande', 'harigavande@gmail.com', 'male', '1995-10-20', '2014-11-20 12:27:35', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-15 01:59:27', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(274, 'd462906260b9a4408fbff49f43580fab', 'Shubham', 'Mahadik', 'shubhammahadik7@gmail.com', 'male', '1996-07-17', '2014-11-20 03:24:19', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-11-30 11:56:00', '2014-12-06 06:28:32', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(275, 'ce41690cf27eaa9ad64ae1bc91b13ea3', 'Ankit', 'Redkar', 'ankitredkar29@gmail.com', 'male', '1996-04-19', '2014-11-20 04:01:21', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',274', '2014-11-20 04:07:15', '2014-12-09 06:25:26', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(276, 'cfb10785d1b3f8558dc78b24f886e284', 'Akshay', 'Pawar', 'pakshay219@gmail.com', 'male', '1996-09-21', '2014-11-20 08:02:01', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-15 07:22:31', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(277, 'e650cd295e97b4023c03e416b91fdd94', 'Prashant', 'Wani', 'prashantfs13is018', 'male', '1997-05-17', '2014-11-20 11:23:03', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-11-25 09:43:13', '2014-11-25 09:31:16', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(278, '89d3c8ab048223d24d7e083a194d7f11', 'Vinod', 'Bhogan', 'vinodbhogan@gmail.com', 'male', '1996-09-24', '2014-11-21 07:41:03', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-11-21 07:41:31', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(279, '6d241fe34efbf754bfe1bc544d505913', 'Prashant', 'Mali', 'prashant97mali@gmail.com', 'female', '1997-04-20', '2014-11-21 09:19:57', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-11-21 09:24:56', '2014-11-21 09:20:40', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(280, '8276cb96b3382a282edb58c135248f71', 'Kapendra', 'Kor', 'kapendrakor98@gmail.com', 'male', '1998-05-02', '2014-11-21 09:43:47', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-12-17 10:05:46', '2014-12-17 10:00:46', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(281, '557e6fcac476a3bf83148fe5f5981a6d', 'Saili ', 'Bansode', 'sailibansode@gmail.com', 'female', '1997-03-13', '2014-11-21 09:44:54', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-11-21 02:17:29', '2014-11-21 02:17:15', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(282, '2ac442c15a5cab8ae5c7796edb2d5521', 'Vaibhav', 'Wankhedkar', 'perfecth64@gmail.com', 'male', '1998-04-18', '2014-11-21 05:57:59', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-12 06:51:47', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(283, 'af386e8bc51af8f12bef6776b40bcce4', 'Bhavesh', 'Malve', 'bhaveshmalve@gmail.com', 'male', '1997-03-04', '2014-11-21 08:34:39', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-11-24 09:10:02', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(284, 'b3d32ce55d1f1a0fef0c9316b8acb94e', 'Prathmesh', 'Todkar', 'todkarprathmesh44@gmail.com', 'male', '1997-09-28', '2014-11-22 12:54:12', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-11-22 01:08:39', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(285, 'dfeb4ffb5cda36880522c9e09143c70a', 'Atul', 'Ghule', 'atulghule123@gmail.com', 'male', '1995-04-27', '2014-11-22 03:56:52', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-11-22 04:10:02', '2014-11-22 03:57:15', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(286, '6be736a0a77a22ca4e75c55b9a87a73f', 'Shardul', 'Sawant', 'shardulfans@rediffmail.com', 'male', '1999-03-13', '2014-11-22 07:51:21', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-21 10:23:56', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(287, '6dc69789d34bccdfc1a1ac93daaea1fb', 'Sachin', 'Yadav ', 'sachiny1998@gmail.com', 'male', '1998-01-04', '2014-11-23 05:43:20', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-11-23 06:16:01', '2014-12-16 06:01:11', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(288, 'f3378e3b65bc034b44bdbbb1c6a16f4f', 'Rahul', 'Ghadge', 'rahulghadge62@gmail.com', 'male', '1998-06-03', '2014-11-23 05:53:17', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-16 08:27:43', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(290, 'cab4495a37818be94bdad951fe298694', 'Rupam', 'Patil', 'patil_rupam@rediffmail.com', 'female', '1992-04-07', '2014-11-24 12:15:33', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-11-24 12:17:18', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(291, '3942fd3255f3796882f57d6e2fae9177', 'Siddharth', 'Gawde', 'siddheshrane99@ymail.com', 'male', '1998-04-29', '2014-11-24 04:04:06', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(296, '153291e046e734967d1c13be4b4667a9', 'Pratik', 'Nikam', 'pratik_nik@ymail.com', 'male', '1992-11-13', '2014-11-24 07:39:33', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-11-24 07:39:46', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(297, '0cd7c0cf0bbdde30edaea97c7197f351', 'Sairaj', 'Shelke', 'sairajshelke1@gmail.com', 'male', '1996-10-02', '2014-11-25 12:10:29', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-13 08:22:34', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(298, '417daeaf19f3b20d9794eded50e521be', 'Rohit', 'Kadam', 'rohitkadam130@gmail.com', 'male', '1996-06-01', '2014-11-25 10:59:36', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-11-25 11:00:22', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(300, 'd6dfb33a2052663df81c35e5496b3b1b', 'Rajkumar', 'Jadhav', 'rajkumarjadhav125@yahoo.com', 'male', '1996-09-09', '2014-11-25 05:27:03', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-11-25 05:29:26', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(301, '9852d36b1cab1ca93135c9d8fcd8b1b6', 'Vivek', 'Andher', 'vivekandher@rediffmail.com', 'male', '1994-11-27', '2014-11-25 06:57:51', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',1', '2014-12-20 02:56:18', '2014-12-22 09:52:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(302, '8fc132b7ef58efc90991a73397612aa8', 'Pravin', 'Mohite', 'pravinmohite786@gmail.com', 'male', '1995-04-22', '2014-11-25 10:12:01', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-12-05 07:15:25', '2014-12-19 10:20:15', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(303, '1800f6ed5636cbd61f13b37ae6f9eba7', 'Kiran', 'Langhi', 'kiranlanghi20@gmail.com', 'male', '1993-12-20', '2014-11-25 11:10:58', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-16 10:14:38', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(304, '137830c55c1a6bc40e4fa0b24ff43d94', 'Pankaj', 'Ghodke', 'Pankajghodke42@yahoo.com', 'male', '1990-10-27', '2014-11-26 09:01:46', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-11-30 04:37:14', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(305, 'fcda8b45564fe543c5ae0adc98632b52', 'Neel', 'Chikhlikar', 'nchikhlikar@gmail.com', 'male', '1997-01-04', '2014-11-26 09:12:45', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-11-26 09:13:13', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(306, '8758f41f9e20adebeb9beea20969d757', 'Vinay', 'Karande', 'karandevinay@gmail.com', 'male', '1996-10-02', '2014-11-26 06:26:09', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-20 09:55:19', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(307, '6baa73d5ccac460a7670790e3a843147', 'Gauri ', 'Patil', 'gauripatil1996@gmail.com', 'male', '1996-09-03', '2014-11-26 08:07:01', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-01 10:24:49', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(308, 'a7e285fd88bd91f9342f6d93fd8a4a1f', 'Samiksha', 'Dhulap', 'dhulapsamiksha@gmail.com', 'male', '1997-08-30', '2014-11-26 11:01:02', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-12-11 08:56:32', '2014-12-11 08:47:52', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(309, '745f189a03149a53cf907b3699a03e2a', 'Prashant', 'Rai', 'premr033@gmail.com', 'male', '1997-03-06', '2014-11-26 11:22:19', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-11-26 11:23:05', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(310, 'e529028a36a17ced3f2aa143c6223642', 'Asavari', 'Nalawade', 'asavarihahs@gmail.com', 'female', '1996-11-22', '2014-11-27 10:28:34', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(311, '0447b0e43cbf28f05d6d3650a3406628', 'Ajay', 'Vishwakarma ', 'ajayvish1992@gmail.com', 'male', '1992-11-10', '2014-11-27 10:32:59', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-11-27 10:35:47', '2014-12-11 10:40:25', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(312, 'a20015c6f840ac1060fff6db9f38d205', 'Vaibhav', 'Maskare', 'Vaibhavmaskare@gmail.com', 'male', '1996-09-16', '2014-11-27 10:59:44', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-11-27 11:00:35', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(313, 'c35d26dfffd774c5170c1802176b58ab', 'Mahesh', 'Pawar', 'maheshpawar2215@gmail.com', 'male', '1997-03-22', '2014-11-27 11:19:33', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-12-04 07:25:31', '2014-12-15 11:21:05', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(314, '97703c5662cb0f0ae03d804209918764', 'Kavita', 'Gomase', 'kavitagomase2014@gmail.com', 'female', '1997-10-09', '2014-11-27 01:35:02', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-12-16 03:44:15', '2014-12-16 03:29:49', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(315, 'ccf3f4b8c1da8d1dacd42a39fc08245c', 'Ravi', 'Shinde', 'shinder685@gmail.com', 'male', '1997-07-20', '2014-11-27 04:43:54', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-11-27 04:48:15', '2014-11-27 04:44:19', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(316, 'c34c111c49968f09ebf91ca3d8d6098f', 'Sumit', 'Mandavkar', '8108744657sumit@gmail.com', 'male', '1994-12-11', '2014-11-27 06:18:14', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-11-27 06:34:24', '2014-12-09 12:36:33', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(317, 'f51c07c12dae9abbbbaad8480be9d8e3', 'Deepak', 'Tambe', 'Dtambe912@gmail.com', 'male', '1994-12-09', '2014-11-27 06:30:47', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-11-27 06:37:40', '2014-11-27 06:31:25', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(318, '1a0556002e82c6865e831707ee0fb6ad', 'Faheem', 'Mirkar', 'faheem3175@gmail.com', 'male', '1994-12-01', '2014-11-27 06:35:34', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-18 12:48:56', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(319, '587c57365b54e8283fd6b1ac24acf29d', 'Sonali', 'Vazarkar', 'sonali.vazarkar@gmail.com', 'male', '1997-09-04', '2014-11-28 11:39:34', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-11-28 11:58:41', '2014-11-28 11:56:57', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(320, '1b6b574010b4bf9687966ae3c00ee7dc', 'Shivaji', 'Raje', 'ssraje93@gmail.com', 'male', '1993-06-14', '2014-11-28 02:15:57', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-12-17 02:32:48', '2014-12-17 01:48:13', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(321, '884883c27e3ae3c3044a90f22e59012d', 'Bilal', 'Rumani', 'bilalrumani5@gmail.com', 'male', '1998-03-31', '2014-11-28 03:10:31', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',5', '0000-00-00 00:00:00', '2014-11-28 03:11:01', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(322, '4701209832411fd25a3809293b1116ff', 'Ganesh', 'Sawant', 'ganesh.sawant0106@gmail.com', 'male', '1993-06-01', '2014-11-28 07:47:07', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',5', '0000-00-00 00:00:00', '2014-11-28 07:47:39', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(323, '781f6c30023d9a9732222664d0940043', 'Rachana', 'Upadhaya', 'rachana.md1@gmail.com', 'female', '1997-10-03', '2014-11-29 08:59:12', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(324, 'e5a443b39e03eef4dc7ef39056a3a59e', 'Rachana ', 'Upadhaya', 'vivek.upadhayay@lafarge.com', 'female', '1997-10-03', '2014-11-29 09:23:53', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-11-29 10:01:35', '2014-11-29 09:24:39', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(325, '9ef98fa7eacce09811c9a6fb33d3d93c', 'Nilsh', 'Chalke', 'nash.chalke@gmail.com', 'male', '2001-04-01', '2014-11-29 10:20:44', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-11-29 10:32:29', '2014-12-16 08:26:26', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(328, '190f15d3c2787b26be535559ba2f6a57', 'Daawar', 'Latif', 'daawar786@gmail.com', 'male', '1998-02-01', '2014-11-29 03:00:43', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-12-01 03:38:23', '2014-12-16 02:42:44', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(331, '779051a175d9f9c28478d38ea85066b6', 'Deepti', 'Badki', 'deeptibdk97@gmail.com', 'male', '1997-08-21', '2014-11-30 10:10:09', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-11-30 10:11:10', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(332, '856a835db67a72f6251ca2b5f5c115d0', 'Nitin', 'Aswal', 'awesomeaswal@gmail.com', 'male', '1997-08-13', '2014-11-30 10:21:08', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-11 06:39:40', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(333, '7b62d604a0a152f245e4066e26a7bb99', 'Shweta', 'Mohite', 'mohiteshweta14@gmail.com', 'female', '1998-07-14', '2014-11-30 05:47:13', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-12-15 09:32:32', '2014-12-15 09:30:47', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(334, '373f8238663085e80acb89f586d0fd26', 'Shweta ', 'Mane', 'shweta43m', 'female', '1997-12-05', '2014-11-30 09:25:31', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-10 08:30:21', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(335, '36d5da736eca1ad4aaf4479e88884b6d', 'Rutu', 'Thakur', 'rutumthakur1997@gmail.com', 'male', '1997-03-27', '2014-12-01 08:13:41', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-01 08:16:21', 1, '', 1, '', 'needydad@gmail.com', '1000000'),
(336, '08a79add89267cdf0935baba72d7b5c8', 'Pallavi ', 'Mharse', 'Pallavimharse@gmail.com', 'female', '1996-08-30', '2014-12-01 10:21:22', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-14 12:46:25', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(337, 'd27d320c27c3033b7883347d8beca317', 'Shaikh', 'Faham', 'itskiller8@gmail.com', 'male', '1995-03-29', '2014-12-01 04:03:41', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-17 02:04:46', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(338, 'ab5c2bcab53c43afec3064c1c382b6e9', 'Divyaraj ', 'Deshmukh ', 'divyarajdeshmukh6.dd@gmail.com ', 'male', '1997-11-06', '2014-12-02 01:44:19', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',372', '0000-00-00 00:00:00', '2014-12-08 01:40:40', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(339, '4679d7b7bb42eaf58b1dbe11f40da5dc', 'Kanchan', 'Naik', 'kanchan.naik89@gmail.com', 'female', '1989-02-16', '2014-12-02 03:21:40', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-03 02:10:36', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(340, '5e9d5461573af845948303d8fbcfa0d4', 'Suraj', 'Khobragade', 'suraj.khobragade@ymail.com', 'male', '1997-02-12', '2014-12-02 09:21:14', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-02 09:22:02', 1, '', 1, '', 'needydad@gmail.com', '1000000'),
(341, 'c226dda00f1dc789eab4f58d0f7bb8ac', 'Manish', 'Yadav', 'yadavmanish106@gmail.com', 'male', '1994-12-17', '2014-12-03 02:29:56', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-12-12 12:11:56', '2014-12-18 10:18:24', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(342, 'cf38926735c89d4b71d98694bda7115b', 'Shubham', 'Moghe', 'mogheshubham96@gmail.com', 'male', '1996-12-20', '2014-12-03 05:04:52', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-05 09:34:20', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(343, '8aa564e281510581b01106830da52aff', 'Krunal', 'Shirke', 'kshirke114@gmail.com', 'male', '1985-01-01', '2014-12-05 12:50:58', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(344, '9b11c6ceb98a255a5329beb32eb205d8', 'Vinod', 'Bhogan', 'bhoganvinod@gmail.com', 'male', '1996-09-24', '2014-12-05 07:22:08', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-05 07:22:28', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(346, '2c98c5deb5132dc1e4396d08bf5d3010', 'Jogesh', 'Makwana', 'jogesh@netplacetechnologies.com', 'male', '1987-01-03', '2014-12-05 04:21:34', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(347, '26aa9b055921918dd15c50cd83935a16', 'Jagtap', 'Akash', 'jagtapakash638@gmail.com', 'male', '1997-05-30', '2014-12-05 07:54:13', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-12-05 08:16:32', '2014-12-14 01:28:51', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(348, '36d5da736eca1ad4aaf4479e88884b6d', 'Rutu', 'Thakur', 'rutumthakur199724@gmail.com', 'male', '1997-03-27', '2014-12-05 11:22:43', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-14 10:13:18', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(353, '255acbaafbbb8bd315f1bd12bf162e0f', 'Rakesh', 'Chavan', 'chavan.rakesh49@yahoo.com', 'male', '1999-02-16', '2014-12-08 03:58:29', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-12-14 11:51:28', '2014-12-22 08:26:44', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(354, 'c14ad59c8a4fdeecc02a8428461be3f7', 'Sairaj', 'Nalawade', 'sairaj.nalawade@gmail.com', 'male', '1998-09-10', '2014-12-08 05:54:18', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(355, 'e650cd295e97b4023c03e416b91fdd94', 'Prashant', 'Wani', 'prashantfs13is018@gmail.com', 'male', '1997-05-17', '2014-12-08 06:47:19', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(357, 'a6f5e235e26dd9dbd3e5c9c84081eab6', 'Chetan', 'Sanap', 'chetansanap32@gmail.com', 'male', '1996-04-24', '2014-12-08 08:13:06', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-08 08:15:06', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(358, 'e10adc3949ba59abbe56e057f20f883e', 'Harshal', 'Jadhav', 'harshal@gmail.com', 'male', '1998-02-13', '2014-12-08 08:18:29', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(359, '687164dad8cef88a017adf21cc8ea78f', 'Manish', 'Lanke', 'manish.l@gmail.com', 'male', '1998-01-01', '2014-12-08 08:20:57', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(360, '3070dc74088edc94a877105b2cd08b5a', 'Sojeth', 'Rajan', 'sojeth12@gmail.com', 'male', '1998-02-13', '2014-12-08 08:26:27', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-08 08:27:22', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(361, '40978d84123c7b245475042a1b292cab', 'Satish', 'Torunagi', 'satishgpm@gmail.com', 'male', '1991-01-12', '2014-12-09 12:20:16', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-12-09 01:25:04', '2014-12-19 07:48:53', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(362, 'ebbe069dcd9b037989e3bbc2b512b780', 'Reshma', 'Dhawale', 'reshmadhawale55@gmail.com', 'female', '1995-11-20', '2014-12-09 03:56:43', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-12-09 04:39:12', '2014-12-19 02:29:45', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(363, '2f578475b8014d8d3eacebc52a87c0f4', 'Shubham', 'Bhatkar', 'shubhambhatkar12.sb@gmail.com', 'male', '1995-01-12', '2014-12-09 09:20:22', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-12-18 02:29:09', '2014-12-18 02:27:19', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(365, 'c4076c861ab0de39b7b09fa30488c483', 'Shubham', 'More', 'moreshubham311@gmail.com', 'male', '1997-06-10', '2014-12-10 01:01:13', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-18 12:41:15', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(366, '61d3140810759fba052ae6a5d55081c3', 'Aarti', 'Gulumkar ', 'aartigulumkar2013@gmail.com', 'female', '1996-10-01', '2014-12-10 04:11:36', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-10 04:12:09', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(367, '97964600279472a4b8d5ea6242b061b9', 'Swapnil', 'Desai', 'swapnildesai1995@gmail.com', 'male', '1995-08-21', '2014-12-11 11:08:30', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-12-11 11:10:34', '2014-12-11 11:09:40', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(368, '5b633c4dbd3b8d2161d2e69c476f5e8f', 'Gaurav', 'Gavit', 'samgavit28@gmail.com', 'male', '1995-03-28', '2014-12-11 12:22:41', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-12-11 12:26:46', '2014-12-11 12:23:12', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(369, '75b9cf69ffe6d758c6f80d3644d6d830', 'Darshan', 'Madke', 'darshanm69@gmail.com', 'male', '1998-12-26', '2014-12-11 04:19:24', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-11 04:19:54', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(370, 'a73ef6325ec13354ff6150f3bff5d1fa', 'Akshay', 'Jadhav', 'akshayjadhav@gmail.com', 'male', '1997-06-18', '2014-12-11 11:04:23', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-11 11:04:58', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(371, '229705bb30dd72bd5af81e19cdc42420', 'Shubham', 'Sharma', 'sharmass491@gmail.com', 'male', '1995-12-20', '2014-12-12 10:26:05', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', ',372', '0000-00-00 00:00:00', '2014-12-12 10:26:48', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(373, '37c1f6bfe0c7421fc37537de274ba1c4', 'Aditya', 'Kadam', 'adityakadam74@gmail.com', 'male', '1994-02-07', '2014-12-12 11:58:56', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-12-20 09:09:24', '2014-12-20 08:49:49', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(375, '737f5db20058370a640a940a66759a48', 'Bhushan', 'Sawant', 'bhushans@gmail.com', 'male', '1998-11-12', '2014-12-12 08:05:48', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-12 08:06:13', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(376, 'b086bee80dfd23282ea1e91f68edab90', 'Kashinath', 'Namne', 'k9021212402@gmail.com', 'male', '1993-11-20', '2014-12-12 08:56:52', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-12-12 09:12:25', '2014-12-12 08:57:44', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(379, '0a5eb984233e476c7cc920e6b139067c', 'Archana ', 'Meshram', 'archanameshram51@gmail.com', 'female', '1995-03-28', '2014-12-12 11:08:52', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(381, '202cb962ac59075b964b07152d234b70', 'Siddharth', 'Gangurde', 'siddharthgangurde9521@gmail. com', 'male', '1997-06-22', '2014-12-15 08:13:23', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-12-15 08:19:56', '2014-12-15 08:14:54', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(382, 'd3c0c4b8671f0620599013c3c375137a', 'Harsh', 'Deore', 'harshdeore444@gmail.com', 'male', '1996-08-12', '2014-12-16 09:12:12', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-12-16 09:26:50', '2014-12-16 09:12:36', 0, '', 1, '', 'needydad@gmail.com', '1000000');
INSERT INTO `login` (`id`, `password`, `firstname`, `surname`, `email`, `gender`, `dob`, `doj`, `contact`, `fname`, `mname`, `aadharno`, `institute`, `typeedu`, `result`, `income`, `occupation`, `sibling`, `follow`, `lastvisit`, `lastlog`, `view`, `ip`, `type`, `previousgrants`, `pemail`, `amountneed`) VALUES
(383, 'a6597108ec76304b2c412649e59572a2', 'Ashish', 'Palve', 'ashishpalve39@gmail.com', 'male', '1997-04-28', '2014-12-16 08:42:08', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-16 08:42:38', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(384, '202cb962ac59075b964b07152d234b70', 'Gauri', 'Kadam', 'gauribkadam@gmail. c', 'female', '1998-08-18', '2014-12-17 01:29:52', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(386, 'bfcaa9a82d79fbcc1f0bd509ab34d25f', 'Tanmaya', 'Kamble', 'tanmayakamble14@gmail.com', 'female', '1997-11-14', '2014-12-17 07:59:40', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-12-17 08:24:35', '2014-12-17 08:00:44', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(387, '7c0b6778d37e23fc47a9e5597be718b8', 'Roshan', 'Mengade', 'rmengade@ymail.com', 'male', '1997-08-19', '2014-12-18 12:32:58', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-21 10:05:39', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(388, 'a01610228fe998f515a72dd730294d87', 'Ram', 'Male', 'ram11@gmail.com', 'male', '1997-09-24', '2014-12-18 05:15:11', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(389, '5eb13cb69b6e20dd7a42030f5936a9dc', 'Akshay', 'Jadhav', 'akshay31jadhav@gmail.com', 'male', '1997-06-18', '2014-12-18 06:48:13', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-12-18 06:56:00', '2014-12-18 06:48:37', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(391, '20008274adb638c2dd334d672bca3949', 'Mahesh', 'Shinde', 'shinde1924@gmail.com', 'male', '1993-11-24', '2014-12-21 08:50:17', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2014-12-21 09:04:05', '2014-12-21 08:50:44', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(392, 'b130351e88ac11982a5f3406fec4a439', 'Jay', 'Borse', 'jayborse77@gmail.com', 'female', '1998-07-12', '2014-12-21 10:30:19', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(393, 'b130351e88ac11982a5f3406fec4a439', 'Jay', 'Borse', 'jayborse555@gmail.com', 'female', '1998-07-12', '2014-12-21 10:31:44', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-21 10:32:14', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(394, '55bab4dbbc130cafc7a71cca90b66c21', 'Ninad ', 'Kamble', 'www.ninadkamble16@gmail.com', 'male', '1998-06-29', '2014-12-21 06:04:04', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-21 06:05:08', 0, '', 1, '', 'needydad@gmail.com', '1000000'),
(395, '098f6bcd4621d373cade4e832627b4f6', 'Donor', 'Person', 'donor2@gmail.com', 'male', '1995-01-01', '2014-12-22 03:22:26', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2014-12-22 03:22:46', 0, '', 3, '', 'needydad@gmail.com', '1000000'),
(405, '098f6bcd4621d373cade4e832627b4f6', 'Core', 'Committee', 'corecomm@gpmnetwork.co.in', 'male', '1985-01-01', '2014-12-26 06:58:11', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '2015-06-01 09:27:23', '2015-06-01 09:51:54', 0, '127.0.0.1', 4, '', 'needydad@gmail.com', '1000000'),
(407, '098f6bcd4621d373cade4e832627b4f6', 'Donor', 'Person', 'donar@gmail.com', 'male', '1985-01-01', '2015-06-01 09:35:44', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '.127.0.0.1.', 3, '', 'needydad@gmail.com', '1000000'),
(408, '098f6bcd4621d373cade4e832627b4f6', 'Test', 'User', 'johnsmith@live.com', 'male', '1985-01-01', '2015-06-08 02:21:59', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '.127.0.0.1.', 1, '', 'needydad@gmail.com', '1000000'),
(439, '098f6bcd4621d373cade4e832627b4f6', 'Akshay', 'Jain', 'akshayd@gmail.com', 'male', '1985-01-01', '2018-02-11 11:13:38', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2018-02-11 04:46:36', 0, 'abc', 2, '', 'needydad@gmail.com', '1000000'),
(440, '098f6bcd4621d373cade4e832627b4f6', 'Scrutiny', 'Team 2', 'scrut2@gmail.com', 'male', '1985-01-01', '2018-02-11 12:25:13', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '.::1.', 2, '', 'needydad@gmail.com', '1000000'),
(441, '098f6bcd4621d373cade4e832627b4f6', 'Scrutiny', 'Team ', 'scrut@gmail.com', 'male', '1985-01-01', '2018-02-11 12:25:58', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2018-02-11 06:15:45', 0, 'abc', 2, '', 'needydad@gmail.com', '1000000'),
(442, '098f6bcd4621d373cade4e832627b4f6', 'Varun', 'Shah', 'varund@gmail.com', 'male', '1997-02-10', '2018-02-11 02:23:49', '9787369020', 'Needy Dad', 'Needy Mom', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2018-02-11 02:25:28', 0, 'abc', 1, '', 'needydad@gmail.com', '1000000'),
(443, '098f6bcd4621d373cade4e832627b4f6', 'Needy', 'Student', 'needy@gmail.com', 'male', '1985-01-01', '2018-07-21 08:11:08', '9787369020', 'Needy Dad', 'Needy Mom', '6798402139129230', '', '', '88', '5000', '', '', '', '0000-00-00 00:00:00', '2018-07-21 08:59:24', 0, 'abc', 1, '', 'needydad@gmail.com', '1000000');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `sen_id` int(11) NOT NULL,
  `rec_id` int(11) NOT NULL,
  `mess` longtext NOT NULL,
  `fname_sen` varchar(40) NOT NULL,
  `sname_sen` varchar(40) NOT NULL,
  `date` datetime NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `sen_id`, `rec_id`, `mess`, `fname_sen`, `sname_sen`, `date`, `time`) VALUES
(42, 1, 2, 'hello', 'Prathamesh', 'Mhapsekar', '2014-07-26 23:37:14', 1406398034),
(43, 2, 1, 'hello how are you?', 'Mandar', 'Mhapsekar', '2014-07-26 23:44:10', 1406398450),
(45, 1, 2, 'bye', 'Prathamesh', 'Mhapsekar', '2014-07-26 23:55:58', 1406399158),
(46, 2, 1, 'bye', 'Mandar', 'Mhapsekar', '2014-07-27 00:00:11', 1406399411),
(52, 1, 7, 'No queries', 'Prathamesh', 'Mhapsekar', '2014-07-28 22:49:41', 1406567981),
(54, 1, 2, 'Hey Dake', 'Prathamesh', 'Mhapsekar', '2014-07-31 17:55:03', 1406809503),
(55, 1, 11, 'hey dake\r\n', 'Prathamesh', 'Mhapsekar', '2014-07-31 17:55:16', 1406809516),
(56, 1, 2, 'Hello Mandar testing the Notification', 'Prathamesh', 'Mhapsekar', '2014-08-05 23:46:36', 1407262596),
(57, 1, 2, 'Testing Again', 'Prathamesh', 'Mhapsekar', '2014-08-05 23:57:15', 1407263235),
(58, 2, 1, 'has the Test Complete', 'Mandar', 'Mhapsekar', '2014-08-06 00:06:44', 1407263804),
(59, 1, 2, 'Hello\r\n', 'Prathamesh', 'Mhapsekar', '2014-08-06 00:14:48', 1407264288),
(60, 17, 1, 'hello', 'Santosh', 'Yadav', '2014-08-06 14:33:54', 1407315834),
(61, 1, 22, 'hello pratish', 'Prathamesh', 'Mhapsekar', '2014-08-06 18:18:29', 1407329309),
(62, 1, 34, 'hello\r\n', 'Prathamesh', 'Mhapsekar', '2014-08-06 18:39:23', 1407330563),
(63, 35, 22, 'Hi follow me', 'Vinay', 'Mobharkar', '2014-08-06 19:01:35', 1407331895),
(66, 27, 1, 'Hii', 'Lalchand', 'Gaund', '2014-08-08 15:24:43', 1407491683),
(67, 27, 7, 'pmp hii..\r\n', 'Lalchand', 'Gaund', '2014-08-09 15:34:26', 1407578666),
(68, 81, 80, 'Hi', 'Sarthak', 'Dadhakar', '2014-08-12 10:34:56', 1407819896),
(69, 80, 81, 'bye\r\n', 'Saurabh', 'Patil', '2014-08-12 10:36:05', 1407819965),
(70, 11, 2, 'hi', 'Onkar ', 'Dake', '2014-08-31 11:34:22', 1409465062),
(71, 1, 7, 'Great site', 'Prathamesh', 'Mhapsekar', '2014-09-06 23:58:10', 1410028090),
(72, 7, 184, 'Please Enter your Real Name', 'GPM', 'Network', '2014-09-08 20:30:44', 1410188444),
(73, 7, 184, 'Reply ur Real Name', 'GPM', 'Network', '2014-09-08 20:30:58', 1410188458),
(74, 76, 21, 'hi\r\n', 'Omkar', 'Yadav', '2014-09-14 10:29:40', 1410670780),
(75, 18, 85, 'hii', 'Vishakha', 'Sutar', '2014-09-27 18:24:49', 1411822489),
(76, 17, 1, 'hello', 'Santosh', 'Yadav', '2014-10-17 15:11:28', 1413538888),
(77, 76, 248, 'hiii\r\n', 'Omkar', 'Yadav', '2014-11-21 17:16:57', 1416570417),
(81, 1, 2, 'should come on the right side and font color black', 'Prathamesh', 'Mhapsekar', '2015-05-20 21:19:37', 1432136977),
(82, 1, 2, 'Hello Mandar Mhapsekar', 'Prathamesh', 'Mhapsekar', '2015-05-21 11:47:15', 1432189035),
(83, 1, 2, 'Mandar !', 'Prathamesh', 'Mhapsekar', '2015-05-21 12:58:28', 1432193308),
(84, 1, 2, 'Hello', 'Prathamesh', 'Mhapsekar', '2015-05-21 13:04:02', 1432193642),
(85, 1, 2, 'Hellow', 'Prathamesh', 'Mhapsekar', '2015-05-21 13:06:18', 1432193778),
(86, 404, 1, 'Hello testing the time of messages', 'Test', 'User', '2015-05-21 19:06:24', 1432215384),
(87, 404, 1, 'Hello', 'Test', 'User', '2015-05-21 19:07:51', 1432215471),
(88, 1, 404, 'Hello', 'Prathamesh', 'Mhapsekar', '2015-05-21 19:09:12', 1432215552),
(89, 1, 11, 'Hii bro', 'Prathamesh', 'Mhapsekar', '2015-05-21 19:10:10', 1432215610),
(90, 404, 2, 'Hello', 'Test', 'User', '2015-05-21 21:20:56', 1432223456),
(91, 404, 2, 'Hii, i am Mr. Test User', 'Test', 'User', '2015-05-21 21:21:54', 1432223514),
(118, 1, 2, 'x', 'Prathamesh', 'Mhapsekar', '2015-05-21 22:57:13', 1432229233),
(119, 1, 7, 'y', 'Prathamesh', 'Mhapsekar', '2015-05-21 22:59:14', 1432229354),
(136, 404, 1, 'hello Prathmesh, i Am test User No 5', 'Test', 'User', '2015-05-22 15:13:28', 1432287808),
(137, 404, 1, 'hey Man reply', 'Test', 'User', '2015-05-22 15:13:49', 1432287829),
(138, 1, 27, 'hii', 'Prathamesh', 'Mhapsekar', '2015-05-22 19:38:18', 1432303698),
(139, 1, 5, 'Hii', 'Prathamesh', 'Mhapsekar', '2015-05-22 19:38:38', 1432303718),
(140, 1, 2, 'Hello', 'Prathamesh', 'Mhapsekar', '2015-05-23 17:34:49', 1432382689),
(141, 1, 2, 'Online system', 'Prathamesh', 'Mhapsekar', '2015-05-23 17:35:19', 1432382719),
(142, 404, 1, 'Hellow', 'Test', 'User', '2015-05-28 12:50:52', 1432797652),
(143, 1, 404, 'Hii', 'Prathamesh', 'Mhapsekar', '2015-05-28 12:51:11', 1432797671),
(144, 1, 11, 'Hii\r\nor onkar dake', 'Prathamesh', 'Mhapsekar', '2015-05-28 12:54:02', 1432797842),
(145, 404, 1, 'Hii', 'Test', 'User', '2015-05-28 13:42:32', 1432800752),
(146, 404, 1, 'Hii', 'Test', 'User', '2015-05-31 12:28:10', 1433055490),
(147, 1, 404, 'hii', 'Prathamesh', 'Mhapsekar', '2015-05-31 12:38:33', 1433056113),
(148, 404, 1, 'bye', 'Test', 'User', '2015-05-31 12:39:52', 1433056192),
(149, 1, 404, 'ok bye', 'Prathamesh', 'Mhapsekar', '2015-05-31 12:40:26', 1433056226),
(150, 404, 1, 'hii', 'Test', 'User', '2015-05-31 13:25:49', 1433058949),
(151, 404, 1, 'hii', 'Test', 'User', '2015-05-31 14:01:39', 1433061099),
(152, 1, 404, 'bye', 'Prathamesh', 'Mhapsekar', '2015-05-31 14:06:27', 1433061387),
(153, 404, 1, 'hii', 'Test', 'User', '2015-05-31 14:08:32', 1433061512),
(154, 1, 404, 'hii\r\n', 'Prathamesh', 'Mhapsekar', '2015-05-31 14:09:56', 1433061596),
(155, 404, 1, 'hii', 'Test', 'User', '2015-05-31 14:15:57', 1433061957),
(156, 1, 404, 'hii', 'Prathamesh', 'Mhapsekar', '2015-05-31 14:21:50', 1433062310),
(157, 404, 1, 'testing Iframe Automatic Loading', 'Test', 'User', '2015-05-31 19:19:49', 1433080189),
(158, 1, 404, 'hii', 'Prathamesh', 'Mhapsekar', '2015-05-31 19:23:15', 1433080395),
(159, 404, 1, 'bye', 'Test', 'User', '2015-05-31 20:18:31', 1433083711),
(160, 1, 404, 'hii', 'Prathamesh', 'Mhapsekar', '2015-05-31 20:18:50', 1433083730),
(161, 1, 404, 'hii', 'Prathamesh', 'Mhapsekar', '2015-05-31 20:23:55', 1433084035),
(162, 1, 404, 'hii', 'Prathamesh', 'Mhapsekar', '2015-05-31 20:35:32', 1433084732),
(163, 404, 1, 'hii', 'Test', 'User', '2015-05-31 20:35:59', 1433084759),
(164, 1, 404, 'bye', 'Prathamesh', 'Mhapsekar', '2015-05-31 20:36:37', 1433084797),
(165, 1, 404, 'hii', 'Prathamesh', 'Mhapsekar', '2015-06-01 22:14:44', 1433177084),
(166, 1, 405, 'hii\r\n', 'Prathamesh', 'Mhapsekar', '2015-06-01 22:15:01', 1433177101),
(167, 405, 1, 'hii', 'Test', 'User', '2015-06-01 22:15:30', 1433177130),
(168, 1, 405, 'hii\r\n', 'Prathamesh', 'Mhapsekar', '2015-06-01 22:16:37', 1433177197),
(169, 405, 1, 'hii', 'Test', 'User', '2015-06-01 22:18:56', 1433177336),
(170, 1, 405, 'hii', 'Prathamesh', 'Mhapsekar', '2015-06-01 22:19:18', 1433177358),
(171, 405, 1, 'bye', 'Test', 'User', '2015-06-01 22:35:27', 1433178327),
(172, 1, 405, 'hii', 'Prathamesh', 'Mhapsekar', '2015-06-05 20:32:25', 1433516545),
(173, 1, 2, 'hii', 'Prathamesh', 'Mhapsekar', '2015-06-16 21:38:06', 1434470886),
(174, 1, 2, 'hii', 'Prathamesh', 'Mhapsekar', '2015-06-16 21:38:18', 1434470898),
(175, 1, 2, 'hii', 'Prathamesh', 'Mhapsekar', '2015-06-16 21:38:21', 1434470901),
(176, 1, 2, 'hii', 'Prathamesh', 'Mhapsekar', '2015-06-16 21:38:23', 1434470903),
(177, 1, 2, 'hii', 'Prathamesh', 'Mhapsekar', '2015-06-16 21:38:24', 1434470904),
(178, 1, 2, 'hii', 'Prathamesh', 'Mhapsekar', '2015-06-16 21:38:25', 1434470905),
(179, 1, 2, 'hii', 'Prathamesh', 'Mhapsekar', '2015-06-16 21:38:26', 1434470906),
(180, 1, 2, 'hii', 'Prathamesh', 'Mhapsekar', '2015-06-16 21:38:28', 1434470908),
(181, 1, 2, 'hii', 'Prathamesh', 'Mhapsekar', '2015-06-16 21:38:29', 1434470909),
(182, 1, 2, 'hii', 'Prathamesh', 'Mhapsekar', '2015-06-16 21:38:30', 1434470910),
(183, 1, 2, 'hii', 'Prathamesh', 'Mhapsekar', '2015-06-16 21:38:31', 1434470911),
(184, 1, 2, 'hii', 'Prathamesh', 'Mhapsekar', '2015-06-16 21:38:33', 1434470913),
(185, 1, 2, 'hi', 'Prathamesh', 'Mhapsekar', '2015-06-16 21:39:28', 1434470968),
(186, 404, 1, 'hiii', 'Test', 'User', '2015-06-16 21:43:16', 1434471196),
(187, 1, 404, 'hii bro test user', 'Prathamesh', 'Mhapsekar', '2015-06-16 21:43:43', 1434471223),
(188, 1, 404, 'hiii how are you bor test user NO 5', 'Prathamesh', 'Mhapsekar', '2015-06-16 21:46:32', 1434471392),
(189, 1, 404, 'hi \r\n', 'Prathamesh', 'Mhapsekar', '2015-06-16 21:58:08', 1434472088),
(190, 2, 1, 'hii', 'Mandar', 'Mhapsekar', '2015-06-16 22:14:50', 1434473090),
(191, 2, 1, 'why so many hiii''s\r\n', 'Mandar', 'Mhapsekar', '2015-06-16 22:14:59', 1434473099),
(192, 1, 2, 'hii', 'Prathamesh', 'Mhapsekar', '2017-01-16 18:56:23', 1484573183),
(193, 1, 17, 'hello\r\n', 'Prathamesh', 'Mhapsekar', '2017-01-16 18:56:55', 1484573215),
(195, 1, 2, 'hii', 'Prathamesh', 'Mhapsekar', '2017-04-20 14:01:49', 1492677109),
(196, 5, 1, 'HII', 'Prof. John', 'Smith', '2017-09-09 11:51:30', 1504938090),
(208, 1, 34, 'i need help', 'Prathmesh', 'Mhapsekar', '2017-09-10 20:38:58', 1505056138),
(209, 1, 34, 'urgently', 'Prathmesh', 'Mhapsekar', '2017-09-10 20:39:08', 1505056148),
(210, 1, 34, 'i neeed help', 'Prathmesh', 'Mhapsekar', '2017-09-10 20:46:10', 1505056570),
(211, 1, 34, 'its very urgent', 'Prathmesh', 'Mhapsekar', '2017-09-10 20:46:21', 1505056581),
(215, 1, 34, 'hiii', 'Prathamesh', 'Mhapsekar', '2017-09-13 10:01:02', 1505277062),
(216, 1, 34, 'hii', 'Prathamesh', 'Mhapsekar', '2017-09-13 10:01:14', 1505277074),
(217, 5, 1, 'his', 'Prof. John', 'Smith', '2017-09-13 17:06:27', 1505302587),
(218, 34, 1, 'his', 'Online', 'Counsellor', '2017-09-13 17:25:10', 1505303710),
(219, 1, 2, 'hii', 'Prathamesh', 'Mhapsekar', '2017-09-13 17:29:03', 1505303943),
(220, 34, 1, 'his', 'Online', 'Counsellor', '2017-09-13 17:56:29', 1505305589),
(222, 1, 265, 'hiii', 'Prathamesh', 'Mhapsekar', '2017-09-13 23:24:30', 1505325270),
(223, 1, 129, 'hii?', 'Prathamesh', 'Mhapsekar', '2017-09-13 23:27:02', 1505325422),
(224, 1, 129, 'hii', 'Prathamesh', 'Mhapsekar', '2017-09-13 23:28:23', 1505325503),
(225, 1, 22, 'hii', 'Prathamesh', 'Mhapsekar', '2017-09-13 23:28:44', 1505325524),
(226, 34, 1, 'his\r\n', 'Online', 'Counsellor', '2017-09-13 23:37:22', 1505326042),
(227, 34, 1, 'his', 'Online', 'Counsellor', '2017-09-13 23:40:01', 1505326201),
(228, 1, 24, 'Hey !', 'Prathamesh', 'Mhapsekar', '2017-09-13 23:41:18', 1505326278),
(229, 2, 1, 'hii', 'Mandar', 'Mhapsekar', '2017-09-13 23:53:21', 1505327001),
(230, 1, 2, 'hii', 'Prathamesh', 'Mhapsekar', '2017-09-13 23:53:46', 1505327026),
(231, 2, 1, 'bye\r\n', 'Mandar', 'Mhapsekar', '2017-09-13 23:54:12', 1505327052),
(232, 5, 1, 'hii', 'Prof. John', 'Smith', '2017-09-13 23:54:53', 1505327093),
(233, 1, 34, 'hii no 2', 'Prathamesh', 'Mhapsekar', '2017-09-14 00:01:21', 1505327481),
(234, 1, 9, 'hiii how are you?', 'Prathamesh', 'Mhapsekar', '2017-09-14 07:21:49', 1505353909),
(235, 1, 24, 'hii', 'Prathamesh', 'Mhapsekar', '2017-09-15 11:59:48', 1505456988),
(236, 5, 2, 'Hello Mandar ', 'Prof. John', 'Smith', '2017-09-16 20:57:40', 1505575660),
(237, 5, 2, 'hey again', 'Prof. John', 'Smith', '2017-09-16 20:57:54', 1505575674),
(238, 1, 9, 'Hii', 'Prathamesh', 'Mhapsekar', '2017-09-16 21:02:49', 1505575969),
(239, 1, 2, 'hi\r\n', 'Prathamesh', 'Mhapsekar', '2017-09-17 11:23:21', 1505627601),
(240, 2, 1, 'Hi', 'Mandar', 'Mhapsekar', '2017-09-17 11:23:44', 1505627624),
(241, 1, 2, 'Hello Prathmesh How ARE YOU', 'Prathamesh', 'Mhapsekar', '2017-09-17 11:44:21', 1505628861),
(242, 2, 1, 'Hii', 'Mandar', 'Mhapsekar', '2017-09-17 11:44:44', 1505628884),
(243, 2, 1, 'Hii', 'Mandar', 'Mhapsekar', '2017-09-17 11:44:44', 1505628884),
(244, 2, 34, 'Good Morning Sir', 'Mandar', 'Mhapsekar', '2017-09-18 20:04:26', 1505745266),
(245, 2, 34, 'HI\r\n', 'Mandar', 'Mhapsekar', '2017-09-18 20:05:01', 1505745301),
(246, 2, 34, 'Hi', 'Mandar', 'Mhapsekar', '2017-09-18 20:05:11', 1505745311),
(247, 34, 2, 'Sir can u help me?', 'Online', 'Counsellor', '2017-09-18 20:05:21', 1505745321),
(248, 34, 2, 'Nice csir', 'Online', 'Counsellor', '2017-09-18 20:05:48', 1505745348),
(249, 2, 34, 'Kya abhi Online counseller hok bhi madat mag raha hai', 'Mandar', 'Mhapsekar', '2017-09-18 20:05:55', 1505745355),
(250, 34, 11, 'hiii', 'Online', 'Counsellor', '2017-09-18 20:06:13', 1505745373),
(251, 1, 34, 'sir i need help', 'Prathamesh', 'Mhapsekar', '2017-09-19 10:10:48', 1505796048),
(252, 1, 5, 'i have some doubt', 'Prathamesh', 'Mhapsekar', '2017-09-19 10:50:51', 1505798451),
(253, 5, 1, 'hi\r\n', 'Prof. John', 'Smith', '2017-10-14 10:28:11', 1507957091),
(254, 439, 417, 'hii', 'Akshay', 'Jain', '2018-02-11 11:33:10', 1518328990),
(255, 439, 417, 'hii\r\n', 'Akshay', 'Jain', '2018-02-11 11:33:32', 1518329012),
(256, 417, 439, 'hi akki', 'Tanuj', 'Doctor', '2018-02-11 11:37:10', 1518329230),
(257, 441, 439, 'Hii', 'Raj', 'Patel', '2018-02-11 14:10:16', 1518338416),
(258, 442, 439, 'hi', 'Varun', 'Shah', '2018-02-11 14:31:59', 1518339719),
(259, 442, 439, 'hi varun my buddy', 'Varun', 'Shah', '2018-02-11 14:32:11', 1518339731),
(260, 442, 417, 'Hii Tanuj', 'Varun', 'Shah', '2018-02-11 14:34:44', 1518339884),
(261, 442, 417, 'Hii Tanuj Im your buddy', 'Varun', 'Shah', '2018-02-11 14:35:08', 1518339908),
(262, 441, 417, 'hii', 'Raj', 'Patel', '2018-02-11 16:27:47', 1518346667),
(263, 441, 439, 'hiii', 'Raj', 'Patel', '2018-02-11 16:28:25', 1518346705),
(264, 441, 439, 'hii', 'Raj', 'Patel', '2018-02-11 16:56:49', 1518348409),
(265, 441, 439, 'hii', 'Raj', 'Patel', '2018-02-11 18:18:52', 1518353332),
(266, 441, 439, 'hello akshay', 'Raj', 'Patel', '2018-02-11 18:19:14', 1518353354);

-- --------------------------------------------------------

--
-- Table structure for table `online`
--

CREATE TABLE `online` (
  `id` int(11) NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `surname` varchar(40) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `online`
--

INSERT INTO `online` (`id`, `firstname`, `surname`, `time`) VALUES
(1, 'Prathamesh', 'Mhapsekar', '2018-07-21 22:24:51');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `pro_id` int(11) NOT NULL,
  `pro_name` varchar(50) NOT NULL,
  `detail` longtext NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `datetime` varchar(50) NOT NULL,
  `id` int(11) NOT NULL,
  `price` int(4) NOT NULL,
  `phone` bigint(15) NOT NULL,
  `sub` varchar(40) NOT NULL,
  `dept` varchar(4) NOT NULL,
  `page_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`pro_id`, `pro_name`, `detail`, `name`, `email`, `datetime`, `id`, `price`, `phone`, `sub`, `dept`, `page_id`) VALUES
(31, 'Applied Chemistry (Sold) !', 'Contains only some Chapters but in Good Condition and also price is LOW', 'Prathamesh Mhapsekar', 'prathmesh36@yahoo.com', '22/07/14 05:20:30', 1, 101, 8452974028, 'Applied Chemistry', 'ME', 0),
(56, 'Applied Chemistry', 'The Book Of Applied Chemistry with good condition and all chapter''s including other some chapter''s (not in syllabus) you can get all info that teach in class \r\nnote:-&quot;this book is xerox and not original&quot; ', 'Pratish Chavan', 'chavanpratish23@gmail.com', '02/08/14 07:41:26', 22, 130, 9004574684, 'Applied Chemistry', 'IT', 0),
(57, 'Basic mathematics', 'The Book Of  Basic mathematics \r\nwith good condition and all chapter''s including', 'Onkar  Dake', 'omkarpradeepdake@gmail.com', '11/08/14 07:31:08', 11, 100, 8149338248, 'basic mathematics', 'IT', 0),
(58, 'Basic chemistry', 'Author:-S.N.Narkhade\r\nPublication:-Nirali publication', 'Pratik Pednekar', 'ppednekarrt@gmail.com', '11/08/14 07:39:54', 75, 100, 9702277998, 'Chemistry', 'IT', 0),
(59, 'Container', 'Container used for Engineering Drawing and Graphics. You would get a Container in Market for Rs.100 but this is available for only Rs.50. ', 'Prathamesh Mhapsekar', 'prathmesh36@yahoo.com', '14/08/14 09:57:51', 1, 50, 8452974028, 'Engineering Graphics or Drawing', 'ME', 0),
(60, 'let us C', 'Basic knowledge of C language. Easy way to learn to handle C, very useful. GET IT.', 'Vinay Mobharkar', 'vinayrm@outlook.com', '14/08/14 11:27:50', 35, 125, 8652560445, 'C Programming', 'IT', 0),
(61, 'Basic Mathematics', 'The Book is in Absolute Good Condition Full Book Covering Whole Syllabus', 'Lalchand Gaund', 'lalchand0201@gmail.com', '20/08/14 06:27:44', 27, 50, 8452974028, 'Basic Mathematics', 'SC', 0),
(62, 'engineering mathematics', 'i want to sell this book', 'Omkar Yadav', 'oyadav2012@gmail.com', '21/11/14 05:19:39', 76, 130, 8452068948, 'maths', 'CO', 0),
(63, 'data structure', 'Book for information', 'Pranay Ubhe', 'pranayubhe37@gmail.com', '22/12/14 09:55:01', 85, 200, 9768437804, 'book sell', 'CO', 0),
(64, 'Object Oriented Programming using C++', 'Book for IT?CC students by Balaguruswami. its in excellent condition and very useful for the subject.', 'Prathamesh Mhapsekar', 'prathmesh36@yahoo.com', '20/05/15 09:08:20', 1, 200, 8452974028, 'OOP using C++', 'CO', 0),
(65, 'Book 1', 'book nosndsdnnkvnv ', 'Prathamesh Mhapsekar', 'prathmesh36@yahoo.com', '13/09/17 09:44:38', 1, 500, 8452974028, '123', 'IT', 1),
(66, 'Testing Product on Mac', 'sdas', 'Prof. John Smith', 'testuser2@gpmnetwork.in', '17/09/17 12:52:35', 5, 123, 12123, 'asdad', 'ME', 1),
(67, 'LAST TEST', 'asdhjk', 'Prathamesh Mhapsekar', 'prathmesh36@yahoo.com', '17/09/17 11:48:07', 1, 12123, 213213, 'ahsdj', 'ME', 1),
(68, 'Test prod last time', 'Hshs', 'Mandar Mhapsekar', 'mhapsekarmandar@live.com', '17/09/17 11:49:43', 2, 123, 16353, 'Hdsj', 'ME', 1),
(69, 'Applied Mathematics', 'Sem 3', 'Online Counsellor', 'ocits@gmail.com', '18/09/17 07:53:03', 34, 300, 9876543210, 'Maths', 'CO', 1);

-- --------------------------------------------------------

--
-- Table structure for table `store_answer`
--

CREATE TABLE `store_answer` (
  `question_id` int(11) NOT NULL,
  `a_id` int(11) NOT NULL,
  `a_name` varchar(65) NOT NULL,
  `a_email` varchar(65) NOT NULL,
  `a_answer` longtext NOT NULL,
  `a_datetime` varchar(25) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_answer`
--

INSERT INTO `store_answer` (`question_id`, `a_id`, `a_name`, `a_email`, `a_answer`, `a_datetime`, `id`) VALUES
(40, 1, 'Prathamesh Mhapsekar', 'prathmesh36@yahoo.com', 'buy it', '28/07/14 22:19:13', 1),
(56, 1, 'Lalchand Gaund', 'lalchand0201@gmail.com', 'abhi mal nahi bikega', '08/08/14 15:26:52', 27),
(69, 1, 'Online Counsellor', 'ocits@gmail.com', 'Can i get in 100 rs ?', '18/09/17 19:54:13', 34);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `forum_answer`
--
ALTER TABLE `forum_answer`
  ADD KEY `a_id` (`a_id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `forum_question`
--
ALTER TABLE `forum_question`
  ADD PRIMARY KEY (`topic_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`pro_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `forum_question`
--
ALTER TABLE `forum_question`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=444;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;
--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
