-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2020 at 12:11 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_runner`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank`
--

CREATE TABLE `tbl_bank` (
  `id_bank` int(50) NOT NULL COMMENT 'รหัสธนาคาร',
  `id_running_event` int(50) NOT NULL COMMENT 'รหัสผู้จัด',
  `name_bank` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อธนาคาร',
  `account_number_bank` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'เลขบัญชีธนาคาร',
  `branch_bank` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'สาขาธนาคาร'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_bank`
--

INSERT INTO `tbl_bank` (`id_bank`, `id_running_event`, `name_bank`, `account_number_bank`, `branch_bank`) VALUES
(5, 1, 'scb', '984-5646-5314', 'ม.อ.'),
(6, 12, 'กสิกรไทย', '5462312536', 'หาดใหญ่'),
(7, 12, 'กรุงศรี', '2543215236', 'สงขลา'),
(9, 14, 'กสิกรไทย', '2453612547', 'บ้านพูด'),
(13, 20, 'กรุงไทย', '5652543256', 'หาดใหญ่'),
(14, 17, 'กรุงไทย', '2453612547', 'พัทลุง'),
(15, 17, 'ไทยพาณิชย์', '4532152457', 'ศรีตรัง'),
(16, 13, 'ไทยพาณิชย์', '2543215236', 'พัทลุง'),
(17, 19, 'กรุงไทย', '7895521456', 'บ้านพูด'),
(22, 29, 'กรุงไทย', '5652543256', 'บ้านพูด'),
(23, 30, 'กรุงไทย', '2543215236', 'บ้านพูด'),
(24, 31, 'กรุงไทย', '2543215236', 'หาดใหญ่'),
(25, 32, 'กรุงไทย', '2543215236', 'หาดใหญ่'),
(26, 32, 'ไทยพาณิชย์', '5652543256', 'สงขลา'),
(28, 33, 'ไทยพาณิชย์', '5652543256', 'หาดใหญ่'),
(29, 35, 'ไทยพาณิชย์', '2453612547', 'หาดใหญ่');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id_contact` int(11) NOT NULL,
  `name_contact` varchar(100) NOT NULL COMMENT 'ชื่อผู้ขอจัดงาน',
  `faculty_contact` varchar(100) NOT NULL COMMENT 'คณะที่สังกัด',
  `tel_contact` varchar(15) NOT NULL COMMENT 'เบอร์โทรผู้ขอ',
  `email_contact` varchar(100) NOT NULL COMMENT 'อีเมลผู้ขอ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id_contact`, `name_contact`, `faculty_contact`, `tel_contact`, `email_contact`) VALUES
(1, 'วุฒิวัฒน์ หมาดหมาน', 'วิทยาการจัดการ', '0801389126', 'wuttiwatmadman@outlook.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_event_type`
--

CREATE TABLE `tbl_event_type` (
  `id_event_type` int(50) NOT NULL COMMENT 'รหัสประเภทงานวิ่งที่รับสมัคร',
  `id_running_event` int(50) NOT NULL COMMENT 'รหัสงานวิ่ง',
  `id_type_running` int(50) NOT NULL COMMENT 'รหัสประเภทการวิ่ง',
  `number_received` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'จำนวนที่รับ',
  `entry_fee` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ค่าสมัคร'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ประเภทงานวิ่ง';

--
-- Dumping data for table `tbl_event_type`
--

INSERT INTO `tbl_event_type` (`id_event_type`, `id_running_event`, `id_type_running`, `number_received`, `entry_fee`) VALUES
(10, 13, 1, '200', '200'),
(11, 13, 29, '300', '300'),
(13, 17, 31, '200', '200'),
(14, 17, 1, '300', '150'),
(18, 19, 1, '300', '200'),
(19, 19, 29, '200', '350'),
(20, 19, 31, '200', '400'),
(44, 35, 1, '200', '200'),
(45, 35, 29, '300', '300');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faculty`
--

CREATE TABLE `tbl_faculty` (
  `id_faculty` int(11) NOT NULL,
  `name_faculty` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_faculty`
--

INSERT INTO `tbl_faculty` (`id_faculty`, `name_faculty`) VALUES
(1, 'วิทยาการจัดการ'),
(2, 'วิศวกรรมศาสตร์'),
(3, 'พยาบาลศาสตร์'),
(4, 'อุตสาหกรรมเกษตร'),
(5, 'ทรัพยากรธรรมชาติ'),
(6, 'วิทยาลัยนานาชาติ'),
(7, 'แพทยศาสตร์'),
(8, 'ศิลปศาสตร์'),
(9, 'นิติศาสตร์'),
(10, 'วิทยาศาสตร์'),
(11, 'ทันตแพทย์'),
(12, 'เภสัชศาสตร์'),
(13, 'แพทย์แผนไทย'),
(14, 'สัตวแพทย์'),
(15, 'เทคนิคการแพทย์'),
(16, 'เศรษฐศาสตร์'),
(17, 'วิทยาลัยนานาชาติยางพาราไทย-จีน');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id_payment` int(50) NOT NULL COMMENT 'รหัสการจ่ายเงิน',
  `id_register_run` int(50) NOT NULL COMMENT 'รหัสการสมัครวิ่ง',
  `id_bank` int(11) NOT NULL,
  `amount_payment` int(100) NOT NULL,
  `date_payment` date NOT NULL COMMENT 'วันที่จ่าย',
  `time_payment` time NOT NULL COMMENT 'เวลาที่จ่าย',
  `slip_payment` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ไฟล์รูปภาพสลิป'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`id_payment`, `id_register_run`, `id_bank`, `amount_payment`, `date_payment`, `time_payment`, `slip_payment`) VALUES
(5, 4, 5, 200, '2020-04-17', '01:00:00', 'slip_20200418070402.jpg'),
(6, 12, 5, 200, '2020-04-23', '01:11:00', 'slip_20200418070415.jpg'),
(7, 15, 5, 250, '2020-04-19', '04:04:00', 'slip_20200418081837.jpg'),
(8, 16, 5, 300, '2022-04-04', '00:02:00', 'slip_20200422021054.png'),
(9, 17, 5, 400, '2020-04-24', '12:12:00', 'slip_20200422021839.jpg'),
(10, 22, 8, 200, '2020-04-11', '23:00:00', 'slip_20200426120059.PNG'),
(11, 22, 8, 150, '2020-04-11', '23:00:00', 'slip_20200426121014.PNG'),
(12, 24, 11, 300, '2020-04-26', '23:01:00', 'slip_20200426025606.PNG'),
(15, 25, 14, 200, '2020-04-16', '03:01:00', 'slip_20200428010052.jpg'),
(16, 29, 14, 200, '2020-04-28', '03:56:00', 'slip_20200428013236.jpg'),
(18, 26, 16, 200, '2020-04-28', '00:56:00', 'slip_20200428015438.jpg'),
(23, 37, 17, 500, '2020-04-28', '03:57:00', 'slip_20200428031356.jpg'),
(24, 38, 14, 150, '2020-04-29', '02:57:00', 'slip_20200429014717.jpg'),
(25, 40, 19, 200, '2020-04-29', '02:55:00', 'slip_20200429035350.jpg'),
(26, 41, 20, 200, '2020-04-29', '01:55:00', 'slip_20200429051025.jpg'),
(27, 42, 21, 200, '2020-04-29', '02:55:00', 'slip_20200429060839.jpg'),
(32, 49, 25, 200, '2020-04-29', '03:55:00', 'slip_20200429074908.jpg'),
(33, 51, 28, 200, '2020-04-29', '04:57:00', 'slip_20200429082918.jpg'),
(34, 53, 29, 200, '2020-04-30', '01:57:00', 'slip_20200430015125.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_register_run`
--

CREATE TABLE `tbl_register_run` (
  `id_register_run` int(50) NOT NULL COMMENT 'รหัสการสมัครวิ่ง',
  `id_user` int(50) NOT NULL COMMENT 'รหัสผู้สมัครทั่วไป',
  `id_event_type` int(50) NOT NULL COMMENT 'รหัสประเภทที่สมัคร',
  `number_register_run` int(11) NOT NULL COMMENT 'เลขวิ่ง',
  `status_register_run` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'สถานะการจ่ายเงิน',
  `size_register_run` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ไซส์เสื้อ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_register_run`
--

INSERT INTO `tbl_register_run` (`id_register_run`, `id_user`, `id_event_type`, `number_register_run`, `status_register_run`, `size_register_run`) VALUES
(4, 5, 3, 1, '3', 'L'),
(12, 5, 3, 2, '3', 'M'),
(15, 5, 3, 3, '3', 'F'),
(16, 5, 4, 0, '3', 'S'),
(17, 5, 3, 4, '3', '2XL'),
(18, 5, 5, 0, '1', ''),
(19, 5, 3, 0, '1', ''),
(20, 2, 7, 0, '1', ''),
(21, 2, 8, 0, '1', ''),
(22, 22, 10, 1, '3', 'F'),
(23, 22, 18, 0, '1', ''),
(24, 5, 18, 1, '3', 'M'),
(25, 5, 14, 1, '3', 'M'),
(26, 5, 10, 2, '3', 'M'),
(27, 5, 22, 0, '0', '0'),
(28, 5, 23, 0, '3', 'S'),
(29, 7, 13, 0, '2', 'M'),
(30, 7, 19, 0, '1', 'S'),
(31, 7, 10, 0, '2', 'M'),
(32, 7, 11, 0, '2', 'F'),
(33, 7, 23, 0, '2', 'M'),
(34, 5, 14, 0, '2', '3XL'),
(37, 5, 21, 1, '3', 'M'),
(40, 23, 26, 1, '3', 'M'),
(47, 29, 34, 1, '3', 'M'),
(48, 29, 36, 1, '3', 'M'),
(49, 29, 38, 1, '3', 'M'),
(51, 29, 40, 1, '3', 'M'),
(53, 29, 44, 0, '2', 'M');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_running_event`
--

CREATE TABLE `tbl_running_event` (
  `id_running_event` int(50) NOT NULL COMMENT 'รหัสงานวิ่ง',
  `id_user` int(50) NOT NULL COMMENT 'รหัสผู้ใช้งานระบบ',
  `id_faculty` int(11) NOT NULL,
  `name_running_event` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่องานวิ่ง',
  `date_running_event` date NOT NULL COMMENT 'วันที่จัดงานวิ่ง',
  `photo_running_event` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'รูปงานวิ่ง',
  `shirtphoto_running_event` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'รูปเสื้องานวิ่ง',
  `map_running_event` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ภาพแผนที่งานวิ่ง',
  `detail_running_event` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'รายละเอียดงานวิ่ง'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_running_event`
--

INSERT INTO `tbl_running_event` (`id_running_event`, `id_user`, `id_faculty`, `name_running_event`, `date_running_event`, `photo_running_event`, `shirtphoto_running_event`, `map_running_event`, `detail_running_event`) VALUES
(13, 22, 5, 'งานวิ่งเด็กทรัพย์', '2020-06-18', 'photo_running_event_20200425_233053.jpg', 'shirtphoto_running_event_20200425_233053.jpg', 'map_running_event_20200425_233053.jpg', 'การชำระเงิน\r\n1.สามารถชำระเงินด้วย VISA,Master และ JCB\r\n2.สามารถโอนเงินเข้าที่ ธนาคารกสิกรไทย เลขบัญชี  052-3-954695\r\nชื่อบัญชี Fanatic Run (เฟนาติก รัน)  (ต้องแนบหลักฐานการโอนเงิน ในการสมัครทันที)\r\n***ไม่รับโอนเงินผ่าน true wallet ผ่าน AirPay เพราะไม่สามารถระบุเวลาที่แน่นอน ของยอดเงินที่เข้าบัญชีได้\r\n\r\nสมัครonline จัดส่งเสื้อ-BIB ทางไปรษณีย์  (จัดส่งเสื้อและเบอร์วิ่งให้ก่อนวันงาน 1-2 สัปดาห์)\r\n1.กรณีสมัครแบบเดี่ยวค่าจัดส่ง 65 บาท\r\n2.กรณีสมัครแบบเป็นกลุ่ม (เลขสมัครเดียวกัน) ค่าจัดส่งตัวแรกคิด 65 บาท ตัวต่อไปบวกเพิ่ม ตัวละ 10 บาท  ระบบจะคิดค่าจัดส่งให้อัตโนมัติ\r\n(** ราคาค่าจัดส่งนี้ เฉพาะเลขที่สมัครเดียวกันเท่านั้น ไม่สามารถรวมกับเลขที่สมัครอื่นได้ ** )\r\n\r\n วิธีเช็คสถานะการสมัครและเลขพัสดุ\r\nล๊อคอินที่หน้าเว็ปไซด์ FanaticRun.com -->ประวัติลงทะเบียนเข้ารวมกิจกรรม-->กดดูที่เลขสมัครของท่าน\r\n*** เราใช้ขนส่งเอกชน( DHL) ในการจัดส่งเสื้อและ BIB ที่อยู่  และเบอร์โทรศัพย์ ต้องชัดเจนและถูกต้อง\r\n\r\nช่องทางการรับเสื้อและเบอร์วิ่ง\r\nวันเสาร์ที่ 6 มิถุนายน 2563  รับที่ ณ สวนพุทธมณฑล ถนนพุทธมณฑลสาย 4 ศาลายา จ.นครปฐม  เวลา 12.00-18.00 น\r\n-ในกรณีรับด้วยตัวเอง หลักฐานในการรับเสื้อ +BIB ใช้เลขที่สมัคร +บัตรประชาชน\r\n-ในกรณีรับเสื้อ+เบอร์วิ่ง แทนคนอื่น ใช้เลขที่สมัคร +บัตรประชาชนของคนที่มีชื่อในใบสมัครเท่านั้น\r\n-ในกรณี เป็นผู้สมัครให้คนอื่น แล้วจะรับแทนใช้เลยสมัคร+บัตรประชาชนของคนที่มีชื่อในใบสมัครเท่านั้น\r\n(เอกสารที่ใช้ในรับเสื้อ+BIB  บัตรประชาชน หรือเลขที่สมัคร สามารถแคปเจอร์รูปภาพใส่ไว้ในโทรศัพย์มือถือได้  )\r\n***ไม่อนุญาตให้มีการลงทะเบียน รับเสื้อ เบอร์ประจำตัว ในเช้าวันแข่งขันโดยเด็ดขาด\r\n\r\nสถานที่จัดงาน :  สวนพุทธมณฑล (ฝั่งพิพิธภัณฑ์ พระพุทธศาสนา) เข้าทางประตู 2  ถนนพุทธมณฑลสาย 4 ศาลายา จ.นครปฐม\r\nพิกัด GPS: 13.7822928,100.3237115\r\nGoogle Maps Link --> https://goo.gl/maps/WQcY9gPAkAZm6R3c6\r\nของรางวัลพิเศษ\r\n*** Overall ชาย/หญิง (ประธานจะเป็นผู้มอบถ้วยรางวัล)\r\n*** รางวัลนักวิ่งแฟนซี จำนวน 15 รางวัล (ประธานจะเป็นผู้มอบถ้วยรางวัล)\r\n*** รางวัลชมรมวิ่งที่ส่งนักวิ่งมากที่สุด จำนวน 5 รางวัล  20 คนขึ้นไป (ประธานจะเป็นผู้มอบถ้วยรางวัล) \r\n\r\n#กำหนดการปล่อยตัว\r\nระยะการแข่งขัน 10.5 km. เวลา 06.00 น.\r\nระยะการแข่งขัน  5 km. เวลา 06.15 น.\r\nระยะการแข่งขัน  3 km. เวลา 06.30 น\r\n\r\n** อัพเดทข้อมูลการจัดกิจกรรมที่  https://www.facebook.com/AKHA-Run-for-Give-Mini-Marathon-114125026794171/\r\nโทร 0830155445 ติดต่อสอบถาม\r\n\r\n'),
(17, 2, 3, 'งานวิ่งพยาบาล', '2020-05-15', 'photo_running_event_20200426_024731.jpg', 'shirtphoto_running_event_20200426_024731.jpg', 'map_running_event_20200426_024731.jpg', 'วิ่งสะสมระยะทาง 66 Virtual Run 2020 วิ่งเพื่อน้องโรงเรียนร่องธารวิทยา จ.เชียงราย ได้บุญ ได้สุขภาพ ได้ลุ้นทริปท่องเที่ยวประเทศจอร์เจีย เป็นงานวิ่งสะสมระยะทางให้ครบ 66 กิโลเมตร ทุกการสมัครเข้าร่วมกิจกรรมจะร่วมบริจาค ให้โรงเรียนร่องธารวิทยา จ.เชียงราย จำนวน 66 บาท เพื่อมอบให้เป็นทุนการศึกษาของนักเรียนและนำไปพัฒนาโรงเรียนในด้านต่างๆ และทุกๆการสมัครเข้าร่วมกิจกรรม จะได้ลุ้น รางวัลแพ็คเก็จทัวร์ ท่องเที่ยว ประเทศ จอร์เจีย 6 วัน 4 คืน เดินทาง Charter Flight โดยสายการบิน Air Asia X จานวน 1 ที่นั่ง มูลค่า 29,900 บาท ( ทริปเดินทางช่วงเดือน มิถุนายน 2563 )\r\n\r\nเริ่มรับสมัคร \r\n\r\nตั่งแต่วันนี้ถึง 31 พฤษภาคม 2563\r\nเริ่มเก็บระยะวิ่ง \r\n\r\n27 มีนาคม 2563 – 31 พฤษภาคม 2563 ( 66 วัน ) เฉลี่ย วันละ 1 กิโลเมตร\r\n\r\nสถานที่วิ่ง : วิ่งที่ไหนก็ได้\r\n\r\nระยะวิ่ง \r\n\r\n66 กิโลเมตร \r\n\r\nการส่งผล \r\nสามารถวิ่งและเก็บระยะสะสม โดยใช้ App บนมือถือ เช่น Run Keeper, Nike Run, Endomondo, Strava หรือ App อื่นๆที่สามารถบอกระยะทางได้'),
(19, 22, 6, 'วิ่งเด็กนานาชาติ', '2020-07-08', 'photo_running_event_20200426_025645.jpg', 'shirtphoto_running_event_20200426_025645.jpg', 'map_running_event_20200426_025645.jpg', 'The EmQuartier Together Run 2017 เป็นการจัดมินิมาราธอนที่ไม่ได้มินิอย่างชื่อเลยสักนิดเดียว เพราะงานวิ่งมินิมาราธอน The EmQuartier Together Run 2017 นี้จัดขึ้นอย่างยิ่งใหญ่โดยบริษัทยักษ์ใหญ่ทั้ง 4 บริษัทของไทยอย่าง บริษัทเดอะมอล บริษัทไทยประกันชีวิต บริษัทเวอร์จิ้น แอ็คทีฟประเทศไทย และบริษัทเป๊ปซี่โคล่าประเทศไทย ซึ่งถือว่าเป็นงานวิ่งมินิมาราธอนครั้งยิ่งใหญ่ของประเทศโดยกิจกรรมวิ่งมินิมาราธอน The EmQuartier Together Run 2017 จัดขึ้นเมื่อวันที่ 14 พฤษภาคม พ.ศ. 2560 เวลา 04.45 – 05.30 น. ที่ผ่านมาบริเวณหน้าห้างดิเอ็มควอเทียร์สุขุมวิทโดยจุดประสงค์ของการรวมตัวของบริษัทยักษ์ใหญ่ทั้ง 4 เพื่อที่จะนำเงินที่ได้จากการจัดกิจกรรมไปบริจาคช่วยเหลือสังคม โดยมอบให้กับมูลนิธิขาเทียมในสมเด็จพระศรีนครินทราบรมราชชนนี  นอกจากนี้การจัดงานวิ่งมาราธอน The EmQuartier Together Run 2017 ครั้งนี้ยังเป็นกิจกรรมที่ทำให้คนไทยหันมารักษาและใส่ใจสุขภาพของตัวเองมากขึ้นอีกด้วย\r\nก่อนหน้าที่จะจัดกินกรรมวิ่งมาราธอนยังมีกิจกรรมที่เรียกว่า THE EMQUARTIER RUNNING EXPO 2017 ซึ่งเป้นมหกรรมสินค้าลดราคา ระหว่างวันที่ 9-14 พฤษภาคม ในโซนกีฬาที่ดิเอ็มควอเทียร์ซึ่งมีหลายแบรนด์ที่ร่วมรายการครั้งนี้เช่น NIKE, ASIC, ADIDAS, UNDER AMOUR, PUMA, REEBOK ฯลฯ ซึ่งเรียกได้ว่าเป็นงานเรียกน้ำย่อยก่อนกิจกรรมมาราธอนที่ยิ่งใหญ่ไม่แพ้กัน ทำให้หลายๆคนได้ทราบข่าวเรื่องการวิ่งมาราธอนกันจึงทำให้งานครั้งนี้ได้รับความร่วมมือจากหลายๆ คนที่อยู่บริเวณใกล้เคียงเข้ามาร่วมกิจกรรมด้วยกันเยอะมากแถมยังได้ซื้อของลดราคากันอีกด้วย เรียกว่าได้ทั้งสุขภาพได้ทั้งสินค้าคุณภาพดีราคาถูกได้ช็อปปิ้งกันแบบคุ้มสุดคุ้มไปอีก\r\n\r\n'),
(35, 24, 10, 'งานวิ่ง PSU Sci', '2020-06-13', 'photo_running_event_20200430_014147.jpg', 'shirtphoto_running_event_20200430_014147.jpg', 'map_running_event_20200430_014147.jpg', 'คณะวิศวกรรมศาสตร์ มหาวิทยาลัยสงขลานครินทร์ ในรอบ 50 ปีที่ผ่านมามุ่งเน้นการผลิตบัณฑิตที่มีคุณภาพ โดยพัฒนาผ่านกระบวนการเรียนการสอนและกิจกรรมนักศึกษา ทางคณะฯ มีนโยบายส่งเสริมกิจกรรมของนักศึกษาและบุคลากรทั้งภายในและภายนอกมหาวิทยาลัย โดยเฉพาะกิจกรรมระหว่างนักศึกษา ศิษย์เก่า บุคลากร และบุคคลภายนอกมหาวิทยาลัย นั่นคือสิ่งเป็นเป้าหมายและพันธกิจหลักของคณะฯ ทั้งนี้เพื่อส่งเสริมความสัมพันธ์ที่ดีระหว่างมหาวิทยาลัยกับชุมชน\r\n\r\n     ดังนั้น ในช่วงตั้งแต่ปี 2554 ทางคณะฯ ได้เล็งเห็นความสำคัญกับการจัดงานวิ่ง โดยทางคณะวิศวกรรมศาสตร์และสมาคมศิษย์เก่าฯ ได้ดำเนินการจัดงานวิ่งไปแล้ว 2 ครั้ง คือในปี 2554 และปี 2560 ซึ่งได้รับการยอมรับและความร่วมมือที่ดีจากนักศึกษา ศิษย์เก่า บุคลากรทั้งภายในและภายนอกมหาวิทยาลัย\r\n\r\nในปี 2562 ทางคณะฯ จึงมีความประสงค์จะจัดกิจกรรมวิ่งเพื่อความต่อเนื่องเป็นปีที่ 3 เพื่อสร้างเสริมการออกกำลังกายเพื่อสุขภาพ ส่งเสริมการท่องเที่ยวจังหวัดสงขลา ส่งเสริมความสัมพันธ์และความสามัคคีอันดีของนักศึกษาและบุคลากร รวมถึงการมีส่วนร่วมระหว่างชุมชนกับมหาวิทยาลัย โดยกิจกรรมวิ่งดังกล่าวทางคณะฯ ได้วางนโยบายไว้เป็นกิจกรรมเพื่อสร้างเสริมสุขภาพให้แก่ท้องถิ่นและดำเนินการต่อเนื่องเป็นประจำทุกปี ซึ่งสำหรับในปีนี้ รายได้ที่มาจากการจัดกิจกรรมจะนำสนับสนุนเพื่อพัฒนากิจกรรมต่างๆ ของนักศึกษา และรายได้ส่วนหนึ่งเพื่อนำไปสมทบทุนและบริจาคเพื่อกิจกรรมที่เป็นสาธารณะประโยชน์ต่อไป\r\n\r\nโดยวัตถุประสงค์ดังนี้\r\n\r\n เพื่อเป็นการส่งเสริมกิจกรรมส่งเสริมสุขขภาพที่จัดขึ้นเป็นประจำทุกปี ให้แก่นักศึกษาปัจจุบัน ศิษย์เก่า บุคลากรในคณะฯ และในมหาวิทาลัย รวมถึงบุคคลภายนอก ได้ร่วมมือกันสร้างสรรค์งานและมีส่วนร่วมในการออกกำลังกาย\r\nเพื่อสนับสนุนและส่งเสริมการหารายได้สนับสนุนกิจกรรมนักศึกษาของคณะวิศวกรรมศาสตร์\r\nเพื่อนำรายได้ส่วนหนึ่งนำไปสมทบทุนและบริจาคเพื่อกิจกรรมที่เป็นสาธารณะประโยชน์');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_type_running`
--

CREATE TABLE `tbl_type_running` (
  `id_type_running` int(50) NOT NULL COMMENT 'รหัสประเภทวิ่ง',
  `name_type_running` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อประเภทวิ่ง',
  `distance_type_running` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ระยะทางประเภทวิ่ง',
  `short_type_running` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ตัวย่อ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_type_running`
--

INSERT INTO `tbl_type_running` (`id_type_running`, `name_type_running`, `distance_type_running`, `short_type_running`) VALUES
(1, 'Funrun', '5', 'F-'),
(29, 'Mini half marathon', '10', 'MH-'),
(31, 'Marathon', '42', 'M-'),
(32, 'Ultra marathon', '50', 'U-'),
(33, 'Mini marathon', '21', 'MM-');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL COMMENT 'รหัสผู้ใช้งานระบบ',
  `name_user` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อผู้ใช้งาน',
  `last_user` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'นามสกุลผู้ใช้งาน',
  `username_user` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ไอดีผู้ใช้งาน',
  `password_user` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'พาสเวิร์ดผู้ใช้งาน',
  `age_user` int(3) NOT NULL COMMENT 'อายุผู้ใช้งาน',
  `sex_user` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'เพศผู้ใช้งาน',
  `tel_user` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'เบอร์โทรผู้ใช้งาน',
  `email_user` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'อีเมลผู้ใช้งาน',
  `level_user` int(1) NOT NULL COMMENT 'ระดับผู้ใช้งาน'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `name_user`, `last_user`, `username_user`, `password_user`, `age_user`, `sex_user`, `tel_user`, `email_user`, `level_user`) VALUES
(2, 'ผู้จัดงาน', 'ฝุก', '2', '2', 35, 'male', '0899755745', 'sodni1997@gmail.com', 2),
(7, 'วุฒิวัฒน์', 'หมาดหมาน', '11', '11', 60, 'female', '0801356499', 'sodni1997@gmail.com', 1),
(21, 'admin', 'test', 'admin', 'test123', 22, 'male', '0801389126', 'sodni1997@gmail.com', 3),
(22, 'ทรงสิท', 'ฟอร์ด', '123456', '123456', 15, 'male', '0845362514', 'mickempd@hotmail.com', 2),
(24, 'สมศักดิ์', 'เครือเอื้ออาชย์', 'somsak', '56789', 23, 'male', '0854235145', 'dekfook@gmail.com', 2),
(26, 'ทรงสิทธ์', 'เครือเอื้ออาชย์', '5555', '5555', 20, 'male', '0845362514', 'mickempd@hotmail.com', 2),
(27, 'ทรงสิท', 'ฟอร์ด', '555', '5555', 20, 'male', '0854665236', 'mickempd@hotmail.com', 2),
(28, 'ทรงสิทธ์', 'เครือเอื้ออาชย์', '4444', '4444', 25, 'male', '0854665236', 'mickempd@hotmail.com', 2),
(29, 'ทรงสิทธ์', 'เจริญฤทธิ์', 'songsit', '12345', 25, 'male', '0845362514', 'mickempd@hotmail.com', 1),
(35, 'วุฒิวัฒนื', 'หมาดหมาน', '555', '555', 25, 'male', '0845362514', 'mickempd@hotmail.com', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  ADD PRIMARY KEY (`id_bank`),
  ADD KEY `id_running_event` (`id_running_event`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id_contact`);

--
-- Indexes for table `tbl_event_type`
--
ALTER TABLE `tbl_event_type`
  ADD PRIMARY KEY (`id_event_type`),
  ADD KEY `id_running_event` (`id_running_event`),
  ADD KEY `id_type_running` (`id_type_running`);

--
-- Indexes for table `tbl_faculty`
--
ALTER TABLE `tbl_faculty`
  ADD PRIMARY KEY (`id_faculty`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id_payment`),
  ADD KEY `id_register_run` (`id_register_run`);

--
-- Indexes for table `tbl_register_run`
--
ALTER TABLE `tbl_register_run`
  ADD PRIMARY KEY (`id_register_run`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_event_type` (`id_event_type`);

--
-- Indexes for table `tbl_running_event`
--
ALTER TABLE `tbl_running_event`
  ADD PRIMARY KEY (`id_running_event`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tbl_type_running`
--
ALTER TABLE `tbl_type_running`
  ADD PRIMARY KEY (`id_type_running`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  MODIFY `id_bank` int(50) NOT NULL AUTO_INCREMENT COMMENT 'รหัสธนาคาร', AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id_contact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_event_type`
--
ALTER TABLE `tbl_event_type`
  MODIFY `id_event_type` int(50) NOT NULL AUTO_INCREMENT COMMENT 'รหัสประเภทงานวิ่งที่รับสมัคร', AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tbl_faculty`
--
ALTER TABLE `tbl_faculty`
  MODIFY `id_faculty` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id_payment` int(50) NOT NULL AUTO_INCREMENT COMMENT 'รหัสการจ่ายเงิน', AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tbl_register_run`
--
ALTER TABLE `tbl_register_run`
  MODIFY `id_register_run` int(50) NOT NULL AUTO_INCREMENT COMMENT 'รหัสการสมัครวิ่ง', AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tbl_running_event`
--
ALTER TABLE `tbl_running_event`
  MODIFY `id_running_event` int(50) NOT NULL AUTO_INCREMENT COMMENT 'รหัสงานวิ่ง', AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_type_running`
--
ALTER TABLE `tbl_type_running`
  MODIFY `id_type_running` int(50) NOT NULL AUTO_INCREMENT COMMENT 'รหัสประเภทวิ่ง', AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสผู้ใช้งานระบบ', AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_event_type`
--
ALTER TABLE `tbl_event_type`
  ADD CONSTRAINT `tbl_event_type_ibfk_1` FOREIGN KEY (`id_running_event`) REFERENCES `tbl_running_event` (`id_running_event`),
  ADD CONSTRAINT `tbl_event_type_ibfk_2` FOREIGN KEY (`id_type_running`) REFERENCES `tbl_type_running` (`id_type_running`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
