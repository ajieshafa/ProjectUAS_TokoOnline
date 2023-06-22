-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2023 at 09:53 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko-online`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(128) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `kategori` varchar(64) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(1, 'Converse Chuck Taylor All Star Core Hi ', 'Converse', 'Converse', 500000, 20, 'converse.jpg'),
(2, 'Converse Jack Purcell Gold Standard', 'Converse', 'Converse', 350000, 10, 'converse1.jpg'),
(3, 'Nike Court Vision Low White', 'Nike', 'Nike', 450000, 10, 'nike1.jpg'),
(4, 'Adidas Stan Smith Original', 'Adidas', 'Adidas', 660000, 10, 'adidas.jpg'),
(22, 'Puma Club Retro Prep White', 'Puma', 'Puma', 400000, 10, 'puma.jpeg'),
(26, 'Reebok Royal Complete 3 Low', 'Reebok', 'Reebok', 550000, 20, 'reebok2.jpg'),
(31, 'Adidas Racer T21 Men White', 'Adidas', 'Adidas', 750000, 12, 'adidas2.jpg'),
(32, 'Converse Chuck Taylor All Star Lift', 'Converse', 'Converse', 600000, 20, 'converse2.jpeg'),
(33, 'Converse Run Star Hike - High', 'Converse', 'Converse', 1200000, 10, 'converse3.jpeg'),
(34, 'Converse Chuck Taylor Gore-Tex', 'Converse', 'Converse', 1650000, 5, 'converse4.jpeg'),
(35, 'Nike Dunk Low As Green', 'Nike', 'Nike', 2800000, 4, 'nike2.jpeg'),
(36, 'Nike Air Force 1 Lv8 B&W', 'Nike', 'Nike', 1899000, 5, 'nike_3.jpeg'),
(37, 'Nike Air Dunk Jumbo Brown', 'Nike', 'Nike', 1989000, 9, 'nike4.jpeg'),
(38, 'Nike Air Force 1 Shadow', 'Nike', 'Nike', 1799999, 24, 'nike5.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(9, 'Samsul Gondrong', 'Jl. Ori', '2023-05-16 22:46:53', '2023-05-17 22:46:53');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 1, 1, 'Converse', 1, 500000, ''),
(2, 1, 3, 'Nike', 1, 450000, ''),
(3, 1, 4, 'Adidas', 1, 660000, ''),
(4, 2, 1, 'Chuck Taylor All Star Core Hi ', 1, 500000, ''),
(5, 2, 2, 'Jack Purcell Gold Standard', 2, 350000, ''),
(6, 2, 4, 'Adidas Stan Smith Original', 1, 660000, ''),
(7, 2, 3, 'Nike Court Vision Low White', 1, 450000, ''),
(8, 3, 1, 'Converse Chuck Taylor All Star Core Hi ', 2, 500000, ''),
(9, 4, 34, 'Converse Chuck Taylor Gore-Tex', 1, 1650000, ''),
(10, 5, 35, 'Nike Dunk Low As Green', 2, 2800000, ''),
(11, 5, 34, 'Converse Chuck Taylor Gore-Tex', 1, 1650000, ''),
(12, 6, 2, 'Converse Jack Purcell Gold Standard', 1, 350000, ''),
(13, 7, 26, 'Reebok Royal Complete 3 Low', 1, 550000, ''),
(14, 7, 34, 'Converse Chuck Taylor Gore-Tex', 1, 1650000, ''),
(15, 7, 35, 'Nike Dunk Low As Green', 1, 2800000, ''),
(16, 7, 33, 'Converse Run Star Hike - High', 1, 1200000, ''),
(17, 8, 38, 'Nike Air Force 1 Shadow', 1, 1799999, ''),
(18, 8, 37, 'Nike Air Dunk Jumbo Brown', 1, 1989000, ''),
(19, 8, 4, 'Adidas Stan Smith Original', 1, 660000, ''),
(20, 8, 2, 'Converse Jack Purcell Gold Standard', 1, 350000, ''),
(21, 8, 26, 'Reebok Royal Complete 3 Low', 1, 550000, ''),
(22, 9, 37, 'Nike Air Dunk Jumbo Brown', 1, 1989000, ''),
(23, 9, 38, 'Nike Air Force 1 Shadow', 1, 1799999, ''),
(24, 9, 35, 'Nike Dunk Low As Green', 1, 2800000, '');

--
-- Triggers `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN
	UPDATE tb_barang SET stok = stok-NEW.jumlah
    WHERE id_brg = NEW.id_brg;
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', '123', 1),
(2, 'user', 'user', '123', 2),
(3, 'Muadzi ', 'ajieshafa', '123', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indexes for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
