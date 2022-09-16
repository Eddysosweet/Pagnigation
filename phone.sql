-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 16, 2022 lúc 04:33 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hmobie`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phone`
--

CREATE TABLE `phone` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `phone_company` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'REALME',
  `cost` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `src` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phone`
--

INSERT INTO `phone` (`id`, `name`, `phone_company`, `cost`, `src`) VALUES
(1, 'Apple iPhone 11 64GB Chính hãng VN/A', 'IPHONE', '17990000', 'https://clickbuy.com.vn/uploads/2022/02/thumb_iP11_4.jpg'),
(2, 'Apple iPhone 13 Pro Max 128GB Chính hãng VN/A', 'IPHONE', '34990000', 'https://clickbuy.com.vn/uploads/2022/03/avt-iphone-13-pro-max-gray.png'),
(3, 'Apple iPhone 13 128GB Chính hãng VN/A', 'IPHONE', '24490000', 'https://clickbuy.com.vn/uploads/2022/03/avt-iphone-13-green.png'),
(4, 'Apple iPhone 11 128GB Chính hãng VN/A', 'IPHONE', '21690000', 'https://clickbuy.com.vn/uploads/2022/02/thumb_iP11_4.jpg'),
(5, 'Apple iPhone 13 Pro Max 256GB Chính hãng VN/A', 'IPHONE', '36990000', 'https://clickbuy.com.vn/uploads/2022/03/avt-iphone-13-pro-max-gray.png'),
(6, 'Apple iPhone 13 Pro 128GB Chính hãng VN/A', 'IPHONE', '30990000', 'https://clickbuy.com.vn/uploads/2022/03/avt-iphone-13-pro-max-gray.png'),
(7, 'Apple iPhone 13 Pro 256GB Chính hãng VN/A', 'IPHONE', '34990000', 'https://clickbuy.com.vn/uploads/2022/03/avt-iphone-13-pro-max-gray.png'),
(8, 'Apple iPhone 13 256GB Chính hãng VN/A', 'IPHONE', '27990000', 'https://clickbuy.com.vn/uploads/2022/03/avt-iphone-13-midnight.png\n'),
(9, 'Apple iPhone 12 64GB Chính hãng VN/A', 'IPHONE', '24990000', 'https://clickbuy.com.vn/uploads/2020/10/avt-iphone-12-mini-white.png'),
(10, 'Apple iPhone 13 Pro Max 512GB Chính hãng VN/A', 'IPHONE', '43990000', 'https://clickbuy.com.vn/uploads/2022/03/avt-iphone-13-pro-max-gold.png'),
(11, 'Apple iPhone 12 128GB Chính hãng VN/A', 'IPHONE', '26990000', 'https://clickbuy.com.vn/uploads/2020/10/avt-iphone-12-mini-red.png'),
(12, 'Apple iPhone 13 mini 128GB Chính hãng VN/A', 'IPHONE', '21990000', 'https://clickbuy.com.vn/uploads/2022/03/avt-iphone-13-blue.png'),
(13, 'Apple iPhone 13 Pro Max 1TB Chính hãng VN/A', 'IPHONE', '49990000', 'https://clickbuy.com.vn/uploads/2022/03/avt-iphone-13-pro-max-gray.png'),
(14, 'Apple iPhone 13 mini 256GB Chính hãng VN/A', 'IPHONE', '24990000', 'https://clickbuy.com.vn/uploads/2022/03/avt-iphone-13-blue.png'),
(15, 'Apple iPhone 13 Pro 512GB Chính hãng VN/A', 'IPHONE', '39990000', 'https://clickbuy.com.vn/uploads/2022/03/avt-iphone-13-pro-max-gray.png'),
(16, 'Apple iPhone 13 512GB Chính hãng VN/A', 'IPHONE', '33990000', 'https://clickbuy.com.vn/uploads/2021/09/iphone-13-%C4%91en.jpg'),
(17, 'iPhone SE 3 2022 256GB Chính hãng VN/A', 'IPHONE', '17990000', 'https://clickbuy.cdn.vccloud.vn/uploads/2022/02/iphone_se_2022.jpg'),
(18, 'iPhone SE 3 2022 128GB Chính hãng VN/A', 'IPHONE', '13490000', 'https://clickbuy.cdn.vccloud.vn/uploads/2022/02/iphone_se_2022.jpg'),
(19, 'iPhone SE 3 2022 64GB Chính hãng VN/A', 'IPHONE', '11990000', 'https://clickbuy.cdn.vccloud.vn/uploads/2022/02/iphone_se_2022.jpg'),
(20, 'Apple iPhone 11 Pro 256GB Chính hãng VN/A', 'IPHONE', '26990000', 'https://clickbuy.com.vn/uploads/2019/09/thumb_11Pro_1.jpg'),
(21, 'Samsung Galaxy Z Fold4 256GB chính hãng', 'SAMSUNG', '40990000', 'https://clickbuy.com.vn/uploads/2022/07/Z-Fold-Moon-Beige-640x640-2.png'),
(22, 'Samsung Galaxy Z Flip4 256GB chính hãng', 'SAMSUNG', '25990000', 'https://clickbuy.com.vn/uploads/2022/07/Z-Flip-New-Blue-640x640-1.png'),
(23, 'Samsung Galaxy Z Fold4 512GB chính hãng', 'SAMSUNG', '44490000', 'https://clickbuy.com.vn/uploads/2022/07/Z-Fold-Phantom-black-640x640-1.png'),
(24, 'Samsung Galaxy Z Flip4 128GB chính hãng', 'SAMSUNG', '23990000', 'https://clickbuy.com.vn/uploads/2022/07/Z-Flip-Iconic-gold-640x640-1.png'),
(25, 'Samsung Galaxy S22 Ultra 5G (8GB|128GB) Chính hãng', 'SAMSUNG', '30990000', 'https://clickbuy.com.vn/uploads/2022/03/s22.png'),
(26, 'Samsung Galaxy S22 Ultra 5G (12GB|256GB) Chính hãng', 'SAMSUNG', '33990000', 'https://clickbuy.com.vn/uploads/2022/03/s22.png'),
(27, 'Samsung Galaxy S22 Ultra 5G (12GB|512GB) Chính hãng', 'SAMSUNG', '36990000', 'https://clickbuy.com.vn/uploads/2022/03/s22.png'),
(28, 'Samsung Galaxy A53 5G chính hãng\r\n', 'SAMSUNG', '9990000', 'https://clickbuy.com.vn/uploads/2022/02/avt-samsung-a53-cam.png'),
(29, 'Samsung Galaxy A73 chính hãng', 'SAMSUNG', '11990000', 'https://clickbuy.com.vn/uploads/2022/02/a73.png'),
(30, 'Samsung Galaxy S22 5G (8GB 128GB) Chính hãng', 'SAMSUNG', '21990000', 'https://clickbuy.com.vn/uploads/2022/02/avt-samsung-s22-hong-1-1.png'),
(31, 'Samsung Galaxy S22 Plus 5G (8GB|128GB) Chính hãng', 'SAMSUNG', '25990000', 'https://clickbuy.com.vn/uploads/2022/02/avt-samsung-s22-hong-1-1.png'),
(32, 'Samsung Galaxy S22 Plus 5G (8GB|256GB) Chính hãng', 'SAMSUNG', '27490000', 'https://clickbuy.com.vn/uploads/2022/02/avt-samsung-s22-hong-1-1.png'),
(33, 'Samsung Galaxy A03 Core 2GB/32GB chính hãng', 'SAMSUNG', '2990000', 'https://clickbuy.com.vn/uploads/2021/01/avt-samsung-a03-den.png'),
(34, 'Samsung Galaxy S22 5G (8GB 256GB) Chính hãng', 'SAMSUNG', '2349000', 'https://clickbuy.com.vn/uploads/2022/02/avt-samsung-s22-hong-1-1.png'),
(35, 'Samsung Galaxy S21 FE 5G 8GB 128GB chính hãng', 'SAMSUNG', '16990000', 'https://clickbuy.com.vn/uploads/2021/11/heres-your-first-look-at-the-s-7321-5999-1618179804_1_7.webp'),
(36, 'Galaxy Z Fold3 5G 256GB Chính Hãng', 'SAMSUNG', '41990000', 'https://clickbuy.com.vn/uploads/2021/10/3-black.jpg'),
(37, 'Samsung Galaxy A23 4GB 128GB chính hãng', 'SAMSUNG', '5690000', 'https://clickbuy.com.vn/uploads/2021/10/avt-samsung-a23-xanh.png'),
(38, 'Samsung Galaxy A13 4G 128GB chính hãng', 'SAMSUNG', '4690000', 'https://clickbuy.com.vn/uploads/2021/10/avt-samsung-a13-den-1.png'),
(39, 'Galaxy Z Flip3 5G 128GB chính hãng', 'SAMSUNG', '24990000', 'https://clickbuy.com.vn/uploads/2021/10/cream-2.jpg'),
(40, 'Galaxy Z Flip3 5G 256GB chính hãng', 'SAMSUNG', '26990000', 'https://clickbuy.com.vn/uploads/2021/10/cream-2.jpg'),
(41, 'Samsung Galaxy S21 FE 5G 8G 256GB chính hãng', 'SAMSUNG', '18990000', 'https://clickbuy.com.vn/uploads/2021/11/heres-your-first-look-at-the-s-7321-5999-1618179804_1_7.webp'),
(42, 'Samsung Galaxy A32 Chính hãng (6GB/ 128GB)', 'SAMSUNG', '6490000', 'https://clickbuy.com.vn/uploads/2021/08/avt-galaxy-a32-xanh.png'),
(43, 'Samsung Galaxy S20 FE 256GB (Fan Edition) chính hãng', 'SAMSUNG', '15490000', 'https://clickbuy.com.vn/uploads/2021/08/samsung-galaxy-20-fe_3__5.jpg'),
(44, 'Samsung Galaxy A03s 3GB 32GB chính hãng', 'SAMSUNG', '3390000', 'https://clickbuy.com.vn/uploads/2021/06/avt-galaxy-A02s-black.png'),
(45, 'Samsung Galaxy A33 chính hãng\r\n', 'SAMSUNG', '8490000', 'https://clickbuy.com.vn/uploads/2021/10/avt-samsung-a23-xanh.png'),
(46, 'Samsung Galaxy A03 chính hãng', 'SAMSUNG', '2990000', 'https://clickbuy.com.vn/uploads/2021/01/avt-samsung-a03-den.png'),
(47, 'Samsung Galaxy A52s 5G chính hãng Trưng bày', 'SAMSUNG', '10990000', 'https://clickbuy.com.vn/uploads/2021/10/Xanh_A52s_3.jpg'),
(48, 'Samsung Galaxy A22 6G 128Gb Chính hãng', 'SAMSUNG', '5890000', 'https://clickbuy.com.vn/uploads/2021/06/a22-2-1.jpg'),
(49, 'Samsung Galaxy S21 Ultra 5G Chính hãng', 'SAMSUNG', '30990000', 'https://clickbuy.com.vn/uploads/2020/01/avt-s20-ultra-black.png'),
(50, 'Samsung Galaxy A03s 4GB 64GB chính hãng', 'SAMSUNG', '3690000', 'https://clickbuy.com.vn/uploads/2021/01/avt-galaxy-A02s-black.png'),
(51, 'Xiaomi Redmi 10C 4Gb-128Gb – Sản phẩm chính hãng', 'XIAOMI', '3890000', 'https://clickbuy.com.vn/uploads/2022/02/avt-redmi-10c-xanh.png'),
(52, 'Xiaomi Redmi Note 11 ( 4GB – 128GB ) – Sản phẩm chính hãng', 'XIAOMI', '4990000', 'https://clickbuy.com.vn/uploads/2022/01/r11.jpg'),
(53, 'Xiaomi Redmi Note 11 ( 4GB – 64GB ) – Sản phẩm chính hãng', 'XIAOMI', '4690000', 'https://clickbuy.com.vn/uploads/2022/01/r11-d.jpg'),
(54, 'Điện thoại Xiaomi Redmi 10A', 'XIAOMI', '2890000', 'https://clickbuy.com.vn/uploads/2022/01/redmi-10-a.jpg'),
(55, 'Xiaomi Redmi Note 11 Pro 8Gb 128Gb – Sản phẩm chính hãng\r\n', 'XIAOMI', '7490000', 'https://clickbuy.com.vn/uploads/2021/12/avt-redmi-note-11-pro-xanh-copy.png'),
(56, 'Xiaomi Redmi Note 11 ( 6GB – 128GB ) – Sản phẩm chính hãng\r\n', 'XIAOMI', '5490000', 'https://clickbuy.com.vn/uploads/2022/01/r11-d-1.jpg'),
(57, 'Xiaomi Poco X4 Pro (5G) 6GB 128GB Chính hãng', 'XIAOMI', '7490000', 'https://clickbuy.com.vn/uploads/2021/07/avt-poco-x4-pro-vang.png'),
(58, 'Xiaomi Redmi 10C 4Gb-64Gb – Sản phẩm chính hãng\r\n', 'XIAOMI', '3890000', 'https://clickbuy.com.vn/uploads/2022/02/avt-redmi-10c-xanh-den.png'),
(59, 'Redmi 10 4GB 64GB – Sản phẩm chính hãng\r\n', 'XIAOMI', '4390000', 'https://clickbuy.com.vn/uploads/2021/05/2-1.jpg'),
(60, 'Xiaomi Redmi 9A Chính hãng Ram 2G 32GB\r\n', 'XIAOMI', '2490000', 'https://clickbuy.com.vn/uploads/2021/03/avt-redmi-9A-black.png'),
(61, 'Xiaomi Redmi 9C 4GB – 128GB – Sản phẩm chính hãng\r\n', 'XIAOMI', '3490000', 'https://clickbuy.com.vn/uploads/2021/03/avt-redmi-9c-blue.png'),
(62, 'Xiaomi Redmi 9C 3GB – 64GB – Sản phẩm chính hãng\r\n', 'XIAOMI', '2990000', 'https://clickbuy.com.vn/uploads/2021/03/avt-redmi-9c-blue.png'),
(63, 'Xiaomi Mi 11 Lite 5G NE 8GB/128GB – Sản phẩm chính hãng\r\n', 'XIAOMI', '9490000', 'https://clickbuy.com.vn/uploads/2021/10/avt-xiaomi-mi-11-lite-5g-den.png'),
(64, 'Xiaomi POCO M3 Pro 5G (6GB/128GB) – Sản phẩm chính hãng\r\n', 'XIAOMI', '5990000', 'https://clickbuy.com.vn/uploads/2020/02/avt-poco-m4-pro-xanh.png'),
(65, 'Xiaomi Redmi Note 11 Pro 5G 8Gb 128Gb – Sản phẩm chính hãng\r\n', 'XIAOMI', '8990000', 'https://clickbuy.com.vn/uploads/2021/12/avt-redmi-note-11-pro-xanh-copy.png'),
(66, 'Redmi 10 4GB 128GB – Sản phẩm chính hãng\r\n', 'XIAOMI', '4290000', 'https://clickbuy.com.vn/uploads/2021/05/2-1.jpg'),
(67, 'Xiaomi Poco F3 8GB 256GB Chính hãng\r\n', 'XIAOMI', '8990000', 'https://clickbuy.com.vn/uploads/2022/05/ava-poco-f3-den.png'),
(68, 'Xiaomi Poco F3 6GB 128GB Chính hãng\r\n', 'XIAOMI', '7990000', 'https://clickbuy.com.vn/uploads/2022/05/ava-poco-f3-den.png'),
(69, 'Xiaomi Redmi Note 11S 8GB/128GB – Sản phẩm chính hãng\r\n', 'XIAOMI', '6690000', 'https://clickbuy.com.vn/uploads/2020/02/avt-redmi-note-11s-xanh.png'),
(70, 'Điện thoại OPPO A16K 3Gb 32Gb – Sản phẩm chính hãng\r\n', 'OPPO', '3690000', 'https://clickbuy.com.vn/uploads/2021/03/oppo-a16k.png'),
(71, 'Oppo A95 – Sản phẩm chính hãng\r\n', 'OPPO', '6990000', 'https://clickbuy.com.vn/uploads/2021/03/oppo-a95.png'),
(72, 'Oppo A55 4Gb 64Gb – Sản phẩm chính hãng\r\n', 'OPPO', '4990000', 'https://clickbuy.com.vn/uploads/2021/02/oppo-a55-black.jpg'),
(73, 'Oppo A74 – Sản phẩm chính hãng\r\n', 'OPPO', '6990000', 'https://clickbuy.com.vn/uploads/2021/01/oppo-a74-xanh.png'),
(74, 'Oppo Reno 7 (5G) 8GB 256GB Chính hãng\r\n', 'OPPO', '12990000', 'https://clickbuy.com.vn/uploads/2020/03/reno7.jpg'),
(75, 'Oppo Reno 7 Z (5G) 8GB 128GB Chính hãng\r\n', 'OPPO', '10490000', 'https://clickbuy.com.vn/uploads/2019/07/combo_product_-_rainbow_spectrum_-_reno7_z_1.png'),
(76, 'OPPO Reno6 Z 5G chính hãng\r\n', 'OPPO', '9490000', 'https://clickbuy.com.vn/uploads/2019/07/oppo-reno6-z-black.png'),
(77, 'Realme 8 Ram 8GB 128GB Chính Hãng\r\n', 'REALME', '7290000', 'https://clickbuy.com.vn/uploads/2021/05/ava-realme-8-black.png'),
(79, 'Nokia 110 DS 4G – Sản phẩm chính hãng\r\n', 'NOKIA', '810000', 'https://clickbuy.com.vn/uploads/2021/11/33.jpg'),
(80, 'Nokia C20 32GB – Sản phẩm chính hãng\r\n', 'NOKIA', '2490000', 'https://clickbuy.com.vn/uploads/2019/07/nokia-c20.png'),
(81, 'Nokia C30 3Gb 32Gb – Sản phẩm chính hãng\r\n', 'NOKIA', '3290000', 'https://clickbuy.com.vn/uploads/2021/11/c30-blue.jpg'),
(82, 'Nokia X10 5G Chính hãng', 'NOKIA', '5490000', 'https://cdn2.cellphones.com.vn/358x/media/catalog/product/n/o/nokia-x10.jpg'),
(83, 'Nokia G21 Chính hãng', 'NOKIA', '4290000', 'https://cdn2.cellphones.com.vn/358x/media/catalog/product/t/h/thumb_602966_default_big.jpg'),
(84, 'Realme C35 4GB 64GB\r\n', 'REALME', '4290000', 'https://cdn2.cellphones.com.vn/358x/media/catalog/product/f/r/frame3934-640x640.png'),
(85, 'Realme C11 (2021)\r\n', 'REALME', '2990000', 'https://cdn2.cellphones.com.vn/358x/media/catalog/product/r/e/realme-c11-2021-gray-600x600.jpg'),
(86, 'Realme 9 Pro\r\n', 'REALME', '7990000', 'https://cdn2.cellphones.com.vn/358x/media/catalog/product/r/e/real_me_pro_004.jpg'),
(87, 'Realme 9i\r\n', 'REALME', '6490000', 'https://cdn2.cellphones.com.vn/358x/media/catalog/product/t/_/t_i_xu_ng_2__3_6.png'),
(88, 'Realme 8\r\n', 'REALME', '7290000', 'https://cdn2.cellphones.com.vn/358x/media/catalog/product/r/e/realme-8-1_2.png'),
(89, 'Realme 9 Pro Plus\r\n', 'REALME', '9990000', 'https://cdn2.cellphones.com.vn/358x/media/catalog/product/9/_/9_pro_plus.png'),
(90, 'Realme C21Y\r\n', 'REALME', '3690000', 'https://cdn2.cellphones.com.vn/358x/media/catalog/product/r/e/realme-c21y.jpg'),
(91, 'Realme C11 2021 4GB 64GB\r\n', 'REALME', '3790000', 'https://cdn2.cellphones.com.vn/358x/media/catalog/product/r/e/realme-c11-2021-gray-600x600_2.jpg'),
(92, 'Realme C25Y\r\n', 'REALME', '4990000', 'https://cdn2.cellphones.com.vn/358x/media/catalog/product/r/e/realme-c25y-2.jpg'),
(93, 'Realme 8 5G\r\n', 'REALME', '7990000', 'https://cdn2.cellphones.com.vn/358x/media/catalog/product/r/e/realme-8-5g_1.jpg'),
(94, 'Realme C25Y 4GB 64GB\r\n', 'REALME', '4690000', 'https://cdn2.cellphones.com.vn/358x/media/catalog/product/r/e/realme-c25y-2_3.jpg'),
(95, 'Realme C21Y 4GB 64GB\r\n', 'REALME', '4290000', 'https://cdn2.cellphones.com.vn/358x/media/catalog/product/r/e/realme-c21y_2.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `phone`
--
ALTER TABLE `phone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
