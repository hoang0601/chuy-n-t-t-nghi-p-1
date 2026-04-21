-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Server version: 8.0.30
-- PHP Version: 8.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ilyoushoesshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `danh_gia`
--

CREATE TABLE `danh_gia` (
  `id_danh_gia` int UNSIGNED NOT NULL,
  `id_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten_danh_gia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `danh_gia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `danh_gia_binh_luan` longtext COLLATE utf8mb4_unicode_ci,
  `id_giay` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `danh_gia`
--

INSERT INTO `danh_gia` (`id_danh_gia`, `id_user`, `ten_danh_gia`, `danh_gia`, `danh_gia_binh_luan`, `id_giay`, `created_at`, `updated_at`) VALUES
(1, '9', 'nguyễn văn a', '4.8', 'không ngon đâu ae ạ không nên mua', '5', '2026-04-18 03:35:05', '2026-04-18 03:35:45'),
(2, '10', 'nguyễn văn b', '4.5', 'ngon', '4', '2026-04-18 03:49:29', '2026-04-18 03:51:41');

-- --------------------------------------------------------

--
-- Table structure for table `don_hang`
--

CREATE TABLE `don_hang` (
  `id_don_hang` int UNSIGNED NOT NULL,
  `ten_nguoi_nhan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dia_chi_nhan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ghi_chu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tong_tien` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hinh_thuc_thanh_toan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hoa_don` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `don_hang`
--

INSERT INTO `don_hang` (`id_don_hang`, `ten_nguoi_nhan`, `sdt`, `dia_chi_nhan`, `ghi_chu`, `tong_tien`, `hinh_thuc_thanh_toan`, `hoa_don`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Văn Hoàng', '0394562068', 'mỹ đình 2', 'giao nhanh giúp mình nhé', '1,760,400 VNĐ', 'Sau khi nhận hàng', 'a:2:{i:5;a:5:{s:10:\"hinh_anh_1\";s:10:\"giay21.jpg\";s:8:\"ten_giay\";s:17:\"Adidas STAN SMITH\";s:7:\"don_gia\";s:7:\"1290000\";s:8:\"so_luong\";s:1:\"1\";s:10:\"khuyen_mai\";s:2:\"10\";}i:2;a:5:{s:10:\"hinh_anh_1\";s:9:\"giay4.jpg\";s:8:\"ten_giay\";s:12:\"Nike Joma IC\";s:7:\"don_gia\";s:6:\"666000\";s:8:\"so_luong\";s:1:\"1\";s:10:\"khuyen_mai\";s:2:\"10\";}}', '2024-11-11 10:38:12', '2024-11-11 10:38:12'),
(2, 'nguyễn văn a', '0123456789', 'mỹ đình 2', 'dfd', '1,161,000 VNĐ', 'Sau khi nhận hàng', 'a:1:{i:5;a:5:{s:10:\"hinh_anh_1\";s:10:\"giay21.jpg\";s:8:\"ten_giay\";s:17:\"Adidas STAN SMITH\";s:7:\"don_gia\";s:7:\"1290000\";s:8:\"so_luong\";s:1:\"1\";s:10:\"khuyen_mai\";s:2:\"10\";}}', '2024-11-12 01:25:06', '2024-11-12 01:25:06'),
(3, 'Nguyễn Văn Hoàng', '0394562068', 'dfd', 'fsdfsd', '699,000 VNĐ', 'Sau khi nhận hàng', 'a:1:{i:10;a:5:{s:10:\"hinh_anh_1\";s:10:\"giay17.jpg\";s:8:\"ten_giay\";s:12:\"CNVR-WZ87_V1\";s:7:\"don_gia\";s:6:\"699000\";s:8:\"so_luong\";s:1:\"1\";s:10:\"khuyen_mai\";s:1:\"0\";}}', '2024-11-12 01:36:06', '2024-11-12 01:36:06'),
(4, 'nguyễn văn b', '0399699399', 'ssdsdfdf', 'dáddsff df', '1,431,000 VNĐ', 'SCB', 'a:1:{i:4;a:5:{s:10:\"hinh_anh_1\";s:10:\"giay23.jpg\";s:8:\"ten_giay\";s:19:\"Adidas PUREBOOST 21\";s:7:\"don_gia\";s:7:\"1590000\";s:8:\"so_luong\";s:1:\"1\";s:10:\"khuyen_mai\";s:2:\"10\";}}', '2024-11-12 03:48:50', '2024-11-12 03:48:50');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giay`
--

CREATE TABLE `giay` (
  `id_giay` int UNSIGNED NOT NULL,
  `ten_giay` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten_loai_giay` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten_thuong_hieu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mo_ta` longtext COLLATE utf8mb4_unicode_ci,
  `don_gia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `so_luong` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hinh_anh_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hinh_anh_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hinh_anh_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hinh_anh_4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ten_khuyen_mai` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `so_luong_mua` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giay`
--

INSERT INTO `giay` (`id_giay`, `ten_giay`, `ten_loai_giay`, `ten_thuong_hieu`, `mo_ta`, `don_gia`, `so_luong`, `hinh_anh_1`, `hinh_anh_2`, `hinh_anh_3`, `hinh_anh_4`, `ten_khuyen_mai`, `so_luong_mua`, `created_at`, `updated_at`) VALUES
(1, 'NMD R2', 'Sandanl', 'Gucci', '<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>', '1200000', '100', 'giay7.jpg', 'giay7.jpg', 'giay7.jpg', 'giay7.jpg', 'Ngày lễ', '0', '2024-11-01 07:59:26', '2024-11-12 01:46:20'),
(2, 'Nike Joma IC', 'Thể thao', 'Nike', '<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>', '666000', '100', 'giay5.jpg', 'giay6.jpg', 'giay7.jpg', 'giay8.jpg', 'Mới ra mắt', '1', '2024-11-12 07:59:26', '2024-11-12 01:28:03'),
(3, 'The Nike Premier II', 'Sneaker', 'Nike', '<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>', '999000', '100', 'giay9.jpg', 'giay10.jpg', 'giay11.jpg', 'giay12.jpg', 'Ngày lễ', '0', '2024-12-12 10:21:31', '2024-11-12 01:28:24'),
(4, 'Adidas PUREBOOST 21', 'Thể thao', 'Adidas', '<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>', '1590000', '100', 'giay23.jpg', 'giay8.jpg', 'giay22.jpg', 'giay10.jpg', 'Mới ra mắt', '1', '2024-11-12 07:59:26', '2024-11-12 03:48:50'),
(5, 'Adidas STAN SMITH', 'Thể thao', 'Adidas', '<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>', '1290000', '100', 'giay21.jpg', 'giay21.jpg', 'giay21.jpg', 'giay21.jpg', 'Mới ra mắt', '2', '2024-12-12 10:21:31', '2024-11-12 01:25:06'),
(6, 'Adidas ALPHAMAGMA', 'Thể thao', 'Adidas', '<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>', '799000', '100', 'giay22.jpg', 'giay22.jpg', 'giay22.jpg', 'giay22.jpg', 'Mới ra mắt', '100', '2024-12-12 10:21:31', '2021-12-01 10:21:31'),
(7, 'Adidas RUNFALCON 2.0', 'Thể thao', 'Adidas', '<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>', '599000', '100', 'giay23.jpg', 'giay23.jpg', 'giay23.jpg', 'giay23.jpg', 'Mới ra mắt', '0', '2021-11-29 07:59:26', '2021-11-29 07:59:26'),
(8, 'Adidas Tiempo Legend 9', 'Thể thao', 'Adidas', '<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>', '666000', '100', 'giay13.jpg', 'giay14.jpg', 'giay15.jpg', 'giay16.jpg', 'Ngày lễ', '0', '2021-11-29 07:59:26', '2024-11-12 01:34:36'),
(9, 'Puma One 5.3 TT', 'Thể thao', 'Puma', '<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>', '699000', '100', 'giay7.jpg', '', 'giay7.jpg', 'giay7.jpg', 'Sale cuối năm', '0', '2021-12-01 10:21:31', '2021-12-01 10:21:31'),
(10, 'CNVR-WZ87_V1', 'Sneaker', 'Converse', '<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>', '699000', '100', 'giay17.jpg', 'giay18.jpg', 'giay19.jpg', 'giay20.jpg', 'Không khuyễn mãi', '1', '2021-12-01 10:21:31', '2024-11-12 01:36:06'),
(11, 'Run Star Hike Sneaker', 'Sneaker', 'Converse', '<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>', '966000', '100', 'giay17.jpg', 'giay17.jpg', 'giay17.jpg', 'giay17.jpg', 'Chủ vui nên khuyến mãi', '0', '2021-11-29 07:59:26', '2021-11-29 07:59:26'),
(12, 'Chuck 70 Sneaker', 'Sneaker', 'Converse', '<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>', '1280000', '100', 'giay18.jpg', 'giay18.jpg', 'giay18.jpg', 'giay18.jpg', 'Sale cuối năm', '0', '2021-12-01 10:21:31', '2021-12-01 10:21:31'),
(13, 'Archive Paint Splatter', 'Sneaker', 'Converse', '<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>', '1880000', '100', 'giay19.jpg', 'giay19.jpg', 'giay19.jpg', 'giay19.jpg', 'Không khuyễn mãi', '0', '2021-11-29 07:59:26', '2021-11-29 07:59:26'),
(14, 'Nike Top Sala14', 'Thể thao', 'Nike', '<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>', '666000', '100', 'giay9.jpg', 'giay9.jpg', 'giay9.jpg', 'giay9.jpg', 'Không khuyễn mãi', '0', '2021-11-25 07:59:26', '2021-11-25 07:59:26'),
(15, 'Nike ACE Tango', 'Thể thao', 'Nike', '<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>', '599000', '100', 'giay6.jpg', 'giay6.jpg', 'giay6.jpg', 'giay6.jpg', 'Mới ra mắt', '0', '2021-12-01 10:21:31', '2021-12-01 10:21:31'),
(16, 'Adidas Mercurial', 'Sandanl', 'Adidas', '<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>', '666000', '100', 'giay15.jpg', 'giay15.jpg', 'giay15.jpg', 'giay15.jpg', 'Ngày lễ', '0', '2021-12-01 10:21:31', '2021-12-01 10:21:31'),
(17, 'Nike FC', 'Thể thao', 'Nike', '<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>', '1100000', '100', 'giay8.jpg', 'giay8.jpg', 'giay8.jpg', 'giay8.jpg', 'Ngày lễ', '0', '2021-12-01 10:21:31', '2021-12-01 10:21:31'),
(18, 'Adidas X Tango 17.1 FG', 'Sneaker', 'Adidas', '<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>', '666000', '100', 'giay5.jpg', 'giay5.jpg', 'giay5.jpg', 'giay5.jpg', 'Không khuyễn mãi', '0', '2021-12-01 10:21:31', '2021-12-01 10:21:31'),
(19, 'Superstar KB', 'Thể thao', 'Vans', '<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>', '1350000', '100', 'giay21.jpg', 'giay2.jpg', 'giay10.jpg', 'giay1.jpg', 'Sale cuối năm', '0', '2021-12-01 10:21:31', '2024-11-12 01:35:23'),
(20, 'Superstar J', 'Sandanl', 'Vans', '<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>', '1290000', '100', 'giay11.jpg', 'giay11.jpg', 'giay11.jpg', 'giay11.jpg', 'Ngày lễ', '0', '2021-11-25 07:59:26', '2021-11-25 07:59:26'),
(21, 'Nike Tiempo Legend', 'Thể thao', 'Nike', '<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>', '1990000', '100', 'giay4.jpg', 'giay4.jpg', 'giay4.jpg', 'giay4.jpg', 'Ngày lễ', '0', '2021-11-24 07:59:26', '2021-11-24 07:59:26'),
(22, 'ADIDAS X Speedflow', 'Thể thao', 'Adidas', '<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>', '666000', '100', 'giay12.jpg', 'giay12.jpg', 'giay12.jpg', 'giay12.jpg', 'Sale cuối năm', '0', '2021-12-01 10:21:31', '2021-12-01 10:21:31'),
(23, 'Jung 96', 'Thể thao', 'New Balance', '<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>', '899000', '100', 'giay14.jpg', 'giay14.jpg', 'giay14.jpg', 'giay14.jpg', 'Sale cuối năm', '0', '2021-12-01 10:21:31', '2021-12-01 10:21:31'),
(24, 'Mercurial Superfly', 'Sneaker', 'Balenciaga', '<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>', '666000', '100', 'giay6.jpg', 'giay6.jpg', 'giay6.jpg', 'giay6.jpg', 'Chủ vui nên khuyến mãi', '0', '2021-11-24 07:59:26', '2021-11-24 07:59:26');

-- --------------------------------------------------------

--
-- Table structure for table `khuyen_mai`
--

CREATE TABLE `khuyen_mai` (
  `id_khuyen_mai` int UNSIGNED NOT NULL,
  `ten_khuyen_mai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia_tri_khuyen_mai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `khuyen_mai`
--

INSERT INTO `khuyen_mai` (`id_khuyen_mai`, `ten_khuyen_mai`, `gia_tri_khuyen_mai`) VALUES
(1, 'Không khuyễn mãi', '0'),
(2, 'Ngày lễ', '15'),
(3, 'Mới ra mắt', '10'),
(4, 'Sale cuối năm', '5'),
(5, 'Chủ vui nên khuyến mãi', '3');

-- --------------------------------------------------------

--
-- Table structure for table `loai_giay`
--

CREATE TABLE `loai_giay` (
  `id_loai_giay` int UNSIGNED NOT NULL,
  `ten_loai_giay` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loai_giay`
--

INSERT INTO `loai_giay` (`id_loai_giay`, `ten_loai_giay`, `created_at`, `updated_at`) VALUES
(1, 'Thể thao', NULL, NULL),
(2, 'Sandanl', NULL, NULL),
(3, 'Sneaker', NULL, NULL),
(4, 'Boots', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_02_024954_create_sessions_table', 1),
(6, '2021_11_15_125359_giay_table', 1),
(7, '2021_11_15_125523_loai_giay_table', 1),
(8, '2021_11_15_125541_thuong_hieu_table', 1),
(9, '2021_11_16_082748_khuyen_mai_table', 1),
(10, '2021_11_16_101507_phan_quyen_table', 1),
(11, '2021_11_21_025722_create_don_hang_table', 1),
(12, '2021_12_02_143926_create_danh_gia_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phan_quyen`
--

CREATE TABLE `phan_quyen` (
  `id_phan_quyen` int UNSIGNED NOT NULL,
  `ten_phan_quyen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phan_quyen`
--

INSERT INTO `phan_quyen` (`id_phan_quyen`, `ten_phan_quyen`) VALUES
(1, 'Quản trị viên'),
(2, 'Người dùng'),
(3, 'Nhân viên');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('9ZNOGfPCaklUNioY4FzBOOIc72OJIlreuyxBQxUD', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiSUhVbkdxUEsyTUhUU09vVzF5MXBpRnNQOURuN2RjSkZCOFpxQkx2MiI7czo4OiJnaW9faGFuZyI7YTowOnt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jdWEtaGFuZy9zYW4tcGhhbT02Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1OiJjaGVjayI7czoxOiIyIjtzOjk6ImRhbmhfZ2lhcyI7YTozOntpOjU7YTo1OntzOjEwOiJoaW5oX2FuaF8xIjtzOjEwOiJnaWF5MjEuanBnIjtzOjg6InRlbl9naWF5IjtzOjE3OiJBZGlkYXMgU1RBTiBTTUlUSCI7czo3OiJkb25fZ2lhIjtzOjc6IjEyOTAwMDAiO3M6ODoic29fbHVvbmciO3M6MToiMSI7czoxMDoia2h1eWVuX21haSI7czoyOiIxMCI7fWk6MTA7YTo1OntzOjEwOiJoaW5oX2FuaF8xIjtzOjEwOiJnaWF5MTcuanBnIjtzOjg6InRlbl9naWF5IjtzOjEyOiJDTlZSLVdaODdfVjEiO3M6NzoiZG9uX2dpYSI7czo2OiI2OTkwMDAiO3M6ODoic29fbHVvbmciO3M6MToiMSI7czoxMDoia2h1eWVuX21haSI7czoxOiIwIjt9aTo0O2E6NTp7czoxMDoiaGluaF9hbmhfMSI7czoxMDoiZ2lheTIzLmpwZyI7czo4OiJ0ZW5fZ2lheSI7czoxOToiQWRpZGFzIFBVUkVCT09TVCAyMSI7czo3OiJkb25fZ2lhIjtzOjc6IjE1OTAwMDAiO3M6ODoic29fbHVvbmciO3M6MToiMSI7czoxMDoia2h1eWVuX21haSI7czoyOiIxMCI7fX1zOjg6IkRhbmdOaGFwIjtpOjEwO30=', 1731411841),
('FsOVgaHFHPZzgDlCBa9pIuqXT51CX9mi9cCXSS4N', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYlpYRGNGMXRlN0JuT3N6a1NJU2kxQ0xEYzl4NjlYRFMyd0oxaFlXUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6ODoiZ2lvX2hhbmciO2E6MDp7fX0=', 1731428385),
('PBxef6iytlK3GaM2Xxg9GtspQZcV6Hzausf8beWg', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTUNBUWVMbE5YTWhzc2huUXFBQ3Z5S2VhUVBRaEJTblFnVHJVSXo5ZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90cmFuZy1jaHUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjg6Imdpb19oYW5nIjthOjA6e319', 1731433149),
('POeo6daOeD4FpEn1xGtmGlPfBu802A5lw4Ej1OcX', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiR21XUXNuZDJEQkk2RHFMd3NFMkxyZUNOeHVwbU9jOHd3VWN3V1F1VSI7czo4OiJnaW9faGFuZyI7YTowOnt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9kb25oYW5nL3hlbS9pZD00Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo4OiJEYW5nTmhhcCI7aTo3O3M6NToiY2hlY2siO3M6MToiMSI7fQ==', 1731408548);

-- --------------------------------------------------------

--
-- Table structure for table `thuong_hieu`
--

CREATE TABLE `thuong_hieu` (
  `id_thuong_hieu` int UNSIGNED NOT NULL,
  `ten_thuong_hieu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thuong_hieu`
--

INSERT INTO `thuong_hieu` (`id_thuong_hieu`, `ten_thuong_hieu`) VALUES
(1, 'Nike'),
(2, 'Adidas'),
(3, 'Converse'),
(4, 'Gucci'),
(5, 'Puma'),
(6, 'Vans'),
(7, 'New Balance'),
(8, 'Balenciaga');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `ten_nguoi_dung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Ten_dang_nhap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_phan_quyen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ten_nguoi_dung`, `email`, `sdt`, `Ten_dang_nhap`, `password`, `id_phan_quyen`) VALUES
(7, 'hà duy tình', 'hcccc@gmail.com', '0394562068', 'haduytinh', '$2y$10$7GoOVOWXqqEypTohGL.8PO54zWQnc6KHyM2v2R4QC2y/2OYqdhiEi', '1'),
(8, 'hà duy tình', 'tuthan21102004@gmail.com', '0394562068', 'haduytinh2110', '$2y$10$gSsvYKo/5c7LahM19kxCJuajzDv/T4zuQJaXY3BRxMwPkxhQ/wkPS', '2'),
(9, 'nguyễn văn a', 'nguyenvana@gmail.com', '0123456789', 'nguyenvana', '$2y$10$k165fSB32ZoDhY2eYR/glOblPboKqlc/FzC73kuLYGbdJibqY7nW2', '3\r\n'),
(10, 'nguyễn văn b', 'nguyenvanb@gmail.com', '0399699399', 'nguyenvanb', '$2y$10$9/kUMJSqXqXcQR5JdzK2W.sQbH7mKP0qAvMy8j7i.o0m8B9czDE7G', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `danh_gia`
--
ALTER TABLE `danh_gia`
  ADD PRIMARY KEY (`id_danh_gia`);

--
-- Indexes for table `don_hang`
--
ALTER TABLE `don_hang`
  ADD PRIMARY KEY (`id_don_hang`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `giay`
--
ALTER TABLE `giay`
  ADD PRIMARY KEY (`id_giay`);

--
-- Indexes for table `khuyen_mai`
--
ALTER TABLE `khuyen_mai`
  ADD PRIMARY KEY (`id_khuyen_mai`);

--
-- Indexes for table `loai_giay`
--
ALTER TABLE `loai_giay`
  ADD PRIMARY KEY (`id_loai_giay`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `phan_quyen`
--
ALTER TABLE `phan_quyen`
  ADD PRIMARY KEY (`id_phan_quyen`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `thuong_hieu`
--
ALTER TABLE `thuong_hieu`
  ADD PRIMARY KEY (`id_thuong_hieu`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_ten_dang_nhap_unique` (`Ten_dang_nhap`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `danh_gia`
--
ALTER TABLE `danh_gia`
  MODIFY `id_danh_gia` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `don_hang`
--
ALTER TABLE `don_hang`
  MODIFY `id_don_hang` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `giay`
--
ALTER TABLE `giay`
  MODIFY `id_giay` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `khuyen_mai`
--
ALTER TABLE `khuyen_mai`
  MODIFY `id_khuyen_mai` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `loai_giay`
--
ALTER TABLE `loai_giay`
  MODIFY `id_loai_giay` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phan_quyen`
--
ALTER TABLE `phan_quyen`
  MODIFY `id_phan_quyen` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `thuong_hieu`
--
ALTER TABLE `thuong_hieu`
  MODIFY `id_thuong_hieu` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
