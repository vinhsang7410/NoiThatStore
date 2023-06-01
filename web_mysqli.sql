-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 13, 2022 lúc 11:49 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_mysqli`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `hinhanh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hoten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` text COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `admin_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `hinhanh`, `hoten`, `sdt`, `email`, `diachi`, `username`, `pass`, `admin_status`) VALUES
(1, '1665024702_mumaidinh.png', 'Nguyễn Thanh Tâm', '0123456789', 'admin@gmail.com', '<p>Th&agrave;nh phố Hồ Ch&iacute; Minh</p>\r\n', 'admin', 'admin', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_album`
--

CREATE TABLE `tbl_album` (
  `id` int(11) NOT NULL,
  `hinhanh` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_album`
--

INSERT INTO `tbl_album` (`id`, `hinhanh`) VALUES
(1, 'album-1.PNG'),
(2, 'album-2.PNG'),
(3, 'album-3.PNG'),
(4, 'album-4.PNG'),
(5, '1664762257_Rectangle 16.png'),
(6, '1664762275_Rectangle 17.png'),
(30, '1664762289_album-3.png'),
(31, '1664762302_album-8.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_baiviet`
--

CREATE TABLE `tbl_baiviet` (
  `id` int(11) NOT NULL,
  `tenbaiviet` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tomtat` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `noidung` longtext COLLATE utf8_unicode_ci NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `hinhanh` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_baiviet`
--

INSERT INTO `tbl_baiviet` (`id`, `tenbaiviet`, `tomtat`, `noidung`, `id_danhmuc`, `tinhtrang`, `hinhanh`) VALUES
(4, 'Hải sản tươi sống', '<p>Aliquam sagittis ligula et sem lacinia, ut facilisis enim sollicitudin. Proin nisi est, convallis nec purus vitae, iaculis posuere sapien. Cum sociis natoque.</p>\r\n', '<p>Aliquam sagittis ligula et sem lacinia, ut facilisis enim sollicitudin. Proin nisi est, convallis nec purus vitae, iaculis posuere sapien. Cum sociis natoque.Aliquam sagittis ligula et sem lacinia, ut facilisis enim sollicitudin. Proin nisi est, convallis nec purus vitae, iaculis posuere sapien. Cum sociis natoque.Aliquam sagittis ligula et sem lacinia, ut facilisis enim sollicitudin. Proin nisi est, convallis nec purus vitae, iaculis posuere sapien. Cum sociis natoque.Aliquam sagittis ligula et sem lacinia, ut facilisis enim sollicitudin. Proin nisi est, convallis nec purus vitae, iaculis posuere sapien. Cum sociis natoque.Aliquam sagittis ligula et sem lacinia, ut facilisis enim sollicitudin. Proin nisi est, convallis nec purus vitae, iaculis posuere sapien. Cum sociis natoque.Aliquam sagittis ligula et sem lacinia, ut facilisis enim sollicitudin. Proin nisi est, convallis nec purus vitae, iaculis posuere sapien. Cum sociis natoque.Aliquam sagittis ligula et sem lacinia, ut facilisis enim sollicitudin. Proin nisi est, convallis nec purus vitae, iaculis posuere sapien. Cum sociis natoque.</p>\r\n', 18, 1, '1663726504_131267335_213548630437137_8669065743994907144_o_7f6bab4ad6bf440bb813194952b0d2d7_master.jpg'),
(7, 'Phở', '<p>Aliquam sagittis ligula et sem lacinia, ut facilisis enim sollicitudin. Proin nisi est, convallis nec purus vitae, iaculis posuere sapien. Cum sociis natoque.</p>\r\n', '<p>Aliquam sagittis ligula et sem lacinia, ut facilisis enim sollicitudin. Proin nisi est, convallis nec purus vitae, iaculis posuere sapien. Cum sociis natoque.Aliquam sagittis ligula et sem lacinia, ut facilisis enim sollicitudin. Proin nisi est, convallis nec purus vitae, iaculis posuere sapien. Cum sociis natoque.Aliquam sagittis ligula et sem lacinia, ut facilisis enim sollicitudin. Proin nisi est, convallis nec purus vitae, iaculis posuere sapien. Cum sociis natoque.Aliquam sagittis ligula et sem lacinia, ut facilisis enim sollicitudin. Proin nisi est, convallis nec purus vitae, iaculis posuere sapien. Cum sociis natoque.Aliquam sagittis ligula et sem lacinia, ut facilisis enim sollicitudin. Proin nisi est, convallis nec purus vitae, iaculis posuere sapien. Cum sociis natoque.Aliquam sagittis ligula et sem lacinia, ut facilisis enim sollicitudin. Proin nisi est, convallis nec purus vitae, iaculis posuere sapien. Cum sociis natoque.Aliquam sagittis ligula et sem lacinia, ut facilisis enim sollicitudin. Proin nisi est, convallis nec purus vitae, iaculis posuere sapien. Cum sociis natoque.</p>\r\n', 18, 1, '1663726947_cach-nau-pho-bo-nam-dinh-chuan-vi-thom-ngon-nhu-hang-quan-202201250313281452.jpg'),
(10, 'Cơm gà', '<p>Aliquam sagittis ligula et sem lacinia, ut facilisis enim sollicitudin. Proin nisi est, convallis nec purus vitae, iaculis posuere sapien. Cum sociis natoque.</p>\r\n', '<p>Aliquam sagittis ligula et sem lacinia, ut facilisis enim sollicitudin. Proin nisi est, convallis nec purus vitae, iaculis posuere sapien. Cum sociis natoque.Aliquam sagittis ligula et sem lacinia, ut facilisis enim sollicitudin. Proin nisi est, convallis nec purus vitae, iaculis posuere sapien. Cum sociis natoque.Aliquam sagittis ligula et sem lacinia, ut facilisis enim sollicitudin. Proin nisi est, convallis nec purus vitae, iaculis posuere sapien. Cum sociis natoque.Aliquam sagittis ligula et sem lacinia, ut facilisis enim sollicitudin. Proin nisi est, convallis nec purus vitae, iaculis posuere sapien. Cum sociis natoque.Aliquam sagittis ligula et sem lacinia, ut facilisis enim sollicitudin. Proin nisi est, convallis nec purus vitae, iaculis posuere sapien. Cum sociis natoque.Aliquam sagittis ligula et sem lacinia, ut facilisis enim sollicitudin. Proin nisi est, convallis nec purus vitae, iaculis posuere sapien. Cum sociis natoque.</p>\r\n', 18, 1, '1663728229_cach-lam-com-ga-xoi-mo.jpg'),
(18, 'hủ tiếu nam vang', '<p>Aliquam sagittis ligula et sem lacinia, ut facilisis enim sollicitudin. Proin nisi est, convallis nec purus vitae, iaculis posuere sapien. Cum sociis natoque.</p>\r\n', '<p>Aliquam sagittis ligula et sem lacinia, ut facilisis enim sollicitudin. Proin nisi est, convallis nec purus vitae, iaculis posuere sapien. Cum sociis natoque.Aliquam sagittis ligula et sem lacinia, ut facilisis enim sollicitudin. Proin nisi est, convallis nec purus vitae, iaculis posuere sapien. Cum sociis natoque.Aliquam sagittis ligula et sem lacinia, ut facilisis enim sollicitudin. Proin nisi est, convallis nec purus vitae, iaculis posuere sapien. Cum sociis natoque.Aliquam sagittis ligula et sem lacinia, ut facilisis enim sollicitudin. Proin nisi est, convallis nec purus vitae, iaculis posuere sapien. Cum sociis natoque.Aliquam sagittis ligula et sem lacinia, ut facilisis enim sollicitudin. Proin nisi est, convallis nec purus vitae, iaculis posuere sapien. Cum sociis natoque.Aliquam sagittis ligula et sem lacinia, ut facilisis enim sollicitudin. Proin nisi est, convallis nec purus vitae, iaculis posuere sapien. Cum sociis natoque.</p>\r\n', 18, 1, '1664759826_1663919504_1663727804_mon-hu-tieu-nam-vang.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_binhluansanpham`
--

CREATE TABLE `tbl_binhluansanpham` (
  `id_binhluan` int(11) NOT NULL,
  `noidungbinhluan` text COLLATE utf8_unicode_ci NOT NULL,
  `id_dangky` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `ngaybinhluan` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_binhluansanpham`
--

INSERT INTO `tbl_binhluansanpham` (`id_binhluan`, `noidungbinhluan`, `id_dangky`, `id_sanpham`, `ngaybinhluan`) VALUES
(12, 'sản phẩm tốt', 6, 27, '13/10/2022'),
(14, 'sản phẩm hay quá', 6, 27, '13/10/2022'),
(22, 'sản phẩm bị lỗi', 37, 28, '13/10/2022'),
(25, 'ok lỗi ok', 36, 28, '13/10/2022'),
(27, 'sản phẩm tốt', 36, 30, '13/10/2022'),
(29, 'sản phẩm tuyệt vời\r\n', 6, 28, '13/10/2022'),
(41, 'sản phẩm hot', 6, 29, '13/10/2022'),
(43, 'sản phẩm đạt', 6, 29, '13/10/2022'),
(44, 'Sản phẩm bị lỗi kép', 6, 28, '13/10/2022');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_carousel`
--

CREATE TABLE `tbl_carousel` (
  `id` int(11) NOT NULL,
  `hinhanh` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_carousel`
--

INSERT INTO `tbl_carousel` (`id`, `hinhanh`) VALUES
(1, '1.png'),
(2, '1.png'),
(3, '1.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id_cart` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cart_status` int(11) NOT NULL,
  `cart_payment` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cart_shipping` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`id_cart`, `id_khachhang`, `code_cart`, `cart_status`, `cart_payment`, `cart_shipping`) VALUES
(16, 6, '3408', 0, 'Tiền mặt', 3),
(17, 6, '5464', 0, 'Tiền mặt', 3),
(22, 36, '2825', 0, 'Tiền mặt', 7),
(23, 36, '6992', 0, 'Chuyển khoản', 7),
(24, 37, '8101', 0, 'Tiền mặt', 8),
(25, 38, '7031', 0, 'Ví momo', 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart_details`
--

CREATE TABLE `tbl_cart_details` (
  `id_cart_details` int(11) NOT NULL,
  `code_cart` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL,
  `id_shipping` int(11) NOT NULL,
  `id_dangky` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart_details`
--

INSERT INTO `tbl_cart_details` (`id_cart_details`, `code_cart`, `id_sanpham`, `soluongmua`, `id_shipping`, `id_dangky`) VALUES
(14, '7597', 57, 1, 3, 6),
(15, '3408', 31, 1, 3, 6),
(16, '3408', 29, 1, 3, 6),
(17, '3408', 28, 1, 3, 6),
(18, '3408', 63, 1, 3, 6),
(19, '5464', 63, 1, 3, 6),
(26, '2825', 28, 1, 7, 36),
(27, '6992', 29, 1, 7, 36),
(28, '6992', 44, 1, 7, 36),
(29, '8101', 29, 2, 8, 37),
(30, '7031', 29, 4, 9, 38),
(31, '7031', 47, 4, 9, 38);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_dangky` int(11) NOT NULL,
  `tenkhachhang` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dienthoai` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_dangky`, `tenkhachhang`, `email`, `diachi`, `matkhau`, `dienthoai`) VALUES
(6, 'Bùi Viết Hải', 'buiviethai7145210c2@gmail.com', 'Quận 7', '3', '0343721859'),
(36, 'nguyễn thanh tâm', 'nguyentt12a5@gmail.com', 'tphcm', 'tamtam', '090222222'),
(37, 'Nguyễn Thanh Tú', 'busbluexam@gmail.com', 'tphcm', '123456', '123456789'),
(38, ' Nguyễn Văn A', 'nguyenvana@gmail.com', 'tphcm', '12345', '09082212'),
(42, 'nguyen van c', 'nguyentt12a55@gmail.com', 'hcmhu', 'tamtam', '09222'),
(43, 'nguyenw22', 'nguyentt12222a5@gmail.com', 'ha noi', 'tamtam', '08222');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `hinhanh`) VALUES
(12, 'Điện Thoại', '1664530493_7.png'),
(14, 'LAPTOP', '1664530501_4.png'),
(15, 'Phụ Kiện', '1664530465_3.png'),
(21, 'Ghế sofa', '1664593294_5.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmucbaiviet`
--

CREATE TABLE `tbl_danhmucbaiviet` (
  `id_baiviet` int(11) NOT NULL,
  `tendanhmuc_baiviet` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmucbaiviet`
--

INSERT INTO `tbl_danhmucbaiviet` (`id_baiviet`, `tendanhmuc_baiviet`) VALUES
(18, 'BLOG');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_feedback`
--

CREATE TABLE `tbl_feedback` (
  `id` int(11) NOT NULL,
  `hinhanh` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `hoten` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `chucvu` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_feedback`
--

INSERT INTO `tbl_feedback` (`id`, `hinhanh`, `hoten`, `chucvu`, `noidung`) VALUES
(1, '1663837225_Ellipse 5.png', 'Hoàng Thanh', 'Phó phòng', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n'),
(2, '1663837214_Ellipse 3.png', 'Tuyết Thanh', 'Kế toán', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n'),
(3, '1663837154_Ellipse 4.png', 'Hồng Thanh', 'Trưởng phòng', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n'),
(4, '1664764343_1663837214_Ellipse 3.png', 'Tuyết Thanh', 'Kế toán', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_lienhe`
--

CREATE TABLE `tbl_lienhe` (
  `id` int(11) NOT NULL,
  `thongtinlienhe` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_lienhe`
--

INSERT INTO `tbl_lienhe` (`id`, `thongtinlienhe`) VALUES
(1, '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `masp` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `giasp` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tomtat` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `luotxem` int(11) NOT NULL,
  `luotthich` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masp`, `giasp`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `tinhtrang`, `luotxem`, `luotthich`, `id_danhmuc`) VALUES
(27, 'Reno7 Z 5G', '000003', '10490000', 998, '1649077473_Reno7 Z 5G.png', '<ul>\r\n	<li>M&agrave;n h&igrave;nh:6.43&quot;, FHD+, AMOLED, 2400 x 1080 Pixel</li>\r\n	<li>Hệ điều h&agrave;nh:ColorOS 12, nền tảng Android 11</li>\r\n	<li>Bộ xử l&yacute;:Qualcomm Snapdragon 695 5G, tối đa 2.2GHz</li>\r\n	<li>CPU:Adreno 619</li', '<p><strong>SỞ HỮU Reno7 Z | Reno7 5G CHỈ TỪ 2.100.000Đ + TRẢ G&Oacute;P 0%</strong></p>\r\n\r\n<p><strong>I. THỜI GIAN &Aacute;P DỤNG</strong></p>\r\n\r\n<p>- Thời gian: Từ 26/03 &ndash; 30/04</p>\r\n\r\n<p><strong>II. KHUYẾN M&Atilde;I</strong></p>\r\n\r\n<p>+ Trả g&oacute;p 0% trả trước chỉ từ 2.100.000đ</p>\r\n\r\n<p>+ Giảm ngay 500.000Đ qua Vnpay-QR (&aacute;p dụng trả thẳng)</p>\r\n\r\n<p><strong>III. GI&Aacute; B&Aacute;N CH&Iacute;NH THỨC:</strong><br />\r\n- OPPO Reno7 Z 5G: 10.490.000Đ</p>\r\n\r\n<p>- OPPO Reno7 5G: 12.990.000Đ</p>\r\n\r\n<p><strong>IV: BỘ B&Aacute;N H&Agrave;NG CHUẨN</strong></p>\r\n\r\n<p>Hộp, C&aacute;p USB Type C, Củ sạc superVOOC, Dụng cụ lấy SIM, Miếng d&aacute;n m&agrave;n h&igrave;nh (Đ&atilde; d&aacute;n sẵn), Vỏ bảo vệ (Nhưa dẻo), S&aacute;ch hướng dẫn.</p>\r\n', 1, 243, 66, 12),
(28, 'Samsung Galaxy S22 Ultra 5G 128GB', '000004', '30990000', 998, '1649077651_Samsung Galaxy S22 Ultra 5G 128GB.png', '<ul>\r\n	<li>\r\n	<p>6.8 inch, Dynamic AMOLED 2X, QHD+, 1440 x 3088 Pixels</p>\r\n	</li>\r\n	<li>\r\n	<p>108.0 MP + 12.0 MP + 10.0 MP + 10.0 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>40.0 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Snapdragon 8 Gen 1</p>\r\n	</li>\r\n	<li>\r\n	<p>128 GB</p>\r\n	</li>\r\n	<', '<p>Chọn 1 trong 3 khuyến m&atilde;i sau</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;- Tặng PMH Samsung 2.000.000đ + Trả g&oacute;p 0%</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;- Giảm ngay 4 triệu/6 triệu chủ nh&acirc;n Galaxy A52s 5G. S21 Series. Note 20 Series + Trả g&oacute;p 0%</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;- Ưu đ&atilde;i 4.000.000đ khi thanh to&aacute;n Online 100% qua thẻ Techcombank (500 Suất)</p>\r\n\r\n<p>Ưu đ&atilde;i th&ecirc;m</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Tặng PMH 500.000đ mua h&agrave;ng tại nh&agrave; thuốc FPT Long Ch&acirc;u</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng PMH 300.000đ &aacute;p dụng khi mua Online đến 30/04</p>\r\n	</li>\r\n	<li>\r\n	<p>Thu cũ đổi mới trợ gi&aacute; đến 4.000.000đ</p>\r\n	</li>\r\n	<li>\r\n	<p>Giảm ngay 4 triệu mua M&aacute;y chiếu bỏ t&uacute;i Samsung The Freestyle SP-LSP3</p>\r\n	</li>\r\n	<li>\r\n	<p>Cơ hội tr&uacute;ng Jackpot đến 2 tỷ</p>\r\n	</li>\r\n</ul>\r\n', 1, 229, 180, 12),
(29, 'Xiaomi Redmi Note 11S 6GB - 128GB ', '000005', '6190000', 997, '1649077845_Xiaomi Redmi Note 11S 6GB - 128GB.png', '<ul>\r\n	<li>\r\n	<p>6.43 inch, AMOLED, FHD+, 1080 x 2400 Pixels</p>\r\n	</li>\r\n	<li>\r\n	<p>108.0 MP + 8.0 MP + 2.0 MP + 2.0 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>16.0 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>MediaTek Helio G96</p>\r\n	</li>\r\n	<li>\r\n	<p>128 GB</p>\r\n	</li>\r\n</ul>\r\n', '<p>Nhận ngay khuyến mại đặc biệt</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Trả g&oacute;p 0%</p>\r\n	</li>\r\n	<li>\r\n	<p>Giảm th&ecirc;m 10% khi mua Tai nghe Xiaomi Earphones 2 Basic</p>\r\n	</li>\r\n	<li>\r\n	<p>Thu cũ đổi mới trợ gi&aacute; 15%</p>\r\n	</li>\r\n</ul>\r\n', 1, 167, 204, 12),
(30, 'TECNO SPARK 7 2GB-32GB', '00006', '2590000', 500, '1649078946_TECNO SPARK 7 2GB-32GB.png', '<ul>\r\n	<li>\r\n	<p>6.5 inch, IPS LCD, HD+, 720 x 1600 Pixels</p>\r\n	</li>\r\n	<li>\r\n	<p>16.0 MP + 2.0 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>8.0 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>MediaTek Helio A25</p>\r\n	</li>\r\n	<li>\r\n	<p>32 GB</p>\r\n	</li>\r\n</ul>\r\n', '<p>Nhận ngay khuyến mại đặc biệt</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Giảm ngay 100.000đ</p>\r\n	</li>\r\n	<li>\r\n	<p>Thu cũ đổi mới trợ gi&aacute; 15%&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Cơ hội tr&uacute;ng Jackpot đến 2 tỷ</p>\r\n	</li>\r\n	<li>\r\n	<p>Bảo h&agrave;nh 13 th&aacute;ng</p>\r\n	</li>\r\n</ul>\r\n', 1, 109, 61, 12),
(31, 'Samsung Galaxy Z Fold3 5G 256GB', '000007', '35000000', 700, '1649079123_Samsung Galaxy Z Fold3 5G 256GB.png', '<ul>\r\n	<li>\r\n	<p>Ch&iacute;nh: 7.6 inch, Ch&iacute;nh: Dynamic AMOLED 2X, HD+, 1768 x 2208 Pixels</p>\r\n	</li>\r\n	<li>\r\n	<p>12.0 MP + 12.0 MP + 12.0 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>10.0 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Snapdragon 888</p>\r\n	</li>\r\n	<li>\r\n	<p>256 GB</p>', '<p>Nhận ngay khuyến mại đặc biệt</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Giảm ngay 6.000.000đ &aacute;p dụng đến 04/04</p>\r\n	</li>\r\n	<li>\r\n	<p>Trả g&oacute;p 0%</p>\r\n	</li>\r\n	<li>\r\n	<p>Đặc quyền Galaxy Up ho&agrave;n tiền từ 40% + Trợ gi&aacute; 4.000.000đ + Tặng Samsung Care+&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng PMH 500.000đ mua h&agrave;ng tại nh&agrave; thuốc FPT Long Ch&acirc;u&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Thu cũ đổi mới trợ gi&aacute; 15%&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Giảm ngay 15% Đồng hồ Samsung Galaxy Watch 4&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Giảm ngay 4 triệu mua M&aacute;y chiếu bỏ t&uacute;i Samsung The Freestyle SP-LSP3&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Giảm ngay 1.000.000đ Tai nghe Galaxy Buds2</p>\r\n	</li>\r\n	<li>\r\n	<p>Cơ hội tr&uacute;ng Jackpot đến 2 tỷ</p>\r\n	</li>\r\n</ul>\r\n', 1, 105, 76, 12),
(32, 'iPhone 12 64GB', '000008', '17999000', 800, '1649079318_iPhone 12 64GB.png', '<ul>\r\n	<li>\r\n	<p>6.1 inch, OLED, Super Retina XDR, 2532 x 1170 Pixels</p>\r\n	</li>\r\n	<li>\r\n	<p>12.0 MP + 12.0 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>12.0 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Apple A14 Bionic</p>\r\n	</li>\r\n	<li>\r\n	<p>64 GB</p>\r\n	</li>\r\n</ul>\r\n', '<p>Chọn 1 trong 2 khuyến m&atilde;i sau</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Giảm ngay 4.000.000đ &aacute;p dụng đến 05/04&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Giảm ngay 1.000.000đ &aacute;p dụng đến 05/04 + Trả g&oacute;p 0%</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Ưu đ&atilde;i th&ecirc;m</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Tặng PMH 165.000đ mua eSim Mobifone Big Data</p>\r\n	</li>\r\n	<li>\r\n	<p>Thu cũ đổi mới trợ gi&aacute; 15%</p>\r\n	</li>\r\n	<li>\r\n	<p>Cơ hội tr&uacute;ng Jackpot đến 2 tỷ</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng g&oacute;i iCloud 50GB miễn ph&iacute; 3 th&aacute;ng&nbsp;</p>\r\n	</li>\r\n</ul>\r\n', 1, 103, 67, 12),
(33, 'OPPO A94 8GB-128GB', '000009', '5999000', 300, '1649079426_OPPO A94 8GB-128GB.png', '<ul>\r\n	<li>\r\n	<p>6.43 inch, AMOLED, FHD+, 1080 x 2400 Pixels</p>\r\n	</li>\r\n	<li>\r\n	<p>48.0 MP + 8.0 MP + 2.0 MP + 2.0 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>32.0 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Helio P95</p>\r\n	</li>\r\n	<li>\r\n	<p>128 GB</p>\r\n	</li>\r\n</ul>\r\n', '<p>Chọn 1 trong 2 khuyến m&atilde;i sau</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Giảm ngay 1.700.000đ &aacute;p dụng đến 14/04&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Giảm ngay 1.100.000đ + Trả g&oacute;p 0%</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Ưu đ&atilde;i th&ecirc;m</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Thu cũ đổi mới trợ gi&aacute; 15%</p>\r\n	</li>\r\n	<li>\r\n	<p>Cơ hội tr&uacute;ng Jackpot đến 2 tỷ</p>\r\n	</li>\r\n</ul>\r\n', 1, 103, 61, 12),
(34, 'Samsung Galaxy Z Flip3 5G 128GB', '000010', '21999000', 100, '1649079827_Samsung Galaxy Z Flip3 5G 128GB.png', '<ul>\r\n	<li>\r\n	<p>Ch&iacute;nh: 6.7 inch, Ch&iacute;nh: Dynamic AMOLED, FHD+, 1080 x 2636 Pixels</p>\r\n	</li>\r\n	<li>\r\n	<p>12.0 MP + 12.0 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>10.0 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Snapdragon 888</p>\r\n	</li>\r\n	<li>\r\n	<p>128 GB</p>\r\n	</li>\r\n	<', '<p>Nhận ngay khuyến mại đặc biệt</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Giảm ngay 3.000.000đ</p>\r\n	</li>\r\n	<li>\r\n	<p>Trả g&oacute;p 0%</p>\r\n	</li>\r\n	<li>\r\n	<p>Đặc quyền Galaxy Up ho&agrave;n tiền từ 40% + Trợ gi&aacute; 4.000.000đ + Tặng Samsung Care+&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng PMH 500.000đ mua h&agrave;ng tại nh&agrave; thuốc FPT Long Ch&acirc;u&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Thu cũ đổi mới trợ gi&aacute; 15%</p>\r\n	</li>\r\n	<li>\r\n	<p>Giảm ngay 15% Đồng hồ Samsung Galaxy Watch 4</p>\r\n	</li>\r\n	<li>\r\n	<p>Giảm ngay 4 triệu mua M&aacute;y chiếu bỏ t&uacute;i Samsung The Freestyle SP-LSP3</p>\r\n	</li>\r\n	<li>\r\n	<p>Giảm ngay 1.000.000đ Tai nghe Galaxy Buds2</p>\r\n	</li>\r\n	<li>\r\n	<p>Cơ hội tr&uacute;ng Jackpot đến 2 tỷ</p>\r\n	</li>\r\n</ul>\r\n', 1, 103, 61, 12),
(35, 'Xiaomi 11 Lite 5G NE 8GB - 256GB', '000011', '9490000', 150, '1649079989_Xiaomi 11 Lite 5G NE 8GB - 256GB.png', '<ul>\r\n	<li>\r\n	<p>6.55 inch, AMOLED, FHD+, 1080 x 2400 Pixels</p>\r\n	</li>\r\n	<li>\r\n	<p>64.0 MP + 8.0 MP + 5.0 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>20.0 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Snapdragon 778G</p>\r\n	</li>\r\n	<li>\r\n	<p>256 GB</p>\r\n	</li>\r\n</ul>\r\n', '<ul>\r\n	<li>\r\n	<p>Giảm ngay 1.000.000đ</p>\r\n	</li>\r\n	<li>\r\n	<p>Trả g&oacute;p 0%</p>\r\n	</li>\r\n	<li>\r\n	<p>Giảm th&ecirc;m 10% khi mua Tai nghe Xiaomi Earphones 2 Basic</p>\r\n	</li>\r\n	<li>\r\n	<p>Thu cũ đổi mới trợ gi&aacute; 15%</p>\r\n	</li>\r\n	<li>\r\n	<p>Cơ hội tr&uacute;ng Jackpot đến 2 tỷ&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Bảo h&agrave;nh 18 th&aacute;ng</p>\r\n	</li>\r\n</ul>\r\n', 1, 102, 61, 12),
(36, 'Samsung Galaxy Note 20 Ultra ', '000012', '17999000', 230, '1649080108_Samsung Galaxy Note 20 Ultra.png', '<ul>\r\n	<li>\r\n	<p>6.9 inch, Dynamic AMOLED 2X, 2K+, 1440 x 3088 Pixels</p>\r\n	</li>\r\n	<li>\r\n	<p>108.0 MP + 12.0 MP + 12.0 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>10.0 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Exynos 990</p>\r\n	</li>\r\n	<li>\r\n	<p>256 GB</p>\r\n	</li>\r\n</ul>\r\n', '<p>Nhận ngay khuyến mại đặc biệt</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Giảm ngay 3.000.000đ &aacute;p dụng đến 30/04</p>\r\n	</li>\r\n	<li>\r\n	<p>Trả g&oacute;p 0%</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng PMH 500.000đ mua h&agrave;ng tại nh&agrave; thuốc FPT Long Ch&acirc;u</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng PMH 200.000đ khi mua Online &aacute;p dụng đến 30/04</p>\r\n	</li>\r\n	<li>\r\n	<p>Thu cũ đổi mới trợ gi&aacute; 15%</p>\r\n	</li>\r\n	<li>\r\n	<p>Giảm ngay 15% Đồng hồ Samsung Galaxy Watch 4&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Giảm ngay 4 triệu mua M&aacute;y chiếu bỏ t&uacute;i Samsung The Freestyle SP-LSP3</p>\r\n	</li>\r\n	<li>\r\n	<p>Giảm ngay 1.000.000đ Tai nghe Galaxy Buds2</p>\r\n	</li>\r\n	<li>\r\n	<p>Cơ hội tr&uacute;ng Jackpot đến 2 tỷ</p>\r\n	</li>\r\n</ul>\r\n', 1, 103, 61, 12),
(37, 'Vivo Y21 4GB+1GB - 64GB ', '000013', '4290000', 600, '1649080270_Vivo Y21 4GB+1GB - 64GB.png', '<ul>\r\n	<li>\r\n	<p>6.51 inch, IPS LCD, HD+, 720 x 1600 Pixels</p>\r\n	</li>\r\n	<li>\r\n	<p>13.0 MP + 2.0 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>8.0 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Helio P35</p>\r\n	</li>\r\n	<li>\r\n	<p>64 GB</p>\r\n	</li>\r\n</ul>\r\n', '<p>Nhận ngay khuyến mại đặc biệt</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Trả g&oacute;p 0%</p>\r\n	</li>\r\n	<li>\r\n	<p>Thu cũ đổi mới trợ gi&aacute; 15%&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Cơ hội tr&uacute;ng Jackpot đến 2 tỷ&nbsp;</p>\r\n	</li>\r\n</ul>\r\n', 1, 104, 65, 12),
(38, 'Vivo Y33s 8GB - 128GB', '000014', '6690000', 750, '1649080374_Vivo Y33s 8GB - 128GB.png', '<ul>\r\n	<li>\r\n	<p>6.58 inch, IPS LCD, FHD+, 2408 x 1080 Pixels</p>\r\n	</li>\r\n	<li>\r\n	<p>50.0 MP + 2.0 MP + 2.0 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>16.0 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>MediaTek Helio G81</p>\r\n	</li>\r\n	<li>\r\n	<p>128 GB</p>\r\n	</li>\r\n</ul>\r\n', '<p>Nhận ngay khuyến mại đặc biệt</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Giảm ngay 300.000đ</p>\r\n	</li>\r\n	<li>\r\n	<p>Trả g&oacute;p 0%</p>\r\n	</li>\r\n	<li>\r\n	<p>Thu cũ đổi mới trợ gi&aacute; 15%</p>\r\n	</li>\r\n	<li>\r\n	<p>Cơ hội tr&uacute;ng Jackpot đến 2 tỷ</p>\r\n	</li>\r\n</ul>\r\n', 1, 102, 61, 12),
(39, 'Samsung Galaxy A22 5G', '000015', '5790000', 1200, '1649080499_Samsung Galaxy A22 5G.png', '<ul>\r\n	<li>\r\n	<p>6.6 inch, TFT LCD, FHD+, 1080 x 2400 Pixels</p>\r\n	</li>\r\n	<li>\r\n	<p>48.0 MP + 5.0 MP + 2.0 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>8.0 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>MediaTek Dimensity 700</p>\r\n	</li>\r\n	<li>\r\n	<p>128 GB</p>\r\n	</li>\r\n</ul>\r\n', '<p>Nhận ngay khuyến mại đặc biệt</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Giảm ngay 500.000đ &aacute;p dụng đến 04/04</p>\r\n	</li>\r\n	<li>\r\n	<p>Trả g&oacute;p 0%</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng PMH 200.000đ mua h&agrave;ng tại nh&agrave; thuốc FPT Long Ch&acirc;u&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng PMH 100.000đ khi mua Online</p>\r\n	</li>\r\n	<li>\r\n	<p>Thu cũ đổi mới trợ gi&aacute; 15%</p>\r\n	</li>\r\n	<li>\r\n	<p>Giảm ngay 15% Đồng hồ Samsung Galaxy Watch 4&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Giảm ngay 1.000.000đ Tai nghe Galaxy Buds2&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Cơ hội tr&uacute;ng Jackpot đến 2 tỷ</p>\r\n	</li>\r\n</ul>\r\n', 1, 102, 61, 12),
(40, 'Nokia C20 2GB - 32GB', '000016', '2240000', 320, '1649080618_Nokia C20 2GB - 32GB.png', '<ul>\r\n	<li>\r\n	<p>6.5 inch, IPS LCD, HD+, 720 x 1600 Pixels</p>\r\n	</li>\r\n	<li>\r\n	<p>5.0 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>5.0 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Spreadtrum SC9863A</p>\r\n	</li>\r\n	<li>\r\n	<p>32 GB</p>\r\n	</li>\r\n</ul>\r\n', '<ul>\r\n	<li>\r\n	<p>Giảm ngay 250.000đ</p>\r\n	</li>\r\n	<li>\r\n	<p>Trả g&oacute;p 0%</p>\r\n	</li>\r\n	<li>\r\n	<p>Thu cũ đổi mới trợ gi&aacute; 15%</p>\r\n	</li>\r\n	<li>\r\n	<p>Cơ hội tr&uacute;ng Jackpot đến 2 tỷ&nbsp;</p>\r\n	</li>\r\n</ul>\r\n', 1, 102, 61, 12),
(41, 'TECNO SPARK 7T 4GB-64GB', '000016', '2999000', 450, '1649080720_TECNO SPARK 7 2GB-32GB.png', '<ul>\r\n	<li>\r\n	<p>6.52 inch, IPS LCD, HD+, 720 x 1600 Pixels</p>\r\n	</li>\r\n	<li>\r\n	<p>48.0 MP + 48.0 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>8.0 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Mediatek Helio G35</p>\r\n	</li>\r\n	<li>\r\n	<p>64 GB</p>\r\n	</li>\r\n</ul>\r\n', '<p>Chọn 1 trong 2 khuyến m&atilde;i sau</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><input checked=\"checked\" name=\"promotion1\" type=\"radio\" value=\"1\" />Giảm ngay 500.000đ&nbsp;&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><input name=\"promotion1\" type=\"radio\" value=\"8615\" />Trả g&oacute;p 0%&nbsp;</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Ưu đ&atilde;i th&ecirc;m</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Thu cũ đổi mới trợ gi&aacute; 15%</p>\r\n	</li>\r\n	<li>\r\n	<p>Cơ hội tr&uacute;ng Jackpot đến 2 tỷ&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Bảo h&agrave;nh 13 th&aacute;ng</p>\r\n	</li>\r\n</ul>\r\n', 1, 102, 61, 12),
(42, 'Xiaomi 11T 8GB - 128GB', '000017', '10490000', 1050, '1649080884_Xiaomi 11T 8GB - 128GB.png', '<ul>\r\n	<li>\r\n	<p>6.67 inch, AMOLED, FHD+, 1080 x 2400 Pixels</p>\r\n	</li>\r\n	<li>\r\n	<p>108.0 MP + 8.0 MP + 5.0 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>16.0 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>MediaTek Dimensity 1200U</p>\r\n	</li>\r\n	<li>\r\n	<p>128 GB</p>\r\n	</li>\r\n</ul>\r\n', '<p>Nhận ngay khuyến mại đặc biệt</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Giảm ngay 500.000đ</p>\r\n	</li>\r\n	<li>\r\n	<p>Trả g&oacute;p 0%</p>\r\n	</li>\r\n	<li>\r\n	<p>Bảo h&agrave;nh 24 th&aacute;ng</p>\r\n	</li>\r\n	<li>\r\n	<p>Giảm th&ecirc;m 10% khi mua Tai nghe Xiaomi Earphones 2 Basic</p>\r\n	</li>\r\n	<li>\r\n	<p>Thu cũ đổi mới trợ gi&aacute; 15%</p>\r\n	</li>\r\n	<li>\r\n	<p>Cơ hội tr&uacute;ng Jackpot đến 2 tỷ&nbsp;</p>\r\n	</li>\r\n</ul>\r\n', 1, 102, 61, 12),
(43, 'OPPO A95 8GB-128GB', '000017', '6999000', 50, '1649081003_OPPO A95 8GB-128GB.png', '<ul>\r\n	<li>\r\n	<p>6.43 inch, AMOLED, FHD+, 1080 x 2400 Pixels</p>\r\n	</li>\r\n	<li>\r\n	<p>48.0 MP + 2.0 MP + 2.0 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>16.0 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Snapdragon 662</p>\r\n	</li>\r\n	<li>\r\n	<p>128 GB</p>\r\n	</li>\r\n</ul>\r\n', '<p>Nhận ngay khuyến mại đặc biệt</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Trả g&oacute;p 0%</p>\r\n	</li>\r\n	<li>\r\n	<p>Thu cũ đổi mới trợ gi&aacute; 15%&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Cơ hội tr&uacute;ng Jackpot đến 2 tỷ&nbsp;</p>\r\n	</li>\r\n</ul>\r\n', 1, 106, 80, 12),
(44, 'Samsung Galaxy A12 4GB-128GB', '000018', '4290000', 650, '1649081130_Samsung Galaxy A12 4GB-128GB.png', '<ul>\r\n	<li>\r\n	<p>6.5 inch, TFT LCD, HD+, 720 x 1600 Pixels</p>\r\n	</li>\r\n	<li>\r\n	<p>48.0 MP + 5.0 MP + 2.0 MP + 2.0 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>8.0 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Helio G35/Exynos 850</p>\r\n	</li>\r\n	<li>\r\n	<p>128 GB</p>\r\n	</li>\r\n</ul>\r\n', '<p>Nhận ngay khuyến mại đặc biệt</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Tặng PMH 100.000đ mua h&agrave;ng tại nh&agrave; thuốc FPT Long Ch&acirc;u&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Thu cũ đổi mới trợ gi&aacute; 15%&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Cơ hội tr&uacute;ng Jackpot đến 2 tỷ</p>\r\n	</li>\r\n</ul>\r\n', 1, 113, 78, 12),
(45, 'Xiaomi Redmi 9A 2GB-32GB ', '000019', '2490000', 300, '1649081319_Xiaomi Redmi 9A 2GB-32GB.png', '<ul>\r\n	<li>\r\n	<p>6.53 inch, IPS LCD, HD+, 720 x 1600 Pixels</p>\r\n	</li>\r\n	<li>\r\n	<p>13.0 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>5.0 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Helio G25</p>\r\n	</li>\r\n	<li>\r\n	<p>32 GB</p>\r\n	</li>\r\n</ul>\r\n', '<p>Nhận ngay khuyến mại đặc biệt</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Giảm th&ecirc;m 10% khi mua Tai nghe Xiaomi Earphones 2 Basic</p>\r\n	</li>\r\n	<li>\r\n	<p>Thu cũ đổi mới trợ gi&aacute; 15%&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Cơ hội tr&uacute;ng Jackpot đến 2 tỷ&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Bảo h&agrave;nh 18 th&aacute;ng</p>\r\n	</li>\r\n</ul>\r\n', 1, 102, 61, 12),
(46, 'Laptop Acer Nitro Gaming AN515-45-R6EV R5 5600H', '001', '21599000', 100, '1649081865_001.png', '<ul>\r\n	<li>\r\n	<p>15.6 inch, 1920 x 1080 Pixels, IPS, 144 Hz, IPS LCD LED Backlit, True Tone</p>\r\n	</li>\r\n	<li>\r\n	<p>AMD, Ryzen 5, 5600H</p>\r\n	</li>\r\n	<li>\r\n	<p>8 GB, DDR4, 3200 MHz</p>\r\n	</li>\r\n	<li>\r\n	<p>SSD 512 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>NVIDIA GeForce&', '<p>Chọn 1 trong 2 khuyến m&atilde;i sau</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><input checked=\"checked\" name=\"promotion1\" type=\"radio\" value=\"1\" />Giảm ngay 2.400.000đ &aacute;p dụng đến 05/04&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><input name=\"promotion1\" type=\"radio\" value=\"8725\" />Trả g&oacute;p 0%&nbsp;</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Ưu đ&atilde;i th&ecirc;m</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Tặng balo Gaming SUV</p>\r\n	</li>\r\n	<li>\r\n	<p>Đặc quyền khi mua Online Tặng PMH 300.000đ &aacute;p dụng đến 30/04 (Kh&ocirc;ng &aacute;p dụng k&egrave;m trả g&oacute;p 0%)</p>\r\n	</li>\r\n	<li>\r\n	<p>Ưu đ&atilde;i đặc quyền d&agrave;nh cho Học sinh Sinh vi&ecirc;n: Tặng th&ecirc;m 1 năm bảo h&agrave;nh</p>\r\n	</li>\r\n	<li>\r\n	<p>Microsoft Office tặng PMH 300.000đ khi mua k&egrave;m Laptop Chip AMD</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng Balo Laptop</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng PMH 200.000đ mua m&aacute;y in</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng PMH 100.000đ mua Microsoft 365 Personal/Family/Home &amp; Student&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Cơ hội tr&uacute;ng Jackpot đến 2 tỷ&nbsp;</p>\r\n	</li>\r\n</ul>\r\n', 1, 102, 61, 14),
(47, 'Laptop Asus TUF Gaming FX506LH-HN188W i5 10300H', '002', '19799000', 90, '1649082091_002.png', '<ul>\r\n	<li>\r\n	<p>15.6 inch, 1920 x 1080 Pixels, IPS, 144 Hz, Anti-glare LED Backlit Ultra Slim</p>\r\n	</li>\r\n	<li>\r\n	<p>Intel, Core i5, 10300H</p>\r\n	</li>\r\n	<li>\r\n	<p>8 GB, DDR4, 2933 MHz</p>\r\n	</li>\r\n	<li>\r\n	<p>SSD 512 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>NVIDIA Ge', '<p>Chọn 1 trong 2 khuyến m&atilde;i sau</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><input checked=\"checked\" name=\"promotion1\" type=\"radio\" value=\"1\" />Giảm ngay 2.200.000đ &aacute;p dụng đến 05/04&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><input name=\"promotion1\" type=\"radio\" value=\"8725\" />Trả g&oacute;p 0%&nbsp;</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Ưu đ&atilde;i th&ecirc;m</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Đặc quyền khi mua Online Tặng PMH 300.000đ &aacute;p dụng đến 30/04 (Kh&ocirc;ng &aacute;p dụng k&egrave;m trả g&oacute;p 0%)</p>\r\n	</li>\r\n	<li>\r\n	<p>Ưu đ&atilde;i đặc quyền d&agrave;nh cho Học sinh Sinh vi&ecirc;n: Tặng th&ecirc;m 1 năm bảo h&agrave;nh</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng Balo Laptop</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng PMH 100.000đ mua Microsoft 365 Personal/Family/Home &amp; Student</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng PMH 200.000đ mua m&aacute;y in</p>\r\n	</li>\r\n	<li>\r\n	<p>Cơ hội tr&uacute;ng Jackpot đến 2 tỷ&nbsp;</p>\r\n	</li>\r\n</ul>\r\n', 1, 103, 61, 14),
(48, 'Laptop HP Gaming VICTUS 16-e0175AX R5 5600H', '003', '23589000', 200, '1649082226_003.png', '<ul>\r\n	<li>\r\n	<p>16.1 inch, 1920 x 1080 Pixels, IPS, 144 Hz, 300 nits</p>\r\n	</li>\r\n	<li>\r\n	<p>AMD, Ryzen 5, 5600H</p>\r\n	</li>\r\n	<li>\r\n	<p>8 GB (2 thanh 4 GB), DDR4, 3200 MHz</p>\r\n	</li>\r\n	<li>\r\n	<p>SSD 512 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>NVIDIA GeForce RTX 305', '<p>Chọn 1 trong 2 khuyến m&atilde;i sau</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><input checked=\"checked\" name=\"promotion1\" type=\"radio\" value=\"1\" />Giảm ngay 2.910.000đ&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><input name=\"promotion1\" type=\"radio\" value=\"8725\" />Trả g&oacute;p 0%&nbsp;</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Ưu đ&atilde;i th&ecirc;m</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Đặc quyền khi mua Online Tặng PMH 700.000đ &aacute;p dụng đến 30/04 (Kh&ocirc;ng &aacute;p dụng k&egrave;m trả g&oacute;p 0%)</p>\r\n	</li>\r\n	<li>\r\n	<p>Ưu đ&atilde;i đặc quyền d&agrave;nh cho Học sinh Sinh vi&ecirc;n: Tặng th&ecirc;m 1 năm bảo h&agrave;nh</p>\r\n	</li>\r\n	<li>\r\n	<p>Microsoft Office tặng PMH 300.000đ khi mua k&egrave;m Laptop Chip AMD</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng Balo Laptop</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng PMH 200.000đ mua m&aacute;y in</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng PMH 100.000đ mua Microsoft 365 Personal/Family/Home &amp; Student</p>\r\n	</li>\r\n	<li>\r\n	<p>Cơ hội tr&uacute;ng Jackpot đến 2 tỷ&nbsp;</p>\r\n	</li>\r\n</ul>\r\n', 1, 103, 61, 14),
(49, 'Laptop Acer Aspire Gaming A715-42G-R05G R5 5500U', '004', '19799000', 35, '1649082334_004.png', '<ul>\r\n	<li>\r\n	<p>15.6 inch, 1920 x 1080 Pixels, IPS, 144 Hz, Acer ComfyView Anti-glare LED-backlit</p>\r\n	</li>\r\n	<li>\r\n	<p>AMD, Ryzen 5, 5500U</p>\r\n	</li>\r\n	<li>\r\n	<p>8 GB, DDR4, 3200 MHz</p>\r\n	</li>\r\n	<li>\r\n	<p>SSD 512 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>NVIDIA G', '<p>Chọn 1 trong 2 khuyến m&atilde;i sau</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><input checked=\"checked\" name=\"promotion1\" type=\"radio\" value=\"1\" />Giảm ngay 2.200.000đ &aacute;p dụng đến 05/04&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><input name=\"promotion1\" type=\"radio\" value=\"8725\" />Trả g&oacute;p 0%&nbsp;</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Ưu đ&atilde;i th&ecirc;m</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Tặng balo Gaming SUV</p>\r\n	</li>\r\n	<li>\r\n	<p>Đặc quyền khi mua Online Tặng PMH 300.000đ &aacute;p dụng đến 30/04 (Kh&ocirc;ng &aacute;p dụng k&egrave;m trả g&oacute;p 0%)</p>\r\n	</li>\r\n	<li>\r\n	<p>Ưu đ&atilde;i đặc quyền d&agrave;nh cho Học sinh Sinh vi&ecirc;n: Tặng th&ecirc;m 1 năm bảo h&agrave;nh&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Microsoft Office tặng PMH 300.000đ khi mua k&egrave;m Laptop Chip AMD</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng Balo Laptop</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng PMH 200.000đ mua m&aacute;y in</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng PMH 100.000đ mua Microsoft 365 Personal/Family/Home &amp; Student&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Cơ hội tr&uacute;ng Jackpot đến 2 tỷ&nbsp;</p>\r\n	</li>\r\n</ul>\r\n', 1, 102, 61, 14),
(50, 'Laptop HP VICTUS 16-e0179AX R5 5600H', '005', '23589000', 300, '1649082848_005.png', '<ul>\r\n	<li>\r\n	<p>16.1 inch, 1920 x 1080 Pixels, IPS, 144 Hz, 300 nits, Micro-edge WLED-backlit</p>\r\n	</li>\r\n	<li>\r\n	<p>AMD, Ryzen 5, 5600H</p>\r\n	</li>\r\n	<li>\r\n	<p>8 GB (2 thanh 4 GB), DDR4, 3200 MHz</p>\r\n	</li>\r\n	<li>\r\n	<p>SSD 512 GB</p>\r\n	</li>\r\n	<li>\r\n	', '<p>Chọn 1 trong 2 khuyến m&atilde;i sau</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><input checked=\"checked\" name=\"promotion1\" type=\"radio\" value=\"1\" />Giảm ngay 2.910.000đ&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><input name=\"promotion1\" type=\"radio\" value=\"8725\" />Trả g&oacute;p 0%&nbsp;</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Ưu đ&atilde;i th&ecirc;m</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Đặc quyền khi mua Online Tặng PMH 700.000đ &aacute;p dụng đến 30/04 (Kh&ocirc;ng &aacute;p dụng k&egrave;m trả g&oacute;p 0%)</p>\r\n	</li>\r\n	<li>\r\n	<p>Ưu đ&atilde;i đặc quyền d&agrave;nh cho Học sinh Sinh vi&ecirc;n: Tặng th&ecirc;m 1 năm bảo h&agrave;nh&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Microsoft Office tặng PMH 300.000đ khi mua k&egrave;m Laptop Chip AMD</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng Balo Laptop</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng PMH 200.000đ mua m&aacute;y in</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng PMH 100.000đ mua Microsoft 365 Personal/Family/Home &amp; Student&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Cơ hội tr&uacute;ng Jackpot đến 2 tỷ&nbsp;</p>\r\n	</li>\r\n</ul>\r\n', 1, 102, 61, 14),
(51, 'Laptop Asus Gaming Zephyrus GA401QH-K2091W R7 5800HS', '006', '26999000', 230, '1649082950_006.png', '<ul>\r\n	<li>\r\n	<p>14.0 inch, 2560 x 1440 Pixels, IPS, 120 Hz, 300 nits, IPS LCD</p>\r\n	</li>\r\n	<li>\r\n	<p>AMD, Ryzen 7, 5800HS</p>\r\n	</li>\r\n	<li>\r\n	<p>8 GB, DDR4, 3200 MHz</p>\r\n	</li>\r\n	<li>\r\n	<p>SSD 512 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>NVIDIA GeForce GTX 1650 4GB', '<p>Chọn 1 trong 2 khuyến m&atilde;i sau</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><input checked=\"checked\" name=\"promotion1\" type=\"radio\" value=\"1\" />Giảm ngay 3.000.000đ &aacute;p dụng đến 05/04&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><input name=\"promotion1\" type=\"radio\" value=\"8615\" />Trả g&oacute;p 0%&nbsp;</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Ưu đ&atilde;i th&ecirc;m</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Ưu đ&atilde;i đặc quyền d&agrave;nh cho Học sinh Sinh vi&ecirc;n: Tặng th&ecirc;m 1 năm bảo h&agrave;nh&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Microsoft Office tặng PMH 300.000đ khi mua k&egrave;m Laptop Chip AMD</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng Balo Laptop</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng PMH 200.000đ mua m&aacute;y in</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng PMH 100.000đ mua Microsoft 365 Personal/Family/Home &amp; Student&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Cơ hội tr&uacute;ng Jackpot đến 2 tỷ&nbsp;</p>\r\n	</li>\r\n</ul>\r\n', 1, 102, 61, 14),
(52, 'Laptop Acer Nitro Gaming AN515-57-5669 i5 11400H', '007', '21599000', 340, '1649083057_007.png', '<ul>\r\n	<li>\r\n	<p>15.6 inch, 1920 x 1080 Pixels, IPS, 144 Hz, Acer ComfyView LED-backlit</p>\r\n	</li>\r\n	<li>\r\n	<p>Intel, Core i5, 11400H</p>\r\n	</li>\r\n	<li>\r\n	<p>8 GB, DDR4, 3200 MHz</p>\r\n	</li>\r\n	<li>\r\n	<p>SSD 512 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>NVIDIA GeForce G', '<p>Chọn 1 trong 2 khuyến m&atilde;i sau</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><input checked=\"checked\" name=\"promotion1\" type=\"radio\" value=\"1\" />Giảm ngay 2.400.000đ &aacute;p dụng đến 05/04&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><input name=\"promotion1\" type=\"radio\" value=\"8725\" />Trả g&oacute;p 0%&nbsp;</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Ưu đ&atilde;i th&ecirc;m</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Tặng balo Gaming SUV</p>\r\n	</li>\r\n	<li>\r\n	<p>Đặc quyền khi mua Online Tặng PMH 300.000đ &aacute;p dụng đến 30/04 (Kh&ocirc;ng &aacute;p dụng k&egrave;m trả g&oacute;p 0%)</p>\r\n	</li>\r\n	<li>\r\n	<p>Ưu đ&atilde;i đặc quyền d&agrave;nh cho Học sinh Sinh vi&ecirc;n: Tặng th&ecirc;m 1 năm bảo h&agrave;nh&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng Balo Laptop</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng PMH 100.000đ mua Microsoft 365 Personal/Family/Home &amp; Student&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng PMH 200.000đ mua m&aacute;y in</p>\r\n	</li>\r\n	<li>\r\n	<p>Cơ hội tr&uacute;ng Jackpot đến 2 tỷ</p>\r\n	</li>\r\n</ul>\r\n', 1, 102, 61, 14),
(53, 'Laptop MSI Gaming GF63 Thin 10SC-481VN i7 10750H', '008', '20699000', 310, '1649083218_008.png', '<ul>\r\n	<li>\r\n	<p>15.6 inch, 1920 x 1080 Pixels, IPS, 144 Hz, IPS LCD</p>\r\n	</li>\r\n	<li>\r\n	<p>Intel, Core i7, 10750H</p>\r\n	</li>\r\n	<li>\r\n	<p>8 GB, DDR4, 3200 MHz</p>\r\n	</li>\r\n</ul>\r\n', '<p>Chọn 1 trong 2 khuyến m&atilde;i sau</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><input checked=\"checked\" name=\"promotion1\" type=\"radio\" value=\"1\" />Giảm ngay 2.300.000đ &aacute;p dụng đến 05/04&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><input name=\"promotion1\" type=\"radio\" value=\"8725\" />Trả g&oacute;p 0%&nbsp;</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Ưu đ&atilde;i th&ecirc;m</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Đặc quyền khi mua Online Tặng PMH 1.300.000đ &aacute;p dụng đến 30/04 (Kh&ocirc;ng &aacute;p dụng k&egrave;m trả g&oacute;p 0%)</p>\r\n	</li>\r\n	<li>\r\n	<p>Ưu đ&atilde;i đặc quyền d&agrave;nh cho Học sinh Sinh vi&ecirc;n: Tặng th&ecirc;m 1 năm bảo h&agrave;nh</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng Balo Laptop</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng PMH 100.000đ mua Microsoft 365 Personal/Family/Home &amp; Student&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng PMH 200.000đ mua m&aacute;y in</p>\r\n	</li>\r\n	<li>\r\n	<p>Cơ hội tr&uacute;ng Jackpot đến 2 tỷ&nbsp;</p>\r\n	</li>\r\n</ul>\r\n', 1, 102, 61, 14),
(54, 'Laptop Asus TUF Gaming FX506LH HN002T i5 10300H', '009', '18899000', 260, '1649083322_009.png', '<ul>\r\n	<li>\r\n	<p>15.6 inch, 1920 x 1080 Pixels, IPS, 144 Hz, 250 nits, IPS LCD LED Backlit, True Tone</p>\r\n	</li>\r\n	<li>\r\n	<p>Intel, Core i5, 10300H</p>\r\n	</li>\r\n	<li>\r\n	<p>8 GB, DDR4, 2933 MHz</p>\r\n	</li>\r\n	<li>\r\n	<p>SSD 512 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>NV', '<p>Chọn 1 trong 2 khuyến m&atilde;i sau</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><input checked=\"checked\" name=\"promotion1\" type=\"radio\" value=\"1\" />Giảm ngay 2.100.000đ &aacute;p dụng đến 05/04&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><input name=\"promotion1\" type=\"radio\" value=\"8725\" />Trả g&oacute;p 0%&nbsp;</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Ưu đ&atilde;i th&ecirc;m</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Đặc quyền khi mua Online Tặng PMH 300.000đ &aacute;p dụng đến 30/04 (Kh&ocirc;ng &aacute;p dụng k&egrave;m trả g&oacute;p 0%)</p>\r\n	</li>\r\n	<li>\r\n	<p>Ưu đ&atilde;i đặc quyền d&agrave;nh cho Học sinh Sinh vi&ecirc;n: Tặng th&ecirc;m 1 năm bảo h&agrave;nh&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng Balo Laptop</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng PMH 100.000đ mua Microsoft 365 Personal/Family/Home &amp; Student</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng PMH 200.000đ mua m&aacute;y in</p>\r\n	</li>\r\n	<li>\r\n	<p>Cơ hội tr&uacute;ng Jackpot đến 2 tỷ&nbsp;</p>\r\n	</li>\r\n</ul>\r\n', 1, 102, 61, 14),
(55, 'Laptop Asus Gaming TUF FX506HCB-HN144W i5 11400H', '010', '22949000', 410, '1649083427_010.png', '<ul>\r\n	<li>\r\n	<p>15.6 inch, 1920 x 1080 Pixels, IPS, 144 Hz, 250 nits, Anti-glare LED-backlit</p>\r\n	</li>\r\n	<li>\r\n	<p>Intel, Core i5, 11400H</p>\r\n	</li>\r\n	<li>\r\n	<p>8 GB, DDR4</p>\r\n	</li>\r\n	<li>\r\n	<p>SSD 512 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>NVIDIA GeForce RTX 3', '<p>Chọn 1 trong 2 khuyến m&atilde;i sau</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><input checked=\"checked\" name=\"promotion1\" type=\"radio\" value=\"1\" />Giảm ngay 2.550.000đ &aacute;p dụng đến 05/04&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><input name=\"promotion1\" type=\"radio\" value=\"8725\" />Trả g&oacute;p 0%&nbsp;</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Ưu đ&atilde;i th&ecirc;m</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Đặc quyền khi mua Online Tặng PMH 300.000đ &aacute;p dụng đến 30/04 (Kh&ocirc;ng &aacute;p dụng k&egrave;m trả g&oacute;p 0%)</p>\r\n	</li>\r\n	<li>\r\n	<p>Ưu đ&atilde;i đặc quyền d&agrave;nh cho Học sinh Sinh vi&ecirc;n: Tặng th&ecirc;m 1 năm bảo h&agrave;nh&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng Balo Laptop</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng PMH 100.000đ mua Microsoft 365 Personal/Family/Home &amp; Student&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng PMH 200.000đ mua m&aacute;y in</p>\r\n	</li>\r\n	<li>\r\n	<p>Cơ hội tr&uacute;ng Jackpot đến 2 tỷ&nbsp;</p>\r\n	</li>\r\n</ul>\r\n', 1, 102, 61, 14),
(56, 'Laptop Acer Nitro Gaming AN515-57-54MV i5 11400H', '011', '23849000', 356, '1649083533_011.png', '<ul>\r\n	<li>\r\n	<p>15.6 inch, 1920 x 1080 Pixels, IPS, 144 Hz, Acer ComfyView LED-backlit</p>\r\n	</li>\r\n	<li>\r\n	<p>Intel, Core i5, 11400H</p>\r\n	</li>\r\n	<li>\r\n	<p>8 GB, DDR4, 3200 MHz</p>\r\n	</li>\r\n	<li>\r\n	<p>SSD 512 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>NVIDIA GeForce R', '<p>Chọn 1 trong 2 khuyến m&atilde;i sau</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><input checked=\"checked\" name=\"promotion1\" type=\"radio\" value=\"1\" />Giảm ngay 2.650.000đ &aacute;p dụng đến 05/04&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><input name=\"promotion1\" type=\"radio\" value=\"8725\" />Trả g&oacute;p 0%&nbsp;</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Ưu đ&atilde;i th&ecirc;m</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Tặng balo Gaming SUV</p>\r\n	</li>\r\n	<li>\r\n	<p>Đặc quyền khi mua Online Tặng PMH 300.000đ &aacute;p dụng đến 30/04 (Kh&ocirc;ng &aacute;p dụng k&egrave;m trả g&oacute;p 0%)</p>\r\n	</li>\r\n	<li>\r\n	<p>Ưu đ&atilde;i đặc quyền d&agrave;nh cho Học sinh Sinh vi&ecirc;n: Tặng th&ecirc;m 1 năm bảo h&agrave;nh&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng Balo Laptop</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng PMH 100.000đ mua Microsoft 365 Personal/Family/Home &amp; Student&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng PMH 200.000đ mua m&aacute;y in</p>\r\n	</li>\r\n	<li>\r\n	<p>Cơ hội tr&uacute;ng Jackpot đến 2 tỷ&nbsp;</p>\r\n	</li>\r\n</ul>\r\n', 1, 102, 61, 14),
(57, 'Laptop Lenovo Ideapad Slim 3 14ITL6 i3 1115G4', '012', '13499000', 500, '1649083627_012.png', '<ul>\r\n	<li>\r\n	<p>14.0 inch, 1920 x 1080 Pixels, TN, 250 nits, Anti-glare LED-backlit</p>\r\n	</li>\r\n	<li>\r\n	<p>Intel, Core i3, 1115G4</p>\r\n	</li>\r\n	<li>\r\n	<p>8 GB, DDR4, 3200 MHz</p>\r\n	</li>\r\n	<li>\r\n	<p>SSD 512 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Intel UHD Graphics<', '<p>Chọn 1 trong 2 khuyến m&atilde;i sau</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><input checked=\"checked\" name=\"promotion1\" type=\"radio\" value=\"1\" />Giảm ngay 1.400.000đ&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><input name=\"promotion1\" type=\"radio\" value=\"8725\" />Trả g&oacute;p 0%&nbsp;</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Ưu đ&atilde;i th&ecirc;m</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Đặc quyền khi mua Online Tặng PMH 700.000đ &aacute;p dụng đến 30/04 (Kh&ocirc;ng &aacute;p dụng k&egrave;m trả g&oacute;p 0%)</p>\r\n	</li>\r\n	<li>\r\n	<p>Ưu đ&atilde;i đặc quyền d&agrave;nh cho Học sinh Sinh vi&ecirc;n: Tặng th&ecirc;m 1 năm bảo h&agrave;nh&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng Balo Laptop</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng PMH 100.000đ mua Microsoft 365 Personal/Family/Home &amp; Student&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Tặng PMH 200.000đ mua m&aacute;y in</p>\r\n	</li>\r\n	<li>\r\n	<p>Cơ hội tr&uacute;ng Jackpot đến 2 tỷ</p>\r\n	</li>\r\n</ul>\r\n', 1, 102, 61, 14),
(61, 'Cáp USB-C to Magsafe 3 Cable (2m)', '004', '1499000', 2100, '1649260986_004.png', '<p>Loại : C&aacute;p sạc</p>\r\n\r\n<p>Cổng giao tiếp : Đầu ra : Magsafe Charger, Đầu v&agrave;o : Type C</p>\r\n\r\n<p>Sử dụng cho thiết bị : Laptop, m&aacute;y t&iacute;nh để b&agrave;n</p>\r\n', '<p>Hưởng ngay khuyến m&atilde;i đặc biệt</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Cơ hội tr&uacute;ng Jackpot đến 2 tỷ</p>\r\n	</li>\r\n</ul>\r\n', 1, 102, 61, 15),
(62, 'Tai nghe AirPods Pro 2021 ', '005', '4899000', 30, '1649261107_005.png', '<p>Dung lượng pin :&nbsp; 4.5 giờ</p>\r\n\r\n<p>Xuất xứ : Trung Quốc</p>\r\n\r\n<p>Thời gian bảo h&agrave;nh (th&aacute;ng) : 12</p>\r\n', '<p>Chọn 1 trong 2 khuyến mại sau</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><input checked=\"checked\" name=\"promotion1\" type=\"radio\" value=\"70759\" />Giảm ngay 1.100.000đ &aacute;p dụng đến 08/04</p>\r\n	</li>\r\n	<li>\r\n	<p><input name=\"promotion1\" type=\"radio\" value=\"0\" />Trả g&oacute;p 0%</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Ưu đ&atilde;i th&ecirc;m</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Cơ hội tr&uacute;ng Jackpot đến 2 tỷ&nbsp;</p>\r\n	</li>\r\n</ul>\r\n', 1, 103, 61, 15),
(63, 'Tai nghe Beats Fit Pro True Wireless Earbuds', '006', '4999000', 50, '1649261287_006.png', '<p>Beats Fit Pro True Wireless Earbuds c&oacute; kiểu d&aacute;ng theo dạng in-ear nh&eacute;t tai nhằm tăng cường khả năng chống ồn hiệu quả. Bằng kinh nghiệm của m&igrave;nh, c&aacute;c kỹ sư của Beats đ&atilde; t&iacute', '<p>Hưởng ngay khuyến m&atilde;i đặc biệt</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Trả g&oacute;p 0%</p>\r\n	</li>\r\n	<li>\r\n	<p>Cơ hội tr&uacute;ng Jackpot đến 2 tỷ&nbsp;</p>\r\n	</li>\r\n</ul>\r\n', 1, 102, 61, 15),
(64, 'Tai nghe Beats', '007', '3998995', 250, '1664588072_1649077123_iPhone 13 Pro Max 128GB.png', '<p>Loại : Tai nghe kh&ocirc;ng d&acirc;y</p>\r\n\r\n<p>Xuất xứ : Trung quốc</p>\r\n\r\n<p>Thời gian bảo h&agrave;nh (th&aacute;ng) : 12 th&aacute;ng</p>\r\n', '<p>Hưởng ngay khuyến m&atilde;i đặc biệt</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Trả g&oacute;p 0%</p>\r\n	</li>\r\n	<li>\r\n	<p>Cơ hội tr&uacute;ng Jackpot đến 2 tỷ</p>\r\n	</li>\r\n</ul>\r\n', 1, 103, 61, 15),
(91, '', '', '', 0, '', '', '', 0, 0, 61, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `id_shipping` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_dangky` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`id_shipping`, `name`, `phone`, `address`, `note`, `id_dangky`) VALUES
(3, 'Bùi Viết hải', '123', 'quận 7', 'gọi trước khi giao', 6),
(7, 'Tâm Nguyễn', '123456722', 'tphcm', 'giao chậm', 36),
(8, 'Tú Lê', '87656789', 'hà nội', 'đặt chơi cho vui chứ không nhận', 37),
(9, 'Nguyễn Văn B', '2222', 'hà nội', 'đặt chơi cho vui ', 38);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Chỉ mục cho bảng `tbl_album`
--
ALTER TABLE `tbl_album`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_binhluansanpham`
--
ALTER TABLE `tbl_binhluansanpham`
  ADD PRIMARY KEY (`id_binhluan`);

--
-- Chỉ mục cho bảng `tbl_carousel`
--
ALTER TABLE `tbl_carousel`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  ADD PRIMARY KEY (`id_cart_details`);

--
-- Chỉ mục cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_dangky`);

--
-- Chỉ mục cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  ADD PRIMARY KEY (`id_baiviet`);

--
-- Chỉ mục cho bảng `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- Chỉ mục cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`id_shipping`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `tbl_album`
--
ALTER TABLE `tbl_album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `tbl_binhluansanpham`
--
ALTER TABLE `tbl_binhluansanpham`
  MODIFY `id_binhluan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `tbl_carousel`
--
ALTER TABLE `tbl_carousel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  MODIFY `id_cart_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_dangky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  MODIFY `id_baiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `id_shipping` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
