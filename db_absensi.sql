-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2018 at 08:55 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_absensi`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `query_absen`
-- (See below for the actual view)
--
CREATE TABLE `query_absen` (
`nis` varchar(8)
,`nama` varchar(100)
,`jk` varchar(1)
,`id_rayon` int(2)
,`id_rombel` int(2)
,`foto` varchar(100)
,`tgl_lahir` varchar(10)
,`rayon` varchar(15)
,`rombel` varchar(10)
,`hadir` int(1)
,`sakit` int(1)
,`ijin` int(1)
,`alpa` int(1)
,`tgl_absen` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `query_siswa`
-- (See below for the actual view)
--
CREATE TABLE `query_siswa` (
`nis` varchar(8)
,`nama` varchar(100)
,`jk` varchar(1)
,`id_rayon` int(2)
,`id_rombel` int(2)
,`foto` varchar(100)
,`tgl_lahir` varchar(10)
,`rayon` varchar(15)
,`rombel` varchar(10)
);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_absen`
--

CREATE TABLE `tbl_absen` (
  `nis` varchar(8) NOT NULL,
  `hadir` int(1) NOT NULL,
  `sakit` int(1) NOT NULL,
  `ijin` int(1) NOT NULL,
  `alpa` int(1) NOT NULL,
  `tgl_absen` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_absen`
--

INSERT INTO `tbl_absen` (`nis`, `hadir`, `sakit`, `ijin`, `alpa`, `tgl_absen`) VALUES
('11706220', 1, 0, 0, 0, '2018-11-30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rayon`
--

CREATE TABLE `tbl_rayon` (
  `id_rayon` int(2) NOT NULL,
  `rayon` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_rayon`
--

INSERT INTO `tbl_rayon` (`id_rayon`, `rayon`) VALUES
(9, 'Ciawi 2'),
(3, 'Ciawi 1'),
(5, 'Ciawi 3'),
(6, 'Ciawi 4'),
(7, 'Ciawi 5'),
(8, 'Cibedug 1'),
(10, 'Cibedug 2'),
(11, 'Cibedug 3'),
(12, 'Cicurug 1'),
(13, 'Cicurug 2'),
(14, 'Cicurug 3'),
(15, 'Cicurug 4'),
(16, 'Cicurug 5'),
(17, 'Cicurug 6'),
(20, 'Cisarua 1'),
(19, 'Cicurug 7'),
(21, 'Cisarua 2'),
(22, 'Cisarua 3'),
(23, 'Cisarua 4'),
(24, 'Cisarua 5'),
(25, 'Cisarua 6'),
(26, 'Tajur 1'),
(27, 'Tajur 2'),
(28, 'Tajur 3'),
(29, 'Tajur 4'),
(30, 'Tajur 5'),
(31, 'Sukasari 1'),
(32, 'Sukasari 2'),
(33, 'Wikrama 1'),
(34, 'Wikrama 2'),
(35, 'Wikrama 3'),
(36, 'Wikrama 4');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rombel`
--

CREATE TABLE `tbl_rombel` (
  `id_rombel` int(2) NOT NULL,
  `rombel` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_rombel`
--

INSERT INTO `tbl_rombel` (`id_rombel`, `rombel`) VALUES
(4, 'RPL XI-2'),
(3, 'RPL XI-1'),
(5, 'RPL XI-3'),
(6, 'RPL XI-4'),
(7, 'OTKP XI-1'),
(8, 'OTKP XI-2'),
(9, 'TKJ XI-1'),
(10, 'TKJ XI-2'),
(11, 'TKJ XI-3'),
(13, 'TKJ XI-4'),
(14, 'MMD XI-1'),
(15, 'MMD XI-2'),
(16, 'BDP XI-1'),
(17, 'BDP XI-2'),
(18, 'TBG XI-1'),
(19, 'HTL XI-1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `nis` varchar(8) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jk` varchar(1) NOT NULL,
  `id_rayon` int(2) NOT NULL,
  `id_rombel` int(2) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `tgl_lahir` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`nis`, `nama`, `jk`, `id_rayon`, `id_rombel`, `foto`, `tgl_lahir`) VALUES
('11706220', 'Muhammad Farhan Darmawan', 'L', 10, 6, 'IMG_5766.JPG', '2002-01-09');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`username`, `password`) VALUES
('farhan', 'darmawan');

-- --------------------------------------------------------

--
-- Structure for view `query_absen`
--
DROP TABLE IF EXISTS `query_absen`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `query_absen`  AS  select `query_siswa`.`nis` AS `nis`,`query_siswa`.`nama` AS `nama`,`query_siswa`.`jk` AS `jk`,`query_siswa`.`id_rayon` AS `id_rayon`,`query_siswa`.`id_rombel` AS `id_rombel`,`query_siswa`.`foto` AS `foto`,`query_siswa`.`tgl_lahir` AS `tgl_lahir`,`query_siswa`.`rayon` AS `rayon`,`query_siswa`.`rombel` AS `rombel`,`tbl_absen`.`hadir` AS `hadir`,`tbl_absen`.`sakit` AS `sakit`,`tbl_absen`.`ijin` AS `ijin`,`tbl_absen`.`alpa` AS `alpa`,`tbl_absen`.`tgl_absen` AS `tgl_absen` from (`query_siswa` join `tbl_absen` on((`tbl_absen`.`nis` = `query_siswa`.`nis`))) ;

-- --------------------------------------------------------

--
-- Structure for view `query_siswa`
--
DROP TABLE IF EXISTS `query_siswa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `query_siswa`  AS  select `tbl_siswa`.`nis` AS `nis`,`tbl_siswa`.`nama` AS `nama`,`tbl_siswa`.`jk` AS `jk`,`tbl_siswa`.`id_rayon` AS `id_rayon`,`tbl_siswa`.`id_rombel` AS `id_rombel`,`tbl_siswa`.`foto` AS `foto`,`tbl_siswa`.`tgl_lahir` AS `tgl_lahir`,`tbl_rayon`.`rayon` AS `rayon`,`tbl_rombel`.`rombel` AS `rombel` from ((`tbl_siswa` join `tbl_rayon` on((`tbl_rayon`.`id_rayon` = `tbl_siswa`.`id_rayon`))) join `tbl_rombel` on((`tbl_rombel`.`id_rombel` = `tbl_siswa`.`id_rombel`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_rayon`
--
ALTER TABLE `tbl_rayon`
  ADD PRIMARY KEY (`id_rayon`);

--
-- Indexes for table `tbl_rombel`
--
ALTER TABLE `tbl_rombel`
  ADD PRIMARY KEY (`id_rombel`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_rayon`
--
ALTER TABLE `tbl_rayon`
  MODIFY `id_rayon` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_rombel`
--
ALTER TABLE `tbl_rombel`
  MODIFY `id_rombel` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
