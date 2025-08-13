-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2025 at 02:44 PM
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
-- Database: `sujan`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`) VALUES
(4),
(5),
(6),
(1001);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(30) DEFAULT NULL,
  `floor` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `dept_name`, `floor`) VALUES
(1, 'HR', '1'),
(2, 'IT', '2'),
(3, 'Account', '1'),
(4, 'Admin', '2'),
(5, 'Store', '3');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `salary` int(11) NOT NULL,
  `dept_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `name`, `address`, `salary`, `dept_id`) VALUES
(101, 'aabhiskar', 'Kathmandu', 15000, 1),
(102, 'Rachara', 'Lalitpur', 18000, 2),
(103, 'Chris', 'Bhaktapur', 12000, 3),
(104, 'Ishan', 'Pokhara', 25000, 4),
(105, 'Dipesh', 'Butwal', 17000, 1),
(106, 'Raunaq', 'Dharan', 9000, 2),
(107, 'Billie', 'Biratnagar', 20000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) DEFAULT 'Kathmandu',
  `class_id` int(11) NOT NULL,
  `age` int(11) NOT NULL DEFAULT 18,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `section` varchar(50) DEFAULT NULL
) ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `name`, `address`, `class_id`, `age`, `email`, `contact`, `section`) VALUES
(1, 'Aarya', 'ktm', 1001, 20, 'aaryadhungana@gmail.com', '9898989898', 'A'),
(2, 'Aashraya', 'lalitpur', 1001, 20, 'aashrayabhatta@gmail.com', '98764123', 'A'),
(3, 'Adarsha', 'imadole', 1001, 20, 'aadarshashrestha@gmail.com', '981121515', 'A'),
(4, 'Aakash', 'ktm', 1001, 20, 'aakashkhaati@gmail.com', '981265135151', 'A'),
(5, 'Alex', 'satdobato', 1001, 20, 'alexmaharjan@gmail.com', '982323231216', 'B'),
(6, 'John', 'Birtamode', 5, 23, 'johnhopkins@gmail.com', '9808768112', 'B'),
(7, 'Rahul', 'Bhaktapur', 5, 24, 'rahul@gmail.com', '98087112', 'B'),
(8, 'Sabin', 'Jawalakhel', 5, 22, 'sabinchettri@gmail.com', '981268155', 'B'),
(9, 'sahil', 'nakhipot', 4, 21, 'sahilkarki@gmail.com', '98423423455', 'B'),
(10, 'bikas', 'Birtamode', 4, 21, 'bikasneupane@gmail.com', '9812232425', 'B'),
(11, 'Samir', 'btm', 4, 21, 'samirdhungana@gmail.com', '9876554321', 'A'),
(12, 'Ram', 'lalitpur', 5, 19, 'kabirbhatta@gmail.com', '98334764123', 'B'),
(13, 'Bahar', 'imadole', 1001, 20, 'baharshrestha@gmail.com', '98131121515', 'A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `em_di_fk` (`dept_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `contact` (`contact`),
  ADD KEY `class_id` (`class_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `em_di_fk` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
