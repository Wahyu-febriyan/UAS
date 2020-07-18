-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 18, 2020 at 03:09 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zakat_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(10) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `username`, `password`) VALUES
(1001, 'wahyu', '111111');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pembayaran_zakat`
--

CREATE TABLE `tb_pembayaran_zakat` (
  `id_pembayaran` int(10) NOT NULL,
  `id_admin` int(10) NOT NULL,
  `id_zakat` int(10) NOT NULL,
  `nominal` int(15) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `alamat_email` varchar(30) NOT NULL,
  `nama_bank` varchar(30) NOT NULL,
  `no_rekening` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pembayaran_zakat`
--

INSERT INTO `tb_pembayaran_zakat` (`id_pembayaran`, `id_admin`, `id_zakat`, `nominal`, `nama_lengkap`, `no_hp`, `alamat_email`, `nama_bank`, `no_rekening`) VALUES
(7, 1, 3, 210000, 'Sukmara', '0882139383', 'sukmara755@gmail.com', 'Mandiri', 222555666),
(8, 1, 2, 220000, 'Tolani', '088213333', 'Tolani@gmail.com', 'Mandiri', 444455666),
(9, 1, 1, 1400000, 'Singgih Dwiprayoga', '0812000000', 'SinggihDwiprayoga@gmail.com', 'BNI', 333381623),
(10, 1, 3, 1200000, 'Tegar Muflihin', '0880000032', 'TegarMuflihin@gmail.com', 'BCA', 89999623),
(11, 1, 2, 5000000, 'Wahyu Febrian', '089623243', 'WahyuFebrian@gmail.com', 'BCA', 9999536);

-- --------------------------------------------------------

--
-- Table structure for table `tb_zakat`
--

CREATE TABLE `tb_zakat` (
  `id_zakat` int(10) NOT NULL,
  `jenis_zakat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_zakat`
--

INSERT INTO `tb_zakat` (`id_zakat`, `jenis_zakat`) VALUES
(1, 'Zakat Penghasilan'),
(2, 'Zakat Maal'),
(3, 'Zakat Fitrah');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tb_pembayaran_zakat`
--
ALTER TABLE `tb_pembayaran_zakat`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_admin` (`id_admin`),
  ADD KEY `id_zakat` (`id_zakat`);

--
-- Indexes for table `tb_zakat`
--
ALTER TABLE `tb_zakat`
  ADD PRIMARY KEY (`id_zakat`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1002;

--
-- AUTO_INCREMENT for table `tb_pembayaran_zakat`
--
ALTER TABLE `tb_pembayaran_zakat`
  MODIFY `id_pembayaran` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_zakat`
--
ALTER TABLE `tb_zakat`
  MODIFY `id_zakat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
