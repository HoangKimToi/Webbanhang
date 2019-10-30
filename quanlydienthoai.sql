-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 06, 2019 lúc 05:48 PM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlydienthoai`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `Id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Pass` text NOT NULL,
  `trangthai` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`Id`, `Name`, `Pass`, `trangthai`) VALUES
(1, 'admin', '123456', 0),
(2, 'Ky', 'Ky', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbchitiethoadon`
--

CREATE TABLE `tbchitiethoadon` (
  `bill_detail_id` int(11) NOT NULL,
  `bill_id` bigint(20) NOT NULL,
  `masp` int(11) NOT NULL,
  `gia` double NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbchitiethoadon`
--

INSERT INTO `tbchitiethoadon` (`bill_detail_id`, `bill_id`, `masp`, `gia`, `quantity`) VALUES
(10, 1553242475139, 16, 25000, 5),
(11, 1553243303145, 1, 10000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbdanhmuc`
--

CREATE TABLE `tbdanhmuc` (
  `danhmuc_id` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbdanhmuc`
--

INSERT INTO `tbdanhmuc` (`danhmuc_id`, `tendanhmuc`) VALUES
(1, 'Sản phẩm'),
(2, 'Phụ kiện'),
(4, 'Kim'),
(5, 'Tới');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbhoadon`
--

CREATE TABLE `tbhoadon` (
  `bill_id` bigint(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `total` double NOT NULL,
  `payment` varchar(100) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbhoadon`
--

INSERT INTO `tbhoadon` (`bill_id`, `username`, `total`, `payment`, `address`, `date`) VALUES
(1553243303145, 'admin', 10000, 'Live', 'Lê Đức Thọ', '2019-03-22 08:28:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbphukien`
--

CREATE TABLE `tbphukien` (
  `maphukien` int(11) NOT NULL,
  `tenphukien` varchar(100) NOT NULL,
  `gia` double NOT NULL,
  `anh` varchar(100) NOT NULL,
  `gioithieu` varchar(100) NOT NULL,
  `sukien` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbphukien`
--

INSERT INTO `tbphukien` (`maphukien`, `tenphukien`, `gia`, `anh`, `gioithieu`, `sukien`) VALUES
(1, 'Sản phẩm 1', 10000, 'product7.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'New'),
(2, 'Sản phẩm 2', 12000, 'product8.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'sale'),
(3, 'Sản phẩm 3', 11000, 'product9.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'New'),
(4, 'Sản phẩm 4', 14000, 'product10.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', ''),
(5, 'Sản phẩm 5', 15000, 'product11.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', ''),
(6, 'Sản phẩm 6', 16000, 'product12.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'sale'),
(7, 'Sản phẩm 7 ', 18000, 'product7.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbsanpham`
--

CREATE TABLE `tbsanpham` (
  `masp` int(11) NOT NULL,
  `tensp` varchar(100) NOT NULL,
  `gia` double NOT NULL,
  `anh` varchar(1000) NOT NULL,
  `gioithieu` varchar(1000) NOT NULL,
  `sukien` varchar(100) NOT NULL,
  `mapk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbsanpham`
--

INSERT INTO `tbsanpham` (`masp`, `tensp`, `gia`, `anh`, `gioithieu`, `sukien`, `mapk`) VALUES
(1, 'Sản phẩm 1', 10000, 'product1.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to ', 'New', 0),
(2, 'Sản phẩm 2', 11000, 'product2.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to ', '', 0),
(3, 'Sảm phẩm 3', 12000, 'product3.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to ', '', 0),
(4, 'Sản phẩm 4', 13000, 'product4.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to ', 'sale', 0),
(5, 'Sản phẩm 5', 14000, 'product5.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to ', '', 0),
(6, 'Sản phẩm 6', 15000, 'product6.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to ', '', 0),
(7, 'Sản phẩm 7', 16000, 'product7.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to ', 'sale', 1),
(8, 'Sản phẩm 8', 17000, 'product8.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to ', '', 1),
(9, 'Sản phẩm 9', 18000, 'product9.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to ', 'New', 1),
(10, 'Sản phẩm 10', 19000, 'product10.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to ', '', 1),
(11, 'Sản phẩm 11', 20000, 'product11.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to ', '', 1),
(12, 'Sản phẩm 12', 21000, 'product12.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to ', 'sale', 1),
(13, 'Sản phẩm 13', 22000, 'product18.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to ', '', 0),
(14, 'Sản phẩm 14', 23000, 'product14.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to ', '', 0),
(15, 'Sản phẩm 15', 24000, 'product15.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to ', '', 0),
(16, 'Sản phẩm 16', 25000, 'product16.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to ', 'New', 0),
(17, 'Sản phẩm 17', 26000, 'product17.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to ', '', 0),
(18, 'Sản phẩm 18', 27000, 'product18.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to ', '', 0),
(19, 'Sản phẩm 19', 28000, 'product19.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to ', 'New', 0),
(20, 'Sản phẩm 20', 29000, 'product20.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to ', '', 0),
(21, 'Sản phẩm 21', 30000, 'product21.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to ', '', 0),
(22, 'Sản phẩm 22', 31000, 'product22.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to ', 'New', 0),
(23, 'Sản phẩm 23', 32000, 'product23.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to ', '', 0),
(25, 'Sản phẩm 25', 34000, 'product25.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to ', '', 1),
(28, 'Sản phẩm 26', 2, 'product11.jpg', 'gg', 'New', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbuser`
--

CREATE TABLE `tbuser` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `diachi` varchar(1000) NOT NULL,
  `sdt` int(11) NOT NULL,
  `gioitinh` tinyint(1) NOT NULL,
  `chucvu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbuser`
--

INSERT INTO `tbuser` (`id`, `username`, `password`, `hoten`, `diachi`, `sdt`, `gioitinh`, `chucvu`) VALUES
(1, 'admin', '123456', 'Hoàng Kim Tới', 'Hải Dương', 961523638, 1, 'admin'),
(2, 'user', '123456', 'Hoàng Kim Tới', 'HD', 961523638, 1, '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Chỉ mục cho bảng `tbchitiethoadon`
--
ALTER TABLE `tbchitiethoadon`
  ADD PRIMARY KEY (`bill_detail_id`);

--
-- Chỉ mục cho bảng `tbdanhmuc`
--
ALTER TABLE `tbdanhmuc`
  ADD PRIMARY KEY (`danhmuc_id`);

--
-- Chỉ mục cho bảng `tbhoadon`
--
ALTER TABLE `tbhoadon`
  ADD PRIMARY KEY (`bill_id`);

--
-- Chỉ mục cho bảng `tbphukien`
--
ALTER TABLE `tbphukien`
  ADD PRIMARY KEY (`maphukien`);

--
-- Chỉ mục cho bảng `tbsanpham`
--
ALTER TABLE `tbsanpham`
  ADD PRIMARY KEY (`masp`);

--
-- Chỉ mục cho bảng `tbuser`
--
ALTER TABLE `tbuser`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbchitiethoadon`
--
ALTER TABLE `tbchitiethoadon`
  MODIFY `bill_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbdanhmuc`
--
ALTER TABLE `tbdanhmuc`
  MODIFY `danhmuc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbphukien`
--
ALTER TABLE `tbphukien`
  MODIFY `maphukien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbsanpham`
--
ALTER TABLE `tbsanpham`
  MODIFY `masp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `tbuser`
--
ALTER TABLE `tbuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
