-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Jun 2020 pada 07.35
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
-- Database: `beasiswa_pelajar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `applied`
--

CREATE TABLE `applied` (
  `id` int(11) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `deskripsi` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `applied`
--

INSERT INTO `applied` (`id`, `nama`, `deskripsi`) VALUES
(1, 'Beasiswa Djarum', 'Beasiswa Covid guiss yaa eakkk hahah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `beasiswa`
--

CREATE TABLE `beasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` varchar(500) NOT NULL,
  `nominal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `beasiswa`
--

INSERT INTO `beasiswa` (`id`, `nama`, `deskripsi`, `nominal`) VALUES
(1, 'Beasiswa Djarum', 'Beasiswa Covid guiss yaa eakkk hahah', 1200000),
(2, 'Beasiswa Covid', 'Beasiswa khusus mahasiswa ', 25000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `email` varchar(225) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `jurusan` varchar(225) NOT NULL,
  `asal_univ` varchar(225) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `gender` varchar(225) NOT NULL,
  `tempat_lahir` varchar(225) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`email`, `nama`, `jurusan`, `asal_univ`, `alamat`, `gender`, `tempat_lahir`, `tanggal_lahir`, `password`) VALUES
('alvinsimbolon04@gmail.com', 'Alvin Immanuel Simbolon', 'D4 TRPL', 'IT Del', 'Medan', 'Male', 'Balige', '2000-06-14', '$2y$10$.rInkLtgNpTYJxtauNnRwOk62h1HrY3unpIQnZ2ZruHaYRl3I5IRe'),
('alvinsimbolon6@gmail.com', 'alvin', 'd4 trpl', 'Del', 'balige', 'pria', 'balige', '2000-06-14', '$2y$10$3DTkLSA6SrP7L7/W17p4XeacmFFkjJoboL1ptYhtU6Fmp4NXhbRlq');

-- --------------------------------------------------------

--
-- Struktur dari tabel `saved`
--

CREATE TABLE `saved` (
  `id` int(11) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `deskripsi` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `saved`
--

INSERT INTO `saved` (`id`, `nama`, `deskripsi`) VALUES
(1, 'Beasiswa Djarum', 'Beasiswa Covid guiss yaa eakkk hahah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `status`) VALUES
(1, 'admin', 'admin', 'administrator');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `applied`
--
ALTER TABLE `applied`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `beasiswa`
--
ALTER TABLE `beasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `saved`
--
ALTER TABLE `saved`
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
-- AUTO_INCREMENT untuk tabel `applied`
--
ALTER TABLE `applied`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `beasiswa`
--
ALTER TABLE `beasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `saved`
--
ALTER TABLE `saved`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
