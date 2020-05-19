-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2020 at 06:50 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db1`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Id` int(11) NOT NULL,
  `F_Name` varchar(20) NOT NULL,
  `L_Name` varchar(20) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Mobile_No` varchar(12) NOT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `PassWord` varchar(20) NOT NULL,
  `image` varchar(30) NOT NULL DEFAULT 'ImageInsert.png'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Id`, `F_Name`, `L_Name`, `Gender`, `Mobile_No`, `Email`, `PassWord`, `image`) VALUES
(1, 'Harsh', 'Patel', 'male', '9586023740', 'harshpatel281199@gmail.com', '2811', 'HarshPatel.jpg'),
(2, 'Brijal', 'Patel', 'female', '9586023740', 'brijalpatel291967038@gmail.com', '7038', 'ImageInsert.png'),
(3, 'Savan', 'Budheliya', 'male', '2932893488', 'Savan513@gmail.com', '9090', 'ImageInsert.png'),
(4, 'Test', 'Test', 'male', '9090909090', 'abc@gmail.com', '812', 'ImageInsert.png'),
(5, 'Abc', 'Patel', 'male', '8849430206', 'abc@gmail.com', '8935', 'ImageInsert.png');

-- --------------------------------------------------------

--
-- Table structure for table `emp_tbl`
--

CREATE TABLE `emp_tbl` (
  `id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_tbl`
--

INSERT INTO `emp_tbl` (`id`, `address`, `email`, `name`, `telephone`) VALUES
(1, 'B-502,Sunday Avenue', 'harshpatel281199@gmail.com', 'Harsh Patel', '8849430206'),
(2, 'B-502,Sunday Avenue,Nr. Ankur school,Ambatalavdi,Katargam,surat.', 'brijalpatel291967038@gmail.com', 'Brijal Patel', '9586023740');

-- --------------------------------------------------------

--
-- Table structure for table `leaverequest`
--

CREATE TABLE `leaverequest` (
  `No` int(3) NOT NULL,
  `E_id` int(3) NOT NULL,
  `F_Name` varchar(30) NOT NULL,
  `L_Name` varchar(30) NOT NULL,
  `From_Date` varchar(30) NOT NULL,
  `To_Date` varchar(30) NOT NULL,
  `Type` varchar(30) NOT NULL,
  `Reason` varchar(100) NOT NULL,
  `Status` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leaverequest`
--

INSERT INTO `leaverequest` (`No`, `E_id`, `F_Name`, `L_Name`, `From_Date`, `To_Date`, `Type`, `Reason`, `Status`) VALUES
(1, 1, 'Harsh', 'Patel', '10/03/2020', '12/03/2020', 'Urgent', 'kdldfkl', '2'),
(2, 1, 'Harsh', 'Patel', '03/03/2020', '05/03/2020', 'Urgent', 'kkksdklf', '2'),
(3, 1, 'Harsh', 'Patel', '04/03/2020', '06/03/2020', 'Urgent', 'mkfdksdkl', '0'),
(4, 1, 'Harsh', 'Patel', '03/03/2020', '06/03/2020', 'Urgent', 'jsdjkasdjkkja', '1'),
(6, 2, 'Brijal', 'Patel', '16/03/2020', '17/03/2020', 'Urgent', 'akslklda', '1'),
(7, 2, 'Brijal', 'Patel', '09/03/2020', '13/03/2020', 'Normal Leave', 'kjzkjksfdkj', '1');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(3) NOT NULL,
  `E_id` int(3) NOT NULL,
  `Title` varchar(30) NOT NULL,
  `Technology` varchar(40) NOT NULL,
  `Description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `E_id`, `Title`, `Technology`, `Description`) VALUES
(1, 1, 'Pet Care', 'Advacne java', 'sklkasdkl'),
(2, 1, 'saakllksadf', 'sfjf', 'dfkjsfk'),
(3, 1, 'Employee LEave', 'askldkasd', 'jkajsdkjasdk'),
(4, 2, 'kadsk', 'klsdlka', 'kskjasdjk'),
(5, 2, 'KZX', 'kdsf', 'ffdksld');

-- --------------------------------------------------------

--
-- Table structure for table `salarydetails`
--

CREATE TABLE `salarydetails` (
  `Id` int(3) NOT NULL,
  `E_Id` int(3) NOT NULL,
  `Urgent_Leaves` int(3) NOT NULL,
  `Normal_Leaves` int(3) NOT NULL,
  `Actual_Salary` double NOT NULL,
  `Total_Salary` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salarydetails`
--

INSERT INTO `salarydetails` (`Id`, `E_Id`, `Urgent_Leaves`, `Normal_Leaves`, `Actual_Salary`, `Total_Salary`) VALUES
(5, 1, 2, 0, 23000, 22600);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `emp_tbl`
--
ALTER TABLE `emp_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaverequest`
--
ALTER TABLE `leaverequest`
  ADD PRIMARY KEY (`No`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salarydetails`
--
ALTER TABLE `salarydetails`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `emp_tbl`
--
ALTER TABLE `emp_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `leaverequest`
--
ALTER TABLE `leaverequest`
  MODIFY `No` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `salarydetails`
--
ALTER TABLE `salarydetails`
  MODIFY `Id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
