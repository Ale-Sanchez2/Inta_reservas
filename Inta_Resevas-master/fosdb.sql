-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2022 at 05:13 AM
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
-- Database: `fosdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `ID` int(2) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`ID`, `username`, `password`) VALUES
(0, 'admin', '1234abcd..');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `menuID` int(11) NOT NULL,
  `menuName` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`menuID`, `menuName`) VALUES
(1, 'Labaratorio Central'),
(2, 'Laboratorio Geles'),
(3, 'Laboratorio in vitro');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menuitem`
--

CREATE TABLE `tbl_menuitem` (
  `itemID` int(11) NOT NULL,
  `menuID` int(11) NOT NULL,
  `menuItemName` text NOT NULL,
  `price` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_menuitem`
--

INSERT INTO `tbl_menuitem` (`itemID`, `menuID`, `menuItemName`, `price`) VALUES
(1, 1, 'auto clave (chica) ', '3.00'),
(2, 1, 'auto clave (grande) ) ', '3.00'),
(3, 1, 'ultra freezer. -80 ', '3.00'),
(4, 1, 'estufa de cultivo1', '3.00'),
(5, 1, 'estufa de cultivo2 ', '3.00'),
(6, 1, 'beadbeater', '3.00'),
(7, 1, 'baño termostático ', '3.00'),
(8, 1, ' vortex', '3.00'),
(9, 1, 'centrifuga refrigerada ', '3.00'),
(10, 1, 'espectro fotómetro ', '3.00'),
(11, 1, 'shaker orbital grande. ', '3.00'),
(12, 1, 'campana de gas ', '3.00'),
(13, 1, 'agitador encubadora1 ', '3.00'),
(14, 1, 'mesadas', '3.00'),
(15, 1, '-20 horizontal ', '3.00'),
(16, 1, '-20 vertical ', '3.00'),
(17, 1, 'heladera excibidora. ', '3.00'),
(18, 1, 'granizadora', '3.00'),
(19, 1, 'agitador magnetico1 ', '3.00'),
(20, 1, 'termo-mix ', '3.00'),
(21, 1, 'centrifuga pequeña', '3.00'),
(22, 1, 'agitador IKA', '3.00'),
(23, 1, 'heladera. ', '3.00'),
(24, 2, 'agitador incubadora 2', '3.00'),
(25, 2, 'foto docentador', '3.00'),
(26, 2, 'balanza  1', '3.00'),
(27, 3, 'micro manipulador. ', '3.00'),
(28, 3, 'lupa 1', '3.00'),
(29, 3, 'lupa 2', '3.00'),
(30, 3, 'centrifuga refrigerada grande', '3.00'),
(31, 3, 'real time 1', '3.00'),
(32, 3, 'real time2', '3.00'),
(33, 3, 'pcr', '3.00'),
(34, 3, 'phmetro', '3.00'),
(35, 3, 'agitador magnetico2', '3.00'),
(36, 3, 'balanza precision ', '3.00'),
(37, 3, 'Denovix', '3.00'),
(38, 3, 'flujo laminado. ', '3.00'),
(39, 3, 'cuarto de luces ', '3.00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `orderID` int(11) NOT NULL,
  `status` text NOT NULL,
  `total` decimal(15,2) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`orderID`, `status`, `total`, `order_date`) VALUES
(1, 'finish', '1000.00', '2020-01-17'),
(2, 'finish', '10000.00', '2020-01-17'),
(3, 'ready', '11000.00', '2020-01-18'),
(4, 'cancelled', '6000.00', '2020-01-18'),
(5, 'cancelled', '10000.00', '2020-01-25'),
(6, 'cancelled', '15500.00', '2020-01-25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orderdetail`
--

CREATE TABLE `tbl_orderdetail` (
  `orderID` int(11) NOT NULL,
  `orderDetailID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_orderdetail`
--

INSERT INTO `tbl_orderdetail` (`orderID`, `orderDetailID`, `itemID`, `quantity`) VALUES
(1, 1, 14, 1),
(2, 2, 13, 1),
(2, 3, 14, 1),
(2, 4, 15, 1),
(2, 5, 16, 1),
(3, 6, 25, 1),
(3, 7, 38, 1),
(3, 8, 32, 1),
(4, 9, 17, 1),
(4, 10, 30, 1),
(5, 11, 17, 2),
(6, 12, 23, 1),
(6, 13, 26, 1),
(6, 14, 36, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_role`
--

CREATE TABLE `tbl_role` (
  `role` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_role`
--

INSERT INTO `tbl_role` (`role`) VALUES
('Administrador'),
('Usuario');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_staff`
--

CREATE TABLE `tbl_staff` (
  `staffID` int(2) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` text NOT NULL,
  `role` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_staff`
--

INSERT INTO `tbl_staff` (`staffID`, `username`, `password`, `status`, `role`) VALUES
(1, 'Juan', '1234abcd..', 'Online', 'chef'),
(4, 'Pedro', '1234abcd..', 'Online', 'Usuario'),
(5, 'Emily', '1234abcd..', 'Online', 'chef'),
(6, 'Robert', '1234abcd..', 'Online', 'chef'),
(7, 'Sofia', 'abc123', 'Offline', 'Mesero'),
(10, 'maria', '1234abcd..', 'Offline', 'Administrador'),
(12, 'jano', '1234abcd..', 'Offline', 'Usuario');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`menuID`);

--
-- Indexes for table `tbl_menuitem`
--
ALTER TABLE `tbl_menuitem`
  ADD PRIMARY KEY (`itemID`),
  ADD KEY `menuID` (`menuID`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`orderID`);

--
-- Indexes for table `tbl_orderdetail`
--
ALTER TABLE `tbl_orderdetail`
  ADD PRIMARY KEY (`orderDetailID`),
  ADD KEY `itemID` (`itemID`),
  ADD KEY `orderID` (`orderID`);

--
-- Indexes for table `tbl_staff`
--
ALTER TABLE `tbl_staff`
  ADD PRIMARY KEY (`staffID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `menuID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_menuitem`
--
ALTER TABLE `tbl_menuitem`
  MODIFY `itemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tbl_orderdetail`
--
ALTER TABLE `tbl_orderdetail`
  MODIFY `orderDetailID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_staff`
--
ALTER TABLE `tbl_staff`
  MODIFY `staffID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
