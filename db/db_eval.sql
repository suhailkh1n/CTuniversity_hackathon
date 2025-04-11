-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2025 at 08:35 PM
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
-- Database: `db_eval`
--

-- --------------------------------------------------------

--
-- Table structure for table `atmpt_list`
--

CREATE TABLE `atmpt_list` (
  `id` int(100) NOT NULL,
  `exid` int(100) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `nq` int(100) NOT NULL,
  `cnq` int(100) NOT NULL,
  `ptg` int(100) NOT NULL,
  `status` int(10) NOT NULL,
  `subtime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `atmpt_list`
--

INSERT INTO `atmpt_list` (`id`, `exid`, `uname`, `nq`, `cnq`, `ptg`, `status`, `subtime`) VALUES
(13, 1, 'anniefrank', 5, 4, 80, 1, '2025-04-10 15:21:19'),
(14, 1, 'abraham', 5, 3, 60, 1, '2025-04-10 15:21:19'),
(15, 1, 'mariealx', 5, 5, 100, 1, '2025-04-10 15:21:19'),
(16, 10, 'testuser', 20, 0, 0, 1, '2025-04-10 15:24:57'),
(17, 12, 'testuser', 2, 0, 0, 1, '2025-04-10 15:37:21'),
(20, 23, 'testuser', 2, 1, 50, 1, '2025-04-10 17:01:26');

-- --------------------------------------------------------

--
-- Table structure for table `exm_list`
--

CREATE TABLE `exm_list` (
  `exid` int(100) NOT NULL,
  `exname` varchar(100) NOT NULL,
  `nq` int(50) NOT NULL,
  `desp` varchar(500) NOT NULL,
  `subt` datetime NOT NULL,
  `extime` datetime NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `subject` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exm_list`
--

INSERT INTO `exm_list` (`exid`, `exname`, `nq`, `desp`, `subt`, `extime`, `datetime`, `subject`) VALUES
(23, 'general knowledge', 2, 'general knoledge', '2025-04-10 22:32:00', '2025-04-10 22:31:00', '2025-04-10 16:57:55', 'MATHEMATICS');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `feedback` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `fname`, `date`, `feedback`) VALUES
(5, 'Teacher Rosey', '2021-12-12 13:01:00', 'Please kindly complete all the homework and submit tomorrow '),
(6, 'Teacher Rosey', '2021-12-13 06:23:18', 'Hello this is an annoucement'),
(11, 'echosync', '2025-04-10 17:02:15', 'hello students');

-- --------------------------------------------------------

--
-- Table structure for table `qstn_list`
--

CREATE TABLE `qstn_list` (
  `exid` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `qstn` varchar(200) NOT NULL,
  `qstn_o1` varchar(100) NOT NULL,
  `qstn_o2` varchar(100) NOT NULL,
  `qstn_o3` varchar(100) NOT NULL,
  `qstn_o4` varchar(100) NOT NULL,
  `qstn_ans` varchar(100) NOT NULL,
  `sno` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `qstn_list`
--

INSERT INTO `qstn_list` (`exid`, `qid`, `qstn`, `qstn_o1`, `qstn_o2`, `qstn_o3`, `qstn_o4`, `qstn_ans`, `sno`) VALUES
(10, 23, 'What does CPU stand for?', 'Central Processing Unit', 'Computer Power Unit', 'Central Print Unit', 'Control Process Unit', 'Central Processing Unit', 1),
(10, 24, 'Which device is used for input?', 'Printer', 'Monitor', 'Keyboard', 'Speaker', 'Keyboard', 2),
(10, 25, 'Which one is an operating system?', 'MS Word', 'Windows 10', 'Google Chrome', 'Intel', 'Windows 10', 3),
(10, 26, 'Which is not a programming language?', 'Python', 'HTML', 'Java', 'Google', 'Google', 4),
(10, 27, 'What is the full form of RAM?', 'Read Access Memory', 'Random Access Memory', 'Ready Allocation Memory', 'Run Access Memory', 'Random Access Memory', 5),
(10, 28, 'What type of storage is a hard disk?', 'Volatile', 'Non-volatile', 'Temporary', 'External only', 'Non-volatile', 6),
(10, 29, 'What does URL stand for?', 'Universal Remote Link', 'Uniform Resource Locator', 'Unique Reference Locator', 'United Resource Link', 'Uniform Resource Locator', 7),
(10, 30, 'What is used to browse websites?', 'Compiler', 'Browser', 'IDE', 'Editor', 'Browser', 8),
(10, 31, 'Which unit carries out arithmetic operations?', 'ALU', 'CU', 'RAM', 'ROM', 'ALU', 9),
(10, 32, 'What is the function of an OS?', 'Only printing', 'Only input', 'Manage hardware & software', 'Store passwords', 'Manage hardware & software', 10),
(23, 42, 'capital of india', 'delhi', 'mumbai', 'pune', 'chandigarh', 'delhi', 1),
(23, 43, 'capital of punjab', 'ludhiana', 'chandigarh', 'mohali', 'hisar', 'chandigarh', 2);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `pword` varchar(255) NOT NULL,
  `fname` char(100) NOT NULL,
  `dob` date NOT NULL,
  `gender` char(10) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `uname`, `pword`, `fname`, `dob`, `gender`, `email`) VALUES
(10, 'anniefrank', '1f9a884da469fdf263c098fc46891c04', 'Annie Frank', '1889-02-12', 'F', 'anniefrn@yahoo.com'),
(11, 'abraham', '1f9a884da469fdf263c098fc46891c04', 'Abraham Lincoln', '1998-02-12', 'M', 'abraham@usa.com'),
(12, 'mariealx', 'f6fdffe48c908deb0f4c3bd36c032e72', 'Marie Alex', '1790-12-12', 'F', 'mariealex@aol.com'),
(21, 'testuser', '179ad45c6ce2cb97cf1029e212046e81', 'Test User', '2000-01-01', 'M', 'test@user.com');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `pword` varchar(255) NOT NULL,
  `fname` char(100) NOT NULL,
  `dob` date NOT NULL,
  `gender` char(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `uname`, `pword`, `fname`, `dob`, `gender`, `email`, `subject`) VALUES
(1, 'teacher', '8d788385431273d11e8b43bb78f3aa41', 'Jack Rosso', '2021-12-01', 'M', 'teacher@teach.com', 'CHEMISTRY'),
(2, 'suhail', 'b96a660dba3176b85743eb7b28eb03e5', 'echosync', '1980-01-15', 'M', 'sir.akhtar@school.com', 'MATHEMATICS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atmpt_list`
--
ALTER TABLE `atmpt_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exm_list`
--
ALTER TABLE `exm_list`
  ADD PRIMARY KEY (`exid`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qstn_list`
--
ALTER TABLE `qstn_list`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `atmpt_list`
--
ALTER TABLE `atmpt_list`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `exm_list`
--
ALTER TABLE `exm_list`
  MODIFY `exid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `qstn_list`
--
ALTER TABLE `qstn_list`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
