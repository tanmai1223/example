-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2022 at 04:44 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buspassdatabase1`
--

-- --------------------------------------------------------

--
-- Table structure for table `bus_master`
--

CREATE TABLE `bus_master` (
  `bpid` bigint(11) NOT NULL,
  `Boarding_point` varchar(80) NOT NULL,
  `Route_No` varchar(11) NOT NULL,
  `Bus_No` varchar(15) NOT NULL,
  `Time` varchar(20) NOT NULL,
  `Amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_master`
--

INSERT INTO `bus_master` (`bpid`, `Boarding_point`, `Route_No`, `Bus_No`, `Time`, `Amount`) VALUES
(1, 'ADARSH/GANESH NAGAR', '2', '2', '07:53:00', 15000),
(2, 'BOYYANNAGUDA', '2', '2', '08:10:00', 15000),
(3, 'KGUDA VENKATESHWARA TEMPLE', '1', '1', '07:40:00', 19000),
(4, 'CHILUKANAGAR /CHURCH', '3', '3', '07:40:00', 15000),
(5, 'XYZ', '12', '12', '06:50', 15000),
(6, 'MAHANKALI TEMPLE', '3', '3', '07:55', 15000),
(7, 'NAGARJUNA COLONY', '1', '1', '19:48', 19000),
(8, 'SATYANARAYANA COLONY', '1', '1', '19:55', 19000),
(9, 'RAMPALLY (RL NAGAR)', '1', '1', '20:05', 15000),
(10, 'RTC COLONY', '1', '1', '20:15', 15000),
(11, 'YAMNUMPET', '1', '1', '20:18', 15000),
(12, 'CHILUKA NAGAR', '2', '2', '19:50', 15000),
(13, 'CHURCH ', '2', '2', '08:00', 15000),
(14, 'VENKATESHWARA TEMPLE', '2', '2', '08:03', 15000),
(15, 'VOLETY SUPER MARKET', '2', '2', '08:10', 15000),
(16, 'RYTHU BAZAR', '4', '4', '07:50', 19000),
(17, 'HMT NAGAR', '4', '4', '07:55', 19000),
(18, 'BHAVANI NAGAR ', '5', '5', '07:35', 19000),
(19, 'SRIRAM COLONY', '5', '5', '07:40', 19000),
(20, 'KAPRA X ROAD / MCH', '5', '5', '07:45', 19000),
(21, 'JAMMIGADDA', '5', '5', '07:48', 19000),
(22, 'BHAVANI NAGAR', '6', '6', '07:35', 19000),
(23, 'SRIRAMCOLONY', '6', '6', '07:40', 19000),
(24, 'KAPRA X ROAD / MCH', '6', '6', '07:45', 19000),
(25, 'JAMMIGADDA', '6', '6', '07:48', 19000),
(26, 'SAKETH 1ST PHASE ', '6', '6', '07:50', 19000),
(27, 'DAMMAIGUDA X ROAD', '6', '6', '07:55', 19000),
(28, 'PS RAO NAGAR', '6', '6', '07:56', 19000),
(29, 'AYYAPPA COLONY', '6', '6', '07:58', 19000),
(30, 'PEERZADIGUDA', '7', '7', '08:00', 15000),
(31, 'ORANGE SUPER MARKET', '7', '7', '08:05', 15000),
(32, 'MEDIPALLY', '7', '7', '08:10', 15000),
(33, 'NOMA FUNCTION HALL ', '8', '8', '07:45', 19000),
(34, 'JANAPRIYA ', '8', '8', '07:50', 19000),
(35, 'VYJAYANTHI THEATER', '8', '8', '07:52', 19000),
(36, 'TELEPHONE COLONY', '8', '8', '07:45', 15000),
(37, 'TELEPHONE COLONY', '9', '9', '07:40', 15000),
(38, 'AMBEDKAR STATUE (BODUPPAL)', '9', '9', '07:40', 15000),
(39, 'NTR STATUE', '9', '9', '07:43', 15000),
(40, 'UPPAL DEPOT', '9', '9', '07:50', 15000),
(41, 'ANUTEX (UPPAL)', '9', '9', '07:55', 15000),
(42, 'SAINATHPURAM', '10', '10', '07:20', 19000),
(43, 'GEETHANAGAR', '10', '10', '07:25', 19000),
(44, 'OLD SAFILGUDA', '10', '10', '07:30', 19000),
(45, 'ANAND BAGH (EAST)', '10', '10', '07:33', 19000),
(46, 'KRISHNANAGAR COLONY', '10', '10', '07:35', 19000),
(47, 'MY VILLAS', '10', '10', '07:38', 19000),
(48, 'CHENGICHARLA VILLAGE', '10', '10', '07:45', 19000),
(49, 'CHENGICHARLA RTC DEPOT', '10', '10', '07:50', 15000),
(50, 'RAMANTHAPUR HPS', '11', '11', '07:55', 19000),
(51, 'ROCKTWON ', '12', '12', '07:40', 19000),
(52, 'ALKAPURI', '12', '12', '07:42', 19000),
(53, 'SUJATHA HOTEL', '12', '12', '07:48', 19000),
(54, 'BANDLAGUDA', '12', '12', '07:53', 19000),
(55, 'ANANDNAGAR', '12', '12', '08:30', 19000),
(56, 'MUTHUGUDA', '12', '12', '08:05', 19000),
(57, 'PALLAVI ', '12', '12', '08:07', 19000),
(58, 'INDU ARANYA', '12', '12', '08:10', 19000),
(59, 'SWATHI TIFFINS (STREET NO.8)', '13', '13', '07:50', 19000),
(60, 'ANDHRA BANK (STREET No.8)', '13', '13', '07:52', 19000),
(61, 'GANDHI STATUE (UPPAL)', '13', '13', '08:05', 19000),
(62, 'KARMANGHAT', '14', '14', '07:30', 19000),
(63, 'SAROORNAGAR BUS STOP(POST OFFICE)', '14', '14', '07:40', 19000),
(64, 'MANDAL OFFICE', '14', '14', '07:45', 19000),
(65, 'HUDA COMPLEX', '14', '14', '07:48', 19000),
(66, 'OLD RR COURT', '14', '14', '07:50', 19000),
(67, 'KG POCHAMMA TEMPLE ', '15', '15', '07:40', 19000),
(68, 'CHAKRIPURAM ', '15', '15', '07:50', 19000),
(69, 'PADMAVATHI COLONY BUS STOP', '16', '16', '07:40', 15000),
(70, 'NAGARAM PETROL PUMP', '15', '15', '08:00', 19000),
(71, 'RAMPALLY X ROAD', '15', '15', '08:10', 19000),
(72, 'VIJAYA HOSPITAL', '15', '15', '07:55', 19000),
(73, 'MALLANNASWAMY TEMPLE ', '16', '16', '07:40', 15000),
(74, 'SUNNY BACKERY', '16', '16', '07:45', 15000),
(75, 'SR DG SCHOOL ', '16', '16', '07:50', 15000),
(76, 'MALLIKARJUNA NAGAR (BODUPPAL)', '16', '16', '08:05', 15000),
(77, 'OMINI HOSPITAL', '18', '18', '07:40', 19000),
(78, 'MARUTHI NAGAR Y JUNCTION ', '18', '18', '07:45', 19000),
(79, 'HP PETROL BUNK (MARUTHI NAGAR)', '18', '18', '07:48', 19000),
(80, 'MAOHAN NAGAR-1', '18', '18', '05:50', 19000),
(81, 'MOHAN NAGAR - 2', '18', '18', '07:52', 19000),
(82, 'NEW NAGOLE', '18', '18', '07:55', 19000),
(83, 'NAGOLE X ROAD', '18', '18', '07:57', 19000),
(84, 'R.R. COURT', '19', '19', '07:35', 19000),
(85, 'WHITE HOUSE / ASHTA LAXMI TEMPLE', '19', '19', '07:45', 19000),
(86, 'CHAITHANYPURI PETROL BUNK', '19', '19', '07:50', 19000),
(87, 'GREEN PARK COLONY', '20', '20', '07:25', 19000),
(88, 'RTC COLONY', '20', '20', '07:27', 19000),
(89, 'CHAMPAPET', '20', '20', '07:30', 19000),
(90, 'SAIDABAD PS ', '20', '20', '07:35', 19000),
(91, 'IS SADAN', '20', '20', '07:33', 19000),
(92, 'MALAKPET PRESS', '20', '20', '07:37', 19000),
(93, 'MALAKPET YASHODA', '20', '20', '07:40', 19000),
(94, 'MALKPET SUPER BAZAR', '20', '20', '07:43', 19000),
(95, 'TV TOWER', '20', '20', '07:45', 19000),
(96, 'SAIBABA TEMPLE (DSNR)', '20', '20', '07:48', 19000),
(97, 'xyz', '1', '1', '07:00', 15000),
(98, 'SAROORNAGAR GANDHI STATUE', '21', '21', '07:35', 19000),
(99, 'SAROONAGAR LAKE', '21', '21', '07:38', 19000),
(100, 'SHIVAGANGA', '21', '21', '07:40', 19000),
(101, 'RAGHAVENDRA TIFFINS (SBI)', '21', '21', '07:43', 19000),
(102, 'KONARK DIAGNOSTICS', '21', '21', '07:45', 19000),
(103, 'OPP KAMAL HOSPITAL', '21', '21', '07:48', 19000),
(104, 'RS BROTHERS / BATA', '21', '21', '07:50', 19000),
(105, 'MIYAPUR X ROAD', '22', '22', '06:55', 22000),
(106, 'HYDERNAGAR', '22', '22', '07:00', 22000),
(107, 'NIZAMPET X ROAD', '22', '22', '07:02', 22000),
(108, 'JNTUH', '22', '22', '07:05', 22000),
(109, 'KPHB BUS STOP', '22', '22', '07:48', 22000),
(110, 'VIVEKANANDA NAGAR ', '22', '22', '07:10', 22000),
(111, 'KUKATPALLY BJP OFFICE', '22', '22', '07:15', 22000),
(112, 'Y JUNCTION ', '22', '22', '07:18', 22000),
(113, 'BALANAGAR', '22', '22', '07:20', 22000),
(114, 'PEROZGUDA', '22', '22', '07:22', 22000),
(115, 'BOWENPALLY', '22', '22', '07:25', 22000),
(116, 'ASHISH GARDENS', '22', '22', '07:28', 22000),
(117, 'TADBAND', '22', '22', '07:33', 22000),
(118, 'PARADISE', '22', '22', '07:40', 22000),
(119, 'SANGEETH', '22', '22', '07:43', 22000),
(120, 'ALUGADDA BAVI', '22', '22', '07:45', 19000),
(121, 'SURVEY OF INDIAA', '22', '22', '07:55', 19000),
(122, 'PILLAR NO. 96', '23', '23', '07:10', 22000),
(123, 'GUDIMALKAPUR X ROAD', '23', '23', '07:13', 22000),
(124, 'RETHIBOWLI X ROADS', '23', '23', '07:15', 22000),
(125, 'MAHEDIPATNAM', '23', '23', '07:17', 22000),
(126, 'SAROJINI EYE HOSPITAL', '23', '23', '07:02', 22000),
(127, 'NMDC', '23', '23', '07:22', 22000),
(128, 'MAHAVEER HOSPITAL. MASABTANK', '23', '23', '07:27', 22000),
(129, 'LAKDIKAPOOL', '23', '23', '07:32', 19000),
(130, 'PLOCE CONTROL ROOM', '23', '23', '07:37', 19000),
(131, 'NIZAM COLLEGE', '23', '23', '07:40', 19000),
(132, 'ABIDS BATA', '23', '23', '07:41', 19000),
(133, 'CHADHARGHAT TRAFFIC PS', '23', '23', '07:50', 19000),
(134, 'RISALA BAZAR WATER TANK', '24', '24', '07:10', 22000),
(135, 'AYAPPA SWAMY TEMPLE, ALWAL', '24', '24', '07:15', 22000),
(136, 'LOTHUKUNTA', '24', '24', '07:20', 22000),
(137, 'LALBAZAR', '24', '24', '07:25', 22000),
(138, 'TIRUMALGIRI X ROAD', '24', '24', '07:30', 22000),
(139, 'RAMAKRISHNA PURAM / GK COLONY', '24', '24', '07:35', 22000),
(140, 'GK COLONY', '24', '24', '07:36', 22000),
(141, 'NERDMET X ROAD', '24', '24', '07:40', 22000),
(142, 'SAKETH TOWERS', '24', '24', '07:45', 19000),
(143, 'JJ COLONY', '24', '24', '07:47', 19000),
(144, 'SAKETH', '24', '24', '07:50', 19000),
(145, 'SATYANARYANA COLONY', '24', '24', '08:00', 19000),
(146, 'SANTHOSHIMATHA TEMPLE', '25', '25', '07:25', 19000),
(147, 'VINAYAKA X ROAD', '25', '25', '07:30', 19000),
(148, 'SAFFILGUDA', '25', '25', '07:32', 19000),
(149, 'ANAND BAGH (WEST)', '25', '25', '07:34', 19000),
(150, 'RK NAGAR', '25', '25', '07:35', 19000),
(151, 'VANI NAGAR', '25', '25', '07:38', 19000),
(152, 'ANUTEX (MALKAJGIRI)', '25', '25', '07:40', 19000),
(153, 'MALKAJGIRI', '25', '25', '07:43', 19000),
(154, 'SAIRAM THEATER', '25', '25', '07:45', 19000),
(155, 'MIRJALA GUDA', '25', '25', '07:48', 19000),
(156, 'TUKARAM GATE', '25', '25', '07:55', 19000),
(157, 'METTUGUDA', '25', '25', '08:00', 19000),
(158, 'BALAPUR', '27', '27', '07:20', 22000),
(159, 'MANDAMALLAMMA X ROADS', '27', '27', '07:32', 19000),
(160, 'TKR KAMAN', '27', '27', '07:33', 19000),
(161, 'SAGAR RING ROAD', '27', '27', '07:35', 19000),
(162, 'LB NAGAR', '27', '27', '07:38', 19000),
(163, 'SNEHAPURI MAIN ROAD', '27', '27', '07:42', 19000),
(164, 'VAYUPURI', '28', '28', '07:20', 19000),
(165, 'KAKATHIYANAGAR', '28', '28', '07:25', 19000),
(166, 'OLD PS / ESEVA', '28', '28', '07:35', 19000),
(167, 'KRUPA COMPLEX', '28', '28', '07:40', 19000),
(168, 'SAFILGUDA X ROADS', '28', '28', '07:43', 19000),
(169, 'TARNAKA WHITE HOUSE ', '28', '28', '07:53', 19000),
(170, 'TARNAKA, AIRPORT BUS STOP', '28', '28', '07:55', 19000),
(171, 'IDPL TOWN SHIP', '29', '29', '07:10', 22000),
(172, 'GANESH NAGAR / CHINTHAL', '29', '29', '07:12', 22000),
(173, 'QUTHBULLAPUR', '29', '29', '07:20', 22000),
(174, 'SUCHITHRA', '29', '29', '07:30', 22000),
(175, 'DAIRY FARM', '29', '29', '07:33', 22000),
(176, 'CENTER / DIAMOND POINT', '29', '29', '07:40', 22000),
(177, 'JBS', '29', '29', '07:45', 19000),
(178, 'VINAYAKA TEMPLE ', '29', '29', '07:48', 19000),
(179, 'RAIL NILYAM', '29', '29', '07:50', 19000),
(180, 'TARNAKA WATER TANK ', '29', '29', '07:53', 19000),
(181, 'HABSIGUDA BATA', '29', '29', '08:00', 19000),
(182, 'YAMJAL', '30', '30', '07:25', 22000),
(183, 'GURRAMGUDA', '30', '30', '07:30', 22000),
(184, 'BN REDDY NAGAR', '30', '30', '07:37', 19000),
(185, 'BDR GARDENS (BN REDDY)', '30', '30', '07:38', 19000),
(186, 'HASTHINAPURAM (NAVEENAÂ SCHOOL)', '30', '30', '07:40', 19000),
(187, 'BOLAKPUR', '31', '31', '07:15', 19000),
(188, 'KALPANA', '31', '31', '07:17', 19000),
(189, 'GANDHI NAGAR', '31', '31', '07:25', 19000),
(190, 'ASHOKNAGAR X ROADS ', '31', '31', '07:30', 19000),
(191, 'AM & PM HOTEL', '31', '31', '07:32', 19000),
(192, 'RTC X ROAD', '31', '31', '07:35', 19000),
(193, 'VST X ROAD', '31', '31', '07:40', 19000),
(194, 'RAMNAGAR', '31', '31', '07:45', 19000),
(195, 'RAMNAGAR GUNDU', '31', '31', '07:50', 19000),
(196, 'SHIVAM / SAIBABA TEMPLE', '31', '31', '08:00', 19000),
(197, 'YAPRAL', '32', '32', '07:15', 22000),
(198, 'SMMUGUDA', '32', '32', '07:20', 22000),
(199, 'NIRMALNAGAR', '32', '32', '07:23', 22000),
(200, 'SAINIKPURI X ROAD', '32', '32', '07:25', 22000),
(201, 'SHARADA', '32', '32', '07:28', 19000),
(202, 'AS RAO NAGAR (MAX)', '32', '32', '07:30', 19000),
(203, 'RADHIKA', '32', '32', '07:32', 19000),
(204, 'HCL ', '32', '32', '07:40', 19000),
(205, 'NFC', '32', '32', '07:43', 19000),
(206, 'ASHOK NAGAR', '32', '32', '07:45', 19000),
(207, 'EC NAGAR', '32', '32', '05:48', 19000),
(208, 'TEST1', '11', '11', '07:35', 19000),
(209, 'XYZ', '11', '11', '07:50', 15000),
(210, 'ORANGE SUPERMARKET', '2', '2', '08:15', 15000);

-- --------------------------------------------------------

--
-- Table structure for table `dashboard`
--

CREATE TABLE `dashboard` (
  `studreg` bigint(20) NOT NULL,
  `studver` bigint(20) NOT NULL,
  `studdec` bigint(20) NOT NULL,
  `empreg` bigint(20) NOT NULL,
  `empver` bigint(20) NOT NULL,
  `empdec` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dashboard`
--

INSERT INTO `dashboard` (`studreg`, `studver`, `studdec`, `empreg`, `empver`, `empdec`) VALUES
(22, 12, 4, 14, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `Employee_id` varchar(15) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Designation` varchar(20) NOT NULL,
  `Department` varchar(30) NOT NULL,
  `Mobile_Number` varchar(15) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `bpid` bigint(11) NOT NULL,
  `Boarding_point` varchar(80) NOT NULL,
  `Route_no` int(11) NOT NULL,
  `Fee` int(11) NOT NULL,
  `Due` int(11) NOT NULL,
  `Receipt_Number` varchar(10) NOT NULL,
  `Date_of_Payment` datetime NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Idcard_status` varchar(10) NOT NULL,
  `image_of_faculty` longblob NOT NULL,
  `acadyear` varchar(20) NOT NULL,
  `appid` varchar(15) NOT NULL,
  `Verifiedby` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`Employee_id`, `Name`, `Designation`, `Department`, `Mobile_Number`, `Address`, `Email`, `bpid`, `Boarding_point`, `Route_no`, `Fee`, `Due`, `Receipt_Number`, `Date_of_Payment`, `Remarks`, `Idcard_status`, `image_of_faculty`, `acadyear`, `appid`, `Verifiedby`) VALUES
('12345', 'INJAMURI HARISH KUMAR', 'TEACHING', 'IT', '7893997937', '2-91, MAIN ROAD BHATTUGUDAM (V) BIBINAGAR (M)', 'INJAMURIHARISHKUMAR123@GMAIL.COM', 77, 'OMINI HOSPITAL', 18, 19000, 0, ' ', '2019-05-04 01:04:29', 'XCVBNM', 'not print', 0x436170747572652e4a5047, '2019-20', 'E20190003', 'Admin'),
('12347', 'INJAMURIHARISHKUMAR', 'SELECT', 'IT', '7893997937', ' ', ' ', 59, 'SWATHI TIFFINS (STREET NO.8)', 13, 19000, 7000, ' ', '2019-05-04 12:50:54', 'DFGHJ', 'not print', 0x3132333437312e706e67, '2019-20', ' ', 'Admin'),
('12348', 'INJAMURI HARISH KUMAR', 'OTHERS', 'IT', '7893997937', ' ', ' ', 61, 'GANDHI STATUE (UPPAL)', 13, 19000, 2000, ' ', '2019-05-04 08:07:24', 'TESTING', 'not print', 0x3132333438312e706e67, '2019-20', ' ', 'Admin'),
('145263', 'KHFYDH', 'TEACHING', 'IT', '9874563214', ' ', ' ', 2, 'BOYYANNAGUDA', 2, 15000, 0, ' ', '2022-12-05 09:27:36', 'NA', 'not print', 0x416e6e657875726520494920436f7669642e706e67, '2022-23', ' ', 'Admin'),
('14785', 'RAJ', 'TEACHING', 'IT', '9874563214', ' ', ' ', 30, 'CHILUKANAGAR /CHURCH', 3, 0, 0, ' ', '2022-12-06 10:46:47', 'NA', 'not print', 0x646f776e6c6f6164202831292e6a7067, '2022-23', ' ', 'Admin'),
('25896', 'BRINDA', 'TEACHING', 'IT', '9658741235', ' ', ' ', 20, 'SRIRAM COLONY', 5, 0, 4000, ' ', '2022-12-06 10:50:28', 'NA', 'not print', 0x696d616765732e706e67, '2022-23', ' ', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_backup`
--

CREATE TABLE `faculty_backup` (
  `Employee_id` varchar(15) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Designation` varchar(20) NOT NULL,
  `Department` varchar(30) NOT NULL,
  `Mobile_Number` varchar(15) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `bpid` bigint(11) NOT NULL,
  `Boarding_point` varchar(80) NOT NULL,
  `Route_no` int(11) NOT NULL,
  `Fee` int(11) NOT NULL,
  `Due` int(11) NOT NULL,
  `Receipt_Number` varchar(10) NOT NULL,
  `Date_of_Payment` datetime NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Idcard_status` varchar(10) NOT NULL,
  `image_of_faculty_backup` longblob NOT NULL,
  `acadyear` varchar(20) NOT NULL,
  `appid` varchar(15) NOT NULL,
  `Verifiedby` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_backup`
--

INSERT INTO `faculty_backup` (`Employee_id`, `Name`, `Designation`, `Department`, `Mobile_Number`, `Address`, `Email`, `bpid`, `Boarding_point`, `Route_no`, `Fee`, `Due`, `Receipt_Number`, `Date_of_Payment`, `Remarks`, `Idcard_status`, `image_of_faculty_backup`, `acadyear`, `appid`, `Verifiedby`) VALUES
('10120', 'KENDRIYA VIDYALAYA', 'TEACHING', 'IT', '7893997937', '6-136 2, TEACHER S COLONY,BIBINAGAR', 'INJAMURIHARISHKUMAR123@GMAIL.COM', 3, 'KGUDA VENKATESHWARA TEMPLE', 1, 19000, 0, ' ', '2018-12-20 04:52:54', 'TESTING', 'printed', 0x6176656e75652d333738383334325f313932302e6a7067, '2018-19', 'E20180001', 'Admin'),
('12180', 'HARISH', 'SELECT', 'IT', '9052351767', '9-126, HMT NAGAR NACHARAM.', 'VARUNS435@GMAIL.COM', 7, 'NAGARJUNA COLONY', 1, 19000, 0, ' ', '2019-01-08 12:03:43', 'TESTING', 'not print', 0x6167696c6f676f2e706e67, '2019-20', 'E20190003', 'Admin'),
('12346', 'HARISH', 'SELECT', 'EEE', '7893997937', 'BIBINAGAR', 'HARISH@GMAIL.COM', 1, 'ADARSH/GANESH NAGAR', 2, 15000, 0, ' ', '2018-12-20 04:54:22', '15000', 'not print', 0x746f795f74656464795f626561725f6368726973746d61735f3131323932385f3338343078323430302e6a7067, '2018-19', 'E20180002', 'Admin'),
('12111', 'KENDRIYA VIDYALAYA', 'TEACHING', 'SELECT', '7893997937', ' ', ' ', 69, 'PADMAVATHI COLONY BUS STOP', 16, 15000, 0, ' ', '2019-04-23 11:16:51', 'TESTING', 'not print', 0x31323131312e706e67, '2019-20', ' ', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_dup`
--

CREATE TABLE `faculty_dup` (
  `Employee_id` varchar(15) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Designation` varchar(20) NOT NULL,
  `Department` varchar(30) NOT NULL,
  `Mobile_Number` varchar(15) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `bpid` bigint(11) NOT NULL,
  `Boarding_point` varchar(80) NOT NULL,
  `Route_no` int(11) NOT NULL,
  `Fee` int(11) NOT NULL,
  `Due` int(11) NOT NULL,
  `Receipt_Number` varchar(10) NOT NULL,
  `Date_of_Payment` datetime NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Idcard_status` varchar(10) NOT NULL,
  `image_of_faculty` longblob NOT NULL,
  `acadyear` varchar(20) NOT NULL,
  `appid` varchar(15) NOT NULL,
  `Verifiedby` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_dup`
--

INSERT INTO `faculty_dup` (`Employee_id`, `Name`, `Designation`, `Department`, `Mobile_Number`, `Address`, `Email`, `bpid`, `Boarding_point`, `Route_no`, `Fee`, `Due`, `Receipt_Number`, `Date_of_Payment`, `Remarks`, `Idcard_status`, `image_of_faculty`, `acadyear`, `appid`, `Verifiedby`) VALUES
('12346', 'Injamuri Harish Kumar', 'OTHERS', 'IT', '7893997937', '2-91, Main road Bhattugudam (v) Bibinagar (M)', 'injamuriharishkumar123@gmail.com', 63, 'SAROORNAGAR BUS STOP(POST OFFICE)', 14, 19000, 0, ' ', '2019-05-03 11:53:36', 'dfghj', 'not print', 0x31323334362e706e67, '2019-20', 'E20190003', ' '),
('12347', 'harish', 'NON TEACHING', 'EEE', '7893997937', 'bibinagar', 'harish@gmail.com', 1, 'ADARSH/GANESH NAGAR', 2, 15000, 0, ' ', '2018-12-18 09:08:03', '15000', 'not print', '', '2018-19', 'E20180004', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `route_master`
--

CREATE TABLE `route_master` (
  `sno` int(11) NOT NULL,
  `Route_No` varchar(11) NOT NULL,
  `Route_Name` varchar(50) NOT NULL,
  `Bus_No` varchar(11) NOT NULL,
  `Capacity` int(11) NOT NULL,
  `Driver_Name` varchar(30) NOT NULL,
  `Driver_Mobile` int(15) NOT NULL,
  `Counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `route_master`
--

INSERT INTO `route_master` (`sno`, `Route_No`, `Route_Name`, `Bus_No`, `Capacity`, `Driver_Name`, `Driver_Mobile`, `Counter`) VALUES
(1, '1', 'K G VENKATESWARA TEMPLE', '1', 42, 'Mr. Mallesh', 2147483647, 42),
(2, '2', 'CHILUKA NAGAR', '2', 42, 'RAM CHANDRAIAH', 2147483647, 39),
(3, '3', 'CHILUKA NAGAR (via UPPAL BUS STATION)', '3', 42, 'Ravi', 2147483647, 41),
(4, '4', 'GAYATHRI NAGAR via HB COLONY', '4', 42, 'G. SRINU', 2147483647, 42),
(5, '5', 'SAINIKPURI X ROAD', '5', 42, 'MALLESH', 2147483647, 40),
(6, '6', 'BHAVANI NAGAR', '6', 42, 'G. SRINU', 2147483647, 42),
(7, '7', 'PEERZADIGUDA', '7', 42, 'EY REDDY ', 2147483647, 40),
(8, '8', 'NOMA FUNCTION HALL NACHARAM', '8', 42, 'T RAVI', 2147483647, 41),
(9, '9', 'AMBEDKAR STATUE (BODUPPAL)', '9', 42, 'K SRINIVAS', 2147483647, 42),
(10, '10', 'SAINATHAPURAM', '10', 42, 'RAGHU', 2147483647, 42),
(11, '11', 'RAMANTHAPUR HPS', '11', 42, 'JR MALLESH', 2147483647, 42),
(12, '12', 'ROCKTOWN COLONY (via BANDLAGUDA)', '12', 42, 'S ABBAIAH', 2147483647, 42),
(13, '13', 'STREET NO. 8 (HABSIGUDA)', '13', 42, 'DHASHARATH', 2147483647, 42),
(14, '14', 'KARMANGHAT (SARRORNAGAR POST OFFICE)', '14', 42, 'SATANARAYANA', 2147483647, 42),
(15, '15', 'KUSHAIGUDA POCHAMMA TEMPLE', '15', 52, 'SR MALLESH', 2147483647, 52),
(16, '16', 'MALLANNA SWAMY TEMPLE (BODUPPAL)', '16', 42, 'SAIKUMAR GOUD', 2147483647, 42),
(18, '18', 'OMINI HOSPITAL (KOTHAPET)', '18', 42, 'MOHAN REDDY', 2147483647, 42),
(19, '19', 'RANGA REDDY COURT', '19', 42, 'S DHASHARATH', 2147483647, 41),
(20, '20', 'GREENPARK COLONY (KARMANGHAT)', '20', 50, 'ANJANEYULU', 2147483647, 50),
(21, '21', 'BAIRAMALGUDA', '21', 52, 'A PRADEEP REDDY', 2147483647, 52),
(22, '22', 'MIYAPUR X ROAD', '22', 52, 'SHARIFUDDIN', 2147483647, 52),
(23, '23', 'PVN RAO EXPRESS HIGHWAY PILLAR NO. 96(MP)', '23', 52, 'SRINU', 2147483647, 52),
(24, '24', 'RESALA BAZAR VIA DAMMAIGUDA', '24', 52, 'ESTHARI', 2147483647, 52),
(25, '25', 'SANTJOSHIMATHA TEMPLE (MALKAJGIRI)', '25', 52, 'NARASIMHA', 2147483647, 52),
(26, '26', 'PANAMA (VANASTHALIPURAM)', '26', 52, 'M JAGAN', 2147483647, 52),
(27, '27', 'BALAPUR', '27', 52, 'P SOMAIAH', 2147483647, 52),
(28, '28', 'VAYUPURI', '28', 52, 'SRINIVAS', 2147483647, 52),
(29, '29', 'IDPL (SUCHITHRA)', '29', 52, 'PRAKASH', 2147483647, 52),
(30, '30', 'YAMJAL TO COLLEGE', '30', 52, 'MN KHAN', 2147483647, 52),
(31, '31', 'BOLAKPUR', '31', 52, 'SAIDULU', 2147483647, 52),
(32, '32', 'YAPRAL (VIA RAMPALLY)', '32', 52, 'SAMBA GOWADA)', 2147483647, 52),
(33, '33', 'BSNL OFFICE (ECIL)', '33', 52, 'SRISAILAM', 2147483647, 52),
(34, '34', 'MOOSAPET RYTHU BAZAR', '34', 52, 'N JANGAIAH', 2147483647, 52),
(35, '35', 'ADDAGUTTA', '35', 52, 'RAMARAJU', 2147483647, 52),
(36, '36', 'YOUSYGUDA CHECK POST', '36', 52, 'PULLAIAH', 2147483647, 52),
(37, '37', 'CHILKALGUDA', '37', 52, 'E SRIKANTH REDDY', 2147483647, 52),
(38, '38', 'NAIVEDYAM HOTEL (BOYAGUDA SIGNAL)', '38', 52, 'MADHAVA REDDY', 2147483647, 52),
(41, '41', 'HASTHINAPURAM-2', '41', 52, 'ANJAN KUMAR', 2147483647, 52),
(42, '42', 'RTA OFFICE (MALAKPET)', '42', 52, 'SHASHIDHAR REDDY', 2147483647, 52),
(43, '43', 'BHONGIRI', '43', 52, 'NAVEEN KUMAR', 2147483647, 52),
(45, '45', 'RAMANTHAPUR TV STUDIO', '45', 52, 'RAMULU', 2147483647, 52),
(50, '50', 'TEST', '50', 40, 'ABCDE', 2147483647, 40),
(51, '51', 'FHJMFK                                            ', '7', 45, 'XYZ', 2147483647, 45),
(52, '52', 'FHJMFK                                            ', '52', 50, 'NJSSJVJGJADV ', 2147483647, 50),
(102, '53', 'FHJMFK                                            ', '7', 45, 'XYZ', 2147483647, 45),
(103, '54', 'NHY', '54', 42, 'XYZ', 2147483647, 42);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `HallticketNumber` varchar(15) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Father_Name` varchar(50) NOT NULL,
  `Department_Name` varchar(30) NOT NULL,
  `Mobile_Number` varchar(15) NOT NULL,
  `Email` varchar(60) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Course` varchar(30) NOT NULL,
  `Year` int(11) NOT NULL,
  `Total` int(11) NOT NULL,
  `Due` int(11) NOT NULL,
  `bpid` bigint(11) NOT NULL,
  `Boarding_point` varchar(80) NOT NULL,
  `Route_no` varchar(11) NOT NULL,
  `Detain` varchar(5) NOT NULL,
  `Receipt_Number` varchar(10) NOT NULL,
  `Date_of_Payment` datetime NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Idcard_status` varchar(10) NOT NULL,
  `imageofStudent` longblob NOT NULL,
  `acadyear` varchar(15) NOT NULL,
  `appid` varchar(15) NOT NULL,
  `Verifiedby` varchar(20) NOT NULL,
  `concession` varchar(5) NOT NULL,
  `cona_amount` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`HallticketNumber`, `Name`, `Father_Name`, `Department_Name`, `Mobile_Number`, `Email`, `Address`, `Course`, `Year`, `Total`, `Due`, `bpid`, `Boarding_point`, `Route_no`, `Detain`, `Receipt_Number`, `Date_of_Payment`, `Remarks`, `Idcard_status`, `imageofStudent`, `acadyear`, `appid`, `Verifiedby`, `concession`, `cona_amount`) VALUES
('19H61A1219', 'G SINDHU SAMEERA', 'RAMA KRISHNA', 'IT', '9874563214', ' ', ' ', 'B TECH', 4, 19000, 0, 86, 'CHAITHANYPURI PETROL BUNK', '19', 'NO', 'B167', '2022-12-06 10:04:23', 'NA', 'not print', 0x576861747341707020496d61676520323032322d31322d30362061742031302e31322e35312e6a706567, '2022-23', ' ', 'Admin', 'no', 0),
('19H61A1223', 'H TANMAI', 'H RAGHURAM', 'IT', '9874563214', ' ', ' ', 'B TECH', 4, 0, 0, 14, 'ADARSH/GANESH NAGAR', '2', '4', 'B198', '2022-12-06 09:57:56', 'NA', 'not print', 0x576861747341707020496d61676520323032322d31322d30352061742031312e33362e35302e6a706567, '2022-23', ' ', 'Admin', 'no', 0),
('19H61A1242', 'NEHA K', 'DHANUJAY', 'IT', '9632547814', ' ', ' ', 'B TECH', 4, 19000, 0, 33, 'NOMA FUNCTION HALL ', '8', 'NO', 'B192', '2022-12-06 10:02:32', 'NA', 'not print', 0x576861747341707020496d61676520323032322d31322d30362061742031302e31372e35392e6a706567, '2022-23', ' ', 'Admin', 'no', 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_backup`
--

CREATE TABLE `student_backup` (
  `HallticketNumber` varchar(15) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Father_Name` varchar(50) NOT NULL,
  `Department_Name` varchar(30) NOT NULL,
  `Mobile_Number` varchar(15) NOT NULL,
  `Email` varchar(60) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Course` varchar(30) NOT NULL,
  `Year` int(11) NOT NULL,
  `Total` int(11) NOT NULL,
  `Due` int(11) NOT NULL,
  `bpid` bigint(11) NOT NULL,
  `Boarding_point` varchar(80) NOT NULL,
  `Route_no` int(11) NOT NULL,
  `Detain` varchar(5) NOT NULL,
  `Receipt_Number` varchar(10) NOT NULL,
  `Date_of_Payment` datetime NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Idcard_status` varchar(10) NOT NULL,
  `imageofstudent_backup` longblob NOT NULL,
  `acadyear` varchar(15) NOT NULL,
  `appid` bigint(10) NOT NULL,
  `Verifiedby` varchar(20) NOT NULL,
  `concession` varchar(5) NOT NULL,
  `cona_amount` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_backup`
--

INSERT INTO `student_backup` (`HallticketNumber`, `Name`, `Father_Name`, `Department_Name`, `Mobile_Number`, `Email`, `Address`, `Course`, `Year`, `Total`, `Due`, `bpid`, `Boarding_point`, `Route_no`, `Detain`, `Receipt_Number`, `Date_of_Payment`, `Remarks`, `Idcard_status`, `imageofstudent_backup`, `acadyear`, `appid`, `Verifiedby`, `concession`, `cona_amount`) VALUES
('15H61A1201', 'INJAMURI HARISH KUMAR', 'INJAMURI', 'IT', '7893997937', ' ', ' ', 'B TECH', 4, 19000, 7000, 50, 'RAMANTHAPUR HPS', 11, 'NO', 'B1/63', '2019-05-02 10:29:16', 'TESTING', 'not print', '', '2019-20', 1, 'Admin', 'no', 0),
('15H61A1201', 'INJAMURI HARISH KUMAR', 'INJAMURI', 'IT', '7893997937', ' ', ' ', 'B TECH', 4, 19000, 7000, 50, 'RAMANTHAPUR HPS', 11, '4', 'B1/63', '2019-05-02 10:29:16', 'TESTING', 'not print', 0x31354836314131323031312e706e67, '2019-20', 2, 'Admin', 'no', 0),
('15H61A1204', 'INJAMURIHARISHKUMARsdjbvesdljbdsiljvl', 'INJAMURI', 'B PHARM', '7893997937', ' ', ' ', 'B TECH', 4, 19000, 7000, 98, 'SAROORNAGARGANDHISTATUE', 21, 'NO', 'B1/60', '2019-05-01 12:02:21', 'TESTING', 'not print', 0x313548363141313230342e706e67, '2019-20', 3, 'Admin', 'YES', 1000),
('15H61A1218', 'INJAMURI HARISH KUMAR', 'INJAMURI', 'IT', '7893997937', 'INJAMURIHARISHKUMAR123@GMAIL.COM', '2-91, MAIN ROAD BHATTUGUDAM (V) BIBINAGAR (M)', 'B TECH', 4, 15000, 3000, 38, 'AMBEDKAR STATUE (BODUPPAL)', 9, 'NO', 'B1/64', '2019-05-02 11:54:27', '12000', 'not print', 0x313548363141313231382e706e67, '2019-20', 4, 'Admin', 'NO', 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_dup`
--

CREATE TABLE `student_dup` (
  `HallticketNumber` varchar(15) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Father_Name` varchar(50) NOT NULL,
  `Department_Name` varchar(30) NOT NULL,
  `Mobile_Number` varchar(15) NOT NULL,
  `Email` varchar(60) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Course` varchar(30) NOT NULL,
  `Year` int(11) NOT NULL,
  `Total` int(11) NOT NULL,
  `Due` int(11) NOT NULL,
  `bpid` bigint(11) NOT NULL,
  `Boarding_point` varchar(80) NOT NULL,
  `Route_no` int(11) NOT NULL,
  `Detain` varchar(5) NOT NULL,
  `Date_of_Payment` datetime NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Idcard_status` varchar(10) NOT NULL,
  `imageofStudent` longblob NOT NULL,
  `acadyear` varchar(15) NOT NULL,
  `appid` varchar(15) NOT NULL,
  `Verifiedby` varchar(20) NOT NULL,
  `concession` varchar(5) NOT NULL,
  `cona_amount` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_dup`
--

INSERT INTO `student_dup` (`HallticketNumber`, `Name`, `Father_Name`, `Department_Name`, `Mobile_Number`, `Email`, `Address`, `Course`, `Year`, `Total`, `Due`, `bpid`, `Boarding_point`, `Route_no`, `Detain`, `Date_of_Payment`, `Remarks`, `Idcard_status`, `imageofStudent`, `acadyear`, `appid`, `Verifiedby`, `concession`, `cona_amount`) VALUES
('19h61a1221', 'jdjsg', 'kjfdjhfi', 'IT', '974586475', '19h61a1223@cvsr.ac.in', 'dgsfdytfsu', 'It', 4, 15000, 0, 132, 'ABIDS BATA', 2, 'NO', '2022-12-05 04:52:13', 'NA', '', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `s_no` int(11) NOT NULL,
  `User_name` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `Password` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `Role` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`s_no`, `User_name`, `Password`, `Role`) VALUES
(1, 'Admin', 'admin123', 'admin'),
(2, 'Admin-it', 'adminit', 'Admin-it'),
(3, 'karunakar', 'karunakar', 'admin'),
(4, 'Tanmai', '123456', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus_master`
--
ALTER TABLE `bus_master`
  ADD PRIMARY KEY (`bpid`),
  ADD UNIQUE KEY `bpid` (`bpid`),
  ADD KEY `foreignkey` (`Route_No`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`Employee_id`),
  ADD KEY `bpid` (`bpid`);

--
-- Indexes for table `faculty_dup`
--
ALTER TABLE `faculty_dup`
  ADD UNIQUE KEY `Employee_id` (`Employee_id`),
  ADD KEY `bpid` (`bpid`);

--
-- Indexes for table `route_master`
--
ALTER TABLE `route_master`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `Route_No` (`Route_No`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`HallticketNumber`),
  ADD UNIQUE KEY `Receipt_Number` (`Receipt_Number`),
  ADD KEY `student` (`bpid`);

--
-- Indexes for table `student_backup`
--
ALTER TABLE `student_backup`
  ADD UNIQUE KEY `appid` (`appid`);

--
-- Indexes for table `student_dup`
--
ALTER TABLE `student_dup`
  ADD PRIMARY KEY (`HallticketNumber`),
  ADD KEY `student` (`bpid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`s_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `route_master`
--
ALTER TABLE `route_master`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `student_backup`
--
ALTER TABLE `student_backup`
  MODIFY `appid` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bus_master`
--
ALTER TABLE `bus_master`
  ADD CONSTRAINT `FOREIGN KEY` FOREIGN KEY (`Route_No`) REFERENCES `route_master` (`Route_No`);

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`bpid`) REFERENCES `bus_master` (`bpid`);

--
-- Constraints for table `faculty_dup`
--
ALTER TABLE `faculty_dup`
  ADD CONSTRAINT `faculty_dup_ibfk_1` FOREIGN KEY (`bpid`) REFERENCES `bus_master` (`bpid`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student` FOREIGN KEY (`bpid`) REFERENCES `bus_master` (`bpid`);

--
-- Constraints for table `student_dup`
--
ALTER TABLE `student_dup`
  ADD CONSTRAINT `student_dup` FOREIGN KEY (`bpid`) REFERENCES `bus_master` (`bpid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
