-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2019 at 07:51 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_dashboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `main_customer`
--

CREATE TABLE `main_customer` (
  `main_Customer_ID` int(11) NOT NULL,
  `main_Customer_Name` varchar(100) NOT NULL,
  `main_Contact` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `main_order`
--

CREATE TABLE `main_order` (
  `main_Order_ID` int(11) NOT NULL,
  `main_Item_Name` varchar(100) NOT NULL,
  `main_Width` varchar(100) NOT NULL,
  `main_Height` varchar(100) NOT NULL,
  `main_Color` varchar(100) NOT NULL,
  `main_Quantity` varchar(100) NOT NULL,
  `main_Price` varchar(100) NOT NULL,
  `main_Customer_ID` varchar(100) NOT NULL,
  `main_Purchase_ID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `main_production`
--

CREATE TABLE `main_production` (
  `main_Production_ID` int(11) NOT NULL,
  `main_Order_ID` varchar(100) NOT NULL,
  `main_Date_Manufactured` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `main_purchase`
--

CREATE TABLE `main_purchase` (
  `main_Purchase_ID` int(11) NOT NULL,
  `main_Item_Name` varchar(100) NOT NULL,
  `main_Category` varchar(100) NOT NULL,
  `main_Unit_Item` varchar(100) NOT NULL,
  `main_Unit_Price` varchar(100) NOT NULL,
  `main_Quantity` varchar(100) NOT NULL,
  `main_Date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `main_sale`
--

CREATE TABLE `main_sale` (
  `main_Sale_ID` int(11) NOT NULL,
  `main_Order_ID` varchar(100) NOT NULL,
  `main_Customer_ID` varchar(100) NOT NULL,
  `main_Price` varchar(100) NOT NULL,
  `mian_Discount` varchar(100) NOT NULL,
  `main_Date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stg_customer`
--

CREATE TABLE `stg_customer` (
  `stg_Customer_ID` int(11) NOT NULL,
  `stg_Customer_Name` varchar(100) NOT NULL,
  `stg_Contact` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stg_order`
--

CREATE TABLE `stg_order` (
  `stg_Order_ID` int(11) NOT NULL,
  `stg_Item_Name` varchar(100) NOT NULL,
  `stg_Width` varchar(100) NOT NULL,
  `stg_Height` varchar(100) NOT NULL,
  `stg_Color` varchar(100) NOT NULL,
  `stg_Quantity` varchar(100) NOT NULL,
  `stg_Price` varchar(100) NOT NULL,
  `stg_Customer_ID` varchar(100) NOT NULL,
  `stg_Purchase_ID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stg_production`
--

CREATE TABLE `stg_production` (
  `stg_Production_ID` int(11) NOT NULL,
  `stg_Order_ID` varchar(100) NOT NULL,
  `stg_Date_Manufactured` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stg_purchase`
--

CREATE TABLE `stg_purchase` (
  `stg_Purchase_ID` int(11) NOT NULL,
  `stg_Item_Name` varchar(100) NOT NULL,
  `stg_Category` varchar(100) NOT NULL,
  `stg_Unit_Item` varchar(100) NOT NULL,
  `stg_Unit_Price` varchar(100) NOT NULL,
  `stg_Quantity` varchar(100) NOT NULL,
  `stg_Date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stg_sale`
--

CREATE TABLE `stg_sale` (
  `stg_Sale_ID` int(11) NOT NULL,
  `stg_Order_ID` varchar(100) NOT NULL,
  `stg_Customer_ID` varchar(100) NOT NULL,
  `stg_Price` varchar(100) NOT NULL,
  `stg_Discount` varchar(100) NOT NULL,
  `stg_Date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `main_customer`
--
ALTER TABLE `main_customer`
  ADD PRIMARY KEY (`main_Customer_ID`);

--
-- Indexes for table `main_order`
--
ALTER TABLE `main_order`
  ADD PRIMARY KEY (`main_Order_ID`);

--
-- Indexes for table `main_production`
--
ALTER TABLE `main_production`
  ADD PRIMARY KEY (`main_Production_ID`);

--
-- Indexes for table `main_purchase`
--
ALTER TABLE `main_purchase`
  ADD PRIMARY KEY (`main_Purchase_ID`);

--
-- Indexes for table `main_sale`
--
ALTER TABLE `main_sale`
  ADD PRIMARY KEY (`main_Sale_ID`);

--
-- Indexes for table `stg_customer`
--
ALTER TABLE `stg_customer`
  ADD PRIMARY KEY (`stg_Customer_ID`);

--
-- Indexes for table `stg_order`
--
ALTER TABLE `stg_order`
  ADD PRIMARY KEY (`stg_Order_ID`);

--
-- Indexes for table `stg_production`
--
ALTER TABLE `stg_production`
  ADD PRIMARY KEY (`stg_Production_ID`);

--
-- Indexes for table `stg_purchase`
--
ALTER TABLE `stg_purchase`
  ADD PRIMARY KEY (`stg_Purchase_ID`);

--
-- Indexes for table `stg_sale`
--
ALTER TABLE `stg_sale`
  ADD PRIMARY KEY (`stg_Sale_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `main_customer`
--
ALTER TABLE `main_customer`
  MODIFY `main_Customer_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_order`
--
ALTER TABLE `main_order`
  MODIFY `main_Order_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_production`
--
ALTER TABLE `main_production`
  MODIFY `main_Production_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_purchase`
--
ALTER TABLE `main_purchase`
  MODIFY `main_Purchase_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_sale`
--
ALTER TABLE `main_sale`
  MODIFY `main_Sale_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stg_customer`
--
ALTER TABLE `stg_customer`
  MODIFY `stg_Customer_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stg_order`
--
ALTER TABLE `stg_order`
  MODIFY `stg_Order_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stg_production`
--
ALTER TABLE `stg_production`
  MODIFY `stg_Production_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stg_purchase`
--
ALTER TABLE `stg_purchase`
  MODIFY `stg_Purchase_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stg_sale`
--
ALTER TABLE `stg_sale`
  MODIFY `stg_Sale_ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
