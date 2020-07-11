-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 09, 2020 lúc 10:54 AM
-- Phiên bản máy phục vụ: 10.4.6-MariaDB
-- Phiên bản PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopgiay`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` int(10) UNSIGNED DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_active` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banners`
--

INSERT INTO `banners` (`id`, `title`, `slug`, `image`, `url`, `target`, `description`, `type`, `position`, `is_active`, `created_at`, `updated_at`) VALUES
(8, 'Ảnh Bìa 1', 'anh-bia-1', 'uploads/banner/1591874142_banner-1_master.jpg', 'bitis.vn', NULL, '<p>M&ocirc; tả</p>', 1, 1, 1, '2020-06-11 04:15:42', '2020-06-11 04:15:42'),
(9, 'Ảnh Bìa 2', 'anh-bia-2', 'uploads/banner/1591874380_banner-2.webp', 'cao.vn', NULL, '<p>M&ocirc; tả</p>', 1, 3, 1, '2020-06-11 04:19:40', '2020-06-11 04:19:40'),
(10, 'Ảnh Bìa 3', 'anh-bia-3', 'uploads/banner/1591886742_banner_hunter1__lp__f23ae981ad4c4098a6c6e2db3355bd32_master.webp', 'bitis.vn', 1, '<p>M&ocirc; tả ảnh b&igrave;a 3</p>', 1, 3, 1, '2020-06-11 07:45:42', '2020-06-27 02:32:31'),
(11, 'Ưu đãi Bitis', 'uu-dai-bitis', 'uploads/banner/1593342174_2048.webp', NULL, NULL, NULL, 2, 1, 1, '2020-06-28 04:02:54', '2020-06-28 04:02:54'),
(12, 'Ưu đãi Gosto', 'uu-dai-gosto', 'uploads/banner/1593342212_2048 (1).webp', NULL, NULL, NULL, 2, 2, 1, '2020-06-28 04:03:32', '2020-06-28 04:03:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `slug`, `image`, `user_id`, `url`, `position`, `is_active`, `description`, `created_at`, `updated_at`) VALUES
(11, 'CẨM NANG PHÒNG TRÁNH LÂY NHIỄM VIRUS CORONA: 7 BƯỚC CẦN LÀM NGAY', 'cam-nang-phong-tranh-lay-nhiem-virus-corona-7-buoc-can-lam-ngay', 'uploads/product/1593421273_e_39b824591591_image_hires_145617_c1ab0801cbcf4bbba8417036f8524b91_f2e0b368016f4bc892710ca7c34db901_large.webp', '4', 'bitis.vn', 5, 1, '<p><em>Trong bối cảnh dịch virus Corona (2019-nCoV) đ&atilde; xuất hiện ở Việt Nam, điều quan trọng hơn bao giờ hết l&agrave; giữ g&igrave;n vệ sinh nh&agrave; cửa, vệ sinh c&aacute; nh&acirc;n, loại sạch mầm bệnh để bảo vệ sức khỏe bản th&acirc;n v&agrave; gia đ&igrave;nh.</em><br />\r\n<br />\r\n<img alt=\"bitis_cam_nang_phong_tranh_lay_nhiem_virus_corona_7_buoc_can_lam_ngay01\" src=\"https://file.hstatic.net/1000230642/file/untitled-4_f9ed6c32cf5a42a9918dcd28101ca864_grande.jpg\" /><em>Rửa tay l&agrave; một trong số c&aacute;c bước cần l&agrave;m để ph&ograve;ng ngừa dịch bệnh trong bối cảnh dịch virus Corona diễn biến phức tạp.&nbsp;</em></p>\r\n\r\n<p><br />\r\n<strong>1. Vệ sinh c&aacute;c thiết bị c&ocirc;ng nghệ</strong></p>\r\n\r\n<p>Bạn c&oacute; biết l&agrave; điện thoại c&oacute; nhiều vi tr&ugrave;ng hơn cả bệ toilet? Đ&oacute; l&agrave; bởi tay bạn thường xuy&ecirc;n chạm v&agrave;o điện thoại ngay cả khi vừa mở vừa, ăn uống hay cầm v&agrave;o tay vịn tr&ecirc;n c&aacute;c phương tiện giao th&ocirc;ng c&ocirc;ng cộng. Th&ecirc;m v&agrave;o đ&oacute;, c&aacute;c loại dầu tr&ecirc;n da cũng khiến vi khuẩn ph&aacute;t triển mạnh.</p>\r\n\r\n<p><img alt=\"bitis_cam_nang_phong_tranh_lay_nhiem_virus_corona_7_buoc_can_lam_ngay02\" src=\"https://file.hstatic.net/1000230642/file/untitled-4_bb3b04b3d9c446f2b00aae20f775225e_grande.jpg\" /><em>Cần vệ sinh c&aacute;c thiết bị c&ocirc;ng nghệ ph&ograve;ng dịch bệnh.</em></p>\r\n\r\n<p>H&atilde;y h&igrave;nh th&agrave;nh th&oacute;i quen h&agrave;ng ng&agrave;y vệ sinh tất cả c&aacute;c thiết bị c&ocirc;ng nghệ, trong đ&oacute; c&oacute; điện thoại di động v&agrave; b&agrave;n ph&iacute;m, hạn chế cho người kh&aacute;c mượn trong giai đoạn n&agrave;y bởi virus Corona c&oacute; thể l&acirc;y lan nếu người bệnh ho hoặc hắt hơi khi sử dụng c&aacute;c thiết bị n&agrave;y.</p>\r\n\r\n<p><strong>2. D&ugrave;ng m&aacute;y l&agrave;m sạch kh&ocirc;ng kh&iacute;/mở cửa sổ th&ocirc;ng tho&aacute;ng</strong></p>\r\n\r\n<p>M&aacute;y l&agrave;m sạch kh&ocirc;ng kh&iacute; cũng c&oacute; thể c&oacute; &iacute;ch trong thời gian dịch bệnh n&agrave;y. Phần lớn c&aacute;c m&aacute;y l&agrave;m sạch kh&ocirc;ng kh&iacute; lọc c&aacute;c phần tử lớn như mạt bụi v&agrave; phấn hoa gi&uacute;p giảm nguy cơ h&iacute;t phải những phần tử c&oacute; thể g&acirc;y ho.</p>\r\n\r\n<p>Nếu gia đ&igrave;nh c&oacute; m&aacute;y lọc HEPA, m&aacute;y lọc n&agrave;y c&oacute; thể lọc c&aacute;c hạt c&oacute; k&iacute;ch thước nhỏ khoảng 0,3 micron, trong đ&oacute; c&oacute; nhiều vi khuẩn v&agrave; một số virus.</p>\r\n\r\n<p>Một số loại m&aacute;y lọc cũng c&oacute; thể l&agrave;m được nhiều hơn thế, trong đ&oacute; c&oacute; m&aacute;y lọc c&oacute; thể giải ph&oacute;ng vi sinh vật sống c&oacute; lợi cho sức khỏe hay c&ograve;n gọi l&agrave; lợi khuẩn v&agrave;o kh&ocirc;ng kh&iacute; v&agrave; c&aacute;c bề mặt trong nh&agrave;. Những lợi khuẩn n&agrave;y c&oacute; thể g&oacute;p phần ngăn chặn vi khuẩn v&agrave; virus kh&ocirc;ng c&oacute; lợi.</p>\r\n\r\n<p><strong>3. Rửa tay thường xuy&ecirc;n v&agrave; đ&uacute;ng c&aacute;ch</strong></p>\r\n\r\n<p>Rửa tay đ&uacute;ng c&aacute;ch l&agrave; th&oacute;i quen thiết yếu cần được h&igrave;nh th&agrave;nh, đặc biệt với trẻ nhỏ. Để khắc s&acirc;u th&oacute;i quen n&agrave;y, n&ecirc;n gắn một bảng quy tr&igrave;nh rửa tay chi tiết tr&ecirc;n bồn rửa tay.</p>\r\n\r\n<p>Bạn cũng c&oacute; thể d&ugrave;ng hộp đựng x&agrave; ph&ograve;ng tự động để giảm thiểu tiếp x&uacute;c với tay bẩn.</p>\r\n\r\n<p><strong>4. Lau dọn thường xuy&ecirc;n, đặc biệt l&agrave; với c&aacute;c khu vực đi lại li&ecirc;n tục ở trong nh&agrave;</strong></p>\r\n\r\n<p>Vi tr&ugrave;ng c&oacute; thể bị đưa từ b&ecirc;n ngo&agrave;i v&agrave;o, đặc biệt l&agrave; nếu c&aacute;c th&agrave;nh vi&ecirc;n trong gia đ&igrave;nh thường về nh&agrave; m&agrave; kh&ocirc;ng thay quần &aacute;o hoặc tắm rửa ngay. Điều tương tự cũng c&oacute; thể xảy ra khi bạn b&egrave; v&agrave; người th&acirc;n đến thăm nh&agrave; trong m&ugrave;a lễ hội.</p>\r\n\r\n<p><img alt=\"bitis_cam_nang_phong_tranh_lay_nhiem_virus_corona_7_buoc_can_lam_ngay03\" src=\"https://file.hstatic.net/1000230642/file/untitled-4_a75fa30df5e2454cb0adf8318284bf09_grande.jpg\" /><em>N&ecirc;n thường xuy&ecirc;n lau dọn nh&agrave; cửa, nhất l&agrave; những nơi nhiều người di chuyển.</em></p>\r\n\r\n<p>Để ph&ograve;ng ngừa trong m&ugrave;a dịch bệnh, h&atilde;y đảm bảo nh&agrave; được h&uacute;t bụi v&agrave; thường xuy&ecirc;n lau dọn, trong đ&oacute; c&oacute; lau sạch c&aacute;c tay nắm cửa ra v&agrave;o bằng dung dịch nước ấm v&agrave; muối trắng (1/2 cốc cho - đừng qu&ecirc;n c&aacute;c n&uacute;m cửa! - với dung dịch nước ấm v&agrave; giấm trắng (1/2 cốc cho 3-4 l&iacute;t nước). Axit axetic trong giấm trắng sẽ diệt c&aacute;c vi khuẩn v&agrave; virus.</p>\r\n\r\n<p><strong>5. Vệ sinh đồ đạc l&agrave;m từ vải bằng nhiệt</strong></p>\r\n\r\n<p>L&agrave;m sạch sofa, thảm bằng c&ocirc;ng nghệ steam cleaning (c&ocirc;ng nghệ h&oacute;a hơi nước) nếu c&oacute; nhiều người sử dụng thường xuy&ecirc;n trong kỳ nghỉ lễ vừa qua. C&ocirc;ng nghệ n&agrave;y gi&uacute;p khử m&ugrave;i v&agrave; vệ sinh những đồ d&ugrave;ng n&agrave;y m&agrave; kh&ocirc;ng phải sử dụng h&oacute;a chất.</p>\r\n\r\n<p>ương tự, nếu c&oacute; khăn tay hoặc khăn bếp thường xuy&ecirc;n được nhiều người sử dụng, h&atilde;y giặt ch&uacute;ng bằng nước thật n&oacute;ng, từ 60 độ C trở l&ecirc;n &iacute;t nhất 1 lần một tuần để loại bỏ vi khuẩn ph&aacute;t triển mạnh tr&ecirc;n những bề mặt ẩm ướt.</p>\r\n\r\n<p><strong>6. &quot;C&aacute;ch ly&quot; t&uacute;i, gi&agrave;y v&agrave; quần &aacute;o</strong></p>\r\n\r\n<p>Bởi t&uacute;i, gi&agrave;y v&agrave; quần &aacute;o bạn mặc đi ra ngo&agrave;i đ&atilde; tiếp x&uacute;c với nhiều người n&ecirc;n c&oacute; thể l&agrave; đ&atilde; bị bắn c&aacute;c dịch do ho hoặc hắt hơi. Do đ&oacute;, c&aacute;c vật dụng n&agrave;y cần được l&agrave;m sạch thường xuy&ecirc;n v&agrave; bảo quản đ&uacute;ng c&aacute;ch.</p>\r\n\r\n<p>D&agrave;nh ri&ecirc;ng một ngăn tủ để chứa tất c&aacute;c t&uacute;i x&aacute;ch gần cửa v&agrave;o. Ngo&agrave;i ra, n&ecirc;n c&oacute; chỗ để cất gi&agrave;y d&eacute;p, đồ bẩn cần giặt thay v&igrave; để đồ lung tung trong nh&agrave;.</p>\r\n\r\n<p><strong>7. Sử dụng khăn lau kh&aacute;ng khuẩn</strong></p>\r\n\r\n<p>Rửa tay bằng nước n&oacute;ng v&agrave; x&agrave; ph&ograve;ng l&agrave; c&aacute;ch tốt nhất để loại bỏ c&aacute;c chất bẩn nhưng kh&ocirc;ng phải l&uacute;c n&agrave;o cũng sẵn c&oacute;. Trong trường hợp đ&oacute;, khăn lau kh&aacute;ng khuẩn l&agrave; lựa chọn th&iacute;ch hợp.</p>\r\n\r\n<p>Khi mua khăn lau, cần ch&uacute; &yacute; vật liệu để l&agrave;m khăn lau. Nếu l&agrave;m từ polyester, khăn lau cần tới h&agrave;ng trăm năm để ph&acirc;n hủy cũng như c&oacute; thể g&acirc;y tắc nghẽn v&agrave; &ocirc; nhiễm. N&ecirc;n chọn khăn l&agrave;m từ vật liệu c&oacute; thể ph&acirc;n hủy, như khăn lau từ c&aacute;c sợi gỗ.</p>\r\n\r\n<p>Ngo&agrave;i ra c&oacute; thể sử dụng nước rửa tay.&nbsp;</p>\r\n\r\n<p><em>Theo B&aacute;o Lao Động - nguồn</em>&nbsp;<strong>@Laodong.vn</strong></p>', '2020-06-14 01:57:33', '2020-06-29 02:01:13'),
(12, 'BÙNG NỔ KHUYẾN MÃI \"SIÊU SALE SIÊU SỐC\" (29/04/2020 – 10/05/2020)', 'bung-no-khuyen-mai-sieu-sale-sieu-soc-29042020-10052020', 'uploads/product/1593421234_face-01_96d1b3566cc143618ff8890d8ade2399_master.webp', '4', 'bitis.vn', 3, 1, '<p>Cơn b&atilde;o &ldquo;SI&Ecirc;U SALE SI&Ecirc;U SỐC&rdquo; từ Biti&rsquo;s sẵn s&agrave;ng thổi bay m&ugrave;a h&egrave; n&oacute;ng bức,bạn đ&atilde; sẵn s&agrave;ng</p>\r\n\r\n<p>C&ugrave;ng tham gia chương tr&igrave;nh khuyến m&atilde;i được tr&ocirc;ng đợi nhất m&ugrave;a h&egrave; với h&agrave;ng ng&agrave;n sản phẩm khuyến m&atilde;i kh&ocirc;ng thể bỏ qua!</p>\r\n\r\n<p><img alt=\"bitis_bung_no_khuyen_mai_sieu_sale_sieu_soc_29_04_2020_10_05_202001\" src=\"https://file.hstatic.net/1000230642/file/face-01_96d1b3566cc143618ff8890d8ade2399_master.jpg\" /><br />\r\nK&eacute;o d&agrave;i l&ecirc;n đến 12 ng&agrave;y: Từ 29/04 đến hết ng&agrave;y 10/05/2020.</p>\r\n\r\n<p>Giảm gi&aacute; từ 20 &ndash; 50% cho tất cả c&aacute;c sản phẩm trưng b&agrave;y tại của h&agrave;ng.</p>\r\n\r\n<p>C&aacute;c d&ograve;ng sản phẩm HOT (giới hạn/theo m&ugrave;a) sẽ giảm gi&aacute; từ 15 - 20%.</p>\r\n\r\n<p>C&ograve;n chần chờ g&igrave; nữa, nhanh ch&acirc;n đến c&aacute;c cửa h&agrave;ng Biti&rsquo;s v&agrave; Biti&rsquo;s Hunter gần nhất để chọn được sản phẩm ưng &yacute; cho bạn v&agrave; gia đ&igrave;nh nh&eacute;.</p>\r\n\r\n<p>*Chương tr&igrave;nh &aacute;p dụng tại to&agrave;n bộ cửa h&agrave;ng tiếp thị Biti&rsquo;s, Biti&rsquo;s Hunter v&agrave; c&aacute;c đại l&yacute; Biti&#39;s trọng điểm tr&ecirc;n to&agrave;n quốc, bao gồm cả CH Biti&rsquo;s Cambodia.</p>\r\n\r\n<p><strong><em>Biti&#39;s - N&acirc;ng niu b&agrave;n ch&acirc;n Việt!</em></strong></p>', '2020-06-14 01:59:21', '2020-06-29 02:00:34'),
(13, 'ĐI ĐỂ TRỞ VỀ 2 – CHUYẾN ĐI CỦA NĂM: THÔNG ĐIỆP Ý NGHĨA NHẤT DÀNH CHO NGƯỜI TRẺ', 'di-de-tro-ve-2-chuyen-di-cua-nam-thong-diep-y-nghia-nhat-danh-cho-nguoi-tre', 'uploads/product/1593421305_promotion_banner.jpg', '4', 'bitis.vn', 3, 1, '<p><em>0h00 ph&uacute;t ng&agrave;y 1/1/2018, MV ch&iacute;nh thức &rdquo;Đi để trở về 2 &ndash; Chuyến đi của năm&rdquo; từ Biti&rsquo;s Hunter, Soobin Ho&agrave;ng Sơn v&agrave; Ti&ecirc;n Cookie đ&atilde; l&ecirc;n s&oacute;ng, gửi gắm đến những người trẻ th&ocirc;ng điệp &yacute; nghĩa nhất năm.</em><br />\r\n<br />\r\n<em>Đời nhiều cuộc phi&ecirc;u du nhưng chuyến m&agrave; ta mong đợi nhất<br />\r\nChẳng phải l&agrave; chuyến đi về nh&agrave; hay sao?<br />\r\nĐi xa để trở về ch&iacute;nh nơi, gia đ&igrave;nh chờ mong ta<br />\r\nKh&ocirc;ng thể chờ nữa đ&acirc;u ta phải về th&ocirc;i!</em><br />\r\n<br />\r\nTrong năm người trẻ c&oacute; rất nhiều chuyến đi để nối d&agrave;i những trải nghiệm v&agrave; từ đ&oacute; để trưởng th&agrave;nh hơn. Nhưng điều kỳ diệu l&agrave; trong mu&ocirc;n v&agrave;n những chuyến đi, vẫn c&oacute; một chuyến đi đặc biệt nhất, cảm x&uacute;c nhất, chuyến đi mong đợi nhất v&agrave; cũng l&agrave; chuyến đi quen thuộc nhất, ch&iacute;nh l&agrave; chuyến đi để trở về, để đo&agrave;n tụ, để kể với gia đ&igrave;nh về những h&agrave;nh tr&igrave;nh, những trải nghiệm những kỉ niệm buồn lẫn vui &ldquo;đ&atilde; từng trải qua&rdquo;!<br />\r\n<br />\r\nC&agrave;ng đi xa, c&agrave;ng đi nhiều th&igrave; chuyến đi về nh&agrave; c&agrave;ng đong đầy cảm x&uacute;c.<br />\r\nV&igrave; cuối c&ugrave;ng Đi thật xa cũng l&agrave; để trở về, thật trọn vẹn!</p>\r\n\r\n<p>Theo bước ch&acirc;n ch&agrave;ng ca sĩ Soobin Ho&agrave;ng Sơn tr&ecirc;n chuyến đi &yacute; nghĩa nhất năm &ndash; Đi để trở về, đ&ocirc;i gi&agrave;y &ldquo;huyền thoại&rdquo; Midnight Black c&ugrave;ng BST Holiday&rsquo;s on the Move</p>\r\n\r\n<h2>Đ&Ocirc;I MIDNIGHT BLACK C&Ugrave;NG BST MỚI NHẤT HOLIDAY&rsquo;S ON THE MOVE XUẤT HIỆN ĐẦY NGHỆ THUẬT TRONG NHỮNG THƯỚC PHIM HUYỀN ẢO CỦA MV.</h2>\r\n\r\n<p>Theo bước ch&acirc;n ch&agrave;ng ca sĩ Soobin Ho&agrave;ng Sơn tr&ecirc;n chuyến đi &yacute; nghĩa nhất năm &ndash; Đi để trở về, đ&ocirc;i gi&agrave;y &ldquo;huyền thoại&rdquo; Midnight Black c&ugrave;ng BST Holiday&rsquo;s on the Move đ&atilde; c&oacute; những m&agrave;n xuất hiện đầy tinh tế v&agrave; nghệ thuật giữa tiếng c&ograve;i t&agrave;u, trong khung cảnh n&ecirc;n thơ của hồ Tuyền L&acirc;m, c&aacute;nh đồng ng&agrave;n hoa của xứ Đ&agrave; Lạt thơ mộng v&agrave; tr&ecirc;n con đường nhỏ về với gia đ&igrave;nh m&igrave;nh.</p>', '2020-06-14 02:00:26', '2020-06-29 02:01:45'),
(14, 'BÙNG NỔ KHUYẾN MÃI \"SIÊU SALE SIÊU SỐC\" (29/04/2020 – 10/05/2020)', 'bung-no-khuyen-mai-sieu-sale-sieu-soc-29042020-10052020', 'uploads/product/1593420610_face-01_96d1b3566cc143618ff8890d8ade2399_master.webp', '4', NULL, 4, 1, '<p>Cơn b&atilde;o &ldquo;SI&Ecirc;U SALE SI&Ecirc;U SỐC&rdquo; từ Biti&rsquo;s sẵn s&agrave;ng thổi bay m&ugrave;a h&egrave; n&oacute;ng bức, bạn đ&atilde; sẵn s&agrave;ng chưa?</p>\r\n\r\n<p>C&ugrave;ng tham gia chương tr&igrave;nh khuyến m&atilde;i được tr&ocirc;ng đợi nhất m&ugrave;a h&egrave; với h&agrave;ng ng&agrave;n sản phẩm khuyến m&atilde;i kh&ocirc;ng thể bỏ qua!</p>\r\n\r\n<p><img alt=\"\" src=\"https://file.hstatic.net/1000230642/file/face-01_96d1b3566cc143618ff8890d8ade2399_master.jpg\" style=\"height:603px; width:1200px\" /></p>\r\n\r\n<p>K&eacute;o d&agrave;i l&ecirc;n đến 12 ng&agrave;y: Từ 29/04 đến hết ng&agrave;y 10/05/2020.</p>\r\n\r\n<p>Giảm gi&aacute; từ 20 &ndash; 50% cho tất cả c&aacute;c sản phẩm trưng b&agrave;y tại của h&agrave;ng.</p>\r\n\r\n<p>C&aacute;c d&ograve;ng sản phẩm HOT (giới hạn/theo m&ugrave;a) sẽ giảm gi&aacute; từ 15 - 20%.</p>\r\n\r\n<p>C&ograve;n chần chờ g&igrave; nữa, nhanh ch&acirc;n đến c&aacute;c cửa h&agrave;ng Biti&rsquo;s v&agrave; Biti&rsquo;s Hunter gần nhất để chọn được sản phẩm ưng &yacute; cho bạn v&agrave; gia đ&igrave;nh nh&eacute;.</p>\r\n\r\n<p>*Chương tr&igrave;nh &aacute;p dụng tại to&agrave;n bộ cửa h&agrave;ng tiếp thị Biti&rsquo;s, Biti&rsquo;s Hunter v&agrave; c&aacute;c đại l&yacute; Biti&#39;s trọng điểm tr&ecirc;n to&agrave;n quốc, bao gồm cả CH Biti&rsquo;s Cambodia.</p>', '2020-06-15 08:14:44', '2020-06-29 01:58:09'),
(15, 'TRẢI NGHIỆM NGAY BITI’S CONCEPT STORE ĐẦU TIÊN TẠI HÀ NỘI TẠI L3 – VINCOM PHẠM NGỌC THẠCH VỚI VÔ VÀN ƯU ĐÃI', 'trai-nghiem-ngay-bitis-concept-store-dau-tien-tai-ha-noi-tai-l3-vincom-pham-ngoc-thach-voi-vo-van-uu-dai', 'uploads/category/1593420972_artboard_1_1bcaaa386e9c48f9b49c0396f6454856_grande.webp', '4', NULL, 2, 1, '<p>Sau bao ng&agrave;y chờ đợi, cuối c&ugrave;ng Biti&rsquo;s đ&atilde; c&oacute; thể giới thiệu tới những người y&ecirc;u mến tại thủ đ&ocirc; một kh&ocirc;ng gian hiện đại, phong c&aacute;ch để trải nghiệm những sản phẩm thuộc &ldquo;Kỷ nguy&ecirc;n mới của N&acirc;ng Niu B&agrave;n Ch&acirc;n Việt&rdquo;.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"300\" src=\"https://file.hstatic.net/1000230642/file/artboard_1_1bcaaa386e9c48f9b49c0396f6454856_grande.png\" width=\"600\" /></p>\r\n\r\n<p>Cửa h&agrave;ng concept store đầu ti&ecirc;n của Biti&rsquo;s tại H&agrave; th&agrave;nh sẽ&nbsp;<strong>CH&Iacute;NH THỨC RA MẮT NG&Agrave;Y 06/03/2020 TẠI L3 &ndash; VINCOM PHẠM NGỌC THẠCH.</strong></p>\r\n\r\n<p>TẬP HỢP C&Aacute;C D&Ograve;NG SẢN PHẨM ĐƯỢC TUYỂN CHỌN, từ những đ&ocirc;i sneaker phong c&aacute;ch Biti&rsquo;s Hunter cho h&agrave;nh tr&igrave;nh trải nghiệm, d&ograve;ng sản phẩm mới gi&agrave;y đ&aacute; b&oacute;ng theo ti&ecirc;u chuẩn s&acirc;n cỏ nh&acirc;n tạo tới những thiết kế cool nhất, lung linh nhất cho trẻ em v&agrave; ph&aacute;i nữ, Biti&rsquo;s Concept Store sẽ l&agrave; địa điểm mua sắm gi&agrave;y d&eacute;p l&yacute; tưởng cho c&aacute;c gia đ&igrave;nh hiện đại.</p>\r\n\r\n<p>Đặc biệt, V&Ocirc; V&Agrave;N ƯU Đ&Atilde;I sẽ được Biti&rsquo;s d&agrave;nh cho những kh&aacute;ch h&agrave;ng đến trải nghiệm trong 03 ng&agrave;y đầu khai trương!</p>\r\n\r\n<p><strong><em>Giảm ngay 15%</em></strong><em>&nbsp;cho mọi sản phẩm (06/03-08/03) &ndash; quả l&agrave; l&yacute; tưởng để sắm gi&agrave;y tặng cho ph&aacute;i nữ đ&uacute;ng kh&ocirc;ng n&agrave;o.</em></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"600\" src=\"https://file.hstatic.net/1000230642/file/artboard_2_copy_3_a94267b0e7fe43238f0404bb53234551_grande.png\" width=\"600\" /></p>\r\n\r\n<p><strong><em>Check-in 100% nhận qu&agrave;</em></strong><em>&nbsp;với c&aacute;c giải thưởng từ t&uacute;i tote thời trang, voucher 50.000, 100.000 v&agrave; 500.000 đồng chỉ trong ng&agrave;y 06/03.</em></p>\r\n\r\n<p><em><img alt=\"\" height=\"600\" src=\"https://file.hstatic.net/1000230642/file/artboard_2_copy_6ddeca6ef43d4da39d3e1b628b9d905c_grande.png\" width=\"600\" /></em></p>\r\n\r\n<p>Biti&rsquo;s mong chờ sự ch&agrave;o đ&oacute;n nhiệt t&igrave;nh của bạn để ch&uacute;ng t&ocirc;i c&oacute; thể tiếp tục tạo n&ecirc;n những h&agrave;nh tr&igrave;nh mới mẻ v&agrave; đầy phong c&aacute;ch cho c&aacute;c Biti&rsquo;s fans H&agrave; Nội.</p>\r\n\r\n<p><em>Địa điểm:</em>&nbsp;Lầu 3, Vincom Phạm Ngọc Thạch, số 2 Phạm Ngọc Thạch, Trung Tự, Đống Đa, H&agrave; Nội</p>\r\n\r\n<p><strong><em>Thời gian:</em>&nbsp;06/03/2020</strong></p>\r\n\r\n<p>V&agrave; đừng qu&ecirc;n ng&oacute;ng chờ nhiều bất ngờ nữa từ Concept Store của Biti&rsquo;s trong thời gian tới nữa nh&eacute;!</p>', '2020-06-29 01:56:12', '2020-07-09 01:54:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_active` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `image`, `website`, `position`, `is_active`, `created_at`, `updated_at`) VALUES
(4, 'Bitis', 'bitis', NULL, 'bitis.com.vn', 1, 1, '2020-06-11 03:15:55', '2020-06-11 03:16:28'),
(6, 'Converse', 'converse', NULL, 'converse.com', 3, 1, '2020-06-11 07:50:04', '2020-06-11 07:50:13'),
(7, 'Adidas', 'adidas', NULL, 'adidas.com', 4, 1, '2020-06-11 07:50:51', '2020-06-11 07:50:51'),
(8, 'Nike', 'nike', NULL, 'nike.com', 5, 1, '2020-06-11 07:52:27', '2020-06-11 07:52:27'),
(9, 'Gucci', 'gucci', NULL, 'gucci.com', 6, 1, '2020-06-11 07:54:27', '2020-06-11 07:54:27'),
(10, 'Gosto', 'gosto', NULL, 'bitis.com.vn', 7, 1, '2020-06-12 03:30:49', '2020-06-12 03:30:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_active` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `parent_id`, `position`, `is_active`, `created_at`, `updated_at`) VALUES
(15, 'Nam', 'nam', NULL, 0, 1, 1, '2020-06-11 02:40:50', '2020-06-11 23:46:44'),
(16, 'Nữ', 'nu', NULL, 0, 2, 1, '2020-06-11 07:40:14', '2020-06-11 23:46:53'),
(17, 'Phụ Kiện', 'phu-kien', NULL, 0, 3, 1, '2020-06-11 07:41:30', '2020-06-11 07:41:30'),
(18, 'Bé Trai', 'be-trai', NULL, 0, 4, 1, '2020-06-11 07:42:07', '2020-06-11 23:47:04'),
(19, 'Bé Gái', 'be-gai', NULL, 0, 5, 1, '2020-06-11 07:42:29', '2020-06-11 23:47:12'),
(23, 'Thể Thao Nam', 'the-thao-nam', NULL, 15, 2, 1, '2020-06-11 23:37:21', '2020-06-11 23:43:56'),
(25, 'Giày Cao Gót', 'giay-cao-got', NULL, 16, 1, 1, '2020-06-11 23:43:40', '2020-06-12 02:39:11'),
(26, 'Thể Thao Nữ', 'the-thao-nu', NULL, 16, 2, 1, '2020-06-11 23:44:23', '2020-06-11 23:44:23'),
(27, 'Giày Da Nam', 'giay-da-nam', NULL, 15, 3, 1, '2020-06-11 23:46:24', '2020-06-11 23:46:24'),
(29, 'Dép Bé Trai', 'dep-be-trai', NULL, 18, 1, 1, '2020-06-12 02:36:50', '2020-06-12 02:38:13'),
(30, 'Giày Bé Trai', 'giay-be-trai', NULL, 18, 2, 1, '2020-06-12 02:37:11', '2020-06-12 02:38:23'),
(32, 'Giày Bé Gái', 'giay-be-gai', NULL, 19, 1, 1, '2020-06-12 02:37:50', '2020-06-12 02:37:50'),
(33, 'Dép Bé Gái', 'dep-be-gai', NULL, 19, 2, 1, '2020-06-12 02:38:45', '2020-06-12 02:38:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved` tinyint(1) DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `name`, `email`, `comment`, `approved`, `product_id`, `created_at`, `updated_at`) VALUES
(24, 'Nam Quang Luu', 'AkiraNam1999@gmail.com', 'Sản phẩm oke', 1, 74, '2020-06-19 03:14:42', '2020-06-19 03:14:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_status_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `contact_status_id`, `phone`, `content`, `created_at`, `updated_at`) VALUES
(8, 'Nam Quang Luu', 'AkiraNam1999@gmail.com', '2', '32787332', '24', '2020-06-17 08:13:15', '2020-06-17 09:40:10'),
(9, 'Nam Quang Luu', 'AkiraNam1999@gmail.com', '1', '32787332', '24', '2020-06-17 08:26:24', '2020-06-17 09:40:17'),
(10, 'Nam Quang Luu', 'AkiraNam1999@gmail.com', '1', '32787332', 'Mình cần tư vấn', '2020-06-29 02:17:35', '2020-06-29 02:17:35'),
(11, 'Nam Quang Luu', 'AkiraNam1999@gmail.com', '1', '32787332', '24', '2020-07-04 01:42:10', '2020-07-04 01:42:10'),
(12, 'Nam Quang Luu', 'AkiraNam1999@gmail.com', '1', '32787332', 'test thông báo', '2020-07-04 01:42:38', '2020-07-04 01:42:38'),
(13, 'Nam Quang Luu', 'AkiraNam1999@gmail.com', '1', '32787332', '2424', '2020-07-04 01:43:31', '2020-07-04 01:43:31'),
(14, 'Nam Quang Luu', 'AkiraNam1999@gmail.com', '1', '32787332', 'Test lần cuối', '2020-07-04 01:44:42', '2020-07-04 01:44:42'),
(15, 'Nam Quang Luu', 'AkiraNam1999@gmail.com', '1', '32787332', 'test margin', '2020-07-04 01:45:05', '2020-07-04 01:45:05'),
(16, 'Nam Quang Luu', 'AkiraNam1999@gmail.com', '1', '32787332', 'xbcxcbxcb', '2020-07-08 06:23:57', '2020-07-08 06:23:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact_status`
--

CREATE TABLE `contact_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contact_status`
--

INSERT INTO `contact_status` (`id`, `name`) VALUES
(1, 'Mới'),
(2, 'Đã xử lý');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) DEFAULT NULL,
  `percent` int(11) DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `expiry_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `percent`, `is_active`, `expiry_date`, `created_at`, `updated_at`) VALUES
(1, 'HIENDZ', '1', 50000, NULL, 1, '0000-00-00', NULL, NULL),
(2, 'HIENSIEUDZ', '2', NULL, 50, 1, '0000-00-00', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image_uploads`
--

CREATE TABLE `image_uploads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filename` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `image_uploads`
--

INSERT INTO `image_uploads` (`id`, `filename`, `product_id`, `created_at`, `updated_at`) VALUES
(38, 'uploads/product/images/65166870_315962699287405_6234691942689538048_o.jpg', 22, '2020-06-09 03:21:45', '2020-06-09 03:21:45'),
(39, 'uploads/product/images/65166870_315962699287405_6234691942689538048_o.jpg', 22, '2020-06-09 03:21:45', '2020-06-09 03:21:45'),
(40, 'uploads/product/images/159172355222265166870_315962699287405_6234691942689538048_o.jpg', 0, '2020-06-09 03:25:52', '2020-06-09 03:25:52'),
(41, 'uploads/product/images/anh1_1024x1024.webp', 23, '2020-06-10 21:02:03', '2020-06-10 21:02:03'),
(42, 'uploads/product/images/anh3_1024x1024.webp', 23, '2020-06-10 21:02:03', '2020-06-10 21:02:03'),
(43, 'uploads/product/images/8-01_c54b122ba47a49478c384998026e1c3d_1024x1024.webp', 24, '2020-06-11 01:11:16', '2020-06-11 01:11:16'),
(44, 'uploads/product/images/3_2a7cfc9b96f4422787bdfb25aaffd582_1024x1024.webp', 24, '2020-06-11 01:11:16', '2020-06-11 01:11:16'),
(45, 'uploads/product/images/02800den__6__dc4652dfe35a43c4921904b1d59da341_1024x1024.webp', 25, '2020-06-11 01:14:09', '2020-06-11 01:14:09'),
(46, 'uploads/product/images/02800den__4__c1690fe56283430d855d48610c84e7fc_1024x1024.webp', 25, '2020-06-11 01:14:09', '2020-06-11 01:14:09'),
(47, 'uploads/product/images/01203den__1__0ef72fbf9b044fdcacfbb88dca57bccf_1024x1024.webp', 26, '2020-06-11 01:19:15', '2020-06-11 01:19:15'),
(48, 'uploads/product/images/01203den__4__6735c40a86f24762ad795a1e7f02ac81_1024x1024.webp', 26, '2020-06-11 01:19:15', '2020-06-11 01:19:15'),
(49, 'uploads/product/images/02300kem__6__568aebdf0746442886c0243efec5db41_1024x1024.webp', 27, '2020-06-11 01:38:26', '2020-06-11 01:38:26'),
(50, 'uploads/product/images/02300kem__5__ba205c759ec34ecebfcba20644b13f5b_1024x1024.webp', 27, '2020-06-11 01:38:26', '2020-06-11 01:38:26'),
(51, 'uploads/product/images/dsc_0007_a87fec05a51d4b07b0ba63dd0e2d622d_1024x1024.webp', 28, '2020-06-11 01:41:14', '2020-06-11 01:41:14'),
(52, 'uploads/product/images/dsc_0005_33dd2a3038ba44559165136e2e1b33e6_1024x1024.webp', 28, '2020-06-11 01:41:14', '2020-06-11 01:41:14'),
(53, 'uploads/product/images/01201trg__1__ce515d7c7fe448d28a9afeda5335522f_1024x1024.webp', 29, '2020-06-11 01:43:21', '2020-06-11 01:43:21'),
(54, 'uploads/product/images/01201trg__4__f2bfbdab1a234dc6b91385b3eec8134e_1024x1024.webp', 29, '2020-06-11 01:43:21', '2020-06-11 01:43:21'),
(55, 'uploads/product/images/02200den__1__ac3c96e7fd97482dac5e9e00ff7ca9b4_1024x1024.webp', 30, '2020-06-11 01:45:50', '2020-06-11 01:45:50'),
(56, 'uploads/product/images/02200den__6__78f08892b7844c939fe8ad4b140a679d_1024x1024.webp', 30, '2020-06-11 01:45:50', '2020-06-11 01:45:50'),
(57, 'uploads/product/images/03001__5__d93a5922646a4e00b470ed1fbff12271_1024x1024.webp', 31, '2020-06-11 01:48:03', '2020-06-11 01:48:03'),
(58, 'uploads/product/images/03001__3__bb2ea02717ff4cf6ae1161d122c8c5b7_1024x1024.webp', 31, '2020-06-11 01:48:03', '2020-06-11 01:48:03'),
(59, 'uploads/product/images/dsg001877hog__1__10ad49970a7b4b1fa204ea63a5697137_1024x1024.webp', 32, '2020-06-11 01:50:50', '2020-06-11 01:50:50'),
(60, 'uploads/product/images/dsg001877hog__4__03f6feadb75b40e88494ea4d1cf4013c_1024x1024.webp', 32, '2020-06-11 01:50:50', '2020-06-11 01:50:50'),
(61, 'uploads/product/images/dsg000600hog__6__54cdc091db9a429eaa6d19ff4eeab623_1024x1024.webp', 33, '2020-06-11 01:53:45', '2020-06-11 01:53:45'),
(62, 'uploads/product/images/dsg000600hog__5__5f2f9ecb9d31477ba3027bdd75bc893c_1024x1024.webp', 33, '2020-06-11 01:53:45', '2020-06-11 01:53:45'),
(63, 'uploads/product/images/deg000200hog__6__fe620d29d1a341cab455eccdcef018e6_1024x1024.jpg', 34, '2020-06-11 01:59:08', '2020-06-11 01:59:08'),
(64, 'uploads/product/images/deg000200hog__5__ca58212a2fe841f88af9296d590c0feb_1024x1024.webp', 34, '2020-06-11 01:59:08', '2020-06-11 01:59:08'),
(65, 'uploads/product/images/dbb008288trg__6__e50f0325bc36403ca176f85123c8ce02_1024x1024.webp', 35, '2020-06-11 02:11:25', '2020-06-11 02:11:25'),
(66, 'uploads/product/images/dbb008288trg__5__f310277cfee4419f83f65c3803d71a76_1024x1024.webp', 35, '2020-06-11 02:11:25', '2020-06-11 02:11:25'),
(67, 'uploads/product/images/dbb008288den__6__27a18d6478404a4dbfa65c5c63741e6c_1024x1024.webp', 36, '2020-06-11 02:44:48', '2020-06-11 02:44:48'),
(68, 'uploads/product/images/dbb008288den__5__2e6f035ae45f4623868ee90af6163cbb_1024x1024.webp', 36, '2020-06-11 02:44:48', '2020-06-11 02:44:48'),
(69, 'uploads/product/images/dbb008611trg__1__9e88b57e5f5b457895b6802709fb43cc_1024x1024.jpg', 37, '2020-06-11 02:54:16', '2020-06-11 02:54:16'),
(70, 'uploads/product/images/dbb008611trg__6__b3da491b50144ee4a6fb2e97a7450903_1024x1024.jpg', 37, '2020-06-11 02:54:17', '2020-06-11 02:54:17'),
(71, 'uploads/product/images/drb030400doo__1__6c2e85db8b9e448787e01fcef835388b_1024x1024.webp', 38, '2020-06-11 02:57:35', '2020-06-11 02:57:35'),
(72, 'uploads/product/images/drb030400doo__4__a57c57f9cea441899c12e83edf3c7764_1024x1024.webp', 38, '2020-06-11 02:57:35', '2020-06-11 02:57:35'),
(73, 'uploads/product/images/deb005900xdg__6__6154c31668d9485285a2ff93ecb6a533_1024x1024.webp', 39, '2020-06-11 03:01:39', '2020-06-11 03:01:39'),
(74, 'uploads/product/images/deb005900xdg__4__65b4b1c7035d49409a188d721268e35a_1024x1024.jpg', 39, '2020-06-11 03:01:39', '2020-06-11 03:01:39'),
(75, 'uploads/product/images/deb005600doo__6__a99dd12bbe1240caa51057d8749194cb_1024x1024.webp', 40, '2020-06-11 03:03:38', '2020-06-11 03:03:38'),
(76, 'uploads/product/images/deb005600doo__2__2591a572b48a4b6a896cb4a7c4b6a2fe_1024x1024.jpg', 40, '2020-06-11 03:03:38', '2020-06-11 03:03:38'),
(77, 'uploads/product/images/dsb131811doo__1__d4bb8d5b61cb477e9e19eff268af318f_1024x1024.webp', 41, '2020-06-11 03:05:28', '2020-06-11 03:05:28'),
(78, 'uploads/product/images/dsb131811doo__6__7ec2fa3b395341a6939bac8a16605c5a_1024x1024.jpg', 41, '2020-06-11 03:05:28', '2020-06-11 03:05:28'),
(79, 'uploads/product/images/dsb130411doo__1__3f1af71b13cb4cabb30d73fa01cbc372_1024x1024.webp', 42, '2020-06-11 03:07:10', '2020-06-11 03:07:10'),
(80, 'uploads/product/images/dsb130411doo__6__20f58e6d65db4a30b6a31cc468793104_1024x1024.webp', 42, '2020-06-11 03:07:10', '2020-06-11 03:07:10'),
(81, 'uploads/product/images/dsb132600xdg__1__38d1a04aa54640ae84a76863e4fb7fc8_1024x1024.webp', 43, '2020-06-11 03:09:35', '2020-06-11 03:09:35'),
(82, 'uploads/product/images/dsb132600xdg__4__6d1279a774304878a82d59a9c742571d_1024x1024.webp', 43, '2020-06-11 03:09:35', '2020-06-11 03:09:35'),
(83, 'uploads/product/images/dsc_0007_941556f3410042a382c0f6b011b721f0_1024x1024.webp', 44, '2020-06-11 03:12:37', '2020-06-11 03:12:37'),
(84, 'uploads/product/images/dsc_0004_2e555fdd24534353acecbb9cee43b246_1024x1024.webp', 44, '2020-06-11 03:12:37', '2020-06-11 03:12:37'),
(85, 'uploads/product/images/aiuh00100den__2__1024x1024.webp', 47, '2020-06-11 03:17:44', '2020-06-11 03:17:44'),
(86, 'uploads/product/images/aiuh00100den__4__1024x1024.webp', 47, '2020-06-11 03:17:44', '2020-06-11 03:17:44'),
(87, 'uploads/product/images/dsc_0044-2_06b05983cf2f4956a1abb887991e68a3_1024x1024.webp', 48, '2020-06-11 03:19:59', '2020-06-11 03:19:59'),
(88, 'uploads/product/images/dsc_0046_7f8dc33279b141e09fa8b1f131bc1b36_1024x1024.webp', 48, '2020-06-11 03:19:59', '2020-06-11 03:19:59'),
(89, 'uploads/product/images/dsc_0046a-02_7fd4158055d84c248e615658c9a7c109_1024x1024.webp', 49, '2020-06-11 03:23:13', '2020-06-11 03:23:13'),
(90, 'uploads/product/images/dsc_0048_c08d73e6de5a44d2843536c82738c0f1_1024x1024.webp', 49, '2020-06-11 03:23:13', '2020-06-11 03:23:13'),
(91, 'uploads/product/images/Giay_Stan_Smith_Mau_trang_M20324_HM1.jpg', 50, '2020-06-11 03:28:18', '2020-06-11 03:28:18'),
(92, 'uploads/product/images/Giay_Stan_Smith_Mau_trang_M20324_41_detail.jpg', 50, '2020-06-11 03:28:18', '2020-06-11 03:28:18'),
(93, 'uploads/product/images/Giay_4D_Run_1.0_LTD_Mau_xam_FW1230_41_detail.jpg', 51, '2020-06-11 03:31:00', '2020-06-11 03:31:00'),
(94, 'uploads/product/images/Giay_4D_Run_1.0_LTD_Mau_xam_FW1230_010_hover_standard.jpg', 51, '2020-06-11 03:31:00', '2020-06-11 03:31:00'),
(95, 'uploads/product/images/Giay_RapidaRun_Mau_djen_FY6549_41_detail.jpg', 52, '2020-06-11 03:33:31', '2020-06-11 03:33:31'),
(96, 'uploads/product/images/Giay_RapidaRun_Mau_djen_FY6549_42_detail.jpg', 52, '2020-06-11 03:33:31', '2020-06-11 03:33:31'),
(97, 'uploads/product/images/Mu_luoi_trai_Trefoil_khuy_bam_Mau_djen_DV0176_02_standard.jpg', 55, '2020-06-11 03:40:53', '2020-06-11 03:40:53'),
(98, 'uploads/product/images/Mu_luoi_trai_Trefoil_khuy_bam_Mau_djen_DV0176_42_detail.jpg', 55, '2020-06-11 03:40:53', '2020-06-11 03:40:53'),
(99, 'uploads/product/images/Giay_UltraBoost_20_Mau_trang_EG0724_42_detail.jpg', 56, '2020-06-11 03:43:51', '2020-06-11 03:43:51'),
(100, 'uploads/product/images/Giay_UltraBoost_20_Mau_trang_EG0724_43_detail.jpg', 56, '2020-06-11 03:43:51', '2020-06-11 03:43:51'),
(101, 'uploads/product/images/Giay_SL20_Mau_djen_EG1144_05_standard.jpg', 57, '2020-06-11 03:46:49', '2020-06-11 03:46:49'),
(102, 'uploads/product/images/Giay_SL20_Mau_djen_EG1144_42_detail.jpg', 57, '2020-06-11 03:46:49', '2020-06-11 03:46:49'),
(103, 'uploads/product/images/giay-luoi-cong-so-sdrolun-mau-den-moi-nhat-ma-gl21817d-giaynam (5).png', 59, '2020-06-11 19:57:21', '2020-06-11 19:57:21'),
(104, 'uploads/product/images/giay-luoi-cong-so-sdrolun-mau-den-moi-nhat-ma-gl21817d-giaynam (4).png', 59, '2020-06-11 19:57:21', '2020-06-11 19:57:21'),
(105, 'uploads/product/images/giay-luoi-gucci-logo-lech-vien-ke-xanh-do-glgc19-2-1.jpg', 60, '2020-06-11 20:05:33', '2020-06-11 20:05:33'),
(106, 'uploads/product/images/giay-luoi-gucci-logo-lech-vien-ke-xanh-do-glgc19-5.jpg', 60, '2020-06-11 20:05:33', '2020-06-11 20:05:33'),
(107, 'uploads/product/images/giay-sneaker-gucci-men-s-ace-leather-mau-den-5e06c5f688c0d-28122019100318.jpg', 61, '2020-06-11 20:14:08', '2020-06-11 20:14:08'),
(108, 'uploads/product/images/giay-sneaker-gucci-men-s-ace-leather-mau-den-5e06c5f68479a-28122019100318.jpg', 61, '2020-06-11 20:14:08', '2020-06-11 20:14:08'),
(109, 'uploads/product/images/giay-gucci-men-s-ace-embroidered-sneaker-mau-trang-5e1c19be8fdb5-13012020141822.jpg', 62, '2020-06-11 20:18:04', '2020-06-11 20:18:04'),
(110, 'uploads/product/images/giay-gucci-men-s-ace-embroidered-sneaker-mau-trang-5e1c19be5efdd-13012020141822.jpg', 62, '2020-06-11 20:18:04', '2020-06-11 20:18:04'),
(111, 'uploads/product/images/giay-gucci-baskets-en-cuir-avec-bande-mau-den-5e043e5f0e610-26122019120015.jpg', 63, '2020-06-11 20:21:30', '2020-06-11 20:21:30'),
(112, 'uploads/product/images/giay-gucci-baskets-en-cuir-avec-bande-mau-den-5e043e5f2b51d-26122019120015.jpg', 63, '2020-06-11 20:21:30', '2020-06-11 20:21:30'),
(113, 'uploads/product/images/giay-gucci-women-s-ace-gg-supreme-sneaker-with-bees-5e057d119ffeb-27122019104001.jpg', 64, '2020-06-11 20:24:42', '2020-06-11 20:24:42'),
(114, 'uploads/product/images/giay-gucci-women-s-ace-gg-supreme-sneaker-with-bees-5e057d119d8e3-27122019104001.jpg', 64, '2020-06-11 20:24:42', '2020-06-11 20:24:42'),
(115, 'uploads/product/images/gfw013000hog__1__b81439de4dd54feaa5c4d96830a0c283_1024x1024.webp', 65, '2020-06-11 20:30:18', '2020-06-11 20:30:18'),
(116, 'uploads/product/images/gfw013000hog__4__f0b950db98764e7c9309be9f714d3e74_1024x1024.webp', 65, '2020-06-11 20:30:18', '2020-06-11 20:30:18'),
(117, 'uploads/product/images/gfw009488den__5__a5e0312cd1c14adea0c965b99530caeb_1024x1024.jpg', 66, '2020-06-11 20:33:26', '2020-06-11 20:33:26'),
(118, 'uploads/product/images/gfw009488den__1__0edad3a069344badb0f2b67b3a9493f5_1024x1024.jpg', 66, '2020-06-11 20:33:26', '2020-06-11 20:33:26'),
(119, 'uploads/product/images/a-mau_2_3__1024x1024.jpg', 67, '2020-06-11 20:36:08', '2020-06-11 20:36:08'),
(120, 'uploads/product/images/a-mau_2_6__1024x1024.jpg', 67, '2020-06-11 20:36:08', '2020-06-11 20:36:08'),
(121, 'uploads/product/images/gfw011388den__1__14ea440b1c3c4ba08127fd1c686cc091_1024x1024.jpg', 68, '2020-06-11 20:38:30', '2020-06-11 20:38:30'),
(122, 'uploads/product/images/gfw011388den__6__9e8e1079943d4d848c4f8decad4715a2_1024x1024.jpg', 68, '2020-06-11 20:38:30', '2020-06-11 20:38:30'),
(123, 'uploads/product/images/a-mau_38_5__1024x1024.jpg', 69, '2020-06-11 20:40:26', '2020-06-11 20:40:26'),
(124, 'uploads/product/images/a-mau_38_4__1024x1024.webp', 69, '2020-06-11 20:40:26', '2020-06-11 20:40:26'),
(125, 'uploads/product/images/gfw012988kem__1__691ce6ad8c1d46e48a33143d098d2bbe_1024x1024.webp', 70, '2020-06-11 20:42:28', '2020-06-11 20:42:28'),
(126, 'uploads/product/images/gfw012988kem__6__2fe3f8ebee5f4d14907adc6d7bedcb4c_1024x1024.jpg', 70, '2020-06-11 20:42:28', '2020-06-11 20:42:28'),
(127, 'uploads/product/images/dxb125411doo__6__df95bfc1ba7540f38aae793cfd6d9dbf_1024x1024.webp', 72, '2020-06-11 20:48:53', '2020-06-11 20:48:53'),
(128, 'uploads/product/images/dxb125411doo__2__62e19ece4e734a1d91d0e45bc827bf63_1024x1024.webp', 72, '2020-06-11 20:48:53', '2020-06-11 20:48:53'),
(129, 'uploads/product/images/dxb125799den__6__4c87e4b65b4a418d9e96e71c8aeacfe8_1024x1024.jpg', 73, '2020-06-11 20:50:37', '2020-06-11 20:50:37'),
(130, 'uploads/product/images/dxb125799den__5__a077600e76dd4f848e5af505f12aeaf9_1024x1024.webp', 73, '2020-06-11 20:50:37', '2020-06-11 20:50:37'),
(131, 'uploads/product/images/dxb125622cam__1__4f46bacb030b487ea5342e7e4ccd536e_1024x1024.webp', 74, '2020-06-11 20:52:49', '2020-06-11 20:52:49'),
(132, 'uploads/product/images/dxb125622cam__4__235b759b4d0b408db1a625dba14f82e5_1024x1024.jpg', 74, '2020-06-11 20:52:49', '2020-06-11 20:52:49'),
(133, 'uploads/product/images/dxg001322doo__1__ef5d4c3e49544d7eb7bd94c882a105fb_1024x1024.webp', 75, '2020-06-11 20:55:16', '2020-06-11 20:55:16'),
(134, 'uploads/product/images/dxg001322doo__4__6ad2f69edd99471da4c7708d13e340ae_1024x1024.jpg', 75, '2020-06-11 20:55:16', '2020-06-11 20:55:16'),
(137, 'uploads/product/images/65166870_315962699287405_6234691942689538048_o.jpg', 77, '2020-06-12 00:40:58', '2020-06-12 00:40:58'),
(149, 'uploads/product/images/testUpload.jpg', 83, '2020-06-12 02:38:01', '2020-06-12 02:38:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_05_26_110226_create_products_table', 1),
(4, '2020_05_26_111732_add_role_id_to_users_table', 2),
(5, '2020_05_26_112435_create_categoties_table', 2),
(6, '2020_05_26_112447_create_brands_table', 2),
(7, '2020_05_26_112456_create_bannes_table', 2),
(8, '2020_05_26_112506_create_news_table', 2),
(9, '2020_05_26_112528_create_comments_table', 2),
(10, '2020_05_26_112540_create_vendors_table', 2),
(11, '2020_05_26_112552_create_contacts_table', 2),
(12, '2020_05_26_113106_create_brands_table', 3),
(13, '2020_05_26_134103_create_products_table', 4),
(14, '2020_05_27_143657_create_news_table', 5),
(15, '2020_05_27_153943_create_banners_table', 6),
(16, '2020_05_30_091729_create_blogs_table', 7),
(17, '2020_05_31_082909_create_products_table', 8),
(18, '2020_05_31_083946_add_image_id_to_products_table', 9),
(19, '2020_05_31_090740_add_images_id_to_products_table', 10),
(20, '2020_05_31_143806_create_products_table', 11),
(21, '2020_06_03_095852_create_blogs_table', 12),
(22, '2020_06_03_102234_add_avatar_to_users_table', 12),
(23, '2020_06_03_104918_create_users_table', 13),
(24, '2020_06_03_110015_add_avatar_to_users_table', 14),
(25, '2020_06_05_041630_create_images_table', 15),
(26, '2020_06_07_115742_create_image_uploads_table', 16),
(27, '2020_06_07_141117_create_image_uploads_table', 17),
(28, '2020_06_11_081800_create_users_table', 18),
(29, '2020_06_27_140730_create_multis_table', 19);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `multis`
--

CREATE TABLE `multis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `multis`
--

INSERT INTO `multis` (`id`, `filename`, `created_at`, `updated_at`) VALUES
(1, 'uploads/multi/images/1.png', '2020-06-27 07:46:19', '2020-06-27 07:46:19'),
(2, 'uploads/multi/images/Just Arrival2.png', '2020-06-27 07:46:19', '2020-06-27 07:46:19'),
(3, 'uploads/multi/images/Just-Arrival2.jpg', '2020-06-27 07:47:22', '2020-06-27 07:47:22'),
(4, 'uploads/multi/images/Laneige Water Bank.png', '2020-06-27 07:47:22', '2020-06-27 07:47:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_status_id` int(11) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `code`, `fullname`, `email`, `address`, `address2`, `phone`, `discount`, `note`, `coupon`, `total`, `user_id`, `order_status_id`, `payment_id`, `created_at`, `updated_at`) VALUES
(9, 'DH-9-30062020', 'Nam Quang Luu', 'AkiraNam1999@gmail.com', '25 Vũ Ngọc Phan', NULL, '32787332', 0, 'Chuyển hàng vào lúc 17h', NULL, 175000, NULL, 1, NULL, '2020-06-30 02:21:00', '2020-06-30 02:21:00'),
(10, 'DH-10-30062020', 'Nam Quang Luu', 'AkiraNam1999@gmail.com', '25 Vũ Ngọc Phan', NULL, '32787332', 0, NULL, NULL, 125000, NULL, 1, NULL, '2020-06-30 02:23:24', '2020-06-30 02:23:24'),
(11, 'DH-11-30062020', 'Nam Quang Luu', 'AkiraNam1999@gmail.com', '25 Vũ Ngọc Phan', NULL, '32787332', 0, 'à', NULL, 135000, NULL, 1, NULL, '2020-06-30 02:26:45', '2020-06-30 02:26:45'),
(12, 'DH-12-30062020', 'Nam Quang Luu', 'AkiraNam1999@gmail.com', '25 Vũ Ngọc Phan', NULL, '32787332', 0, '24', NULL, 125000, NULL, 1, NULL, '2020-06-30 02:35:46', '2020-06-30 02:35:46'),
(13, 'DH-13-30062020', 'Nam Quang Luu', 'AkiraNam1999@gmail.com', '25 Vũ Ngọc Phan', NULL, '32787332', 0, '12', NULL, 135000, NULL, 1, NULL, '2020-06-30 02:36:18', '2020-06-30 02:36:18'),
(14, 'DH-14-30062020', 'Nam Quang Luu', 'AkiraNam1999@gmail.com', '25 Vũ Ngọc Phan', NULL, '32787332', 0, '35', NULL, 175000, NULL, 1, NULL, '2020-06-30 02:38:48', '2020-06-30 02:38:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quanty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`id`, `name`, `image`, `sku`, `user_id`, `order_id`, `product_id`, `price`, `quanty`, `created_at`, `updated_at`) VALUES
(6, 'Dép Xốp Bé Trai Biti\'s Batman DXB125799DEN (Đen)*', 'uploads/product/1591959037_dxb125799den__2__434ce4f56c8942668e69cdcd7d521ef7_1024x1024.webp', 'DXB125799DEN28', 0, 9, 73, 175000, 1, NULL, NULL),
(7, 'Dép Xốp Bé Trai Biti\'s Doraemon DXB125622CAM (Cam)*', 'uploads/product/1591959169_dxb125622cam__5__269f68e84d2c4385a33cc562ad33f6b9_1024x1024.jpg', 'DXB125622CAM24', 0, 10, 74, 125000, 1, NULL, NULL),
(8, 'Dép Xốp Bé Gái Biti\'s Doraemon DXG001322DOO (Đỏ)*', 'uploads/product/1591959316_dxg001322doo__5__6246bfae1f0f4c17a6a6b49a7b1c69f9_1024x1024.webp', 'DXG001322DOO28', 0, 11, 75, 135000, 1, NULL, NULL),
(9, 'Dép Xốp Bé Trai Biti\'s Doraemon DXB125622CAM (Cam)*', 'uploads/product/1591959169_dxb125622cam__5__269f68e84d2c4385a33cc562ad33f6b9_1024x1024.jpg', 'DXB125622CAM24', 0, 12, 74, 125000, 1, NULL, NULL),
(10, 'Dép Xốp Bé Gái Biti\'s Doraemon DXG001322DOO (Đỏ)*', 'uploads/product/1591959316_dxg001322doo__5__6246bfae1f0f4c17a6a6b49a7b1c69f9_1024x1024.webp', 'DXG001322DOO28', 0, 13, 75, 135000, 1, NULL, NULL),
(11, 'Dép Xốp Bé Trai Biti\'s Batman DXB125799DEN (Đen)*', 'uploads/product/1591959037_dxb125799den__2__434ce4f56c8942668e69cdcd7d521ef7_1024x1024.webp', 'DXB125799DEN28', 0, 14, 73, 175000, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_status`
--

CREATE TABLE `order_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_status`
--

INSERT INTO `order_status` (`id`, `name`) VALUES
(1, 'Mới'),
(2, 'Đang xử lý'),
(3, 'Hoàn thành'),
(4, 'Hủy');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `price` int(11) NOT NULL DEFAULT 0,
  `sale` int(11) DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 0,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `is_hot` int(11) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL DEFAULT 0,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` int(11) NOT NULL DEFAULT 0,
  `vendor_id` int(11) NOT NULL DEFAULT 0,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `comment_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `image`, `stock`, `price`, `sale`, `position`, `is_active`, `is_hot`, `views`, `category_id`, `url`, `sku`, `brand_id`, `vendor_id`, `summary`, `description`, `meta_title`, `meta_description`, `user_id`, `comment_id`, `created_at`, `updated_at`) VALUES
(23, 'Giày Thể Thao Cao Cấp Nam Biti\'s Hunter Layered Upper DSMH02800TRG (Trắng)', 'giay-the-thao-cao-cap-nam-bitis-hunter-layered-upper-dsmh02800trg-trang', 'uploads/product/1591888496_anh1_1024x1024.webp', 4, 899000, 850000, 1, 1, 1, 0, 23, 'cao.vn', 'DSMH02800TRG39', 4, 5, 'tom tat san phảm', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, 0, 0, '2020-06-11 04:02:03', '2020-06-19 08:08:51'),
(24, 'Giày Thể Thao Nam Biti\'s Hunter Street x Vietmax 2020 - BST HaNoi Culture Patchwork Lake Turquoise (Xanh Ngọc)', 'giay-the-thao-nam-bitis-hunter-street-x-vietmax-2020-bst-hanoi-culture-patchwork-lake-turquoise-xanh-ngoc', 'uploads/product/1591888276_4_8e93f0ee3eac46fe90eb3800d0cc767a_1024x1024.webp', 4, 899000, 850000, 2, 1, 1, 0, 23, 'bitis.vn', 'DSMH02504XNG41', 4, 5, 'Tiếp nối tinh thần #ProudlyMadeinVietNam, nếu 2019 là hơi thở của một Sài Gòn xô bồ mà phóng khoáng, không hoàn hảo nhưng vẫn đáng tự hào, thì 2020 là một nguồn cảm hứng rất khác - tự hào từ những thái cực văn hóa Hà Nội.', '<p>Tiếp nối tinh thần #ProudlyMadeinVietNam, nếu 2019 l&agrave; hơi thở của một S&agrave;i G&ograve;n x&ocirc; bồ m&agrave; ph&oacute;ng kho&aacute;ng, kh&ocirc;ng ho&agrave;n hảo nhưng vẫn đ&aacute;ng tự h&agrave;o, th&igrave; 2020 l&agrave; một nguồn cảm hứng rất kh&aacute;c - tự h&agrave;o từ những th&aacute;i cực văn h&oacute;a H&agrave; Nội.</p>\r\n\r\n<p>Ừ đ&uacute;ng rồi, H&agrave; Nội của bạn đấy!</p>\r\n\r\n<p>Khi n&oacute;ng đi&ecirc;n dại, l&uacute;c lạnh th&igrave; t&iacute;m t&aacute;i</p>\r\n\r\n<p>L&agrave; m&aacute;i ng&oacute;i s&aacute;nh vai phố thị ồn &atilde;</p>\r\n\r\n<p>L&agrave; b&ecirc; t&ocirc;ng chọc trời cạnh&nbsp;mặt hồ thơ, ta rảo bước t&igrave;m ai</p>\r\n\r\n<p>H&agrave; Nội kh&ocirc;ng vội, v&agrave; cũng chẳng nửa vời</p>\r\n\r\n<p>Đi&ecirc;n đến nơi, h&agrave;o hoa đến chốn</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>H&agrave; Nội đ&acirc;u chỉ đẹp bởi ngh&igrave;n năm văn hiến. Văn ho&aacute; H&agrave; Nội l&agrave; &ldquo;bức tranh&rdquo; tổng ho&agrave; những mảnh th&aacute;i cực, tưởng đối lập nhưng lại tồn tại song h&agrave;nh. V&agrave; ch&iacute;nh bạn, l&agrave; người trẻ với lăng k&iacute;nh của m&igrave;nh &ndash; &nbsp;qua từng bước trải nghiệm để tiếp nối, s&aacute;ng tạo v&agrave; đắp l&ecirc;n những mảnh văn h&oacute;a rất ri&ecirc;ng, tạo th&agrave;nh một H&agrave; Nội rất ri&ecirc;ng, rất đỗi tự h&agrave;o.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>R&ecirc;u phong văn ho&aacute; ngh&igrave;n năm,</p>\r\n\r\n<p>Tuổi trẻ ngược ngạo, th&igrave; sao n&agrave;o?</p>\r\n\r\n<p>&nbsp;<strong>Từ cảm hứng tự h&agrave;o đ&oacute;, Biti&#39;s Hunter Street một lần nữa c&ugrave;ng nghệ sĩ VietMax s&aacute;ng tạo n&ecirc;n BỘ SƯU TẬP MỚI, với 3 phi&ecirc;n bản:</strong></p>\r\n\r\n<p>#OldWallYellow - Tận c&ugrave;ng ho&agrave;i cổ: cảm hứng từ những gi&aacute; trị truyền thống, l&acirc;u đời</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#ConcreteGrey - Tận c&ugrave;ng đổi mới: cảm hứng từ sự ph&aacute;t triển, vươn m&igrave;nh kh&ocirc;ng ngừng của thủ đ&ocirc;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#LakeTurquoise - Tận c&ugrave;ng chất thơ: Cảm hứng từ n&eacute;t tao nh&atilde; trong cả thi&ecirc;n nhi&ecirc;n, cảnh quan &amp; con người H&agrave; Nội</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ldquo;Chất&rdquo; H&agrave; Nội, c&ugrave;ng bạn tự h&agrave;o! #ProudlyMadeinVietnam</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kết hợp c&ugrave;ng c&ocirc;ng nghệ cải tiến vượt bậc của d&ograve;ng Biti&rsquo;s Hunter Street:</p>\r\n\r\n<ul>\r\n	<li>Đế #LiteTraction với chất liệu cao su EVA, độ ma s&aacute;t cao, bền bỉ, tăng cường t&iacute;nh đ&agrave;n hồi, nhẹ v&agrave; &ecirc;m &aacute;i, d&agrave;nh ri&ecirc;ng cho trải nghiệm đường phố thoải m&aacute;i, tự tin &ldquo;c&acirc;n&quot; mọi thử th&aacute;ch nắng mưa, thời tiết kh&oacute; chiều nhất.</li>\r\n	<li>Chất liệu vải Canvas #10OZ cao cấp cho mũ quai chắc chắn, bền bỉ v&agrave; đạt độ nhẹ tối ưu, kết hợp c&ocirc;ng nghệ chống nhăn, chống co r&uacute;t hạn chế g&atilde;y mũi, giữ chuẩn form gi&agrave;y, vững chắc cho những trải nghiệm đường phố.</li>\r\n	<li>Đệm l&oacute;t kh&aacute;ng khuẩn EVA độ đ&agrave;n hồi cao cho những trải nghiệm đường phố nhẹ &ecirc;m hơn, thoải m&aacute;i.</li>\r\n</ul>', NULL, NULL, 0, 0, '2020-06-11 08:11:16', '2020-06-12 02:50:04'),
(25, 'Giày Thể Thao Cao Cấp Nam Biti\'s Hunter Layered Upper (Đen)', 'giay-the-thao-cao-cap-nam-bitis-hunter-layered-upper-den', 'uploads/product/1591888449_02800den__5__a7dee87d666e42c6977609300bf230b1_1024x1024.webp', 3, 899000, 850000, 3, 1, 1, 0, 23, 'bitis.vn', 'DSMH02800DEN39', 4, 5, 'Tóm tắt sản phẩm', '<p>Chưa c&oacute; m&ocirc; tả cho sản phẩm n&agrave;y</p>', NULL, NULL, 0, 0, '2020-06-11 08:14:09', '2020-06-19 08:02:22'),
(26, 'Giày Thể Thao Nam Biti\'s Hunter Core - Midnight Black Inverted (Đen)', 'giay-the-thao-nam-bitis-hunter-core-midnight-black-inverted-den', 'uploads/product/1591888755_0307_c1e4a6b099ba42cebef9e316c45dd82a_1024x1024.webp', 5, 699000, 650000, 4, 1, 1, 0, 23, 'bitis.vn', 'DSMH01203DEN43', 4, 5, 'Tóm tắt', '<p><img alt=\"bitis_giay_the_thao_nam_biti_s_hunter_core_midnight_black_inverted_dsmh01203den_den01\" src=\"https://file.hstatic.net/1000230642/file/midnite_core_9eeeced697fd4ab0a1333150039be940_grande.jpg\" /></p>\r\n\r\n<p><img alt=\"bitis_giay_the_thao_nam_biti_s_hunter_core_midnight_black_inverted_dsmh01203den_den02\" src=\"https://file.hstatic.net/1000230642/file/midnite_street_nu_3_dcdcad21ab874da6a550fcb0540400b6_grande.jpg\" /></p>', NULL, NULL, 0, 0, '2020-06-11 08:19:15', '2020-06-12 02:49:33'),
(27, 'Giày Thể Thao Nữ Biti\'s Hunter X BKL Beige (Kem)', 'giay-the-thao-nu-bitis-hunter-x-bkl-beige-kem', 'uploads/product/1591889906_02300kem__1__b25c3ace490d45749c66a3be0fbc9ea4_1024x1024.webp', 4, 929000, 899000, 5, 1, 1, 0, 26, 'bitis.vn', 'DSWH02300KEM40', 4, 5, 'Tóm tắt sản phẩm', '<p><img alt=\"bitis_giay_the_thao_nu_biti_s_hunter_x_bkl_beige_dswh02300kem_kem01\" src=\"https://file.hstatic.net/1000230642/file/bkl_beige_2_fd0a27e7847f4edba0ea5047fcfa6516_grande.jpg\" /></p>\r\n\r\n<p><img alt=\"bitis_giay_the_thao_nu_biti_s_hunter_x_bkl_beige_dswh02300kem_kem02\" src=\"https://file.hstatic.net/1000230642/file/blk_beige_4dcc72bb9d0d42bbb260337ee020cec3_grande.jpg\" /></p>', NULL, NULL, 0, 0, '2020-06-11 08:38:26', '2020-06-12 02:49:19'),
(28, 'Giày Thể Thao Nữ Biti\'s Hunter Girls’ Steps – Pink (Hồng)', 'giay-the-thao-nu-bitis-hunter-girls-steps-pink-hong', 'uploads/product/1591890074_dsc_0002_35d116bd49d945339949ea37d4dc5927_1024x1024.webp', 6, 750000, 710000, 6, 1, 1, 0, 26, 'bitis.vn', 'DSWH01000HOG37', 4, 5, 'Tóm tắt', '<p>Chưa c&oacute; m&ocirc; tả cho sản phẩm n&agrave;y</p>', NULL, NULL, 0, 0, '2020-06-11 08:41:14', '2020-06-12 02:49:03'),
(29, 'Giày Thể Thao Nữ Biti\'s Hunter Core White Snow (Trắng)- Festive Collection 2k19', 'giay-the-thao-nu-bitis-hunter-core-white-snow-trang-festive-collection-2k19', 'uploads/product/1591890201_01201trg__2__c76e4b971a1743f89724a32778003fe4_1024x1024.webp', 5, 699000, 659000, 7, 1, 1, 0, 26, 'bitis.vn', 'DSWH01201TRG35', 4, 5, 'Tóm tắt sản phẩm', '<p><img alt=\"bitis_giay_the_thao_nu_biti_s_hunter_core_white_snow_dswh01201trg_trang_festive_collection_2k1901\" src=\"https://file.hstatic.net/1000230642/file/snow_white_2698a8e7e29c4c92b8979ac87a50c512_grande.jpg\" /></p>\r\n\r\n<p><img alt=\"bitis_giay_the_thao_nu_biti_s_hunter_core_white_snow_dswh01201trg_trang_festive_collection_2k1902\" src=\"https://file.hstatic.net/1000230642/file/snow_white_2_31bc083f62904d949e59b61345d09f1b_grande.jpg\" /></p>', NULL, NULL, 0, 0, '2020-06-11 08:43:21', '2020-06-12 02:48:43'),
(30, 'Giày Thể Thao Nữ Biti\'s Hunter X 2k19 - Jet Black (Đen)', 'giay-the-thao-nu-bitis-hunter-x-2k19-jet-black-den', 'uploads/product/1591890350_02200den__2__38ffa603f8e9420cac1a9059806f1ddd_1024x1024.webp', 5, 829000, 799000, 8, 1, 1, 0, 26, 'bitis.vn', 'DSWH02200DEN35', 4, 5, 'Tóm tắt sản phẩm', '<p><img alt=\"bitis_giay_the_thao_nu_biti_s_hunter_x_2k19_jet_black_dswh02200den_den01\" src=\"https://file.hstatic.net/1000230642/file/jet_black_2_0da256bcc805434c98ea18302a997915_grande.jpg\" /></p>\r\n\r\n<p><img alt=\"bitis_giay_the_thao_nu_biti_s_hunter_x_2k19_jet_black_dswh02200den_den02\" src=\"https://file.hstatic.net/1000230642/file/jet_black_2dbd6a56c6494ee1868d7de68f27852a_grande.jpg\" /></p>', NULL, NULL, 0, 0, '2020-06-11 08:45:50', '2020-06-12 02:48:26'),
(31, 'Dentsu Redder - Hương Giang - Vietnamese Canvas of Pride (Women)', 'dentsu-redder-huong-giang-vietnamese-canvas-of-pride-women', 'uploads/product/1591890483_03001__1__45e91a3c71a44521be05eef6cbbcb682_1024x1024.webp', 11, 949000, 929000, 8, 1, 1, 0, 26, 'bitis.vn', 'DSWH03001TRG35', 4, 5, 'Tóm tắt sản phẩm', '<p>Chưa c&oacute; m&ocirc; tả</p>', NULL, NULL, 0, 0, '2020-06-11 08:48:03', '2020-06-12 02:48:05'),
(32, 'Giày Tập Đi Bé Gái Biti\'s DSG001877HOG (Hồng)*', 'giay-tap-di-be-gai-bitis-dsg001877hog-hong', 'uploads/product/1591890650_dsg001877hog__5__2f9d5354f70c4d8c991708c1cd0e55c1_1024x1024.webp', 6, 150000, 140000, 9, 1, 1, 0, 32, 'bitis.vn', 'DSG001877HOG18', 4, 5, 'Tóm tắt', '<p>Chưa c&oacute; m&ocirc; tả</p>', NULL, NULL, 0, 0, '2020-06-11 08:50:50', '2020-06-12 02:47:38'),
(33, 'Giày Thể Thao Quai Dệt Bé Gái Biti\'s DSG000600HOG (Hồng)*', 'giay-the-thao-quai-det-be-gai-bitis-dsg000600hog-hong', 'uploads/product/1591890825_dsg000600hog__3__058d6a035f1a44c9bab771f8c6972257_1024x1024.webp', 6, 400000, 399000, 10, 1, 1, 0, 32, 'bitis.vn', 'DSG000600HOG34', 6, 5, 'Tóm tắt sản phẩm', '<p>Chưa c&oacute; m&ocirc; tả cho sản phẩm n&agrave;y</p>', NULL, NULL, 0, 0, '2020-06-11 08:53:45', '2020-06-12 02:47:18'),
(34, 'Sandal Eva Phun Bé Gái Biti\'s DEG000200HOG (Hồng)*', 'sandal-eva-phun-be-gai-bitis-deg000200hog-hong', 'uploads/product/1591891148_deg000200hog__3__b62e4422c59c420193b48d4b10300af3_1024x1024.jpg', 6, 250000, 239000, 10, 1, 1, 0, 33, 'bitis.vn', 'DEG000200HOG39', 4, 5, 'Tóm tắt sản phẩm', '<p>Chưa c&oacute; m&ocirc; tả</p>', NULL, NULL, 0, 0, '2020-06-11 08:59:08', '2020-06-12 02:47:01'),
(35, 'Giày Búp Bê Bé Gái Biti\'s DBB008288TRG (Trắng)*', 'giay-bup-be-be-gai-bitis-dbb008288trg-trang', 'uploads/product/1591891885_dbb008288trg__3__700ea53b561c4b2cb5d302cc4bf0a954_1024x1024.webp', 6, 230000, 219000, 11, 1, 1, 0, 32, 'bitis.vn', 'DBB008288TRG28', 4, 5, 'Tóm tắt sản phẩm', '<p>Chưa c&oacute; m&ocirc; tả</p>', NULL, NULL, 0, 0, '2020-06-11 09:11:25', '2020-06-12 02:46:47'),
(36, 'Giày Búp Bê Bé Gái Biti\'s DBB008288DEN (Đen)*', 'giay-bup-be-be-gai-bitis-dbb008288den-den', 'uploads/product/1591893888_dbb008288den__3__20e923fbbea241bbbe386cce300883a1_1024x1024.jpg', 8, 230000, 119000, 11, 1, 1, 0, 32, 'bitis.vn', 'DBB008288DEN28', 4, 5, 'Tóm tắt sản phẩm', '<p>Chưa&nbsp;c&oacute; m&ocirc; tả</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, 0, 0, '2020-06-11 09:44:48', '2020-06-12 02:46:31'),
(37, 'Giày Búp Bê Bé Gái Biti\'s Mickey (Trằng)*', 'giay-bup-be-be-gai-bitis-mickey-trang', 'uploads/product/1591894456_dbb008611trg__5__f92322b080624e12ade0a9b58d7fad96_1024x1024.jpg', 8, 309000, 299000, 13, 1, 1, 0, 32, 'bitis.vn', 'DBB008611TRG24', 4, 5, 'Tóm tắt sản phẩm', '<p>Chưa c&oacute; m&ocirc;&nbsp;tả</p>', NULL, NULL, 0, 0, '2020-06-11 09:54:16', '2020-06-12 02:46:18'),
(38, 'Sandal Si Cao Su Bé Trai Biti\'s (Đỏ)', 'sandal-si-cao-su-be-trai-bitis-do', 'uploads/product/1591894655_drb030400doo__5__7eddf89aac784619b1c5d7606794156a_1024x1024.webp', 5, 245000, 229000, 14, 1, 1, 0, 29, 'bitis.vn', 'DRB030400DOO28', 4, 5, 'Tóm tắt sản phẩm', '<p>Chưa c&oacute; m&ocirc; tả</p>', NULL, NULL, 0, 0, '2020-06-11 09:57:35', '2020-06-12 02:45:58'),
(39, 'Sandal Eva Phun Quai Lưới Dệt Bé Trai Biti\'s DEB005900XDG (Xanh Dương)*', 'sandal-eva-phun-quai-luoi-det-be-trai-bitis-deb005900xdg-xanh-duong', 'uploads/product/1591894899_deb005900xdg__2__269f809a53ed49fda2cddb9769ee7fac_1024x1024.webp', 9, 255000, 239000, 15, 1, 1, 0, 29, 'bitis.vn', 'DEB005900XDG31', 4, 0, 'Tóm tắt sản phẩm', '<p>Chưa c&oacute; m&ocirc; tả</p>', NULL, NULL, 0, 0, '2020-06-11 10:01:39', '2020-06-12 02:45:45'),
(40, 'Sandal Eva Phun Bé Trai Biti\'s (Đỏ)*', 'sandal-eva-phun-be-trai-bitis-do', 'uploads/product/1591895018_deb005600doo__3__661b159745dc4fc1a6a660f3596cebd7_1024x1024.webp', 11, 230000, 219000, 16, 1, 1, 0, 29, 'bitis.vn', 'DEB005600DOO25', 4, 5, 'Tóm tắt sản phẩm', '<p>Chưa c&oacute; m&ocirc; tả</p>', NULL, NULL, 0, 0, '2020-06-11 10:03:38', '2020-06-12 02:45:29'),
(41, 'Giày Thể Thao Bé Trai Bti\'s Marvel DSB131811DOO (Đỏ)', 'giay-the-thao-be-trai-btis-marvel-dsb131811doo-do', 'uploads/product/1591895128_dsb131811doo__5__9222544476bb420f945d65b927e97d41_1024x1024.webp', 11, 449000, 429000, 17, 1, 1, 0, 30, 'bitis.vn', 'DSB131811DOO30', 4, 5, 'Chưa có tóm tắt', '<p>Chưa c&oacute; m&ocirc; tả</p>', NULL, NULL, 0, 0, '2020-06-11 10:05:28', '2020-06-12 02:45:11'),
(42, 'Giày Thể Thao Bé Trai Bit\'s Spiderman DSB130411DOO (Đỏ)*', 'giay-the-thao-be-trai-bits-spiderman-dsb130411doo-do', 'uploads/product/1591895230_dsb130411doo__5__7ba063a8bf0143a08d7d116dc8cd704a_1024x1024.jpg', 8, 449000, 429000, 18, 1, 1, 0, 30, 'bitis.vn', 'DSB130411DOO30', 4, 5, 'Chưa có tóm tắt', '<p>Chưa c&oacute; m&ocirc; tả</p>', NULL, NULL, 0, 0, '2020-06-11 10:07:10', '2020-06-12 02:44:58'),
(43, 'Giày Thể Thao Quai Dệt Bé Trai Biti\'s (Xanh Dương)', 'giay-the-thao-quai-det-be-trai-bitis-xanh-duong', 'uploads/product/1591895375_dsb132600xdg__5__531f50b0d91c481b9010298e862c9a10_1024x1024.webp', 5, 365000, 349000, 19, 1, 1, 0, 30, 'bitis.vn', 'DSB132600XDG29', 4, 5, 'Chưa có tóm tắt', '<p>Chưa c&oacute; m&ocirc; tả</p>', NULL, NULL, 0, 0, '2020-06-11 10:09:35', '2020-06-12 02:44:42'),
(44, 'Giày Eva Phun Bé Trai Biti\'s DSB127100XAM (Xám)*', 'giay-eva-phun-be-trai-bitis-dsb127100xam-xam', 'uploads/product/1591895557_dsc_0005_b6e696de12694236bbad678694672a95_1024x1024.webp', 11, 250000, 229000, 20, 1, 1, 0, 30, 'bitis.vn', 'DSB127100XAM28', 4, 5, 'Chưa có tóm tắt', '<p>Chưa c&oacute; m&ocirc; tả</p>', NULL, NULL, 0, 0, '2020-06-11 10:12:37', '2020-06-12 02:44:23'),
(45, 'Vớ Biti\'s Hunter Go For Love DQT104000TRG (Trắng)', 'vo-bitis-hunter-go-for-love-dqt104000trg-trang', 'uploads/product/1591895663_vo_gfl_282a65e749264cb487439c940a2f5d9d_1024x1024.webp', 11, 60000, 55000, 21, 1, 1, 0, 17, 'bitis.vn', 'DQT104000TRG00', 4, 5, 'Chưa có tóm tắt', '<p>Chưa c&oacute; m&ocirc; tả</p>', NULL, NULL, 0, 0, '2020-06-11 10:14:23', '2020-06-11 10:14:23'),
(46, 'Dây Giày Biti\'s ALUH00100XAM (Xám)', 'day-giay-bitis-aluh00100xam-xam', 'uploads/product/1591895740_dsc_0121_2587281032cb4ba881e075c8959b7cc1_1024x1024.jpg', 20, 49000, 39000, 22, 1, 1, 0, 17, 'bitis.vn', 'ALUH00100XAM41', 4, 5, 'Chưa có tóm tắt', '<p>Chưa c&oacute; m&ocirc; tả</p>', NULL, NULL, 0, 0, '2020-06-11 10:15:40', '2020-06-11 10:15:40'),
(47, 'Lót Đế Giày Biti\'s Hunter X AIUH00100DEN (Đen)', 'lot-de-giay-bitis-hunter-x-aiuh00100den-den', 'uploads/product/1591895863_aiuh00100den__1__1024x1024.webp', 20, 249000, 229000, 23, 1, 1, 0, 17, 'bitis.vn', 'AIUH00100DEN36', 4, 5, 'Chưa có tóm tắt', '<p>Chưa c&oacute; m&ocirc; tả</p>', NULL, NULL, 0, 0, '2020-06-11 10:17:43', '2020-06-11 10:17:43'),
(48, 'Cặp Pin Kim Loại Mẫu Hương Giang Equality Love AAUH00400DOO', 'cap-pin-kim-loai-mau-huong-giang-equality-love-aauh00400doo', 'uploads/product/1591895999_dsc_0043_2c152637a8a247fc957c7fb73f9227aa_1024x1024.webp', 20, 165000, 149000, 24, 1, 1, 0, 17, 'bitis.vn', 'AAUH00400DOO35', 4, 5, 'Chưa có tóm tắt', '<p>Chưa c&oacute; m&ocirc; tả</p>', NULL, NULL, 0, 0, '2020-06-11 10:19:59', '2020-06-11 10:19:59'),
(49, 'Cặp Pin Kim Loại Mẫu Hương Giang Universal Love AAUH00200DEN', 'cap-pin-kim-loai-mau-huong-giang-universal-love-aauh00200den', 'uploads/product/1591896193_dsc_0040_02acac8a2c304768ab352120657b5a64_1024x1024.webp', 20, 165000, 149000, 25, 1, 1, 0, 18, 'bitis.vn', 'AAUH00200DEN35', 4, 5, 'Chưa có tóm tắt', '<p>TH&Aacute;NG 6 TỰ H&Agrave;O, TỰ TIN &ldquo;Y&Ecirc;U B&Igrave;NH ĐẲNG&rdquo; TR&Ecirc;N TỪNG BƯỚC</p>\r\n\r\n<p>Phi&ecirc;n bản pin c&agrave;i đặc biệt #UniversalLove c&ugrave;ng bạn #GoForLove</p>\r\n\r\n<p>T&igrave;nh y&ecirc;u vốn dĩ b&igrave;nh đẳng, h&agrave;nh tr&igrave;nh trải nghiệm t&igrave;nh y&ecirc;u kh&ocirc;ng bị r&agrave;ng buộc với bất kỳ giới hạn n&agrave;o. Biti&rsquo;s Hunter vẫn lu&ocirc;n đồng h&agrave;nh c&ugrave;ng những tr&aacute;i tim đang y&ecirc;u tr&ecirc;n những bước ch&acirc;n tự tin cất cao tuy&ecirc;n ng&ocirc;n Y&ecirc;u B&igrave;nh Đẳng. V&agrave; trong th&aacute;ng 6 #PrideMonth đầy tự h&agrave;o, h&agrave;nh tr&igrave;nh tiếp bước t&igrave;nh y&ecirc;u nay lại c&agrave;ng mạnh mẽ hơn bao giờ hết với phi&ecirc;n bản pin c&agrave;i đặc biệt:</p>\r\n\r\n<p>Bộ phụ kiện gồm 2 pad d&aacute;n lẻ đ&atilde; đục lỗ &amp; 2 pin c&agrave;i mang biểu tượng Universal Love</p>\r\n\r\n<p>Chất liệu zinc alloy, kh&ocirc;ng bị rỉ s&eacute;t</p>\r\n\r\n<p>D&agrave;nh ri&ecirc;ng cho bộ sưu tập Biti&#39;s Hunter Nameless x Hương Giang: Go For Love</p>\r\n\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -26px; top: 38.6px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', NULL, NULL, 0, 0, '2020-06-11 10:23:13', '2020-06-11 10:23:36'),
(50, 'GIÀY STAN SMITH', 'giay-stan-smith', 'uploads/product/1591896498_Giay_Stan_Smith_Mau_trang_M20324_01_standard.jpg', 6, 2300000, 2250000, 26, 1, 1, 0, 27, 'adidas.com', 'ADIDAS11', 7, 6, 'GIÀY STAN SMITH\r\nPHIÊN BẢN CHÍNH HIỆU CỦA BIỂU TƯỢNG GIÀY QUẦN VỢT KINH ĐIỂN NĂM 1972.', '<p>GI&Agrave;Y STAN SMITH</p>\r\n\r\n<p>PHI&Ecirc;N BẢN CH&Iacute;NH HIỆU CỦA BIỂU TƯỢNG GI&Agrave;Y QUẦN VỢT KINH ĐIỂN NĂM 1972.</p>\r\n\r\n<p>Trước đ&acirc;y, Stan Smith từng l&agrave; ng&ocirc;i sao lớn của l&agrave;ng quần vợt. Từ đ&oacute; đến nay, đ&ocirc;i gi&agrave;y mang t&ecirc;n &ocirc;ng lu&ocirc;n thắng đậm tr&ecirc;n đường phố. Từ tr&ecirc;n xuống dưới, đ&ocirc;i gi&agrave;y n&agrave;y giữ đ&uacute;ng phong c&aacute;ch thiết yếu theo nguy&ecirc;n bản năm 1972 với thiết kế bằng da tối giản v&agrave; đường n&eacute;t thanh tho&aacute;t vốn đ&atilde; trở th&agrave;nh đặc trưng của d&ograve;ng gi&agrave;y n&agrave;y.</p>', NULL, NULL, 0, 0, '2020-06-11 10:28:18', '2020-06-12 02:44:00'),
(51, 'GIÀY 4D RUN 1.0 LTD', 'giay-4d-run-10-ltd', 'uploads/product/1591896660_Giay_4D_Run_1.0_LTD_Mau_xam_FW1230_01_standard.jpg', 11, 5500000, 5450000, 26, 1, 1, 0, 23, 'adidas.com', 'ADIDAS12', 7, 6, 'GIÀY 4D RUN 1.0 LTD\r\nGIÀY CHẠY BỘ PHIÊN BẢN GIỚI HẠN VỚI LỚP ĐỆM CẢI TIẾN..', '<p>GI&Agrave;Y 4D RUN 1.0 LTD</p>\r\n\r\n<p>GI&Agrave;Y CHẠY BỘ PHI&Ecirc;N BẢN GIỚI HẠN VỚI LỚP ĐỆM CẢI TIẾN.</p>\r\n\r\n<p>Sinh ra để thống lĩnh, cảm hứng từ tương lai. D&ograve;ng 4D Run 1.0. Phối m&agrave;u phi&ecirc;n bản giới hạn mang &acirc;m hưởng Miami. Kết hợp giữa c&ocirc;ng nghệ cải tiến v&agrave; dữ liệu để tăng cường hiệu năng, kiệt t&aacute;c đế gi&agrave;y in 3D l&agrave; th&agrave;nh quả của 17 năm thu thập dữ liệu ph&acirc;n t&iacute;ch từ c&aacute;c vận động vi&ecirc;n. Mỗi sợi dệt đều được sắp xếp tỉ mỉ từng milimet, sử dụng chất liệu lưới được gia c&ocirc;ng đặc biệt. Th&acirc;n gi&agrave;y bằng vải dệt Parley Ocean Plastic&reg; mang đến độ n&acirc;ng đỡ, th&ocirc;ng tho&aacute;ng v&agrave; linh hoạt m&agrave; kh&ocirc;ng mất đi phong c&aacute;ch.</p>', NULL, NULL, 0, 0, '2020-06-11 10:31:00', '2020-06-12 02:43:39'),
(52, 'GIÀY RAPIDARUN', 'giay-rapidarun', 'uploads/product/1591896811_Giay_RapidaRun_Mau_djen_FY6549_01_standard.jpg', 5, 2000000, 1950000, 27, 1, 1, 0, 23, 'adidas.com', 'ADIDAS13', 7, 6, 'GIÀY RAPIDARUN\r\nGIÀY CHẠY BỘ THOẢI MÁI VỚI LỚP ĐỆM MỀM MẠI.', '<p>GI&Agrave;Y RAPIDARUN</p>\r\n\r\n<p>GI&Agrave;Y CHẠY BỘ THOẢI M&Aacute;I VỚI LỚP ĐỆM MỀM MẠI.</p>\r\n\r\n<p>Khi bạn thức dậy v&agrave; quyết định h&ocirc;m nay sẽ chạy bộ, bạn cần c&oacute; đ&ocirc;i gi&agrave;y ph&ugrave; hợp cho h&agrave;nh tr&igrave;nh ấy. Bất kể cự ly, đ&ocirc;i gi&agrave;y chạy bộ adidas n&agrave;y c&oacute; lớp đệm &ecirc;m &aacute;i gi&uacute;p bạn thoải m&aacute;i suốt qu&atilde;ng đường chạy. Đừng nghĩ nhiều, h&atilde;y cứ tận hưởng từng sải bước.</p>', NULL, NULL, 0, 0, '2020-06-11 10:33:31', '2020-06-12 02:41:55'),
(53, 'BỘ 3 ĐÔI TẤT ẨN', 'bo-3-doi-tat-an', 'uploads/product/1591896956_Bo_3_djoi_tat_an_Mau_trang_FM0676_03_standard.jpg', 20, 300000, 295000, 28, 1, 1, 0, 17, 'adidas.com', 'VOADIDAS1', 7, 6, 'BỘ 3 ĐÔI TẤT ẨN\r\nBA ĐÔI TẤT CỔ THẤP CỐ ĐỊNH, MỀM MẠI VÀ THOẢI MÁI.', '<p>BỘ 3 Đ&Ocirc;I TẤT ẨN</p>\r\n\r\n<p>BA Đ&Ocirc;I TẤT CỔ THẤP CỐ ĐỊNH, MỀM MẠI V&Agrave; THOẢI M&Aacute;I.</p>\r\n\r\n<p>Đừng để cảm gi&aacute;c vướng v&iacute;u, ch&ugrave;n ứ hay trơn tuột của đ&ocirc;i tất cản bước bạn. Những đ&ocirc;i tất cổ thấp adidas n&agrave;y lu&ocirc;n cố định trong đ&ocirc;i gi&agrave;y sneaker của bạn bất kể mọi t&igrave;nh huống. Ho&agrave;n to&agrave;n l&agrave; cảm gi&aacute;c thoải m&aacute;i.</p>', NULL, NULL, 0, 0, '2020-06-11 10:35:56', '2020-06-11 10:35:56'),
(54, 'BỘ 3 ĐÔI TẤT CAO CỔ', 'bo-3-doi-tat-cao-co', 'uploads/product/1591897052_Bo_3_djoi_tat_cao_co_Mau_trang_FM0625_03_standard.jpg', 22, 300000, 295000, 29, 1, 1, 0, 17, 'adidas.com', 'VOADIDAS2', 7, 6, 'BỘ 3 ĐÔI TẤT CAO CỔ', '<p>BỘ 3 Đ&Ocirc;I TẤT CAO CỔ</p>\r\n\r\n<p>Những đ&ocirc;i tất trơn cao cổ n&agrave;y tăng cường độ thoải m&aacute;i với miếng l&oacute;t đệm vừa phải. L&agrave;m bằng vải cotton co gi&atilde;n nhẹ với nhiều m&agrave;u sắc đa dạng, những đ&ocirc;i tất nam n&agrave;y d&agrave;i hơn c&ugrave;ng họa tiết 3 Sọc v&agrave; Ba L&aacute; tr&ecirc;n viền g&acirc;n sọc.</p>', NULL, NULL, 0, 0, '2020-06-11 10:37:32', '2020-06-11 10:37:32'),
(55, 'MŨ LƯỠI TRAI TREFOIL KHUY BẤM', 'mu-luoi-trai-trefoil-khuy-bam', 'uploads/product/1591897253_Mu_luoi_trai_Trefoil_khuy_bam_Mau_djen_DV0176_01_standard.jpg', 8, 600000, 599000, 20, 1, 1, 0, 17, 'adidas.com', 'MUADIDAS1', 7, 6, 'MŨ LƯỠI TRAI TREFOIL KHUY BẤM\r\nMẪU MŨ LƯỠI TRAI VÀNH THẲNG VỚI NÉT ĐẶC TRƯNG KHÔNG THỂ NHẦM LẪN CỦA ADIDAS.', '<p>MŨ LƯỠI TRAI TREFOIL KHUY BẤM</p>\r\n\r\n<p>MẪU MŨ LƯỠI TRAI V&Agrave;NH THẲNG VỚI N&Eacute;T ĐẶC TRƯNG KH&Ocirc;NG THỂ NHẦM LẪN CỦA ADIDAS.</p>\r\n\r\n<p>Thể hiện niềm tự h&agrave;o adidas của bạn. Mẫu mũ lưỡi trai v&agrave;nh thẳng n&agrave;y l&agrave;m nổi bật phong c&aacute;ch adidas Originals đ&iacute;ch thực với logo Trefoil lớn th&ecirc;u ở đằng trước. Mũ được thiết kế để tạo ra sự thoải m&aacute;i, với chất liệu cotton co gi&atilde;n v&agrave; khuy bấm điều chỉnh được.</p>', NULL, NULL, 0, 0, '2020-06-11 10:40:53', '2020-06-11 10:40:53'),
(56, 'GIÀY ULTRABOOST 20', 'giay-ultraboost-20', 'uploads/product/1591897431_Giay_UltraBoost_20_Mau_trang_EG0724_01_standard.jpg', 11, 5000000, 4950000, 21, 1, 1, 0, 26, 'adidas.com', 'ADIDAS14', 7, 6, 'GIÀY ULTRABOOST 20\r\nGIÀY CHẠY HIỆU NĂNG CAO VỚI ĐỘ ÔM VỪA KHÍT.', '<p>GI&Agrave;Y ULTRABOOST 20</p>\r\n\r\n<p>GI&Agrave;Y CHẠY HIỆU NĂNG CAO VỚI ĐỘ &Ocirc;M VỪA KH&Iacute;T.</p>\r\n\r\n<p>Tự tin từ nền tảng. Mẫu gi&agrave;y chạy adidas n&agrave;y được thiết kế gi&uacute;p bạn tăng tốc tr&ecirc;n những dặm đường chạy mỗi ng&agrave;y. Th&acirc;n gi&agrave;y bằng vải dệt kim cho độ n&acirc;ng đỡ từ những đường may trong dựa tr&ecirc;n c&ocirc;ng nghệ ghi h&igrave;nh chuyển động. G&oacute;t gi&agrave;y bằng chất liệu elastane mềm mại, thoải m&aacute;i cho ph&eacute;p g&oacute;t ch&acirc;n chuyển động tự nhi&ecirc;n. Lớp đệm đ&agrave;n hồi gi&uacute;p chuyển động nhịp nh&agrave;ng v&agrave; năng lượng tr&ocirc;i chảy.</p>', NULL, NULL, 0, 0, '2020-06-11 10:43:51', '2020-06-12 02:41:35'),
(57, 'GIÀY SL20', 'giay-sl20', 'uploads/product/1591897609_Giay_SL20_Mau_djen_EG1144_01_standard.jpg', 8, 3200000, 3199000, 22, 1, 1, 0, 26, 'adidas.com', 'ADIDAS15', 7, 6, 'GIÀY SL20\r\nGIÀY CHẠY BỘ THOẢI MÁI VỚI LỚP ĐỆM NHẸ.', '<p>GI&Agrave;Y SL20</p>\r\n\r\n<p>GI&Agrave;Y CHẠY BỘ THOẢI M&Aacute;I VỚI LỚP ĐỆM NHẸ.</p>\r\n\r\n<p>Khi sở hữu đ&ocirc;i gi&agrave;y chạy bộ thoải m&aacute;i, bạn sẽ kh&ocirc;ng c&ograve;n lăn tăn về đ&ocirc;i ch&acirc;n m&igrave;nh nữa. Bạn nhắm đến mục ti&ecirc;u xa hơn một ch&uacute;t. Hoặc nhanh hơn một ch&uacute;t. Bạn được thoải m&aacute;i th&uacute;c đẩy bản th&acirc;n với đ&ocirc;i gi&agrave;y chạy bộ adidas n&agrave;y. Th&acirc;n gi&agrave;y bằng vải lưới tho&aacute;ng kh&iacute; v&agrave; n&acirc;ng đỡ. Lớp đệm đế giữa đủ nhẹ cho tốc độ bứt ph&aacute; v&agrave; đủ đ&agrave;n hồi cho cảm gi&aacute;c thoải m&aacute;i tuyệt đối. Biểu tượng 3 Sọc lấy cảm hứng từ thư ph&aacute;p Nhật Bản tăng cảm gi&aacute;c tốc độ.</p>', NULL, NULL, 0, 0, '2020-06-11 10:46:49', '2020-06-12 02:41:26'),
(58, 'GIÀY GUCCI RHYTON 1:1', 'giay-gucci-rhyton-11', 'uploads/product/1591936668_giay-gucci-rhyton-1-1.jpg', 5, 2700000, 2400000, 1, 1, 1, 0, 26, 'gucci.com', 'GC6', 9, 2, 'Tulo\'s shop cung cấp giày thể thao ADIDAS chuẩn đẹp, chất lượng, giá cả hợp lý, cam kết chất lượng.\r\nTrạng thái : Còn hàng\r\nTình trạng : Hàng mới 100%\r\nGiao hàng & Thanh toán : Giao hàng trên toàn quốc và thanh toán khi nhận hàng', '<h3>GI&Agrave;Y GUCCI RHYTON 1:1</h3>\r\n\r\n<p><img alt=\"Giày Gucci Rhyton 1:1\" src=\"https://giaygiare.vn/upload/images/giay-gucci-rhyton-1-1-7.jpg\" style=\"height:1920px; width:2560px\" /><img alt=\"Giày Gucci Rhyton 1:1\" src=\"https://giaygiare.vn/upload/images/giay-gucci-rhyton-1-1.jpg\" style=\"height:960px; width:1280px\" /><img alt=\"Giày Gucci Rhyton 1:1\" src=\"https://giaygiare.vn/upload/images/giay-gucci-rhyton-1-1-1.jpg\" style=\"height:1918px; width:2560px\" /><img alt=\"Giày Gucci Rhyton 1:1\" src=\"https://giaygiare.vn/upload/images/giay-gucci-rhyton-1-1-2.jpg\" style=\"height:2066px; width:2560px\" /><img alt=\"Giày Gucci Rhyton 1:1\" src=\"https://giaygiare.vn/upload/images/giay-gucci-rhyton-1-1-3.jpg\" style=\"height:1978px; width:2560px\" /><img alt=\"Giày Gucci Rhyton 1:1\" src=\"https://giaygiare.vn/upload/images/giay-gucci-rhyton-1-1-4.jpg\" style=\"height:1970px; width:2560px\" /><img alt=\"Giày Gucci Rhyton 1:1\" src=\"https://giaygiare.vn/upload/images/giay-gucci-rhyton-1-1-6.jpg\" style=\"height:1904px; width:2560px\" /><img alt=\"Giày Gucci Rhyton 1:1\" src=\"https://giaygiare.vn/upload/images/giay-gucci-rhyton-1-1-8.jpg\" style=\"height:1954px; width:2560px\" /><img alt=\"Giày Gucci Rhyton 1:1\" src=\"https://giaygiare.vn/upload/images/giay-gucci-rhyton-1-1-5.jpg\" style=\"height:960px; width:1280px\" /><img alt=\"Giày Gucci Rhyton 1:1\" src=\"https://giaygiare.vn/upload/images/giay-gucci-rhyton-1-1-9.jpg\" style=\"height:1922px; width:2560px\" /></p>', NULL, NULL, 0, 0, '2020-06-11 21:37:48', '2020-06-12 02:40:36'),
(59, 'Giày lười công sở SDrolun màu đen mới nhất', 'giay-luoi-cong-so-sdrolun-mau-den-moi-nhat', 'uploads/product/1591955841_giay-luoi-cong-so-sdrolun-mau-den-moi-nhat-ma-gl21817d-giaynam (1).png', 8, 1300000, 1250000, 30, 1, 1, 0, 27, 'gucci.com', 'GL21817D', 9, 2, 'Giày lười công sở SDrolun màu đen mới nhất mã GL21817D vừa cập bến giaynam.com nổi bật với họa tiết đường gân sóng chính giữa trung tâm.', '<p>Gi&agrave;y lười c&ocirc;ng sở SDrolun m&agrave;u đen mới nhất m&atilde; GL21817D vừa cập bến giaynam.com nổi bật với họa tiết đường g&acirc;n s&oacute;ng ch&iacute;nh giữa trung t&acirc;m. Được l&agrave;m tr&ecirc;n chất liệu da b&ograve; mềm, lớp l&oacute;t đệm &ecirc;m, đế cao su đ&uacute;c bền, kiểu d&aacute;ng văn ph&ograve;ng thanh lịch dễ d&agrave;ng kết hợp với c&aacute;c trang phục : quần &acirc;u/t&acirc;y, kaki, &aacute;o sơ mi, vest...#kien</p>', NULL, NULL, 0, 0, '2020-06-12 02:57:21', '2020-06-12 02:57:21'),
(61, 'Giày Sneaker Gucci Men\'s Ace Leather Màu Đen Cho Nam', 'giay-sneaker-gucci-mens-ace-leather-mau-den-cho-nam', 'uploads/product/1591956848_giay-sneaker-gucci-men-s-ace-leather-mau-den-5e06c5f67bba6-28122019100318.jpg', 8, 11000000, 9800000, 31, 1, 1, 0, 27, 'gucci.com', 'h018997', 9, 2, 'THÔNG TIN CHUNG\r\nKIỂU DÁNG: Giày thể thao\r\nGIỚI TÍNH: Nam\r\nMÀU SẮC: Đen\r\nCHẤT LIỆU: Da cao cấp\r\nPHONG CÁCH: Hiện đại, trẻ trung\r\nXUẤT XỨ: Ý\r\nMẶT HÀNG: Có sẵn', '<p><a href=\"https://vuahanghieu.com/giay/sneakers\">Gi&agrave;y Sneaker</a>&nbsp;Gucci Men&#39;s Ace Leather M&agrave;u Đen c&oacute; thiết kế hiện đại, năng động, trẻ trung dễ kết hợp với nhiều trang phục kh&aacute;c nhau.</p>\r\n\r\n<p><img src=\"https://cdn.vuahanghieu.com/unsafe/0x0/left/top/smart/filters:quality(90):format(jpeg)/https://admin.vuahanghieu.com/upload/news/content/2020/02/giay-sneaker-gucci-men-s-ace-leather-mau-den-1-jpg-1581941308-17022020190828.jpg\" /></p>\r\n\r\n<p>Gi&agrave;y được l&agrave;m từ&nbsp;<a href=\"https://vuahanghieu.com/giay/da-cao-cap\">chất liệu da cao cấp</a>, &ecirc;m &aacute;i, thoải m&aacute;i cho đ&ocirc;i ch&acirc;n khi di chuyển. Sản phẩm bền đẹp thời gian sử dụng l&acirc;u d&agrave;i.</p>\r\n\r\n<p>Thương hiệu thời trang Gucci được c&aacute;c chuy&ecirc;n gia thời trang đ&aacute;nh gi&aacute; l&agrave; thương hiệu kh&ocirc;ng chỉ kế thừa v&agrave; t&ocirc;n vinh ng&agrave;nh nghề thủ c&ocirc;ng truyền thống của &Yacute; m&agrave; c&ograve;n kh&ocirc;ng ngừng đổi mới trong những sản phẩm của m&igrave;nh. Từ đ&oacute; đưa t&ecirc;n tuổi của Gucci trở th&agrave;nh một trong những thương hiệu cao cấp v&agrave; c&oacute; gi&aacute; trị nhất tr&ecirc;n thế giới.</p>\r\n\r\n<p>Trong thời gian gần đ&acirc;y, thương hiệu n&agrave;y c&ograve;n cho ra mắt rất nhiều phi&ecirc;n bản&nbsp;<a href=\"https://vuahanghieu.com/gucci/giay\">Gi&agrave;y Gucci</a>&nbsp;trắng mới nhất 2019. Những si&ecirc;u phẩm n&agrave;y đ&atilde; l&agrave;m &ldquo;đi&ecirc;n đảo&rdquo; những t&iacute;n đồ thời trang n&oacute;i chung v&agrave; những người y&ecirc;u th&iacute;ch Sneaker n&oacute;i ri&ecirc;ng.</p>\r\n\r\n<p><img src=\"https://cdn.vuahanghieu.com/unsafe/0x0/left/top/smart/filters:quality(90):format(jpeg)/https://admin.vuahanghieu.com/upload/news/content/2020/02/giay-sneaker-gucci-men-s-ace-leather-mau-den-2-jpg-1581941318-17022020190838.jpg\" /></p>', NULL, NULL, 0, 0, '2020-06-12 03:14:08', '2020-06-12 03:14:08'),
(62, 'Giày Sneaker Gucci Men\'s Ace Embroidered', 'giay-sneaker-gucci-mens-ace-embroidered', 'uploads/product/1591957084_giay-gucci-men-s-ace-embroidered-sneaker-mau-trang-5e1c19bdeb9b4-13012020141821.jpg', 7, 14800000, 14100000, 32, 1, 1, 0, 27, 'gucci.com', 'h019524', 9, 2, 'THÔNG TIN CHUNG\r\nKIỂU DÁNG: Sneakers\r\nGIỚI TÍNH: Unisex\r\nMÀU SẮC: Trắng\r\nCHẤT LIỆU: Da cao cấp\r\nPHONG CÁCH: Hiện đại, trẻ trung\r\nXUẤT XỨ: Ý', '<p>Gi&agrave;y Sneaker &nbsp;Gucci Men&#39;s Ace Embroidered M&agrave;u Trắng &ndash; Thiết kế trẻ trung, năng động, dễ kết hợp với nhiều trang phục kh&aacute;c nhau để thay đổi phong c&aacute;ch.<br />\r\nGi&agrave;y được l&agrave;m từ&nbsp;<a href=\"https://vuahanghieu.com/giay/da-cao-cap\">chất liệu da cao cấp</a>, &ecirc;m &aacute;i, thoải m&aacute;i cho đ&ocirc;i ch&acirc;n khi di chuyển. Họa tiết ong v&agrave; ng&ocirc;i sao th&ecirc;u bằng chỉ v&agrave;ng nổi bật. Sản phẩm bền đẹp thời gian sử dụng l&acirc;u d&agrave;i. Đế cao su mềm nhẹ, xẻ r&atilde;nh chống trơn trượt an to&agrave;n.</p>\r\n\r\n<p>Thương hiệu thời trang Gucci được c&aacute;c chuy&ecirc;n gia thời trang đ&aacute;nh gi&aacute; l&agrave; thương hiệu kh&ocirc;ng chỉ kế thừa v&agrave; t&ocirc;n vinh ng&agrave;nh nghề thủ c&ocirc;ng truyền thống của &Yacute; m&agrave; c&ograve;n kh&ocirc;ng ngừng đổi mới trong những sản phẩm của m&igrave;nh. Từ đ&oacute; đưa t&ecirc;n tuổi của Gucci trở th&agrave;nh một trong những thương hiệu cao cấp v&agrave; c&oacute; gi&aacute; trị nhất tr&ecirc;n thế giới.</p>', NULL, NULL, 0, 0, '2020-06-12 03:18:04', '2020-06-12 03:18:27'),
(63, 'Giày Gucci Men\'s Ace Gucci Stripe Sneaker Màu Đen', 'giay-gucci-mens-ace-gucci-stripe-sneaker-mau-den', 'uploads/product/1591957290_giay-gucci-baskets-en-cuir-avec-bande-mau-den-5e043e5f2f9aa-26122019120015.jpg', 11, 11970000, 11400000, 1, 1, 1, 0, 27, 'gucci.com', 'h018964', 9, 2, 'THÔNG TIN CHUNG\r\nKIỂU DÁNG: Giày thể thao\r\nGIỚI TÍNH: Nam\r\nMÀU SẮC: Đen\r\nCHẤT LIỆU: Da cao cấp\r\nXUẤT XỨ: Ý', '<p>Gi&agrave;y Gucci Men&#39;s Ace Gucci Stripe Sneaker M&agrave;u Đen được lấy cảm hứng từ c&aacute;c logo ruy băng t&ocirc; điểm cho c&aacute;c mặt của đ&ocirc;i gi&agrave;y cổ điển từ những năm 80.&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Da cao cấp</li>\r\n	<li>Sự kết hợp của m&agrave;u đỏ v&agrave; đen</li>\r\n	<li>Chi tiết da đỏ &aacute;nh kim ở mặt sau</li>\r\n	<li>Đế cao su</li>\r\n	<li>Chiều cao 5mm</li>\r\n	<li>Sản xuất tại &Yacute;</li>\r\n</ul>', NULL, NULL, 0, 0, '2020-06-12 03:21:30', '2020-06-12 03:21:30'),
(64, 'Giày Gucci Unisex Ace GG Supreme Sneaker With Bees', 'giay-gucci-unisex-ace-gg-supreme-sneaker-with-bees', 'uploads/product/1591957482_giay-gucci-women-s-ace-gg-supreme-sneaker-with-bees-5e057d119f154-27122019104001.jpg', 8, 14100000, 13490000, 33, 1, 1, 0, 27, 'gucci.com', 'h018989', 9, 2, 'THÔNG TIN CHUNG\r\nKIỂU DÁNG: Sneakers\r\nGIỚI TÍNH: Unisex\r\nMÀU SẮC: Xanh phối đỏ\r\nCHẤT LIỆU: Da + Vải cao cấp\r\nPHONG CÁCH: Hiện đại, năng động, trẻ trung\r\nXUẤT XỨ: Ý', '<p><a href=\"https://vuahanghieu.com/gucci/giay\">Gi&agrave;y Gucci</a>&nbsp;Unisex Ace GG Supreme Sneaker With Bees - Thiết kế hiện đại với phong c&aacute;ch trẻ trung, năng động. Với t&ocirc;ng m&agrave;u xanh, đỏ nổi bật l&agrave;m điểm nhấn.<br />\r\nGi&agrave;y được l&agrave;m từ chất liệu Da + vải cao cấp bền đẹp, thời gian sử dụng l&acirc;u d&agrave;i.</p>', NULL, NULL, 0, 0, '2020-06-12 03:24:42', '2020-06-12 03:24:42'),
(65, 'Dép Cao Gót Da Thật Nữ Gosto Fairy Tale GFW013000HOG (Hồng)', 'dep-cao-got-da-that-nu-gosto-fairy-tale-gfw013000hog-hong', 'uploads/product/1591957818_gfw013000hog__5__4c73810d412b4f3eb1ed06a3605f8540_1024x1024.webp', 8, 900000, 829000, 1, 1, 1, 0, 25, 'bitis.vn', 'GFW013000HOG35', 10, 5, 'Chưa có tóm tắt', '<p>Chưa c&oacute; m&ocirc; tả cho sản phẩm n&agrave;y</p>', NULL, NULL, 0, 0, '2020-06-12 03:30:18', '2020-06-12 03:31:02'),
(66, 'Giày Cao Gót Da Thật Nữ Gosto Everyday GFW009488DEN (Đen)', 'giay-cao-got-da-that-nu-gosto-everyday-gfw009488den-den', 'uploads/product/1591958006_gfw009488den__3__0bd31a4c10bd4abab68f2d9a59cd0c36_1024x1024.jpg', 6, 899000, 849000, 2, 1, 1, 0, 25, 'bitis.vn', 'GFW009488DEN35', 10, 5, 'Chưa có tóm tắt', '<p>Chưa c&oacute; m&ocirc; tả cho sản phẩm n&agrave;y</p>', NULL, NULL, 0, 0, '2020-06-12 03:33:26', '2020-06-12 03:33:26'),
(67, 'Giày Cao Gót Da Thật Nữ Gosto Work Chic GFW007988DEN (Đen)', 'giay-cao-got-da-that-nu-gosto-work-chic-gfw007988den-den', 'uploads/product/1591958168_gfw007988den__3__cce23307d9cc45d8ba6be2b02a788496_1024x1024.jpg', 5, 899000, 849000, 3, 1, 1, 0, 25, 'bitis.vn', 'GFW007988DEN35', 10, 5, '- Chiều cao: 7cm\r\n- Chất liệu quai: Da thật\r\n- Chất liệu đế: Nhựa', '<p>Chưa c&oacute; m&ocirc; tả</p>', NULL, NULL, 0, 0, '2020-06-12 03:36:08', '2020-06-12 03:36:08'),
(68, 'Giày Cao Gót Da Thật Nữ Gosto Welcome Back Spring GFW011388DEN (Đen)', 'giay-cao-got-da-that-nu-gosto-welcome-back-spring-gfw011388den-den', 'uploads/product/1591958310_gfw011388den__5__05387d5520d44cb4a7b8e990b886a772_1024x1024.jpg', 8, 1200000, 1099000, 4, 1, 1, 0, 25, 'bitis.vn', 'GFW011388DEN40', 10, 5, 'Chưa có tóm tắt cho sản phẩm này', '<p>Chưa c&oacute; m&ocirc; tả cho sản phẩm n&agrave;y</p>', NULL, NULL, 0, 0, '2020-06-12 03:38:30', '2020-06-12 03:38:30'),
(69, 'Giày Cao Gót Da Thật Nữ Gosto High Knit 1.0 GFW007688XNG (Xanh Ngọc)', 'giay-cao-got-da-that-nu-gosto-high-knit-10-gfw007688xng-xanh-ngoc', 'uploads/product/1591958426_gfw007688xng__3__d6f0e459c62e41fd9a3d0fdd44bbf5a2_1024x1024.jpg', 9, 849000, 599000, 5, 1, 1, 0, 25, 'bitis.vn', 'GFW007688XNG36', 10, 5, '- Chiều cao: 7cm\r\n- Chất liệu quai: Da thật\r\n- Chất liệu đế: Nhựa', '<p>Chưa c&oacute; m&ocirc; tả</p>', NULL, NULL, 0, 0, '2020-06-12 03:40:26', '2020-06-12 03:40:26'),
(70, 'Giày Cao Gót Da Thật Nữ New Audrey GFW012988KEM (Kem)', 'giay-cao-got-da-that-nu-new-audrey-gfw012988kem-kem', 'uploads/product/1591958548_gfw012988kem__5__8c6b34d972fd436983b6eba9a946de19_1024x1024.webp', 11, 899000, 849000, 7, 1, 1, 0, 25, 'bitis.vn', 'GFW012988KEM35', 10, 5, 'Chưa có tóm tắt cho sản phẩm này', '<p>Chưa c&oacute; m&ocirc; tả cho sản phẩm n&agrave;y</p>', NULL, NULL, 0, 0, '2020-06-12 03:42:28', '2020-06-12 03:42:28'),
(71, 'ADIDAS YEEZY 350 V2 EARTH (NÂU ĐẤT) NAM 1:1', 'adidas-yeezy-350-v2-earth-nau-dat-nam-11', 'uploads/product/1591958746_adidas-yeezy-350-v2-earth-nau-dat-nam-nu-1-1.jpg', 12, 1200000, 1100000, 1, 1, 1, 0, 23, 'adidas.com', 'YZ64', 7, 6, 'Chưa có tóm tắt', '<h3>ADIDAS YEEZY 350 V2 EARTH (N&Acirc;U ĐẤT) NAM NỮ 1:1</h3>\r\n\r\n<p><img alt=\"Adidas Yeezy 350 V2 Earth (Nâu Đất) Nam Nữ 1:1\" src=\"https://giaygiare.vn/upload/images/adidas-yeezy-350-v2-earth-nau-dat-nam-nu-1-1.jpg\" style=\"height:1260px; width:1260px\" /><img alt=\"Adidas Yeezy 350 V2 Earth (Nâu Đất) Nam Nữ 1:1\" src=\"https://giaygiare.vn/upload/images/adidas-yeezy-350-v2-earth-nau-dat-nam-nu-1-1-1.jpg\" style=\"height:1260px; width:1260px\" /><img alt=\"Adidas Yeezy 350 V2 Earth (Nâu Đất) Nam Nữ 1:1\" src=\"https://giaygiare.vn/upload/images/adidas-yeezy-350-v2-earth-nau-dat-nam-nu-1-1-2.jpg\" style=\"height:1260px; width:1260px\" /><img alt=\"Adidas Yeezy 350 V2 Earth (Nâu Đất) Nam Nữ 1:1\" src=\"https://giaygiare.vn/upload/images/adidas-yeezy-350-v2-earth-nau-dat-nam-nu-1-1-3.jpg\" style=\"height:1260px; width:1260px\" /><img alt=\"Adidas Yeezy 350 V2 Earth (Nâu Đất) Nam Nữ 1:1\" src=\"https://giaygiare.vn/upload/images/adidas-yeezy-350-v2-earth-nau-dat-nam-nu-1-1-4.jpg\" style=\"height:1260px; width:1260px\" /><img alt=\"Adidas Yeezy 350 V2 Earth (Nâu Đất) Nam Nữ 1:1\" src=\"https://giaygiare.vn/upload/images/adidas-yeezy-350-v2-earth-nau-dat-nam-nu-1-1-5.jpg\" style=\"height:1260px; width:1260px\" /><img alt=\"Adidas Yeezy 350 V2 Earth (Nâu Đất) Nam Nữ 1:1\" src=\"https://giaygiare.vn/upload/images/adidas-yeezy-350-v2-earth-nau-dat-nam-nu-1-1-6.jpg\" style=\"height:905px; width:1242px\" /><img alt=\"Adidas Yeezy 350 V2 Earth (Nâu Đất) Nam Nữ 1:1\" src=\"https://giaygiare.vn/upload/images/adidas-yeezy-350-v2-earth-nau-dat-nam-nu-1-1-7.jpg\" style=\"height:862px; width:1242px\" /></p>', NULL, NULL, 0, 0, '2020-06-12 03:45:46', '2020-06-27 02:20:03'),
(72, 'Dép Xốp Bé Trai Biti\'s Spiderman DXB125411DOO (Đỏ)*', 'dep-xop-be-trai-bitis-spiderman-dxb125411doo-do', 'uploads/product/1591958933_dxb125411doo__3__530fb7e6f1dd4cdd9959c8b34466bb41_1024x1024.webp', 20, 200000, 179000, 4, 1, 1, 0, 29, 'bitis.vn', 'DXB125411DOO28', 4, 5, 'Chưa có tóm tắt cho sản phẩm này', '<p>Chưa c&oacute; m&ocirc; tả cho sản phẩm n&agrave;y</p>', NULL, NULL, 0, 0, '2020-06-12 03:48:53', '2020-06-12 03:48:53'),
(73, 'Dép Xốp Bé Trai Biti\'s Batman DXB125799DEN (Đen)*', 'dep-xop-be-trai-bitis-batman-dxb125799den-den', 'uploads/product/1591959037_dxb125799den__2__434ce4f56c8942668e69cdcd7d521ef7_1024x1024.webp', 9, 200000, 175000, 5, 1, 1, 0, 29, 'bitis.vn', 'DXB125799DEN28', 4, 5, 'Chưa có tóm tắt', '<p>Chưa c&oacute; m&ocirc; tả</p>', NULL, NULL, 0, 0, '2020-06-12 03:50:37', '2020-06-30 02:38:48'),
(74, 'Dép Xốp Bé Trai Biti\'s Doraemon DXB125622CAM (Cam)*', 'dep-xop-be-trai-bitis-doraemon-dxb125622cam-cam', 'uploads/product/1591959169_dxb125622cam__5__269f68e84d2c4385a33cc562ad33f6b9_1024x1024.jpg', 13, 150000, 125000, 7, 1, 1, 0, 29, 'bitis.vn', 'DXB125622CAM24', 4, 5, 'Chưa có tóm tắt', '<p>Chưa c&oacute; m&ocirc; tả</p>', NULL, NULL, 0, 0, '2020-06-12 03:52:49', '2020-06-30 02:35:46'),
(75, 'Dép Xốp Bé Gái Biti\'s Doraemon DXG001322DOO (Đỏ)*', 'dep-xop-be-gai-bitis-doraemon-dxg001322doo-do', 'uploads/product/1591959316_dxg001322doo__5__6246bfae1f0f4c17a6a6b49a7b1c69f9_1024x1024.webp', 18, 150000, 135000, 1, 1, 1, 0, 33, 'bitis.vn', 'DXG001322DOO28', 4, 5, 'Chưa có tóm tắt cho sản phẩm này', '<p>Chưa c&oacute; m&ocirc; tả cho sản phẩm n&agrave;y</p>', NULL, NULL, 0, 0, '2020-06-12 03:55:16', '2020-06-30 02:36:18'),
(76, 'Dép Lào Bé Gái Biti\'s SLG010400HOG (Hồng)*', 'dep-lao-be-gai-bitis-slg010400hog-hong', 'uploads/product/1591959631_slg010400hog__5__e702a47fec854c6fafc59826d0ad15ea_1024x1024.jpg', 20, 70000, 57000, 1, 1, 1, 0, 33, 'bitis.vn', 'SLG010400HOG29', 4, 5, 'Chưa có tóm tắt', '<p>M&ocirc; tả</p>', NULL, NULL, 0, 0, '2020-06-12 04:00:31', '2020-06-12 04:00:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `company` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `image2` varchar(100) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `hotline` varchar(255) DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `introduce` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `company`, `address`, `address2`, `image`, `image2`, `phone`, `hotline`, `tax`, `facebook`, `email`, `introduce`) VALUES
(1, 'Công Tỷ Cổ Phần 3 Thành Viên', '296 Lĩnh Nam, Quận Hoàng Mai, TP Hà Nội', 'Hà nội', 'uploads/setting/1592413680_logo-2.png', 'uploads/setting/1593342953_logo.png', '0327874432', '0327874432', '1212', 'https://www.facebook.com/', 'pullman@gmail.com', 'aaaaaaaaa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 0,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role_id`, `avatar`, `is_active`, `position`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Nam Lưu', 'AkiraNam17999@gmail.com', '$2y$10$alBI3DYt5Tq0oxaPg9.xreLi67A4rGMWXoMR.KsfZrxESK16Uh09W', 1, 'uploads/user/1592330472_1.png', 1, 0, NULL, '2020-06-10 01:54:01', '2020-06-16 11:01:12'),
(4, 'Nam Đẹp Trai', 'AkiraNam1999@gmail.com', '$2y$10$3T65HYvmQOjvQMb1v7QXHeyGnkFjF0PE5F0RDWHr0LVFTmMqX6iwC', 1, 'uploads/user/1592330686_avatar_2.jpg', 1, 0, '7vmEms2KyFXDDqFbCtOUnATCKaFb82qu6x71r4ToUhuzFldSeQWRIcUv0qTT', '2020-06-10 01:59:43', '2020-06-16 11:04:46'),
(6, 'Nam Lưu', 'AkiraNam2000@gmail.com', '$2y$10$p26VMorNduDKzeju6u98y.WDPKr124lPXkIREUOa/m9ChGa0s6MGm', 1, NULL, 1, 0, NULL, '2020-06-11 01:44:36', '2020-06-11 01:44:36'),
(7, 'Minh Hiển', 'hiendeptrai123@gmail.com', '$2y$10$A5aOdZAzEjzlQABtQq1C2OXCJvZK/c9ZzcHl60nZyTSpHb0GNns12', 1, NULL, 1, 0, NULL, '2020-06-11 02:27:10', '2020-06-11 02:27:10'),
(9, 'Thế Cao', 'nguyenthecao99@gmail.com', '$2y$10$XqFDxM/9eWbTDVlVFErkG.9QfCLP7iB4bQsWu1NiBN2kD4zb4YPE.', 1, NULL, 1, 0, NULL, '2020-06-11 08:03:48', '2020-06-11 08:03:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vendors`
--

CREATE TABLE `vendors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_active` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vendors`
--

INSERT INTO `vendors` (`id`, `name`, `slug`, `email`, `phone`, `image`, `website`, `address`, `position`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 'Minh Hiển', 'minh-hien', 'hiendeptrai2409@gmail.com', '0869588581', 'uploads/category/1591529765_65166870_315962699287405_6234691942689538048_o.jpg', 'hien.com', 'aaa', 1, 1, '2020-06-07 04:36:05', '2020-06-11 08:00:46'),
(5, 'Thế Cao', 'the-cao', 'thecao@gmail.com', '0976597870', 'uploads/category/1591887553_3f7b7b69ae55480b1144.jpg', 'cao.com', 'Đông Anh', 2, 1, '2020-06-11 07:59:13', '2020-06-11 08:02:59'),
(6, 'Nam Lưu', 'nam-luu', 'akiranam1999@gmail.com', '0123456789', 'uploads/category/1591887717_84456775_10157194963574635_6939476460847497216_o.jpg', 'nam.com', 'Bắc Ninh', 3, 1, '2020-06-11 08:01:57', '2020-06-11 08:02:36');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `banners_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contact_status`
--
ALTER TABLE `contact_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `image_uploads`
--
ALTER TABLE `image_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `multis`
--
ALTER TABLE `multis`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_slug_index` (`slug`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vendors_slug_unique` (`slug`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `contact_status`
--
ALTER TABLE `contact_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `image_uploads`
--
ALTER TABLE `image_uploads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `multis`
--
ALTER TABLE `multis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
