-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Feb 2020 pada 14.33
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `latihan1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `soal`
--

CREATE TABLE `soal` (
  `id` int(11) NOT NULL,
  `soal` varchar(255) NOT NULL,
  `a` varchar(255) NOT NULL,
  `b` varchar(255) NOT NULL,
  `c` varchar(255) NOT NULL,
  `d` varchar(255) NOT NULL,
  `kunci` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `soal`
--

INSERT INTO `soal` (`id`, `soal`, `a`, `b`, `c`, `d`, `kunci`) VALUES
(27, 'apada', 'aaaaa', 'bbbbbbb', 'ccccccc', 'dddddd', 'a'),
(28, 'sd', 'a', 'b', 'c', 'd', 'd'),
(29, '', '', '', '', '', 'a'),
(30, 'sd', '', '', '', '', 'a'),
(31, '', '', '', '', '', 'a'),
(32, '', '', '', '', '', 'a'),
(33, 'asd', '', '', '', '', 'a'),
(34, '', '', '', '', '', 'a'),
(35, '', '', '', '', '', 'a'),
(36, '', '', '', '', '', 'a'),
(37, '', '', '', '', '', 'a'),
(38, 'sdw', '', '', '', '', 'a'),
(39, '', '', '', '', 'asd', 'a'),
(40, '', 'asd', '', '', '', 'a'),
(41, 'ee', 'sd', 'asd', 'we', 'asd', 'd'),
(42, '', 'ee', '', '', '', 'a'),
(43, 'awe', 'ww', 'aa', 'dd', 'ww', 'd'),
(44, 'eewq', 'qwe', 'ee', 'sss', 'w', 'd'),
(53, '1. Baterai anda sering error?\r\n\r\n2. Cepat lowbat?\r\n\r\n3. Ini solusinya!\r\n\r\n4. Kapasitas tinggi!\r\n\r\n5. Tidak mudah gembung!\r\n\r\n6. Uji coba barang kami selama 7 hari\r\n\r\n7. Tunggu apa lagi?\r\n\r\n8. â€¦', 'Ayo dapatkan baterai idol sekarang juga.', '100% garansi dijamin pembeli.', 'Baterai idol mempunyai warna menarik.', 'Kualitas baterai idol kurang memuaskan.', 'a'),
(54, '', 'a', 'e', 'q', 'e', 'b');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `level`) VALUES
(13, 'admin', 'admin123', 'admin'),
(14, 'siswa', 'siswa123', 'siswa');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `soal`
--
ALTER TABLE `soal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
