-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 27, 2023 at 07:44 AM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dept_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_issue`
--

CREATE TABLE `book_issue` (
  `book_issue_no` int(11) NOT NULL,
  `issue_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `book_name` varchar(80) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `request_status` int(20) NOT NULL DEFAULT '0',
  `book_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `book_issue`
--

INSERT INTO `book_issue` (`book_issue_no`, `issue_date`, `book_name`, `user_id`, `request_status`, `book_status`) VALUES
(1, '2023-06-26 12:16:15', 'The Lord of the Rings', '201260107076', 1, 1),
(2, '2023-06-23 21:38:17', 'Artificial Intelligence: A Modern Approach', '201260107076', 1, 1),
(3, '2023-06-23 21:36:57', 'Data Structures and Algorithms', '211260107505', 1, 1),
(4, '2023-06-26 12:14:07', 'Introduction to Psychology', '211260107507', 1, 1),
(5, '2023-06-22 12:57:11', 'The Catcher in the Rye', '201260107076', 2, 0),
(6, '2023-06-23 21:22:31', 'The Lord of the Rings', '201260107076', 2, 0),
(7, '2023-06-23 21:24:48', 'The Great Gatsby', '201260107076', 1, 1),
(8, '2023-06-23 21:29:36', '1984', '211260107505', 1, 1),
(9, '2023-06-27 12:24:06', 'Introduction to Psychology', '211260107528', 0, 0),
(10, '2023-06-27 12:24:12', 'Chemistry: The Central Science', '211260107528', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch_id` int(12) NOT NULL,
  `branch_name` varchar(255) NOT NULL,
  `branch_short` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_id`, `branch_name`, `branch_short`) VALUES
(7, 'Computer Engineering\r\n', 'CE'),
(16, 'Information Technology', 'IT'),
(31, 'Computer Science and Engineering	', 'CSE'),
(32, 'Information & Communication Technology	', 'ICT');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` varchar(50) NOT NULL,
  `class_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`) VALUES
('107', 'IT_class'),
('108', 'CE_class');

-- --------------------------------------------------------

--
-- Table structure for table `club`
--

CREATE TABLE `club` (
  `club_id` int(12) NOT NULL,
  `club_name` varchar(255) NOT NULL,
  `club_desc` varchar(255) NOT NULL,
  `club_faculty` varchar(255) NOT NULL,
  `club_img` varchar(255) NOT NULL,
  `club_status` int(12) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `club`
--

INSERT INTO `club` (`club_id`, `club_name`, `club_desc`, `club_faculty`, `club_img`, `club_status`) VALUES
(1, 'ISTE', ' - Coding Competitions\r\n - Organizing technical workshops                              \r\n - Guiding students in their technical journey.', 'Piyush Patel', 'assets/img/iste.jpeg', 1),
(8, 'Tech Club Sal', 'Hello', 'Piyush Patel', '063552.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `faculty_id` int(20) NOT NULL,
  `faculty_name` varchar(255) NOT NULL,
  `faculty_email` varchar(255) NOT NULL,
  `faculty_position` varchar(255) NOT NULL,
  `faculty_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`faculty_id`, `faculty_name`, `faculty_email`, `faculty_position`, `faculty_img`) VALUES
(1, 'Piyush Patel', 'abc@gmail.com', 'Assistant Professor', '../campusconnect/backend/fac_img/piyush.png'),
(2, 'Aakash Bhatt', 'sarkariadmin@gmail.com', 'Assistant Professor', '../campusconnect/backend/fac_img/piyush.png');

-- --------------------------------------------------------

--
-- Table structure for table `library_book`
--

CREATE TABLE `library_book` (
  `book_id` int(50) NOT NULL,
  `book_name` varchar(70) NOT NULL,
  `book_author` varchar(70) NOT NULL,
  `book_location` varchar(40) NOT NULL,
  `book_status` int(12) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `library_book`
--

INSERT INTO `library_book` (`book_id`, `book_name`, `book_author`, `book_location`, `book_status`) VALUES
(1, 'Introduction to Computer Science', 'John Smith', 'A1 Shelf', 1),
(2, 'The Great Gatsby', 'F. Scott Fitzgerald', 'B2 Shelf', 0),
(3, 'Data Structures and Algorithms', 'Jane Doe', 'C3 Shelf', 0),
(4, 'To Kill a Mockingbird', 'Harper Lee', 'A2 Shelf', 0),
(5, 'Artificial Intelligence: A Modern Approach', 'Stuart Russell, Peter Norvig', 'D1 Shelf', 0),
(6, 'The Catcher in the Rye', 'J.D. Salinger', 'B1 Shelf', 0),
(7, 'Principles of Economics', 'N. Gregory Mankiw', 'C2 Shelf', 1),
(8, 'Harry Potter and the Sorcerer`s Stone', 'J.K. Rowling', 'A3 Shelf', 0),
(9, 'The Lord of the Rings', 'J.R.R. Tolkien', 'D2 Shelf', 0),
(10, 'Chemistry: The Central Science', 'Theodore L. Brown', 'B3 Shelf', 0),
(11, 'Pride and Prejudice', 'Jane Austen', 'A4 Shelf', 0),
(12, 'Introduction to Psychology', 'James W. Kalat', 'C1 Shelf', 0),
(13, '1984', 'George Orwell', 'D3 Shelf', 0),
(14, 'The Alchemist', 'Paulo Coelho', 'B4 Shelf', 0),
(15, 'Physics for Scientists and Engineers', 'Serway, Jewett', 'A5 Shelf', 0),
(16, 'The Great Gatsby', 'F. Scott Fitzgerald', 'C4 Shelf', 0),
(17, 'Moby-Dick', 'Herman Melville', 'D4 Shelf', 0),
(18, 'Introduction to Sociology', 'Anthony Giddens', 'B5 Shelf', 0),
(19, 'The Hobbit', 'J.R.R. Tolkien', 'A6 Shelf', 0),
(20, 'The Odyssey', 'Homer', 'C5 Shelf', 0);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(12) NOT NULL,
  `news_title` varchar(255) NOT NULL,
  `news_description` varchar(255) NOT NULL,
  `img_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `news_title`, `news_description`, `img_path`) VALUES
(6, 'n1', 'news 1 desc', 'n1082636.jpg'),
(12, 'dwwdd', 'wdqwd', 'dwwdd013238.png'),
(13, 'Hackathon', 'Hackathon', 'Hackathon072520.png'),
(14, 'Hackathon', 'Hackathon', 'Hackathon062121.png');

-- --------------------------------------------------------

--
-- Table structure for table `notice_board`
--

CREATE TABLE `notice_board` (
  `notice_id` int(20) NOT NULL,
  `notice_heading` varchar(100) NOT NULL,
  `notice_desc` varchar(1000) NOT NULL,
  `notice_document` varchar(100) NOT NULL,
  `faculty_id` varchar(50) NOT NULL,
  `faculty_name` varchar(100) NOT NULL,
  `regi_date` date NOT NULL,
  `regi_time` time NOT NULL,
  `exp_date` date NOT NULL,
  `status` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notice_board`
--

INSERT INTO `notice_board` (`notice_id`, `notice_heading`, `notice_desc`, `notice_document`, `faculty_id`, `faculty_name`, `regi_date`, `regi_time`, `exp_date`, `status`) VALUES
(8, 'Mid Result ', 'Mid result for sem 6', '010423080458.pdf', 'faculty1', 'Piyush Patel', '2023-04-01', '08:04:58', '2023-04-08', 0);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `project_id` int(12) NOT NULL,
  `project_title` varchar(255) NOT NULL,
  `project_description` varchar(255) NOT NULL,
  `branch_short` varchar(20) DEFAULT NULL,
  `project_link` varchar(255) NOT NULL,
  `project_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`project_id`, `project_title`, `project_description`, `branch_short`, `project_link`, `project_img`) VALUES
(4, 'p1', 'project', 'CE', 'index.php', 'p1082230.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `sub_id` int(12) NOT NULL,
  `code` int(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `credit` int(12) NOT NULL,
  `theory` int(12) NOT NULL,
  `practical` int(12) NOT NULL,
  `total` int(12) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `branch_id` varchar(12) NOT NULL,
  `sem_id` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`sub_id`, `code`, `name`, `credit`, `theory`, `practical`, `total`, `user_id`, `branch_id`, `sem_id`) VALUES
(2, 3110003, 'English', 3, 100, 50, 150, 'faculty1', '7', '1st'),
(3, 3110003, 'Programming for Problem Solving', 4, 100, 50, 150, 'faculty2', '7', '1st'),
(4, 3110005, 'Basic Electrical Engineering', 4, 100, 50, 150, '0', '7', '1st'),
(5, 3110006, 'Basic Mechanical Engineering', 4, 100, 50, 150, '0', '7', '1st'),
(6, 3110007, ' Environmental Sciences', 0, 100, 0, 100, '0', '7', '1st'),
(7, 3110013, 'Engineering Graphics & Design', 4, 100, 50, 150, '0', '7', '1st'),
(8, 3110014, 'Mathematics - 1', 5, 100, 0, 100, '0', '7', '1st'),
(9, 3110018, 'Physics', 4, 100, 50, 150, '0', '7', '1st'),
(10, 3110003, 'English', 3, 100, 50, 150, '0', '16', '1st'),
(11, 3110003, 'Programming for Problem Solving', 4, 100, 50, 150, '0', '16', '1st'),
(12, 3110005, 'Basic Electrical Engineering', 4, 100, 50, 150, '0', '16', '1st'),
(13, 3110006, 'Basic Mechanical Engineering', 4, 100, 50, 150, '0', '16', '1st'),
(14, 3110007, ' Environmental Sciences', 0, 100, 0, 100, '0', '16', '1st'),
(15, 3110013, 'Engineering Graphics & Design', 4, 100, 50, 150, '0', '16', '1st'),
(16, 3110014, 'Mathematics - 1', 5, 100, 0, 100, '0', '16', '1st'),
(17, 3110018, 'Physics', 4, 100, 50, 150, '0', '16', '1st'),
(18, 3110003, 'English', 3, 100, 50, 150, '0', '31', '1st'),
(19, 3110003, 'Programming for Problem Solving', 4, 100, 50, 150, '0', '31', '1st'),
(20, 3110005, 'Basic Electrical Engineering', 4, 100, 50, 150, '0', '31', '1st'),
(21, 3110006, 'Basic Mechanical Engineering', 4, 100, 50, 150, '0', '31', '1st'),
(22, 3110007, ' Environmental Sciences', 0, 100, 0, 100, '0', '31', '1st'),
(23, 3110013, 'Engineering Graphics & Design', 4, 100, 50, 150, '0', '31', '1st'),
(24, 3110014, 'Mathematics - 1', 5, 100, 0, 100, '0', '31', '1st'),
(25, 3110018, 'Physics', 4, 100, 50, 150, '0', '31', '1st'),
(26, 3110003, 'English', 3, 100, 50, 150, '0', '32', '1st'),
(27, 3110003, 'Programming for Problem Solving', 4, 100, 50, 150, '0', '32', '1st'),
(28, 3110005, 'Basic Electrical Engineering', 4, 100, 50, 150, '0', '32', '1st'),
(29, 3110006, 'Basic Mechanical Engineering', 4, 100, 50, 150, '0', '32', '1st'),
(30, 3110007, ' Environmental Sciences', 0, 100, 0, 100, '0', '32', '1st'),
(31, 3110013, 'Engineering Graphics & Design', 4, 100, 50, 150, '0', '32', '1st'),
(32, 3110014, 'Mathematics - 1', 5, 100, 0, 100, '0', '32', '1st'),
(33, 3110018, 'Physics', 4, 100, 50, 150, '0', '32', '1st'),
(34, 3110002, 'English', 3, 100, 50, 150, '0', '7', '2nd'),
(35, 3110003, 'Object Oriented Programming -I', 4, 100, 50, 150, '0', '7', '2nd'),
(36, 3110005, 'Basic Electrical Engineering', 4, 100, 50, 150, '0', '7', '2nd'),
(37, 3110007, ' Environmental Sciences', 0, 100, 0, 100, '0', '7', '2nd'),
(38, 3110013, 'Engineering Graphics & Design', 4, 100, 50, 150, '0', '7', '2nd'),
(39, 3110014, 'Mathematics - 1', 5, 100, 0, 100, '0', '7', '2nd'),
(40, 3110018, 'Physics', 4, 100, 50, 150, '0', '7', '2nd'),
(41, 3110002, 'English', 3, 100, 50, 150, '0', '16', '2nd'),
(42, 3110003, 'Object Oriented Programming -I', 4, 100, 50, 150, '0', '16', '2nd'),
(43, 3110005, 'Basic Electrical Engineering', 4, 100, 50, 150, '0', '16', '2nd'),
(44, 3110007, ' Environmental Sciences', 0, 100, 0, 100, '0', '16', '2nd'),
(45, 3110013, 'Engineering Graphics & Design', 4, 100, 50, 150, '0', '16', '2nd'),
(46, 3110014, 'Mathematics - 1', 5, 100, 0, 100, '0', '16', '2nd'),
(47, 3110018, 'Physics', 4, 100, 50, 150, '0', '16', '2nd'),
(48, 3110002, 'English', 3, 100, 50, 150, '0', '31', '2nd'),
(49, 3110003, 'Object Oriented Programming -I', 4, 100, 50, 150, '0', '31', '2nd'),
(50, 3110005, 'Basic Electrical Engineering', 4, 100, 50, 150, '0', '31', '2nd'),
(51, 3110007, ' Environmental Sciences', 0, 100, 0, 100, '0', '31', '2nd'),
(52, 3110013, 'Engineering Graphics & Design', 4, 100, 50, 150, '0', '31', '2nd'),
(53, 3110014, 'Mathematics - 1', 5, 100, 0, 100, '0', '31', '2nd'),
(54, 3110018, 'Physics', 4, 100, 50, 150, '0', '31', '2nd'),
(55, 3110002, 'English', 3, 100, 50, 150, '0', '32', '2nd'),
(56, 3110003, 'Object Oriented Programming -I', 4, 100, 50, 150, '0', '32', '2nd'),
(57, 3110005, 'Basic Electrical Engineering', 4, 100, 50, 150, '0', '32', '2nd'),
(58, 3110007, ' Environmental Sciences', 0, 100, 0, 100, '0', '32', '2nd'),
(59, 3110013, 'Engineering Graphics & Design', 4, 100, 50, 150, '0', '32', '2nd'),
(60, 3110014, 'Mathematics - 1', 5, 100, 0, 100, '0', '32', '2nd'),
(61, 3110018, 'Physics', 4, 100, 50, 150, '0', '32', '2nd'),
(62, 3130006, 'Probability and Statistics', 5, 100, 50, 150, '0', '7', '3rd'),
(63, 3130007, 'Indian Constitution', 3, 100, 0, 100, '0', '7', '3rd'),
(64, 2130005, 'Design Engisneering - I', 3, 0, 100, 100, '0', '7', '3rd'),
(65, 3130702, 'Data Structures', 5, 100, 50, 150, '0', '7', '3rd'),
(66, 3130703, 'Database Managment Systems', 5, 100, 50, 150, '0', '7', '3rd'),
(67, 3130704, 'Digital Fundamental', 4, 100, 50, 150, '0', '7', '3rd'),
(68, 3130004, 'Effective Technical Communication', 3, 100, 50, 150, '0', '7', '3rd'),
(69, 3130006, 'Probability and Statistics', 5, 100, 50, 150, '0', '16', '3rd'),
(70, 3130007, 'Indian Constitution', 3, 100, 0, 100, '0', '16', '3rd'),
(71, 2130005, 'Design Engisneering - I', 3, 0, 100, 100, '0', '16', '3rd'),
(72, 3130702, 'Data Structures', 5, 100, 50, 150, '0', '16', '3rd'),
(73, 3130703, 'Database Managment Systems', 5, 100, 50, 150, '0', '16', '3rd'),
(74, 3130704, 'Digital Fundamental', 4, 100, 50, 150, '0', '16', '3rd'),
(75, 3130004, 'Effective Technical Communication', 3, 100, 50, 150, '0', '16', '3rd'),
(76, 3130006, 'Probability and Statistics', 5, 100, 50, 150, '0', '31', '3rd'),
(77, 3130007, 'Indian Constitution', 3, 100, 0, 100, '0', '31', '3rd'),
(78, 2130005, 'Design Engisneering - I', 3, 0, 100, 100, '0', '31', '3rd'),
(79, 3130702, 'Data Structures', 5, 100, 50, 150, '0', '31', '3rd'),
(80, 3130703, 'Database Managment Systems', 5, 100, 50, 150, '0', '31', '3rd'),
(81, 3130704, 'Digital Fundamental', 4, 100, 50, 150, '0', '31', '3rd'),
(82, 3130004, 'Effective Technical Communication', 3, 100, 50, 150, '0', '31', '3rd'),
(83, 3130006, 'Probability and Statistics', 5, 100, 50, 150, '0', '32', '3rd'),
(84, 3130007, 'Indian Constitution', 3, 100, 0, 100, '0', '32', '3rd'),
(85, 2130005, 'Design Engisneering - I', 3, 0, 100, 100, '0', '32', '3rd'),
(86, 3130702, 'Data Structures', 5, 100, 50, 150, '0', '32', '3rd'),
(87, 3130703, 'Database Managment Systems', 5, 100, 50, 150, '0', '32', '3rd'),
(88, 3130704, 'Digital Fundamental', 4, 100, 50, 150, '0', '32', '3rd'),
(89, 3130004, 'Effective Technical Communication', 3, 100, 50, 150, '0', '32', '3rd'),
(90, 3140702, 'Operating System', 5, 100, 50, 150, '0', '7', '4th'),
(91, 3140705, 'Object Oriented Programming -I', 5, 100, 50, 150, '0', '7', '4th'),
(92, 3140707, 'Computer Organization & Architecture', 4, 100, 50, 150, '0', '7', '4th'),
(93, 3140708, 'Discrete Mathematics', 5, 100, 50, 150, '0', '7', '4th'),
(94, 3140709, 'Principles of Economics and Management', 3, 100, 0, 100, '0', '7', '4th'),
(95, 3141601, 'Operating System and Virtualization', 5, 100, 50, 150, '0', '16', '4th'),
(96, 3143201, 'Data Communication & Computer Network', 5, 100, 50, 150, '0', '31', '4th'),
(97, 3140705, 'Object Oriented Programming -I', 5, 100, 50, 150, '0', '16', '4th'),
(98, 3140707, 'Computer Organization & Architecture', 4, 100, 50, 150, '0', '16', '4th'),
(99, 3140708, 'Discrete Mathematics', 5, 100, 50, 150, '0', '16', '4th'),
(100, 3140709, 'Principles of Economics and Management', 3, 100, 0, 100, '0', '16', '4th'),
(101, 3140705, 'Object Oriented Programming -I', 5, 100, 50, 150, '0', '31', '4th'),
(102, 3140707, 'Computer Organization & Architecture', 4, 100, 50, 150, '0', '31', '4th'),
(103, 3140708, 'Discrete Mathematics', 5, 100, 50, 150, '0', '31', '4th'),
(104, 3140709, 'Principles of Economics and Management', 3, 100, 0, 100, '0', '31', '4th'),
(105, 3140702, 'Operating System', 5, 100, 50, 150, '0', '32', '4th'),
(106, 3140705, 'Object Oriented Programming -I', 5, 100, 50, 150, '0', '32', '4th'),
(107, 3140707, 'Computer Organization & Architecture', 4, 100, 50, 150, '0', '32', '4th'),
(108, 3140708, 'Discrete Mathematics', 5, 100, 50, 150, '0', '32', '4th'),
(109, 3140709, 'Principles of Economics and Management', 3, 100, 0, 100, '0', '32', '4th'),
(110, 3140702, 'Operating System', 5, 100, 50, 150, '0', '31', '4th'),
(111, 111, '111', 111, 11, 11, 22, 'faculty1', '7', '1st'),
(112, 111, '111', 11, 11, 11, 22, 'faculty2', '10', '2nd'),
(113, 123, '123', 12, 12, 12, 24, 'faculty2', '23', '1st'),
(114, 1234, 'Machine Learning', 23, 2, 23, 25, 'faculty1', '7', '1st');

-- --------------------------------------------------------

--
-- Table structure for table `sub_material`
--

CREATE TABLE `sub_material` (
  `material_id` int(12) NOT NULL,
  `material_type` varchar(255) NOT NULL,
  `material_des` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_material`
--

INSERT INTO `sub_material` (`material_id`, `material_type`, `material_des`) VALUES
(3, 'Assignment', 'Assignment060105.png ');

-- --------------------------------------------------------

--
-- Table structure for table `upload_material`
--

CREATE TABLE `upload_material` (
  `doc_id` int(12) NOT NULL,
  `material_name` varchar(255) NOT NULL,
  `upload_doc` varchar(255) NOT NULL,
  `code` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `upload_material`
--

INSERT INTO `upload_material` (`doc_id`, `material_name`, `upload_doc`, `code`) VALUES
(39, 'GTU Material', '030249.pdf', '3110003'),
(40, 'Assignment', '033934.pdf', '3110006'),
(41, 'Assignment', '034635.pdf', '3110006'),
(42, 'Assignment', '035528.pdf', '3110006'),
(43, 'Assignment', '080815.pdf', '3110006'),
(44, 'Assignment', '082057.pdf', '3110013'),
(45, 'Assignment', '082811.pdf', '3110014'),
(46, 'Assignment', '083048.pdf', '3110014'),
(47, 'Assignment', '122641.pdf', '3110014'),
(48, 'Assignment', '122821.pdf', '3110018'),
(50, 'Assignment', '064756.pdf', '3110013'),
(51, 'Assignment', '070634.pdf', '3110003'),
(52, 'Assignment', '055647.pdf', '3110007'),
(53, 'Assignment', '060051.pdf', '3110007'),
(54, 'Assignment', '062456.pdf', '3110003'),
(55, 'Assignment', '120332.pdf', '3110003'),
(56, 'Assignment', '120406.pdf', '3110003');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `branch_id` varchar(50) NOT NULL DEFAULT 'Information Technology',
  `mobile_number` bigint(15) NOT NULL,
  `profile` varchar(50) DEFAULT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `faculty_id` varchar(50) NOT NULL,
  `user_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `password`, `name`, `father_name`, `branch_id`, `mobile_number`, `profile`, `role`, `email`, `faculty_id`, `user_status`) VALUES
('151260105045', '151260105045', 'PATHAN AAQIB HAFIJURRAHEMAN', NULL, 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('161260107042', '161260107042', 'PATEL RAJ BHUPENDRAKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('161260107043', '161260107043', 'PATEL RIDDHI KIRTIBHAI', 'KIRTIBHAI', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('171260105052', '171260105052', 'VORA HARSHAL ASHVINBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('171260107113', '171260107113', 'BHAGAT TUSHAR .', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 1),
('181260107024', '181260107024', 'KANUDAWALA DIVYANG PARESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('181260107032', '181260107032', 'MEHTA MIHIR DHARMESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('181260107048', '181260107048', 'PATEL DEVKUMAR MAHESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('181260107064', '181260107064', 'PATEL NISARG JAYANTIBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('181260107065', '181260107065', 'PATEL PRATHAM RAKESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('181260107080', '181260107080', 'PATHAN FARHANKHAN ANWARULHAQ', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('181260107083', '181260107083', 'RATHOD CHARMIL MANISHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260105001', '191260105001', 'CHIKANI  HARSH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260105002', '191260105002', 'JIYANI  ANIKET', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260105003', '191260105003', 'JOGI HARSH SATISHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260105005', '191260105005', 'NAVI SHAILESH AKNATH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260105006', '191260105006', 'PANCHAL  MANSI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260105008', '191260105008', 'PATEL  KAVANKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260105009', '191260105009', 'PATEL RAJ JAYESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260105010', '191260105010', 'PATEL SHREY PRAKASHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260105012', '191260105012', 'PATEL  UTTPAL', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260105013', '191260105013', 'PRAJAPATI  ANKIT', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260105014', '191260105014', 'PRASAD RAJ KUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260105016', '191260105016', 'RIBADIYA HITESH HARSUKHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260105017', '191260105017', 'RIWAL DHANIXA RAJU', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260105018', '191260105018', 'SAVALIYA NEVIL JAYESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260105019', '191260105019', 'SHRIVASTAVA RUCHI ANUP', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260106001', '191260106001', 'CHAUDHARY SURESHKUMAR VAGTAJI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260106002', '191260106002', 'MODI RIDDHI HITESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260106003', '191260106003', 'PATEL  JAIMINKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107001', '191260107001', 'ADESHARA VAIBHAV JITENDRAKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107002', '191260107002', 'ADIDRAVID RAHUL MUTHUSWAMY', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107003', '191260107003', ' AGRAWAL JAY', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107004', '191260107004', 'BABARIYA JAIMIN RASIKBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107006', '191260107006', 'BAJORIA PUNEET AJAYKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107007', '191260107007', 'BHATT KANDARP HITESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107008', '191260107008', 'BHATT SAMARTH PRADIPBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107009', '191260107009', 'BUKHARI AAZIL MOHAMMED', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107010', '191260107010', 'CHAMPANERIYA DARSH NILESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107011', '191260107011', 'CHAUDHARI UNNATI GANESH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107012', '191260107012', 'CHAUHAN RAJPALSINH PRAVINSINH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107013', '191260107013', 'CHAVDA SUNIL JAGDISHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107014', '191260107014', 'CHOUDHARY DIVESH LALARAM', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107015', '191260107015', 'CHOVATIYA JINKAL KISHORBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107016', '191260107016', 'CHRISTIAN MAX EDWIN', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107019', '191260107019', 'DHOLARIYA VATSAL BHUPATBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107020', '191260107020', 'PATEL DHWANI BIPINBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107021', '191260107021', 'DUBEY DAKSH VIJAY', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107022', '191260107022', 'DUBEY SAGAR .', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107023', '191260107023', 'DUTTA SOUMYAJIT MEGHNATH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107024', '191260107024', 'GABANI ABHI DIPAKBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107025', '191260107025', 'GAJIPARA HARSHIT SANJAYKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107026', '191260107026', 'GOSWAMI KATHAN BHARGAVBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107028', '191260107028', 'JAGANI  DHARMIK', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107029', '191260107029', 'JAIN SAUMYA RAJESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107030', '191260107030', 'JAISWAL SOMINDRA JAYPRAKASH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107031', '191260107031', 'JANI KHYATI ATULBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107033', '191260107033', 'JOSHI DEEP', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107034', '191260107034', 'JOSHI PRACHI MAHENDRABHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107035', '191260107035', 'KANJHARIYA PARTHKUMAR ASHVINKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107036', '191260107036', 'KAPOPARA SHUBHAM ATULBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107037', '191260107037', 'KASHYAP SIMRAN .', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107038', '191260107038', 'KHANT DEVANG RANJITSINH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107039', '191260107039', 'LUNAGARIYA JAY PRAMODBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107040', '191260107040', 'MANGUKIYA RUTVIK ASHOKBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107041', '191260107041', 'MANSURI MOHAMMD ZAID', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107043', '191260107043', 'MER BIREN MANOJ', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107044', '191260107044', 'PADHIYAR BRIJESH HIRENBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107045', '191260107045', 'PANCHAL YASH MUKESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107047', '191260107047', 'PATEL AASHVI ALPESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107048', '191260107048', 'PATEL ABHI PANKAJBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107050', '191260107050', 'PATEL DHRUV ARVINDBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107051', '191260107051', 'PATEL DHRUV GIRISHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107052', '191260107052', 'PATEL DHVANI NARENDRABHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107055', '191260107055', 'PATEL HAPPY ANILKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107056', '191260107056', 'PATEL  HAPPY', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107057', '191260107057', 'PATEL HENIL NAILESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107059', '191260107059', 'PATEL HIMANI JITENDRABHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107060', '191260107060', 'PATEL JANVI JAGDISHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107061', '191260107061', 'PATEL JAY HITESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107062', '191260107062', 'PATEL JINAL VIJAYKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107063', '191260107063', 'PATEL KANVI SHAILESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107064', '191260107064', 'PATEL KAUSHAL RAJNIKANT', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107065', '191260107065', 'PATEL KRUSHNA CHANDRESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107067', '191260107067', 'PATEL MALAV KETANKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107068', '191260107068', 'PATEL MIT NILESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107069', '191260107069', 'PATEL PARTH MAHESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107070', '191260107070', 'PATEL PARTH MANISHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107071', '191260107071', 'PATEL PRINCE GHANSHYAMKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107072', '191260107072', 'PATEL PRINCEKUMAR YOGESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107073', '191260107073', 'PATEL PRIT HARESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107074', '191260107074', 'PATEL PUNIT ALPESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107075', '191260107075', 'PATEL RAJ SHAILESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107077', '191260107077', 'PATEL ROHANKUMAR DIPAKKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107078', '191260107078', 'PATEL RUSHIT', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107079', '191260107079', 'PATEL RUTUL SIRINKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107080', '191260107080', 'PATEL RUTVIBEN', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107083', '191260107083', 'PATEL SAHIL RAJESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107084', '191260107084', 'PATEL SHREY JATIN', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107085', '191260107085', 'PATEL  SHREY', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107087', '191260107087', 'PATEL SMIT ASHOKBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107088', '191260107088', 'PATEL SMIT RAJESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107090', '191260107090', 'PATEL VRAJ SHAILESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107092', '191260107092', 'POKIYA PANTHIL GORDHANBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107093', '191260107093', 'PRAJAPATI YASH NATVARBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107094', '191260107094', 'QURESHI MOHAMED AMMAN', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107095', '191260107095', 'RAVAL DHRUVI ARUNKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107096', '191260107096', 'ROKAD AKSHIT BHARATBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107097', '191260107097', 'SATWARA TEERTH VIPULKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107098', '191260107098', 'SAVALIAYA SHREYA VASANTBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107100', '191260107100', 'SHAH  MAHEK', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107102', '191260107102', 'SOJITRA KEYUR ARVINDBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107103', '191260107103', 'SOMANI MITA RAKESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107105', '191260107105', 'SUMAN RAHUL RAMKRISHNA', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107107', '191260107107', 'TILALA YASH HARESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107108', '191260107108', 'TRIVEDI CHANDRESHKUMAR ANUPBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107110', '191260107110', 'VAGHASIYA MITKUMAR JAGADISHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107111', '191260107111', 'VAGHELA SHAKTISINH DHARMENDRASINH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107112', '191260107112', 'TOSHNIWAL VAIBHAV VINAY', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107113', '191260107113', 'VAISHNAV DIVYA JITENDRA', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107114', '191260107114', 'VARMORA JAYKUMAR RAJNIKANTBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107115', '191260107115', 'VARMORA SAGARKUMAR VINODBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260107116', '191260107116', 'VARSHNEY RISHABH PANKAJ', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116001', '191260116001', 'ANSARI ASHFAK HUSSAIN', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116002', '191260116002', 'BARIA LEVIN SANTOSHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116003', '191260116003', 'CHAUHAN ABHISHEK RAMKUNVAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116004', '191260116004', 'DESAI JIGAR ANILBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116006', '191260116006', 'DHOLAKIYA DARSHIT NARESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116007', '191260116007', 'DHOLARIYA DHRUVIL', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116009', '191260116009', 'GOHEL SNEHAL KALPESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116010', '191260116010', 'GOSAI RISHABHPURI KRUSHNAPURI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116011', '191260116011', 'GOYANI MANTHANKUMAR ARVINDBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116012', '191260116012', 'JOGI KRUNAL JITENDRABHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116013', '191260116013', 'JOSHI NACHIKET PARSHOTTAMBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116014', '191260116014', 'KHANDALA KAUSHIK HARESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116015', '191260116015', 'KHIMNANI HARSH SURESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116016', '191260116016', 'KOLADIYA SAGAR JITUBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116017', '191260116017', 'KOSHTI HIMANSHU JASWANT', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116019', '191260116019', 'MADHANI JAINAM NIMESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116020', '191260116020', 'MECWAN APURVKUMAR RAMANBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116021', '191260116021', 'MEHTA ANUSHREE', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116022', '191260116022', 'MISTRY HARSHIL DINESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116023', '191260116023', 'MISTRY KAVAN ATULKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116024', '191260116024', 'NAKRANI JANKIBEN', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116025', '191260116025', 'PANCHAL HET DEVENDRAKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116026', '191260116026', 'PAREKH SHAILESHKUMAR KISHORBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116027', '191260116027', 'PATEL AKASHKUMAR PANKAJBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116028', '191260116028', 'PATEL ARPITKUMAR PRAVINBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116029', '191260116029', 'PATEL AYUSHKUMAR JIGNESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116030', '191260116030', 'PATEL DHARMITKUMAR SURESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116032', '191260116032', 'PATEL JAY VIRENDRABHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116034', '191260116034', 'PATEL KHUSHIL NARENDRABHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116035', '191260116035', 'PATEL NIDHI ROHITBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116036', '191260116036', 'PATEL POOJAN VIPULBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116037', '191260116037', 'PATEL  RUTVI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116039', '191260116039', 'PATEL SAMAY KALPESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116042', '191260116042', 'PATEL SMIT GIRISHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116044', '191260116044', 'PATEL TIRTH UMESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116045', '191260116045', 'PATHAN AZAMKHAN MAZHARKHAN', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116046', '191260116046', 'PRAJAPATI HARSH JAYESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116047', '191260116047', 'PRAJAPATI VIREN ALPESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116048', '191260116048', 'PUTHAWALA ANAS AMJAD', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116050', '191260116050', 'SATASIYA SWITYBEN GOPALBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116051', '191260116051', 'SAVALIYA PRIYALBEN', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116052', '191260116052', 'SHAH AASHAYKUMAR MITESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116054', '191260116054', 'SHAH AGAM SANDIP', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116055', '191260116055', 'SHAIKH AMIRUL ANARUL', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116056', '191260116056', 'SHARMA PARTH RAJESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116057', '191260116057', 'SHINGALA SHREYAS BAKULBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116058', '191260116058', 'SIDDHPURA KHUSHBU RAJANIBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116059', '191260116059', 'SONI DHRUMIL HITESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116060', '191260116060', 'SUTARIYA KUNJ SHAILESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116061', '191260116061', 'SUTHAR LALIT VISARAM', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116062', '191260116062', 'TANTI KAUSHIK DINESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116063', '191260116063', 'VADDORIYA PRIYANSHI JAYSUKHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116064', '191260116064', 'VEKARIYA PUNAMKUMAR DALSUKHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191260116065', '191260116065', 'ZINZUWADIA YATHARTH PIYUSHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('191263106004', '191263106004', 'PATEL BIMAL', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260105501', '201260105501', 'PATEL DARSHAN SURESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260105502', '201260105502', 'BHANDERI BHAUTIK SURESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260105503', '201260105503', 'BHALODIYA RUTVIK BECHARBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260105504', '201260105504', 'SANGANI AKSHIT KAMLESH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260105505', '201260105505', 'PATEL RAJ', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260106501', '201260106501', 'SOLANKI DHAVAL RAKESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260106502', '201260106502', 'DHAKAN VIVAN NITIN', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260106503', '201260106503', 'VAGHELA DIPESH MANOJKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107001', '201260107001', 'VAGHELA HARSHRAJSINH .', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107002', '201260107002', 'CHAUHAN YASH .', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107003', '201260107003', 'RANA KRUNAL NIKHILKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107004', '201260107004', 'PATEL ABHI JAGDISHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107005', '201260107005', 'PATEL HITARTH BHARATKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107006', '201260107006', 'SAVALIYA KEVIN CHANDUBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107007', '201260107007', 'CHAVDA UDITSINH RAJENDRASINH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107008', '201260107008', 'JAKHESARA HIMANSHU SAVITA', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107009', '201260107009', 'SHAH MAHIMA BHAVANTUBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107010', '201260107010', 'BORAD NIHIT DILIPBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107011', '201260107011', 'PATEL PRINCE R', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107012', '201260107012', 'PATEL ANKIT VINAYBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107013', '201260107013', 'SHARMA JITENDRA PAWAN', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107014', '201260107014', 'KAGADA MEET', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107015', '201260107015', 'PAL ATULKUMAR SATYARAM', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107016', '201260107016', 'MISHRA TANISH RAVISHANKAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107017', '201260107017', 'PANDYA MADHAV RAJIVKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107018', '201260107018', 'PATEL ARYAN KAMLESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107019', '201260107019', 'JANI PIYUSH PRASHANTBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107021', '201260107021', 'VAGHASIA MAHARSHI PARSHOTAMBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107022', '201260107022', 'SHAH RUSHABH PANKAJKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107023', '201260107023', 'PATEL KHUSHI .', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107024', '201260107024', 'CHAUDHARY SAHIL ASHOKKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107025', '201260107025', 'VEKARIYA SAHIL BATUKBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107026', '201260107026', 'DOSHI DIVY RAKESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107027', '201260107027', 'KAPADIYA DEV MANHARKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107028', '201260107028', 'MAKWANA DIPAM .', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107029', '201260107029', 'CHAUDHARY MASUM JAYANTIBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107030', '201260107030', 'SHUKLA BHARGAV', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107031', '201260107031', 'PATEL RAJ HIRINBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107032', '201260107032', 'THUMMAR RAJ', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107033', '201260107033', 'PATEL SMIT RAKESH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107034', '201260107034', 'KAPADIYA HET MUKESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107035', '201260107035', 'GUPTA MIHIR PRADEEPKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107036', '201260107036', 'KALARIYA HITEKSHA PRAVINBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107037', '201260107037', 'PATEL HETANSHU HEMANTKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107038', '201260107038', 'PATEL ARYAN PANKAJKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107039', '201260107039', 'RAVAL HARSHANGBHAI KALPESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107040', '201260107040', 'BAJPAI ARYAN KRISHAN', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107041', '201260107041', 'HIRAPARA ADIT PRAVANIBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107042', '201260107042', 'SHAH DHRUVITKUMAR INDRAVADAN', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107043', '201260107043', 'MODI PARTH VIMALKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107044', '201260107044', 'PATEL PRITU ASHVINKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107045', '201260107045', 'THAKKAR JAANKI JIGARKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107046', '201260107046', 'PATEL DEVARSH TARUN', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107047', '201260107047', 'RAVAL SAURAV BIPINBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107048', '201260107048', 'PATEL KHUSHI RAJKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107049', '201260107049', 'RATHOD SANJANA', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107050', '201260107050', 'TIWARI SHUBHANG SHARAD', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107051', '201260107051', 'SONI KABIR JAYKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107052', '201260107052', 'BHAVSAR ISHAN DHARMENDRAKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107053', '201260107053', 'JOSHI KRISHNA ALKESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107054', '201260107054', 'BRAHMBHATT PRATHAM KALPESH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107055', '201260107055', 'MATHE AAYUSH .', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107056', '201260107056', 'SHETH FREYA HITESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107057', '201260107057', 'SOJITRA BINALBEN PANKAJBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107058', '201260107058', 'VADDORIYA NENSI RAMESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107059', '201260107059', 'THUMMAR YUVRAJ BHARATBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107060', '201260107060', 'KORAPANA DIPAKKUMAR VINODBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107061', '201260107061', 'KACHHADIYA PRIYESH NARESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107062', '201260107062', 'RATHOD DEVARSH KRUSHNAKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107063', '201260107063', 'PATEL MONIL JATIN', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107064', '201260107064', 'RAVAL GAURAV ASHOKKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107065', '201260107065', 'PATEL JENIL KIRTIKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107066', '201260107066', 'KANSAGRA ANSH NARESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107067', '201260107067', 'PATEL JEEL HASMUKHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107068', '201260107068', 'AGRAWAL NISHU OMPRAKASH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107072', '201260107072', 'BORSE DEVESH PRAKASH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107073', '201260107073', 'PATEL HARSHKUMAR HITESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107074', '201260107074', 'PATEL PARTH RAVINDRAKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107075', '201260107075', 'ZALA INDRAJEETSINH JAYENDRASINH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107076', '201260107076', 'PATEL DVIP .', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107077', '201260107077', 'PRAJAPATI JAIMIN VISHNUBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107078', '201260107078', 'PATEL VRAJESH .', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107501', '201260107501', 'KANANI SUHANI .', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107502', '201260107502', 'PANCHAL PURVESH DARSHAN', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107503', '201260107503', 'DAVE PARTHKUMAR SHARADBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107504', '201260107504', 'SATHWARA DAXKUMAR .', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107505', '201260107505', 'MARU DIVYA .', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107506', '201260107506', 'MANDAVIYA JIGAR RAJESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107507', '201260107507', 'BHOHARIYA KAMIL .', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107508', '201260107508', 'PATHAK DARSHAN HITESH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107509', '201260107509', 'NATHANI NANCY BHARATBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107510', '201260107510', 'RAMANI AKASH .', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107511', '201260107511', 'PATEL DHVANI NILESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107512', '201260107512', 'VADHER NIDHI AJAYKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107513', '201260107513', 'PATEL NINAD SANJAYBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107514', '201260107514', 'PATEL AYUSHI .', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107516', '201260107516', 'VADIWALA PARTH SHETALBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107517', '201260107517', 'SALVI KARINA VIMALBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107518', '201260107518', 'VORA SANKALP DARSHAN', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107519', '201260107519', 'DOSHI SUTIRTH KALPESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107520', '201260107520', 'PANCHAL KABIR .', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107521', '201260107521', 'SAKHIYA MANSHI PARESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107522', '201260107522', 'PANSURIYA KEVIL PRAKASHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107523', '201260107523', 'PATEL PARV VISHNUBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107524', '201260107524', 'PATEL MEET .', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107525', '201260107525', 'MODI  MEET', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107526', '201260107526', 'JAYSWAL RUTURAJ M', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107527', '201260107527', 'HARSH JOSHI .', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107528', '201260107528', 'PATEL MALIKA MINESH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107529', '201260107529', 'PATEL ARZOO KAMLESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107530', '201260107530', 'PUROHIT AKSHITA RAKESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107532', '201260107532', 'THAKKAR ABHISHEK .', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107533', '201260107533', 'JANI OM DHAVAL', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107534', '201260107534', 'PATEL DHARMIK HEMAL', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107535', '201260107535', 'BAGBAN AADIL KHAN', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107536', '201260107536', 'PATEL RAJ KETAN', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107537', '201260107537', 'NEELGAR NAMRATA', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107538', '201260107538', 'CHANDARIA KARAN PRAFULBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107539', '201260107539', 'KHETARIYA DIPALI KANJIBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107541', '201260107541', 'RAJ NISARG D.', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107542', '201260107542', 'PANCHAL RUDRA .', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107543', '201260107543', 'SIRODARIYA ANISHA .', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107544', '201260107544', 'RAYTHATHA HET DEVENDRA', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107546', '201260107546', 'KOTHEKAR AKSHEN RAJENDRABHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107547', '201260107547', 'PRAJAPATI DEVANSHU BALDEVBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107548', '201260107548', 'SOLANKI YASH .', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260107549', '201260107549', 'PARMAR TIRTHRAJSINH VIKRAMSINH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116001', '201260116001', 'VEKARIYA NILESH MANSUKHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116002', '201260116002', 'THAKKAR DHRUV', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116003', '201260116003', 'MISHRA NAITIK ALKESH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116004', '201260116004', 'PATEL TIRTH MAHESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116005', '201260116005', 'DAVE DEV', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116006', '201260116006', 'PATEL DIVYESH BRIJESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116007', '201260116007', 'PATEL KHUSHI .', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116008', '201260116008', 'SHAH DEEP RAJESH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116010', '201260116010', '. MOHAMMAD ZAKI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116011', '201260116011', 'GOHIL VISHVA ASHOKBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116012', '201260116012', 'PATEL DARSHIL .', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116013', '201260116013', 'GOSWAMI HRIDAY PUSHPGIRI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116014', '201260116014', 'PATEL YASHKUMAR MAHENDRABHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116015', '201260116015', 'SHELADIYA HARSHKUMAR VINODRAY', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116016', '201260116016', 'BORSE DHYEY NAYANKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116017', '201260116017', 'PATEL SAKSHI .', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116018', '201260116018', 'JADAV GAURANG .', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116019', '201260116019', 'ASODARIYA MEET', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116020', '201260116020', 'NAKRANI DARSHANA MUKESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116021', '201260116021', 'DODIYA RAJVI GOPALBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116022', '201260116022', 'PATEL JAINIL NARAYANBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116023', '201260116023', 'PATEL SACHINKUMAR SURESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116024', '201260116024', 'PANCHAL KUSHAL MUKESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116025', '201260116025', 'PATEL PRERNA AMITKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116026', '201260116026', 'SHAH VISHWAM', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116027', '201260116027', 'BHORANIYA DEVENDRA RASIKLAL', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116028', '201260116028', 'DHANANI MEETKUMAR BAKULBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116029', '201260116029', 'ITALIYA SAVAN GOVINDBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116030', '201260116030', 'BHARWAD JAY BACHUBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116031', '201260116031', 'PATEL HARSHIL RAKESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116032', '201260116032', 'PANCHAL RUSHIL RAKESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116033', '201260116033', 'SUHAGIYA OM DIPAKKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116034', '201260116034', 'PARMAR YOGI MAHESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116035', '201260116035', 'JADEJA KULDEEPSINH KIRITSINH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116036', '201260116036', 'KALSARIYA PARTH ANANDBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116037', '201260116037', 'MISTRY DARSHIT ASHOKBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116038', '201260116038', 'PATEL VIVEK MUKESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116039', '201260116039', 'PRAJAPATI JAY SHAILESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116040', '201260116040', 'BALDANIYA JEET .', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116041', '201260116041', 'BALDANIYA JAY BHAVESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116042', '201260116042', 'PATEL DEVANGKUMAR MAHESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116043', '201260116043', 'SORAMIYA YOGESH ASHWINBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116044', '201260116044', 'PATEL JAY PANKAJBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116045', '201260116045', 'RAJPUT SHUBHAM JAGANNATH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116046', '201260116046', 'JADAV PINKAL MANSUKHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116047', '201260116047', 'RAKHOLIYA AKSHAY VINUBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116048', '201260116048', 'THUMMAR SIDDHANT NITINBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116049', '201260116049', 'PATEL ARYA VIPUL', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116050', '201260116050', 'SHAH JAINAM NAINESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116051', '201260116051', 'MEHTA ANERI CHETANBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116052', '201260116052', 'DHARANI MILAN KESHUBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116053', '201260116053', 'PATEL ADIL .', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116055', '201260116055', 'VIRANI HONEYBEN .', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116056', '201260116056', 'GOPALANI DEEP JAGDISHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116057', '201260116057', 'DHOLAKIYA RAHUL HITESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116058', '201260116058', 'PATEL DEVANG RAJESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116059', '201260116059', 'DWIVEDI SHIVAM UMAKANT', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116501', '201260116501', 'PATEL RUSHALI DILIPKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116502', '201260116502', 'PATEL AYUSHI PRAKASHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116503', '201260116503', 'GAJJAR DHARTI .', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116504', '201260116504', 'GANDHI HETVI SUJALKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116505', '201260116505', 'CHAMPAVAT NAMRATA Y.', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116506', '201260116506', 'JETHAVA GAURAV ASHVINBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116507', '201260116507', 'DABHI SEJAL DEVENDRABHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116508', '201260116508', 'PRAJAPATI ROHIT PRAVINBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116509', '201260116509', 'GAJJAR SAHIL HASMUKHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116510', '201260116510', 'SOLANKI DHARTIBEN BHARATBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116511', '201260116511', 'PATEL KHYATI RAMESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0);
INSERT INTO `user` (`user_id`, `password`, `name`, `father_name`, `branch_id`, `mobile_number`, `profile`, `role`, `email`, `faculty_id`, `user_status`) VALUES
('201260116512', '201260116512', 'PATEL JAVLAN JAYBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116513', '201260116513', 'PATEL SHIVKUMAR RAJNIKANT', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116514', '201260116514', 'PATEL URVI DINESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116515', '201260116515', 'PATEL HEET JAYESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116516', '201260116516', 'PATEL ANVI DINESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116517', '201260116517', 'HIRPARA ANIKET .', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116518', '201260116518', 'MEWADA HITEN .', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260116519', '201260116519', 'BAROT JAY KAMALBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260131001', '201260131001', 'MUKUL JAIN .', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260131003', '201260131003', 'PATEL HARSH M.', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260131004', '201260131004', 'PATEL KAUSHALKUMAR BHUPENDRABHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260131005', '201260131005', 'KUMAWAT SAROJ SHANKARLAL', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260131006', '201260131006', 'RAVAL KUSH DILIPKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260131007', '201260131007', 'PATEL ASKABEN', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260131009', '201260131009', 'PATEL RUDRAM SUSHRUTKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('201260131010', '201260131010', 'GOLAKIYA SARTHAK JAYESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107001', '211260107001', 'BALAR VISHVKUMAR ASHISHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107002', '211260107002', 'GUPTA SARVAGYA', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107003', '211260107003', 'RANA KARTVYA SANJAYKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107004', '211260107004', 'PATEL KRIT JITENDRABHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107005', '211260107005', 'DHADUK DIVYESH HASMUKHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107006', '211260107006', 'RAJPAL AAYUSH KEYURBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107007', '211260107007', 'PATEL MEET PARESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107008', '211260107008', 'MISTRY SMIT NARESH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107009', '211260107009', 'PATEL ANSHU KETANKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107010', '211260107010', 'SAIYED MOHAMMADSADAB KHALIDAHMED', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107011', '211260107011', 'BUTANI ROMAN PARESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107012', '211260107012', 'TALSANIA MEGHA', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107013', '211260107013', 'LADANI TIYA MANISHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107014', '211260107014', 'SENGHANI HARSHIL DHANJI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107015', '211260107015', 'PRAJAPATI PRINCE RAKESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107016', '211260107016', 'SUTHAR PRAKASHKUMAR RANCHHODLAL', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107017', '211260107017', 'PATEL LIZA JAYESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107018', '211260107018', 'PATEL SHREYAS RAMESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107019', '211260107019', 'THAKER KAVAN ASIM', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107020', '211260107020', 'PATEL PRATHAM JAYESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107021', '211260107021', ' KULDIP', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107022', '211260107022', 'SOLANKI HARSHIDA DAHYABHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107023', '211260107023', 'PATEL ISHAN BHAVESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107024', '211260107024', 'GADHIYA VISHVKUMAR KIRITKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107025', '211260107025', 'JANI DHARMIK', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107026', '211260107026', 'PATADIA DEVANSHI TEJAS', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107027', '211260107027', 'PATEL JILKUMAR KAMLESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107028', '211260107028', 'DWIVEDI RADHIKA HARISHANKAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107029', '211260107029', 'RAJYAGURU RUDRA MAHENDRABHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107030', '211260107030', 'DALWADI ANSH MUKESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107031', '211260107031', 'VAGHELA KUNJAN MAHESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107032', '211260107032', '  ANKIT RAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107033', '211260107033', 'SHARMA MANISH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107034', '211260107034', 'PATEL BANSARI MUKESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107035', '211260107035', 'DODIYA VISHAKHA DEVABHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107036', '211260107036', 'PATEL MEET KAMLESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107037', '211260107037', 'JADAV VISHAL NATHABHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107038', '211260107038', 'PATEL YUG ROHITBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107039', '211260107039', 'PATEL KUSH ASHISHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107040', '211260107040', 'SHARMA SUDHIRKUMAR RAKESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107041', '211260107041', 'SHAH BHAGYA ALKESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107042', '211260107042', 'BHAVSAR JAY ASHOKBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107043', '211260107043', 'PANSURIYA DEEP JIGNESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107044', '211260107044', 'KOTADIYA BHAUTIK VALLBHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107045', '211260107045', 'DUNGARANI HASTI LABHUBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107046', '211260107046', 'GHORI DISHA MAHESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107047', '211260107047', 'SANGHANI KEVALKUMAR HITESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107048', '211260107048', 'SHIROYA NAYAN VIJAYBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107049', '211260107049', 'PATEL PARAM CHIRAGBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107050', '211260107050', 'VANPARIYA SHYAM PANKAJBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107051', '211260107051', 'POPAT DHRUV ASHVINBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107052', '211260107052', 'PATEL DIVYANG NIMESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107053', '211260107053', 'PANDYA SAMIP MUKESH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107054', '211260107054', 'PATEL RIDHAM DHARMENDRABHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107055', '211260107055', 'GONDALIYA PARTH BATUKBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107056', '211260107056', 'SHAH PANKIT', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107057', '211260107057', 'BHIKADIYA MIRAL KALPESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107058', '211260107058', 'GEDIYA JENIL MANISHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107059', '211260107059', 'CHIHALA OM DIPAKBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107060', '211260107060', 'PIPALIYA RUSHI HITESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107061', '211260107061', 'PATEL JAY VASUDEVBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107062', '211260107062', 'PATEL DIYABEN MAHENDRABHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107063', '211260107063', 'PATEL KUSH AMITKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107065', '211260107065', 'CHAUHAN HARSHIT CHANDRESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107066', '211260107066', 'PATEL DHARMIK NALINBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107067', '211260107067', 'DAVE JAY NIMESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107068', '211260107068', 'MODH JANKI AMITKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107069', '211260107069', 'PATEL VAIDEHI VIMALKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107070', '211260107070', 'RAJPUT DEVANSH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107071', '211260107071', 'MOVALIYA PARTH ARVINDBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107072', '211260107072', 'AGRAWAL RAJ GHANSHYAMBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107074', '211260107074', 'BHATT SUHANI JATINKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107075', '211260107075', 'VYAS JEET BIPINKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107076', '211260107076', 'CHAUHAN PRINITKUMAR DILIPBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107077', '211260107077', 'VYAS JAY BIPINKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107078', '211260107078', 'JIVARAJANI ABHISHEK VIJAYBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107079', '211260107079', 'CHETTIYAR AMALDAS SIVADAS', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107080', '211260107080', 'MUNUGAPATI DARSHAN VENUGOPAL', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107081', '211260107081', 'RATHOD YUVRAJSINH PARESHSINH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107082', '211260107082', 'NADODA RACHNA RAMESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107083', '211260107083', 'PATEL SAURAV PANKAJKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107084', '211260107084', 'AMIN PARANJ DHIREN', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107085', '211260107085', 'PATEL NIKHILKUMAR VASUDEVBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107086', '211260107086', 'TALATI DEVANSHU', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107087', '211260107087', 'VASANI SUJAL MUKESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107088', '211260107088', 'JANI MEET PARESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107089', '211260107089', 'CHITARA KRISHIL PRAFULKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107090', '211260107090', 'PATEL URMIK NARESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107091', '211260107091', 'JOSHI PRACHI OMKAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107092', '211260107092', 'PATEL SANJANA BHARATKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107093', '211260107093', 'BAVISHI JENISHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107094', '211260107094', 'AMIN MEET ANANDKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107095', '211260107095', 'THAKOR SANJAYBHAI NATVARJI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107096', '211260107096', 'JOSHI KATHAN NITINBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107097', '211260107097', 'PATEL JAAN RAJENDRAKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107098', '211260107098', 'PARMAR PARTH SATISH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107099', '211260107099', 'VACHHETA KIRANBEN HASMUKHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107100', '211260107100', 'PATEL JAY DHARMENDRABHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107101', '211260107101', 'SHAH MANSI PARESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107102', '211260107102', 'SONGARA MANISH ARVINDBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107103', '211260107103', 'JADAV SACHINKUMAR NAREN', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107104', '211260107104', 'PATEL SHAILY DINESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107105', '211260107105', 'TRIVEDI MEET BHADRESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107106', '211260107106', 'PATEL KUSHAL SHAILESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107107', '211260107107', 'GHANCHI MOHAMED ARSH MOHAMED ARIF', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107108', '211260107108', 'NAKUM KRUSHNARAJSINH VIJAYSINH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107109', '211260107109', 'DALWADI DARSHAN ASVINKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107110', '211260107110', 'GALIYEL MEET .', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107111', '211260107111', 'CHOTALIYA AASHISH JIVANBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107112', '211260107112', 'CHAVDA ADITYASINH PRAVINSINH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107113', '211260107113', '  NEHA SUKHPAL', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107501', '211260107501', 'PATEL DHAIRYA JAYESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107502', '211260107502', 'PANDYA AUM MIHIR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107503', '211260107503', 'BHORANIYA YASHKUMAR CHAMANBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107504', '211260107504', 'PATEL AKSHAR GHANSHYAMBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107505', '211260107505', 'PANDYA VIDHI PARAS', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107506', '211260107506', 'SUTHAR HARSH JASHVANTKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107507', '211260107507', 'CHAUHAN KRUPEN SANJAYBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107508', '211260107508', 'SHAIKH MOHAMMED ANAS', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107509', '211260107509', 'GAJJAR SMIT KETANKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107510', '211260107510', 'SHAIKH MOHAMMED RAYAN', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107511', '211260107511', 'SONI MOHIT BHARGAVBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107512', '211260107512', 'SONI KRUNAL PRAVINBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107513', '211260107513', 'MAKWANA NEEL KIRITKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107514', '211260107514', 'JINGAR YUKTI KAMLESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107515', '211260107515', 'GHADGE HETVI PIYUSHRAO', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107516', '211260107516', 'PANCHAL NIRAV VIKRAMBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107517', '211260107517', 'DARJI KHUSHI DILIPKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107518', '211260107518', 'SAVALIYA DHARMI VIRENBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107519', '211260107519', 'BHALANI AXAT VYOMESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107520', '211260107520', 'DOMADIA NENSHIBEN YOGESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107521', '211260107521', 'PATEL KRUPA ARVINDBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107522', '211260107522', 'PANCHAL VAIDEHI TANMAYKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107523', '211260107523', 'TOMAR BHARATSINGH DEVENDRASINGH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107524', '211260107524', 'SHAH MANAN TUSHARKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107525', '211260107525', 'SUTHAR SHUBHAM ANILKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107526', '211260107526', 'CHOTALIYA DARSHIL ASHOKBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107527', '211260107527', 'PATEL SAHIL DAHYABHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107528', '211260107528', 'SUTHAR SHUBHAM VIJAYBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107529', '211260107529', 'PATEL KETAN NARESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107530', '211260107530', 'PATEL PARTH ASHOKBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107531', '211260107531', 'GOTECHA YUG CHETAN', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107532', '211260107532', 'PATEL YUG JAYANTILAL', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107533', '211260107533', 'DESAI LAKHABHAI BHIKHABHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107534', '211260107534', 'PATEL DHARMIK', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107535', '211260107535', 'PATWARI SAKSHI JAYESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107536', '211260107536', 'DHADUK PARTH PRAVINBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107537', '211260107537', 'PATEL ABHISHEK RAJESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107538', '211260107538', 'KURESHI ANASHBHAI MANVARBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107539', '211260107539', 'DAVE KHUSHI AJAYKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107540', '211260107540', 'RAVAL HIRVA PRAKASHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107541', '211260107541', 'THAKKAR SHAKSHI VIPULKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107542', '211260107542', 'TRIVEDI MAHARSHI JAGDEEP', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107543', '211260107543', 'NAYAK PRACHI PANKAJKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107544', '211260107544', 'PARMAR DEVAM HARDIKBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107545', '211260107545', 'PANCHAL VANDITA VINODBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107546', '211260107546', 'RATHOD SHRUTI KISHORBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107547', '211260107547', 'GANDHI NIHARI JIGNESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107548', '211260107548', 'SHIROYA YASH DINESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107549', '211260107549', 'RAJPUT GOPENDRASINH MRUGESHSINH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260107550', '211260107550', 'THAKER VRAJ BHAVESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116001', '211260116001', 'AAHIR SUMIL RAMESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116002', '211260116002', 'PANDYA DIDHITIKUMAR RAJUBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116003', '211260116003', 'MEWADA ARYAN MAHENDRAKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116004', '211260116004', 'JANI RUDRA DARSHIN', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116005', '211260116005', 'DABHI PARTH PRAVINBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116007', '211260116007', 'BALVA ALIRAZA ROSHANALI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116008', '211260116008', 'PANCHAL SMITA BHAGVATILAL', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116009', '211260116009', 'PATEL HEET DHARMENDRAKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116010', '211260116010', 'BUDDHADEV DRASHTI BHUPENDRABHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116011', '211260116011', 'DARJI ROHAN SHAILESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116012', '211260116012', 'PATEL NIMA SUNILKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116013', '211260116013', 'DOBARIYA HIMANSHUKUMAR DINESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116014', '211260116014', 'TALSANIYA SAHIL ASHOKBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116015', '211260116015', 'VANPARIYA SUJAL BHAVINBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116016', '211260116016', 'DHANKECHA HARSHIL MAHESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116018', '211260116018', 'DOMADIYA TANISHA BATUKBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116019', '211260116019', 'PATEL SHREENA ASHVINKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116020', '211260116020', 'KATHROTIYA HARSHILKUMAR CHATURBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116021', '211260116021', 'PATEL PREET SURESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116022', '211260116022', 'SHAIKH MOHAMMAD REHAN MD YUSUF', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116023', '211260116023', 'SAVALIYA HETVI KISHORBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116024', '211260116024', 'MITHAIWALA ABBAS KURESH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116025', '211260116025', 'PATEL HENIL JIGNESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116026', '211260116026', 'NAKARANI JENIS PRAKASHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116027', '211260116027', 'PATEL YASH ROHITBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116028', '211260116028', 'PATEL JAXAY DILIPKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116029', '211260116029', 'PATEL HEET PRAVINCHANDRA', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116030', '211260116030', 'MAKWANA JINALBEN PUNJAJI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116031', '211260116031', 'GANDHI UTSAV RAMCHANDRA', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116032', '211260116032', 'PATEL HARSH DINESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116033', '211260116033', 'RAMI NIKITA KIRTIBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116034', '211260116034', 'DARJI DHIRALI SANJAYKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116035', '211260116035', 'JAIN KRISH PAVAN', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116036', '211260116036', 'PATEL VISHV MUKESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116037', '211260116037', 'PATEL DHRUVI RAJESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116038', '211260116038', 'PANCHAL SAKSHI RAKESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116039', '211260116039', 'JAMARIYA HEET', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116040', '211260116040', 'KARANJE JANVI MANOJ', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116041', '211260116041', 'AHIR VAIBHAV ASHISHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116042', '211260116042', 'PAWAR NEEL PRAMOD', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116043', '211260116043', 'BRAHMBHATT ARTH JITENDRA', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116044', '211260116044', 'ACHARYA BANSRI HETALKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116045', '211260116045', 'PARMAR NETRAA KIRITKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116046', '211260116046', 'PRIYANKAR MEET JIGNESH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116047', '211260116047', 'RATHOD PRANAYSINH SHAILENDRASINH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116048', '211260116048', 'SAVALIYA KAXIT RAJESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116049', '211260116049', 'CHARI ANIRUDHA ANISH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116050', '211260116050', 'PATEL JAY RAKESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116051', '211260116051', 'PATEL RUTVIKKUMAR ASHVINKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116052', '211260116052', 'RATHOD AKSHAYRAJSINH JASVANTSINH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116053', '211260116053', 'PATEL ANUJKUMAR VINODBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116054', '211260116054', 'PATEL JAINAMKUMAR SANJAYBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116055', '211260116055', 'NOGI GURSHIN JOGENDRASING', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116056', '211260116056', 'PRAJAPATI HARDIK VINUBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116057', '211260116057', 'PATEL KRISH UMESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116058', '211260116058', 'SINGH NISHAKUMARI BIRBAHADUR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116059', '211260116059', 'THAKKAR VIVEK PRASHANTKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116060', '211260116060', 'PRAJAPATI PRATIK SURESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116061', '211260116061', 'PRAJAPATI DEV PRAKASHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116062', '211260116062', 'PATEL SANDIPKUMAR RAJESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116501', '211260116501', 'DAVE MEET VIPULKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116502', '211260116502', 'JOSHI KUNAL ASHOKBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116503', '211260116503', 'PATEL DHRUV HARIKRUSHNABHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116504', '211260116504', 'PRAJAPATI DHAIRYA JIGESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116505', '211260116505', 'KADIYA NACHIKETA SITARAM', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116506', '211260116506', 'RANA DEVANG BHARATKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116507', '211260116507', 'MISTRY KINJAL KAMLESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116508', '211260116508', 'SINGH NEHA RAJESHWAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116509', '211260116509', 'PRAJAPATI NIRAV MUKESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116510', '211260116510', 'MEHTA PRACHI PRITESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116511', '211260116511', 'THAKKAR MITALI RAVINDRABHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116512', '211260116512', 'PANCHOLI AKSHIL SHIRISHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116513', '211260116513', 'BHIKADIYA PRIYANK KISHORBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116514', '211260116514', 'GAJJAR DEV BHUPENDRABHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116515', '211260116515', 'BOGHARA CHINTAN SHAILESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116516', '211260116516', 'KOSHTI MOHNISH KHEMCHANDBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116517', '211260116517', 'PRAJAPATI TULSI PRAVINBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116518', '211260116518', 'BHAVSAR DARSHIL NANDIPKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260116519', '211260116519', 'MODI NEEL SANJAYKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131001', '211260131001', 'PRAJAPATI KAILASH BHARATBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131002', '211260131002', 'PITHADIYA YASH RAJESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131003', '211260131003', 'VASWANI SAUMYA .', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131004', '211260131004', 'PATEL KASHISH DHARMENDRABHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131005', '211260131005', 'DABHI VATSALYA ROHITBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131006', '211260131006', 'KODALA TVISHA UPENDRABHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131007', '211260131007', 'VIRAMGAMA NITI RASHMINBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131008', '211260131008', 'PATEL YASH MAHENDRABHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131009', '211260131009', 'PATEL RAVIKUMAR JITENDRABHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131010', '211260131010', 'SRIVASTAV SHASHANK SURYAPRAKASH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131011', '211260131011', 'PARMAR RAHIL VISHNUBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131012', '211260131012', 'PATEL VISHWA JAYESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131013', '211260131013', 'PATEL DIGESH DHARMENDRAKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131014', '211260131014', 'PATEL ABHA MANISH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131015', '211260131015', 'GIRNARA PRIYANSHI HEMENKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131016', '211260131016', 'SUTARIYA ISHITA BHARATBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131017', '211260131017', 'SONI KHUSHAL', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131018', '211260131018', 'DAVE RUDRA BHAVIN', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131019', '211260131019', 'CHANDEKAR KOMAL PRAFULBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131020', '211260131020', 'KATHIRIYA HARSHIL KIRANKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131022', '211260131022', 'PATEL HIRAK KALPESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131023', '211260131023', 'PRAJAPATI KARN URMISHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131024', '211260131024', 'DESAI KAVAN MOTIBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131025', '211260131025', 'UDANI SIMOLI MITESH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131026', '211260131026', 'PANCHAL RAKSHIT NIRAV', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131027', '211260131027', 'PRAJAPATI KIRTAN MAHENDRABHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131028', '211260131028', 'THAKKAR DHRUV HARSHADBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131029', '211260131029', 'JOSHI DEV MAYURKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131030', '211260131030', 'DAVE HARSHANSHU PRAGNESH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131031', '211260131031', 'PATEL KRISHKUMAR NILESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131032', '211260131032', 'MARETHA KUNAL ANILBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131033', '211260131033', 'SENVA VISHALKUMAR SURESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131034', '211260131034', 'PATEL MANSI DWARKADAS', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131035', '211260131035', 'LATHIYA TIRTH MANJIBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131036', '211260131036', 'PATEL DHRUPAL SANDIPBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131037', '211260131037', 'PATEL OM KALPESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131038', '211260131038', 'TANDEL YASH BHAGWANBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131039', '211260131039', 'MAHESHWARI VEDANSH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131040', '211260131040', 'JYOTIKAR TIRTH ASIT', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131041', '211260131041', 'JOSHI HARD PRADIPKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131042', '211260131042', 'VASHISTHA MANTHAN ANILBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131043', '211260131043', 'DHOLAKIYA BRIJESH AJAYBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131044', '211260131044', 'KANAKIA CHARMI RAJESH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131045', '211260131045', 'PATEL HARSH VASUDEVBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131046', '211260131046', 'PATEL TAKSH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131047', '211260131047', 'PATEL HARSH DIVYAKANT', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131048', '211260131048', 'PATEL YASH YATINKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131049', '211260131049', 'DAVE OM BHASKAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131050', '211260131050', 'PUSHKARNA ASHISH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131051', '211260131051', 'PATEL JAIMIN PINESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131052', '211260131052', 'CHAUHAN MEET KAUSHIKKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131053', '211260131053', 'PATEL KRUSHIL ASHOKBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131054', '211260131054', 'PATEL DHRUV DILIPKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131055', '211260131055', 'SHAH ANIKET BIJALKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131056', '211260131056', 'CHAUHAN GAGANJEET SINGH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131057', '211260131057', 'MAHESHWARI KASHISH DINESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131058', '211260131058', 'ACHARYA MESHWA KALPESH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131059', '211260131059', 'PATEL AMARDEEP SANJAYBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131060', '211260131060', 'YADAV ANURAG RAM', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131061', '211260131061', 'SHAIKH MOHAMAAD AYAN', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131062', '211260131062', 'PATEL DHARVIK SURESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131501', '211260131501', 'BHATT DHWANIL ANISH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131502', '211260131502', 'TALA AKASH HITESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131503', '211260131503', 'PARIKH ROHAN RAHUL', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131504', '211260131504', 'PANCHAL RIYABEN BHADRESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131505', '211260131505', 'JOSHI TANUJ UMESH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131506', '211260131506', 'PAREKH HARSH DEEPAKKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131507', '211260131507', 'MAKWANA PARTHKUMAR DIPAKBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131508', '211260131508', 'MEHTA HARSH UMESHKANT', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131509', '211260131509', 'KAVAIYA RAJ KAMLESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131510', '211260131510', 'DESAI SHREEYA MAYURESH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131511', '211260131511', 'LALAKIYA HARSH GIRISHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131512', '211260131512', 'THAKRAR DIXIT HEMAL', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131513', '211260131513', 'SUREJA KRUSHNAKUMAR ASHOKBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131514', '211260131514', 'LATHIYA JAY BHAVESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131515', '211260131515', 'PARMAR PUSHPRAJSINH KIRITSINH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131516', '211260131516', 'VISHWAKARMA ANURAG MANOJ', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131517', '211260131517', 'SHOW PAWAN', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260131518', '211260131518', 'DARJI VRAJKUMAR RAKESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260132001', '211260132001', 'MESHIYA JENI NARESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260132002', '211260132002', 'PORIYA HETVI MEHULKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260132003', '211260132003', 'PATHAN GALEEB', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260132004', '211260132004', 'PRAJAPATI RUSHIL RAMUBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260132005', '211260132005', 'PATEL MIT SATISHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260132006', '211260132006', 'PATEL PRIYANK DOLLARKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260132007', '211260132007', 'GHADIALI ANSH KIRTAN', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260132008', '211260132008', 'BAMBHAROLIYA HARSHIT VIPULKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260132009', '211260132009', 'PATEL ANMOL DHARMESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260132010', '211260132010', 'GOHEL HARSHKUMAR GHANSHYAMBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260132011', '211260132011', 'DESAI PRUSHTI SHAILESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260132012', '211260132012', 'VAGHELA KHUSHI DHIRUBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260132013', '211260132013', 'LALWANI NEERAJ HARISHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260132014', '211260132014', 'PATEL DHRUV NILESHKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260132015', '211260132015', 'PATEL JINAL MAHENDRABHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260132017', '211260132017', 'PATEL VAIDEHI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260132018', '211260132018', 'PATEL JEET MANISH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260132019', '211260132019', 'PATEL PARTH DIPAKKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260132020', '211260132020', 'JASANI DAXIL GHANSHYAMBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260132021', '211260132021', 'CHAUHAN KASHYAP SATISH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260132022', '211260132022', 'JOSHI BABLIBEN LAXMINARAYAN', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260132023', '211260132023', 'PATOLIA HARSH JAMANBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260132024', '211260132024', 'PADIA KIRTI ATULBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260132025', '211260132025', 'AMIN MANAV PRAGNESH', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260132026', '211260132026', 'KHATRI ARYAN HEMALKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260132027', '211260132027', 'CHAVDA NEEL RAJESHBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260132028', '211260132028', 'MANIK KRUNAL VIJAYBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260132029', '211260132029', 'KHAPED JINALBEN BHUDARBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260132030', '211260132030', 'WALIA SHUBHRA BRIJENDRA', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260132031', '211260132031', 'PATHAN ATTAVARIS KHURSHIDALAM', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260132032', '211260132032', 'PATEL KEVAL NIKULKUMAR', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260132033', '211260132033', 'PATHAN ASFIYABANU ASLAMKHAN', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('211260132034', '211260132034', 'PATEL ABHA JATINBHAI', '', 'Information Technology', 1234567890, NULL, 2, 'abc@gmail.com', '', 0),
('Admin', 'Admin123', 'Dr. Ajay Upadhyaya-SETI', '', 'Information Technology', 9999999999, 'HOD.jpg', 0, 'admin@gmail.com', '', 0),
('depart1', 'depart1', 'Student Department', '', 'Information Technology', 1234567890, NULL, 4, 'student.help@sal.edu.in', '', 0),
('faculty1', 'faculty1', 'Piyush Patel', '', 'Information Technology', 1234567890, NULL, 3, 'piyush.patel@sal.edu.in', '1', 0);
INSERT INTO `user` (`user_id`, `password`, `name`, `father_name`, `branch_id`, `mobile_number`, `profile`, `role`, `email`, `faculty_id`, `user_status`) VALUES
('faculty2', 'faculty2', 'Akash Bhatt', '', 'Information Technology', 1234567890, NULL, 3, 'akash.bhatt@sal.edu.in', '2', 0),
('heet12', 'heet12', 'Heet', '', 'Information Technology', 12345678890, NULL, 1, 'heet@gmail.com', '', 1),
('Jatin27', 'Jatin27', 'Jatin', '', 'Information Technology', 9913321234, NULL, 1, 'jatin@gmail.com', '', 0),
('javlan12', 'javlan12', 'Javlan', '', 'Information Technology', 9876543210, NULL, 1, 'javlan@gmail.com', '', 0),
('library1', 'library1', 'Tejas Patel', NULL, '', 9090909090, NULL, 5, 'tejaspatel@gmail.com', '', 0),
('Shiv12', 'Shiv12', 'shiv', '', 'Information Technology', 9876543210, NULL, 1, 'shiv@gmail.com', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `work_table`
--

CREATE TABLE `work_table` (
  `work_id` int(12) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` varchar(50) NOT NULL,
  `faculty_name` varchar(255) NOT NULL,
  `work` varchar(255) NOT NULL,
  `work_status` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `work_table`
--

INSERT INTO `work_table` (`work_id`, `date_time`, `user_id`, `faculty_name`, `work`, `work_status`) VALUES
(65, '2023-06-18 20:23:25', 'faculty1', 'Piyush Patel', 'wefwef', '0'),
(66, '2023-06-18 20:23:25', 'faculty2', 'Akash Bhatt', 'wefwef', '1'),
(67, '2023-06-19 11:41:18', 'faculty2', 'Akash Bhatt', 'gazcvxazhnxv', '1\r\n'),
(68, '2023-06-19 19:19:49', 'faculty1', 'Piyush Patel', 'few', '1'),
(69, '2023-06-19 19:19:49', 'faculty2', 'Akash Bhatt', 'few', '1'),
(70, '2023-06-22 12:53:43', 'faculty1', 'Piyush Patel', 'Add Assignment', '1'),
(71, '2023-06-22 12:53:43', 'faculty2', 'Akash Bhatt', 'Add Assignment', '0'),
(72, '2023-06-22 21:51:55', 'faculty1', 'Piyush Patel', '89889', '0'),
(73, '2023-06-22 21:51:55', 'faculty2', 'Akash Bhatt', '89889', '0'),
(74, '2023-06-27 11:49:41', 'faculty1', 'Piyush Patel', 'Add Assignment', '0'),
(75, '2023-06-27 11:49:41', 'faculty2', 'Akash Bhatt', 'Add Assignment', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_issue`
--
ALTER TABLE `book_issue`
  ADD PRIMARY KEY (`book_issue_no`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `club`
--
ALTER TABLE `club`
  ADD PRIMARY KEY (`club_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `library_book`
--
ALTER TABLE `library_book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `notice_board`
--
ALTER TABLE `notice_board`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `sub_material`
--
ALTER TABLE `sub_material`
  ADD PRIMARY KEY (`material_id`);

--
-- Indexes for table `upload_material`
--
ALTER TABLE `upload_material`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `work_table`
--
ALTER TABLE `work_table`
  ADD PRIMARY KEY (`work_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_issue`
--
ALTER TABLE `book_issue`
  MODIFY `book_issue_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `club`
--
ALTER TABLE `club`
  MODIFY `club_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `library_book`
--
ALTER TABLE `library_book`
  MODIFY `book_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `notice_board`
--
ALTER TABLE `notice_board`
  MODIFY `notice_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `project_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `sub_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `sub_material`
--
ALTER TABLE `sub_material`
  MODIFY `material_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `upload_material`
--
ALTER TABLE `upload_material`
  MODIFY `doc_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `work_table`
--
ALTER TABLE `work_table`
  MODIFY `work_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
