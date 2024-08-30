-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Agu 2024 pada 07.12
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dc_absensiv4`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `building`
--

CREATE TABLE `building` (
  `building_id` int(8) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `latitude_longtitude` varchar(150) NOT NULL,
  `radius` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `building`
--

INSERT INTO `building` (`building_id`, `code`, `name`, `address`, `latitude_longtitude`, `radius`) VALUES
(7, '2024/1D4B1/2024-08-2', 'Universitas Darunnajah Jakarta', 'Jl. Ulujami Raya', '-6.247486420256195,106.76264454044393', 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `business_card`
--

CREATE TABLE `business_card` (
  `id` int(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `active` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `business_card`
--

INSERT INTO `business_card` (`id`, `name`, `photo`, `active`) VALUES
(1, 'Thema 1', '2024-08-269e37f400065663a8b96a11b520515158.jpg', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cuty`
--

CREATE TABLE `cuty` (
  `cuty_id` int(11) NOT NULL,
  `employees_id` int(11) NOT NULL,
  `cuty_start` date NOT NULL,
  `cuty_end` date NOT NULL,
  `date_work` date NOT NULL,
  `cuty_total` int(5) NOT NULL,
  `cuty_description` varchar(100) NOT NULL,
  `cuty_status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `employees_code` varchar(35) NOT NULL,
  `employees_nip` varchar(30) NOT NULL,
  `employees_email` varchar(30) NOT NULL,
  `employees_password` varchar(100) NOT NULL,
  `employees_name` varchar(50) NOT NULL,
  `position_id` int(5) NOT NULL,
  `shift_id` int(11) NOT NULL,
  `building_id` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `created_login` datetime NOT NULL,
  `created_cookies` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `employees`
--

INSERT INTO `employees` (`id`, `employees_code`, `employees_nip`, `employees_email`, `employees_password`, `employees_name`, `position_id`, `shift_id`, `building_id`, `photo`, `created_login`, `created_cookies`) VALUES
(29, '2024/7794/SW2024-08-26', '111', 'rektor@darunnajah.ac.id', '48d98aa090960ae9c129ba9f9e67ae25e8f380e89b5e4e92aa1fee0f1271136d', 'Dr. Much Hasan Darojat', 50, 1, 7, '2024-08-265a05dfff7790ce73bbe1b2abf1c41186.gif', '2024-08-26 15:10:41', '31a7236f24a0372dad7c7c8aec8f3b68'),
(30, '2024/BAE6/SW2024-08-26', '112', 'wakilrektor1@darunnajah.ac.id', 'b40b25d4e50ac74de364be8c8f43b4c293105b8d6c50c8f3cd6809ced9598742', 'Hendro Risbiyantoro, M.S.', 49, 1, 7, '2024-08-261446cdff0167dc5f291d2f32ef0fa8ef.gif', '2024-08-26 16:05:50', '-'),
(31, '2024/EFCA/SW2024-08-26', '113', 'wakilrektor2@darunnajah.ac.id', '6d796994571ee51569ecf99cc155781e5231a4dcad83e6b51cc809892adbe2bc', 'Samiyono, M.Pd.', 48, 1, 7, '2024-08-2644a1bf185df464fca374198a3985f71d.gif', '2024-08-26 16:07:13', '-'),
(32, '2024/4A21/SW2024-08-26', '114', 'wakilrektor3@darunnajah.ac.id', '3bc6be7919aa53c300d6364b0943189439eb2017e1cafcbd93c1c4770f8294fb', 'Dr. Muhammad Irfanudin Kurniawan, M.Ag.', 47, 1, 7, '2024-08-26352f6a2b307b3b7a6a842c2bf6b00738.gif', '2024-08-26 16:08:20', '-'),
(33, '2024/58EB/SW2024-08-26', '115', 'sekrektor@darunnajah.ac.id', 'c551c5da83d0bde6411d660ff256e4ce0583180e7b638ad132f3e1cc445252c9', 'Rinaldi Permana Putra, S.Ag.', 46, 1, 7, '2024-08-263d7e3cccd1a0a72445d30e03823a54b7.jpeg', '2024-08-26 16:09:06', '-'),
(34, '2024/B4DE/SW2024-08-26', '116', 'direkturpesma@darunnajah.ac.id', 'cfbe96fda0662acfa6292df6ea7901a0923809b064f113c8731a84ea5899a9e9', 'Dr. KH. Busthomi Ibrohim, M.Ag', 45, 1, 7, '2024-08-26918799f2eca0f6a55a25fdad178a4f94.jpeg', '2024-08-26 16:17:58', '0ff099070dd8baef3efc95cbc6bcdeed'),
(37, '2024/F2D8/SW2024-08-26', '117', 'lpmanas@darunnajah.ac..id', 'd0e6ff01aca6bbcb533fd8b17e49224303285ac2a24f5688420e1d56fe9a0223', 'Anas Fauzi, M.Pd.', 44, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 16:19:27', '-'),
(38, '2024/6360/SW2024-08-26', '118', 'lpmtaufiq@darunnajah.ac.id', '06dac07aeb63828d7bc9ca2c5759172b887ca69a4d1675412d09e537136fba1a', 'Taufiq Ramadhan, M.H.', 44, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 16:20:51', '-'),
(39, '2024/6783/SW2024-08-26', '119', 'lpmfauzan@darunnajah.ac.id', '6ad75bd17dde9cf9c6bfef77d550760df5dcbeeefb1a3edad6d4e5df6d124998', 'Muhammad Fauzan Aziman, Lc.', 44, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 16:21:49', '-'),
(40, '2024/F08E/SW2024-08-26', '120', 'lp2mtowil@darunnajah.ac.id', '8c32b72d5a4ccdabf58f8ffe2bce955c9b2d166519abf8bb7e7a48ffd87a9d03', 'Muhammad Towil Akhirudin, M.Pd', 43, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 16:23:22', '-'),
(41, '2024/138C/SW2024-08-26', '121', 'lp2mrokimin@darunnajah.ac.id', 'eb3ec18676f26059fdbd249daa4029ec1407ca59af4b0ed8a18bbb62e390bbaa', 'Rokimin, M.Pd.', 43, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 16:24:23', '-'),
(42, '2024/126F/SW2024-08-26', '122', 'birowakaf@darunnajah.ac.id', 'bb6229703a656a8dc27d32ca696b01e20e52f392fab62bcf06e32a58f751fa38', 'Dr. Abudzar Al Ghifari.', 42, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 16:26:03', '-'),
(43, '2024/3BDF/SW2024-08-26', '123', 'birowakafdeli@darunnajah.ac.id', '4ba6c5a234ccd38e5305cb74315a6cf46b694448376f83f96d2eafcca532a8e8', 'Deli Amarta, S.Pd', 42, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 16:26:56', '-'),
(44, '2024/AAFB/SW2024-08-26', '124', 'udnpress@darunnajah.ac.id', '046fd428843d84a5ab1dd6b3554f8fa1b835ac20bfc987f106af36e5fce99bee', 'Bayu Arif Mahendra, S.H.', 41, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 16:29:18', '-'),
(45, '2024/8790/SW2024-08-26', '125', 'puslahtaija@darunnajah.ac.id', 'e09abce8e9537df0317b45ddb08dbbbbba0517123b76829c7cb696ad22dede60', 'Ija Sudija, S.Kom', 40, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 16:30:28', '-'),
(46, '2024/D28E/SW2024-08-26', '126', 'puslahtawildan@darunnajah.ac.i', '7735c194f5190d66bcd6e11a1f365ddf6746d20dec37c93f9017de9e429892b6', 'Wildan Sifaudin, S.E.', 40, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 16:31:41', '-'),
(47, '2024/544A/SW2024-08-26', '127', 'puslahtamasruin@darunnajah.ac.', '71949fa007b152a4a7dd2d3a576f757a94080848fd72f48c858c2ba271725e08', 'Masruin Mas’ad, S.Kom.', 40, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 16:32:56', '-'),
(48, '2024/D9D9/SW2024-08-26', '128', 'sdmasro@darunnajah.ac.id', '8f3f653260d9f8e73ed0fbab2102e4932ffcc33e6ca11a301734edf8057b73b6', 'Asro, S.H.I', 15, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 16:34:11', '-'),
(49, '2024/2785/SW2024-08-26', '129', 'bptihakim@darunnajah.ac.id', '9c1b414611430344eb8eb0f859f42b6f0727d7431df28880e9bc661f043a09c6', 'Nurhakim, S.Pd.I.', 38, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 16:35:46', '-'),
(50, '2024/8C33/SW2024-08-26', '130', 'bptifarhan@darunnajah.ac.id', 'f688a6e6ac6b2b3e69581278320d6dfea85947548164e1c527fe75108731139f', 'Ahmad Farhan, S.Kom', 38, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-27 14:11:58', 'b8fc3016788eaf96db0cb2827a8e2b43'),
(51, '2024/BAA8/SW2024-08-26', '131', 'sarpas@darunnajah.ac.id', '8313786499ca74ebba549cdb58bb8373cfdc3c3990289599b7c2d653409c8634', 'Bustaman Aluie, S.H. ', 37, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 16:39:37', '-'),
(52, '2024/4AA6/SW2024-08-26', '132', 'sarpasrido@darunnajah.ac.id', 'a2dadcf44bae30670b16eee293f008328d8c0864ac116e6ae54b99e1d151499a', 'Muhamad Rido, S.Kom', 37, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 16:40:25', '-'),
(53, '2024/D67C/SW2024-08-26', '133', 'paulymarketing@darunnajah.ac.i', '79ef58dd9d544737419e6afaad5f38076197674470be4dc14f73c74489ef4aba', 'Pauly Demanda, S.Pd.', 36, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 16:41:21', '-'),
(54, '2024/4CA2/SW2024-08-26', '134', 'kalismarketing@darunnajah.ac.i', '8e9b1870de0181c98f90cba439b7b6e1e7c73840f85389f5ec1779277a73cc97', 'Kalistya Rizki Pratondo, S. Kom, M. M.', 36, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 16:42:30', '-'),
(55, '2024/245F/SW2024-08-26', '135', 'yogimarketing@darunnajah.ac.id', '4cdf2d1464b5e6e935f74356e075f068ed019fad432ea229cafb96f1a99b0080', 'Yogi', 36, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 16:43:33', '-'),
(56, '2024/6096/SW2024-08-26', '136', 'pusatbahasa@darunnajah.ac.id', '8978b3fc279de2b59ec58a4ebce5403e8c422fc4765582f281ec8fc8927e9f22', 'Nesa Novrizal, S.Pd.', 35, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 16:45:04', '-'),
(57, '2024/D759/SW2024-08-26', '137', 'kemahasiswaanroyyan@darunnajah', '7b87d2d5ee39f2785e70372c26296ded0698fd389b075d1911b09d905bbefe36', 'Royyan Fakhrudin Rifai, S.E., M.M.', 34, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 16:47:14', '-'),
(58, '2024/BC6B/SW2024-08-26', '138', 'kemahasiswaanagan@darunnajah.a', '7428cee73078fbc7c5ec641e06ecba7b081d5f902de3ff3a5cff0c2f7064f626', 'Agan Priam Bagus, S.Pd', 34, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 16:48:18', '-'),
(59, '2024/C1D9/SW2024-08-26', '139', 'kerjasamarivaldo@darunnajah.ac', 'd793e70ad9db246a1532a5e157958ae17008e5d5e677860a84d02da8e70be631', 'Rivaldo Dimas Gunawan, S.I.Kom', 33, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 16:49:28', '-'),
(60, '2024/6430/SW2024-08-26', '140', 'kerjasamaikhwan@darunnajah.ac.', '5a0517a8ea17f32e2874e6888d6dfff16d51b65bbf06854096b0d8448aa7c30d', 'Muhammad Ikhwan', 33, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 20:09:39', '-'),
(61, '2024/F0EB/SW2024-08-26', '141', 'kaprodibisdig@darunnajah.ac.id', '7b8d7292f2091786211a1b7647229c8e3dd68faaf38019e9d56eeb8a01c33707', 'Rahman Saktiawan, M.Psi.', 32, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 20:10:38', '-'),
(62, '2024/BB75/SW2024-08-26', '142', 'Biro Publikasi dan Dokumentasi', 'e5879a4c298496a3e8ddeb0f9fb14f4246f99233ac715692548444514d8c3da8', 'Anas Rizal Muslih, S.I.Kom.', 31, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 20:12:27', '-'),
(63, '2024/70EE/SW2024-08-26', '143', 'kaprodimpi@darunnajah.ac.id', '8c9b126f3a67ad2604390154b92b8d09f8b60a87b0fffbeeaf9a6bbd4bbe83ea', 'Idham, M.Pd.', 30, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 20:15:42', '-'),
(64, '2024/F4C9/SW2024-08-26', '144', 'sekmpi@darunnajah.ac.id', '48c95fe3c621b2ef469c170b6a597609c7b6d01b8b1999b2a6fb5281c322a8e9', 'Muchammad Ibnu Muzakir, M.Pd.', 29, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 20:16:50', '-'),
(65, '2024/CAA1/SW2024-08-26', '145', 'kaprodihki@darunnajah.ac.id', '23c46e5eb76cec424c541271e17be82a70e93726a6f9a3be9237d44423c7de9f', 'H. Azmi Islami, M.Pd.', 28, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 20:17:29', '-'),
(66, '2024/34E7/SW2024-08-26', '146', 'sekprodihki@darunnajah.ac.id', 'ed3d87da77c38d10777e22891adadf9b8982b6275e949733001616069e0d6059', 'Muhamad Arief Al Hakim, M.H.', 27, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 20:18:27', '-'),
(67, '2024/BEC5/SW2024-08-26', '147', 'kaprodikwh@darunnajah.ac.id', 'e54b9619db1fd5b63c36c904500ab880fd9c6ed75147f842c131b90d7eda4063', 'Mastur, M.M.', 26, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 20:20:28', '-'),
(68, '2024/7D15/SW2024-08-26', '148', 'sekprodikwh@darunnajah.ac.id', '2f2854f60cfcec854f47fd2e72c311123bb0b4e0bf1a0c42a096efe2598bb802', 'Zaki Ahmad Farid, M.Pd.', 26, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 20:22:36', '-'),
(69, '2024/89AE/SW2024-08-26', '149', 'sekprodiadbis@darunnajah.ac.id', 'c1b5140d07970038cdef699e87d337149b13c4e89de053d962f87b59a1f6d64f', 'Zakiyuddin, S.Pd.', 24, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 20:24:36', '-'),
(70, '2024/FE5B/SW2024-08-26', '150', 'inkubatorbisnis1@darunnajah.ac', '2f7fcf5f96ba39cc822ecd4c8a445962b5e0d6450a53f4559ea520f953f6391f', 'Zakiyanto Arief, S.Ip.', 23, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 20:25:54', '-'),
(71, '2024/98FE/SW2024-08-26', '151', 'inkubatorbisnis2@darunnajah.ac', 'c45aa4b9ce9eb7121821d9203925770848da00eb512d7723be1e23d066a424e7', 'Rifaldi Nurul Akbar, S.M.', 23, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 20:27:08', '-'),
(72, '2024/54C3/SW2024-08-26', '152', 'inkubatorbisnis3@darunnajah.ac', 'd87369125c3242930264b9b81144686281fe01a93987c80975fb42f74c79b48e', 'Wiranto Karunia Putra, S.E.', 23, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 20:27:56', '-'),
(73, '2024/73EF/SW2024-08-26', '153', 'inkubatorbisnis4@darunnajah.ac', 'd81143b759f0e20a58ec59ff5cea6ec0ae3607d01c0580f8b62691432784d107', 'Doni Ulul Albab', 23, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 20:28:58', '-'),
(74, '2024/4162/SW2024-08-26', '154', 'seksainsaktuaria@darunnajah.ac', '4a7986b780fae0d7e657796b440bb428d9e8b3e49c2799ab958bacdd778f9207', 'Azrul Azmani, S.Pd.I.', 22, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 20:30:12', '-'),
(75, '2024/2C6F/SW2024-08-26', '155', 'dekansaintek@darunnajah.ac.id', 'b43a69f15db4a785d6d8bae72e093c61c4870a0d27152cf96d40cc3982129728', 'Hasim Abdul Jamil, M.Pd.', 21, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 20:31:18', '-'),
(76, '2024/857E/SW2024-08-26', '156', 'kaprodisaintek@darunnajah.ac.i', '433cca1ead1c8982243bd2932fe75186d1e3709c96ec27c2afaee82d8dd2fd50', 'Supriadi Panggabean, S.Kom,. M.Pd,. M.Kom', 20, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 20:32:06', '-'),
(78, '2024/59C4/SW2024-08-26', '158', 'lp2msaintek@darunnajah.ac.id', '7b87d2d5ee39f2785e70372c26296ded0698fd389b075d1911b09d905bbefe36', 'Royyan Amigo, M. Mat', 18, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 20:34:07', '-'),
(79, '2024/77D1/SW2024-08-26', '159', 'itcenter@darunnajah.ac.id', 'f8ccee253d2bfdbf322fe2c0f1b4169783876b347f852b40a55169e7fda5c2a2', 'Andri Lesmana, S.Kom', 17, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 20:35:10', '-'),
(80, '2024/06E5/SW2024-08-26', '160', 'biroakademik1@darunnajah.ac.id', '4d23c1aba40877a9f974765e29466f1d92460713ad2cfb30ad71b4aa1bc43817', 'Siti Nurhidayah, S.Pd.I', 16, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 20:36:17', '-'),
(81, '2024/DDDA/SW2024-08-26', '161', 'biroakademik2@darunnajah.ac.id', 'e0650df5a4e450de73c9f0734b0856d6e77e9011bf9d3eb53def5fbbd84b2166', 'Mutmainah, M.M.', 16, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 20:37:57', '-'),
(82, '2024/B6D5/SW2024-08-26', '162', 'sdmkhodijah@darunnajah.ac.id', 'b671e0981b0521d7f4a86579af1debaf497f0f090f83a30b36d45e5cd0db19d7', 'Khodijah, M.M.', 15, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 20:39:16', '-'),
(83, '2024/9F18/SW2024-08-26', '163', 'perpustakaan@darunnajah.ac.id', 'c919b49710b897adc6a4b60e743105bf43662ada91b7426a242d356940d486a2', 'Alfiani Syahidah Rohmah', 14, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 20:40:14', '-'),
(84, '2024/7F64/SW2024-08-26', '164', 'birokeuangan@darunnajah.ac.id', 'f7f0a877785823bae1217655e8213adbd1309c96416a98028d13027b7d4aa5d2', 'Ida Fitria, S.Pd.', 13, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 20:41:15', '-'),
(85, '2024/A439/SW2024-08-26', '165', 'birokeuangan1@darunnajah.ac.id', '102890c8e43dc656a0bf4c74bc496309025b9716e02f02aceda141ae5ca044fe', 'Bella Gabriella Adiba, S.M.', 13, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 20:41:49', '-'),
(86, '2024/64A1/SW2024-08-26', '166', 'sekprodirpl@darunnajah.ac.id', '0e76702855848b50e6285f39bb05cb439009d341729adbbde900e18bbc57481e', 'Ledi Diniyatullah, S.Kom', 12, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 20:43:03', '-'),
(87, '2024/D374/SW2024-08-26', '167', 'biroalumi@darunnajah.ac.id', '32dd29659dabc23bdd5a7216f88ee630d3bb98df75067ae5e846d0331250be43', 'Maulidya Benita Putri, S.Pd', 11, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 20:43:48', '-'),
(88, '2024/2160/SW2024-08-26', '168', 'dekanfai@darunnajah.ac.id', 'cb2f39d94e2718d1935d44ee0019d09b7f797368378295e940c783477629f20b', 'Duna Izfanna, M.Ed.Psy., Ph.D', 10, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 20:44:40', '-'),
(89, '2024/2FB4/SW2024-08-26', '169', 'kaprodipiaud@darunnajah.ac.id', '4d42fc5803e5993dc5780dff1e44ac03f873b84536528671ec4cc61c887a95bb', 'Pipit Nuri Mulyaningtias, M.Psi', 9, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 20:45:47', '-'),
(90, '2024/4E93/SW2024-08-26', '170', 'sekprodipiaud@darunnajah.ac.id', '8ae2831c06a056a86f3176eba4a95dff2f3f7c338483954b497995ea7393a1b3', 'Delpa Firdaus, M.H.', 8, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 20:46:38', '-'),
(91, '2024/FAA0/SW2024-08-26', '171', 'kaprodisainsaktuaria@darunnaja', 'f587f88a84e4dbbe1ddd4f7310d91799a8a080dbe256bf7b103b05e48b26a311', 'Ani Nuraini, M.Pd.', 7, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 20:47:57', '-'),
(92, '2024/55DF/SW2024-08-26', '172', 'kaprodiadbis@darunnajah.ac.id', 'fee9973bf7630d651dd00bf305ef548627dae5dbfd2a05f0ef9cd23c2e7a32be', 'Rizka Fajrina, M.M.', 6, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 20:48:57', '-'),
(93, '2024/6B55/SW2024-08-26', '173', 'sekprodibisdig@darunnajah.ac.i', '1968dab148b8ee44c5c6e4b38a2b8df044e0097bc61e1cb21d4affdef13407b5', 'Soraya Aulia, S.E.', 5, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 20:49:49', '-'),
(94, '2024/0F97/SW2024-08-26', '174', 'biro admisi', '26cd466c81a26e3a28d85dcbb7196974a4d73479acb3bcd332e3660bca9c89fb', 'Qurrota A yuna Itsnaini, S.Kom.', 4, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 20:50:35', '-'),
(95, '2024/5A2D/SW2024-08-26', '175', 'lp2mbisnis@darunnajah.ac.id', 'b34a7ec4069c85f6474bba2ce638e2f9a213a3ee17f11bfd5b09f6cd2420d3e9', 'Anggita Nurcahyani, S.E., M.E., CAP', 3, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 20:51:26', '-'),
(96, '2024/3EA3/SW2024-08-26', '176', 'halalcenter@darunnajah.ac.id', '9b4c8b9feae407fa22a12da22f8568a54faedaa164fd2a32811479e41a613274', 'Sesriati, S.Pd', 2, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 20:52:38', '-'),
(97, '2024/7B8C/SW2024-08-26', '177', 'staffai@darunnajah.ac.id', '105e933e2b1f04a3238e52579b58d589e429cd7bb01b1cf235191acf728aea9c', 'Elyana, S.Pd', 1, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-26 20:53:47', '-'),
(98, '2024/35FE/SW2024-08-26', '157', 'sekprodisains@darunnajah.ac.id', 'a535e673a1bdd7d44470d4348887f1eb1517804001a496d677595b23b7b7f759', 'Ahmad Mubasir, S.Pd.', 19, 1, 7, '2024-08-269e37f400065663a8b96a11b520515158.jpg', '2024-08-27 14:03:09', 'f1b29fd7b60bb9e72e9097942fe4ae40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `holiday`
--

CREATE TABLE `holiday` (
  `holiday_id` int(11) NOT NULL,
  `holiday_date` date NOT NULL,
  `description` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permission`
--

CREATE TABLE `permission` (
  `permission_id` int(11) NOT NULL,
  `employees_id` int(11) NOT NULL,
  `permission_name` varchar(35) NOT NULL,
  `permission_date` date NOT NULL,
  `permission_date_finish` date NOT NULL,
  `permission_description` text NOT NULL,
  `files` varchar(150) NOT NULL,
  `type` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `position`
--

CREATE TABLE `position` (
  `position_id` int(5) NOT NULL,
  `position_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `position`
--

INSERT INTO `position` (`position_id`, `position_name`) VALUES
(1, 'Staf Fakultas Agama Islam'),
(2, 'Halal Center'),
(3, 'LP2M Fakultas Bisnis'),
(4, 'Biro Admisi'),
(5, 'Sekprodi Bisnis Digital'),
(6, 'Kaprodi Adm. Bisnis'),
(7, 'Kaprodi Sains Aktuaria'),
(8, 'Sekprodi PIAUD'),
(9, 'Kaprodi PIAUD'),
(10, 'Dekan Fakultas Agama Islam '),
(11, 'Biro Alumni dan Pusat Karir'),
(12, 'Sekprodi RPL'),
(13, 'Biro Administrasi dan Keuangan'),
(14, 'Perpustakaan'),
(15, 'Biro Sumber Daya Manusia'),
(16, 'Biro Administrasi Akademik'),
(17, 'IT Center'),
(18, 'LP2M Fakultas Saintek'),
(19, 'Sekprodi Saintek'),
(20, 'Kaprodi Saintek'),
(21, 'Dekan Sains dan Teknologi'),
(22, 'Sekprodi Sains Aktuaria'),
(23, 'Inkubator Bisnis'),
(24, 'Sekprodi Administrasi Bisnis'),
(25, 'Sekprodi Kewirausahaan'),
(26, 'Kaprodi Kewirausahaan'),
(27, 'Sekprodi Hukum Keluarga Islam'),
(28, 'Kaprodi Hukum Keluarga Islam'),
(29, 'Sekprodi MPI'),
(30, 'Kaprodi MPI'),
(31, 'Biro Publikasi dan Dokumentasi'),
(32, 'Kaprodi Bisnis Digital'),
(33, 'Biro Kerjasama'),
(34, 'Biro Kemahasiswaan'),
(35, 'Pusat Studi Bahasa dan Budaya'),
(36, 'Biro Marketing'),
(37, 'Biro Perencanaan Pembangunan'),
(38, 'BPTI'),
(40, 'Biro PUSLAHTA'),
(41, 'Universitas Darunnajah Press'),
(42, 'Pusat Pengembangan Pesantren '),
(43, 'LP2M'),
(44, 'Lembaga Penjaminan Mutu'),
(45, 'Direktur Pesantren Mahasiswa'),
(46, 'Sekretaris Rektor'),
(47, 'Wakil Rektor III'),
(48, 'Wakil Rektor II'),
(49, 'Wakil Rektor I'),
(50, 'Rektor Universitas Darunnajah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `presence`
--

CREATE TABLE `presence` (
  `presence_id` int(11) NOT NULL,
  `employees_id` int(11) NOT NULL,
  `presence_date` date NOT NULL,
  `time_in` time NOT NULL,
  `time_out` time NOT NULL,
  `present_id` int(11) NOT NULL COMMENT 'Masuk,Pulang,Tidak Hadir',
  `latitude_longtitude_in` varchar(100) NOT NULL,
  `latitude_longtitude_out` varchar(100) NOT NULL,
  `information` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `presence`
--

INSERT INTO `presence` (`presence_id`, `employees_id`, `presence_date`, `time_in`, `time_out`, `present_id`, `latitude_longtitude_in`, `latitude_longtitude_out`, `information`) VALUES
(28, 6, '2022-07-15', '14:54:44', '00:00:00', 1, '-5.3973627,105.2546003', '', ''),
(29, 27, '2022-10-21', '14:29:17', '21:34:13', 1, '-5.4027714,105.2601946', '-5.3971396,105.2667887', ''),
(30, 27, '2023-10-03', '14:34:53', '00:00:00', 1, '-5.390336,105.299968', '', ''),
(31, 28, '2023-10-03', '14:41:38', '00:00:00', 1, '-5.3929889,105.2999419', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `present_status`
--

CREATE TABLE `present_status` (
  `present_id` int(6) NOT NULL,
  `present_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `present_status`
--

INSERT INTO `present_status` (`present_id`, `present_name`) VALUES
(1, 'Hadir'),
(2, 'Sakit'),
(3, 'Izin'),
(4, 'Dinas Luar Kota'),
(5, 'Dinas Dalam Kota');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shift`
--

CREATE TABLE `shift` (
  `shift_id` int(11) NOT NULL,
  `shift_name` varchar(20) NOT NULL,
  `time_in` time NOT NULL,
  `time_out` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `shift`
--

INSERT INTO `shift` (`shift_id`, `shift_name`, `time_in`, `time_out`) VALUES
(1, 'FULL TIME', '08:00:00', '16:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sw_site`
--

CREATE TABLE `sw_site` (
  `site_id` int(4) NOT NULL,
  `site_url` varchar(100) NOT NULL,
  `site_name` varchar(50) NOT NULL,
  `site_company` varchar(30) NOT NULL,
  `site_manager` varchar(30) NOT NULL,
  `site_director` varchar(30) NOT NULL,
  `site_phone` char(12) NOT NULL,
  `site_address` text NOT NULL,
  `site_description` text NOT NULL,
  `site_logo` varchar(50) NOT NULL,
  `site_email` varchar(30) NOT NULL,
  `site_email_domain` varchar(50) NOT NULL,
  `gmail_host` varchar(50) NOT NULL,
  `gmail_username` varchar(50) NOT NULL,
  `gmail_password` varchar(50) NOT NULL,
  `gmail_port` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sw_site`
--

INSERT INTO `sw_site` (`site_id`, `site_url`, `site_name`, `site_company`, `site_manager`, `site_director`, `site_phone`, `site_address`, `site_description`, `site_logo`, `site_email`, `site_email_domain`, `gmail_host`, `gmail_username`, `gmail_password`, `gmail_port`) VALUES
(1, 'http://localhost/absensi-v4-radius-oktober-2022', 'Absensi Universitas Darunnajah', 'UDN', 'UDN', 'UDN', '0123456789', 'Ulujami, Universitas Darunnajah Jakarta', 'Absensi', 'univjpg.jpg', 'afaan2567@gmail.com', 'info@domain.com', 'smtp.gmail.com', 'emailanda@gmail.com', 'passwordemailserver', '465');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fullname` varchar(40) NOT NULL,
  `registered` datetime NOT NULL,
  `created_login` datetime NOT NULL,
  `last_login` datetime NOT NULL,
  `session` varchar(100) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `browser` varchar(30) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `username`, `email`, `password`, `fullname`, `registered`, `created_login`, `last_login`, `session`, `ip`, `browser`, `level`) VALUES
(1, 'admin', 'DigitalCenter@gmail.com', '88222999e01f1910a5ac39fa37d3b8b704973d503d0ff7c84d46305b92cfa0f6', 'UNIV', '2021-02-03 10:22:00', '2024-08-27 14:07:50', '2024-08-27 14:06:51', '-', '1', 'Google Crome', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_level`
--

CREATE TABLE `user_level` (
  `level_id` int(4) NOT NULL,
  `level_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_level`
--

INSERT INTO `user_level` (`level_id`, `level_name`) VALUES
(1, 'Administrator'),
(2, 'Operator');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `building`
--
ALTER TABLE `building`
  ADD PRIMARY KEY (`building_id`);

--
-- Indeks untuk tabel `business_card`
--
ALTER TABLE `business_card`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cuty`
--
ALTER TABLE `cuty`
  ADD PRIMARY KEY (`cuty_id`);

--
-- Indeks untuk tabel `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `holiday`
--
ALTER TABLE `holiday`
  ADD PRIMARY KEY (`holiday_id`);

--
-- Indeks untuk tabel `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indeks untuk tabel `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`position_id`);

--
-- Indeks untuk tabel `presence`
--
ALTER TABLE `presence`
  ADD PRIMARY KEY (`presence_id`);

--
-- Indeks untuk tabel `present_status`
--
ALTER TABLE `present_status`
  ADD PRIMARY KEY (`present_id`);

--
-- Indeks untuk tabel `shift`
--
ALTER TABLE `shift`
  ADD PRIMARY KEY (`shift_id`);

--
-- Indeks untuk tabel `sw_site`
--
ALTER TABLE `sw_site`
  ADD PRIMARY KEY (`site_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeks untuk tabel `user_level`
--
ALTER TABLE `user_level`
  ADD PRIMARY KEY (`level_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `building`
--
ALTER TABLE `building`
  MODIFY `building_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `business_card`
--
ALTER TABLE `business_card`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `cuty`
--
ALTER TABLE `cuty`
  MODIFY `cuty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT untuk tabel `holiday`
--
ALTER TABLE `holiday`
  MODIFY `holiday_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `permission`
--
ALTER TABLE `permission`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `position`
--
ALTER TABLE `position`
  MODIFY `position_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `presence`
--
ALTER TABLE `presence`
  MODIFY `presence_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `present_status`
--
ALTER TABLE `present_status`
  MODIFY `present_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `shift`
--
ALTER TABLE `shift`
  MODIFY `shift_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `sw_site`
--
ALTER TABLE `sw_site`
  MODIFY `site_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user_level`
--
ALTER TABLE `user_level`
  MODIFY `level_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
