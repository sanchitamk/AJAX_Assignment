-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2023 at 04:44 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `contactform`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(20) NOT NULL,
  `Title` varchar(300) NOT NULL,
  `Body` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `Title`, `Body`) VALUES
(1, 'About Us', 'Overview ECT News Network is one of the most popular e-business and technology news publishers in the United States. Our network attracts a targeted audience of purchasing decision-makers who need timely business and tech industry news and reliable analysis. The network consists of these e-business ');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(20) NOT NULL,
  `Title` varchar(20) NOT NULL,
  `Author` varchar(20) NOT NULL,
  `Body` varchar(300) NOT NULL,
  `Likes` int(20) NOT NULL,
  `Featured` tinyint(1) NOT NULL,
  `image` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `Title`, `Author`, `Body`, `Likes`, `Featured`, `image`) VALUES
(9, 'Microsoft Copilot', 'By Rob Enderle', 'Microsoft recently announced that Copilot, the company’s implementation of generative AI, will be coming soon to Windows and Office 365. While Microsoft is already using generative AI in its Bing search engine, its introduction to Microsoft’s core productivity tools promises to redefine how we inter', 0, 0, 'industry1.jpeg'),
(10, 'Apple Virtual Launch', 'By Rob Enderle', 'I’ve been disappointed in almost all the launch events I’ve seen since we mainly moved to virtual events. Most aren’t that different than in-person events where the speaker(s) get up on stage and pontificate.', 0, 0, 'industry2.jpeg'),
(11, 'AnkerWork B600', 'By Jack M. Germain', 'The AnkerWork B600 Video Bar is a powerful all-in-one conferencing device that is probably more suited for a business conference room than a work-from-home office. AnkerWork tries to thread the needle in stitching together features that either user category finds attractive.', 0, 0, 'technical1.jpeg'),
(12, 'Passwordless World', 'By John P. Mello Jr.', 'Google hammered another nail in the coffin for passwords Tuesday when it announced it’s making passkeys the default login method for its personal accounts.', 0, 1, 'technical2.jpeg'),
(13, 'Generative AI', 'By Ryan Ries', 'Generative AI produces outputs with increasing similarity to human-generated content — and with exponentially greater efficiency.', 0, 0, 'career1.jpeg'),
(14, 'Worried About AI', 'By John P. Mello Jr.', 'Artificial intelligence concerns more Americans than it excites, although few think the technology will have a significant impact on their jobs, according to a pair of studies released Monday by a Washington, D.C. think tank.', 0, 0, 'career2.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `contactform`
--

CREATE TABLE `contactform` (
  `id` int(11) NOT NULL,
  `fName` varchar(20) NOT NULL,
  `lName` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `industry_interest` varchar(20) NOT NULL,
  `technical_interest` varchar(20) NOT NULL,
  `career_interest` varchar(20) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contactform`
--

INSERT INTO `contactform` (`id`, `fName`, `lName`, `email`, `industry_interest`, `technical_interest`, `career_interest`, `role`) VALUES
(31, 'Sanchita', 'Sharma', 'sanchitasharma2802@g', 'Not Interested', 'Interested', 'Interested', 'writer'),
(32, 'Sanchita', 'Sharma', 'sanchitasharma2802@g', 'Interested', 'Interested', 'Interested', 'contributor'),
(33, 'Sanchita', 'Sharma', 'sanchitasharma2802@g', 'Not Interested', 'Interested', 'Interested', 'administrator'),
(34, 'Mihir', 'Kumar', 'mk.2602@gmail.com', 'Interested', 'Interested', 'Not Interested', 'writer');

-- --------------------------------------------------------

--
-- Table structure for table `useridarticleid`
--

CREATE TABLE `useridarticleid` (
  `articleid` int(20) NOT NULL,
  `userid` int(20) NOT NULL,
  `id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'Sanchita', 'abcdef', 'Administrator'),
(3, 'Arpit', 'arpit', 'Member'),
(4, 'casey', 'just', 'Member'),
(6, 'Vishal', 'Sharma', 'Member'),
(7, 'Arpit', 'arpit', 'Member');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactform`
--
ALTER TABLE `contactform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `useridarticleid`
--
ALTER TABLE `useridarticleid`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articleid` (`articleid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `contactform`
--
ALTER TABLE `contactform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `useridarticleid`
--
ALTER TABLE `useridarticleid`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `useridarticleid`
--
ALTER TABLE `useridarticleid`
  ADD CONSTRAINT `useridarticleid_ibfk_1` FOREIGN KEY (`articleid`) REFERENCES `articles` (`id`),
  ADD CONSTRAINT `useridarticleid_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
