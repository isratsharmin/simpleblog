-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2017 at 05:10 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php-project`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cart_id` int(11) NOT NULL,
  `cart_name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cart_id`, `cart_name`) VALUES
(1, 'Technology'),
(2, 'Computer'),
(3, 'Sports'),
(4, 'Business'),
(5, 'Bangladesh');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'admin', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_description` text NOT NULL,
  `post_image` varchar(500) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `post_date` varchar(255) NOT NULL,
  `year` varchar(5) NOT NULL,
  `month` varchar(10) NOT NULL,
  `post_timestamp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `post_title`, `post_description`, `post_image`, `cart_id`, `tag_id`, `post_date`, `year`, `month`, `post_timestamp`) VALUES
(1, 'Game', '<p><strong>gmnb hjkl</strong></p>\r\n', '1.jpg', 2, 1, '2017-08-08', '2017', '08', '1502143200'),
(2, 'Cause', '<p><strong>no cue cnoedaffi &nbsp;efrbbodd &nbsp; frdfkdsnskgn &nbsp;fwaepgjndf;lfdmv., skjND/b.d; &nbsp; &nbsp; dskvf</strong></p>\r\n\r\n<p><strong>vvdfsdinvsvnblc &nbsp; dskbo;ons&#39;vlkdfn&#39;lkdmcdcvsfd</strong></p>\r\n\r\n<p><strong>v fs[jodsjdsjdsjfdsodfs</strong></p>\r\n', '2.gif', 4, 2, '2017-08-08', '2017', '08', '1502143200'),
(3, 'Calender', '<p>Calendar, Calendar.&nbsp; this is calendar ...Calendar, Calender.&nbsp; this is calendar .... Calender, Calender.&nbsp; this is calendar .... Calendar, Calendar.&nbsp; this is calender ....Calender, Calender.&nbsp; this is calender ...Calendar, Calendar.&nbsp; this is calendar .... Calendar, Calendar.&nbsp; this is calendar ...Calendar, Calendar.&nbsp; this is calendar ....</p>\r\n', '3.jpg', 4, 1, '2017-08-10', '2017', '08', '1502316000'),
(4, 'Football', '<p>footbal is my favourite game.. footbal is my favourite game..</p>\r\n\r\n<p>footbal is my favourite game..</p>\r\n\r\n<p>footbal is my favourite game..</p>\r\n\r\n<p>footbal is my favourite game.. footbal is my favourite game..footbal is my favourite game.. footbal is my favourite game.. footbal is my favourite game.. footbal is my favourite game..</p>\r\n', '4.png', 3, 1, '2017-08-10', '2017', '08', '1502316000');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `tag_id` int(11) NOT NULL,
  `tag_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`tag_id`, `tag_name`) VALUES
(1, 'book '),
(2, 'mobile');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `c_email` varchar(255) NOT NULL,
  `c_url` varchar(500) NOT NULL,
  `c_message` text NOT NULL,
  `c_date` varchar(255) NOT NULL,
  `post_id` int(11) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`c_id`, `c_name`, `c_email`, `c_url`, `c_message`, `c_date`, `post_id`, `active`) VALUES
(1, 'is sh o', 'israt@mail.com', '', 'Good post', '2017-08-08', 2, 1),
(2, 'is sh o', 'israt@mail.com', '', 'Good post', '2017-08-08', 2, 0),
(3, 'is sh o', 'israt@mail.com', '', 'Good post', '2017-08-10', 2, 0),
(4, 'Samiha', 'sp@mail.co', '', 'It is useful post', '2017-08-10', 3, 1),
(5, 'Sharmin', 's@mail.com', '', 'htgsfkfwv  dgbkgmosjfodgkdg', '2017-08-10', 3, 1),
(6, 'Sharmin', 's@mail.com', '', 'htgsfkfwv  dgbkgmosjfodgkdg', '2017-08-10', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_footer`
--

CREATE TABLE `tbl_footer` (
  `id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_footer`
--

INSERT INTO `tbl_footer` (`id`, `description`) VALUES
(1, 'Copyright @2017 by ISI');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
