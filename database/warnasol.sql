-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2022 at 07:22 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `warnasol`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id_cart` varchar(20) NOT NULL,
  `tanggal` datetime NOT NULL,
  `kode` varchar(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `harga` varchar(10) NOT NULL,
  `qty` varchar(10) NOT NULL,
  `jumlah` varchar(10) NOT NULL,
  `session` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id_cart`, `tanggal`, `kode`, `nama`, `harga`, `qty`, `jumlah`, `session`) VALUES
('20180206152934', '2018-02-06 15:29:34', '58', 'Oseng Kacan', '6000', '-12', '12000', '20170820071826'),
('20220614165244', '2022-06-14 16:52:44', '59', 'Pepes Ayam ', '12000', '0', '0', '20220612131719');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `kd_cus` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` text NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`kd_cus`, `email`, `username`, `password`, `gambar`) VALUES
('20170820071826', 'hakko', 'hakko', 'fb92eb16a09ed530c91a0e17d9d61a7758754013', '../admin/gambar_customer/images.jpg'),
('20180205073805', 'niqoweb', 'niqoweb', '6414e69bf25357d8d63353f469b35a7416963ab1', ''),
('20220612131719', 'del', 'none', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '');

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi`
--

CREATE TABLE `konfirmasi` (
  `id_kon` int(6) NOT NULL,
  `nopo` varchar(20) NOT NULL,
  `kd_cus` varchar(20) NOT NULL,
  `bayar_via` varchar(30) NOT NULL,
  `tanggal` datetime NOT NULL,
  `jumlah` int(10) NOT NULL,
  `bukti_transfer` varchar(50) NOT NULL,
  `status` enum('Bayar','Belum') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konfirmasi`
--

INSERT INTO `konfirmasi` (`id_kon`, `nopo`, `kd_cus`, `bayar_via`, `tanggal`, `jumlah`, `bukti_transfer`, `status`) VALUES
(20, '20180205073805', '20180205073805', '0', '2018-02-05 07:38:37', 26000, '0', 'Belum'),
(22, '20170820071826', '20170820071826', 'Cash On Delivery (CO', '2018-02-05 09:44:53', 21000, '0', 'Belum'),
(23, '20220612131719', '20220612131719', 'Cash On Delivery (COD)', '2022-06-12 13:18:12', 22000, '0', 'Belum'),
(24, '', '', 'Cash On Delivery (COD)', '2022-06-14 09:09:01', 30000, '0', 'Belum'),
(25, '20220612131719', '20220612131719', 'Cash On Delivery (COD)', '2022-06-14 09:42:29', 6000, '0', 'Belum'),
(26, '20220612131719', '20220612131719', 'Cash On Delivery (COD)', '2022-06-14 09:47:03', 6000, '0', 'Belum'),
(27, '', '', 'Cash On Delivery (COD)', '2022-06-14 10:02:32', 0, '0', 'Belum'),
(28, '', '', 'Cash On Delivery (COD)', '2022-06-14 10:04:09', 12000, '0', 'Belum'),
(29, '', '', 'Cash On Delivery (COD)', '2022-06-14 14:00:46', 18000, '0', 'Belum'),
(30, '', '', 'Cash On Delivery (COD)', '2022-06-14 16:57:46', 42000, '0', 'Belum'),
(31, '', '', 'Cash On Delivery (COD)', '2022-06-14 23:13:06', 6000, '0', 'Belum'),
(32, '', '', 'Cash On Delivery (COD)', '2022-06-14 23:14:01', 12000, '0', 'Belum'),
(33, '', '', 'Cash On Delivery (COD)', '2022-06-14 23:38:58', 6000, '0', 'Belum');

-- --------------------------------------------------------

--
-- Table structure for table `po`
--

CREATE TABLE `po` (
  `nopo` varchar(20) NOT NULL,
  `tanggalkirim` date NOT NULL,
  `status` enum('Proses','Selesai','Terkirim','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `po_terima`
--

CREATE TABLE `po_terima` (
  `id` int(10) NOT NULL,
  `nopo` varchar(20) NOT NULL,
  `kd_cus` varchar(20) NOT NULL,
  `kode` int(4) NOT NULL,
  `tanggal` datetime NOT NULL,
  `qty` int(8) NOT NULL,
  `total` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `po_terima`
--

INSERT INTO `po_terima` (`id`, `nopo`, `kd_cus`, `kode`, `tanggal`, `qty`, `total`) VALUES
(38, '20180205073805', '20180205073805', 17, '2018-02-05 07:38:23', 2, 26000),
(39, '20170820071826', '20170820071826', 57, '2018-02-05 09:44:15', 1, 6000),
(40, '20170820071826', '20170820071826', 54, '2018-02-05 09:44:19', 1, 15000),
(41, '20220612131719', '20220612131719', 59, '2022-06-12 13:17:54', 1, 12000),
(42, '20220612131719', '20220612131719', 52, '2022-06-12 13:18:01', 1, 10000),
(43, '', '', 59, '2022-06-14 09:05:42', 1, 12000),
(44, '', '', 58, '2022-06-14 09:05:45', 1, 6000),
(45, '', '', 55, '2022-06-14 09:05:47', 1, 6000),
(46, '', '', 58, '2022-06-14 09:05:51', 1, 6000),
(47, '', '', 59, '2022-06-14 09:07:24', 1, 12000),
(50, '20220612131719', '20220612131719', 58, '2022-06-14 09:42:26', 1, 6000),
(51, '20220612131719', '20220612131719', 58, '2022-06-14 09:46:58', 1, 6000),
(52, '', '', 59, '2022-06-14 09:20:00', 1, 12000),
(53, '', '', 58, '2022-06-14 09:20:03', 1, 6000),
(54, '', '', 57, '2022-06-14 09:20:05', 1, 6000),
(55, '', '', 58, '2022-06-14 09:20:30', 1, 6000),
(56, '', '', 58, '2022-06-14 09:20:37', 1, 6000),
(57, '', '', 59, '2022-06-14 09:25:02', 1, 12000),
(58, '', '', 59, '2022-06-14 09:25:16', 1, 12000),
(59, '', '', 55, '2022-06-14 09:25:18', 1, 6000),
(60, '', '', 59, '2022-06-14 09:56:10', 1, 12000),
(61, '', '', 58, '2022-06-14 09:56:11', 1, 6000),
(62, '', '', 59, '2022-06-14 10:00:49', 1, 12000),
(67, '', '', 59, '2022-06-14 10:02:52', 1, 12000),
(68, '', '', 59, '2022-06-14 13:58:41', 1, 12000),
(69, '', '', 58, '2022-06-14 13:58:43', 1, 6000),
(71, '', '', 59, '2022-06-14 16:49:30', 1, 12000),
(72, '', '', 59, '2022-06-14 16:49:55', 1, 12000),
(73, '', '', 58, '2022-06-14 16:50:19', 1, 6000),
(74, '', '', 59, '2022-06-14 16:51:07', 1, 12000),
(75, '', '', 57, '2022-06-14 23:12:51', 1, 6000),
(76, '', '', 59, '2022-06-14 23:13:58', 1, 12000),
(77, '', '', 57, '2022-06-14 23:38:55', 1, 6000);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `kode` int(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis` varchar(10) NOT NULL,
  `harga` int(10) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `stok` int(3) NOT NULL,
  `gambar` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`kode`, `nama`, `jenis`, `harga`, `keterangan`, `stok`, `gambar`) VALUES
(17, 'Ayam Bakar', 'Makanan', 13000, 'Ayam Bakar Geprek Bumbu kecap', 98, 'gambar_produk/images(5).jpg'),
(18, 'Pepes Ikan Patin', 'Makanan', 12000, 'Ikan Patin pepes bumbu', 100, 'gambar_produk/images(2).jpg'),
(19, 'Botok Tahu', 'Makanan', 5000, 'Botok Tahu campur bumbu dan rempah - rempah', 100, 'gambar_produk/images(3).jpg'),
(20, 'Sop Ayam', 'Makanan', 12000, 'Sop ayam bumbu lada', 100, 'gambar_produk/images(4).jpg'),
(21, 'Sayur lodeh', 'Makanan', 6000, 'Sayur lodeh kuah santan', 100, 'gambar_produk/images(6).jpg'),
(22, 'Ayam Kremes ', 'Makanan', 12000, 'Ayam Kremes Bumbu sambal gledek', 100, 'gambar_produk/images(7).jpg'),
(23, 'Sayur Asam', 'Makanan', 6000, 'Sayur Asam Khas Sunda', 100, 'gambar_produk/images(8).jpg'),
(24, 'Tahu Tempe', 'Makanan', 6000, 'Tahu tempe kremes sambal coet dadakan', 100, 'gambar_produk/images(9).jpg'),
(25, 'Sop Sapi', 'Makanan', 18000, 'Sop Sapi daging dan tangkar plus sambal hijau gledek', 100, 'gambar_produk/images(10).jpg'),
(26, 'Sayur Bayam', 'Makanan', 6000, 'Sayur bayam dengan jagung', 100, 'gambar_produk/images(11).jpg'),
(27, 'Urab', 'Makanan', 6000, 'Campuran sayuran dengan bumbu rempah dan parutan kelapa', 100, 'gambar_produk/images(12).jpg'),
(28, 'Pepes Jamur', 'Makanan', 10000, 'pepes jamur bumbu cabai dan bawang merah', 100, 'gambar_produk/images(13).jpg'),
(29, 'Ikan Mas Bakar', 'Makanan', 15000, 'Ikan Mas bakar bumbu kecap lada hitam', 100, 'gambar_produk/images(14).jpg'),
(30, 'Mujair Goreng', 'Makanan', 12000, 'Ikan Mujair goreng bumbu rempah', 100, 'gambar_produk/images(15).jpg'),
(31, 'Lalapan', 'Makanan', 5000, 'Lalapan plus sambel dadakan', 100, 'gambar_produk/images(16).jpg'),
(32, 'Oseng Kangkung', 'Makanan', 6000, 'Oseng kangkung bumbu teriyaki', 100, 'gambar_produk/images(17).jpg'),
(33, 'Oseng Paria', 'Makanan', 6000, 'Oseng paria (pare) bumbu cabe bawang dan rempah', 100, 'gambar_produk/images(18).jpg'),
(34, 'Komplit 1', 'Makanan', 18000, 'Nasi, Ayam Bakar, lalapan, sambal korek', 100, 'gambar_produk/images(19).jpg'),
(35, 'Sambal Hejo', 'Makanan', 6000, 'Sambal goreng hejo gledek', 100, 'gambar_produk/images(20).jpg'),
(36, 'Sambal Goang', 'Makanan', 6000, 'Sambal Goang Cabe Jablay', 100, 'gambar_produk/images(21).jpg'),
(37, 'Petai Bakar', 'Makanan', 15000, 'petai bakar sambal lalap (2pcs)', 100, 'gambar_produk/images(22).jpg'),
(38, 'Capcai Seafood', 'Makanan', 20000, 'Campuran sayuran, bakso, ayam dan seafood', 100, 'gambar_produk/images(23).jpg'),
(39, 'Oseng Oncom', 'Makanan', 6000, 'Oseng oncom plus teri bumbu pedas', 100, 'gambar_produk/images(24).jpg'),
(40, 'Asinan', 'Makanan', 6000, 'Asinan', 100, 'gambar_produk/images(25).jpg'),
(41, 'Oreg Tempe', 'Makanan', 6000, 'Oreg tempe bumbu kecap', 100, 'gambar_produk/images(26).jpg'),
(42, 'Kentang sambel', 'Makanan', 8000, 'Kentang sambel goreng petai', 100, 'gambar_produk/images(27).jpg'),
(43, 'Terong Sambal', 'Makanan', 8000, 'Terong sambal goreng petai', 100, 'gambar_produk/images(28).jpg'),
(44, 'Oseng Jamur Tahu', 'Makanan', 10000, 'Oseng Jamur Tahu', 100, 'gambar_produk/images(29).jpg'),
(45, 'Goreng Ikan Mas', 'Makanan', 11000, 'Goreng Ikan Mas', 100, 'gambar_produk/images(30).jpg'),
(46, 'Ati Ampela', 'Makanan', 10000, 'Ati Ampela bumbu kari pedas', 100, 'gambar_produk/images(31).jpg'),
(47, 'Bala - Bala', 'Makanan', 2000, 'Bala - Bala', 100, 'gambar_produk/images(32).jpg'),
(48, 'Bakwan Jagung', 'Makanan', 2000, 'Bakwan Jagung', 100, 'gambar_produk/images(33).jpg'),
(49, 'Tempe Goreng', 'Makanan', 1000, 'Tempe Goreng', 100, 'gambar_produk/images(34).jpg'),
(50, 'Semur Jengkol', 'Makanan', 10000, 'Semur Jengkol Bumbu Lada', 100, 'gambar_produk/images(35).jpg'),
(51, 'Ikan Kembung', 'Makanan', 10000, 'Ikan Kembung Sambel kecap pedas', 100, 'gambar_produk/images(36).jpg'),
(52, 'Ikan Bandeng', 'Makanan', 10000, 'Ikan Bandeng Goreng', 99, 'gambar_produk/images(37).jpg'),
(53, 'Sayur Nangka', 'Makanan', 6000, 'Sayur Nangka Bumbu Kunyit dan santan', 100, 'gambar_produk/images(38).jpg'),
(54, 'Pepes Ikan Mas', 'Makanan', 15000, 'Pepes Ikan Mas Pedas', 99, 'gambar_produk/images(39).jpg'),
(55, 'Oseng Genjer', 'Makanan', 6000, 'Oseng Genjer', 98, 'gambar_produk/images(40).jpg'),
(56, 'Sop Ayam Rempah', 'Makanan', 12000, 'Sop Ayam Rempah', 100, 'gambar_produk/images(41).jpg'),
(57, 'Nasi Putih', 'Makanan', 6000, 'Nasi Putih Bakul', 96, 'gambar_produk/images(42).jpg'),
(58, 'Oseng Kacang', 'Makanan', 6000, 'Oseng Kacang', 87, 'gambar_produk/images(43).jpg'),
(59, 'Pepes Ayam ', 'Makanan', 12000, 'Pepes Ayam bumbu kuyit, cabai, bawang', 82, 'gambar_produk/images.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tmp_po_terima`
--

CREATE TABLE `tmp_po_terima` (
  `id` int(10) NOT NULL,
  `nopo` varchar(10) NOT NULL,
  `kd_cus` varchar(10) NOT NULL,
  `kode` int(4) NOT NULL,
  `tanggal` date NOT NULL,
  `qty` int(8) NOT NULL,
  `total` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `gambar` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `fullname`, `gambar`) VALUES
(1, 'hakko', 'fb92eb16a09ed530c91a0e17d9d61a7758754013', 'Hakko Bio Richard', 'gambar_admin/hakkoblogs.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'none', 'fidel@gmail.com', '202cb962ac59075b964b07152d234b70'),
(2, 'del', 'fidel05@gmail.com', '202cb962ac59075b964b07152d234b70');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`kd_cus`);

--
-- Indexes for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD PRIMARY KEY (`id_kon`);

--
-- Indexes for table `po`
--
ALTER TABLE `po`
  ADD PRIMARY KEY (`nopo`);

--
-- Indexes for table `po_terima`
--
ALTER TABLE `po_terima`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `tmp_po_terima`
--
ALTER TABLE `tmp_po_terima`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  MODIFY `id_kon` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `po_terima`
--
ALTER TABLE `po_terima`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `tmp_po_terima`
--
ALTER TABLE `tmp_po_terima`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
