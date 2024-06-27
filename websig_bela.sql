-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2024 at 07:46 AM
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
-- Database: `websig_bela`
--

-- --------------------------------------------------------

--
-- Table structure for table `kabupaten`
--

CREATE TABLE `kabupaten` (
  `id_kabupaten` int(11) NOT NULL,
  `kode_kabupaten` varchar(100) NOT NULL,
  `nama_kabupaten` varchar(100) NOT NULL,
  `koordinat` varchar(100) NOT NULL,
  `jumlah_penduduk` int(11) NOT NULL,
  `luas_wilayah` float(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kabupaten`
--

INSERT INTO `kabupaten` (`id_kabupaten`, `kode_kabupaten`, `nama_kabupaten`, `koordinat`, `jumlah_penduduk`, `luas_wilayah`) VALUES
(1, '3302', 'Banyumas', '-7.426283249485628, 109.15612224488187', 1806013, 132760.00);

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `kode_kecamatan` varchar(100) NOT NULL,
  `id_kabupaten` int(11) NOT NULL,
  `nama_kecamatan` varchar(100) NOT NULL,
  `jumlah_penduduk` int(11) NOT NULL,
  `luas_wilayah` float(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`kode_kecamatan`, `id_kabupaten`, `nama_kecamatan`, `jumlah_penduduk`, `luas_wilayah`) VALUES
('3302010', 1, 'Lumbir', 50546, 102.66),
('3302020', 1, 'Wangon', 84755, 60.78),
('3302040', 1, 'Rawalo', 53711, 4964.00),
('3302050', 1, 'KEBASEN', 8790, 39067.00),
('3302060', 1, 'KEMRANJEN', 6894, 967.00),
('3302070', 1, 'SUMPIUH', 1450, 8590.00),
('3302090', 1, 'Somagede', 38230, 4011.00),
('3302110', 1, 'BANYUMAS', 94056, 197856.00),
('3302120', 1, 'Patikraja', 61998, 4323.00),
('3302130', 1, 'Purwojati', 37789, 3786.00),
('3302140', 1, 'Ajibarang', 879044, 9870336.00),
('3302150', 1, 'GUMELAR', 8957, 57934.00),
('3302160', 1, 'Pekuncen', 76883, 9395.00),
('3302170', 1, 'CILONGOK', 345, 8790.00),
('3302180', 1, 'Karanglewas', 68467, 3250.00),
('3302190', 1, 'Kedungbanteng', 63201, 6022.00);

-- --------------------------------------------------------

--
-- Table structure for table `sekolah`
--

CREATE TABLE `sekolah` (
  `npsn` int(11) NOT NULL,
  `kode_kecamatan` varchar(100) NOT NULL,
  `nama_sekolah` varchar(100) NOT NULL,
  `alamat_sekolah` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `jenjang_pendidikan` varchar(100) NOT NULL,
  `koordinat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sekolah`
--

INSERT INTO `sekolah` (`npsn`, `kode_kecamatan`, `nama_sekolah`, `alamat_sekolah`, `status`, `jenjang_pendidikan`, `koordinat`) VALUES
(20301603, '3302010', 'SD NEGERI 6 LUMBIR', 'Butulan', 'NEGERI', 'SD', '-7.4482000,108.9618000'),
(20301709, '3302020', 'SD NEGERI 2 WINDUNEGARA', 'WINDUNEGARA', 'NEGERI', 'SD', '-7.4599000,109.0612000'),
(20301759, '3302050', 'SD NEGERI RANDEGAN', 'JL. DESA RANDEGAN KEBASEN', 'NEGERI', 'SD', '-7.5676000,109.2318000'),
(20301766, '3302130', 'SD NEGERI 3 KARANGMANGU', 'JL.PESANGGRAHAN', 'NEGERI', 'SD', '-7.4758933,109.1463983'),
(20301943, '3302170', 'SMP NEGERI 2 CILONGOK', 'JL.SINGADIPA', 'NEGERI', 'SMP', '-7.4286000,109.1295000'),
(20302049, '3302160', 'SD NEGERI PASIRAMAN KIDUL', 'PASIRAMAN KIDUL RT 02 RW 01', 'NEGERI', 'SD', '-7.3375000,109.0788000'),
(20302068, '3302110', 'SD NEGERI KALIBATUR', 'KALIBATUR', 'NEGERI', 'SD', '-7.5454000,109.2692000'),
(20302871, '3302070', 'SDN 1 SELANEGARA', 'SELANEGARA', 'NEGERI', 'SD', '-7.6017150,109.3652283'),
(20338218, '3302140', 'SMAS MA ARIF NU AJIBARANG', 'JL.RAYA PANDANSARI AJIBARANG', 'SWASTA', 'SMA', '-7.4035000,109.0800000'),
(120301983, '3302060', 'SMP SALAFIYAH KEMRANJEN', 'JL.RAYA KEBARONGAN', 'SWASTA', 'SMP', '-7.5928000,109.2953000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`id_kabupaten`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`kode_kecamatan`),
  ADD KEY `kecamatan_ibfk_1` (`id_kabupaten`);

--
-- Indexes for table `sekolah`
--
ALTER TABLE `sekolah`
  ADD PRIMARY KEY (`npsn`),
  ADD KEY `kode_kecamatan` (`kode_kecamatan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kabupaten`
--
ALTER TABLE `kabupaten`
  MODIFY `id_kabupaten` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3303;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD CONSTRAINT `kecamatan_ibfk_2` FOREIGN KEY (`id_kabupaten`) REFERENCES `kabupaten` (`id_kabupaten`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sekolah`
--
ALTER TABLE `sekolah`
  ADD CONSTRAINT `sekolah_ibfk_2` FOREIGN KEY (`kode_kecamatan`) REFERENCES `kecamatan` (`kode_kecamatan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
