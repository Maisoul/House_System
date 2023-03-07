-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 04, 2018 at 10:15 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE IF NOT EXISTS `activity_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(10) NOT NULL,
  `log_in` varchar(50) NOT NULL,
  `log_out` varchar(50) NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`log_id`, `user_id`, `log_in`, `log_out`) VALUES
(2, '4', '22/11/2015 08:46:13pm', '22/11/2015 08:46:43pm'),
(4, '4', '22/11/2015 08:49:27pm', '22/11/2015 08:52:36pm'),
(6, '5', '22/11/2015 08:52:43pm', '22/11/2015 08:53:19pm'),
(7, '5', '22/11/2015 08:53:24pm', '22/11/2015 08:58:24pm'),
(9, '1', '22/11/2015 08:58:28pm', ''),
(10, '2', '22/11/2015 08:58:50pm', '22/11/2015 09:00:24pm'),
(11, '6', '22/11/2015 09:00:33pm', ''),
(13, '2', '23/11/2015 05:03:26pm', ''),
(15, '6', '23/11/2015 08:41:10pm', '23/11/2015 08:41:13pm'),
(17, '5', '23/11/2015 10:09:15pm', '23/11/2015 10:09:21pm'),
(18, '5', '23/11/2015 10:09:15pm', ''),
(21, '7', '24/11/2015 09:27:02am', ''),
(22, '7', '24/11/2015 09:56:23am', '24/11/2015 10:13:37am'),
(24, '1', '24/11/2015 10:13:51am', ''),
(25, '1', '24/11/2015 10:53:33am', ''),
(26, '1', '24/11/2015 09:56:28pm', ''),
(27, '1', '24/11/2015 10:42:15pm', ''),
(28, '3', '25/11/2015 06:40:54am', '25/11/2015 06:48:46am'),
(29, '3', '25/11/2015 06:49:00am', '25/11/2015 07:02:32am'),
(30, '6', '25/11/2015 07:00:51am', '25/11/2015 07:10:27am'),
(31, '1', '25/11/2015 07:02:37am', ''),
(32, '8', '25/11/2015 07:11:32am', '25/11/2015 07:16:15am'),
(33, '5', '25/11/2015 07:16:34am', ''),
(34, '1', '03/04/2018 06:26:45am', ''),
(35, '2', '03/04/2018 06:30:55am', ''),
(36, '1', '03/04/2018 06:32:52am', ''),
(37, '1', '03/04/2018 11:13:25am', ''),
(38, '1', '04/04/2018 07:49:53am', ''),
(39, '1', '04/04/2018 08:00:34am', ''),
(40, '1', '04/04/2018 08:02:06am', ''),
(41, '2', '04/04/2018 08:03:32am', '04/04/2018 08:03:59am'),
(42, '1', '04/04/2018 08:04:11am', ''),
(43, '6', '04/04/2018 09:58:57am', '04/04/2018 10:00:07am'),
(44, '9', '04/04/2018 10:00:14am', ''),
(45, '9', '04/04/2018 10:13:30am', '');

-- --------------------------------------------------------

--
-- Table structure for table `all_transactions`
--

CREATE TABLE IF NOT EXISTS `all_transactions` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` varchar(100) NOT NULL,
  `tenant_id` varchar(11) NOT NULL,
  `property_id` varchar(10) NOT NULL,
  `unit_id` varchar(10) NOT NULL,
  `balance` varchar(100) NOT NULL,
  `trans_status` varchar(100) NOT NULL,
  `trans_date` varchar(50) NOT NULL,
  `trans_nature` varchar(100) NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `all_transactions`
--


-- --------------------------------------------------------

--
-- Table structure for table `caretakers`
--

CREATE TABLE IF NOT EXISTS `caretakers` (
  `caretaker_id` int(11) NOT NULL AUTO_INCREMENT,
  `caretaker_name` varchar(100) NOT NULL,
  `cnational_id` int(11) NOT NULL,
  `caretaker_residence` varchar(100) NOT NULL,
  `caretaker_county` varchar(100) NOT NULL,
  `caretaker_mobile` varchar(110) NOT NULL,
  `date` varchar(100) NOT NULL,
  PRIMARY KEY (`caretaker_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `caretakers`
--

INSERT INTO `caretakers` (`caretaker_id`, `caretaker_name`, `cnational_id`, `caretaker_residence`, `caretaker_county`, `caretaker_mobile`, `date`) VALUES
(6, 'wendy', 24365789, 'nyeri', 'Nyeri', '0789653423', '04/04/2018 07:59:21am');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE IF NOT EXISTS `companies` (
  `co_id` int(11) NOT NULL AUTO_INCREMENT,
  `co_name` varchar(100) NOT NULL,
  `co_reg` varchar(100) NOT NULL,
  `co_bank` varchar(100) NOT NULL,
  `co_account` varchar(100) NOT NULL,
  `co_status` varchar(100) NOT NULL,
  `co_date` varchar(100) NOT NULL,
  PRIMARY KEY (`co_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `companies`
--


-- --------------------------------------------------------

--
-- Table structure for table `income_expense`
--

CREATE TABLE IF NOT EXISTS `income_expense` (
  `ref_id` int(11) NOT NULL AUTO_INCREMENT,
  `ie_date` varchar(100) NOT NULL,
  `income` varchar(50) NOT NULL,
  `inc_amount` varchar(50) NOT NULL,
  `expense` varchar(50) NOT NULL,
  `exp_amount` varchar(50) NOT NULL,
  `property_id` varchar(50) NOT NULL,
  `unit_id` varchar(50) NOT NULL,
  PRIMARY KEY (`ref_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `income_expense`
--


-- --------------------------------------------------------

--
-- Table structure for table `owners`
--

CREATE TABLE IF NOT EXISTS `owners` (
  `owner_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_name` varchar(100) NOT NULL,
  `onational_id` int(11) NOT NULL,
  `owner_residence` varchar(100) NOT NULL,
  `owner_county` varchar(100) NOT NULL,
  `owner_mobile` varchar(110) NOT NULL,
  `date` varchar(100) NOT NULL,
  PRIMARY KEY (`owner_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `owners`
--

INSERT INTO `owners` (`owner_id`, `owner_name`, `onational_id`, `owner_residence`, `owner_county`, `owner_mobile`, `date`) VALUES
(6, 'becky', 7865434, 'nyeri', 'Nyeri', '0799876456', '04/04/2018 08:00:05am');

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE IF NOT EXISTS `properties` (
  `property_id` int(11) NOT NULL AUTO_INCREMENT,
  `property_name` varchar(100) NOT NULL,
  `storeys` int(11) NOT NULL,
  `units` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `caretaker_id` int(11) NOT NULL,
  `location` varchar(100) NOT NULL,
  `county` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  PRIMARY KEY (`property_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`property_id`, `property_name`, `storeys`, `units`, `owner_id`, `caretaker_id`, `location`, `county`, `date`) VALUES
(1, 'lodgings', 32, 222, 3, 5, 'ruiru', 'Kiambu', '03/04/2018 06:48:26am');

-- --------------------------------------------------------

--
-- Table structure for table `rent_manager`
--

CREATE TABLE IF NOT EXISTS `rent_manager` (
  `tenant_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rent_manager`
--


-- --------------------------------------------------------

--
-- Table structure for table `service_transactions`
--

CREATE TABLE IF NOT EXISTS `service_transactions` (
  `service_id` int(11) NOT NULL AUTO_INCREMENT,
  `receipt_no` varchar(100) NOT NULL,
  `provider` varchar(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `account` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `service_transactions`
--

INSERT INTO `service_transactions` (`service_id`, `receipt_no`, `provider`, `code`, `date`, `account`, `amount`) VALUES
(1, '100', 'Safaricom', 'JJL9AY6X8N', '21-10-15 11:31', '123456', '500'),
(2, '', 'Safaricom', 'JJL6AY2Y9W', '21-10-15 11:16', '123457', '7000'),
(3, '', 'Safaricom', 'JJL6AX37OE', '21-10-15 09:07', '123458', '1000'),
(4, '103', 'Safaricom', 'JJK2AP5OHQ', '20-10-15 08:20', '123459', '8000'),
(5, '', 'Safaricom', 'JJJ1ANPJ95', '19-10-15 20:31', '123460', '45000'),
(6, '', 'Safaricom', 'JJJ0AJ2N3S', '19-10-15 11:57', '123461', '5000'),
(7, '', 'Safaricom', 'JJJ7AH6Q0X', '19-10-15 07:55', '123462', '5000'),
(8, '', 'Safaricom', 'JJJ6AH2V1U', '19-10-15 07:35', '123463', '5000'),
(9, '', 'Safaricom', 'JJI3AGC1Y5', '18-10-15 21:39', '123464', '5000'),
(10, '', 'Safaricom', 'JJI7AFLF7J', '18-10-15 19:54', '123465', '5000'),
(11, '', 'Safaricom', 'JJH0A3FNVI', '17-10-15 10:44', '123465', '5000'),
(12, '101', 'Safaricom', 'JJG4A17TBQ', '16-10-15 21:57', '123456', '400'),
(13, '', 'Safaricom', 'JJG6A145I8', '16-10-15 21:37', '123457', '5000'),
(14, '', 'Safaricom', 'JJF39QJQF3', '15-10-15 17:52', '123460', '5000'),
(15, '', 'Safaricom', 'JJE79GGA15', '14-10-15 13:10', '123463', '5000'),
(16, '102', 'Safaricom', 'JJD0981F3E', '13-10-15 11:46', '123456', '100'),
(17, '', 'Safaricom', 'JJD297UO9S', '13-10-15 11:22', '123461', '5000'),
(18, '', 'Safaricom', 'JJD99764AX', '13-10-15 09:55', '123463', '5000'),
(19, '', 'Safaricom', 'JJ828335PI', '08-10-15 06:52', '123463', '9800');

-- --------------------------------------------------------

--
-- Table structure for table `tenants`
--

CREATE TABLE IF NOT EXISTS `tenants` (
  `tenant_id` int(11) NOT NULL AUTO_INCREMENT,
  `tenant_name` varchar(100) NOT NULL,
  `tnational_id` int(11) NOT NULL,
  `tenant_address` varchar(100) NOT NULL,
  `tenant_mobile` varchar(100) NOT NULL,
  `tenant_county` varchar(100) NOT NULL,
  `property_id` varchar(100) NOT NULL,
  `unit_id` varchar(11) NOT NULL,
  `lease_status` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `user` varchar(10) NOT NULL,
  PRIMARY KEY (`tenant_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tenants`
--

INSERT INTO `tenants` (`tenant_id`, `tenant_name`, `tnational_id`, `tenant_address`, `tenant_mobile`, `tenant_county`, `property_id`, `unit_id`, `lease_status`, `date`, `user`) VALUES
(1, 'jon kim', 21074545, '90-kinangop', '0729313894', 'Nyandarua', '1', '1', 'Active', '22/11/2015 08:45:17pm', '29'),
(2, 'faith james', 10101010, '56-karatina', '0711515151', 'Nyeri', '3', '4', 'Active', '23/11/2015 06:48:09pm', '1'),
(3, 'samson yegon', 23232323, '12-nandi', '0703948858', 'Nandi', '4', '5', 'Pending', '25/11/2015 07:07:36am', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tenant_issues`
--

CREATE TABLE IF NOT EXISTS `tenant_issues` (
  `issue_id` int(11) NOT NULL AUTO_INCREMENT,
  `tenant_id` varchar(10) NOT NULL,
  `unit_id` varchar(10) NOT NULL,
  `issue` varchar(1000) NOT NULL,
  `category` varchar(100) NOT NULL,
  `date_raised` varchar(100) NOT NULL,
  `issue_status` varchar(100) NOT NULL,
  `approval_date` varchar(50) NOT NULL,
  `workorder_info` varchar(50) NOT NULL,
  PRIMARY KEY (`issue_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tenant_issues`
--


-- --------------------------------------------------------

--
-- Table structure for table `tenant_messages`
--

CREATE TABLE IF NOT EXISTS `tenant_messages` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `tenant_id` int(10) NOT NULL,
  `property_id` int(10) NOT NULL,
  `unit_id` int(10) NOT NULL,
  `message_type` varchar(100) NOT NULL,
  `message` varchar(5000) NOT NULL,
  `msg_date` varchar(50) NOT NULL,
  `priority` varchar(100) NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tenant_messages`
--


-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE IF NOT EXISTS `units` (
  `unit_id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_name` varchar(100) NOT NULL,
  `unit_size` varchar(100) NOT NULL,
  `tenant_id` varchar(11) NOT NULL,
  `property_id` varchar(11) NOT NULL,
  `lipa_kodi` varchar(100) NOT NULL,
  `rent` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  PRIMARY KEY (`unit_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`unit_id`, `unit_name`, `unit_size`, `tenant_id`, `property_id`, `lipa_kodi`, `rent`, `status`, `date`) VALUES
(1, 'room-10', 'single', '1', '1', '123456', '2500', 'Occupied', '22/11/2015 08:36:57pm'),
(2, 'room-01', 'double', '', '1', '123457', '5000', 'Unoccupied', '22/11/2015 08:37:21pm'),
(3, 'villa-1', 'onebedroom', '', '3', '123458', '15000', 'Unoccupied', '22/11/2015 08:38:06pm'),
(4, 'villa-2', 'shop', '2', '3', '123459', '6000', 'Occupied', '22/11/2015 08:38:23pm'),
(5, 'tbh-1', 'single', '3', '4', '123460', '6000', 'Reserved', '22/11/2015 08:39:02pm');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `unational_id` varchar(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `unational_id`, `username`, `password`, `category`, `date_added`) VALUES
(5, '12155455', 'jymo', 'jymo', 'caretaker', ''),
(6, '2978956', 'jon', 'jon', 'owner', ''),
(9, '24365789', 'admin', 'admin', 'administrator', ''),
(10, '7865434', '', '', 'owner', '');

-- --------------------------------------------------------

--
-- Table structure for table `workorders`
--

CREATE TABLE IF NOT EXISTS `workorders` (
  `work_id` int(11) NOT NULL AUTO_INCREMENT,
  `issue_id` varchar(100) NOT NULL,
  `summary` varchar(100) NOT NULL,
  `date_opened` varchar(100) NOT NULL,
  `date_due` varchar(100) NOT NULL,
  `work_status` varchar(100) NOT NULL,
  `co_id` varchar(100) NOT NULL,
  `work_cost` varchar(10) NOT NULL,
  PRIMARY KEY (`work_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `workorders`
--

