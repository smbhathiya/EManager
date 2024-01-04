-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2024 at 07:04 AM
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
-- Database: `emanager`
--

-- --------------------------------------------------------

--
-- Table structure for table `employeedata`
--

CREATE TABLE `employeedata` (
  `epfno` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `contactno` varchar(10) NOT NULL,
  `email` varchar(40) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `bankaccno` varchar(15) NOT NULL,
  `nic` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `salary` double NOT NULL,
  `designation` varchar(40) NOT NULL,
  `bdate` date NOT NULL,
  `department` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employeedata`
--

INSERT INTO `employeedata` (`epfno`, `name`, `contactno`, `email`, `gender`, `bankaccno`, `nic`, `address`, `salary`, `designation`, `bdate`, `department`) VALUES
('epf10', 'Amanda Martinez', '7776665555', 'amanda@email.com', 'Female', '666777888999', '870203040506', 'Dallas', 70000, 'Executive', '1989-12-12', 'Admin'),
('epf11', 'James Taylor', '1113335555', 'james@email.com', 'Male', '333222111444', '760506070809', 'Phoenix', 92000, 'Engineer', '1986-05-08', 'HR'),
('epf12', 'Laura Hernandez', '2224446666', 'laura@email.com', 'Female', '111444555666', '911010203040', 'Boston', 78000, 'Designer', '1983-10-22', 'Finance'),
('epf13', 'Robert Jackson', '6665554444', 'robert@email.com', 'Male', '888777666555', '950708091011', 'San Diego', 86000, 'Salesperson', '1984-07-03', 'Sales'),
('epf14', 'Jennifer White', '5554443333', 'jennifer@email.com', 'Female', '444555666777', '840203040506', 'Atlanta', 72000, 'Researcher', '1990-03-30', 'Marketing'),
('epf15', 'Daniel Clark', '8889990000', 'daniel@email.com', 'Male', '999888777666', '890506070809', 'Chicago', 92000, 'Administrator', '1982-01-11', 'Operations'),
('epf2', 'John Doe', '1234567890', 'johndoe@email.com', 'Male', '987654321098', '910111213014', 'New York', 75000, 'Assistant', '1995-04-15', 'HR'),
('epf3', 'Jane Smith', '9876543210', 'janesmith@email.com', 'Female', '654321098765', '820304050607', 'Los Angeles', 70000, 'Team Leader', '1990-11-20', 'Sales'),
('epf4', 'Alice Johnson', '5551234567', 'alice@email.com', 'Female', '123987456321', '750809101112', 'Chicago', 90000, 'Specialist', '1985-09-10', 'Marketing'),
('epf5', 'Michael Brown', '3338887777', 'michael@email.com', 'Male', '987654123654', '880102030405', 'Houston', 85000, 'Analyst', '1992-06-25', 'Operations'),
('epf6', 'Emily Davis', '5557778888', 'emily@email.com', 'Female', '456789123987', '960708091011', 'San Francisco', 72000, 'Administrator', '1988-02-18', 'Customer Support'),
('epf7', 'David Wilson', '1112223333', 'david@email.com', 'Male', '555555555555', '700203040506', 'Denver', 95000, 'Consultant', '1980-07-01', 'IT'),
('epf8', 'Susan Anderson', '9993331111', 'susan@email.com', 'Female', '777777777777', '850607080910', 'Miami', 81000, 'Technician', '1987-03-14', 'Legal'),
('epf9', 'William Miller', '4445556666', 'william@email.com', 'Male', '222333444555', '930506070809', 'Seattle', 88000, 'Officer', '1991-09-02', 'R&D');

-- --------------------------------------------------------

--
-- Table structure for table `useraccounts`
--

CREATE TABLE `useraccounts` (
  `epfno` varchar(15) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `useraccounts`
--

INSERT INTO `useraccounts` (`epfno`, `username`, `password`, `type`) VALUES
('epf1', 'manager', '1234', 'Manager'),
('epf2', 'assistant', '1234', 'Assistant');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employeedata`
--
ALTER TABLE `employeedata`
  ADD PRIMARY KEY (`epfno`),
  ADD UNIQUE KEY `nic` (`nic`);

--
-- Indexes for table `useraccounts`
--
ALTER TABLE `useraccounts`
  ADD UNIQUE KEY `epfno` (`epfno`),
  ADD UNIQUE KEY `username` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
