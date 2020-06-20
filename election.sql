-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 13, 2018 at 05:04 PM
-- Server version: 5.6.35
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `election`
--

-- --------------------------------------------------------

--
-- Table structure for table `electionset`
--

CREATE TABLE `electionset` (
  `electionset_id` int(3) UNSIGNED ZEROFILL NOT NULL,
  `electionset_name` int(3) UNSIGNED ZEROFILL NOT NULL COMMENT 'การเลือกตั้ง',
  `electionset_date` date NOT NULL COMMENT 'วันที่',
  `electionset_starttime` time NOT NULL COMMENT 'เวลาเริ่มต้น',
  `electionset_endtime` time NOT NULL COMMENT 'เวลาสิ้นสุด',
  `electionset_year` int(4) NOT NULL COMMENT 'ปีการศึกษา'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `electionset`
--

INSERT INTO `electionset` (`electionset_id`, `electionset_name`, `electionset_date`, `electionset_starttime`, `electionset_endtime`, `electionset_year`) VALUES
(040, 001, '2018-04-26', '08:00:00', '16:00:00', 2561),
(041, 001, '2017-11-01', '09:00:00', '16:00:00', 2560),
(042, 001, '2020-03-14', '08:00:00', '17:00:00', 2563),
(043, 001, '2019-03-13', '08:00:00', '16:00:00', 2562);

-- --------------------------------------------------------

--
-- Table structure for table `electionset_samo`
--

CREATE TABLE `electionset_samo` (
  `electionset_id` int(3) UNSIGNED ZEROFILL NOT NULL,
  `electionset_name` int(3) UNSIGNED ZEROFILL NOT NULL COMMENT 'การเลือกตั้ง',
  `electionset_date` date NOT NULL COMMENT 'วันที่',
  `electionset_starttime` time NOT NULL COMMENT 'เวลาเริ่มต้น',
  `electionset_endtime` time NOT NULL COMMENT 'เวลาสิ้นสุด',
  `electionset_year` int(4) NOT NULL COMMENT 'ปีการศึกษา',
  `electionset_faculty` varchar(50) NOT NULL COMMENT 'คณะ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `electionset_samo`
--

INSERT INTO `electionset_samo` (`electionset_id`, `electionset_name`, `electionset_date`, `electionset_starttime`, `electionset_endtime`, `electionset_year`, `electionset_faculty`) VALUES
(001, 003, '2018-04-26', '08:00:00', '16:00:00', 2561, 'วิทยาศาสตร์'),
(002, 003, '2018-04-26', '08:00:00', '16:00:00', 2561, 'วิศวกรรมศาสตร์'),
(003, 003, '2018-02-14', '08:00:00', '23:30:00', 2561, 'ทรัพยากรธรรมชาติ'),
(004, 003, '2018-02-16', '08:00:00', '23:00:00', 2561, 'อุตสาหกรรมเกษตร'),
(005, 003, '2018-02-15', '08:00:00', '16:00:00', 2561, 'การจัดการสิ่งแวดล้อม'),
(006, 003, '2018-02-20', '08:00:00', '16:00:00', 2561, 'แพทยศาสตร์'),
(007, 003, '2018-02-21', '08:00:00', '16:00:00', 2561, 'พยาบาลศาสตร์'),
(008, 003, '2018-02-22', '08:00:00', '16:00:00', 2561, 'วิทยาลัยนานาชาติ'),
(009, 003, '2018-02-15', '08:00:00', '16:00:00', 2561, 'ทันตแพทยศาสตร์'),
(010, 003, '2018-02-23', '08:00:00', '16:00:00', 2561, 'เภสัชศาสตร์'),
(011, 003, '2018-02-25', '08:00:00', '16:00:00', 2561, 'วิทยาการจัดการ'),
(012, 003, '2018-02-02', '08:00:00', '16:00:00', 2561, 'ศิลปศาสตร์'),
(013, 003, '2018-02-01', '08:00:00', '16:00:00', 2561, 'เศรษฐศาสตร์'),
(014, 003, '2018-02-03', '08:00:00', '16:00:00', 2561, 'นิติศาสตร์'),
(015, 003, '2018-02-05', '08:00:00', '16:00:00', 2561, 'การเเพทย์แผนไทย'),
(016, 003, '2018-02-06', '08:00:00', '16:00:00', 2561, 'เทคนิคการแพทย์'),
(017, 003, '2018-02-08', '08:00:00', '16:00:00', 2561, 'สัตวเเพทยศาสตร์');

-- --------------------------------------------------------

--
-- Table structure for table `electionset_sapa`
--

CREATE TABLE `electionset_sapa` (
  `electionset_id` int(3) UNSIGNED ZEROFILL NOT NULL,
  `electionset_name` int(3) UNSIGNED ZEROFILL NOT NULL,
  `electionset_date` date NOT NULL,
  `electionset_starttime` time NOT NULL,
  `electionset_endtime` time NOT NULL,
  `electionset_year` int(4) NOT NULL,
  `win_score_normal` int(10) NOT NULL,
  `win_score_fac` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `electionset_sapa`
--

INSERT INTO `electionset_sapa` (`electionset_id`, `electionset_name`, `electionset_date`, `electionset_starttime`, `electionset_endtime`, `electionset_year`, `win_score_normal`, `win_score_fac`) VALUES
(001, 002, '2018-04-26', '08:00:00', '23:59:00', 2561, 5, 50),
(002, 002, '2019-05-15', '08:00:00', '16:00:00', 2562, 5, 50),
(003, 002, '2020-10-16', '08:00:00', '17:00:00', 2563, 0, 0),
(005, 002, '2018-04-18', '08:00:00', '16:00:00', 2570, 4, 49);

-- --------------------------------------------------------

--
-- Table structure for table `election_type`
--

CREATE TABLE `election_type` (
  `election_id` int(3) UNSIGNED ZEROFILL NOT NULL COMMENT 'รหัสการเลือกตั้ง',
  `election_name` varchar(50) NOT NULL COMMENT 'ชื่อการเลือกตั้ง'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `election_type`
--

INSERT INTO `election_type` (`election_id`, `election_name`) VALUES
(001, 'องค์การบริหาร องค์การนักศึกษา'),
(002, 'สภานักศึกษา'),
(003, 'สโมสรนักศึกษา');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_type`
--

CREATE TABLE `faculty_type` (
  `faculty_id` int(3) UNSIGNED ZEROFILL NOT NULL COMMENT 'รหัสคณะ',
  `faculty_name` varchar(50) NOT NULL COMMENT 'ชื่อคณะ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faculty_type`
--

INSERT INTO `faculty_type` (`faculty_id`, `faculty_name`) VALUES
(001, 'วิทยาศาสตร์'),
(002, 'วิศวกรรมศาสตร์'),
(003, 'ทรัพยากรธรรมชาติ'),
(004, 'อุตสาหกรรมเกษตร'),
(005, 'การจัดการสิ่งแวดล้อม'),
(006, 'แพทยศาสตร์'),
(007, 'พยาบาลศาสตร์'),
(008, 'วิทยาลัยนานาชาติ'),
(009, 'ทันตแพทยศาสตร์'),
(010, 'เภสัชศาสตร์'),
(011, 'วิทยาการจัดการ'),
(012, 'ศิลปศาสตร์'),
(013, 'เศรษฐศาสตร์'),
(014, 'นิติศาสตร์'),
(015, 'การแพทย์แผนไทย'),
(016, 'เทคนิคการแพทย์'),
(017, 'สัตวแพทยศาสตร์');

-- --------------------------------------------------------

--
-- Table structure for table `onedb`
--

CREATE TABLE `onedb` (
  `one_number` int(10) UNSIGNED NOT NULL COMMENT 'หมายเลขผู้สมัค',
  `one_name` varchar(50) NOT NULL COMMENT 'ชื่อ',
  `one_lastname` varchar(50) NOT NULL COMMENT 'นามสกุล',
  `one_id` varchar(10) NOT NULL COMMENT 'รหัสนักศึกษา',
  `one_faculty` int(3) UNSIGNED ZEROFILL NOT NULL COMMENT 'คณะ',
  `one_year` int(10) NOT NULL COMMENT 'ชั้นปี'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ผู้สมัคเลือกตั้งแบบเดี่ยว';

--
-- Dumping data for table `onedb`
--

INSERT INTO `onedb` (`one_number`, `one_name`, `one_lastname`, `one_id`, `one_faculty`, `one_year`) VALUES
(4, 'ฟาริสสสส', 'มะหะหมัด', '5710110111', 007, 6),
(7, 'ก', 'ก', '5710110240', 003, 2),
(7, 'ก', 'ก', '5710110245', 003, 2),
(7, 'ก', 'ก', '5710110249', 003, 2),
(10, 'อาซาน', 'สาล่าห์', '5710110679', 002, 4),
(11, '', '', '', 000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ongkan_candidate`
--

CREATE TABLE `ongkan_candidate` (
  `id` int(3) UNSIGNED ZEROFILL NOT NULL,
  `ongkan_num` int(11) NOT NULL COMMENT 'หมายเลขพรรค',
  `ongkan_name` text NOT NULL COMMENT 'ชื่อพรรค',
  `std_name` text NOT NULL COMMENT 'ชื่อผู้ลงสมัคร',
  `std_id` text NOT NULL COMMENT 'รหัสนักศึกษา',
  `ongkan_fac` varchar(50) NOT NULL COMMENT 'คณะ',
  `std_year` int(1) NOT NULL COMMENT 'ชั้นปี',
  `std_pos` int(3) NOT NULL COMMENT 'ตำแหน่ง',
  `std_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ongkan_candidate`
--

INSERT INTO `ongkan_candidate` (`id`, `ongkan_num`, `ongkan_name`, `std_name`, `std_id`, `ongkan_fac`, `std_year`, `std_pos`, `std_image`) VALUES
(011, 1, 'ศรีตรัง', 'นุทดี', '5674849303', 'วิศวะกรรมศาสตร์', 5, 4, '5710110246.jpg'),
(012, 1, 'ศรีตรัง', 'วิท', '5674849303', 'พยาบาลศาสตร์', 5, 5, '5710110272.jpg'),
(013, 2, 'สีเบเยอร์', 'ฮา', '5876483948', 'เภสัชศาสตร์', 3, 1, 'img_5a60c91d61cef.jpg'),
(014, 2, 'สีเบเยอร์', 'เอก', '5987598746', 'ศิลปศาสตร์', 2, 2, '5710110338.jpg'),
(015, 2, 'สีเบเยอร์', 'ลีม', '5987598543', 'วิทยาการจัดการ', 2, 3, '5710110676.jpg'),
(018, 3, 'กิจประชา', 'มุมิ', '5810515171', 'วิทยาการจัดการ', 3, 1, 'img_5a0d5789b1084.jpg'),
(019, 3, 'กิจประชา', 'เด้ะ', '5710110676', 'วิศวกรรมศาสตร์', 4, 2, '5710110676.jpg'),
(020, 3, 'กิจประชา', 'วี', '5987598546', 'ทันตแพทยศาสตร์', 3, 3, '5710110679.jpg'),
(021, 3, 'กิจประชา', 'ดี', '5748395960', 'พยาบาลศาสตร์', 4, 4, '5710110246.jpg'),
(025, 1, 'ศรีตรัง', 'ฟาริส ', '5710110338', 'วิศวกรรมศาสตร์', 4, 6, '5710110338.jpg'),
(030, 2, 'สีชาด', 'มุมิ', '5810515171', 'วิทยาการจัดการ', 3, 3, 'img_5a0d5789b1084.jpg'),
(031, 2, 'สีชาด', 'เด๊ะ', '5710110676', 'วิศวกรรมศาสตร์', 4, 1, 'img_5a0db2b6418c4.jpg'),
(033, 2, 'สีชาด', 'นุทดี', '5710110246', 'วิศวกรรมศาสตร์', 4, 2, 'img_5a0db4ba34bbb.jpg'),
(034, 1, 'สักครู่', 'อัสฮา', '5710110570', 'วิทยาศาสตร์', 4, 1, 'img_5a60c75db1c05.jpg'),
(037, 3, 'ทดสอบ', 'อัสฮา', '5710110570', 'วิศวกรรมศาสตร์', 4, 1, 'img_5a60c91d61cef.jpg'),
(038, 3, 'กิจประชา', 'อิรฟาน คาเร็ง', '5610110734', 'วิศวกรรมศาสตร์', 5, 12, 'img_5a73421cd3463.jpg'),
(042, 1, 'สักครู่', 'มุมิน เจ๊ะแหล้', '5810110345', 'วิศวกรรมศาสตร์', 5, 2, 'img_5a73440c86f33.jpg'),
(043, 1, 'สักครู่', 'ประยุทธ์ ล่าเฏะ', '5610110678', 'วิศวกรรมศาสตร์', 5, 3, 'img_5a73470cd3948.jpg'),
(044, 1, 'สักครู่', 'เยาะ', '5710210391', 'วิทยาศาสตร์', 4, 4, 'img_5a74334a71d55.jpg'),
(046, 4, 'จิตใจ', 'นู', '5710110248', 'วิศวกรรมศาสตร์', 4, 1, 'img_5a84890bae5bc.jpg'),
(047, 2, 'test', 'test', '1234', 'วิทยาศาสตร์', 1, 2, 'img_5acf95e664db0.jpg'),
(051, 1, 'สักครู่', 'อริณดา', '5810515171', 'วิทยาลัยนานาชาติ', 4, 5, 'img_5acfa4561c7a2.jpg'),
(053, 1, 'ศรีตรัง', 'อริณดา เครือโสบ', '5810515171', 'วิทยาการจัดการ', 3, 1, 'img_5ad0b9adda9d8.jpg'),
(054, 1, 'ศรีตรัง', 'นูรียา เระดมหลี', '5710110338', 'ทรัพยากรธรรมชาติ', 4, 2, 'img_5ad0bb591858c.jpg'),
(055, 1, 'ศรีตรัง', 'ซุป ยาน', '5710110338', 'วิศวกรรมศาสตร์', 4, 3, 'img_5ad0bb8f4c65a.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ongkan_team`
--

CREATE TABLE `ongkan_team` (
  `team_number` int(2) NOT NULL,
  `team_name` varchar(50) NOT NULL,
  `electionset_id` int(3) UNSIGNED ZEROFILL NOT NULL,
  `election_year` int(4) NOT NULL,
  `team_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ongkan_team`
--

INSERT INTO `ongkan_team` (`team_number`, `team_name`, `electionset_id`, `election_year`, `team_image`) VALUES
(1, 'ศรีตรัง', 001, 2560, 'images1.jpg'),
(1, 'สักครู่', 002, 2561, 'img_5a0d643805e1a.jpg'),
(2, 'สีชาด', 003, 2561, 'images2.jpeg'),
(2, 'สีเบเยอร์', 004, 2560, 'images.jpg'),
(3, 'กิจประชา', 005, 2561, 'images1.jpg'),
(3, 'ทดสอบ', 006, 2560, 'img_5a16826590a37.jpg'),
(4, 'จิตใจ', 008, 2561, 'img_5a8487fbdb2f2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `position_type`
--

CREATE TABLE `position_type` (
  `position_id` int(3) UNSIGNED ZEROFILL NOT NULL COMMENT 'รหัสตำแหน่ง',
  `position_name` varchar(50) NOT NULL COMMENT 'ชื่อตำแหน่ง'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `position_type`
--

INSERT INTO `position_type` (`position_id`, `position_name`) VALUES
(001, 'นายกองค์การบริหาร'),
(002, 'อุปนายกกิจการภายใน'),
(003, 'อุปนายกกิจการภายนอก'),
(004, 'ประธานฝ่ายเลขานุการ'),
(005, 'ประธานฝ่ายเหรัญญิก'),
(006, 'ประธานฝ่ายวิชาการ'),
(007, 'ประธานฝ่ายประชาสัมพันธ์'),
(008, 'ประธานฝ่ายสวัสดิการ'),
(009, 'ประธานฝ่ายบำเพ็ญประโยชน์'),
(010, 'ประธานฝ่ายกีฬา'),
(011, 'ประธานฝ่ายพัสดุ'),
(012, 'ประธานฝ่ายเชียร์'),
(013, 'ประธานฝ่ายสันทนาการ'),
(014, 'ประธานฝ่ายประเมินผล'),
(015, 'ประธานฝ่ายพยาบาล'),
(016, 'ประธานฝ่ายประสานงาน'),
(017, 'ประธานฝ่ายศิลป์'),
(018, 'ประธานฝ่ายพิธีการ'),
(019, 'ประธานฝ่ายเทคนิค/โสต'),
(020, 'ประธานฝ่ายทะเบียน');

-- --------------------------------------------------------

--
-- Table structure for table `position_type_samo`
--

CREATE TABLE `position_type_samo` (
  `position_id` int(3) UNSIGNED ZEROFILL NOT NULL,
  `position_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `position_type_samo`
--

INSERT INTO `position_type_samo` (`position_id`, `position_name`) VALUES
(001, 'นายกสโมสรนักศึกษา'),
(002, 'อุปนายกคนที่ 1'),
(003, 'อุปนายกคนที่ 2'),
(004, 'เหรัญญิก'),
(005, 'เลขานุการ'),
(006, 'ฝ่ายสวัสดิการ'),
(007, 'ฝ่ายวิชาการ'),
(008, 'ฝ่ายกีฬา'),
(009, 'ฝ่ายบำเพ็ญประโยชน์'),
(010, 'ฝ่ายศิลปวัฒนธรรม'),
(011, 'ฝ่ายนักศึกษาาสัมพันธ์'),
(012, 'ฝ่ายทะเบียน'),
(013, 'ฝ่ายปฏิคม'),
(014, 'ฝ่ายประชาสัมพันธ์');

-- --------------------------------------------------------

--
-- Table structure for table `resault_ongkan`
--

CREATE TABLE `resault_ongkan` (
  `num` int(4) UNSIGNED ZEROFILL NOT NULL COMMENT 'ลำดับ',
  `std_id` varchar(10) NOT NULL COMMENT 'รหัสนักศึกษา',
  `name` varchar(50) NOT NULL COMMENT 'ชื่อ',
  `lastname` varchar(50) NOT NULL COMMENT 'นามสกุล',
  `faculty` varchar(50) NOT NULL COMMENT 'คณะ',
  `ongkan_num` int(10) NOT NULL COMMENT 'หมายเลขพรรคที่เลือก',
  `date` date NOT NULL COMMENT 'วันที่กดเลือกตั้ง',
  `time` time NOT NULL COMMENT 'เวลาที่กดเลือกตั้ง',
  `election_year` int(4) NOT NULL COMMENT 'ปีการศึกษา',
  `vote_no` int(1) NOT NULL COMMENT 'ไม่ประสงค์ลงคะแนน'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resault_ongkan`
--

INSERT INTO `resault_ongkan` (`num`, `std_id`, `name`, `lastname`, `faculty`, `ongkan_num`, `date`, `time`, `election_year`, `vote_no`) VALUES
(0030, '5710210391', '0', '0', '', 2, '2018-02-02', '16:49:58', 2561, 0),
(0033, '5710110272', '0', '0', '', 1, '2018-02-04', '02:57:37', 2561, 0),
(0043, '5555555555', '0', '0', '', 2, '2018-02-07', '17:59:36', 2561, 0),
(0063, '5710110246', '0', '0', '', 3, '2018-02-07', '21:45:36', 2561, 0),
(0064, '5710110679', '0', '0', '', 1, '2018-02-08', '08:59:56', 2561, 0),
(0066, '5610410765', '0', '0', '', 2, '2018-02-11', '22:42:28', 2561, 0),
(0074, '5710110421', '0', '0', '', 2, '2018-02-11', '23:27:29', 2561, 0),
(0083, '5710110593', 'บาลี', 'หล่อลากใส้', 'วิศวกรรมศาสตร์', 2, '2018-02-28', '10:40:45', 2561, 0),
(0084, '5810150171', 'มุมิ', 'หงุด', 'วิทยาศาสตร์', 1, '2018-02-28', '10:42:59', 2561, 0),
(0086, '5710110676', 'อาซาน', 'สาล่าห์', 'วิศวกรรมศาสตร์', 0, '2018-04-23', '04:20:53', 2561, 1),
(0088, '5710110123', 'อรุณ', 'เตี้ยเล็ก', 'วิศวกรรมศาสตร์', 4, '2018-04-26', '11:31:06', 2561, 0);

-- --------------------------------------------------------

--
-- Table structure for table `resault_samo_agro`
--

CREATE TABLE `resault_samo_agro` (
  `num` int(4) UNSIGNED ZEROFILL NOT NULL,
  `std_id` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `samo_num` int(10) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `election_year` int(4) NOT NULL,
  `vote_no` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resault_samo_agro`
--

INSERT INTO `resault_samo_agro` (`num`, `std_id`, `name`, `lastname`, `samo_num`, `date`, `time`, `election_year`, `vote_no`) VALUES
(0001, '5710110999', 'ยุ้ย', 'ญาติเยอะ', 1, '2018-02-14', '22:47:10', 2561, 0);

-- --------------------------------------------------------

--
-- Table structure for table `resault_samo_en`
--

CREATE TABLE `resault_samo_en` (
  `num` int(4) UNSIGNED ZEROFILL NOT NULL,
  `std_id` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT 'ชื่อ',
  `lastname` varchar(50) NOT NULL COMMENT 'นามสกุล',
  `samo_num` int(10) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `election_year` int(4) NOT NULL,
  `vote_no` int(1) NOT NULL COMMENT 'ไม่ประสงค์ลงคะแนน'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resault_samo_en`
--

INSERT INTO `resault_samo_en` (`num`, `std_id`, `name`, `lastname`, `samo_num`, `date`, `time`, `election_year`, `vote_no`) VALUES
(0004, '5710110376', 'มุฟซี', 'คงนาม', 1, '2018-02-13', '22:23:52', 2561, 0),
(0006, '5710110246', 'นุทดี', 'ยาหมาย', 2, '2018-02-14', '15:54:54', 2561, 0),
(0007, '5710110248', 'นูรียา', 'เร๊ะดมหลี', 2, '2018-02-14', '21:46:46', 2561, 0),
(0009, '5710110111', 'แชมป์', 'บัญชา', 1, '2018-02-14', '23:10:47', 2561, 0),
(0043, '5710110421', 'มิน', 'หล่อมาก', 0, '2018-04-17', '21:33:13', 2561, 1),
(0045, '5710110123', 'อรุณ', 'เตี้ยเล็ก', 0, '2018-04-26', '11:32:38', 2561, 1);

-- --------------------------------------------------------

--
-- Table structure for table `resault_samo_rn`
--

CREATE TABLE `resault_samo_rn` (
  `num` int(4) UNSIGNED ZEROFILL NOT NULL,
  `std_id` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT 'ชื่อ',
  `lastname` varchar(50) NOT NULL COMMENT 'นามสกุล',
  `samo_num` int(4) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `election_year` int(4) NOT NULL,
  `vote_no` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resault_samo_rn`
--

INSERT INTO `resault_samo_rn` (`num`, `std_id`, `name`, `lastname`, `samo_num`, `date`, `time`, `election_year`, `vote_no`) VALUES
(0007, '5710230485', 'กบ', 'หมัดเด็น', 2, '2018-02-14', '21:42:53', 2561, 0);

-- --------------------------------------------------------

--
-- Table structure for table `resault_samo_sc`
--

CREATE TABLE `resault_samo_sc` (
  `num` int(4) UNSIGNED ZEROFILL NOT NULL COMMENT 'ลำดับ',
  `std_id` varchar(10) NOT NULL COMMENT 'รหัสนักศึกษา',
  `name` varchar(50) NOT NULL COMMENT 'ชื่อ',
  `lastname` varchar(50) NOT NULL COMMENT 'นามสกุล',
  `samo_num` int(10) NOT NULL COMMENT 'พรรค',
  `date` date NOT NULL COMMENT 'วันที่ทำการเลือกตั้ง',
  `time` time NOT NULL COMMENT 'เวลาที่ทำการเลือกตั้ง',
  `election_year` int(4) NOT NULL COMMENT 'ปีการศึกษา',
  `vote_no` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resault_samo_sc`
--

INSERT INTO `resault_samo_sc` (`num`, `std_id`, `name`, `lastname`, `samo_num`, `date`, `time`, `election_year`, `vote_no`) VALUES
(0006, '5710110123', 'ประยุธ', 'นิยมเดชา', 1, '2018-02-15', '20:24:19', 2561, 0);

-- --------------------------------------------------------

--
-- Table structure for table `resault_sapa`
--

CREATE TABLE `resault_sapa` (
  `num` int(4) UNSIGNED ZEROFILL NOT NULL COMMENT 'ลำดับ',
  `std_id` varchar(10) NOT NULL COMMENT 'รหัสนักศึกษา',
  `name` varchar(50) NOT NULL COMMENT 'ชื่อ',
  `lastname` varchar(50) NOT NULL COMMENT 'นามสกุล',
  `faculty` varchar(50) NOT NULL COMMENT 'คณะ',
  `sapa_num` int(10) NOT NULL COMMENT 'เบอร์ที่เลือก',
  `sapa_name` varchar(50) NOT NULL COMMENT 'ชื่อคนที่เลือก',
  `sapa_lastname` varchar(50) NOT NULL COMMENT 'นามสกุลคนที่เลือก',
  `sapa_fac` varchar(50) NOT NULL COMMENT 'คณะที่เลือก',
  `date` date NOT NULL COMMENT 'วันที่กดเลือกตั้ง',
  `time` time NOT NULL COMMENT 'เวลาที่กดเลือกตั้ง',
  `election_year` int(4) NOT NULL COMMENT 'ปีการศึกษา',
  `sapa_type` varchar(20) NOT NULL COMMENT 'แบบการเลือกตั้ง',
  `accept` int(1) NOT NULL COMMENT 'รับรองสิทธิ',
  `vote_no` int(1) NOT NULL COMMENT 'ไม่ประสงค์ลงคะแนน'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resault_sapa`
--

INSERT INTO `resault_sapa` (`num`, `std_id`, `name`, `lastname`, `faculty`, `sapa_num`, `sapa_name`, `sapa_lastname`, `sapa_fac`, `date`, `time`, `election_year`, `sapa_type`, `accept`, `vote_no`) VALUES
(0076, '5710110999', 'ยุ้ย', 'ญาติเยอะ', 'อุตสาหกรรมเกษตร', 1, 'นุตดี', 'ยาหมาย', 'วิศวกรรมศาสตร์', '2018-03-28', '01:23:00', 2561, 'normal', 0, 0),
(0077, '5710110999', 'ยุ้ย', 'ญาติเยอะ', 'อุตสาหกรรมเกษตร', 2, 'มุมิน', 'เจ๊ะแหล', 'วิศวกรรมศาสตร์', '2018-03-28', '01:23:10', 2561, 'normal', 0, 0),
(0078, '5710110999', 'ยุ้ย', 'ญาติเยอะ', 'อุตสาหกรรมเกษตร', 3, 'ฟาริส', 'มะหะหมัด', 'วิศวกรรมศาสตร์', '2018-03-28', '01:23:15', 2561, 'normal', 0, 0),
(0082, '5810150171', 'มุมิ', 'หงุด', 'วิทยาศาสตร์', 1, 'นุตดี', 'ยาหมาย', 'วิศวกรรมศาสตร์', '2018-03-28', '15:54:53', 2561, 'normal', 0, 0),
(0083, '5810150171', 'มุมิ', 'หงุด', 'วิทยาศาสตร์', 2, 'มุมิน', 'เจ๊ะแหล', 'วิศวกรรมศาสตร์', '2018-03-28', '15:55:03', 2561, 'normal', 0, 0),
(0084, '5810150171', 'มุมิ', 'หงุด', 'วิทยาศาสตร์', 4, 'อริณดา', 'เครือโสบ', 'วิทยาการจัดการ', '2018-03-28', '15:55:09', 2561, 'normal', 0, 0),
(0133, '5710110248', 'นูรียา', 'เร๊ะดมหลี', 'วิศวกรรมศาสตร์', 1, 'นุตดี', 'ยาหมาย', 'วิศวกรรมศาสตร์', '2018-04-10', '21:22:58', 2561, 'normal', 0, 0),
(0134, '5710110248', 'นูรียา', 'เร๊ะดมหลี', 'วิศวกรรมศาสตร์', 3, 'ฟาริส', 'มะหะหมัด', 'วิศวกรรมศาสตร์', '2018-04-10', '21:23:03', 2561, 'normal', 0, 0),
(0135, '5710110248', 'นูรียา', 'เร๊ะดมหลี', 'วิศวกรรมศาสตร์', 4, 'อริณดา', 'เครือโสบ', 'วิทยาการจัดการ', '2018-04-10', '21:23:06', 2561, 'normal', 0, 0),
(0136, '5710110248', 'นูรียา', 'เร๊ะดมหลี', 'วิศวกรรมศาสตร์', 2, 'นูรียา', 'เระดมหลี', 'วิศวกรรมศาสตร์', '2018-04-10', '21:23:13', 2561, 'fac', 1, 0),
(0137, '5710110421', 'มิน', 'หล่อมาก', 'วิศวกรรมศาสตร์', 2, 'มุมิน', 'เจ๊ะแหล', 'วิศวกรรมศาสตร์', '2018-04-10', '21:24:22', 2561, 'normal', 0, 0),
(0138, '5710110421', 'มิน', 'หล่อมาก', 'วิศวกรรมศาสตร์', 1, 'นุตดี', 'ยาหมาย', 'วิศวกรรมศาสตร์', '2018-04-10', '21:24:26', 2561, 'normal', 0, 0),
(0139, '5710110421', 'มิน', 'หล่อมาก', 'วิศวกรรมศาสตร์', 4, 'อริณดา', 'เครือโสบ', 'วิทยาการจัดการ', '2018-04-10', '21:24:30', 2561, 'normal', 0, 0),
(0140, '5710110421', 'มิน', 'หล่อมาก', 'วิศวกรรมศาสตร์', 2, 'นูรียา', 'เระดมหลี', 'วิศวกรรมศาสตร์', '2018-04-10', '21:24:43', 2561, 'fac', 1, 0),
(0141, '5710110376', 'มุฟซีย์', 'คงนาม', 'วิศวกรรมศาสตร์', 5, 'อาซาน', 'สาล่าห์', 'วิศวกรรมศาสตร์', '2018-04-10', '21:25:21', 2561, 'normal', 0, 0),
(0142, '5710110376', 'มุฟซีย์', 'คงนาม', 'วิศวกรรมศาสตร์', 2, 'มุมิน', 'เจ๊ะแหล', 'วิศวกรรมศาสตร์', '2018-04-10', '21:25:26', 2561, 'normal', 0, 0),
(0143, '5710110376', 'มุฟซีย์', 'คงนาม', 'วิศวกรรมศาสตร์', 1, 'นุตดี', 'ยาหมาย', 'วิศวกรรมศาสตร์', '2018-04-10', '21:25:30', 2561, 'normal', 0, 0),
(0144, '5710110376', 'มุฟซีย์', 'คงนาม', 'วิศวกรรมศาสตร์', 2, 'นูรียา', 'เระดมหลี', 'วิศวกรรมศาสตร์', '2018-04-10', '21:25:35', 2561, 'fac', 0, 0),
(0145, '5810150171', 'มุมิ', 'หงุด', 'วิทยาศาสตร์', 1, 'ยุ้ย', 'ญาติเยอะ', 'วิทยาศาสตร์', '2018-04-15', '17:21:48', 2561, 'fac', 1, 0),
(0146, '5710230485', 'กบ', 'หมัดเด็น', 'ทรัพยากรธรรมชาติ', 1, 'นุตดี', 'ยาหมาย', 'วิศวกรรมศาสตร์', '2018-04-15', '22:39:01', 2561, 'normal', 0, 0),
(0147, '5710230485', 'กบ', 'หมัดเด็น', 'ทรัพยากรธรรมชาติ', 4, 'อริณดา', 'เครือโสบ', 'วิทยาการจัดการ', '2018-04-15', '22:39:06', 2561, 'normal', 0, 0),
(0148, '5710230485', 'กบ', 'หมัดเด็น', 'ทรัพยากรธรรมชาติ', 5, 'อาซาน', 'สาล่าห์', 'วิศวกรรมศาสตร์', '2018-04-15', '22:39:11', 2561, 'normal', 0, 0),
(0149, '5710230485', 'กบ', 'หมัดเด็น', 'ทรัพยากรธรรมชาติ', 3, 'ประวิท', 'หมัดหมาน', 'ทรัพยากรธรรมชาติ', '2018-04-15', '22:39:21', 2561, 'fac', 1, 0),
(0152, '5712346354', 'คอเดย์', 'สาบวด', 'ทรัพยากรธรรมชาติ', 0, '0', '0', '0', '2018-04-17', '22:12:03', 2561, '0', 0, 1),
(0153, '5712346354', 'คอเดย์', 'สาบวด', 'ทรัพยากรธรรมชาติ', 3, 'ประวิท', 'หมัดหมาน', 'ทรัพยากรธรรมชาติ', '2018-04-17', '22:12:17', 2561, 'fac', 0, 0),
(0158, '5710110123', 'อรุณ', 'เตี้ยเล็ก', 'วิศวกรรมศาสตร์', 1, 'นุตดี', 'ยาหมาย', 'วิศวกรรมศาสตร์', '2018-04-26', '11:33:11', 2561, 'normal', 0, 0),
(0159, '5710110123', 'อรุณ', 'เตี้ยเล็ก', 'วิศวกรรมศาสตร์', 2, 'มุมิน', 'เจ๊ะแหล', 'วิศวกรรมศาสตร์', '2018-04-26', '11:33:24', 2561, 'normal', 0, 0),
(0160, '5710110123', 'อรุณ', 'เตี้ยเล็ก', 'วิศวกรรมศาสตร์', 4, 'อริณดา', 'เครือโสบ', 'วิทยาการจัดการ', '2018-04-26', '11:33:33', 2561, 'normal', 0, 0),
(0161, '5710110123', 'อรุณ', 'เตี้ยเล็ก', 'วิศวกรรมศาสตร์', 2, 'นูรียา', 'เระดมหลี', 'วิศวกรรมศาสตร์', '2018-04-26', '11:33:56', 2561, 'fac', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `samo_candidate`
--

CREATE TABLE `samo_candidate` (
  `id` int(3) UNSIGNED ZEROFILL NOT NULL,
  `samo_num` int(11) NOT NULL,
  `samo_name` text NOT NULL,
  `std_name` text NOT NULL,
  `std_id` text NOT NULL,
  `samo_fac` varchar(50) NOT NULL,
  `std_year` int(1) NOT NULL,
  `std_pos` int(3) NOT NULL,
  `std_image` varchar(50) NOT NULL COMMENT 'รูป'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `samo_candidate`
--

INSERT INTO `samo_candidate` (`id`, `samo_num`, `samo_name`, `std_name`, `std_id`, `samo_fac`, `std_year`, `std_pos`, `std_image`) VALUES
(032, 1, 'วิศวะพาเพลิน', 'ซุป ', '5710110460', 'วิศวกรรมศาสตร์', 4, 1, 'img_5a75f15364ec7.jpg'),
(033, 1, 'วิศวะพาเพลิน', 'นู', '5710110248', 'วิศวกรรมศาสตร์', 4, 2, 'img_5a75f2096e856.jpg'),
(034, 2, 'วิศวะดงยาง', 'วิท', '5710110272', 'วิศวกรรมศาสตร์', 4, 1, 'img_5a75f46c24c72.jpg'),
(035, 2, 'วิศวะดงยาง', 'ดิว', '5710110428', 'วิศวกรรมศาสตร์', 4, 2, 'img_5a75f50a82487.jpg'),
(036, 1, 'ทรัพสินเงินทอง', 'ดิว', '5710110428', 'ทรัพยากรธรรมชาติ', 4, 1, 'img_5a760cee0b711.jpg'),
(037, 1, 'ทรัพสินเงินทอง', 'นู', '5710110246', 'ทรัพยากรธรรมชาติ', 4, 2, 'img_5a760d10251fb.jpg'),
(038, 2, 'ทรัพยาสารใจ', 'ซุป ', '5710110460', 'ทรัพยากรธรรมชาติ', 4, 1, 'img_5a760d3995b70.jpg'),
(039, 2, 'ทรัพยาสารใจ', 'วิท', '5710110272', 'ทรัพยากรธรรมชาติ', 4, 2, 'img_5a760d577e093.jpg'),
(040, 1, 'วิทยาพาเพลิน', 'อัสฮา', '5710110876', 'วิทยาศาสตร์', 4, 1, 'img_5a78791680a30.jpg'),
(042, 2, 'วิทยาสานใจ', 'ปัง', '5610110987', 'วิทยาศาสตร์', 5, 1, 'img_5a78796ab681e.jpg'),
(043, 2, 'วิทยาสานใจ', 'เย๊าะ', '5715557865', 'วิทยาศาสตร์', 4, 2, 'img_5a7879955f4b0.jpg'),
(044, 1, 'วิทยาพาเพลิน', 'ปัง', '5710110461', 'วิทยาศาสตร์', 4, 2, 'img_5a788c4fb4cd7.jpg'),
(045, 1, 'อุตอุต', 'ยุ้ย ญาติเยอะ', '5710110234', 'อุตสาหกรรมเกษตร', 4, 1, 'img_5a8450cc3ed42.jpg'),
(046, 1, 'อุตอุต', 'นู เระดมหลี', '5710110248', 'อุตสาหกรรมเกษตร', 4, 2, 'img_5a84511c639bd.jpg'),
(047, 2, 'อก.สารใจ', 'นุทดี ยาหมาย', '5710110246', 'อุตสาหกรรมเกษตร', 4, 1, 'img_5a8451c06d366.jpg'),
(048, 2, 'อก.สารใจ', 'ยัง ทาทา', '5710110367', 'อุตสาหกรรมเกษตร', 4, 2, 'img_5a845276dd373.jpg'),
(049, 2, 'อก.สารใจ', 'ฟาริส มะหะหมัด', '5710110338', 'อุตสาหกรรมเกษตร', 4, 3, 'img_5a84538859a38.jpg'),
(050, 1, 'วิทยาพาเพลิน', 'มุมิน', '5610110421', 'วิทยาศาสตร์', 5, 3, 'img_5a91a42193288.jpg'),
(054, 1, 'วิทยาพาเพลิน', 'ซุป ', '5710110272', 'วิทยาศาสตร์', 4, 5, 'img_5aad0b9134c1c.jpg'),
(056, 1, 'วิทยาพาเพลิน', 'นู', '5710110248', 'วิทยาศาสตร์', 4, 4, 'img_5aad0cf9aa85a.jpg'),
(057, 1, 'วิทยาพาเพลิน', 'อาซาน สาล่าห์', '5710110676', 'วิทยาศาสตร์', 3, 6, 'img_5ad4eead452c7.jpg'),
(058, 2, 'วิทยาสานใจ', 'อาซาน สาล่าห์', '5710110676', 'วิทยาศาสตร์', 4, 3, 'img_5ad71bcfee532.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `samo_team`
--

CREATE TABLE `samo_team` (
  `team_number` int(2) NOT NULL,
  `team_name` varchar(50) NOT NULL,
  `faculty` varchar(50) NOT NULL,
  `election_year` int(4) NOT NULL,
  `team_image` varchar(50) NOT NULL COMMENT 'โลโก้พรรค',
  `id` int(3) UNSIGNED ZEROFILL NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `samo_team`
--

INSERT INTO `samo_team` (`team_number`, `team_name`, `faculty`, `election_year`, `team_image`, `id`) VALUES
(0, '', '', 0, 'img_5ad4e73e4168d.png', 001),
(1, 'ทรัพสินเงินทอง', 'ทรัพยากรธรรมชาติ', 2561, 'img_5a760c972ca79.jpeg', 002),
(1, 'วิทยาพาเพลิน', 'วิทยาศาสตร์', 2561, 'img_5a74b0f794c5d.png', 003),
(1, 'วิศวะพาเพลิน', 'วิศวกรรมศาสตร์', 2561, 'img_5a74a7855c31a.jpg', 004),
(1, 'อุตอุต', 'อุตสาหกรรมเกษตร', 2561, 'img_5a844f8fd7b94.png', 005),
(2, 'ทรัพยาสารใจ', 'ทรัพยากรธรรมชาติ', 2561, 'img_5a760cc92d26c.jpg', 006),
(2, 'วิทยาสานใจ', 'วิทยาศาสตร์', 2561, 'img_5a74b15b64c44.jpeg', 007),
(2, 'วิศวะดงยาง', 'วิศวกรรมศาสตร์', 2561, 'img_5a74b1bc447ec.jpg', 008),
(2, 'อก.สารใจ', 'อุตสาหกรรมเกษตร', 2561, 'img_5a844fe306743.jpg', 009),
(3, 'test', 'วิทยาศาสตร์', 2561, 'img_5ad4e3e9bc523.png', 010);

-- --------------------------------------------------------

--
-- Table structure for table `sapa_candidate`
--

CREATE TABLE `sapa_candidate` (
  `id` int(3) UNSIGNED ZEROFILL NOT NULL,
  `type` varchar(20) NOT NULL COMMENT 'รูปแบบ',
  `year` varchar(20) NOT NULL COMMENT 'ปีการศึกษา',
  `sapa_fac` varchar(50) NOT NULL COMMENT 'คณะ',
  `std_num` varchar(20) NOT NULL COMMENT 'เบอร์',
  `std_id` text NOT NULL COMMENT 'รหัสนักศึกษา',
  `std_name` varchar(50) NOT NULL COMMENT 'ชื่อ',
  `std_lastname` varchar(50) NOT NULL COMMENT 'นามสกุล',
  `std_year` int(1) NOT NULL COMMENT 'ชั้นปี',
  `std_image` varchar(50) NOT NULL COMMENT 'รูป'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sapa_candidate`
--

INSERT INTO `sapa_candidate` (`id`, `type`, `year`, `sapa_fac`, `std_num`, `std_id`, `std_name`, `std_lastname`, `std_year`, `std_image`) VALUES
(029, 'normal', '2561', 'วิศวกรรมศาสตร์', '1', '5710110246', 'นุตดี', 'ยาหมาย', 4, 'img_5aa678b635b56.jpg'),
(032, 'fac', '2561', 'วิทยาศาสตร์', '1', '5710110113', 'ยุ้ย', 'ญาติเยอะ', 4, 'img_5aa67a37bae0c.jpg'),
(033, 'fac', '2561', 'วิศวกรรมศาสตร์', '2', '5710110428', 'นูรียา', 'เระดมหลี', 4, 'img_5aa67be206931.jpg'),
(034, 'normal', '2561', 'วิศวกรรมศาสตร์', '2', '5610110576', 'มุมิน', 'เจ๊ะแหล', 5, 'img_5aa67c1cf04b8.jpg'),
(036, 'normal', '2561', 'วิศวกรรมศาสตร์', '3', '5710110324', 'ฟาริส', 'มะหะหมัด', 4, 'img_5aabe4a544df5.jpg'),
(037, 'fac', '2561', 'ทรัพยากรธรรมชาติ', '3', '5710110272', 'ประวิท', 'หมัดหมาน', 4, 'img_5aabe4d1ab6f8.jpg'),
(039, 'normal', '2561', 'วิทยาการจัดการ', '4', '5810515171', 'อริณดา', 'เครือโสบ', 3, 'img_5abb359f8b0b5.jpg'),
(040, 'normal', '2561', 'วิศวกรรมศาสตร์', '5', '5710110676', 'อาซาน', 'สาล่าห์', 4, 'img_5abbece685603.jpg'),
(043, 'normal', '2561', 'วิศวกรรมศาสตร์', '6', '5710110272', 'ประวิท', 'หมัดหมาน', 4, 'img_5ad49e770adbd.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sapa_team`
--

CREATE TABLE `sapa_team` (
  `team_number` int(2) NOT NULL,
  `team_name` varchar(50) NOT NULL,
  `faculty` varchar(50) NOT NULL,
  `id` int(3) UNSIGNED ZEROFILL NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sapa_team`
--

INSERT INTO `sapa_team` (`team_number`, `team_name`, `faculty`, `id`) VALUES
(1, 'ทดสอบ', 'วิศวกรรมศาสตร์', 001),
(1, 'ทรัพสิน', 'ทรัพยากรธรรมชาติ', 002),
(1, 'วิทยาพาเพลิน', 'วิทยาศาสตร์', 003),
(1, 'อ.ก. เจริญ', 'อุตสาหกรรมเกษตร', 004),
(2, 'พลังทรัพ', 'ทรัพยากรธรรมชาติ', 005),
(2, 'วิศวะสารใจ', 'วิศวกรรมศาสตร์', 006);

-- --------------------------------------------------------

--
-- Table structure for table `std_year`
--

CREATE TABLE `std_year` (
  `year` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `std_year`
--

INSERT INTO `std_year` (`year`) VALUES
(1),
(2),
(3),
(4),
(5),
(6);

-- --------------------------------------------------------

--
-- Table structure for table `tblogin`
--

CREATE TABLE `tblogin` (
  `login_id` int(11) NOT NULL,
  `login_username` varchar(50) NOT NULL,
  `login_password` varchar(100) NOT NULL,
  `login_email` varchar(50) NOT NULL,
  `login_status` enum('0','1') NOT NULL DEFAULT '0',
  `details_status` enum('yes','no') NOT NULL DEFAULT 'no',
  `name` varchar(50) NOT NULL COMMENT 'ชื่อ',
  `last_name` varchar(50) NOT NULL COMMENT 'นามสกุล',
  `faculty` varchar(50) NOT NULL COMMENT 'คณะ',
  `year` int(1) NOT NULL COMMENT 'ชั้นปี',
  `std_id` varchar(10) NOT NULL COMMENT 'รหัสนักศึกษา'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblogin`
--

INSERT INTO `tblogin` (`login_id`, `login_username`, `login_password`, `login_email`, `login_status`, `details_status`, `name`, `last_name`, `faculty`, `year`, `std_id`) VALUES
(20, 'admin', '499dbfe047ec6d1be088d659ee5bff4e1a72d5ca2038e5638c90306ef217ff39', 'admin@gmail.com', '1', 'no', '', '', '', 0, ''),
(21, 'azan', '499dbfe047ec6d1be088d659ee5bff4e1a72d5ca2038e5638c90306ef217ff39', 'azansalah@hotmail.com', '0', 'yes', 'อาซาน', 'สาล่าห์', 'วิศวกรรมศาสตร์', 4, '5710110676'),
(22, 'azan2', '499dbfe047ec6d1be088d659ee5bff4e1a72d5ca2038e5638c90306ef217ff39', 'azan2@gmail.com', '0', 'yes', '', '', '', 0, ''),
(24, 'vee', '499dbfe047ec6d1be088d659ee5bff4e1a72d5ca2038e5638c90306ef217ff39', 'vee@psu.ac.th', '0', 'yes', '', '', '', 0, ''),
(25, 'alicebobcathy', 'e505b3359fabddf9296bbd11fb4c5158f1821fc313beab4f2039f32f43a970ad', 'asds@abc.com', '0', 'no', '', '', '', 0, ''),
(26, 'prawit', '499dbfe047ec6d1be088d659ee5bff4e1a72d5ca2038e5638c90306ef217ff39', 'prawit@hotmail.com', '0', 'yes', 'ประวิท ', 'หมัดหมาน', 'วิศวกรรมศาสตร์', 4, ''),
(27, 'nutdee', '499dbfe047ec6d1be088d659ee5bff4e1a72d5ca2038e5638c90306ef217ff39', 'nutdee.yamai28@gmail.com', '0', 'yes', 'นุทดี', 'ยาหมาย', 'วิศวกรรมศาสตร์', 4, '5710110246'),
(28, 'aaaa', '499dbfe047ec6d1be088d659ee5bff4e1a72d5ca2038e5638c90306ef217ff39', '', '0', 'yes', '', '', '', 0, ''),
(31, '5810515171', '4895b30cc2131ff05ea3794ff40844905e9194150d21abaee29359453c63d27b', 'ARINDA119@GMAIL.COM', '0', 'yes', 'อริณดา', 'เครือโสบ', 'วิทยาการจัดการ', 3, ''),
(34, 'azan3', '499dbfe047ec6d1be088d659ee5bff4e1a72d5ca2038e5638c90306ef217ff39', 'azansalah@hotmail.com', '0', 'yes', 'อาซาน3', 'สาล่าห์', 'วิศวกรรมศาสตร์', 4, ''),
(35, 'arinda2', '499dbfe047ec6d1be088d659ee5bff4e1a72d5ca2038e5638c90306ef217ff39', '', '0', 'no', '', '', '', 0, ''),
(37, 'vi', '8c6f062551e26108f1710dbc7803c10a830e9e20e299f19ac500c6d8192f244d', 'vee@hotmail.com', '0', 'yes', 'vee', 'vee', 'วิศวกรรมศาสตร์', 4, ''),
(38, 'minamoto', '9e5c0bef868f29ae18115693b9332431733aaebe1c93500b678becf0b3d47d23', 'eiei@gmail.com', '0', 'yes', 'มิน', 'หล่อมาก', 'วิศวกรรมศาสตร์', 5, '5710110421'),
(39, 'Asha Karinyala', '5d7fdbb49fad2be2c53e0ee52783701a10b9ccdbc9f807c566cc17fd6d47fd55', 'fana_fang@hotmail.com', '0', 'yes', 'อัสฮา ', 'กรินทร์ยะลา', 'วิศวกรรมศาสตร์', 4, ''),
(40, 'champ', 'e8730e71bbe10d2c40a15ab4b86b2413b033ee1fa04588069f6e4444fab0c23f', 'bancha@hotmail.com', '0', 'yes', 'แชมป์', 'บัญชา', 'วิศวกรรมศาสตร์', 4, '5710110111'),
(41, 'faris', 'f6dc5904e2f0dfda5fd9aa5201cc82826dd17750d1f57e9d6934ab6c675824b8', 'faris2462538@gmail.com', '0', 'yes', 'ฟาริส', 'มะหะหมัด', 'วิศวกรรมศาสตร์', 4, '5710110338'),
(42, 'yoh', '499dbfe047ec6d1be088d659ee5bff4e1a72d5ca2038e5638c90306ef217ff39', 'yoh@hotmail.com', '0', 'yes', 'เยาะ', 'เยาะ', 'วิทยาศาสตร์', 4, '5710210391'),
(43, 'wit', '499dbfe047ec6d1be088d659ee5bff4e1a72d5ca2038e5638c90306ef217ff39', 'wit@hotmail.com', '0', 'yes', 'ประวิท', 'หมัดหมาน', 'วิศวกรรมศาสตร์', 4, '5710110272'),
(44, 'test2', '499dbfe047ec6d1be088d659ee5bff4e1a72d5ca2038e5638c90306ef217ff39', '555@555.com', '0', 'yes', 'test', '2', 'วิศวกรรมศาสตร์', 6, '5555555555'),
(45, 'dekhong', '499dbfe047ec6d1be088d659ee5bff4e1a72d5ca2038e5638c90306ef217ff39', 'vee@psu.ac.th', '0', 'yes', 'วี', 'กาก', 'วิศวกรรมศาสตร์', 4, '5710110679'),
(46, 'yui', '499dbfe047ec6d1be088d659ee5bff4e1a72d5ca2038e5638c90306ef217ff39', 'yuii@hotmail.com', '0', 'yes', 'ยุ้ย', 'ญาติเยอะ', 'อุตสาหกรรมเกษตร', 4, '5710110999'),
(47, 'physic', 'b51caddb6ebb41855ee31d9dd14c44664897806fc1ca999b91cd36a811bd702e', 'kasih@hotmail.com', '0', 'yes', 'ดา', 'มา', 'วิศวกรรมศาสตร์', 2, '5610410765'),
(48, 'mumenah', '499dbfe047ec6d1be088d659ee5bff4e1a72d5ca2038e5638c90306ef217ff39', 'arinda@hotmail.com', '0', 'yes', 'มุมิ', 'หงุด', 'วิทยาศาสตร์', 4, '5810150171'),
(49, 'Nuria', '499dbfe047ec6d1be088d659ee5bff4e1a72d5ca2038e5638c90306ef217ff39', 'nuria.alone@gmail.com', '0', 'yes', 'นูรียา', 'เร๊ะดมหลี', 'วิศวกรรมศาสตร์', 4, '5710110248'),
(50, 'ekkarat', '499dbfe047ec6d1be088d659ee5bff4e1a72d5ca2038e5638c90306ef217ff39', 'ekk@hotmail.com', '0', 'yes', 'กบ', 'หมัดเด็น', 'ทรัพยากรธรรมชาติ', 4, '5710230485'),
(52, 'mufzee', '499dbfe047ec6d1be088d659ee5bff4e1a72d5ca2038e5638c90306ef217ff39', 'zee_1539@hotmail.com', '0', 'yes', 'มุฟซีย์', 'คงนาม', 'วิศวกรรมศาสตร์', 4, '5710110376'),
(53, 'payut', '499dbfe047ec6d1be088d659ee5bff4e1a72d5ca2038e5638c90306ef217ff39', 'payut@hotmail.com', '0', 'no', 'ประยุธ', 'นิยมเดชา', 'วิทยาศาสตร์', 4, '5710110123'),
(54, 'balee', '499dbfe047ec6d1be088d659ee5bff4e1a72d5ca2038e5638c90306ef217ff39', 'balee@hotmail.com', '0', 'yes', 'บาลี', 'หล่อลากใส้', 'วิศวกรรมศาสตร์', 4, '5710110593'),
(55, 'day', '499dbfe047ec6d1be088d659ee5bff4e1a72d5ca2038e5638c90306ef217ff39', 'day@hotmail.com', '0', 'yes', 'คอเดย์', 'สาบวด', 'ทรัพยากรธรรมชาติ', 4, '5712346354'),
(58, 'bancha', '499dbfe047ec6d1be088d659ee5bff4e1a72d5ca2038e5638c90306ef217ff39', '', '0', 'no', '', '', '', 0, ''),
(59, 'testtest', '499dbfe047ec6d1be088d659ee5bff4e1a72d5ca2038e5638c90306ef217ff39', 'arun@hotmail.com', '0', 'yes', 'อรุณ', 'เตี้ยเล็ก', 'วิศวกรรมศาสตร์', 4, '5710110123');

-- --------------------------------------------------------

--
-- Table structure for table `tbnews`
--

CREATE TABLE `tbnews` (
  `news_id` int(6) UNSIGNED ZEROFILL NOT NULL COMMENT 'รหัสข่าว',
  `news_topic` varchar(200) NOT NULL COMMENT 'หัวข้อข่าว',
  `news_detail` text NOT NULL COMMENT 'รายละเอียดข่าว',
  `news_filename` varchar(100) NOT NULL COMMENT 'ชื่อไฟล์',
  `news_status` int(1) NOT NULL DEFAULT '0' COMMENT 'สถานะข่าว',
  `news_date` datetime NOT NULL COMMENT 'วันที่',
  `newstype_id` int(3) NOT NULL COMMENT 'ประเภทข่าว'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbnewstype`
--

CREATE TABLE `tbnewstype` (
  `newstype_id` int(3) UNSIGNED ZEROFILL NOT NULL,
  `newstype_detail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbnewstype`
--

INSERT INTO `tbnewstype` (`newstype_id`, `newstype_detail`) VALUES
(001, 'ข่าวทั่วไป'),
(002, 'ข่าวเลือกตั้ง');

-- --------------------------------------------------------

--
-- Table structure for table `teamdb`
--

CREATE TABLE `teamdb` (
  `party_name` varchar(50) NOT NULL COMMENT 'ชื่อพรรค',
  `party_number` int(10) UNSIGNED NOT NULL COMMENT 'เบอร์พรรค',
  `t_name` varchar(50) NOT NULL COMMENT 'ชื่อ',
  `t_lastname` varchar(50) NOT NULL COMMENT 'นามสกุล',
  `t_id` varchar(10) NOT NULL COMMENT 'รหัสนักศึกษา',
  `t_faculty` int(3) UNSIGNED ZEROFILL NOT NULL COMMENT 'คณะ',
  `t_year` varchar(10) NOT NULL COMMENT 'ชั้นปี'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ผู้สมัคเลือกตั้งแบบทีม';

--
-- Dumping data for table `teamdb`
--

INSERT INTO `teamdb` (`party_name`, `party_number`, `t_name`, `t_lastname`, `t_id`, `t_faculty`, `t_year`) VALUES
('ม.อ. ขัดใจ', 1, 'ประวิท', 'หมัดหมาน', '5710110272', 002, '5'),
('ม.อ. ร่วมใจ', 2, 'นุทดี', 'ยาหมาย', '5710110246', 002, '4');

-- --------------------------------------------------------

--
-- Table structure for table `voted_ongkan`
--

CREATE TABLE `voted_ongkan` (
  `std_id` varchar(10) NOT NULL COMMENT 'รหัสนักศึกษา'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `voterdb`
--

CREATE TABLE `voterdb` (
  `studentv_name` varchar(50) NOT NULL COMMENT 'ชื่อ',
  `studentv_lastname` varchar(50) NOT NULL COMMENT 'นามสกุล',
  `studentv_id` varchar(10) NOT NULL COMMENT 'รหัสนักศึกษา',
  `studentv_faculty` int(3) UNSIGNED ZEROFILL NOT NULL COMMENT 'คณะ',
  `studentv_year` varchar(10) NOT NULL COMMENT 'ชั้นปี'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `voterdb`
--

INSERT INTO `voterdb` (`studentv_name`, `studentv_lastname`, `studentv_id`, `studentv_faculty`, `studentv_year`) VALUES
('นุทดี', 'ยาหมายย', '5710110246', 004, '4'),
('g', 'h', '5710110670', 003, '1'),
('ประวิทท', 'หมัดหมานน', '5710110678', 004, '4'),
('อาซานน', 'สาล่าห์', '5710110679', 004, '4');

-- --------------------------------------------------------

--
-- Table structure for table `warning_type`
--

CREATE TABLE `warning_type` (
  `warning_id` int(3) UNSIGNED ZEROFILL NOT NULL,
  `warning_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `warning_type`
--

INSERT INTO `warning_type` (`warning_id`, `warning_name`) VALUES
(001, 'ไม่อยู่ในช่วงเวลาเลือกตั้ง'),
(002, 'ขออภัย คุณได้ลงคะแนนเสียงไปแล้ว ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `electionset`
--
ALTER TABLE `electionset`
  ADD PRIMARY KEY (`electionset_id`),
  ADD KEY `electionset_id` (`electionset_id`);

--
-- Indexes for table `electionset_samo`
--
ALTER TABLE `electionset_samo`
  ADD PRIMARY KEY (`electionset_id`);

--
-- Indexes for table `electionset_sapa`
--
ALTER TABLE `electionset_sapa`
  ADD PRIMARY KEY (`electionset_id`);

--
-- Indexes for table `election_type`
--
ALTER TABLE `election_type`
  ADD PRIMARY KEY (`election_id`);

--
-- Indexes for table `faculty_type`
--
ALTER TABLE `faculty_type`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `onedb`
--
ALTER TABLE `onedb`
  ADD PRIMARY KEY (`one_number`,`one_id`);

--
-- Indexes for table `ongkan_candidate`
--
ALTER TABLE `ongkan_candidate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ongkan_team`
--
ALTER TABLE `ongkan_team`
  ADD PRIMARY KEY (`electionset_id`);

--
-- Indexes for table `position_type`
--
ALTER TABLE `position_type`
  ADD PRIMARY KEY (`position_id`);

--
-- Indexes for table `position_type_samo`
--
ALTER TABLE `position_type_samo`
  ADD PRIMARY KEY (`position_id`);

--
-- Indexes for table `resault_ongkan`
--
ALTER TABLE `resault_ongkan`
  ADD PRIMARY KEY (`num`);

--
-- Indexes for table `resault_samo_agro`
--
ALTER TABLE `resault_samo_agro`
  ADD PRIMARY KEY (`num`);

--
-- Indexes for table `resault_samo_en`
--
ALTER TABLE `resault_samo_en`
  ADD PRIMARY KEY (`num`);

--
-- Indexes for table `resault_samo_rn`
--
ALTER TABLE `resault_samo_rn`
  ADD PRIMARY KEY (`num`);

--
-- Indexes for table `resault_samo_sc`
--
ALTER TABLE `resault_samo_sc`
  ADD PRIMARY KEY (`num`);

--
-- Indexes for table `resault_sapa`
--
ALTER TABLE `resault_sapa`
  ADD PRIMARY KEY (`num`);

--
-- Indexes for table `samo_candidate`
--
ALTER TABLE `samo_candidate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `samo_team`
--
ALTER TABLE `samo_team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sapa_candidate`
--
ALTER TABLE `sapa_candidate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sapa_team`
--
ALTER TABLE `sapa_team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `std_year`
--
ALTER TABLE `std_year`
  ADD PRIMARY KEY (`year`);

--
-- Indexes for table `tblogin`
--
ALTER TABLE `tblogin`
  ADD PRIMARY KEY (`login_id`),
  ADD UNIQUE KEY `login_username` (`login_username`);

--
-- Indexes for table `tbnews`
--
ALTER TABLE `tbnews`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `tbnewstype`
--
ALTER TABLE `tbnewstype`
  ADD PRIMARY KEY (`newstype_id`);

--
-- Indexes for table `teamdb`
--
ALTER TABLE `teamdb`
  ADD PRIMARY KEY (`party_name`,`party_number`,`t_id`);

--
-- Indexes for table `voterdb`
--
ALTER TABLE `voterdb`
  ADD PRIMARY KEY (`studentv_id`);

--
-- Indexes for table `warning_type`
--
ALTER TABLE `warning_type`
  ADD PRIMARY KEY (`warning_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `electionset`
--
ALTER TABLE `electionset`
  MODIFY `electionset_id` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `electionset_samo`
--
ALTER TABLE `electionset_samo`
  MODIFY `electionset_id` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `electionset_sapa`
--
ALTER TABLE `electionset_sapa`
  MODIFY `electionset_id` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `onedb`
--
ALTER TABLE `onedb`
  MODIFY `one_number` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'หมายเลขผู้สมัค', AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `ongkan_candidate`
--
ALTER TABLE `ongkan_candidate`
  MODIFY `id` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `ongkan_team`
--
ALTER TABLE `ongkan_team`
  MODIFY `electionset_id` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `position_type`
--
ALTER TABLE `position_type`
  MODIFY `position_id` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'รหัสตำแหน่ง', AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `position_type_samo`
--
ALTER TABLE `position_type_samo`
  MODIFY `position_id` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `resault_ongkan`
--
ALTER TABLE `resault_ongkan`
  MODIFY `num` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'ลำดับ', AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT for table `resault_samo_agro`
--
ALTER TABLE `resault_samo_agro`
  MODIFY `num` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `resault_samo_en`
--
ALTER TABLE `resault_samo_en`
  MODIFY `num` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `resault_samo_rn`
--
ALTER TABLE `resault_samo_rn`
  MODIFY `num` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `resault_samo_sc`
--
ALTER TABLE `resault_samo_sc`
  MODIFY `num` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'ลำดับ', AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `resault_sapa`
--
ALTER TABLE `resault_sapa`
  MODIFY `num` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'ลำดับ', AUTO_INCREMENT=162;
--
-- AUTO_INCREMENT for table `samo_candidate`
--
ALTER TABLE `samo_candidate`
  MODIFY `id` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `samo_team`
--
ALTER TABLE `samo_team`
  MODIFY `id` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `sapa_candidate`
--
ALTER TABLE `sapa_candidate`
  MODIFY `id` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `sapa_team`
--
ALTER TABLE `sapa_team`
  MODIFY `id` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tblogin`
--
ALTER TABLE `tblogin`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `tbnews`
--
ALTER TABLE `tbnews`
  MODIFY `news_id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'รหัสข่าว';
--
-- AUTO_INCREMENT for table `tbnewstype`
--
ALTER TABLE `tbnewstype`
  MODIFY `newstype_id` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `warning_type`
--
ALTER TABLE `warning_type`
  MODIFY `warning_id` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
