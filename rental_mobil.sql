-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Nov 2022 pada 19.12
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental_mobil`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(120) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(11) NOT NULL,
  `nama` varchar(120) NOT NULL,
  `username` varchar(120) NOT NULL,
  `alamat` varchar(120) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `no_ktp` varchar(50) NOT NULL,
  `password` varchar(120) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id_customer`, `nama`, `username`, `alamat`, `gender`, `no_telepon`, `no_ktp`, `password`, `role_id`) VALUES
(4, 'Joko Santoso', 'joko', 'Jl. Satu Pekanbaru', 'laki-laki', '0653246512', '215654532767', '81dc9bdb52d04dc20036dbd8313ed055', 2),
(5, 'Darmawan', 'darmawan', 'Jl. Dua Pekanbaru', 'laki-laki', '07617623', '1423477324723', '81dc9bdb52d04dc20036dbd8313ed055', 2),
(6, 'Andi', 'andi', 'Jakarta', 'laki-laki', '0217687634', '12747657463', '827ccb0eea8a706c4c34a16891f84e7b', 2),
(7, 'admin', 'admin', 'Pekanbaru', 'laki-laki', '065423624', '1764578345', '21232f297a57a5a743894a0e4a801fc3', 1),
(8, 'Bayu', 'bayu', 'Jl. Nangka Pekanbaru', 'laki-laki', '07612233', '14000756764735', '81dc9bdb52d04dc20036dbd8313ed055', 2),
(9, 'Toni', 'toni', 'Bandung', 'laki-laki', '0835653243', '1753453265435', '81dc9bdb52d04dc20036dbd8313ed055', 2),
(10, 'ayoya', 'admin', 'yekfcjo', 'perempuan', '0892345678', '0987654567890', '21232f297a57a5a743894a0e4a801fc3', 2),
(11, 'iosahdfopiseb', 'moki', 'dyjkufgipou8yu', 'laki-laki', '1234567876', '34567890987', '16a02013dc3cbbf17d6db22149ed69bc', 2),
(12, 'satya', 'satya123', 'mandalika', 'laki-laki', '0896654178324', '76527414', '81dc9bdb52d04dc20036dbd8313ed055', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE `mobil` (
  `id_mobil` int(11) NOT NULL,
  `kode_tipe` varchar(120) NOT NULL,
  `merek` varchar(120) NOT NULL,
  `no_plat` varchar(20) NOT NULL,
  `warna` varchar(20) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `status` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `denda` int(11) NOT NULL,
  `ac` int(11) NOT NULL,
  `sopir` int(11) NOT NULL,
  `mp3_player` int(11) NOT NULL,
  `central_lock` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`id_mobil`, `kode_tipe`, `merek`, `no_plat`, `warna`, `tahun`, `status`, `harga`, `denda`, `ac`, `sopir`, `mp3_player`, `central_lock`, `gambar`) VALUES
(6, 'SDN', 'Toyota Camry', 'B 1446 DAG', 'Hitam', '2015', '1', 400000, 30000, 1, 0, 1, 0, 'toyota-camry.jpg'),
(9, 'SDN', 'Honda City', 'B 1456 DAG', 'Hitam', '2015', '0', 450000, 30000, 1, 0, 1, 0, 'honda-city.jpg'),
(10, 'SDN', 'CRV', 'B 1234 csh', 'Silver', '2019', '0', 400000, 100000, 0, 0, 1, 1, 'gallery_used-car-mobil123-honda-cr-v-2_4.jpg'),
(13, 'MNV', 'Toyota Avanza', 'B 2245 DAM', 'Hitam', '2015', '1', 350000, 25000, 1, 0, 0, 1, 'avanza-hitam.jpg'),
(14, 'MNV', 'Toyota Avanza', 'B 1123 DUD', 'Putih', '2016', '1', 350000, 25000, 1, 0, 1, 1, 'avanza-putih.jpg'),
(15, 'SDN', 'BMW 320i', 'B 6662 BYL', 'biru', '2022', '1', 500000, 50000, 1, 1, 1, 1, 'download.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rental`
--

CREATE TABLE `rental` (
  `id_rental` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_mobil` int(11) NOT NULL,
  `tgl_rental` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `harga` varchar(120) NOT NULL,
  `denda` varchar(120) NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `status_pengembalian` varchar(50) NOT NULL,
  `status_rental` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tipe`
--

CREATE TABLE `tipe` (
  `id_tipe` int(11) NOT NULL,
  `kode_tipe` varchar(120) NOT NULL,
  `nama_tipe` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tipe`
--

INSERT INTO `tipe` (`id_tipe`, `kode_tipe`, `nama_tipe`) VALUES
(1, 'SDN', 'Sedan'),
(3, 'MNV', 'Mini Van');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_rental` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_mobil` int(11) NOT NULL,
  `tgl_rental` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `harga` varchar(120) NOT NULL,
  `denda` int(11) NOT NULL,
  `total_denda` varchar(120) NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `status_pengembalian` varchar(50) NOT NULL,
  `status_rental` varchar(50) NOT NULL,
  `bukti_pembayaran` varchar(120) NOT NULL,
  `status_pembayaran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_rental`, `id_customer`, `id_mobil`, `tgl_rental`, `tgl_kembali`, `harga`, `denda`, `total_denda`, `tgl_pengembalian`, `status_pengembalian`, `status_rental`, `bukti_pembayaran`, `status_pembayaran`) VALUES
(3, 6, 9, '2021-01-15', '2021-01-16', '450000', 30000, '120000', '2021-01-20', 'Belum Kembali', 'Belum Selesai', '', 0),
(4, 6, 6, '2021-01-15', '2021-01-18', '400000', 30000, '60000', '2021-01-20', 'Kembali', 'Selesai', 'tugas.png', 1),
(5, 8, 10, '2021-01-18', '2021-01-19', '400000', 100000, '100000', '2021-01-20', 'Belum Kembali', 'Belum Selesai', '', 0),
(6, 6, 11, '2021-01-28', '2021-01-30', '300000', 25000, '25000', '2021-01-31', 'Kembali', 'Selesai', 'tugas2.png', 1),
(7, 9, 13, '2021-01-30', '2021-02-01', '350000', 25000, '25000', '2021-02-02', 'Kembali', 'Selesai', 'tugas2.png', 1),
(8, 12, 6, '2022-11-08', '2022-11-10', '400000', 30000, '0', '2022-11-10', 'Kembali', 'Selesai', '0001.jpg', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indeks untuk tabel `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indeks untuk tabel `rental`
--
ALTER TABLE `rental`
  ADD PRIMARY KEY (`id_rental`);

--
-- Indeks untuk tabel `tipe`
--
ALTER TABLE `tipe`
  ADD PRIMARY KEY (`id_tipe`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_rental`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id_mobil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `rental`
--
ALTER TABLE `rental`
  MODIFY `id_rental` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tipe`
--
ALTER TABLE `tipe`
  MODIFY `id_tipe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_rental` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
