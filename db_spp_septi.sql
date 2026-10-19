-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2026 at 07:44 AM
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
-- Database: `db_spp_septi`
--

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` varchar(5) NOT NULL,
  `nama_kelas` varchar(10) NOT NULL,
  `kompetensi_keahlian` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `kompetensi_keahlian`) VALUES
('K02', 'X RPL 2', 'Rekayasa Perangkat Lunak');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(10) NOT NULL,
  `no_bayar` varchar(11) DEFAULT NULL,
  `id_petugas` varchar(5) DEFAULT NULL,
  `nisn` varchar(10) DEFAULT NULL,
  `tgl_pembayaran` date DEFAULT NULL,
  `bulan_tagihan` varchar(12) DEFAULT NULL,
  `tahun_tagihan` int(4) DEFAULT NULL,
  `id_spp` varchar(5) DEFAULT NULL,
  `keterangan` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `no_bayar`, `id_petugas`, `nisn`, `tgl_pembayaran`, `bulan_tagihan`, `tahun_tagihan`, `id_spp`, `keterangan`) VALUES
(50, '2508270001', '445', '900', '2025-08-27', 'Juli', 2025, 'SPP1', 'LUNAS'),
(51, '2508280001', '445', '900', '2025-08-28', 'Agustus', 2025, 'SPP1', 'LUNAS'),
(52, '2508280002', '445', '900', '2025-08-28', 'September', 2025, 'SPP1', 'LUNAS'),
(53, NULL, NULL, '900', NULL, 'Oktober', 2025, 'SPP1', NULL),
(54, NULL, NULL, '900', NULL, 'Nopember', 2025, 'SPP1', NULL),
(55, NULL, NULL, '900', NULL, 'Desember', 2025, 'SPP1', NULL),
(56, NULL, NULL, '900', NULL, 'Januari', 2026, 'SPP1', NULL),
(57, NULL, NULL, '900', NULL, 'Februari', 2026, 'SPP1', NULL),
(58, NULL, NULL, '900', NULL, 'Maret', 2026, 'SPP1', NULL),
(59, NULL, NULL, '900', NULL, 'April', 2026, 'SPP1', NULL),
(60, NULL, NULL, '900', NULL, 'Mei', 2026, 'SPP1', NULL),
(61, NULL, NULL, '900', NULL, 'Juni', 2026, 'SPP1', NULL),
(76, '2508280005', '445', '09010', '2025-08-28', 'September', 2025, 'SPP1', 'LUNAS'),
(77, NULL, NULL, '09010', NULL, 'Oktober', 2025, 'SPP1', NULL),
(78, NULL, NULL, '09010', NULL, 'Nopember', 2025, 'SPP1', NULL),
(79, NULL, NULL, '09010', NULL, 'Desember', 2025, 'SPP1', NULL),
(80, NULL, NULL, '09010', NULL, 'Januari', 2026, 'SPP1', NULL),
(81, NULL, NULL, '09010', NULL, 'Februari', 2026, 'SPP1', NULL),
(82, NULL, NULL, '09010', NULL, 'Maret', 2026, 'SPP1', NULL),
(83, NULL, NULL, '09010', NULL, 'April', 2026, 'SPP1', NULL),
(84, NULL, NULL, '09010', NULL, 'Mei', 2026, 'SPP1', NULL),
(85, NULL, NULL, '09010', NULL, 'Juni', 2026, 'SPP1', NULL),
(86, '2608060001', '445', '1010', '2026-08-06', 'Juli', 2025, 'SPP1', 'LUNAS'),
(87, NULL, NULL, '1010', NULL, 'Agustus', 2025, 'SPP1', NULL),
(88, NULL, NULL, '1010', NULL, 'September', 2025, 'SPP1', NULL),
(89, NULL, NULL, '1010', NULL, 'Oktober', 2025, 'SPP1', NULL),
(90, NULL, NULL, '1010', NULL, 'Nopember', 2025, 'SPP1', NULL),
(91, NULL, NULL, '1010', NULL, 'Desember', 2025, 'SPP1', NULL),
(92, NULL, NULL, '1010', NULL, 'Januari', 2026, 'SPP1', NULL),
(93, NULL, NULL, '1010', NULL, 'Februari', 2026, 'SPP1', NULL),
(94, NULL, NULL, '1010', NULL, 'Maret', 2026, 'SPP1', NULL),
(95, NULL, NULL, '1010', NULL, 'April', 2026, 'SPP1', NULL),
(96, NULL, NULL, '1010', NULL, 'Mei', 2026, 'SPP1', NULL),
(97, NULL, NULL, '1010', NULL, 'Juni', 2026, 'SPP1', NULL),
(98, NULL, NULL, '700', NULL, '', 2026, 'SPP1', NULL),
(99, NULL, NULL, '700', NULL, '', 2026, 'SPP1', NULL),
(100, NULL, NULL, '700', NULL, '', 2026, 'SPP1', NULL),
(101, NULL, NULL, '700', NULL, '', 2026, 'SPP1', NULL),
(102, NULL, NULL, '700', NULL, '', 2026, 'SPP1', NULL),
(103, NULL, NULL, '700', NULL, '', 2026, 'SPP1', NULL),
(104, NULL, NULL, '700', NULL, '', 2027, 'SPP1', NULL),
(105, NULL, NULL, '700', NULL, '', 2027, 'SPP1', NULL),
(106, NULL, NULL, '700', NULL, '', 2027, 'SPP1', NULL),
(107, NULL, NULL, '700', NULL, '', 2027, 'SPP1', NULL),
(108, NULL, NULL, '700', NULL, '', 2027, 'SPP1', NULL),
(109, NULL, NULL, '700', NULL, '', 2027, 'SPP1', NULL),
(110, NULL, NULL, '365', NULL, '', 2026, 'SPP1', NULL),
(111, NULL, NULL, '365', NULL, '', 2026, 'SPP1', NULL),
(112, NULL, NULL, '365', NULL, '', 2026, 'SPP1', NULL),
(113, NULL, NULL, '365', NULL, '', 2026, 'SPP1', NULL),
(114, NULL, NULL, '365', NULL, '', 2026, 'SPP1', NULL),
(115, NULL, NULL, '365', NULL, '', 2026, 'SPP1', NULL),
(116, NULL, NULL, '365', NULL, '', 2027, 'SPP1', NULL),
(117, NULL, NULL, '365', NULL, '', 2027, 'SPP1', NULL),
(118, NULL, NULL, '365', NULL, '', 2027, 'SPP1', NULL),
(119, NULL, NULL, '365', NULL, '', 2027, 'SPP1', NULL),
(120, NULL, NULL, '365', NULL, '', 2027, 'SPP1', NULL),
(121, NULL, NULL, '365', NULL, '', 2027, 'SPP1', NULL),
(122, NULL, NULL, '3456', NULL, '', 2026, 'SPP1', NULL),
(123, NULL, NULL, '3456', NULL, '', 2026, 'SPP1', NULL),
(124, NULL, NULL, '3456', NULL, '', 2026, 'SPP1', NULL),
(125, NULL, NULL, '3456', NULL, '', 2026, 'SPP1', NULL),
(126, NULL, NULL, '3456', NULL, '', 2026, 'SPP1', NULL),
(127, NULL, NULL, '3456', NULL, '', 2026, 'SPP1', NULL),
(128, NULL, NULL, '3456', NULL, '', 2027, 'SPP1', NULL),
(129, NULL, NULL, '3456', NULL, '', 2027, 'SPP1', NULL),
(130, NULL, NULL, '3456', NULL, '', 2027, 'SPP1', NULL),
(131, NULL, NULL, '3456', NULL, '', 2027, 'SPP1', NULL),
(132, NULL, NULL, '3456', NULL, '', 2027, 'SPP1', NULL),
(133, NULL, NULL, '3456', NULL, '', 2027, 'SPP1', NULL),
(146, NULL, NULL, '234', NULL, '', 2026, 'SPP1', NULL),
(147, NULL, NULL, '234', NULL, '', 2026, 'SPP1', NULL),
(148, NULL, NULL, '234', NULL, '', 2026, 'SPP1', NULL),
(149, NULL, NULL, '234', NULL, '', 2026, 'SPP1', NULL),
(150, NULL, NULL, '234', NULL, '', 2026, 'SPP1', NULL),
(151, NULL, NULL, '234', NULL, '', 2026, 'SPP1', NULL),
(152, NULL, NULL, '234', NULL, '', 2027, 'SPP1', NULL),
(153, NULL, NULL, '234', NULL, '', 2027, 'SPP1', NULL),
(154, NULL, NULL, '234', NULL, '', 2027, 'SPP1', NULL),
(155, NULL, NULL, '234', NULL, '', 2027, 'SPP1', NULL),
(156, NULL, NULL, '234', NULL, '', 2027, 'SPP1', NULL),
(157, NULL, NULL, '234', NULL, '', 2027, 'SPP1', NULL),
(158, NULL, NULL, '789', NULL, '', 2026, 'SPP1', NULL),
(159, NULL, NULL, '789', NULL, '', 2026, 'SPP1', NULL),
(160, NULL, NULL, '789', NULL, '', 2026, 'SPP1', NULL),
(161, NULL, NULL, '789', NULL, '', 2026, 'SPP1', NULL),
(162, NULL, NULL, '789', NULL, '', 2026, 'SPP1', NULL),
(163, NULL, NULL, '789', NULL, '', 2026, 'SPP1', NULL),
(164, NULL, NULL, '789', NULL, '', 2027, 'SPP1', NULL),
(165, NULL, NULL, '789', NULL, '', 2027, 'SPP1', NULL),
(166, NULL, NULL, '789', NULL, '', 2027, 'SPP1', NULL),
(167, NULL, NULL, '789', NULL, '', 2027, 'SPP1', NULL),
(168, NULL, NULL, '789', NULL, '', 2027, 'SPP1', NULL),
(169, NULL, NULL, '789', NULL, '', 2027, 'SPP1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` varchar(5) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama_petugas` varchar(35) NOT NULL,
  `level` enum('admin','petugas','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `username`, `password`, `nama_petugas`, `level`) VALUES
('445', 'admin  ', 'admin  ', 'admin  ', 'admin'),
('900', 'bagas', 'ee776a18253721efe8a62e4abd29dc47', 'bagas', 'admin'),
('A02', 'petugas', 'afb91ef692fd08c445e8cb1bab2ccf9c', 'Budi', 'petugas'),
('id004', 'sali ', 'f45731e3d39a1b2330bbf93e9b3de59e', 'sasa  ', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nisn` varchar(10) NOT NULL,
  `nis` varchar(8) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `id_kelas` varchar(11) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `id_spp` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nisn`, `nis`, `nama`, `id_kelas`, `alamat`, `no_telp`, `id_spp`) VALUES
('009', '5555', 'tika', 'K02', 'vvv', 'vvv', 'SPP1'),
('01', '01', 'ts', 'K02', 'Jl. Banua Praja Utara, Cempaka, Banjarbaru, Kalima', '000', 'SPP1'),
('09010', '44', 'Alicia', 'K02', 'Banjarbaru', '090098', 'SPP1'),
('1010', '12', 'Jhon Doe', 'K02', 'Banjarmasin', '000', 'SPP1'),
('123', '12', 'Raisa Nazwa Fatima', 'K02', 'Jl. Banua Praja Utara, Cempaka, Banjarbaru, Kalima', '7777', 'SPP1'),
('234', '76548', 'riska', 'K02', 'bogor', '7777', 'SPP1'),
('3456', '9876435', 'sigit', 'K02', 'cempaka', '770', 'SPP1'),
('365', '76547', 'valen', 'K02', 'palm', '770', 'SPP1'),
('563', '44', 'Jhon Doe', 'K02', 'Jl. Banua Praja Utara, Cempaka, Banjarbaru, Kalima', '7777', 'SPP1'),
('700', '098765', 'valentina', 'K02', 'jl.abadi 3', '08752488657', 'SPP1'),
('789', '654789', 'mubarak', 'K02', 'palm', '7777', 'SPP1'),
('900', '666', 'Jhon Doe', 'K02', 'Banjarbaru1', '7777', 'SPP1'),
('901', '44', 'Raisa Nazwa Fatima', 'K02', 'Banjarbaru1', '7777', 'SPP1');

-- --------------------------------------------------------

--
-- Table structure for table `spp`
--

CREATE TABLE `spp` (
  `id_spp` varchar(5) NOT NULL,
  `tahun` int(4) NOT NULL,
  `nominal` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `spp`
--

INSERT INTO `spp` (`id_spp`, `tahun`, `nominal`) VALUES
('SPP1', 2004, 6700);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_petugas` (`id_petugas`),
  ADD KEY `nisn` (`nisn`),
  ADD KEY `id_spp` (`id_spp`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nisn`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_spp` (`id_spp`);

--
-- Indexes for table `spp`
--
ALTER TABLE `spp`
  ADD PRIMARY KEY (`id_spp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`id_petugas`) REFERENCES `petugas` (`id_petugas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pembayaran_ibfk_2` FOREIGN KEY (`nisn`) REFERENCES `siswa` (`nisn`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pembayaran_ibfk_3` FOREIGN KEY (`id_spp`) REFERENCES `spp` (`id_spp`) ON DELETE CASCADE;

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `siswa_ibfk_2` FOREIGN KEY (`id_spp`) REFERENCES `spp` (`id_spp`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
