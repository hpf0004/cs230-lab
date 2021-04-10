-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 24, 2021 at 06:07 PM
-- Server version: 5.7.33-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs230`
--

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `pid` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `descript` text NOT NULL,
  `picpath` varchar(80) NOT NULL,
  `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`pid`, `title`, `descript`, `picpath`, `upload_date`, `rating`) VALUES
(1, '1', 'fahklvbwkj', '../gallery/6050f072977812.83344643.jpeg', '2021-03-16 13:52:50', NULL),
(2, '2', 'gjsbionghuislv', '../gallery/6050f0be0c75b3.01966674.jpeg', '2021-03-16 13:54:06', NULL),
(3, '3', 'gevusilnhgiu', '../gallery/6050f0d17ec892.03429280.jpeg', '2021-03-16 13:54:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `pid` int(11) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `profilepic` varchar(50) NOT NULL DEFAULT '../images/default.jpeg'
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`pid`, `fname`, `uname`, `profilepic`) VALUES
(1, 'Harry', 'snitchesgetstitches', '../profiles/6050f055efaf79.76888626.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `revid` int(11) NOT NULL COMMENT 'id for each review',
  `itemid` int(11) NOT NULL COMMENT 'item being reviewed',
  `uname` varchar(80) NOT NULL COMMENT 'user reviewing item',
  `title` varchar(60) NOT NULL,
  `reviewtext` text NOT NULL,
  `revdate` datetime NOT NULL,
  `ratingnum` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT 'Is there at least one review?'
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`revid`, `itemid`, `uname`, `title`, `reviewtext`, `revdate`, `ratingnum`, `status`) VALUES
(1, 3, 'snitchesgetstitches', 'Test 1', 'Amazing!', '2021-03-16 21:00:46', 4, 1),
(2, 3, 'snitchesgetstitches', 'Test 2', 'fahivkbhfaskl', '2021-03-17 22:55:17', 2, 1),
(3, 3, 'snitchesgetstitches', 'Test 3', 'fevuilnfwehfuiwl', '2021-03-17 22:55:33', 4, 1),
(4, 3, 'snitchesgetstitches', 'Test 4', 'gsvusidlvnbfheusil', '2021-03-17 22:55:46', 1, 1),
(5, 3, 'snitchesgetstitches', 'Test 5', 'This is great!', '2021-03-17 23:51:40', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `fname`, `lname`, `uname`, `password`, `email`) VALUES
(1, 'Harry', 'Potter', 'snitchesgetstitches', '$2y$10$1mtZph77awHpg2M0p1TcxOOLNaCzSxmg7YAjW5gmhlOdYiMjvwTqm', 'triwizardchamp@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`revid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `revid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id for each review', AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
