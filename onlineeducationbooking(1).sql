-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2021 at 10:16 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineeducationbooking`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--



CREATE TABLE `booking` (
  `BookingNumber` int(8) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `Duration` int(2) NOT NULL,
  `DeliveryMethod` varchar(10) NOT NULL,
  `ID` int(4) NOT NULL,
  `RegistrationNumber` char(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT into `booking` (`BookingNumber`,`Date`,`Time`,`Duration`,`DeliveryMethod`,`ID`,`RegistrationNumber`) values
(1,'2019-04-09','12:00:00','50','online',1,123456),
(2,'2019-04-09','12:00:00','50','online',2,123457),
(3,'2019-04-09','12:00:00','50','online',3,123458),
(4,'2019-04-09','12:00:00','50','online',4,123459);
-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE `calendar` (
  `ID` int(4) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `can_access_doctor`
--

CREATE TABLE `can_access_doctor` (
  `RegistrationNumber` char(13) NOT NULL,
  `ID` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `can_access_nurse`
--

CREATE TABLE `can_access_nurse` (
  `RegistrationNumber` char(13) NOT NULL,
  `ID` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `can_access_pharmacist`
--

CREATE TABLE `can_access_pharmacist` (
  `RegistrationNumber` char(13) NOT NULL,
  `ID` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `RegistrationNumber` char(13) NOT NULL,
  `FirstName` varchar(60) NOT NULL,
  `LastName` varchar(80) NOT NULL,
  `Title` varchar(6) NOT NULL,
  `Email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer_mobile`
--

CREATE TABLE `customer_mobile` (
  `RegistrationNumber` char(13) NOT NULL,
  `Mobile` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `RegistrationNumber` char(13) NOT NULL,
  `DoctorType` varchar(60) NOT NULL,
  `CollegeNumber` smallint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `educator`
--

CREATE TABLE `educator` (
  `ID` int(4) NOT NULL,
  `FirstName` varchar(60) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `WorkingHours` float NOT NULL,
  `Email` varchar(320) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `educator_phone`
--

CREATE TABLE `educator_phone` (
  `ID` int(4) NOT NULL,
  `Phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `medical_institution`
--

CREATE TABLE `medical_institution` (
  `Name` varchar(120) NOT NULL,
  `No.` int(4) NOT NULL,
  `Street` varchar(120) NOT NULL,
  `Suburb` varchar(120) NOT NULL,
  `State` varchar(3) NOT NULL,
  `Postcode` int(4) NOT NULL,
  `ID` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `medical_institution_phone`
--

CREATE TABLE `medical_institution_phone` (
  `ID` int(100) NOT NULL,
  `Phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `RegistrationNumber` char(13) NOT NULL,
  `NurseType` int(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacist`
--

CREATE TABLE `pharmacist` (
  `RegistrationNumber` char(13) NOT NULL,
  `PharmacistType` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `service_area`
--

CREATE TABLE `service_area` (
  `ID` int(4) NOT NULL,
  `Postcode` int(4) NOT NULL,
  `Territory` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `ID` int(8) NOT NULL,
  `Status` varchar(15) NOT NULL,
  `AccreditationNumberDoctor` int(10) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `BookingNumber` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `topic_1`
--

CREATE TABLE `topic_1` (
  `ID` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `topic_2`
--

CREATE TABLE `topic_2` (
  `ID` int(8) NOT NULL,
  `AccreditationNumberNurse` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `topic_3`
--

CREATE TABLE `topic_3` (
  `ID` int(8) NOT NULL,
  `AccreditationNumberPharmacist` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `works_at`
--

CREATE TABLE `works_at` (
  `ID` int(100) NOT NULL,
  `RegistrationNumber` char(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`BookingNumber`),
  ADD KEY `ID` (`ID`,`RegistrationNumber`),
  ADD KEY `RegistrationNumber` (`RegistrationNumber`);

--
-- Indexes for table `calendar`
--
ALTER TABLE `calendar`
  ADD PRIMARY KEY (`ID`,`Date`,`Time`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `can_access_doctor`
--
ALTER TABLE `can_access_doctor`
  ADD PRIMARY KEY (`RegistrationNumber`,`ID`),
  ADD KEY `RegistrationNumber` (`RegistrationNumber`,`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `can_access_nurse`
--
ALTER TABLE `can_access_nurse`
  ADD PRIMARY KEY (`RegistrationNumber`,`ID`),
  ADD KEY `RegistrationNumber` (`RegistrationNumber`,`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `can_access_pharmacist`
--
ALTER TABLE `can_access_pharmacist`
  ADD PRIMARY KEY (`RegistrationNumber`,`ID`),
  ADD KEY `RegistrationNumber` (`RegistrationNumber`,`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`RegistrationNumber`);

--
-- Indexes for table `customer_mobile`
--
ALTER TABLE `customer_mobile`
  ADD PRIMARY KEY (`RegistrationNumber`,`Mobile`),
  ADD KEY `RegistrationNumber` (`RegistrationNumber`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`RegistrationNumber`),
  ADD KEY `RegistrationNumber` (`RegistrationNumber`);

--
-- Indexes for table `educator`
--
ALTER TABLE `educator`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `educator_phone`
--
ALTER TABLE `educator_phone`
  ADD PRIMARY KEY (`ID`,`Phone`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `medical_institution`
--
ALTER TABLE `medical_institution`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `medical_institution_phone`
--
ALTER TABLE `medical_institution_phone`
  ADD PRIMARY KEY (`ID`,`Phone`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`RegistrationNumber`),
  ADD KEY `RegistrationNumber` (`RegistrationNumber`);

--
-- Indexes for table `pharmacist`
--
ALTER TABLE `pharmacist`
  ADD PRIMARY KEY (`RegistrationNumber`),
  ADD KEY `RegistrationNumber` (`RegistrationNumber`);

--
-- Indexes for table `service_area`
--
ALTER TABLE `service_area`
  ADD PRIMARY KEY (`ID`,`Postcode`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BookingNumber` (`BookingNumber`);

--
-- Indexes for table `topic_1`
--
ALTER TABLE `topic_1`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `topic_2`
--
ALTER TABLE `topic_2`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `topic_3`
--
ALTER TABLE `topic_3`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `works_at`
--
ALTER TABLE `works_at`
  ADD PRIMARY KEY (`ID`,`RegistrationNumber`),
  ADD KEY `ID` (`ID`,`RegistrationNumber`),
  ADD KEY `RegistrationNumber` (`RegistrationNumber`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `medical_institution`
--
ALTER TABLE `medical_institution`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`RegistrationNumber`) REFERENCES `customer` (`RegistrationNumber`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`ID`) REFERENCES `educator` (`ID`);

--
-- Constraints for table `calendar`
--
ALTER TABLE `calendar`
  ADD CONSTRAINT `calendar_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `educator` (`ID`);

--
-- Constraints for table `can_access_doctor`
--
ALTER TABLE `can_access_doctor`
  ADD CONSTRAINT `can_access_doctor_ibfk_1` FOREIGN KEY (`RegistrationNumber`) REFERENCES `doctor` (`RegistrationNumber`),
  ADD CONSTRAINT `can_access_doctor_ibfk_2` FOREIGN KEY (`ID`) REFERENCES `topics` (`ID`);

--
-- Constraints for table `can_access_nurse`
--
ALTER TABLE `can_access_nurse`
  ADD CONSTRAINT `can_access_nurse_ibfk_1` FOREIGN KEY (`RegistrationNumber`) REFERENCES `nurse` (`RegistrationNumber`),
  ADD CONSTRAINT `can_access_nurse_ibfk_2` FOREIGN KEY (`ID`) REFERENCES `topic_2` (`ID`);

--
-- Constraints for table `can_access_pharmacist`
--
ALTER TABLE `can_access_pharmacist`
  ADD CONSTRAINT `can_access_pharmacist_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `topic_3` (`ID`),
  ADD CONSTRAINT `can_access_pharmacist_ibfk_2` FOREIGN KEY (`RegistrationNumber`) REFERENCES `pharmacist` (`RegistrationNumber`);

--
-- Constraints for table `customer_mobile`
--
ALTER TABLE `customer_mobile`
  ADD CONSTRAINT `customer_mobile_ibfk_1` FOREIGN KEY (`RegistrationNumber`) REFERENCES `customer` (`RegistrationNumber`);

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`RegistrationNumber`) REFERENCES `customer` (`RegistrationNumber`);

--
-- Constraints for table `educator_phone`
--
ALTER TABLE `educator_phone`
  ADD CONSTRAINT `educator_phone_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `educator` (`ID`);

--
-- Constraints for table `medical_institution_phone`
--
ALTER TABLE `medical_institution_phone`
  ADD CONSTRAINT `medical_institution_phone_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `medical_institution` (`ID`);

--
-- Constraints for table `nurse`
--
ALTER TABLE `nurse`
  ADD CONSTRAINT `nurse_ibfk_1` FOREIGN KEY (`RegistrationNumber`) REFERENCES `customer` (`RegistrationNumber`);

--
-- Constraints for table `pharmacist`
--
ALTER TABLE `pharmacist`
  ADD CONSTRAINT `pharmacist_ibfk_1` FOREIGN KEY (`RegistrationNumber`) REFERENCES `customer` (`RegistrationNumber`);

--
-- Constraints for table `service_area`
--
ALTER TABLE `service_area`
  ADD CONSTRAINT `service_area_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `educator` (`ID`);

--
-- Constraints for table `topics`
--
ALTER TABLE `topics`
  ADD CONSTRAINT `topics_ibfk_1` FOREIGN KEY (`BookingNumber`) REFERENCES `booking` (`BookingNumber`);

--
-- Constraints for table `topic_1`
--
ALTER TABLE `topic_1`
  ADD CONSTRAINT `topic_1_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `topics` (`ID`);

--
-- Constraints for table `topic_2`
--
ALTER TABLE `topic_2`
  ADD CONSTRAINT `topic_2_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `topics` (`ID`);

--
-- Constraints for table `topic_3`
--
ALTER TABLE `topic_3`
  ADD CONSTRAINT `topic_3_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `topics` (`ID`);

--
-- Constraints for table `works_at`
--
ALTER TABLE `works_at`
  ADD CONSTRAINT `works_at_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `medical_institution` (`ID`),
  ADD CONSTRAINT `works_at_ibfk_2` FOREIGN KEY (`RegistrationNumber`) REFERENCES `customer` (`RegistrationNumber`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
