-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2020 at 04:25 PM
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
-- Database: `toko`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` varchar(255) NOT NULL,
  `id_kategori` varchar(255) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `merk` varchar(255) NOT NULL,
  `harga_beli` varchar(255) NOT NULL,
  `harga_jual` varchar(255) NOT NULL,
  `satuan_barang` varchar(255) NOT NULL,
  `stok` varchar(255) NOT NULL,
  `tgl_input` varchar(255) NOT NULL,
  `tgl_update` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `id_kategori`, `nama_barang`, `merk`, `harga_beli`, `harga_jual`, `satuan_barang`, `stok`, `tgl_input`, `tgl_update`) VALUES
('BR001', 'H01-KCG', 'Full Grooming - KCG', 'Perawatan semua tubuh termasuk cukur bulu', '105000', '165000', 'cai xukun', '7', '23 June 2020, 17:39', NULL),
('BR002', 'H01-KCG', 'Styling - KCG', 'Pemotongan pada bulu hewan dan berhias', '50000', '100000', 'megumi young', '6', '23 June 2020, 17:43', NULL),
('BR003', 'H01-KCG', 'Treatment Jamur - KCG', 'Grooming menggunakan shampo khusus jamur dan pembersihlainnya', '120000', '170000', 'dini supistani', '7', '23 June 2020, 17:45', '23 June 2020, 17:50'),
('BR004', 'H01-KCG', 'Treatkent Kutu - KCG', 'Grooming menggunakan shampo khusus kutu dan pembersihlainnya', '120000', '160000', 'leo nugraha', '7', '23 June 2020, 17:48', NULL),
('BR005', 'H02-AJG', 'Full Grooming - AJG', 'Perawatan semua tubuh termasuk cukur bulu', '130000', '185000', 'liu xin', '7', '23 June 2020, 17:50', NULL),
('BR006', 'H02-AJG', 'Styling - AJG', 'Pemotongan pada bulu hewan dan berhias', '100000', '175000', 'lalisa', '7', '23 June 2020, 18:13', NULL),
('BR007', 'H02-AJG', 'Treatment Jamur - AJG', 'Grooming menggunakan shampo khusus jamur dan pembersihlainnya', '135000', '180000', 'dilan saputra', '7', '23 June 2020, 18:16', NULL),
('BR008', 'H02-AJG', 'Treatkent Kutu - AJG', 'Grooming menggunakan shampo khusus kutu dan pembersihlainnya', '110000', '150000', 'leo nugraha', '9', '23 June 2020, 18:17', NULL),
('BR009', 'H03-KLI', 'Full Grooming - KLI', 'Perawatan semua tubuh termasuk cukur bulu', '145000', '195000', 'cai xukun', '7', '23 June 2020, 18:18', NULL),
('BR010', 'H03-KLI', 'Styling - KLI', 'Pemotongan pada bulu hewan dan berhias', '135000', '200000', 'jisoo kim', '7', '23 June 2020, 18:19', NULL),
('BR011', 'H03-KLI', 'Treatment Jamur - KLI', 'Grooming menggunakan shampo khusus jamur dan pembersihlainnya', '120000', '180000', 'dini supistani', '7', '23 June 2020, 18:21', NULL),
('BR012', 'H03-KLI', 'Treatkent Kutu - KLI', 'Grooming menggunakan shampo khusus kutu dan pembersihlainnya', '120000', '175000', 'liu xin', '7', '23 June 2020, 18:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` varchar(255) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `tgl_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `tgl_input`) VALUES
('H01-KCG', 'Kucing', '7 May 2017, 10:23'),
('H02-AJG', 'Anjing', '8 June 2020, 22:26'),
('H03-KLI', 'Kelinci', '7 May 2017, 10:28');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_login` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `id_member` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_login`, `user`, `pass`, `id_member`) VALUES
('1', 'admin', '202cb962ac59075b964b07152d234b70', '1'),
('2', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` varchar(255) NOT NULL,
  `nm_member` varchar(255) NOT NULL,
  `alamat_member` varchar(255) NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gambar` text NOT NULL,
  `NIK` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `nm_member`, `alamat_member`, `telepon`, `email`, `gambar`, `NIK`) VALUES
('1', 'Uchiha Sasuke', 'Desa Daun Konohagure', '089657575757', 'uchihasasuke@gmail.com', 'FB_IMG_15822076301500111.jpg', '0606060399');

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

CREATE TABLE `nota` (
  `id_penjualan` varchar(255) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` varchar(255) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nota`
--

INSERT INTO `nota` (`id_penjualan`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`) VALUES
('pjn-001', 'BR001', '1', '1', '165000', '08-juli-2020'),
('pjn-008', 'BR008', '1', '1', '150000', '10-Agustus-2020'),
('pjn-010', 'BR010', '1', '1', '200000', '12-September-2020');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` varchar(255) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` varchar(255) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`) VALUES
('pjn-001', 'BR001', '1', '1', '165000', ''),
('pjn-002', 'BR002', '1', '2', '200000', ''),
('pjn-003', 'BR003', '1', '', '0', ''),
('pjn-004', 'BR004', '1', '', '0', ''),
('pjn-005', 'BR005', '1', '', '0', ''),
('pjn-006', 'BR006', '1', '', '0', ''),
('pjn-007', 'BR007', '1', '', '0', ''),
('pjn-008', 'BR008', '1', '', '0', ''),
('pjn-009', 'BR009', '1', '', '0', ''),
('pjn-010', 'BR010', '1', '', '0', ''),
('pjn-011', 'BR011', '1', '', '', ''),
('pjn-012', 'BR012', '1', '', '', '');

--
-- Triggers `penjualan`
--
DELIMITER $$
CREATE TRIGGER `edit` AFTER UPDATE ON `penjualan` FOR EACH ROW BEGIN
	UPDATE barang SET stok = stok-NEW.jumlah + OLD.jumlah
    where id_barang = NEW.id_barang;
 END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `toko`
--

CREATE TABLE `toko` (
  `id_toko` varchar(255) NOT NULL,
  `nama_toko` varchar(255) NOT NULL,
  `alamat_toko` varchar(255) NOT NULL,
  `tlp` varchar(255) NOT NULL,
  `nama_pemilik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toko`
--

INSERT INTO `toko` (`id_toko`, `nama_toko`, `alamat_toko`, `tlp`, `nama_pemilik`) VALUES
('1', 'Go-Petshop', 'Citty Mall Kota Sukabumi', '085723392055', 'choi Kyuhyun');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD UNIQUE KEY `id_barang` (`id_barang`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD UNIQUE KEY `id_barang` (`id_barang`);

--
-- Indexes for table `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id_toko`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `nota`
--
ALTER TABLE `nota`
  ADD CONSTRAINT `nota_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nota_ibfk_2` FOREIGN KEY (`id_penjualan`) REFERENCES `penjualan` (`id_penjualan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
