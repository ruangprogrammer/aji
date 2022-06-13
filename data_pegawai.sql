-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2022 at 11:39 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_pegawai`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_pegawai`
--

CREATE TABLE `tb_pegawai` (
  `nip` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tempat` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `agama` varchar(40) DEFAULT NULL,
  `gol_darah` varchar(40) DEFAULT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `status` enum('Pegawai','Honorer') NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `foto` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pegawai`
--

INSERT INTO `tb_pegawai` (`nip`, `nama`, `tempat`, `gender`, `email`, `agama`, `gol_darah`, `alamat`, `no_hp`, `status`, `jabatan`, `foto`) VALUES
('3123311091', 'Singgih Pambudi', 'Yogyakarta,17 Agustus 2019', 'Laki-laki', 'singgih@yahoo.com', 'Islam', 'A', 'jalan mawar no 17, Gurontalo 1387 ', '089987789999', 'Pegawai', 'Produksi', 'images.jfif'),
('3123311092', 'Amelia Nurjanah', 'Yogyakarta,17 Agustus 2019', 'Laki-laki', 'amelia@gmail.com', 'Islam', 'B', 'gang saloka RT 002/ RW 009 no 23, Mlati Sleman Yogyakarta 55677', '087789987654', 'Pegawai', 'Operator', 'download.jfif'),
('3123311093', 'Sunu Januar', 'Yogyakarta,17 Agustus 2019', 'Perempuan', 'sunu@gmail.com', 'Islam', 'AB', 'Jln kolonel sugiono RT 09/RW 22 Bekasii, Jakarta Selatan 556', '089987789011', 'Honorer', 'Produksi', 'indah-nurmillaty.png'),
('3123311094', 'Linda Pamungkas', 'Yogyakarta,17 Agustus 2019', 'Perempuan', 'linda22@gmail.com', 'Islam', 'O', 'Jln gatotkaca no 88 RT 009/ RW 99 Klaten Jawa Tengah 998', '089987789011', 'Honorer', 'Produksi', 'download.jfif'),
('3123311095', 'Erika Rahma', 'wonogiri , 05 november 1996', 'Laki-laki', 'erika@gmail.com', 'Islam', 'AB', 'Gang Prambanan 778 RT 56/ RW 77 Selan Yogyakarta 98273', '089987789011', 'Pegawai', 'Produksi', 'images.jfif'),
('3123311096', 'Aisyah Maharani', 'Wonogiri, 07 Mei 2002', 'Perempuan', 'aisyahmhn@yahoo.com', 'Islam', 'B', 'gang delima 406C Baciro Gondokusuman Yogyakarta 1676', '089987789011', 'Honorer', 'Operator', 'indah-nurmillaty.png'),
('3123311097', 'Joni Subarja', 'Yogyakarta,17 Agustus 2019', 'Laki-laki', 'edi299268@gmail.com', 'Islam', 'A', 'Cepit Prambanan RT 009. RW 008 Sleman Yogyakarta 887', '089987789011', 'Pegawai', 'Produksi', 'download.jfif'),
('3123311098', 'Ninik Prihnawati', 'Yogyakarta,17 Agustus 2019', 'Perempuan', 'ninik@yahoo.com', 'Islam', 'O', 'jln argolobang 56 RT 009/ RW 008 No 18 Baciro Gondokusuman', '089987789011', 'Honorer', 'ketua', 'images.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengguna`
--

CREATE TABLE `tb_pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama_pengguna` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` enum('Administrator','Sekretaris') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pengguna`
--

INSERT INTO `tb_pengguna` (`id_pengguna`, `nama_pengguna`, `username`, `password`, `level`) VALUES
(1, 'Aji Tito', 'admin', '1', 'Administrator'),
(2, 'Adam Walker', 'sek', '1', 'Sekretaris'),
(3, 'Aisyah Maharani', 'adminoke', '1', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `tb_profil`
--

CREATE TABLE `tb_profil` (
  `id_profil` int(11) NOT NULL,
  `nama_profil` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `bidang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_profil`
--

INSERT INTO `tb_profil` (`id_profil`, `nama_profil`, `alamat`, `bidang`) VALUES
(1, 'PT DEVELOPER CODE INDONESIA', 'YOGYAKARTA', 'DEVELOPER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `tb_profil`
--
ALTER TABLE `tb_profil`
  ADD PRIMARY KEY (`id_profil`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_profil`
--
ALTER TABLE `tb_profil`
  MODIFY `id_profil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
