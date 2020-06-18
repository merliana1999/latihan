-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2020 at 12:00 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbproduk`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `kat_id` tinyint(3) NOT NULL,
  `kat_nama` varchar(50) NOT NULL,
  `kat_keterangan` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Error reading data for table dbproduk.tb_kategori: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `dbproduk`.`tb_kategori`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `tb_keranjang`
--

CREATE TABLE `tb_keranjang` (
  `ker_id` int(11) NOT NULL,
  `ker_id_user` int(11) NOT NULL,
  `ker_id_produk` int(11) NOT NULL,
  `ker_harga` double DEFAULT NULL,
  `ker_jml` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_keranjang`
--

INSERT INTO `tb_keranjang` (`ker_id`, `ker_id_user`, `ker_id_produk`, `ker_harga`, `ker_jml`) VALUES
(1, 1, 1, 300000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_order`
--

CREATE TABLE `tb_order` (
  `order_id` int(11) NOT NULL,
  `order_id_user` int(11) NOT NULL,
  `order_tgl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_kode` varchar(50) NOT NULL,
  `order_ttl` double DEFAULT NULL,
  `order_kurir` varchar(100) NOT NULL,
  `order_ongkir` int(11) NOT NULL,
  `order_byr_deadline` datetime NOT NULL,
  `order_batal` tinyint(1) NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_order`
--

INSERT INTO `tb_order` (`order_id`, `order_id_user`, `order_tgl`, `order_kode`, `order_ttl`, `order_kurir`, `order_ongkir`, `order_byr_deadline`, `order_batal`, `updated_at`) VALUES
(1, 1, '2020-03-27 04:13:00', 'O001', 0, 'Mahmud', 25000, '2020-03-28 09:00:00', 1, '2020-03-29 11:00:00'),
(2, 1, '2020-03-27 04:00:00', 'O001', 1, 'Mahmud', 25000, '2020-03-28 15:00:00', 1, '2020-03-29 11:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_order_detail`
--

CREATE TABLE `tb_order_detail` (
  `detail_id_order` int(11) NOT NULL,
  `detail_id_produk` int(11) NOT NULL,
  `detail_harga` double DEFAULT NULL,
  `detail_jml` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_order_detail`
--

INSERT INTO `tb_order_detail` (`detail_id_order`, `detail_id_produk`, `detail_harga`, `detail_jml`) VALUES
(1, 1, 250000, 2),
(2, 1, 350000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_produk`
--

CREATE TABLE `tb_produk` (
  `produk_id` int(11) NOT NULL,
  `produk_id_kat` tinyint(3) NOT NULL,
  `produk_id_user` int(11) NOT NULL,
  `produk_kode` varchar(50) NOT NULL,
  `produk_nama` varchar(256) NOT NULL,
  `produk_hrg` double NOT NULL,
  `produk_keterangan` text DEFAULT NULL,
  `produk_stock` int(11) NOT NULL,
  `produk_photo` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_produk`
--

INSERT INTO `tb_produk` (`produk_id`, `produk_id_kat`, `produk_id_user`, `produk_kode`, `produk_nama`, `produk_hrg`, `produk_keterangan`, `produk_stock`, `produk_photo`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'A001', 'Sepatu', 300000, 'Sepatu', 20, 'kualitas', '2020-03-26 03:20:00', '2020-03-28 13:23:23');

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE `tb_users` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_nama` varchar(100) NOT NULL,
  `user_alamat` text DEFAULT NULL,
  `user_hp` varchar(25) NOT NULL,
  `user_pos` varchar(5) NOT NULL,
  `user_role` tinyint(2) NOT NULL,
  `user_aktif` tinyint(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`user_id`, `user_email`, `user_password`, `user_nama`, `user_alamat`, `user_hp`, `user_pos`, `user_role`, `user_aktif`, `created_at`, `updated_at`) VALUES
(1, 'user12@gmail.com', 'user', 'user', 'medan', '082176862863', '12', 11, 1, '2020-03-24 17:00:00', '2020-03-27 07:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`kat_id`);

--
-- Indexes for table `tb_keranjang`
--
ALTER TABLE `tb_keranjang`
  ADD PRIMARY KEY (`ker_id`),
  ADD KEY `ker_id_user` (`ker_id_user`),
  ADD KEY `ker_id_produk` (`ker_id_produk`);

--
-- Indexes for table `tb_order`
--
ALTER TABLE `tb_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `order_id_user` (`order_id_user`);

--
-- Indexes for table `tb_order_detail`
--
ALTER TABLE `tb_order_detail`
  ADD PRIMARY KEY (`detail_id_order`),
  ADD KEY `detail_id_produk` (`detail_id_produk`);

--
-- Indexes for table `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`produk_id`),
  ADD KEY `produk_id_kat` (`produk_id_kat`),
  ADD KEY `produk_id_user` (`produk_id_user`);

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `kat_id` tinyint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_keranjang`
--
ALTER TABLE `tb_keranjang`
  MODIFY `ker_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_order`
--
ALTER TABLE `tb_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_order_detail`
--
ALTER TABLE `tb_order_detail`
  MODIFY `detail_id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `produk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_keranjang`
--
ALTER TABLE `tb_keranjang`
  ADD CONSTRAINT `tb_keranjang_ibfk_1` FOREIGN KEY (`ker_id_user`) REFERENCES `tb_users` (`user_id`),
  ADD CONSTRAINT `tb_keranjang_ibfk_2` FOREIGN KEY (`ker_id_produk`) REFERENCES `tb_produk` (`produk_id`);

--
-- Constraints for table `tb_order`
--
ALTER TABLE `tb_order`
  ADD CONSTRAINT `tb_order_ibfk_1` FOREIGN KEY (`order_id_user`) REFERENCES `tb_users` (`user_id`);

--
-- Constraints for table `tb_order_detail`
--
ALTER TABLE `tb_order_detail`
  ADD CONSTRAINT `tb_order_detail_ibfk_1` FOREIGN KEY (`detail_id_produk`) REFERENCES `tb_produk` (`produk_id`),
  ADD CONSTRAINT `tb_order_detail_ibfk_2` FOREIGN KEY (`detail_id_order`) REFERENCES `tb_order` (`order_id`);

--
-- Constraints for table `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD CONSTRAINT `tb_produk_ibfk_1` FOREIGN KEY (`produk_id_kat`) REFERENCES `tb_kategori` (`kat_id`),
  ADD CONSTRAINT `tb_produk_ibfk_2` FOREIGN KEY (`produk_id_user`) REFERENCES `tb_users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
