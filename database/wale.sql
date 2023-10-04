-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2023 at 03:25 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wale`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `id` int(11) NOT NULL,
  `foto` text NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `no_whatsapp` varchar(14) NOT NULL,
  `password` text NOT NULL,
  `waktu` varchar(100) NOT NULL,
  `tipe_daftar` varchar(50) NOT NULL,
  `tipe_akun` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id`, `foto`, `nama_lengkap`, `email`, `no_whatsapp`, `password`, `waktu`, `tipe_daftar`, `tipe_akun`) VALUES
(14, '1684322663.png', 'User Biasa', 'user@gmail.com', '085381259307', '$2y$10$uDy0.tHRpB0alUAAwL.1XOT/f3Y6O4SfIZ28rnhyyRlkEgacqimPu', '2021-06-18 16:20:48', '', ''),
(15, '1684402730.png', 'Administrator', 'admin@gmail.com', '0895335112375', '$2y$10$ivlVrsDRBVq7ZDlsBcLj7eJ2B8RlEY9cVNnNk.H0kkoQxP6b6PSBu', '2021-07-11 01:18:30', '', 'Admin'),
(20, 'user.png', 'Rafter Karouw', 'rkarouw1@gmail.com', '0899507740054', '$2y$10$bnUoxDXlb6tmR/GBlqDWKOCrrnfaooxUEa5XjtArkSddpl/Kk6qVS', '2023-05-23 13:53:22', '', ''),
(21, 'user.png', 'Natasya Kamasi', 'whitneynatasya@gmail.com', '0895335112375', '$2y$10$0kPt4HgKfVtBgmy1ocKNyu9lPwSoCOHyEH9BuaY.ezMoRl2jzrUPS', '2023-05-26 14:27:20', '', ''),
(22, 'user.png', 'tasya test', 'tasya@gmail.com', '08953351123755', '$2y$10$KYIuibiKJ63i5xi2XrhIM.bRhsA4fq93K4UO0X.7IJWFHs50AQdK2', '2023-06-03 08:23:56', '', ''),
(24, 'user.png', 'Whitney', 'whitney.whitney@gmailc.om', '0895234243', '$2y$10$4BbYky5rjNKywvfvSHb7tO55tImGEMVc95QkggkHP48qCQk5YFasm', '2023-06-25 09:43:31', '', ''),
(25, 'user.png', 'Ini Test', 'initest@gmail.com', '0894578623', '$2y$10$b8gS33hOavfbu0IxbWznzerromKmw955dUBrfICBK39.0M/0TW8T.', '2023-06-29 10:48:35', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `banner_promo`
--

CREATE TABLE `banner_promo` (
  `idbanner` int(11) NOT NULL,
  `image` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banner_promo`
--

INSERT INTO `banner_promo` (`idbanner`, `image`, `status`) VALUES
(35, '39513053a1c1efdaccd427dadf411a61.png', ''),
(36, 'e6e53d66b8039f157a92c7a8d8f3b065.png', ''),
(37, '6c24a5bd2b9f2d3b86d1b37f566fc84b.png', ''),
(38, 'af64c6ca6f81ff4d0e2cd81b8eb70d41.png', ''),
(39, '6b017147bed623cd7b0bad4d3e0ccb03.png', ''),
(40, 'fc2788949ba6925735530b53fcc701ff.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `flashsale`
--

CREATE TABLE `flashsale` (
  `id_fs` int(11) NOT NULL,
  `waktu_berakhir` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flashsale`
--

INSERT INTO `flashsale` (`id_fs`, `waktu_berakhir`) VALUES
(1, '1688572800');

-- --------------------------------------------------------

--
-- Table structure for table `iklan`
--

CREATE TABLE `iklan` (
  `id` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `gambar` longtext NOT NULL,
  `judul` varchar(200) NOT NULL,
  `harga` int(10) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `berat` int(11) NOT NULL,
  `warna` text NOT NULL,
  `ukuran` text NOT NULL,
  `stok` int(5) NOT NULL,
  `terjual` int(5) NOT NULL,
  `diskon` int(3) NOT NULL,
  `tipe_iklan` varchar(15) NOT NULL,
  `waktu` text NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `iklan`
--

INSERT INTO `iklan` (`id`, `id_kategori`, `gambar`, `judul`, `harga`, `deskripsi`, `berat`, `warna`, `ukuran`, `stok`, `terjual`, `diskon`, `tipe_iklan`, `waktu`, `status`) VALUES
(28, 4, '1684334758-1.jpg,1684334758-2.jpg,1684334758-3.jpg,1684334758-4.jpg,1684334758-5.jpg', 'Batik Manado', 100000, 'Batik khas tenunan Manado', 210, 'Hijau,Kuning,Biru,Hitam', 'S===10000,M===100000,L===100000,XL===100000', 85, 75, 0, '', '2021-06-13 19:06:22', 'delete'),
(42, 5, '1626966263-1.jpeg', 'TEST', 123, 'TEST', 1000, 'HIJAU,MERAH', 'L===2000,XL===1500', 12, 0, 0, '', '2021-07-22 22:04:22', 'delete'),
(43, 3, '1684334259-1.png,1684334259-2.jpg', 'Klappertart Oma Jen', 20000, 'Klappertart dengan resep asli leluhur', 90, '', '', 100, 61, 20, 'flash sale', '2023-05-17 16:37:39', ''),
(44, 4, '1684334521-1.jpg,1684334521-2.jpg,1684334521-3.jpg,1684334521-4.jpg,1684334521-5.jpg', 'Batik Manado', 100000, 'Batik khas tenunan Manado', 50, 'Hijau,Kuning,Biru,Hitam', 'S===100000,M===100000,L===100000,XL===100000,XXL===100000', 55, 3, 50, 'flash sale', '2023-05-17 16:42:00', ''),
(45, 4, '1684848748-1.jpg', 'Baju Adat Minahasa (Kabasaran) untuk Anak', 150000, 'Baju adat Minahasa untuk Anak', 50, '', 'S===150000,L===150000,M===150000,XL===150000', 100, 61, 0, '', '2023-05-23 15:32:28', ''),
(46, 4, '1684849269-1.jpg', 'Baju Adat Minahasa Dewasa', 250000, 'Baju Adat Minahasa', 50, '', '', 343, 59, 0, '', '2023-05-23 15:41:08', ''),
(47, 1, '1688025184-1.webp', 'Gerabah Teko Tanah Liat', 120000, 'Toko : TPR Collection\r\n\r\nGerabah berbentuk Teko dari tanah liat yang bisa digunakan dalam kehidupan sehari-hari ataupun digunakan sebagai pajangan dan oleh-oleh untuk Orang tercinta.\r\nGerabah asli Polutan, tempat penghasil gerabah paling terkenal di Sulawesi Utara.', 100, '', '', 41, 32, 0, '', '2023-05-23 15:42:23', ''),
(48, 5, '1684849498-1.jpg', 'Keramik', 150000, 'Keramik desa Pulutan', 100, '', '', 65, 33, 0, '', '2023-05-23 15:44:57', ''),
(49, 1, '1688024615-1.png', 'Rantang Bambu Persegi Premium', 50000, 'Toko : LOKALTANI\r\n\r\nRantang Bambu bentuk Persegi Premium dengan Diameter 25cm. Bisa digunakan untuk mengisi banyak barang dan juga makanan. Bisa digunakan untuk melakukan piknik ataupun digunakan sebagai hadiah pada hari raya.\r\nKarya asli masyarakat Minahasa.', 20, '', '', 65, 53, 0, '', '2023-05-23 15:45:56', ''),
(50, 1, '1688024305-1.webp,1688024305-2.jpg,1688024305-3.jpg,1688024305-4.jpg', 'Kipas Kain Batik Khas Minahasa', 45000, 'Toko : Torang Pe Batik\r\n\r\nKipas kecil dengan bahan dasar Batik Khas Minahasa yang ditenun langsung oleh pekerja.\r\nMemiliki banyak motif menarik yang hanya terdapat ditanah Minahasa.', 10, 'Merah,Biru,Hitam', '', 765, 39, 0, '', '2023-05-23 15:47:48', ''),
(51, 3, '1684849921-1.jpg', 'Cakalang Suwir', 15000, 'Resep tradisional', 10, '', '', 133, 40, 0, '', '2023-05-23 15:52:01', ''),
(52, 3, '1684850003-1.jpg', 'Gorohos', 20000, 'Pisang goroho', 100, '', '', 4280, 91, 0, '', '2023-05-23 15:53:23', ''),
(53, 3, '1684850623-1.jpg', 'Marindi', 15000, 'Goroho khas Minahasa', 90, '', '', 4214, 26, 0, '', '2023-05-23 16:03:43', ''),
(54, 2, '1684851212-1.jpg', 'Cangkang Mutiara', 50000, 'kerajinan tangan', 40, '', '', 423, 12, 0, '', '2023-05-23 16:13:31', ''),
(55, 1, '1688023862-1.webp,1688023862-2.jpg,1688023862-3.jpg', 'Keranjang Anyaman Bambu Kawangkoan', 75000, 'Toko : Anyaman Kawangkoan Store\r\n\r\nBerbagai bentuk dan jenis anyaman berkualitas yang dibuat langsung dengan bahan asli Kawangkoan dan pekerja masyarakat asli.\r\nAnyaman dapat digunakan untuk beragam hal dan memiliki bentuk yang berbeda sesuai kemauan anda.', 100, '', 'Persegi / Kotak===75000,Bulat Pendek===75000,Bulat Tinggi===75000', 59, 0, 0, '', '2023-06-29 09:31:01', ''),
(56, 1, '1688024976-1.gerabah tungku tanah liat', 'Gerabah Tungku Tanah Liat', 120000, 'Toko : TPR Collection\r\n\r\nGerabah berbentuk Tungku dari tanah liat yang bisa digunakan dalam kehidupan sehari-hari ataupun digunakan sebagai pajangan dan oleh-oleh untuk Orang tercinta.\r\nGerabah asli Polutan, tempat penghasil gerabah paling terkenal di Sulawesi Utara.', 150, '', '', 23, 0, 0, '', '2023-06-29 09:49:35', ''),
(57, 1, '1688025402-1.webp', 'Bak / Tempat Air dari Gerabah Tanah Liat', 600000, 'Ukuran diameter 56 cm \r\nTinggi 50 cm\r\nWarna putih keramik\r\n\r\nGerabah yang bisa digunakan sebagai tempat penyimpanan air untuk terlihat tradisional namun memiliki sentuhan modern.', 1000, '', '', 12, 0, 10, 'flash sale', '2023-06-29 09:56:42', ''),
(58, 2, '1688025964-1.jpg', 'Kalung dari Sisik Ikan', 100000, 'Kalung khas Sulawesi Utara yang dibuat dengan menggunakan sisik dari ikan, yang kemudian diolah dan dihias sedemikian rupa sehingga menjadi aksesoris kalung yang bisa dipakai oleh pembeli.', 50, '', '', 68, 0, 15, 'flash sale', '2023-06-29 10:06:04', ''),
(59, 2, '1688026101-1.jpg', 'Aksesoris Kepala khas Manado', 100000, 'Aksesoris kepala tradisional Manado yang biasa digunakan pada saat ada Pesta Adat ataupun didalam kegiatan lainnya, untuk wanita.', 100, '', '', 100, 0, 0, '', '2023-06-29 10:08:21', ''),
(60, 3, '1688026746-1.jpg', 'Manisan Pala ', 15000, 'Manisan Pala khas Sulawesi Utara, dengan komposisi hanya Pala dan gula yang sudah terkenal. Wajib dicoba !!!', 100, '', '', 1000, 0, 0, '', '2023-06-29 10:19:05', '');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `idinvoice` int(11) NOT NULL,
  `id_iklan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `jumlah` int(4) NOT NULL,
  `warna_i` text NOT NULL,
  `ukuran_i` text NOT NULL,
  `harga_i` int(11) NOT NULL,
  `diskon_i` int(11) NOT NULL,
  `kurir` varchar(10) NOT NULL,
  `id_kurir` int(11) NOT NULL,
  `layanan_kurir` text NOT NULL,
  `etd` text NOT NULL,
  `harga_ongkir` int(11) NOT NULL,
  `resi` text NOT NULL,
  `provinsi` text NOT NULL,
  `kota` text NOT NULL,
  `alamat_lengkap` text NOT NULL,
  `waktu` varchar(200) NOT NULL,
  `tipe_progress` varchar(50) NOT NULL,
  `transaction` text NOT NULL,
  `type` text NOT NULL,
  `order_id` text NOT NULL,
  `fraud` text NOT NULL,
  `bank_manual` text NOT NULL,
  `bukti_transfer` text NOT NULL,
  `waktu_transaksi` text NOT NULL,
  `waktu_dikirim` text NOT NULL,
  `waktu_selesai` text NOT NULL,
  `waktu_dibatalkan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`idinvoice`, `id_iklan`, `id_user`, `jumlah`, `warna_i`, `ukuran_i`, `harga_i`, `diskon_i`, `kurir`, `id_kurir`, `layanan_kurir`, `etd`, `harga_ongkir`, `resi`, `provinsi`, `kota`, `alamat_lengkap`, `waktu`, `tipe_progress`, `transaction`, `type`, `order_id`, `fraud`, `bank_manual`, `bukti_transfer`, `waktu_transaksi`, `waktu_dikirim`, `waktu_selesai`, `waktu_dibatalkan`) VALUES
(99, 26, 14, 1, '', '', 87000, 0, 'jne', 0, 'OKE', '2-3', 30000, '12345523245', '11,Jawa Timur', '444,Surabaya', 'Jl banyu urip', '2021-07-25 16:54:57', 'Selesai', '', '', '', '', 'BCA', '99-bukti-transfer.jpeg', '2021-07-25 16:55:10', '2021-07-25 17:04:10', '2021-07-25 17:12:37', ''),
(100, 25, 14, 1, 'MERAH', 'S', 75000, 10, 'jne', 0, 'OKE', '2-3', 15000, '12189624823', '11,Jawa Timur', '444,Surabaya', 'Jl banyu urip', '2021-07-25 17:15:06', 'Selesai', '', '', '', '', 'BCA', '100-bukti-transfer.jpeg', '2021-07-25 17:15:17', '2021-07-25 17:15:47', '2021-07-25 17:15:52', ''),
(101, 27, 14, 2, '', '', 75000, 10, 'jne', 0, 'OKE', '2-3', 30000, '12456765432', '11,Jawa Timur', '444,Surabaya', 'Jl banyu urip', '2021-07-25 22:09:36', 'Selesai', '', '', '', '', 'BCA', '101-bukti-transfer.png', '2021-07-25 22:09:46', '2021-07-25 22:11:24', '2021-07-25 22:14:15', ''),
(102, 29, 14, 1, '', '', 415000, 30, 'jne', 0, 'OKE', '2-3', 15000, '123456', '11,Jawa Timur', '444,Surabaya', 'Jl banyu urip', '2021-07-25 22:38:31', 'Selesai', '', '', '', '', 'BCA', '102-bukti-transfer.png', '2021-07-25 22:38:44', '2021-09-09 12:26:33', '2021-09-09 12:26:48', ''),
(103, 20, 14, 1, '', '', 222000, 0, 'jne', 0, 'OKE', '2-3', 90000, '123', '11,Jawa Timur', '444,Surabaya', 'Jl banyu urip', '2021-07-25 23:27:20', 'Selesai', '', '', '', '', 'BCA', '103-bukti-transfer.png', '2021-07-25 23:27:32', '2021-09-09 12:26:21', '2021-09-09 12:26:44', ''),
(105, 21, 14, 1, '', '', 15000000, 0, 'jne', 0, '', '', 0, '', '', '', '', '2021-09-09 12:44:57', 'Belum Bayar', '', '', '', '', '', '', '', '', '', ''),
(106, 32, 14, 1, 'MERAH', 'M', 250000, 0, 'tiki', 0, 'REG', '3', 66000, '121212', '31,Sulawesi Utara', '285,Minahasa', 'Tataaran II', '2023-05-16 16:12:27', 'Selesai', '', '', '', '', 'BCA', '106-bukti-transfer.jpg', '2023-05-17 12:28:23', '2023-05-17 12:33:53', '2023-05-17 12:34:17', ''),
(107, 31, 14, 1, '', '', 35000, 0, 'tiki', 0, 'REG', '3', 66000, '', '31,Sulawesi Utara', '285,Minahasa', 'Tataaran II', '2023-05-17 12:35:40', 'Belum Bayar', '', '', '', '', '', '', '', '', '', ''),
(108, 24, 14, 1, '', '', 16500000, 0, 'jne', 0, 'OKE', '4-5', 91000, '', '31,Sulawesi Utara', '285,Minahasa', 'Tataaran II', '2023-05-17 13:02:03', 'Belum Bayar', '', '', '', '', '', '', '', '', '', ''),
(109, 28, 14, 1, '', '', 10000, 0, 'tiki', 0, 'REG', '3', 66000, '1212121212', '31,Sulawesi Utara', '285,Minahasa', 'Tataaran II', '2023-05-17 14:54:20', 'Selesai', '', '', '', '', 'BCA', '109-bukti-transfer.png', '2023-05-17 14:55:14', '2023-05-17 14:57:33', '2023-05-17 14:57:56', ''),
(110, 44, 14, 1, 'Hitam', 'M', 100000, 50, 'tiki', 0, 'REG', '3', 66000, '12', '31,Sulawesi Utara', '285,Minahasa', 'Tataaran II', '2023-05-17 16:43:40', 'Selesai', '', '', '', '', 'BRI', '110-bukti-transfer.jpg', '2023-05-17 16:47:36', '2023-05-17 16:48:27', '2023-05-17 16:48:42', ''),
(111, 42, 14, 1, 'HIJAU', 'L', 2000, 0, 'jne', 0, 'OKE', '4-5', 91000, '23987492491873', '31,Sulawesi Utara', '285,Minahasa', 'Tataaran II', '2023-05-18 09:56:36', 'Selesai', '', '', '', '', 'BRI', '111-bukti-transfer.png', '2023-05-18 10:04:36', '2023-05-18 10:06:00', '2023-05-18 10:06:09', ''),
(112, 44, 15, 1, 'Hijau', 'S', 100000, 50, 'jne', 1, 'REG', '3-4', 106000, '', '31,Sulawesi Utara', '285,Minahasa', 'Kakas', '2023-05-18 12:46:27', 'Belum Bayar', '', '', '', '', '', '', '', '', '', ''),
(113, 43, 14, 1, '', '', 20000, 20, 'tiki', 0, 'REG', '3', 66000, '55555', '31,Sulawesi Utara', '285,Minahasa', 'Tataaran II', '2023-05-22 14:20:23', 'Selesai', '', '', '', '', 'BRI', '113-bukti-transfer.png', '2023-05-22 14:20:58', '2023-05-22 14:21:49', '2023-05-22 14:21:59', ''),
(114, 44, 20, 1, 'Kuning', 'L', 100000, 50, 'jne', 0, '', '', 0, '', '', '', '', '2023-05-23 13:54:40', 'Belum Bayar', '', '', '', '', '', '', '', '', '', ''),
(115, 43, 20, 1, '', '', 20000, 20, 'jne', 0, '', '', 0, '', '', '', '', '2023-05-23 14:00:57', 'Belum Bayar', '', '', '', '', '', '', '', '', '', ''),
(116, 45, 20, 1, '', 'S', 150000, 0, 'tiki', 0, 'REG', '3', 66000, '114', '31,Sulawesi Utara', '285,Minahasa', 'Tataaran II, Tondano Selatan', '2023-05-23 15:33:34', 'Selesai', '', '', '', '', 'BRI', '116-bukti-transfer.jpg', '2023-05-23 17:42:29', '2023-05-23 17:43:06', '2023-05-23 17:43:14', ''),
(117, 47, 14, 1, '', '', 100000, 0, 'jne', 0, 'OKE', '4-5', 91000, '', '31,Sulawesi Utara', '285,Minahasa', 'Tataaran II', '2023-05-25 14:28:45', 'Belum Bayar', '', '', '', '', '', '', '', '', '', ''),
(118, 52, 14, 1, '', '', 20000, 0, 'jne', 0, 'OKE', '4-5', 91000, '123', '31,Sulawesi Utara', '285,Minahasa', 'Tataaran II', '2023-05-25 14:29:43', 'Selesai', '', '', '', '', 'BRI', '118-bukti-transfer.jpg', '2023-05-25 14:31:23', '2023-05-25 14:32:32', '2023-05-25 14:32:42', ''),
(119, 46, 14, 1, '', '', 250000, 0, 'jne', 0, 'OKE', '4-5', 91000, '', '31,Sulawesi Utara', '285,Minahasa', 'Tataaran II', '2023-05-26 06:23:52', 'Belum Bayar', '', '', '', '', '', '', '', '', '', ''),
(120, 51, 21, 1, '', '', 15000, 0, 'jne', 0, 'OKE', '4-5', 91000, '123', '31,Sulawesi Utara', '285,Minahasa', 'Kakas', '2023-05-26 14:40:20', 'Selesai', '', '', '', '', 'BRI', '120-bukti-transfer.png', '2023-05-26 14:44:54', '2023-05-26 14:46:31', '2023-05-26 14:47:49', ''),
(121, 49, 21, 1, '', '', 25000, 0, 'jne', 0, 'OKE', '4-5', 91000, '116', '31,Sulawesi Utara', '285,Minahasa', 'Kakas', '2023-05-26 14:50:55', 'Selesai', '', '', '', '', 'BRI', '121-bukti-transfer.png', '2023-06-03 08:03:02', '2023-06-03 08:03:26', '2023-06-03 08:13:43', ''),
(122, 46, 22, 1, '', '', 250000, 0, 'jne', 0, 'OKE', '4-5', 91000, '116', '31,Sulawesi Utara', '73,Bitung', 'Manembo-nembo', '2023-06-03 08:24:05', 'Selesai', '', '', '', '', 'BRI', '122-bukti-transfer.png', '2023-06-03 08:24:47', '2023-06-03 08:31:00', '2023-06-03 08:31:03', ''),
(123, 28, 22, 1, 'Hijau', 'S', 10000, 0, 'jne', 0, 'OKE', '4-5', 91000, '123', '31,Sulawesi Utara', '73,Bitung', 'Manembo-nembo', '2023-06-03 08:32:48', 'Selesai', '', '', '', '', 'BRI', '123-bukti-transfer.png', '2023-06-03 08:33:12', '2023-06-03 08:35:33', '2023-06-03 08:35:48', ''),
(124, 53, 14, 1, '', '', 15000, 0, 'jne', 0, 'OKE', '4-5', 91000, '124', '31,Sulawesi Utara', '285,Minahasa', 'Tataaran II', '2023-06-04 09:37:10', 'Selesai', '', '', '', '', 'BRI', '124-bukti-transfer.png', '2023-06-04 09:37:57', '2023-06-04 09:38:34', '2023-06-04 09:47:03', ''),
(125, 49, 14, 1, '', '', 25000, 0, 'jne', 0, 'OKE', '4-5', 91000, '125', '31,Sulawesi Utara', '285,Minahasa', 'Tataaran II', '2023-06-04 09:55:29', 'Dikirim', '', '', '', '', 'BRI', '125-bukti-transfer.png', '2023-06-04 09:55:50', '2023-06-04 09:56:24', '', ''),
(126, 48, 14, 1, '', '', 150000, 0, 'jne', 0, 'OKE', '4-5', 91000, '', '31,Sulawesi Utara', '285,Minahasa', 'Tataaran II', '2023-06-11 14:18:05', 'Dikemas', '', '', '', '', 'BRI', '126-bukti-transfer.jpg', '2023-06-11 14:19:01', '', '', ''),
(127, 54, 24, 1, '', '', 50000, 0, 'jne', 0, 'OKE', '2-3', 22000, '127', '9,Jawa Barat', '22,Bandung', 'Bandung', '2023-06-25 09:43:49', 'Selesai', '', '', '', '', 'BRI', '127-bukti-transfer.png', '2023-06-25 09:44:42', '2023-06-25 09:46:38', '2023-06-25 09:46:42', ''),
(128, 45, 24, 1, '', 'S', 150000, 0, 'jne', 0, 'OKE', '2-3', 22000, '128', '9,Jawa Barat', '22,Bandung', 'Bandung', '2023-06-25 09:53:06', 'Selesai', '', '', '', '', 'BRI', '128-bukti-transfer.png', '2023-06-25 09:53:27', '2023-06-25 09:54:02', '2023-06-25 09:54:09', ''),
(129, 46, 24, 1, '', '', 250000, 0, 'jne', 0, 'OKE', '2-3', 22000, '', '9,Jawa Barat', '22,Bandung', 'Bandung', '2023-06-25 09:56:00', 'Belum Bayar', '', '', '', '', '', '', '', '', '', ''),
(130, 57, 25, 1, '', '', 600000, 10, 'pos', 0, 'Pos Reguler', '2 HARI', 17000, '130', '6,DKI Jakarta', '153,Jakarta Selatan', 'Jalan Sungai Sambas 7, Blok M , Kebayoran Baru, Jakarta Selatan', '2023-06-29 11:04:37', 'Selesai', '', '', '', '', 'BRI', '130-bukti-transfer.jpg', '2023-06-29 11:06:59', '2023-06-29 11:08:39', '2023-06-29 11:08:49', ''),
(131, 56, 25, 1, '', '', 120000, 0, 'jne', 0, 'OKE', '2-3', 19000, '', '6,DKI Jakarta', '153,Jakarta Selatan', 'Jalan Sungai Sambas 7, Blok M , Kebayoran Baru, Jakarta Selatan', '2023-06-29 13:30:42', 'Belum Bayar', '', '', '', '', '', '', '', '', '', ''),
(132, 59, 25, 1, '', '', 100000, 0, 'jne', 0, 'OKE', '2-3', 19000, '', '6,DKI Jakarta', '153,Jakarta Selatan', 'Jalan Sungai Sambas 7, Blok M , Kebayoran Baru, Jakarta Selatan', '2023-06-29 13:43:02', 'Belum Bayar', '', '', '', '', '', '', '', '', '', ''),
(133, 45, 25, 1, '', 'S', 150000, 0, 'jne', 0, 'OKE', '2-3', 19000, '', '6,DKI Jakarta', '153,Jakarta Selatan', 'Jalan Sungai Sambas 7, Blok M , Kebayoran Baru, Jakarta Selatan', '2023-06-29 13:54:33', 'Belum Bayar', '', '', '', '', '', '', '', '', '', ''),
(134, 58, 25, 1, '', '', 100000, 15, 'jne', 0, 'OKE', '2-3', 19000, '', '6,DKI Jakarta', '153,Jakarta Selatan', 'Jalan Sungai Sambas 7, Blok M , Kebayoran Baru, Jakarta Selatan', '2023-06-29 14:08:00', 'Belum Bayar', '', '', '', '', '', '', '', '', '', ''),
(135, 55, 25, 1, '', 'Persegi / Kotak', 75000, 0, 'jne', 0, 'OKE', '2-3', 19000, '', '6,DKI Jakarta', '153,Jakarta Selatan', 'Jalan Sungai Sambas 7, Blok M , Kebayoran Baru, Jakarta Selatan', '2023-06-29 14:22:59', 'Belum Bayar', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `icon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama`, `icon`) VALUES
(1, 'Kerajinan Tangan', '40541e19e757c0615293bda56a837e6a.png'),
(2, 'Aksesoris', 'bd47849b56b41b3e76b1b753b66ac9c3.png'),
(3, 'Makanan', '7e77f1317c2e40c5c3e4f0855221f576.jpg'),
(4, 'Fashion', 'b0225eeb6fb4d8f4c071cfa2f36d3708.png'),
(5, 'Seni', 'a36861f514509f4c461ced6ce31d2c68.png'),
(6, 'Budaya', '565aa2b684c0619f8c90d21272638f2b.jpg'),
(7, 'Mainan', 'b78327126840588c45f9c2e304d7b824.png'),
(8, 'Lainnya', 'otomotif.svg');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id` int(11) NOT NULL,
  `id_iklan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `jumlah` int(4) NOT NULL,
  `harga_k` int(15) NOT NULL,
  `diskon_k` int(11) NOT NULL,
  `warna_k` text NOT NULL,
  `ukuran_k` text NOT NULL,
  `waktu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `keranjang`
--

INSERT INTO `keranjang` (`id`, `id_iklan`, `id_user`, `jumlah`, `harga_k`, `diskon_k`, `warna_k`, `ukuran_k`, `waktu`) VALUES
(175, 44, 14, 1, 100000, 50, 'Hijau', 'S', '2023-05-25 14:34:36'),
(176, 44, 21, 1, 100000, 50, 'Hijau', 'S', '2023-05-26 14:30:05'),
(177, 46, 21, 1, 250000, 0, '', '', '2023-05-26 14:30:14');

-- --------------------------------------------------------

--
-- Table structure for table `lokasi_user`
--

CREATE TABLE `lokasi_user` (
  `idlokasi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `provinsi` text NOT NULL,
  `id_provinsi` int(11) NOT NULL,
  `kota` text NOT NULL,
  `id_kota` int(11) NOT NULL,
  `kecamatan` text NOT NULL,
  `kelurahan` text NOT NULL,
  `alamat_lengkap` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lokasi_user`
--

INSERT INTO `lokasi_user` (`idlokasi`, `id_user`, `provinsi`, `id_provinsi`, `kota`, `id_kota`, `kecamatan`, `kelurahan`, `alamat_lengkap`) VALUES
(9, 3, 'Jawa Timur', 11, 'Surabaya', 444, '', '', 'Jl banyu urip'),
(10, 14, 'Sulawesi Utara', 31, 'Minahasa', 285, '', '', 'Tataaran II'),
(11, 15, 'Sulawesi Utara', 31, 'Minahasa', 285, '', '', 'Kakas'),
(12, 20, 'Sulawesi Utara', 31, 'Minahasa', 285, '', '', 'Tataaran II, Tondano Selatan'),
(13, 21, 'Sulawesi Utara', 31, 'Minahasa', 285, '', '', 'Kakas'),
(14, 22, 'Sulawesi Utara', 31, 'Bitung', 73, '', '', 'Manembo-nembo'),
(15, 24, 'Jawa Barat', 9, 'Bandung', 22, '', '', 'Bandung'),
(16, 25, 'DKI Jakarta', 6, 'Jakarta Selatan', 153, '', '', 'Jalan Sungai Sambas 7, Blok M , Kebayoran Baru, Jakarta Selatan');

-- --------------------------------------------------------

--
-- Table structure for table `nomor_rekening`
--

CREATE TABLE `nomor_rekening` (
  `idnorek` int(11) NOT NULL,
  `nama_bank` text NOT NULL,
  `norek` text NOT NULL,
  `an` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nomor_rekening`
--

INSERT INTO `nomor_rekening` (`idnorek`, `nama_bank`, `norek`, `an`) VALUES
(1, 'BRI', '123456789', 'Natasya Kamasi'),
(2, 'BRI', '1876889286539', '');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id_notif` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `nama_notif` text NOT NULL,
  `deskripsi_notif` text NOT NULL,
  `waktu_notif` text NOT NULL,
  `status_notif` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id_notif`, `id_user`, `id_invoice`, `nama_notif`, `deskripsi_notif`, `waktu_notif`, `status_notif`) VALUES
(1, 3, 36, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-06-18 14:51:53', 'Read'),
(2, 3, 35, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-06-22 18:09:46', 'Read'),
(3, 3, 34, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-06-24 12:53:23', 'Read'),
(4, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 12:59:55', 'Read'),
(5, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 12:59:56', 'Read'),
(6, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 12:59:56', 'Read'),
(7, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 12:59:56', 'Read'),
(8, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 12:59:56', 'Read'),
(9, 3, 34, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-06-24 13:01:14', 'Read'),
(10, 3, 35, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 13:01:19', 'Read'),
(11, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 13:03:03', 'Read'),
(12, 3, 35, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-06-24 13:05:54', 'Read'),
(13, 3, 34, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-06-24 13:05:55', 'Read'),
(14, 3, 35, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 13:05:58', 'Read'),
(15, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 13:06:00', 'Read'),
(16, 3, 35, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-06-24 13:08:02', 'Read'),
(17, 3, 34, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-06-24 13:08:04', 'Read'),
(18, 3, 35, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 13:08:07', 'Read'),
(19, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 13:08:15', 'Read'),
(20, 3, 34, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-06-24 13:11:39', 'Read'),
(21, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 13:11:41', 'Read'),
(22, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 13:12:12', 'Read'),
(23, 3, 35, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-06-24 13:13:50', 'Read'),
(24, 3, 35, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 13:13:53', 'Read'),
(25, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 13:15:52', 'Read'),
(26, 3, 35, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-06-24 13:16:23', 'Read'),
(27, 3, 34, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-06-24 13:16:24', 'Read'),
(28, 3, 35, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 13:16:27', 'Read'),
(29, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 13:16:29', 'Read'),
(30, 3, 35, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-06-24 13:17:11', 'Read'),
(31, 3, 34, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-06-24 13:17:12', 'Read'),
(32, 3, 35, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 13:17:15', 'Read'),
(33, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 13:17:16', 'Read'),
(34, 3, 49, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-07-13 22:55:36', 'Read'),
(35, 3, 49, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-07-13 22:55:45', 'Read'),
(36, 3, 48, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-07-13 23:43:31', 'Read'),
(37, 3, 66, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-07-19 02:00:16', 'Read'),
(38, 3, 74, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-07-19 02:41:18', 'Read'),
(39, 3, 74, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-07-19 02:42:26', 'Read'),
(40, 3, 74, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-07-19 02:44:50', 'Read'),
(41, 3, 70, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-07-19 02:44:57', 'Read'),
(42, 3, 89, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-23 11:41:08', 'Read'),
(43, 3, 89, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-23 11:41:08', 'Read'),
(44, 3, 89, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-23 12:09:46', 'Read'),
(45, 3, 89, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-23 12:09:46', 'Read'),
(46, 3, 89, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-23 12:19:14', 'Read'),
(47, 3, 89, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-23 12:19:14', 'Read'),
(48, 3, 89, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-23 12:22:13', 'Read'),
(49, 3, 89, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-23 12:22:13', 'Read'),
(50, 3, 87, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 15:44:34', 'Read'),
(51, 3, 87, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 15:44:34', 'Read'),
(52, 3, 85, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 15:47:14', 'Read'),
(53, 3, 85, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 15:47:14', 'Read'),
(54, 3, 86, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 16:09:00', 'Read'),
(55, 3, 86, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 16:09:00', 'Read'),
(56, 3, 91, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 16:12:45', 'Read'),
(57, 3, 91, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 16:12:45', 'Read'),
(58, 3, 92, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 16:26:19', 'Read'),
(59, 3, 92, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 16:26:19', 'Read'),
(60, 3, 93, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 16:30:19', 'Read'),
(61, 3, 93, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 16:30:19', 'Read'),
(62, 3, 85, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 16:30:21', 'Read'),
(63, 3, 85, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 16:30:21', 'Read'),
(64, 3, 94, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 16:31:38', 'Read'),
(65, 3, 94, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 16:31:38', 'Read'),
(66, 3, 95, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 16:33:05', 'Read'),
(67, 3, 95, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 16:33:05', 'Read'),
(68, 3, 96, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 16:36:58', 'Read'),
(69, 3, 96, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 16:36:58', 'Read'),
(70, 3, 97, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 16:41:02', 'Read'),
(71, 3, 97, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 16:41:02', 'Read'),
(72, 3, 97, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 16:42:33', 'Read'),
(73, 3, 97, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 16:42:33', 'Read'),
(74, 3, 98, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 16:44:30', 'Read'),
(75, 3, 98, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 16:44:30', 'Read'),
(76, 3, 99, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 16:55:18', ''),
(77, 3, 99, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 16:55:18', ''),
(78, 3, 99, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-07-25 17:04:10', ''),
(79, 3, 99, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-07-25 17:12:37', ''),
(80, 3, 100, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 17:15:32', ''),
(81, 3, 100, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 17:15:32', ''),
(82, 3, 100, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-07-25 17:15:47', ''),
(83, 3, 100, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-07-25 17:15:52', ''),
(84, 3, 101, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 22:09:55', ''),
(85, 3, 101, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 22:09:55', ''),
(86, 3, 101, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-07-25 22:11:24', ''),
(87, 3, 101, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-07-25 22:14:15', ''),
(88, 3, 103, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 23:29:08', ''),
(89, 3, 103, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 23:29:08', ''),
(90, 14, 102, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-09-09 12:25:46', 'Read'),
(91, 14, 102, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-09-09 12:25:46', 'Read'),
(92, 14, 103, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-09-09 12:26:21', 'Read'),
(93, 0, 0, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-09-09 12:26:30', 'Read'),
(94, 14, 102, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-09-09 12:26:33', 'Read'),
(95, 14, 103, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-09-09 12:26:44', 'Read'),
(96, 14, 102, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-09-09 12:26:48', 'Read'),
(97, 14, 106, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-05-17 12:32:41', 'Read'),
(98, 14, 106, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-05-17 12:32:41', 'Read'),
(99, 14, 106, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2023-05-17 12:33:53', 'Read'),
(100, 14, 106, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2023-05-17 12:34:17', 'Read'),
(101, 14, 109, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-05-17 14:57:09', 'Read'),
(102, 14, 109, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-05-17 14:57:09', 'Read'),
(103, 14, 109, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2023-05-17 14:57:33', 'Read'),
(104, 14, 109, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2023-05-17 14:57:56', 'Read'),
(105, 14, 110, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-05-17 16:48:04', 'Read'),
(106, 14, 110, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-05-17 16:48:04', 'Read'),
(107, 14, 110, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2023-05-17 16:48:27', 'Read'),
(108, 14, 110, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2023-05-17 16:48:42', 'Read'),
(109, 14, 111, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-05-18 10:05:37', 'Read'),
(110, 14, 111, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-05-18 10:05:37', 'Read'),
(111, 14, 111, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2023-05-18 10:06:00', 'Read'),
(112, 14, 111, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2023-05-18 10:06:09', 'Read'),
(113, 14, 113, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-05-22 14:21:30', 'Read'),
(114, 14, 113, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-05-22 14:21:30', 'Read'),
(115, 14, 113, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2023-05-22 14:21:49', 'Read'),
(116, 14, 113, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2023-05-22 14:21:59', 'Read'),
(117, 20, 116, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-05-23 17:42:51', 'Read'),
(118, 20, 116, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-05-23 17:42:51', 'Read'),
(119, 20, 116, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2023-05-23 17:43:06', 'Read'),
(120, 20, 116, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2023-05-23 17:43:14', 'Read'),
(121, 14, 118, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-05-25 14:32:14', 'Read'),
(122, 14, 118, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-05-25 14:32:14', 'Read'),
(123, 14, 118, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2023-05-25 14:32:32', 'Read'),
(124, 14, 118, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2023-05-25 14:32:42', 'Read'),
(125, 21, 120, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-05-26 14:46:25', 'Read'),
(126, 21, 120, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-05-26 14:46:25', 'Read'),
(127, 21, 120, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2023-05-26 14:46:31', 'Read'),
(128, 21, 120, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2023-05-26 14:47:49', 'Read'),
(129, 21, 121, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-06-03 08:03:18', 'Read'),
(130, 21, 121, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-06-03 08:03:18', 'Read'),
(131, 21, 121, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2023-06-03 08:03:26', 'Read'),
(132, 21, 121, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2023-06-03 08:13:43', 'Read'),
(133, 22, 122, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-06-03 08:24:58', 'Read'),
(134, 22, 122, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-06-03 08:24:58', 'Read'),
(135, 22, 122, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2023-06-03 08:31:00', 'Read'),
(136, 22, 122, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2023-06-03 08:31:03', 'Read'),
(137, 22, 123, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-06-03 08:34:51', 'Read'),
(138, 22, 123, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-06-03 08:34:51', 'Read'),
(139, 22, 123, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2023-06-03 08:35:33', 'Read'),
(140, 22, 123, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2023-06-03 08:35:48', 'Read'),
(141, 14, 124, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-06-04 09:38:15', 'Read'),
(142, 14, 124, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-06-04 09:38:15', 'Read'),
(143, 14, 124, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2023-06-04 09:38:34', 'Read'),
(144, 0, 0, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2023-06-04 09:43:37', ''),
(145, 14, 124, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2023-06-04 09:47:03', 'Read'),
(146, 14, 125, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-06-04 09:56:13', 'Read'),
(147, 14, 125, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-06-04 09:56:13', 'Read'),
(148, 14, 125, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2023-06-04 09:56:24', 'Read'),
(149, 14, 126, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-06-11 14:19:19', ''),
(150, 14, 126, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-06-11 14:19:19', ''),
(151, 24, 127, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-06-25 09:45:52', 'Read'),
(152, 24, 127, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-06-25 09:45:52', 'Read'),
(153, 24, 127, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2023-06-25 09:46:38', 'Read'),
(154, 24, 127, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2023-06-25 09:46:42', 'Read'),
(155, 24, 128, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-06-25 09:53:38', ''),
(156, 24, 128, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-06-25 09:53:38', ''),
(157, 24, 128, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2023-06-25 09:54:02', ''),
(158, 24, 128, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2023-06-25 09:54:09', ''),
(159, 25, 130, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-06-29 11:07:25', 'Read'),
(160, 25, 130, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-06-29 11:07:25', 'Read'),
(161, 25, 130, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2023-06-29 11:08:39', 'Read'),
(162, 25, 130, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2023-06-29 11:08:49', 'Read');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `idrating` int(11) NOT NULL,
  `id_invoice_rat` int(11) NOT NULL,
  `star_rat` int(1) NOT NULL,
  `deskripsi_rat` text NOT NULL,
  `waktu_rat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`idrating`, `id_invoice_rat`, `star_rat`, `deskripsi_rat`, `waktu_rat`) VALUES
(7, 35, 5, 'Barang nya bagus sekali', '2021-06-18 14:51:53'),
(8, 35, 5, '', '2021-06-18 14:51:53'),
(9, 35, 5, '', '2021-06-18 14:51:53'),
(10, 35, 3, '', '2021-06-18 14:51:53'),
(11, 103, 5, 'kerennn dan berkualitas', ''),
(12, 102, 4, 'kerennn dan berkualitas', ''),
(13, 101, 5, 'kerennn dan berkualitas', ''),
(14, 100, 5, 'kerennn dan berkualitas', ''),
(15, 99, 2, 'kegedean', ''),
(16, 106, 5, 'oke', ''),
(17, 109, 5, 'bagus sekali', ''),
(18, 110, 5, 'wahhh sangat bagus!!!', ''),
(19, 111, 5, 'terserah ', ''),
(20, 116, 5, 'sesuai ekspektasi', ''),
(21, 118, 5, 'baguss', ''),
(22, 120, 5, 'wale mantap!', ''),
(23, 127, 5, '', ''),
(24, 130, 5, 'sesuai foto, mantap', '');

-- --------------------------------------------------------

--
-- Table structure for table `setting_apikey`
--

CREATE TABLE `setting_apikey` (
  `id_apikey` int(11) NOT NULL,
  `google_client_id` text NOT NULL,
  `google_client_secret` text NOT NULL,
  `midtrans_client_key` text NOT NULL,
  `midtrans_server_key` text NOT NULL,
  `rajaongkir_key` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `setting_apikey`
--

INSERT INTO `setting_apikey` (`id_apikey`, `google_client_id`, `google_client_secret`, `midtrans_client_key`, `midtrans_server_key`, `rajaongkir_key`) VALUES
(1, '667755539556-t91a5rigvs8sjn8ov5ob449uofahvjdf.apps.googleusercontent.com', 'egHGBI5BcztK-VbZNeCEHHTW', 'SB-Mid-client-L3PzuhBtGccIel0K', 'SB-Mid-server-gjNMmpXhgUWPGf4WYLPpG-bq', '88ded65c3b42ff878ab61ec48d3f0976');

-- --------------------------------------------------------

--
-- Table structure for table `setting_email`
--

CREATE TABLE `setting_email` (
  `id` int(11) NOT NULL,
  `email_notif` text NOT NULL,
  `host_smtp` varchar(100) NOT NULL,
  `port_smtp` int(11) NOT NULL,
  `username_smtp` varchar(100) NOT NULL,
  `password_smtp` varchar(100) NOT NULL,
  `setfrom_smtp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `setting_email`
--

INSERT INTO `setting_email` (`id`, `email_notif`, `host_smtp`, `port_smtp`, `username_smtp`, `password_smtp`, `setfrom_smtp`) VALUES
(1, 'support@401xd.com', 'mail.401xd.com', 465, 'support@401xd.com', 'PASSWORD EMAIL ANDA', 'WALE MARKET PLACE');

-- --------------------------------------------------------

--
-- Table structure for table `setting_footer`
--

CREATE TABLE `setting_footer` (
  `id_fo` int(11) NOT NULL,
  `name_social` text NOT NULL,
  `icon_social` text NOT NULL,
  `link_social` text NOT NULL,
  `status_social` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `setting_footer`
--

INSERT INTO `setting_footer` (`id_fo`, `name_social`, `icon_social`, `link_social`, `status_social`) VALUES
(1, 'Facebook', '<i class=\"ri-facebook-box-fill\"></i>', 'https://facebook.com/Natasha', ''),
(2, 'Instagram', '<i class=\"ri-instagram-fill\"></i>', 'https://instagram.com/ntshwhitney', ''),
(3, 'Whatsapp', '<i class=\"ri-whatsapp-fill\"></i>', 'https://wa.me/62895335112375', ''),
(5, 'YouTube', '<i class=\"ri-youtube-fill\"></i>', 'https://youtube.com/', '');

-- --------------------------------------------------------

--
-- Table structure for table `setting_header`
--

CREATE TABLE `setting_header` (
  `id_hs` int(11) NOT NULL,
  `logo` text NOT NULL,
  `title_name` text NOT NULL,
  `placeholder_search` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `setting_header`
--

INSERT INTO `setting_header` (`id_hs`, `logo`, `title_name`, `placeholder_search`) VALUES
(1, 'wale.png', 'WALE', 'Search....');

-- --------------------------------------------------------

--
-- Table structure for table `setting_lokasi`
--

CREATE TABLE `setting_lokasi` (
  `id` int(11) NOT NULL,
  `provinsi` text NOT NULL,
  `kota` text NOT NULL,
  `provinsi_id` int(11) NOT NULL,
  `kota_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `setting_lokasi`
--

INSERT INTO `setting_lokasi` (`id`, `provinsi`, `kota`, `provinsi_id`, `kota_id`) VALUES
(1, 'Sulawesi Utara', 'Minahasa', 1, 114);

-- --------------------------------------------------------

--
-- Table structure for table `setting_pembayaran`
--

CREATE TABLE `setting_pembayaran` (
  `id` int(11) NOT NULL,
  `tipe` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `setting_pembayaran`
--

INSERT INTO `setting_pembayaran` (`id`, `tipe`, `status`) VALUES
(1, 'Midtrans', 'active'),
(2, 'Manual', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_promo`
--
ALTER TABLE `banner_promo`
  ADD PRIMARY KEY (`idbanner`);

--
-- Indexes for table `flashsale`
--
ALTER TABLE `flashsale`
  ADD PRIMARY KEY (`id_fs`);

--
-- Indexes for table `iklan`
--
ALTER TABLE `iklan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`idinvoice`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lokasi_user`
--
ALTER TABLE `lokasi_user`
  ADD PRIMARY KEY (`idlokasi`);

--
-- Indexes for table `nomor_rekening`
--
ALTER TABLE `nomor_rekening`
  ADD PRIMARY KEY (`idnorek`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id_notif`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`idrating`);

--
-- Indexes for table `setting_apikey`
--
ALTER TABLE `setting_apikey`
  ADD PRIMARY KEY (`id_apikey`);

--
-- Indexes for table `setting_email`
--
ALTER TABLE `setting_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting_footer`
--
ALTER TABLE `setting_footer`
  ADD PRIMARY KEY (`id_fo`);

--
-- Indexes for table `setting_header`
--
ALTER TABLE `setting_header`
  ADD PRIMARY KEY (`id_hs`);

--
-- Indexes for table `setting_lokasi`
--
ALTER TABLE `setting_lokasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting_pembayaran`
--
ALTER TABLE `setting_pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `banner_promo`
--
ALTER TABLE `banner_promo`
  MODIFY `idbanner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `flashsale`
--
ALTER TABLE `flashsale`
  MODIFY `id_fs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `iklan`
--
ALTER TABLE `iklan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `idinvoice` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `lokasi_user`
--
ALTER TABLE `lokasi_user`
  MODIFY `idlokasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `nomor_rekening`
--
ALTER TABLE `nomor_rekening`
  MODIFY `idnorek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id_notif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `idrating` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `setting_apikey`
--
ALTER TABLE `setting_apikey`
  MODIFY `id_apikey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setting_email`
--
ALTER TABLE `setting_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setting_footer`
--
ALTER TABLE `setting_footer`
  MODIFY `id_fo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `setting_header`
--
ALTER TABLE `setting_header`
  MODIFY `id_hs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setting_lokasi`
--
ALTER TABLE `setting_lokasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setting_pembayaran`
--
ALTER TABLE `setting_pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
