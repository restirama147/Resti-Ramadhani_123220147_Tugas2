-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2025 at 08:34 AM
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
-- Database: `catatan`
--

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `isi` varchar(255) DEFAULT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `Tanggal_dibuat` datetime NOT NULL,
  `Tanggal_diupdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `judul`, `isi`, `kategori`, `Tanggal_dibuat`, `Tanggal_diupdate`) VALUES
(1, 'Rencana Kegiatan Mingguan', 'Minggu ini saya akan menyelesaikan laporan proyek menghadiri rapat dengan tim dan mempelajari konsep baru tentang IoT Target utama adalah menyelesaikan dokumentasi sebelum hari Jumat', 'Kegiatan harian', '2025-02-28 03:04:49', '2025-03-01 07:17:54'),
(2, 'Ide Pengembangan Sistem Keamanan', 'Saya ingin menambahkan fitur notifikasi ke sistem keamanan Arduino menggunakan modul WiFi ESP8266 agar bisa mengirim peringatan ke ponsel. Perlu mencari referensi dan melakukan uji coba.', 'Teknologi', '2025-02-28 03:11:16', '2025-02-28 03:11:16'),
(3, 'Pemrograman GUI di Python', 'Hari ini saya mencoba membuat GUI sederhana untuk menangkap gambar dari webcam menggunakan Python. Tantangan utama adalah memastikan kompatibilitas driver dengan perangkat yang digunakan.', 'Pemrograman', '2025-02-28 03:11:20', '2025-02-28 03:12:31'),
(5, 'Ide Pengembangan Sistem Keamanan Jaringan', 'Saya ingin menambahkan fitur notifikasi ke sistem keamanan Arduino menggunakan modul WiFi ESP8266 agar bisa mengirim peringatan ke ponsel. Perlu mencari referensi dan melakukan uji coba.', 'Jaringan', '2025-03-01 04:53:12', '2025-03-01 04:53:12'),
(6, 'mancing', 'aku mau mancing ke danau', 'kegiatan', '2025-03-01 05:02:14', '2025-03-01 05:02:14'),
(8, 'Evaluasi Proyek Pergudangan', 'Perlu meninjau kembali progres pengembangan aplikasi pergudangan. Fokus pada efektivitas metode Scrum, kendala yang dihadapi, dan strategi untuk meningkatkan kolaborasi tim.', 'Manajemen Proyek', '2025-03-01 06:55:30', '2025-03-01 06:55:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
