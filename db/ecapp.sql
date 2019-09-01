-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 08, 2019 at 12:11 PM
-- Server version: 5.5.62-0+deb8u1
-- PHP Version: 7.0.33-1+0~20181208203043.8+jessie~1.gbp2ff763

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ecapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `course_schedule`
--

CREATE TABLE IF NOT EXISTS `course_schedule` (
`event_id` int(11) NOT NULL,
  `courseid` int(11) NOT NULL,
  `event` text NOT NULL,
  `eventdate` date DEFAULT NULL,
  `eventfrom` datetime NOT NULL,
  `eventto` datetime NOT NULL,
  `comment` text NOT NULL,
  `urgent` smallint(1) NOT NULL COMMENT 'star system?',
  `changed` int(11) NOT NULL COMMENT 'changed marker, maybe with different stages',
  `changedmessage` text NOT NULL COMMENT 'wird derzeit nicht benötigt, einzelne Nachrichten abzusetzen',
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_schedule`
--

INSERT INTO `course_schedule` (`event_id`, `courseid`, `event`, `eventdate`, `eventfrom`, `eventto`, `comment`, `urgent`, `changed`, `changedmessage`, `active`) VALUES
(12, 1, 'Breakfast', '2019-07-31', '2019-07-31 08:00:00', '2019-07-31 09:00:00', '', 0, 0, '', 1),
(18, 1, 'Guided 16th Karmapa Meditation', '2019-07-30', '2019-07-30 20:00:00', '2019-07-30 21:00:00', '', 0, 1, '', 1),
(19, 1, 'Dharma topics with traveling teachers', '2019-07-30', '2019-07-30 10:00:00', '2019-07-30 12:00:00', '', 0, 1, '', 1),
(20, 1, 'Lecture by Tony Karam', '2019-07-30', '2019-07-30 15:00:00', '2019-07-30 17:30:00', '', 0, 1, '', 1),
(26, 1, 'Welcome ceremony and mandala offering for Gyalwa Karmapa & Thugseyla', '2019-08-02', '2019-08-02 16:00:00', '2019-08-02 18:00:00', '', 0, 1, '', 1),
(27, 1, 'Guided 16th Karmapa Meditation', '2019-08-02', '2019-08-02 20:00:00', '2019-08-02 21:00:00', '', 0, 1, '', 1),
(29, 1, 'Dharma topics with Traveling Teachers', '2019-08-02', '2019-08-02 10:00:00', '2019-08-02 12:00:00', '', 0, 1, '', 1),
(33, 1, 'Personal Practice', '2019-08-01', '2019-08-01 10:00:00', '2019-08-01 12:00:00', '', 0, 0, '', 1),
(34, 1, 'Lecture with Traveling Teachers', '2019-08-01', '2019-08-01 15:00:00', '2019-08-01 18:00:00', '', 0, 0, '', 1),
(35, 1, 'Lecture with Traveling Teachers', '2019-08-01', '2019-08-01 20:00:00', '2019-08-01 22:00:00', '', 0, 0, '', 1),
(36, 1, 'Ngondro explanations with Traveling Teachers', '2019-08-03', '2019-08-03 10:00:00', '2019-08-03 12:00:00', '', 0, 1, '', 1),
(37, 1, 'Teachings on the 37 Practices of a Bodhisattva with Gyalwa Karmapa', '2019-08-03', '2019-08-03 15:00:00', '2019-08-03 18:00:00', '', 0, 1, '', 1),
(38, 1, 'Guided 16th Karmapa Meditation & Presentations', '2019-08-03', '2019-08-03 20:00:00', '2019-08-03 23:00:00', '', 0, 1, '', 1),
(39, 1, 'Dharma topics with Traveling Teachers', '2019-08-05', '2019-08-05 10:00:00', '2019-08-05 12:00:00', '', 0, 0, '', 1),
(40, 1, 'Lecture with Traveling Teachers', '2019-08-05', '2019-08-05 15:00:00', '2019-08-05 18:00:00', '', 0, 0, '', 1),
(41, 1, 'Guided 16th Karmapa Meditation & Presentations', '2019-08-05', '2019-08-05 20:00:00', '2019-08-05 22:00:00', '', 0, 0, '', 1),
(42, 1, 'Dharma topics with Traveling Teachers', '2019-08-06', '2019-08-06 10:00:00', '2019-08-06 12:00:00', '', 0, 0, '', 1),
(43, 1, 'Lecture with Traveling Teachers', '2019-08-06', '2019-08-06 15:00:00', '2019-08-06 18:00:00', '', 0, 0, '', 1),
(44, 1, 'Guided 16th Karmapa Meditation', '2019-08-06', '2019-08-06 20:00:00', '2019-08-06 21:00:00', '', 0, 0, '', 1),
(45, 1, 'Dharma Topics with Traveling Teachers', '2019-08-07', '2019-08-07 10:00:00', '2019-08-07 12:00:00', '', 0, 0, '', 1),
(46, 1, 'Lecture with Lama Ole Nydahl', '2019-08-07', '2019-08-07 15:00:00', '2019-08-07 18:00:00', '', 0, 0, '', 1),
(47, 1, 'Guided 16th Karmapa Meditation', '2019-08-07', '2019-08-07 20:00:00', '2019-08-07 21:00:00', '', 0, 0, '', 1),
(48, 1, 'Personal Practice', '2019-08-08', '2019-08-08 10:00:00', '2019-08-08 12:00:00', '', 0, 0, '', 1),
(49, 1, 'Lecture by Lama Ole Nydahl', '2019-08-08', '2019-08-08 15:00:00', '2019-08-08 18:00:00', '', 0, 0, '', 1),
(50, 1, 'Guided 16th Karmapa Meditation', '2019-08-08', '2019-08-08 20:00:00', '2019-08-08 21:00:00', '', 0, 0, '', 1),
(51, 1, 'Ngondro Explanations with Traveling Teachers', '2019-08-09', '2019-08-09 10:00:00', '2019-08-09 12:00:00', '', 0, 0, '', 1),
(52, 1, 'Lecture by Sherab Gyaltsen Rinpoche: The meaning of Guru Yoga', '2019-08-09', '2019-08-09 15:00:00', '2019-08-09 18:00:00', '', 0, 0, '', 1),
(53, 1, 'Guided 16th Karmapa Meditation', '2019-08-09', '2019-08-09 20:00:00', '2019-08-09 21:00:00', '', 0, 0, '', 1),
(54, 1, 'Diamond Mind Meditation & Preparation', '2019-08-10', '2019-08-10 10:00:00', '2019-08-10 11:00:00', '', 0, 1, '', 1),
(55, 1, 'Mahakala Empowerment with Sherab Gyaltsen Rinpoche', '2019-08-10', '2019-08-10 11:00:00', '2019-08-10 18:00:00', '', 0, 1, '', 1),
(56, 1, 'Diamond Mind Meditation & Preparation', '2019-08-11', '2019-08-11 10:00:00', '2019-08-11 11:00:00', '', 0, 0, '', 1),
(57, 1, 'Milarepa Empowerment with Sherab Gyaltsen Rinpoche', '2019-08-11', '2019-08-11 11:00:00', '2019-08-11 18:00:00', '', 0, 0, '', 1),
(58, 1, 'Diamond Mind Meditation & Preparation', '2019-08-04', '2019-08-04 10:00:00', '2019-08-04 11:00:00', '', 0, 0, '', 1),
(59, 1, 'Loving Eyes Empowerment with Gyalwa Karmapa', '2019-08-04', '2019-08-04 11:00:00', '2019-08-04 18:00:00', '', 0, 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
`imageid` int(11) NOT NULL,
  `image` varchar(20) NOT NULL COMMENT 'eventid_8numbers',
  `courseid` int(11) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jobcategories`
--

CREATE TABLE IF NOT EXISTS `jobcategories` (
`categoryid` int(11) NOT NULL,
  `category` text NOT NULL,
  `location` text NOT NULL,
  `comment` text NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobcategories`
--

INSERT INTO `jobcategories` (`categoryid`, `category`, `location`, `comment`, `active`) VALUES
(1, 'Kitchen Team', 'Kitchen', '', 1),
(2, 'Cleaning Team', 'Cleaning room', '', 1),
(3, 'Dismantle Team', 'Elsewhere', '', 1),
(4, 'Lama Service', 'Lama House', '', 1),
(8, 'Radiostations', 'Main tent', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE IF NOT EXISTS `jobs` (
`jobid` int(11) NOT NULL,
  `jobcategoryid` int(11) NOT NULL,
  `courseid` int(11) NOT NULL COMMENT 'from table "settings"',
  `jobname` text NOT NULL,
  `timefrom` datetime NOT NULL,
  `timeto` datetime NOT NULL,
  `period` text NOT NULL,
  `contactperson` text NOT NULL,
  `persons` int(11) NOT NULL COMMENT 'friends needed',
  `persons_found` int(11) DEFAULT '0' COMMENT 'persons already registered for this job',
  `alert` time NOT NULL DEFAULT '00:00:00' COMMENT 'job-individual time before set urgent, overwrites "settings" alert time',
  `notification_alert` time NOT NULL DEFAULT '00:00:00' COMMENT 'job-individual time before set notification, overwrites "settings" notification alert time',
  `urgent` tinyint(1) NOT NULL,
  `urgentmessage` text NOT NULL COMMENT 'wird derzeit nicht benötigt, einzelne Nachrichten abzusetzen',
  `repeat` tinyint(1) NOT NULL,
  `location` text NOT NULL,
  `active` tinyint(1) NOT NULL COMMENT 'job active/inactive',
  `completed` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`jobid`, `jobcategoryid`, `courseid`, `jobname`, `timefrom`, `timeto`, `period`, `contactperson`, `persons`, `persons_found`, `alert`, `notification_alert`, `urgent`, `urgentmessage`, `repeat`, `location`, `active`, `completed`) VALUES
(1, 1, 1, 'clean the toilettes', '2019-07-31 10:00:00', '2019-07-31 10:30:00', '', '', 4, 4, '00:05:00', '00:06:00', 1, '', 1, 'Home', 1, 1),
(6, 1, 1, '', '2019-05-16 00:00:00', '2019-05-16 00:00:00', '', '', 0, 0, '00:05:00', '00:06:00', 0, '', 0, '', 1, 1),
(13, 1, 1, 'Kitchen Cleaning', '2019-07-31 17:00:00', '2019-07-31 18:00:00', '', '', 1, 1, '00:00:00', '00:00:00', 0, '', 1, '', 1, 1),
(14, 1, 1, '', '2019-07-31 00:00:00', '2019-07-31 00:00:00', '', '', 0, 0, '00:00:00', '00:00:00', 0, '', 1, '', 1, 1),
(22, 1, 1, 'Stefan Test', '2019-08-01 01:00:00', '2019-08-01 02:00:00', '', '', 1, 1, '00:00:00', '00:00:00', 0, '', 1, '', 1, 1),
(28, 1, 1, 'Breakfast Preparation', '2019-08-02 08:30:00', '2019-08-02 10:00:00', '', '', 5, 5, '00:00:00', '00:00:00', 0, '', 1, 'Kitchen', 1, 1),
(30, 1, 1, 'Breakfast Preperation', '2019-08-08 06:30:00', '2019-08-08 08:30:00', '', '', 6, 0, '00:00:00', '00:00:00', 0, '', 1, 'Kitchen back entrance', 1, 0),
(31, 1, 1, 'Food Serving', '2019-08-08 07:45:00', '2019-08-08 10:00:00', '', '', 16, 0, '00:00:00', '00:00:00', 0, '', 1, 'Kitchen back entrance', 1, 0),
(32, 1, 1, 'Food Serving', '2019-08-08 12:40:00', '2019-08-08 14:00:00', '', '', 20, 0, '00:00:00', '00:00:00', 0, '', 1, 'Kitchen back entrance', 1, 0),
(33, 1, 1, 'Food Serving', '2019-08-08 13:50:00', '2019-08-08 15:00:00', '', '', 10, 0, '00:00:00', '00:00:00', 0, '', 1, 'Kitchen back entrance', 1, 0),
(34, 1, 1, 'Food Serving', '2019-08-08 17:50:00', '2019-08-08 19:00:00', 'directly after lecture', '', 20, 0, '00:00:00', '00:00:00', 0, '', 1, 'Kitchen back entrance', 1, 0),
(35, 1, 1, 'Food Serving', '2019-08-08 19:00:00', '2019-08-08 20:00:00', '', '', 10, 0, '00:00:00', '00:00:00', 0, '', 1, 'Kitchen back entrance', 1, 0),
(36, 1, 1, 'Kitchen Cutting', '2019-08-08 07:00:00', '2019-08-08 08:30:00', '', '', 8, 0, '00:00:00', '00:00:00', 0, '', 1, 'kitchen back entrance', 1, 0),
(37, 1, 1, 'Kitchen Cutting', '2019-08-08 08:30:00', '2019-08-08 10:00:00', '', '', 8, 0, '00:00:00', '00:00:00', 0, '', 1, 'kitchen back entrance', 1, 0),
(38, 1, 1, 'Kitchen Cutting', '2019-08-08 10:00:00', '2019-08-08 11:30:00', '', '', 15, 0, '00:00:00', '00:00:00', 0, '', 1, 'back entrance', 1, 0),
(39, 1, 1, 'Kitchen Cutting', '2019-08-08 11:30:00', '2019-08-08 13:00:00', '', '', 20, 0, '00:00:00', '00:00:00', 0, '', 1, 'Kitchen back entrance', 1, 0),
(40, 1, 1, 'Kitchen Cutting', '2019-08-08 13:00:00', '2019-08-08 15:00:00', '', '', 15, 0, '00:00:00', '00:00:00', 0, '', 1, 'Kitchen back entrance', 1, 0),
(41, 1, 1, 'Kitchen Cutting', '2019-08-08 18:00:00', '2019-08-08 19:30:00', 'directly after lecture', '', 15, 0, '00:00:00', '00:00:00', 0, '', 1, 'Kitchen back entrance', 1, 0),
(42, 1, 1, 'Kitchen Cutting', '2019-08-08 19:30:00', '2019-08-08 21:00:00', '', '', 10, 0, '00:00:00', '00:00:00', 0, '', 1, 'Kitchen back entrance', 1, 0),
(43, 1, 1, 'Cafeteria Cake Cutting', '2019-08-08 08:00:00', '2019-08-08 10:00:00', '', '', 1, 0, '00:00:00', '00:00:00', 0, '', 1, 'Cafeteria', 1, 0),
(44, 1, 1, 'Hot Point', '2019-08-08 07:30:00', '2019-08-08 10:00:00', '', '', 2, 0, '00:00:00', '00:00:00', 0, '', 1, 'Dining Tent at hot point', 1, 0),
(45, 1, 1, 'Hot Point', '2019-08-08 12:30:00', '2019-08-08 15:00:00', '', '', 2, 0, '00:00:00', '00:00:00', 0, '', 1, 'Dining Tent at hot point', 1, 0),
(46, 1, 1, 'Hot Point', '2019-08-08 18:00:00', '2019-08-08 20:15:00', 'directly after lecture', '', 2, 0, '00:00:00', '00:00:00', 0, '', 1, 'Dining Tent at hot point', 1, 0),
(47, 1, 1, 'Kitchen Laundry', '2019-08-08 07:30:00', '2019-08-08 09:30:00', '', '', 1, 0, '00:00:00', '00:00:00', 0, '', 1, 'Kitchen back entrance', 1, 0),
(48, 1, 1, 'Kitchen Laundry', '2019-08-08 12:30:00', '2019-08-08 14:30:00', '', '', 1, 0, '00:00:00', '00:00:00', 0, '', 1, 'Kitchen back entrance', 1, 0),
(49, 1, 1, 'Kitchen Laundry', '2019-08-08 18:00:00', '2019-08-08 20:00:00', 'directly after lecture', '', 1, 0, '00:00:00', '00:00:00', 0, '', 1, 'Kitchen back entrance', 1, 0),
(50, 1, 1, 'Kitchen Laundry', '2019-08-08 22:00:00', '2019-08-08 00:00:00', '', '', 1, 0, '00:00:00', '00:00:00', 0, '', 1, 'Kitchen back entrance', 1, 0),
(51, 1, 1, 'Worlds Best Shop', '2019-08-08 09:00:00', '2019-08-08 10:00:00', '', '', 1, 0, '00:00:00', '00:00:00', 0, '', 1, 'Dharma Shop', 1, 0),
(52, 1, 1, 'Worlds Best Shop', '2019-08-08 13:00:00', '2019-08-08 15:00:00', '', '', 1, 0, '00:00:00', '00:00:00', 0, '', 1, 'Dharma Shop', 1, 0),
(53, 1, 1, 'Worlds Best Shop', '2019-08-08 18:00:00', '2019-08-08 20:00:00', '', '', 1, 0, '00:00:00', '00:00:00', 0, '', 1, 'Dharma Shop', 1, 0),
(54, 1, 1, 'Parking Area P3', '2019-08-08 07:30:00', '2019-08-08 09:30:00', 'on start at welcome area, they''ll shuttle you', '', 1, 0, '00:00:00', '00:00:00', 0, '', 1, 'welcome area', 1, 0),
(55, 1, 1, 'Parking Area P3', '2019-08-08 09:30:00', '2019-08-08 13:00:00', 'on start at welcome area, they''ll shuttle you', '', 1, 0, '00:00:00', '00:00:00', 0, '', 1, 'welcome area', 1, 0),
(56, 1, 1, 'Parking Area P3', '2019-08-08 15:30:00', '2019-08-08 18:30:00', 'on start at welcome area, they''ll shuttle you', '', 1, 0, '00:00:00', '00:00:00', 0, '', 1, 'welcome area', 1, 0),
(57, 1, 1, 'Childcare', '2019-08-08 15:00:00', '2019-08-08 18:00:00', '', '', 1, 0, '00:00:00', '00:00:00', 0, '', 1, 'behind welcome area', 1, 0),
(59, 1, 1, 'Test Stefan', '2019-08-07 01:00:00', '2019-08-07 01:00:00', 'after meditation', '', 1, 0, '00:00:00', '00:00:00', 0, '', 1, 'kitchen back entrance', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_users`
--

CREATE TABLE IF NOT EXISTS `jobs_users` (
`id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `jobid` int(11) NOT NULL,
  `deviceid` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1 COMMENT='Zwischentable jobs to frontend users';

--
-- Dumping data for table `jobs_users`
--

INSERT INTO `jobs_users` (`id`, `userid`, `jobid`, `deviceid`) VALUES
(47, 1, 1, 'TEST'),
(52, 1, 13, 'DCBEFE2F-9598-406D-A'),
(53, 1, 1, 'DCBEFE2F-9598-406D-A'),
(55, 1, 22, '7C994AE7-D4F3-4FC6-8'),
(56, 1, 28, '5407E845-E3D4-49AE-A'),
(57, 1, 28, '5407E845-E3D4-49AE-A'),
(58, 1, 28, '5407E845-E3D4-49AE-A'),
(59, 1, 28, '8C78FBB4-7C35-4135-9'),
(60, 1, 28, 'TEST'),
(61, 1, 28, 'a8074a038710a16'),
(62, 1, 28, 'DCBEFE2F-9598-406D-A'),
(63, 1, 28, 'DCBEFE2F-9598-406D-A'),
(64, 1, 28, 'DCBEFE2F-9598-406D-A');

-- --------------------------------------------------------

--
-- Table structure for table `locked_numbers`
--

CREATE TABLE IF NOT EXISTS `locked_numbers` (
`numberid` int(11) NOT NULL,
  `number` text NOT NULL COMMENT 'blocked mac or imei number',
  `type` tinyint(4) NOT NULL COMMENT 'mac=0 ; imei = 1',
  `blocked` tinyint(1) NOT NULL,
  `comment` text NOT NULL COMMENT 'reason why'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locked_numbers`
--

INSERT INTO `locked_numbers` (`numberid`, `number`, `type`, `blocked`, `comment`) VALUES
(1, '43-cd-f3-4e-fd-f3', 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
`messageid` int(11) NOT NULL,
  `courseid` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `message` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`messageid`, `courseid`, `timestamp`, `message`) VALUES
(1, 1, '2019-07-17 10:17:54', ''),
(2, 1, '2019-07-31 08:47:12', 'Test'),
(3, 1, '2019-07-31 17:30:52', 'Olena');

-- --------------------------------------------------------

--
-- Table structure for table `phonenumbers`
--

CREATE TABLE IF NOT EXISTS `phonenumbers` (
`numberid` int(11) NOT NULL,
  `name` text NOT NULL,
  `number` text NOT NULL,
  `emergency` tinyint(4) NOT NULL,
  `courseid` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phonenumbers`
--

INSERT INTO `phonenumbers` (`numberid`, `name`, `number`, `emergency`, `courseid`) VALUES
(1, 'international emergency', '112', 1, 1),
(2, 'firefighters', '122', 1, 1),
(3, 'police', '133', 1, 1),
(4, 'ambulance', '144', 1, 1),
(5, 'europe center', '+49 (0) 8323 986 87 40', 0, 1),
(7, 'Testnumber course 2', '111111', 0, 2),
(14, 'App helpdesk', '111', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `radiostations`
--

CREATE TABLE IF NOT EXISTS `radiostations` (
`stationid` int(11) NOT NULL,
  `courseid` int(11) NOT NULL,
  `lang` text NOT NULL,
  `frequency` float(5,2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `radiostations`
--

INSERT INTO `radiostations` (`stationid`, `courseid`, `lang`, `frequency`) VALUES
(1, 1, 'deutsch', 101.10),
(2, 1, 'english', 102.70),
(3, 1, 'русский', 103.50),
(4, 1, '中国', 103.90),
(12, 1, 'italien', 111.08);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
`courseid` int(11) NOT NULL,
  `coursename` text NOT NULL,
  `startdate` date NOT NULL COMMENT 'time range for job datetime pickers',
  `enddate` date NOT NULL,
  `status` bit(10) NOT NULL COMMENT 'composition, active, backup, archived - only active course is seen in the frontend',
  `alert` time NOT NULL COMMENT 'standard alert time before job gets really urgent',
  `notification_alert` time NOT NULL COMMENT 'standard notification alert time before job gets really urgent',
  `admin` text NOT NULL,
  `pass` text NOT NULL,
  `messages` text NOT NULL COMMENT 'Standartmessage x min bevor job starts (notifaction alert dependend)',
  `active` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`courseid`, `coursename`, `startdate`, `enddate`, `status`, `alert`, `notification_alert`, `admin`, `pass`, `messages`, `active`) VALUES
(1, 'EC summercourse 2019', '2019-07-30', '2019-08-18', b'1111111111', '00:05:00', '00:06:00', 'Admin', 'ECAPP##', 'Job begins in', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`userid` int(11) NOT NULL,
  `appid` int(11) NOT NULL,
  `courseid` int(11) NOT NULL,
  `name` text NOT NULL,
  `surname` text NOT NULL,
  `nickname` text NOT NULL COMMENT 'often more important than realname',
  `pass` text NOT NULL COMMENT 'admin password',
  `active` int(11) NOT NULL COMMENT '1,2,3: active, deactivated or locked (no logon via DWBN SSO or via used device)',
  `numberid` int(11) NOT NULL COMMENT 'table locked_numbers to block phones'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `appid`, `courseid`, `name`, `surname`, `nickname`, `pass`, `active`, `numberid`) VALUES
(1, 0, 1, '', '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_dwbnhc_jobs`
--
CREATE TABLE IF NOT EXISTS `vw_dwbnhc_jobs` (
`courseid` int(11)
,`jobid` int(11)
,`jobname` text
,`timefrom` datetime
,`timeto` datetime
,`persons` int(11)
,`persons_found` int(11)
,`persons_needed` bigint(12)
,`urgent` tinyint(1)
,`urgentmessage` text
,`alert` time
,`notification_alert` time
,`location` text
,`active` tinyint(1)
,`hourminute` varchar(39)
,`minutes` bigint(21)
,`category` text
,`jc_location` text
,`completed` tinyint(4)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_dwbnhc_registered`
--
CREATE TABLE IF NOT EXISTS `vw_dwbnhc_registered` (
`jobid` int(11)
,`jobname` text
,`timefrom` datetime
,`timeto` datetime
,`persons` int(11)
,`persons_found` int(11)
,`persons_needed` bigint(12)
,`urgent` tinyint(1)
,`urgentmessage` text
,`alert` time
,`notification_alert` time
,`location` text
,`active` tinyint(1)
,`hourminute` varchar(39)
,`minutes` bigint(21)
,`category` text
,`jc_location` text
,`deviceid` varchar(50)
,`userid` int(11)
,`completed` tinyint(4)
);
-- --------------------------------------------------------

--
-- Structure for view `vw_dwbnhc_jobs`
--
DROP TABLE IF EXISTS `vw_dwbnhc_jobs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_dwbnhc_jobs` AS select `jobs`.`courseid` AS `courseid`,`jobs`.`jobid` AS `jobid`,`jobs`.`jobname` AS `jobname`,`jobs`.`timefrom` AS `timefrom`,`jobs`.`timeto` AS `timeto`,`jobs`.`persons` AS `persons`,`jobs`.`persons_found` AS `persons_found`,(`jobs`.`persons` - `jobs`.`persons_found`) AS `persons_needed`,`jobs`.`urgent` AS `urgent`,`jobs`.`urgentmessage` AS `urgentmessage`,`jobs`.`alert` AS `alert`,`jobs`.`notification_alert` AS `notification_alert`,`jobs`.`location` AS `location`,`jobs`.`active` AS `active`,concat(floor((timestampdiff(MINUTE,`jobs`.`timefrom`,`jobs`.`timeto`) / 60)),':',(timestampdiff(MINUTE,`jobs`.`timefrom`,`jobs`.`timeto`) % 60)) AS `hourminute`,timestampdiff(MINUTE,`jobs`.`timefrom`,`jobs`.`timeto`) AS `minutes`,`jc`.`category` AS `category`,`jc`.`location` AS `jc_location`,`jobs`.`completed` AS `completed` from (`jobs` join `jobcategories` `jc`) where (`jc`.`categoryid` = `jobs`.`jobcategoryid`);

-- --------------------------------------------------------

--
-- Structure for view `vw_dwbnhc_registered`
--
DROP TABLE IF EXISTS `vw_dwbnhc_registered`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_dwbnhc_registered` AS select `jobs`.`jobid` AS `jobid`,`jobs`.`jobname` AS `jobname`,`jobs`.`timefrom` AS `timefrom`,`jobs`.`timeto` AS `timeto`,`jobs`.`persons` AS `persons`,`jobs`.`persons_found` AS `persons_found`,(`jobs`.`persons` - `jobs`.`persons_found`) AS `persons_needed`,`jobs`.`urgent` AS `urgent`,`jobs`.`urgentmessage` AS `urgentmessage`,`jobs`.`alert` AS `alert`,`jobs`.`notification_alert` AS `notification_alert`,`jobs`.`location` AS `location`,`jobs`.`active` AS `active`,concat(floor((timestampdiff(MINUTE,`jobs`.`timefrom`,`jobs`.`timeto`) / 60)),':',(timestampdiff(MINUTE,`jobs`.`timefrom`,`jobs`.`timeto`) % 60)) AS `hourminute`,timestampdiff(MINUTE,`jobs`.`timefrom`,`jobs`.`timeto`) AS `minutes`,`jc`.`category` AS `category`,`jc`.`location` AS `jc_location`,`ju`.`deviceid` AS `deviceid`,`ju`.`userid` AS `userid`,`jobs`.`completed` AS `completed` from ((`jobs` join `jobcategories` `jc`) join `jobs_users` `ju`) where ((`jc`.`categoryid` = `jobs`.`jobcategoryid`) and (`ju`.`jobid` = `jobs`.`jobid`));

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course_schedule`
--
ALTER TABLE `course_schedule`
 ADD PRIMARY KEY (`event_id`), ADD KEY `courseid` (`courseid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
 ADD PRIMARY KEY (`imageid`);

--
-- Indexes for table `jobcategories`
--
ALTER TABLE `jobcategories`
 ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
 ADD PRIMARY KEY (`jobid`), ADD KEY `jobcategoryid` (`jobcategoryid`), ADD KEY `courseid` (`courseid`);

--
-- Indexes for table `jobs_users`
--
ALTER TABLE `jobs_users`
 ADD PRIMARY KEY (`id`), ADD KEY `fe_userid` (`userid`), ADD KEY `jobid` (`jobid`);

--
-- Indexes for table `locked_numbers`
--
ALTER TABLE `locked_numbers`
 ADD PRIMARY KEY (`numberid`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
 ADD PRIMARY KEY (`messageid`);

--
-- Indexes for table `phonenumbers`
--
ALTER TABLE `phonenumbers`
 ADD PRIMARY KEY (`numberid`);

--
-- Indexes for table `radiostations`
--
ALTER TABLE `radiostations`
 ADD PRIMARY KEY (`stationid`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
 ADD PRIMARY KEY (`courseid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course_schedule`
--
ALTER TABLE `course_schedule`
MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
MODIFY `imageid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `jobcategories`
--
ALTER TABLE `jobcategories`
MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
MODIFY `jobid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `jobs_users`
--
ALTER TABLE `jobs_users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `locked_numbers`
--
ALTER TABLE `locked_numbers`
MODIFY `numberid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
MODIFY `messageid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `phonenumbers`
--
ALTER TABLE `phonenumbers`
MODIFY `numberid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `radiostations`
--
ALTER TABLE `radiostations`
MODIFY `stationid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
MODIFY `courseid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
ADD CONSTRAINT `jobs_ibfk_1` FOREIGN KEY (`jobcategoryid`) REFERENCES `jobcategories` (`categoryid`) ON DELETE CASCADE ON UPDATE NO ACTION,
ADD CONSTRAINT `jobs_ibfk_2` FOREIGN KEY (`courseid`) REFERENCES `settings` (`courseid`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `jobs_users`
--
ALTER TABLE `jobs_users`
ADD CONSTRAINT `jobs_users_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`) ON DELETE CASCADE ON UPDATE NO ACTION,
ADD CONSTRAINT `jobs_users_ibfk_2` FOREIGN KEY (`jobid`) REFERENCES `jobs` (`jobid`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
