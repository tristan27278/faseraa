-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2026 at 02:55 AM
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
-- Database: `fasera`
--

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `status` enum('PROSES','MENUNGGU','BERHASIL','') NOT NULL DEFAULT 'MENUNGGU',
  `feedback` text NOT NULL,
  `tanggal` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`id`, `id_user`, `kategori`, `lokasi`, `keterangan`, `status`, `feedback`, `tanggal`) VALUES
(1, 5, 'Kerusakan Fasilitas', 'xii rpl 1', 'kkkkk', 'MENUNGGU', '', '2026-02-19 01:50:50'),
(2, 5, 'Kerusakan Fasilitas', 'kntin', 'nhjb', 'PROSES', 'okkk', '2026-02-19 02:20:42'),
(3, 5, 'Kerusakan Fasilitas', 'bkk', 'nkri ', 'MENUNGGU', '', '2026-02-19 05:03:22'),
(24, 5, 'Kerusakan Fasilitas', 'Lab RPL', 'Komputer tidak menyala', 'MENUNGGU', '', '2026-02-18 08:12:21'),
(25, 1, 'Kebersihan', 'Koridor Lantai 2', 'Sampah menumpuk', 'PROSES', 'Sedang dibersihkan', '2026-02-18 09:45:10'),
(26, 8, 'Keamanan', 'Parkiran', 'Motor tanpa plat', '', 'Sudah ditangani satpam', '2026-02-18 10:20:33'),
(27, 5, 'Kerusakan Fasilitas', 'Perpustakaan', 'AC tidak dingin', 'MENUNGGU', '', '2026-02-18 11:01:54'),
(28, 1, 'Kebersihan', 'Toilet Putra', 'Air tergenang', 'PROSES', 'Dalam perbaikan', '2026-02-18 11:45:02'),
(29, 8, 'Kerusakan Fasilitas', 'Kantin', 'Meja rusak', '', 'Sudah diganti', '2026-02-18 12:30:17'),
(30, 5, 'Keamanan', 'Gerbang Utama', 'Orang asing masuk', 'PROSES', 'Dipantau petugas', '2026-02-18 13:05:49'),
(31, 1, 'Kebersihan', 'Lapangan', 'Banyak daun kering', 'MENUNGGU', '', '2026-02-18 14:10:11'),
(32, 8, 'Kerusakan Fasilitas', 'Lab Multimedia', 'Proyektor mati', 'PROSES', 'Dicek teknisi', '2026-02-18 15:22:36'),
(33, 5, 'Kerusakan Fasilitas', 'Ruang Guru', 'Lampu berkedip', '', 'Lampu diganti', '2026-02-18 16:44:20'),
(34, 1, 'Kebersihan', 'Tangga Belakang', 'Lantai licin', 'MENUNGGU', '', '2026-02-18 17:18:03'),
(35, 8, 'Keamanan', 'Parkiran Belakang', 'Helm hilang', 'PROSES', 'Sedang investigasi', '2026-02-18 18:02:40'),
(36, 5, 'Kerusakan Fasilitas', 'Kelas XII RPL 2', 'Kipas angin mati', 'MENUNGGU', '', '2026-02-18 18:55:14'),
(37, 1, 'Kebersihan', 'Aula', 'Debu banyak', '', 'Sudah dibersihkan', '2026-02-18 19:30:27'),
(38, 8, 'Kerusakan Fasilitas', 'UKS', 'Tempat tidur rusak', 'PROSES', 'Menunggu sparepart', '2026-02-18 20:11:59'),
(39, 5, 'Keamanan', 'Belakang Sekolah', 'Pagar terbuka', 'MENUNGGU', '', '2026-02-18 21:05:08'),
(40, 1, 'Kebersihan', 'Depan Kelas', 'Sampah plastik', '', 'Sudah dibuang', '2026-02-18 21:50:41'),
(41, 8, 'Kerusakan Fasilitas', 'Laboratorium Kimia', 'Keran bocor', 'PROSES', 'Dalam perbaikan', '2026-02-18 22:33:26'),
(42, 5, 'Keamanan', 'Lorong Utama', 'Lampu mati', 'MENUNGGU', '', '2026-02-18 23:12:09'),
(43, 1, 'Kerusakan Fasilitas', 'Ruang BK', 'Kursi patah', '', 'Sudah diganti', '2026-02-18 23:55:55'),
(44, 5, 'Kerusakan Fasilitas', 'Lab RPL', 'Komputer tidak menyala', 'MENUNGGU', '', '2026-02-18 08:12:21'),
(45, 1, 'Kebersihan', 'Koridor Lantai 2', 'Sampah menumpuk', 'PROSES', 'Sedang dibersihkan', '2026-02-18 09:45:10'),
(46, 8, 'Keamanan', 'Parkiran', 'Motor tanpa plat', '', 'Sudah ditangani satpam', '2026-02-18 10:20:33'),
(47, 5, 'Kerusakan Fasilitas', 'Perpustakaan', 'AC tidak dingin', 'MENUNGGU', '', '2026-02-18 11:01:54'),
(48, 1, 'Kebersihan', 'Toilet Putra', 'Air tergenang', 'PROSES', 'Dalam perbaikan', '2026-02-18 11:45:02'),
(49, 8, 'Kerusakan Fasilitas', 'Kantin', 'Meja rusak', '', 'Sudah diganti', '2026-02-18 12:30:17'),
(50, 5, 'Keamanan', 'Gerbang Utama', 'Orang asing masuk', 'PROSES', 'Dipantau petugas', '2026-02-18 13:05:49'),
(51, 1, 'Kebersihan', 'Lapangan', 'Banyak daun kering', 'MENUNGGU', '', '2026-02-18 14:10:11'),
(52, 8, 'Kerusakan Fasilitas', 'Lab Multimedia', 'Proyektor mati', 'PROSES', 'Dicek teknisi', '2026-02-18 15:22:36'),
(53, 5, 'Kerusakan Fasilitas', 'Ruang Guru', 'Lampu berkedip', '', 'Lampu diganti', '2026-02-18 16:44:20'),
(54, 1, 'Kebersihan', 'Tangga Belakang', 'Lantai licin', 'MENUNGGU', '', '2026-02-18 17:18:03'),
(55, 8, 'Keamanan', 'Parkiran Belakang', 'Helm hilang', 'PROSES', 'Sedang investigasi', '2026-02-18 18:02:40'),
(56, 5, 'Kerusakan Fasilitas', 'Kelas XII RPL 2', 'Kipas angin mati', 'MENUNGGU', '', '2026-02-18 18:55:14'),
(57, 1, 'Kebersihan', 'Aula', 'Debu banyak', '', 'Sudah dibersihkan', '2026-02-18 19:30:27'),
(58, 8, 'Kerusakan Fasilitas', 'UKS', 'Tempat tidur rusak', 'PROSES', 'Menunggu sparepart', '2026-02-18 20:11:59'),
(59, 5, 'Keamanan', 'Belakang Sekolah', 'Pagar terbuka', 'MENUNGGU', '', '2026-02-18 21:05:08'),
(60, 1, 'Kebersihan', 'Depan Kelas', 'Sampah plastik', '', 'Sudah dibuang', '2026-02-18 21:50:41'),
(61, 8, 'Kerusakan Fasilitas', 'Laboratorium Kimia', 'Keran bocor', 'BERHASIL', 'Dalam perbaikan', '2026-02-18 22:33:26'),
(62, 5, 'Keamanan', 'Lorong Utama', 'Lampu mati', 'MENUNGGU', '', '2026-02-18 23:12:09'),
(63, 1, 'Kerusakan Fasilitas', 'Ruang BK', 'Kursi patah', 'BERHASIL', 'Sudah diganti', '2026-02-18 23:55:55'),
(64, 5, 'Saran / Masukan', '-', 'loremidsjkjnskdfbmnbm', 'BERHASIL', 'ok', '2026-02-21 02:12:50'),
(65, 5, 'Pelanggaran', 'f', 'fhk', 'BERHASIL', 'faiza', '2026-02-25 08:45:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `nis` varchar(20) DEFAULT NULL,
  `kelas` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('admin','user') DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `nis`, `kelas`, `password`, `role`) VALUES
(1, 'faiza', 'admin', '123', '23', '123', 'admin'),
(5, 'tristan', 'siswa', '123', '12', '123', 'user'),
(8, 'K', 'k', '123', '12', '123', 'user'),
(20, 'yais', 'yais80', '5675', '12 rpl 7', '123', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `laporan`
--
ALTER TABLE `laporan`
  ADD CONSTRAINT `laporan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
