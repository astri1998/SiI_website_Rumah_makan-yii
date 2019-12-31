-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 13 Des 2019 pada 07.11
-- Versi Server: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `astri`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_transaksi_makanan`
--

CREATE TABLE `detail_transaksi_makanan` (
  `No_Transaksi` int(50) NOT NULL,
  `Quantity_makanan` int(60) NOT NULL,
  `Jmlh_makanan` varchar(20) NOT NULL,
  `id_makanan` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_transaksi_minuman`
--

CREATE TABLE `detail_transaksi_minuman` (
  `Id_minuman` int(50) NOT NULL,
  `No_transaksi` int(50) NOT NULL,
  `Quantity_minuman` varchar(100) NOT NULL,
  `Jmlh_minuman` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kasir`
--

CREATE TABLE `kasir` (
  `Id_kasir` int(20) NOT NULL,
  `Nm_kasir` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `makanan`
--

CREATE TABLE `makanan` (
  `id` int(10) NOT NULL,
  `Nm_Makanan` varchar(50) NOT NULL,
  `Harga` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `minuman`
--

CREATE TABLE `minuman` (
  `Id_minuman` int(50) NOT NULL,
  `Nm_minuman` varchar(100) NOT NULL,
  `Jenis` varchar(50) NOT NULL,
  `Harga` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `Id_pelanggan` int(100) NOT NULL,
  `Nm_pelanggan` varchar(50) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `No_tlpn` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`Id_pelanggan`, `Nm_pelanggan`, `Alamat`, `No_tlpn`) VALUES
(123456, 'riska', 'kendari', 2147483647),
(1234566, 'riska', 'kendari', 2147483647);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `No_Transaksi` int(50) NOT NULL,
  `Tgl_Transaksi` int(20) NOT NULL,
  `Subtotal_makanan` int(100) NOT NULL,
  `subtotal_minuman` int(100) NOT NULL,
  `Total_bayar` int(100) NOT NULL,
  `Id_pelanggan` int(20) NOT NULL,
  `id_kasir` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `idUser` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `namaLengkap` varchar(255) NOT NULL,
  `jenisKelamin` varchar(2) NOT NULL,
  `tanggalLahir` date NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `level` int(11) DEFAULT '3',
  `status` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`idUser`, `username`, `password`, `namaLengkap`, `jenisKelamin`, `tanggalLahir`, `alamat`, `email`, `telephone`, `level`, `status`) VALUES
(1, 'astri', '12345678', 'astrini', 'p', '2019-12-03', 'kendari', 'wahidsafri39@gmail.com', '09876', 1, 1),
(2, 'astri', '12345678', 'astrini', 'p', '2019-12-03', 'kendari', 'wahidsafri39@gmail.com', '09876', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_transaksi_makanan`
--
ALTER TABLE `detail_transaksi_makanan`
  ADD KEY `No_Transaksi` (`No_Transaksi`),
  ADD KEY `Quantity_makanan` (`Quantity_makanan`),
  ADD KEY `id_makanan` (`id_makanan`);

--
-- Indexes for table `detail_transaksi_minuman`
--
ALTER TABLE `detail_transaksi_minuman`
  ADD KEY `id_minuman` (`Id_minuman`),
  ADD KEY `No_transaksi` (`No_transaksi`);

--
-- Indexes for table `kasir`
--
ALTER TABLE `kasir`
  ADD PRIMARY KEY (`Id_kasir`);

--
-- Indexes for table `makanan`
--
ALTER TABLE `makanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `minuman`
--
ALTER TABLE `minuman`
  ADD PRIMARY KEY (`Id_minuman`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`Id_pelanggan`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`No_Transaksi`),
  ADD KEY `Id_pelanggan` (`Id_pelanggan`),
  ADD KEY `id_kasir` (`id_kasir`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_transaksi_makanan`
--
ALTER TABLE `detail_transaksi_makanan`
  ADD CONSTRAINT `detail_transaksi_makanan_ibfk_1` FOREIGN KEY (`id_makanan`) REFERENCES `makanan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_transaksi_makanan_ibfk_2` FOREIGN KEY (`No_Transaksi`) REFERENCES `transaksi` (`No_Transaksi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_transaksi_minuman`
--
ALTER TABLE `detail_transaksi_minuman`
  ADD CONSTRAINT `detail_transaksi_minuman_ibfk_1` FOREIGN KEY (`Id_minuman`) REFERENCES `minuman` (`Id_minuman`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_transaksi_minuman_ibfk_2` FOREIGN KEY (`No_transaksi`) REFERENCES `transaksi` (`No_Transaksi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_kasir`) REFERENCES `kasir` (`Id_kasir`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`Id_pelanggan`) REFERENCES `pelanggan` (`Id_pelanggan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
