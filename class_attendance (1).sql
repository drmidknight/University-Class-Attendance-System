-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 17, 2022 at 11:21 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `class_attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `student` int(11) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `added_on` datetime NOT NULL DEFAULT current_timestamp(),
  `added_by` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `student`, `status`, `added_on`, `added_by`) VALUES
(8, 6, 'present', '2022-04-30 14:00:16', '8'),
(9, 1, 'present', '2022-05-15 21:27:58', '8');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `book_title` varchar(150) NOT NULL,
  `program` varchar(200) NOT NULL,
  `added_by` int(11) NOT NULL,
  `added_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `book_title`, `program`, `added_by`, `added_on`) VALUES
(4, ' Solutions Manual Software Quality Assurance', 'Software Quality Management', 0, '2020-05-24 10:34:14'),
(5, 'Software quality attributes and trade-offs ', 'Software Quality Management', 0, '2020-05-24 10:57:51'),
(9, 'Introduction to E-business Management and strategy', 'Electronic Business', 0, '2020-06-17 20:26:37'),
(10, 'SOCIAL MEDIA MARKETING  The Next Generation of Business Engagement', 'Electronic Business', 0, '2020-06-17 20:29:04'),
(11, 'The C+ + Programming Language', 'Computer Programming', 0, '2020-06-17 20:30:52'),
(12, 'Web Design with HTML and CSS Digital Classroom', 'Computer Programming', 0, '2020-06-17 20:33:14'),
(14, ' Information Technology Investment: (Decision-Making Methodology)', 'IT Sourcing and Procurement', 0, '2020-06-17 20:42:26'),
(15, 'Python Programming: An Introduction to Computer Science', 'Computer Programming', 0, '2020-06-17 20:44:54'),
(16, 'Python Programming: An Introduce to Computer Science', 'Computer Programming', 0, '2020-06-17 20:46:55'),
(17, 'MASTERING SOFTWARE QUALITY ASSURANCE Best Practices, Tools and Techniques for Software Developers', 'Software Quality Management', 0, '2020-06-17 20:49:40'),
(18, 'Agile Software Development Quality Assurance', 'Software Quality Management', 0, '2020-06-17 20:51:59'),
(19, ' Software Quality Assurance From theory to implementation', 'Software Quality Management', 0, '2020-06-17 20:53:58'),
(20, 'PHP, MySQL, JavaScript & HTML5 All-in-One For Dummies', 'Computer Programming', 0, '2020-06-17 20:55:53'),
(21, 'Hacking For Dummies', 'Computer Programming', 0, '2020-06-17 20:58:11'),
(22, 'BEGINING Andriod Programming with Andriod Studio', 'IT Sourcing & Procurement', 0, '2020-06-17 21:00:24'),
(23, 'Easy SQL Programming & Database Management For Beginners. Your Step-By- Step Guide To Learning The SQL Database.', 'Database Management', 0, '2020-06-17 21:07:52'),
(24, ' Database Systems: Design, Implementation, and Management', 'Database Management', 0, '2020-06-19 13:14:11'),
(25, 'Outsourcing Professional Body of Knowledge', 'IT Sourcing and Procurement', 0, '2020-06-19 13:22:47'),
(26, 'TROUBLESHOOTING AUTOMOTIVE COMPUTER SYSTEMS', 'Computer Networking', 0, '2020-06-19 14:25:57'),
(27, 'Cyber Operations: Building, Defending, and Attacking Modern Computer Networks', 'Computer Networking', 0, '2020-06-19 14:31:09'),
(28, 'Computer Forensics: Investigating Network Intrusions and Cyber Crime', 'Computer Networking', 0, '2020-06-19 14:58:18');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `course_code` varchar(50) NOT NULL,
  `credit_hours` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `added_by` varchar(50) NOT NULL,
  `added_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_code`, `credit_hours`, `description`, `added_by`, `added_on`) VALUES
(3, 'Hello', '00233', '5', 'This is the description', '', '2022-05-15 21:07:42');

-- --------------------------------------------------------

--
-- Table structure for table `programmes`
--

CREATE TABLE `programmes` (
  `program_id` int(11) NOT NULL,
  `program_title` varchar(255) NOT NULL,
  `program_description` text DEFAULT NULL,
  `added_by` varchar(200) DEFAULT NULL,
  `added_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `firstname` varchar(200) DEFAULT NULL,
  `othername` varchar(200) DEFAULT NULL,
  `lastname` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `dob` varchar(200) DEFAULT NULL,
  `program` varchar(255) DEFAULT NULL,
  `level` varchar(200) DEFAULT NULL,
  `student_id` varchar(200) DEFAULT NULL,
  `session` varchar(255) DEFAULT NULL,
  `added_on` datetime NOT NULL DEFAULT current_timestamp(),
  `added_by` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `firstname`, `othername`, `lastname`, `email`, `gender`, `dob`, `program`, `level`, `student_id`, `session`, `added_on`, `added_by`) VALUES
(1, 'Agyapong', 'Boad', 'Derrick', 'daviskbrown@yahoo.com', 'Female', '2022-05-19', 'Digital MARKETING', '200', '676767', 'Evening', '2022-05-15 20:36:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `middleName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `userType` enum('Admin','User') NOT NULL,
  `password` varchar(255) NOT NULL,
  `profileImage` varchar(255) NOT NULL,
  `added_by` int(11) NOT NULL,
  `added_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `firstName`, `middleName`, `lastName`, `email`, `userType`, `password`, `profileImage`, `added_by`, `added_on`) VALUES
(8, 'KamKam', 'Boadu ', 'Prince', 'admin@gmail.com', 'Admin', 'admin', 'chat.png', 0, '2020-06-03 17:55:25'),
(10, 'Amos', 'Ron', 'Steve', 'user@gmail.com', 'User', 'user', '10100971.jpg', 1, '2022-02-20 07:49:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `programmes`
--
ALTER TABLE `programmes`
  ADD PRIMARY KEY (`program_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `programmes`
--
ALTER TABLE `programmes`
  MODIFY `program_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
