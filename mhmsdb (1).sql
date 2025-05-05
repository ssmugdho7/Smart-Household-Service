-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2025 at 07:08 PM
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
-- Database: `mhmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `ID` int(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Feedback` varchar(250) NOT NULL,
  `Rating` int(200) NOT NULL,
  `Created_Time` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `Updated_Time` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`ID`, `Email`, `Feedback`, `Rating`, `Created_Time`, `Updated_Time`) VALUES
(1, 'shahmarufsiraj@gmail.com', 'Good work', 4, '2024-12-30 22:54:08.000000', '2024-12-30 22:54:08.000000'),
(2, 'shahmarufsiraj@gmail.com', 'Nice Service', 5, '2024-12-31 14:21:54.000000', '2024-12-31 14:21:54.000000'),
(3, 'shahmarufsiraj@gmail.com', 'Need to improve the cooking, everyhting else is perfect', 4, '2024-12-31 14:22:28.000000', '2024-12-31 14:22:28.000000'),
(4, 'shahmarufsiraj@gmail.com', 'The service was sgood ', 5, '2025-01-02 12:46:34.000000', '2025-01-02 12:46:34.000000'),
(5, 'shahmarufsiraj@gmail.com', 'good', 4, '2025-01-03 08:37:21.000000', '2025-01-03 08:37:21.000000');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin User', 'admin', 8979555558, 'admin@gmail.com', 'Test@123', '2019-10-11 04:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `tblagent`
--

CREATE TABLE `tblagent` (
  `ID` int(255) NOT NULL,
  `AgentName` varchar(255) NOT NULL,
  `AgentEmail` text NOT NULL,
  `AgentPassword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblagent`
--

INSERT INTO `tblagent` (`ID`, `AgentName`, `AgentEmail`, `AgentPassword`) VALUES
(1, 'Siraj', 'agent1@gmail.com', 'agent1');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(5) NOT NULL,
  `CategoryName` varchar(250) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `CategoryName`, `CreationDate`) VALUES
(1, 'Dusting', '2023-03-31 12:52:51'),
(2, 'Mopping', '2023-03-31 12:52:51'),
(3, 'Cooking', '2024-12-30 11:01:21'),
(4, 'Utensil Cleaning', '2023-03-31 12:52:51'),
(5, 'Toilet Cleaning', '2023-03-31 12:52:51'),
(6, 'Cloth Washing', '2024-12-30 19:34:40'),
(7, 'Starter Package (1 day-299 BDT)', '2024-12-30 19:25:09'),
(8, 'Trial Package (7 Days-1799 BDT)', '2024-12-30 19:26:46'),
(9, 'Silver Package (30 Days-7499 BDT)', '2024-12-30 19:27:20'),
(10, 'Gold Package (6 Months-39999 BDT)', '2024-12-30 19:31:41'),
(11, 'Diamond Package (1 Year-69999 BDT)', '2024-12-30 19:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `tblgrocery`
--

CREATE TABLE `tblgrocery` (
  `ID` int(11) NOT NULL,
  `ImagePath` varchar(300) DEFAULT NULL,
  `ProductName` varchar(50) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL,
  `Price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblgrocery`
--

INSERT INTO `tblgrocery` (`ID`, `ImagePath`, `ProductName`, `Description`, `Price`) VALUES
(1, 'https://plus.unsplash.com/premium_photo-1658527064466-df8ed3bbe6e7?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Rice', '1 KG', 70),
(2, 'https://chaldn.com/_mpimage/mug-dal-500-gm?src=https%3A%2F%2Feggyolk.chaldal.com%2Fapi%2FPicture%2FRaw%3FpictureId%3D47050&q=best&v=1&m=400&webp=1', 'Mug Lentil(Dal)', '500gm', 90),
(3, 'https://chaldn.com/_mpimage/pran-moshur-dal-deshi-1-kg?src=https%3A%2F%2Feggyolk.chaldal.com%2Fapi%2FPicture%2FRaw%3FpictureId%3D98671&q=best&v=1&m=400&webp=1', 'Pran Moshur Dal (Deshi) 1 kg  ', '1 kg', 170),
(4, 'https://chaldn.com/_mpimage/chicken-eggs-layer-6-pcs?src=https%3A%2F%2Feggyolk.chaldal.com%2Fapi%2FPicture%2FRaw%3FpictureId%3D71364&q=best&v=1&m=400&webp=1', 'Chicken Eggs ', '6 pcs', 85),
(5, 'https://chaldn.com/_mpimage/mrnoodles-masala-flavour-egg-stick-noodles-150-gm?src=https%3A%2F%2Feggyolk.chaldal.com%2Fapi%2FPicture%2FRaw%3FpictureId%3D130957&q=best&v=1&m=400&webp=1', 'Mr.Noodles Masala Noodles', '150gm', 25),
(6, 'https://chaldn.com/_mpimage/diploma-instant-full-cream-milk-powder-1-kg?src=https%3A%2F%2Feggyolk.chaldal.com%2Fapi%2FPicture%2FRaw%3FpictureId%3D167398&q=best&v=1&m=400&webp=1', 'Diploma Instant Full Cream Milk Powder', '1 KG', 880),
(7, 'https://chaldn.com/_mpimage/fresh-refined-sugar-1-kg?src=https%3A%2F%2Feggyolk.chaldal.com%2Fapi%2FPicture%2FRaw%3FpictureId%3D113128&q=best&v=1&m=400&webp=1', 'Fresh Refined Sugar ', '1 kg', 125),
(8, 'https://chaldn.com/_mpimage/lal-alu-red-potato-cardinal-50-gm-1-kg?src=https%3A%2F%2Feggyolk.chaldal.com%2Fapi%2FPicture%2FRaw%3FpictureId%3D76922&q=low&v=1&m=400&webp=1', 'Lal Alu (Red Potato Cardinal)  ', '± 50 gm 1 kg', 60),
(9, 'https://chaldn.com/_mpimage/lal-peyaj-onion-red-imported-50-gm-1-kg?src=https%3A%2F%2Feggyolk.chaldal.com%2Fapi%2FPicture%2FRaw%3FpictureId%3D163935&q=best&v=1&m=400&webp=1', 'Lal Peyaj (Onion Red Imported)  ', '± 50 gm 1 kg', 70);

-- --------------------------------------------------------

--
-- Table structure for table `tblgrocerybooking`
--

CREATE TABLE `tblgrocerybooking` (
  `ID` int(11) NOT NULL,
  `UserName` varchar(250) NOT NULL,
  `DeliveryTime` varchar(255) NOT NULL,
  `OrderDetails` varchar(250) NOT NULL,
  `FullArea` text NOT NULL,
  `PhoneNumber` varchar(11) NOT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `AssignTo` varchar(200) DEFAULT NULL,
  `AreaName` varchar(255) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `CreatedTime` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `UpdatedTime` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblgrocerybooking`
--

INSERT INTO `tblgrocerybooking` (`ID`, `UserName`, `DeliveryTime`, `OrderDetails`, `FullArea`, `PhoneNumber`, `Status`, `AssignTo`, `AreaName`, `Email`, `CreatedTime`, `UpdatedTime`) VALUES
(1, 'agent', '2024-12-27T20:20', 'cc', 'cc', '123', 'HandOverTo', 'Meena Das', 'Basundhara R/A', 'shahmarufsiraj@gmail.com', '2024-12-29 21:19:38.703537', '2024-12-29 21:20:01.417460'),
(2, 'admin', '2024-12-27T22:47', 'asda', 'adasd', '123', 'Cancelled', NULL, '', 'shahmarufsiraj@gmail.com', '2024-12-29 21:19:38.703537', '2024-12-29 21:20:01.417460'),
(3, 'abc', '2024-12-28T18:41', 'ac sf as ', 'ad asd ', '123', 'Cancelled', 'm12', '', 'shahmarufsiraj@gmail.com', '2024-12-29 21:19:38.703537', '2024-12-29 21:20:01.417460'),
(5, 'Mugdho', '02:01', 'asda', 'ada', '01758551245', 'Completed', 'm12', 'Uttara', 'shahmarufsirajmugdho@gmail.com', '2024-12-29 21:19:38.703537', '2024-12-31 14:21:02.549798'),
(6, 'Mugdho', '02:05', 'asd a asd ', 'asd a', '01758551245', 'HandOverTo', 'm12', 'Uttara', 'shahmarufsiraj@gmail.com', '2024-12-29 21:19:38.703537', '2024-12-31 10:35:48.346031'),
(7, 'Mugdho', '02:07', 'asd asd asd ', 'sad', '01758551245', 'HandOverTo', 'm12', 'Uttara', 'shahmarufsirajmugdho@gmail.com', '2024-12-29 21:19:38.703537', '2024-12-31 10:37:17.732224'),
(26, 'asdas ', '02:30', 'asd ad ', 'sdsf s', '01012424', 'Approved', 'Siraj', 'Gulshan', 'shahmarufsiraj@gmail.com', '2024-12-29 21:19:38.703537', '2024-12-31 10:36:26.989465'),
(27, 'Mugdho', '02:39', 'sdas ', 'sda das ', '01758551245', 'Approved', 'Siraj', 'Basundhara R/A', 'shahmarufsiraj@gmail.com', '2024-12-29 21:19:38.703537', '2024-12-31 10:36:33.035977'),
(28, 'Mugdho', '03:08', 'iuuu', 'gjhj', 'asd', NULL, NULL, 'Basundhara R/A', 'shahmarufsiraj@gmail.com', '2024-12-29 21:19:38.703537', '2024-12-29 21:20:01.417460'),
(29, 'Mugdho', '00:01', 'asd as', 'dasd ', '01515', NULL, NULL, 'Basundhara R/A', '', '2024-12-30 18:56:56.198169', '2024-12-30 18:56:56.198169'),
(30, 'Mugdho', '17:01', 'abc', 'avc', '01758551245', NULL, NULL, 'Basundhara R/A', '', '2024-12-30 23:58:31.759548', '2024-12-30 23:58:31.759548'),
(31, 'Mugdho', '04:30', 'aa', 'abc', '01758551245', NULL, NULL, 'Basundhara R/A', '', '2024-12-31 10:29:07.976726', '2024-12-31 10:29:07.976726'),
(32, 'Mugdho', '18:51', 'Rice - 1 kg(less than 65 BDT) , I need 5 kg total', 'Road 7, House 134, F block', '01758551245', 'Cancelled', 'm12', 'Basundhara R/A', '', '2025-01-02 12:50:11.544913', '2025-01-02 12:51:43.809614');

-- --------------------------------------------------------

--
-- Table structure for table `tblmaid`
--

CREATE TABLE `tblmaid` (
  `ID` int(5) NOT NULL,
  `CatID` int(5) DEFAULT NULL,
  `MaidId` varchar(250) DEFAULT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `ContactNumber` bigint(10) DEFAULT NULL,
  `Gender` varchar(250) DEFAULT NULL,
  `Experience` varchar(250) DEFAULT NULL,
  `Dateofbirth` date DEFAULT NULL,
  `Address` varchar(250) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `ProfilePic` varchar(250) DEFAULT NULL,
  `IdProof` varchar(250) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `Area` varchar(200) NOT NULL,
  `Password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblmaid`
--

INSERT INTO `tblmaid` (`ID`, `CatID`, `MaidId`, `Name`, `Email`, `ContactNumber`, `Gender`, `Experience`, `Dateofbirth`, `Address`, `Description`, `ProfilePic`, `IdProof`, `RegDate`, `Area`, `Password`) VALUES
(1, 1, 'Meena1234', 'Meena Das', 'meena@gmail.com', 8979879797, 'Male', '2.5', '1989-09-06', 'J-890, Kasi basti Wesbengal', 'ghfghfytr\r\nuv4i5oyiuy6i\r\noiuiyi6yiu', '5058dfb2eb95892389b613d5e7c79cd01735213559.png', '5058dfb2eb95892389b613d5e7c79cd01735213544.png', '2023-03-31 13:41:28', 'Basundhara R/A', '1234'),
(2, 6, 'mh123', 'Neena', 'neena@gmail.com', 9779789879, 'Female', '3', '1986-02-06', 'K-908', 'hkjhkjhdfkdhkg\r\nrjtetiuaeoy\r\njtgertiouo\r\noiuouoiuo\r\nopipoipoipoipoipoikpokfwf', 'ac510893dc8d91e7a0d7b9f4d7c45e221680333111.jpg', '3f72678c4339b844781889070368cc631680333512.jpg', '2023-03-31 14:39:09', 'Uttara', '1234'),
(3, 5, 'm1234', 'Krisha', 'krisha@gmail.com', 8789789789, 'Female', '12', '1978-01-05', 'nangloi NewDelhi', 'hjghjgjhgjyyutuy', '3f3141ed3b2293aaa6b66587343daa091680536067.jpg', '57a88eacc86363dbe4ea87c74b4bfc991680536067.png', '2023-04-03 15:34:27', 'Gulshan', '1234'),
(4, 2, 'm12', 'Ramu', 'ramu@gmail.com', 1231231230, 'Male', '10', '2011-01-05', 'kanakna goi Bihar', 'hiuyiuyiuyiuyuiu', 'fc5bf5c9948c416f7c1046c8f91ba9a91680536429.png', '48828368a938efd32d079dd542c28ebf1680536429.png', '2023-04-03 15:40:29', 'Banani\r\n', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `tblmaidbooking`
--

CREATE TABLE `tblmaidbooking` (
  `ID` int(5) NOT NULL,
  `BookingID` int(10) DEFAULT NULL,
  `CatID` int(5) DEFAULT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `ContactNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `Address` varchar(250) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `WorkingShiftFrom` time DEFAULT NULL,
  `WorkingShiftTo` time DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `Notes` mediumtext DEFAULT NULL,
  `BookingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(250) DEFAULT NULL,
  `AssignTo` varchar(250) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `AreaName` varchar(255) NOT NULL,
  `CreatedTime` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `UpdatedTime` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblmaidbooking`
--

INSERT INTO `tblmaidbooking` (`ID`, `BookingID`, `CatID`, `Name`, `ContactNumber`, `Email`, `Address`, `Gender`, `WorkingShiftFrom`, `WorkingShiftTo`, `StartDate`, `Notes`, `BookingDate`, `Remark`, `Status`, `AssignTo`, `UpdationDate`, `AreaName`, `CreatedTime`, `UpdatedTime`) VALUES
(1, 504180769, 6, 'Ashutosh Singh', 9797797879, 'ashu@gmail.com', 'J-890, J&K block Laxmi Nagar, New Delhi', 'Female', '07:30:00', '08:30:00', '2023-04-02', 'Do the nnedfull', '2023-04-01 14:20:11', 'Approved', 'Approved', 'Meena1234', '2023-04-03 04:46:56', '', '2024-12-29 21:16:45.096187', '2024-12-29 21:17:20.164180'),
(2, 651150319, 1, 'abc', 8788798798, 'dgf@gmail.com', 'jhgjghjghjgjjgjhgjh', 'Male', '09:30:00', '10:30:00', '2023-04-10', 'ddtrertert', '2023-04-03 05:09:58', 'Cancel', 'Cancelled', 'Cancel', '2023-04-03 05:12:01', '', '2024-12-29 21:16:45.096187', '2024-12-29 21:17:20.164180'),
(3, 689758471, 3, 'Amit Kumar', 456321023, 'amitk@test.com', 'A 123 KW Shristi Raj Nagar Extension201017', 'Male', '22:00:00', '17:30:00', '2023-04-20', 'NA', '2023-04-11 16:41:32', 'NA', 'Approved', 'mh123', '2023-04-11 17:13:40', '', '2024-12-29 21:16:45.096187', '2024-12-29 21:17:20.164180'),
(4, 182765979, 2, 'Amita Singh', 7412330012, 'amitak@test.com', 'A 1232 XYZ Apartment Ghazibad', 'Female', '21:20:00', '23:00:00', '2023-05-01', 'NA', '2023-04-11 17:30:50', 'Request Rejected', 'Completed', 'm12', '2024-12-28 00:03:43', '', '2024-12-29 21:16:45.096187', '2024-12-29 21:17:20.164180'),
(5, 805878579, 1, 'admin', 243413, 'shahmarufsiraj@gmail.com', 'Road 07', 'Male', '21:53:00', '22:52:00', '2024-12-27', '', '2024-12-27 14:52:40', 'abc', 'Approved', 'm1234', '2024-12-27 22:41:11', '', '2024-12-29 21:16:45.096187', '2024-12-29 21:17:20.164180'),
(6, 325310163, 5, 'admin', 243413, 'shahmarufsiraj@gmail.com', 'Road 07', 'Male', '15:14:00', '06:12:00', '2024-12-31', 'ZX ', '2024-12-28 21:12:14', 'start working', 'Approved', 'Meena1234', '2024-12-30 18:57:38', 'Gulshan', '2024-12-29 21:16:45.096187', '2024-12-30 18:57:38.056564'),
(7, 196799626, 5, 'admin', 243413, 'shahmarufsiraj@gmail.com', 'Road 07', 'Male', '15:14:00', '06:12:00', '2024-12-31', 'ZX ', '2024-12-28 21:34:52', 'sfsf', 'Completed', 'm12', '2024-12-30 19:02:31', 'Gulshan', '2024-12-29 21:16:45.096187', '2024-12-30 19:02:31.353609'),
(8, 692165291, 1, 'admin', 243413, 'shahmarufsiraj@gmail.com', 'Road 07', 'Male', '06:43:00', '06:43:00', '2024-12-24', 'sdfs', '2024-12-28 21:40:23', '1st order', 'Completed', 'm12', '2024-12-31 14:21:08', 'Gulshan', '2024-12-29 21:16:45.096187', '2024-12-31 14:21:08.724426'),
(9, 240038699, 6, 'admin', 243413, 'shahmarufsiraj@gmail.com', 'Road 07', 'Male', '03:48:00', '06:46:00', '2024-12-29', 'asdas', '2024-12-28 21:46:55', '2nd order', 'Completed', 'm12', '2025-01-02 12:45:10', 'Gulshan', '2024-12-29 21:16:45.096187', '2025-01-02 12:45:10.494264'),
(10, 575337494, 1, 'admin', 243413, 'shahmarufsiraj@gmail.com', 'Road 07', 'Male', '06:35:00', '08:35:00', '2024-12-07', 'xfxgdf', '2024-12-28 22:35:48', 'customer\'s 1st order...Must provide a good service', 'Approved', 'm12', '2025-01-02 12:44:19', 'Basundhara R/A', '2024-12-29 21:16:45.096187', '2025-01-02 12:44:19.138402'),
(11, 884572310, 1, 'admin', 243413, 'shahmarufsiraj@gmail.com', 'Road 07', 'Male', '14:26:00', '14:27:00', '2024-12-24', 'asda adsa', '2024-12-29 20:23:56', 'ahdkjws', 'Approved', 'm12', '2025-01-03 07:56:09', 'Basundhara R/A', '2024-12-29 21:16:45.096187', '2025-01-03 07:56:09.927723'),
(12, 424307838, 1, 'admin', 243413, 'shahmarufsiraj@gmail.com', 'Road 07', 'Male', '12:58:00', '00:59:00', '2024-12-26', 'abd sd ', '2024-12-30 18:56:37', NULL, NULL, NULL, '2024-12-30 18:56:37', 'Gulshan', '2024-12-30 18:56:37.596257', '2024-12-30 18:56:37.596257'),
(13, 346640859, 8, 'siraj', 243413123, 'ssmugdho@hotmail.com', 'Road 07', 'Male', '20:59:00', '17:59:00', '2024-12-31', 'abc', '2024-12-30 23:57:33', NULL, NULL, NULL, '2024-12-30 23:57:33', 'Basundhara R/A', '2024-12-30 23:57:33.547837', '2024-12-30 23:57:33.547837'),
(14, 388518058, 4, 'siraj', 243413123, 'ssmugdho@hotmail.com', 'Road 07', 'Male', '06:05:00', '06:04:00', '2024-12-31', 'abc ', '2024-12-31 00:04:29', NULL, NULL, NULL, '2024-12-31 00:04:29', 'Basundhara R/A', '2024-12-31 00:04:29.628778', '2024-12-31 00:04:29.628778'),
(15, 271376588, 2, 'admin', 243413, 'shahmarufsiraj@gmail.com', 'Road 07', 'Male', '04:30:00', '04:30:00', '2024-12-31', 'sdfds', '2024-12-31 10:28:18', NULL, NULL, NULL, '2024-12-31 10:28:18', 'Gulshan', '2024-12-31 10:28:18.041723', '2024-12-31 10:28:18.041723'),
(16, 247504672, 6, 'admin', 243413, 'shahmarufsiraj@gmail.com', 'Road 07', 'Male', '18:42:00', '18:42:00', '2025-01-02', 'I need good services', '2025-01-02 12:42:07', NULL, NULL, NULL, '2025-01-02 12:42:07', 'Basundhara R/A', '2025-01-02 12:42:07.949497', '2025-01-02 12:42:07.949497'),
(17, 788688074, 1, 'admin', 243413, 'shahmarufsiraj@gmail.com', 'Road 07', 'Male', '13:55:00', '13:57:00', '2025-01-09', 'wdcd', '2025-01-03 07:54:33', NULL, NULL, NULL, '2025-01-03 07:54:33', 'Basundhara R/A', '2025-01-03 07:54:33.922613', '2025-01-03 07:54:33.922613');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(15) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', 'The About Us page highlights the mission and values of the Smart Household Management System. It serves as a trusted platform connecting users with reliable maids and essential grocery services, ensuring convenience, safety, and customer satisfaction. With a commitment to excellence, the platform simplifies household management for modern lifestyles.', 'info@gmail.com', 1758551245, NULL, ''),
(2, 'contactus', 'Contact Us', 'Basundhara R/A, D block, Road 07, Building 134', 'info@gmail.com', 1758551245, NULL, '10:30 am to 7:30 pm');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(11) NOT NULL,
  `UserName` varchar(255) NOT NULL,
  `UserEmail` varchar(255) NOT NULL,
  `UserPassword` varchar(20) NOT NULL,
  `UserMobile` varchar(20) NOT NULL,
  `UserAddress` varchar(255) NOT NULL,
  `Gender` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `UserName`, `UserEmail`, `UserPassword`, `UserMobile`, `UserAddress`, `Gender`) VALUES
(1, 'mugdho', 'shahmarufsirajmugdho@gmail.com', '$2y$10$xDOB9DZ2CjcHW', '01758551245', 'basundhara', 'Male'),
(2, 'admin', 'shahmarufsiraj@gmail.com', 'halabrazil', '0243413', 'Road 07', 'Male'),
(3, 'agent', 'shahmarufsirajs@gmail.com', '$2y$10$vfFF17RvfXhVS', '0243413', 'Road 07', 'Male'),
(4, 'siraj', 'shahmarufsiraju@gmail.com', '1234', '0243413123', 'Road 07', 'Male'),
(5, 'admin', 'kjjk@yugyg.com', 'Test@123', '01234', 'Road 07', 'Male'),
(6, 'admin', 'kjjk@yugyg.coml', 'bkbjkbjk', '01234', 'Road 07', 'Male'),
(7, 'asdas', 'sdasd@sdf.com', 'dasdas', 'asdasd', 'asdas', 'Male'),
(8, 'asda', 'as@gmail.com', 'sad', 'asdas', 'asdasd', 'Male'),
(9, 'asda', 'as@gmail.com', 'awdas aw', 'asdas', 'asdasd', 'Male'),
(10, 'asd a', 'das@gmail.com', 'asd as', '32131', 'asd a', 'Male'),
(11, 'asdasd', 'adasd@gmail.com', 'sasd ', 'ad asd ', 'asd as', 'Male'),
(12, 'asdasd', 'adasd@gmail.com', 'asd', 'ad asd ', 'asd as', 'Male'),
(13, 'abc', 'asdad@gmail.com', 'sasa', '0243413', 'Road 07', 'Female'),
(14, 'admin', 'asdad@gmail.com', 'aada', 'asd', 'asdad', 'Male'),
(15, 'agent', 'adasd@gmail.com', 'asdasa', '02542424', 'Road 07', 'Male'),
(16, 'siraj', 'ssmugdho@hotmail.com', '1234', '0243413123', 'Road 07', 'Male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblagent`
--
ALTER TABLE `tblagent`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblgrocery`
--
ALTER TABLE `tblgrocery`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblgrocerybooking`
--
ALTER TABLE `tblgrocerybooking`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblmaid`
--
ALTER TABLE `tblmaid`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblmaidbooking`
--
ALTER TABLE `tblmaidbooking`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `ID` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblagent`
--
ALTER TABLE `tblagent`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblgrocery`
--
ALTER TABLE `tblgrocery`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblgrocerybooking`
--
ALTER TABLE `tblgrocerybooking`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tblmaid`
--
ALTER TABLE `tblmaid`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblmaidbooking`
--
ALTER TABLE `tblmaidbooking`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
