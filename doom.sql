-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2026 at 04:14 AM
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
-- Database: `doom`
--

-- --------------------------------------------------------

--
-- Table structure for table `college_admin`
--

CREATE TABLE `college_admin` (
  `colAdminID` varchar(20) NOT NULL,
  `college` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `commentsID` int(11) NOT NULL,
  `theComment` varchar(255) NOT NULL,
  `password` varchar(20) NOT NULL,
  `reportID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contractor`
--

CREATE TABLE `contractor` (
  `contractorID` varchar(20) NOT NULL,
  `cType` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `reportID` int(11) NOT NULL,
  `reportCategory` varchar(20) NOT NULL,
  `reportDesc` varchar(255) NOT NULL,
  `reportRoom` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `userID` varchar(20) NOT NULL,
  `dateReported` varchar(20) DEFAULT NULL,
  `dateForwarded` varchar(20) DEFAULT NULL,
  `dateAssigned` varchar(20) DEFAULT NULL,
  `dateCompleted` varchar(20) DEFAULT NULL,
  `remarks` varchar(20) DEFAULT NULL,
  `contractorID` varchar(20) DEFAULT NULL,
  `reportImgUrl` longtext NOT NULL,
  `completedImgUrl` longtext DEFAULT NULL,
  `college3` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `userID` varchar(20) NOT NULL,
  `staffDorm` varchar(20) NOT NULL,
  `staffRoom` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `userID` varchar(20) NOT NULL,
  `studentDorm` varchar(20) NOT NULL,
  `studentRoom` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_admin`
--

CREATE TABLE `system_admin` (
  `sysAdminID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(20) NOT NULL,
  `numTel` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `imgProfileUrl` longtext NOT NULL,
  `type` enum('STD','STF','CTR','CAD','SAD') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `name`, `password`, `numTel`, `email`, `imgProfileUrl`, `type`) VALUES
('D032310453', 'WAFIQ NAUFAL BIN NA`MAN', 'abc140', '0133036979', 'D032310453@student.u', '', 'STD'),
('D032410003', 'NURDAMIA AMNI BINTI MOHD YAZID', 'abc171', '0192864296', 'D032410003@student.u', '', 'STD'),
('D032410011', 'MUHAMMAD AFIQ AIMAN BIN MOHD JAMILI', 'abc135', '0195643036', 'D032410011@student.u', '', 'STD'),
('D032410012', 'LIYANA NAJWA BINTI MOHD NIZAM', 'abc133', '0126251183', 'D032410012@student.u', '', 'STD'),
('D032410018', 'AIMAN SYAKIR BIN ZAINUDDIN', 'abc126', '0196602854', 'D032410018@student.u', '', 'STD'),
('D032410021', 'ALYA BATRISYIA BINTI ISMAIL', 'abc127', '01137431124', 'D032410021@student.u', '', 'STD'),
('D032410024', 'AINA SALSABIELA BINTI ALIUDIN', 'abc153', '0138853030', 'D032410024@student.u', '', 'STD'),
('D032410033', 'SHAHRIN EDHAM BIN ZAHARIN SHAH', 'abc148', '0163581814', 'D032410033@student.u', '', 'STD'),
('D032410055', 'WAN AFHAM ADHAMI BIN WAN MUSTAFA', 'abc149', '0132519724', 'D032410055@student.u', '', 'STD'),
('D032410059', 'MUNZER AHMAD FUAD BIN A RAHIM', 'abc166', '0137422170', 'D032410059@student.u', '', 'STD'),
('D032410074', 'NURUL `IZZATI BINTI MOHD SUKRI', 'abc172', '0129660952', 'D032410074@student.u', '', 'STD'),
('D032410077', 'LUTFIL HADI MERICAN BIN ADNIN SYAHRIL', 'abc160', '0195606584', 'D032410077@student.u', '', 'STD'),
('D032410079', 'NUR AKMALYNA BINTI SHAIFUL HALIS', 'abc168', '01111238727', 'D032410079@student.u', '', 'STD'),
('D032410081', 'MUHAMMAD FIRDAUS BIN ABDUL HALIM', 'abc137', '0197740614', 'D032410081@student.u', '', 'STD'),
('D032410092', 'ATHIRAH SYUHADA BINTI RADI', 'abc129', '0132378368', 'D032410092@student.u', '', 'STD'),
('D032410108', 'MUHAMMAD JAZIB BIN JASHMAN', 'abc165', '0123867175', 'D032410108@student.u', '', 'STD'),
('D032410131', 'SYAFINAS AZERA BINTI ROSLAN', 'abc175', '01135061026', 'D032410131@student.u', '', 'STD'),
('D032410137', 'MUHAMMAD AIMMIM AIZAT BIN NORULAZMAN', 'abc161', '0129791546', 'D032410137@student.u', '', 'STD'),
('D032410139', 'ABDULLAH HAKIM BIN MOHD SALLEH', 'abc151', '01159515253', 'D032410139@student.u', '', 'STD'),
('D032410154', 'NUR AYUNI ZAHIRAH BINTI AMIRUL NAZRAF', 'abc143', '0192280992', 'D032410154@student.u', '', 'STD'),
('D032410168', 'NUR MIZA AISYAH BINTI MOHD ALI JINA', 'abc144', '0125538070', 'D032410168@student.u', '', 'STD'),
('D032410173', 'ZAFREEN BINTI MARZUKI', 'abc150', '0122045882', 'D032410173@student.u', '', 'STD'),
('D032410185', 'MUHAMMAD FURQAN BIN MOHD JAMALULLAIL', 'abc163', '0133034657', 'D032410185@student.u', '', 'STD'),
('D032410187', 'NURULAIN NABILAH BINTI HASHAHAR SHAH', 'abc147', '0127651345', 'D032410187@student.u', '', 'STD'),
('D032410209', 'SITI NUR AIN BALQIS BINTI NORDIN', 'abc174', '0129565704', 'D032410209@student.u', '', 'STD'),
('D032410211', 'MUHAMMAD IZZ HADIF BIN MOHD SHAIFUL NIZAM', 'abc139', '0139144580', 'D032410211@student.u', '', 'STD'),
('D032410224', 'EISSHVARAN A/L SARAVANAN', 'abc131', '0124509792', 'D032410224@student.u', '', 'STD'),
('D032410240', 'ZULKIFLIE BIN MUHAMAD ZUNAINI', '', '0179577268', 'D032410240@student.u', '', 'STD'),
('D032410242', 'AUFA BINTI MOHAMAD HAIROL KAMAL', 'abc156', '0124770040', 'D032410242@student.u', '', 'STD'),
('D032410255', 'MUHAMMAD ARIF BIN A RAHMAN', 'abc136', '0162811616', 'D032410255@student.u', '', 'STD'),
('D032410257', 'ABDUL HAKIM BIN ABDULLAH', 'abc123', '0197266904', 'D032410257@student.u', '', 'STD'),
('D032410259', 'WAN MUHAMMAD ERSYAD ASYRAF BIN WAN JUSOH', 'abc176', '0126301500', 'D032410259@student.u', '', 'STD'),
('D032410261', 'AMIRAH FARHANA BINTI MAHADI', 'abc154', '0126872161', 'D032410261@student.u', '', 'STD'),
('D032410263', 'NOOR AISYA SOFEA BINTI AHMAD JAMAL', 'abc141', '0189897736', 'D032410263@student.u', '', 'STD'),
('D032410274', 'DANIEL ZIKRY BIN MOHD MUSTAZA', 'abc157', '0195989300', 'D032410274@student.u', '', 'STD'),
('D032410278', 'AHMAD ABQARI BIN MOHAMAD YUSOP', 'abc124', '0127053751', 'D032410278@student.u', '', 'STD'),
('D032410279', 'NURSYUHADA NAJIHA BINTI JAILANI', 'abc146', '0133963644', 'D032410279@student.u', '', 'STD'),
('D032410290', 'AQIL HARIZ BIN ZULKARNAIN', 'abc155', '0132058150', 'D032410290@student.u', '', 'STD'),
('D032410293', 'MUHAMMAD AZIM BIN MAT DIN', 'abc162', '0139224820', 'D032410293@student.u', '', 'STD'),
('D032410295', 'PUTERI ALLYSA MAISARAH BINTI MEGAT MOHD. HISHAM', 'abc173', '0166269207', 'D032410295@student.u', '', 'STD'),
('D032410297', 'AHMAD FARHAN BIN KHAIRI', 'abc125', '0197859067', 'D032410297@student.u', '', 'STD'),
('D032410317', 'ANWAR RIDHWAN BIN ABDUL HAMID', 'abc128', '0168184149', 'D032410317@student.u', '', 'STD'),
('D032410325', 'MUHAMAD DANISH HAZIQ BIN MOHD NADZMI', 'abc134', '0139782820', 'D032410325@student.u', '', 'STD'),
('D032410348', 'HAFIDZ HAKIMI BIN ALHAM RADZIE', 'abc132', '01163088077', 'D032410348@student.u', '', 'STD'),
('D032410352', 'ELVIN TEH JIE MING', 'abc158', '01116065734', 'D032410352@student.u', '', 'STD'),
('D032410355', 'NURAISYAH ADDINA BINTI MOHD NORZALI', 'abc145', '0122585046', 'D032410355@student.u', '', 'STD'),
('D032410357', 'MUHAMMAD HAZIQ IRFAN BIN MOHAMAD ZAMRI', 'abc138', '0174320509', 'D032410357@student.u', '', 'STD'),
('D032410370', 'NOOR EMMIRUL IQWAN BIN NOORUL-HADI', 'abc167', '0129589171', 'D032410370@student.u', '', 'STD'),
('D032410376', 'AHMAD HASSAN NASRULLAH BIN AHMAD NIZAM', 'abc152', '0133818061', 'D032410376@student.u', '', 'STD'),
('D032410377', 'MUHAMMAD IBAD NAUFAL BIN FAIZAL', 'abc164', '0135313685', 'D032410377@student.u', '', 'STD'),
('D032410384', 'NUR AZREEN AATHIRAH BINTI MD FADZIL', 'abc169', '0139805604', 'D032410384@student.u', '', 'STD'),
('D032410389', 'NUR NAFISAH BINTI ZAINAL ABIDDIN', 'abc170', '0195762875', 'D032410389@student.u', '', 'STD'),
('D032410394', 'HALIMATUSSANIYAH BINTI HODARI', 'abc159', '01128980642', 'D032410394@student.u', '', 'STD'),
('D032410402', 'DANIAL AZFER BIN MOHD HAIZAL', 'abc130', '0192621248', 'D032410402@student.u', '', 'STD'),
('D032410437', 'NUR ADNIN SUHAILA BINTI SA`ID', 'abc142', '01110910158', 'D032410437@student.u', '', 'STD');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `college_admin`
--
ALTER TABLE `college_admin`
  ADD PRIMARY KEY (`colAdminID`),
  ADD KEY `colAdminID` (`colAdminID`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentsID`),
  ADD KEY `reportID` (`reportID`);

--
-- Indexes for table `contractor`
--
ALTER TABLE `contractor`
  ADD PRIMARY KEY (`contractorID`),
  ADD KEY `contractorID` (`contractorID`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`reportID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `remarks` (`remarks`),
  ADD KEY `report_ibfk_2` (`contractorID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`userID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`userID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `system_admin`
--
ALTER TABLE `system_admin`
  ADD PRIMARY KEY (`sysAdminID`),
  ADD KEY `sysAdminID` (`sysAdminID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `commentsID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `reportID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `college_admin`
--
ALTER TABLE `college_admin`
  ADD CONSTRAINT `COLLEGE_ADMIN_ibfk_1` FOREIGN KEY (`colAdminID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `COMMENTS_ibfk_1` FOREIGN KEY (`reportID`) REFERENCES `report` (`reportID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `contractor`
--
ALTER TABLE `contractor`
  ADD CONSTRAINT `CONTRACTOR_ibfk_1` FOREIGN KEY (`contractorID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `report`
--
ALTER TABLE `report`
  ADD CONSTRAINT `report_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `report_ibfk_2` FOREIGN KEY (`contractorID`) REFERENCES `contractor` (`contractorID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `student` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `system_admin`
--
ALTER TABLE `system_admin`
  ADD CONSTRAINT `SYSTEM_ADMIN_ibfk_1` FOREIGN KEY (`sysAdminID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
