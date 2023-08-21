-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2021 at 12:53 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crime_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `c_id` int(11) NOT NULL,
  `a_no` bigint(12) NOT NULL,
  `location` varchar(50) NOT NULL,
  `type_crime` varchar(50) NOT NULL,
  `d_o_c` date NOT NULL,
  `description` varchar(7000) NOT NULL,
  `inc_status` varchar(50) DEFAULT 'Unassigned',
  `pol_status` varchar(50) DEFAULT 'null',
  `p_id` varchar(50) DEFAULT 'Null'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`c_id`, `a_no`, `location`, `type_crime`, `d_o_c`, `description`, `inc_status`, `pol_status`, `p_id`) VALUES
(1, 123214521452, 'Tollygunge', 'Robbery', '2018-12-06', 'My Home has been Robbed.', 'Assigned', 'ChargeSheet Filed', 't101'),
(3, 33100, 'Anandapur', 'Murder', '2021-05-02', 'MURDER', 'Assigned', 'ChargeSheet Filed', 'a101'),
(4, 33100, 'Tollygunge', 'Murder', '2021-05-01', 'Yasir and Nabeel Murdered My Friend Safdar :(', 'Assigned', 'ChargeSheet Filed', 't101'),
(11, 33100, 'Tollygunge', 'Murder', '2021-05-01', 'MURDER', 'Assigned', 'ChargeSheet Filed', 't101'),
(12, 1111111111111, 'Ring Road', 'Murder', '2021-05-01', 'MURDER', 'Assigned', 'ChargeSheet Filed', '13809');

-- --------------------------------------------------------

--
-- Table structure for table `head`
--

CREATE TABLE `head` (
  `h_id` varchar(50) NOT NULL,
  `h_pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `head`
--

INSERT INTO `head` (`h_id`, `h_pass`) VALUES
('head@kp', 'head');

-- --------------------------------------------------------

--
-- Table structure for table `police`
--

CREATE TABLE `police` (
  `p_name` varchar(50) NOT NULL,
  `p_id` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `p_pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `police`
--

INSERT INTO `police` (`p_name`, `p_id`, `spec`, `location`, `p_pass`) VALUES
('Yasir Rana', '13809', 'All', 'Ring Road', '13809b'),
('Manish Singh', 'a101', 'Murder', 'Anandapur', 'manish'),
('Jay Singh', 'a102', 'All', 'Anandapur', 'jay'),
('Suvendu Ghosh', 't101', 'Robbery', 'Tollygunge', 'suvendu');

-- --------------------------------------------------------

--
-- Table structure for table `police_station`
--

CREATE TABLE `police_station` (
  `i_id` varchar(50) NOT NULL,
  `i_name` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `i_pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `police_station`
--

INSERT INTO `police_station` (`i_id`, `i_name`, `location`, `i_pass`) VALUES
('13304', 'Hanzla', 'Ring Road', '13304b'),
('shah@anandapur', 'Shahbaz', 'Anandapur', 'shahbaz'),
('shivam@tollygunge', 'Shivam', 'Tollygunge', 'shivam');

-- --------------------------------------------------------

--
-- Table structure for table `update_case`
--

CREATE TABLE `update_case` (
  `c_id` int(11) NOT NULL,
  `d_o_u` timestamp NOT NULL DEFAULT current_timestamp(),
  `case_update` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `update_case`
--

INSERT INTO `update_case` (`c_id`, `d_o_u`, `case_update`) VALUES
(1, '2018-12-17 10:32:06', 'Criminal Verified'),
(1, '2018-12-17 10:32:12', 'Criminal Caught'),
(1, '2018-12-17 10:32:15', 'Criminal Interrogated'),
(1, '2018-12-17 10:32:21', 'Criminal Accepted the Crime'),
(1, '2018-12-17 10:32:26', 'Criminal Charged'),
(1, '2018-12-17 10:32:51', 'The case has been moved to Court.'),
(1, '2018-12-17 10:32:59', 'Criminal Verified'),
(1, '2021-05-03 22:07:22', 'Criminal Verified'),
(3, '2021-05-04 11:17:57', 'Criminal Accepted the Crime'),
(3, '2021-05-04 11:19:27', 'The culprit has been hanged'),
(11, '2021-05-04 20:37:50', 'Criminal Charged'),
(11, '2021-05-04 20:38:53', 'CRMINAL HAS BEEN HANGED'),
(12, '2021-05-05 10:10:28', 'Criminal Caught'),
(12, '2021-05-05 10:10:39', 'Criminal Accepted the Crime'),
(12, '2021-05-05 10:10:49', 'CRIMINAL HAS BEEN HANGED'),
(4, '2021-05-05 10:44:06', 'CRIMINAL HAS BEEN HANGED');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_name` varchar(50) NOT NULL,
  `u_id` varchar(50) NOT NULL,
  `u_pass` varchar(50) NOT NULL,
  `u_addr` varchar(100) NOT NULL,
  `a_no` bigint(12) NOT NULL,
  `gen` varchar(15) NOT NULL,
  `mob` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_name`, `u_id`, `u_pass`, `u_addr`, `a_no`, `gen`, `mob`) VALUES
('hanzla', 'um74587@gmail.com', '123456', 'mehmoodabad', 33100, 'Male', 307),
('Satyansh Kumar', 'satyansh123@gmail.com', 'satyansh', 'Ranchi', 123214521452, 'Male', 9854123654),
('asas', 'sa@sa.com', '123456', 'asasasa', 1111111111111, 'Male', 12121221121);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `police`
--
ALTER TABLE `police`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `police_station`
--
ALTER TABLE `police_station`
  ADD PRIMARY KEY (`i_id`),
  ADD UNIQUE KEY `location` (`location`);

--
-- Indexes for table `update_case`
--
ALTER TABLE `update_case`
  ADD UNIQUE KEY `d_o_u` (`d_o_u`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`a_no`),
  ADD UNIQUE KEY `u_id` (`u_id`),
  ADD UNIQUE KEY `mob` (`mob`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
