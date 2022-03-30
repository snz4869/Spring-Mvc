-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Mar 2022 pada 12.29
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adidb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `todos`
--

CREATE TABLE `todos` (
  `id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `start_meter` int(11) DEFAULT NULL,
  `target_datae` date DEFAULT NULL,
  `user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `todos`
--

INSERT INTO `todos` (`id`, `description`, `start_meter`, `target_datae`, `user`) VALUES
(1, 'watch', 10, '2023-04-02', 'quenz'),
(2, 'nothing', 3, '2022-03-04', 'yue'),
(3, 'Adz', 3, '2022-06-09', 'Liz'),
(10, 'sss', 44, '2022-11-03', 'aaa'),
(11, 'ss', 3, '2022-03-03', '11'),
(13, 'no description', 25, '2021-10-12', 'nemuru'),
(14, 'lah', 19, '2019-11-10', 'test'),
(15, 'test2', 1, '2011-01-01', 'test1'),
(16, '1111', 13, '2013-11-11', '1111'),
(17, 'bad', 10, '2011-01-01', 'good'),
(18, 's', 0, '2011-01-01', 'a'),
(19, 'dua', 90, '2012-02-02', 'satu'),
(20, 'bb', 0, '2012-02-02', 'aa'),
(21, 'dev', 10, '2022-03-03', 'rena'),
(22, 'dua', 1, '2024-04-02', 'satu');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `todos`
--
ALTER TABLE `todos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
