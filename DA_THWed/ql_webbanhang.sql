-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2025 at 12:10 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ql_webbanhang`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `idchitiet` int(11) NOT NULL,
  `idhd` int(11) DEFAULT NULL,
  `idsp` int(11) DEFAULT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` decimal(15,2) NOT NULL,
  `tongtien` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`idchitiet`, `idhd`, `idsp`, `soluong`, `dongia`, `tongtien`) VALUES
(1, 1, 1, 2, 200000.00, 400000.00),
(2, 1, 3, 1, 500000.00, 500000.00),
(3, 2, 5, 3, 300000.00, 900000.00),
(4, 3, 2, 1, 450000.00, 450000.00),
(5, 5, 1, 1, 200000.00, 200000.00),
(6, 6, 6, 1, 180000.00, 180000.00),
(7, 7, 9, 1, 600000.00, 600000.00),
(8, 7, 17, 1, 420000.00, 420000.00),
(9, 7, 5, 1, 150000.00, 150000.00);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `content`) VALUES
(1, 'Nguyễn Thị Mai', 'mai.nguyen@gmail.com', '0912345678', 'Tôi muốn hỏi về chính sách đổi trả quần áo.'),
(2, 'Lê Văn Hùng', 'hung.le@gmail.com', '0923456789', 'Cảm ơn shop, sản phẩm chất lượng, giao hàng nhanh.'),
(3, 'Trần Thanh Tâm', 'tam.tran@gmail.com', '0934567890', 'Tôi muốn đặt may áo theo yêu cầu, liên hệ lại nhé.');

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `idhd` int(11) NOT NULL,
  `ngaytao` datetime DEFAULT current_timestamp(),
  `tongtien` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`idhd`, `ngaytao`, `tongtien`) VALUES
(1, '2025-05-01 10:30:00', 900000.00),
(2, '2025-05-02 14:45:00', 900000.00),
(3, '2025-05-03 09:15:00', 450000.00),
(4, '2025-05-04 16:20:00', 0.00),
(5, '2025-05-29 08:58:03', 200000.00),
(6, '2025-05-29 10:22:49', 180000.00),
(7, '2025-05-29 10:51:37', 1170000.00);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `tennguoidanhgia` varchar(50) NOT NULL,
  `sosao` int(1) NOT NULL,
  `noidung` text NOT NULL,
  `ngaydanhgia` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `tennguoidanhgia`, `sosao`, `noidung`, `ngaydanhgia`) VALUES
(1, 1, 'Nguyễn Văn An', 5, 'Áo thun rất đẹp, vải mềm, mặc thoải mái!', '2025-04-01 12:00:00'),
(2, 1, 'Trần Thị Lan', 4, 'Chất vải tốt, nhưng size hơi nhỏ so với mô tả.', '2025-04-02 15:30:00'),
(3, 2, 'Lê Minh Tuấn', 5, 'Quần jeans chất lượng, form dáng chuẩn, rất ưng.', '2025-04-03 09:45:00'),
(4, 3, 'Phạm Thị Hương', 3, 'Áo sơ mi đẹp nhưng giao hàng hơi chậm.', '2025-04-04 14:20:00'),
(5, 4, 'Nguyễn Thanh Tùng', 5, 'Váy xinh, đúng như hình, rất hài lòng!', '2025-04-05 11:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `idsp` int(11) NOT NULL,
  `danhmuc` varchar(50) NOT NULL,
  `hinhanh` varchar(300) NOT NULL,
  `tensp` varchar(100) NOT NULL,
  `giasp` float NOT NULL,
  `giacu` float NOT NULL,
  `loai` varchar(50) NOT NULL,
  `MoTa` text NOT NULL,
  `size` varchar(50) NOT NULL,
  `mausac` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`idsp`, `danhmuc`, `hinhanh`, `tensp`, `giasp`, `giacu`, `loai`, `MoTa`, `size`, `mausac`) VALUES
(1, 'aothun', '../images/aothun_trang.png', 'Áo thun unisex cotton', 200000, 250000, 'hangmoi', 'Áo thun unisex chất liệu 100% cotton mềm mại, thấm hút mồ hôi tốt. Thiết kế đơn giản, phù hợp với mọi dáng người. Lý tưởng để mặc hàng ngày hoặc phối đồ phong cách. Có nhiều kích cỡ từ S đến XXL.', 'S,M,L,XL,XXL', 'Trắng, Đen, Xám'),
(2, 'quanjeans', '../images/quanjeans_den.png', 'Quần jeans nam slimfit', 450000, 500000, 'hangbanchay', 'Quần jeans nam slimfit, chất liệu denim cao cấp, co giãn nhẹ, tạo cảm giác thoải mái khi mặc. Form dáng hiện đại, phù hợp với nhiều phong cách từ năng động đến lịch lãm.', '28,29,30,31,32', 'Đen, Xanh đậm'),
(3, 'aosomi', '../images/aosomi_xanh.png', 'Áo sơ mi nam dài tay', 300000, 0, '', 'Áo sơ mi nam dài tay, chất liệu cotton pha, ít nhăn, thoáng khí. Thiết kế thanh lịch, phù hợp cho môi trường công sở hoặc các dịp trang trọng. Có nhiều kích cỡ và màu sắc để lựa chọn.', 'M,L,XL', 'Xanh navy, Trắng, Xám'),
(4, 'vay', '../images/vay_hoa.png', 'Váy maxi hoa nhí', 500000, 550000, 'hanggiamgia', 'Váy maxi hoa nhí chất liệu voan mềm mại, lót cotton thoáng mát. Thiết kế nhẹ nhàng, nữ tính, phù hợp cho các buổi dạo chơi hoặc tiệc nhẹ. Có nhiều size và màu sắc phù hợp mọi dáng người.', 'S,M,L', 'Hoa nhí trắng, Hoa nhí xanh'),
(5, 'phukien', '../images/munon.png', 'Mũ nón bucket', 150000, 0, 'hangmoi', 'Mũ bucket thời trang, chất liệu cotton pha, thiết kế trẻ trung, phù hợp cho cả nam và nữ. Lý tưởng để phối đồ streetwear hoặc sử dụng khi đi du lịch, dã ngoại.', 'One size', 'Đen, Be, Xanh lá'),
(6, 'aothun', '../images/aothun_do.png', 'Áo thun nam cổ tròn basic', 180000, 220000, 'hangmoi', 'Áo thun nam cổ tròn, chất liệu cotton 100%, mềm mại, thoáng khí. Thiết kế tối giản, dễ phối đồ, phù hợp với mọi dịp từ đi làm đến đi chơi.', 'S,M,L,XL', 'Đỏ, Xanh lá, Đen'),
(7, 'quanjeans', '../images/quanjeans_xanhnhat.png', 'Quần jeans nữ skinny', 400000, 450000, 'hangbanchay', 'Quần jeans nữ skinny, chất liệu denim co giãn, ôm sát cơ thể, tôn dáng. Phù hợp với phong cách trẻ trung, năng động.', '26,27,28,29,30', 'Xanh nhạt, Trắng, Đen'),
(8, 'aosomi', '../images/aosomi_trang.png', 'Áo sơ mi nữ ngắn tay', 250000, 0, '', 'Áo sơ mi nữ ngắn tay, chất liệu lụa cao cấp, mềm mại, không nhăn. Thiết kế thanh lịch, phù hợp với môi trường công sở hoặc các buổi hẹn hò.', 'S,M,L', 'Trắng, Hồng phấn, Xanh pastel'),
(9, 'vay', '../images/vay_den.png', 'Váy tiểu thư công sở', 600000, 650000, 'hanggiamgia', 'Váy tiểu thư công sở, chất liệu kaki cao cấp, dáng chữ A, tôn vòng eo. Phù hợp với các buổi tiệc nhẹ hoặc môi trường làm việc chuyên nghiệp.', 'S,M,L', 'Đen, Be, Xanh navy'),
(10, 'phukien', '../images/tuixach.png', 'Túi xách tote canvas', 200000, 0, 'hangmoi', 'Túi xách tote canvas, thiết kế đơn giản, rộng rãi, phù hợp để đi học, đi làm hoặc đi chơi. Chất liệu bền, dễ giặt.', 'One size', 'Be, Đen, Xanh đậm'),
(11, 'aothun', '../images/aothun_hoa.png', 'Áo thun nữ in họa tiết hoa', 220000, 270000, 'hangmoi', 'Áo thun nữ in họa tiết hoa, chất liệu cotton pha, mềm mại, thấm hút mồ hôi. Thiết kế trẻ trung, phù hợp với các buổi đi chơi hoặc dạo phố.', 'S,M,L', 'Trắng, Vàng, Hồng'),
(12, 'quanjeans', '../images/quanjeans_boyfriend.png', 'Quần jeans nữ boyfriend', 480000, 520000, 'hangbanchay', 'Quần jeans nữ boyfriend, chất liệu denim dày dặn, dáng suông thoải mái. Phong cách cá tính, phù hợp để phối với áo thun hoặc croptop.', '26,27,28,29', 'Xanh đậm, Xám, Đen'),
(13, 'aosomi', '../images/aosomi_cai.png', 'Áo sơ mi nam kẻ caro', 350000, 0, '', 'Áo sơ mi nam kẻ caro, chất liệu cotton pha, thoáng mát, ít nhăn. Thiết kế năng động, phù hợp với các buổi dạo chơi hoặc đi học.', 'M,L,XL', 'Đỏ caro, Xanh caro, Xám caro'),
(14, 'vay', '../images/vay_xeply.png', 'Váy xòe xếp ly', 550000, 600000, 'hanggiamgia', 'Váy xòe xếp ly, chất liệu chiffon nhẹ nhàng, lót lụa mềm mại. Thiết kế thanh thoát, phù hợp cho các buổi tiệc hoặc sự kiện quan trọng.', 'S,M,L', 'Hồng phấn, Trắng, Xanh ngọc'),
(15, 'phukien', '../images/giaythethao.png', 'Giày thể thao unisex', 700000, 0, 'hangmoi', 'Giày thể thao unisex, chất liệu da tổng hợp và vải lưới, đế cao su êm ái. Thiết kế trẻ trung, phù hợp để đi học, đi chơi hoặc tập thể thao.', '38,39,40,41,42', 'Trắng, Đen, Xám'),
(16, 'aothun', '../images/aothun_polo.png', 'Áo thun polo nam', 280000, 320000, 'hangmoi', 'Áo thun polo nam, chất liệu cotton pique, thoáng khí, thấm hút mồ hôi. Thiết kế lịch sự, phù hợp với môi trường công sở hoặc các buổi gặp gỡ bạn bè.', 'M,L,XL', 'Xanh navy, Đen, Trắng'),
(17, 'quanjeans', '../images/quanjeans_ongsuong.png', 'Quần jeans nam ống suông', 420000, 470000, 'hangbanchay', 'Quần jeans nam ống suông, chất liệu denim cao cấp, thoải mái khi mặc. Dáng quần cổ điển, dễ phối đồ với áo thun hoặc sơ mi.', '29,30,31,32,33', 'Xanh đậm, Đen, Xám'),
(18, 'aosomi', '../images/aosomi_lua.png', 'Áo sơ mi nữ lụa cao cấp', 450000, 0, '', 'Áo sơ mi nữ lụa cao cấp, chất liệu lụa tự nhiên, mềm mại, sang trọng. Thiết kế tinh tế, phù hợp với các buổi tiệc hoặc sự kiện quan trọng.', 'S,M,L', 'Trắng, Vàng ánh kim, Đen'),
(19, 'vay', '../images/vay_thun.png', 'Váy thun ôm body', 350000, 400000, 'hanggiamgia', 'Váy thun ôm body, chất liệu thun co giãn, ôm sát cơ thể, tôn dáng. Phù hợp với các buổi tiệc tối hoặc hẹn hò.', 'S,M,L', 'Đen, Đỏ, Xanh đậm'),
(20, 'phukien', '../images/khanquang.png', 'Khăn quàng cổ len', 120000, 0, 'hangmoi', 'Khăn quàng cổ len, chất liệu len mềm mại, giữ ấm tốt. Thiết kế thời trang, phù hợp để sử dụng trong mùa đông hoặc làm phụ kiện phối đồ.', 'One size', 'Xám, Đỏ, Be'),
(21, 'aothun', '../images/aothun_kid.png', 'Áo thun trẻ em in hình', 150000, 180000, 'hangmoi', 'Áo thun trẻ em in hình hoạt hình, chất liệu cotton 100%, an toàn cho da bé. Thiết kế dễ thương, phù hợp cho bé mặc đi chơi hoặc đi học.', '2,4,6,8', 'Vàng, Xanh dương, Hồng'),
(22, 'quanjeans', '../images/quanjeans_short.png', 'Quần jeans short nữ', 300000, 350000, 'hangbanchay', 'Quần jeans short nữ, chất liệu denim mềm, dáng ngắn năng động. Phù hợp để mặc trong mùa hè hoặc khi đi biển.', '26,27,28,29', 'Xanh nhạt, Trắng, Đen'),
(23, 'aosomi', '../images/aosomi_tre.png', 'Áo sơ mi trẻ em dài tay', 200000, 0, '', 'Áo sơ mi trẻ em dài tay, chất liệu cotton, thoáng mát, ít nhăn. Thiết kế lịch sự, phù hợp cho bé mặc đi học hoặc dự tiệc.', '2,4,6,8', 'Trắng, Xanh navy, Xám'),
(24, 'vay', '../images/vay_be.png', 'Váy công chúa bé gái', 450000, 500000, 'hanggiamgia', 'Váy công chúa bé gái, chất liệu tulle và lót cotton, nhẹ nhàng, an toàn cho da bé. Thiết kế xinh xắn, phù hợp cho các buổi tiệc hoặc chụp ảnh.', '2,4,6,8', 'Hồng phấn, Trắng, Tím nhạt'),
(25, 'phukien', '../images/daynit.png', 'Dây nịt da nam', 250000, 0, 'hangmoi', 'Dây nịt da nam, chất liệu da bò cao cấp, thiết kế cổ điển, sang trọng. Phù hợp để sử dụng trong công việc hoặc các dịp trang trọng.', 'One size', 'Đen, Nâu, Xanh navy'),
(26, 'aothun', '../images/aothun_cotim.png', 'Áo thun nam cotton in chữ', 190000, 230000, 'hangmoi', 'Áo thun nam chất liệu cotton cao cấp, in chữ thời thượng, thấm hút mồ hôi tốt. Thiết kế năng động, phù hợp cho các hoạt động hàng ngày hoặc đi chơi.', 'S,M,L,XL', 'Đen, Trắng, Xám'),
(27, 'quanjeans', '../images/quanjeans_rips.png', 'Quần jeans nam rách gối', 460000, 500000, 'hangbanchay', 'Quần jeans nam rách gối, chất liệu denim mềm, dáng slimfit cá tính. Phù hợp với phong cách streetwear hoặc các buổi dạo phố cùng bạn bè.', '29,30,31,32', 'Xanh nhạt, Đen, Xám'),
(28, 'aosomi', '../images/aosomi_den.png', 'Áo sơ mi nam công sở', 380000, 0, '', 'Áo sơ mi nam công sở, chất liệu cotton pha kaki, ít nhăn, thoáng mát. Thiết kế lịch lãm, phù hợp với môi trường làm việc chuyên nghiệp hoặc các sự kiện trang trọng.', 'M,L,XL', 'Đen, Trắng, Xanh navy'),
(29, 'vay', '../images/vay_daitiec.png', 'Váy dạ hội dài', 800000, 900000, 'hanggiamgia', 'Váy dạ hội dài, chất liệu lụa satin cao cấp, mềm mại, sang trọng. Thiết kế ôm sát, tôn dáng, phù hợp cho các buổi tiệc tối hoặc sự kiện quan trọng.', 'S,M,L', 'Đỏ rượu, Đen, Vàng ánh kim'),
(30, 'phukien', '../images/dongho.png', 'Đồng hồ đeo tay unisex', 350000, 0, 'hangmoi', 'Đồng hồ đeo tay unisex, thiết kế tối giản, mặt kính chống xước, dây da cao cấp. Phù hợp để sử dụng hàng ngày hoặc làm phụ kiện thời trang.', 'One size', 'Đen, Nâu, Trắng'),
(31, 'aothun', '../images/aothun_nu_tim.png', 'Áo thun nữ cổ tim', 200000, 250000, 'hangmoi', 'Áo thun nữ cổ tim, chất liệu cotton mềm mại, co giãn nhẹ. Thiết kế nữ tính, phù hợp để mặc đi làm hoặc đi chơi.', 'S,M,L', 'Tím nhạt, Trắng, Đen'),
(32, 'quanjeans', '../images/quanjeans_bootcut.png', 'Quần jeans nữ bootcut', 430000, 480000, 'hangbanchay', 'Quần jeans nữ bootcut, chất liệu denim co giãn, dáng quần hơi loe ở phần gấu, tôn dáng. Phù hợp để phối với giày cao gót hoặc boots.', '26,27,28,29', 'Xanh đậm, Đen, Trắng'),
(33, 'aosomi', '../images/aosomi_flannel.png', 'Áo sơ mi flannel nam', 400000, 0, '', 'Áo sơ mi flannel nam, chất liệu vải flannel dày dặn, giữ ấm tốt. Thiết kế kẻ caro phong cách, phù hợp cho mùa thu đông hoặc các buổi dã ngoại.', 'M,L,XL', 'Đỏ caro, Xanh caro, Nâu caro'),
(34, 'vay', '../images/vay_ngan.png', 'Váy ngắn chữ A', 380000, 420000, 'hanggiamgia', 'Váy ngắn chữ A, chất liệu kaki mềm, dáng xòe nhẹ, tôn vòng eo. Phù hợp cho các buổi dạo phố hoặc đi chơi cùng bạn bè.', 'S,M,L', 'Be, Đen, Xanh lá'),
(35, 'phukien', '../images/matkinh.png', 'Mắt kính thời trang', 250000, 0, 'hangmoi', 'Mắt kính thời trang unisex, thiết kế gọng kim loại mảnh, phong cách hiện đại. Phù hợp để làm phụ kiện phối đồ hoặc bảo vệ mắt khi ra ngoài.', 'One size', 'Đen, Vàng, Bạc'),
(36, 'aothun', '../images/aothun_daitay.png', 'Áo thun dài tay unisex', 240000, 280000, 'hangmoi', 'Áo thun dài tay unisex, chất liệu cotton pha, mềm mại, giữ ấm nhẹ. Thiết kế đơn giản, phù hợp cho mùa thu hoặc phối đồ layering.', 'S,M,L,XL', 'Xám, Đen, Xanh navy'),
(37, 'quanjeans', '../images/quanjeans_jogger.png', 'Quần jeans jogger nam', 450000, 490000, 'hangbanchay', 'Quần jeans jogger nam, chất liệu denim pha, dáng quần thoải mái, bo gấu cá tính. Phù hợp với phong cách năng động, thể thao.', '29,30,31,32', 'Đen, Xám, Xanh đậm'),
(38, 'aosomi', '../images/aosomi_nu_cai.png', 'Áo sơ mi nữ kẻ sọc', 320000, 0, '', 'Áo sơ mi nữ kẻ sọc, chất liệu cotton thoáng mát, ít nhăn. Thiết kế trẻ trung, phù hợp cho môi trường công sở hoặc các buổi gặp gỡ bạn bè.', 'S,M,L', 'Trắng sọc xanh, Trắng sọc đen, Hồng sọc trắng'),
(39, 'vay', '../images/vay_damdoi.png', 'Váy đầm dạo phố', 450000, 500000, 'hanggiamgia', 'Váy đầm dạo phố, chất liệu voan lót cotton, dáng suông nhẹ nhàng. Thiết kế đơn giản nhưng thanh lịch, phù hợp cho các buổi đi chơi hoặc cafe.', 'S,M,L', 'Xanh pastel, Hồng phấn, Trắng'),
(40, 'phukien', '../images/tuida.png', 'Túi đeo chéo da', 300000, 0, 'hangmoi', 'Túi đeo chéo da, chất liệu da tổng hợp cao cấp, thiết kế nhỏ gọn, thời trang. Phù hợp để mang đi làm, đi học hoặc dạo phố.', 'One size', 'Đen, Nâu, Be');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `accountname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(300) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `accountname`, `username`, `email`, `phone`, `address`, `password`) VALUES
(1, 'Nguyễn Thị Mai', 'mai.nguyen', 'mai.nguyen@gmail.com', '0912345678', '123 Đường Lê Lợi, TP.HCM', 'matkhau123'),
(2, 'Lê Văn Hùng', 'hung.le', 'hung.le@gmail.com', '0923456789', '456 Đường Nguyễn Trãi, Hà Nội', 'matkhau456'),
(3, 'Trần Thanh Tâm', 'tam.tran', 'tam.tran@gmail.com', '0934567890', '789 Đường Phạm Văn Đồng, Đà Nẵng', 'matkhau789'),
(4, 'ducthanh', 'ducthanh', 'ares141103@gmail.com', '0832344503', 'ducthanh', 'ducthanh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`idchitiet`),
  ADD KEY `idhd` (`idhd`),
  ADD KEY `idsp` (`idsp`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`idhd`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`idsp`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `idchitiet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `idhd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `idsp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`idhd`) REFERENCES `hoadon` (`idhd`),
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`idsp`) REFERENCES `sanpham` (`idsp`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `sanpham` (`idsp`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
