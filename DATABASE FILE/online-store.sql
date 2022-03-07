-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 05, 2022 lúc 10:43 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `online-store`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `about_us`
--

CREATE TABLE `about_us` (
  `about_id` int(10) NOT NULL,
  `about_heading` text NOT NULL,
  `about_short_desc` text NOT NULL,
  `about_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `about_us`
--

INSERT INTO `about_us` (`about_id`, `about_heading`, `about_short_desc`, `about_desc`) VALUES
(1, 'About Us - Our Story', '<p style=\"text-align:justify\"><strong>Multiple different ideas and motivational factors lead to the birth of Our Story that I’d like to share with you below.</strong> </p>', '<p style=\"text-align:justify\">Multiple different ideas and motivational factors lead to the birth of Our Story that I’d like to share with you below.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>A special gift to your Special One</strong></p>\r\n\r\n<p style=\"text-align:justify\">It is always challenging to choose a present for my girlfriend because I’d prefer not to go for the most mundane and stereotypical gifts and ideas.</p>\r\n\r\n<p style=\"text-align:justify\">Perfume, flowers, jewellery, a fancy dinner, Facebook status updates and Instagram posts…I wanted to distance myself from these options and I am pretty sure I’m not the only one who would like to do so.</p>\r\n\r\n<p style=\"text-align:justify\">Our Story is a great alternative for this “challenge” you can tell your significant other in great details how much you love them and why you love spending your time with them.</p>\r\n\r\n<p style=\"text-align:justify\">I bet you always say the same ten things to them and even worse, you might not even remember the last time you gave them a compliment! :)</p>\r\n\r\n<p style=\"text-align:justify\">The ideas of Our Story will help you to highlight the things you appreciate about them but have never verbalised or just didn’t now how to say out loud.</p>\r\n\r\n<p style=\"text-align:justify\">The best part is that this book will not only be a great gift for the receiver, it is also a present for yourself: when you are done with editing it, you will be even more grateful for the time spent with your beloved one.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Let’s talk about feelings!</strong></p>\r\n\r\n<p style=\"text-align:justify\">It’s a cliché but it’s true in today’s rushing world we tend not to pay enough attention to our feelings, we do not express them as much as we should and we also take our beloved ones for granted.</p>\r\n\r\n<p style=\"text-align:justify\">Our Story provides an opportunity to escape mundane reality, stop for a moment and appreciate our Significant Other and beloved ones. When you are reading a book, we escape reality when you are editing the book about your own life, this is especially true.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Make a special and one of a kind gift</strong></p>\r\n\r\n<p style=\"text-align:justify\">Every person is unique and one of a kind, just like their stories. Each and every Our Story book is special, there are no identical ones since it is about the two of you, it is your Own Story</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Gift them with your time</strong></p>\r\n\r\n<p style=\"text-align:justify\">Our Story is not a fast, easy solution that you can get done in a few minutes. Dedicate your time to prepare this book and this way you are gifting your beloved ones with your time. Edit as many pages as possible, personalise them so the result can be unique and can really be Your Story!</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Our Story quality</strong></p>\r\n\r\n<p style=\"text-align:justify\">We are using professional devices to prepare the books so you don’t have to worry about the quality.</p>\r\n\r\n<p style=\"text-align:justify\">The orders are delivered by one of the leading delivery companies in Hungary (GLS) who will make sure that your book gets to you alright. </p>\r\n\r\n<p style=\"text-align:justify\">We’ve been working very hard to make Our Story happen: use it and love it as much as we loved preparing it for you!</p>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_country` text NOT NULL,
  `admin_job` varchar(255) NOT NULL,
  `admin_about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_contact`, `admin_country`, `admin_job`, `admin_about`) VALUES
(2, 'Administrator', 'admin@gmail.com', 'admin', 'origin image.jpg', '09123456789', 'viet nam', 'cyber security', '   tryhard with Group Project ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bundle_product_relation`
--

CREATE TABLE `bundle_product_relation` (
  `rel_id` int(10) NOT NULL,
  `rel_title` varchar(255) NOT NULL,
  `product_id` int(10) NOT NULL,
  `bundle_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bundle_product_relation`
--

INSERT INTO `bundle_product_relation` (`rel_id`, `rel_title`, `product_id`, `bundle_id`) VALUES
(3, 'mix', 17, 20),
(4, 'mix', 25, 20),
(5, 'mix', 26, 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`p_id`, `ip_add`, `qty`, `p_price`, `size`) VALUES
(27, '::1', 2, '300000', 'M');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_top` text NOT NULL,
  `cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
(2, 'Femen', 'no', 'feminelg.png'),
(3, 'Kids', 'no', 'kidslg.jpg'),
(4, 'Others', 'no', 'othericon.png'),
(5, 'Men', 'no', 'malelg.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact_us`
--

CREATE TABLE `contact_us` (
  `contact_id` int(10) NOT NULL,
  `contact_email` text NOT NULL,
  `contact_heading` text NOT NULL,
  `contact_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `contact_us`
--

INSERT INTO `contact_us` (`contact_id`, `contact_email`, `contact_heading`, `contact_desc`) VALUES
(1, 'onlineshop@mail.com', 'Contact To Us', '<p><span style=\"font-size: small;\"><strong>If you have any questions, please feel free to contact us, our customer service center is working for you 24/7.</strong></span></p>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `coupon_title` varchar(255) NOT NULL,
  `coupon_price` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_limit` int(100) NOT NULL,
  `coupon_used` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `coupons`
--

INSERT INTO `coupons` (`coupon_id`, `product_id`, `coupon_title`, `coupon_price`, `coupon_code`, `coupon_limit`, `coupon_used`) VALUES
(7, 25, 'hoodie', '400000', 'HOO ', 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(255) NOT NULL,
  `customer_confirm_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`, `customer_confirm_code`) VALUES
(8, 'phuc', 'phuc@gmail.com', 'Phuc123@', 'Viet Nam', 'Ha Noi', '0123456789', 'kfjsakljdkfjaskldfjklsadf', '1056813.png', '127.0.0.1', '1058545171'),
(9, 'test', 'test', 'tset', 'sttes', 'sett', 'setet', 'steet', 'anh-anime-girl.jpg', '::1', '1938227283');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(38, 8, 680000, 287064577, 4, 'L', '2022-02-20 05:31:09', 'Complete'),
(39, 8, 600000, 287064577, 6, 'XL', '2022-02-20 05:30:26', 'pending');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `enquiry_types`
--

CREATE TABLE `enquiry_types` (
  `enquiry_id` int(10) NOT NULL,
  `enquiry_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `enquiry_types`
--

INSERT INTO `enquiry_types` (`enquiry_id`, `enquiry_title`) VALUES
(1, 'Order and Delivery Support'),
(2, 'Technical Support'),
(3, 'Price Concern');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturer_id` int(10) NOT NULL,
  `manufacturer_title` text NOT NULL,
  `manufacturer_top` text NOT NULL,
  `manufacturer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
(9, 'Nem', 'no', 'nem.png'),
(10, 'Juno', 'no', 'juno.png'),
(11, 'K&K', 'no', 'kk.png'),
(12, 'Blue Exchange', 'no', 'blue.png'),
(13, 'Owen', 'yes', 'owen.jpg'),
(14, 'Pierre Cardin', 'yes', 'an phuoc.jpg'),
(16, 'Veneto', 'yes', 'veneto.png'),
(17, 'Top4man', 'yes', 'Top4man.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(28, 287064577, 680000, 'MoMo', 2147483647, 2147483647, '2022-02-20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(38, 8, 287064577, '18', 4, 'L', 'Complete'),
(39, 8, 287064577, '25', 6, 'XL', 'pending');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_url` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_psp_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_features` text NOT NULL,
  `product_video` text NOT NULL,
  `product_keywords` text NOT NULL,
  `product_label` text NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_psp_price`, `product_desc`, `product_features`, `product_video`, `product_keywords`, `product_label`, `status`) VALUES
(17, 10, 5, 13, '2022-02-19 21:03:28', 'hoodie', 'hoodie', 'hoodie 1.png', 'hoodie 2.png', 'hoodie 3.png', 300000, 250000, '<p>PRODUCT INFORMATION:<br /><br />&nbsp;&nbsp;&nbsp;&nbsp; Material: Cotton Felt<br />&nbsp;&nbsp;&nbsp;&nbsp; Color: Black<br />&nbsp;&nbsp;&nbsp;&nbsp; Size: M / L / XL / 2XL / 3XL<br />&nbsp;&nbsp;&nbsp;&nbsp; Form: Loose Shirt<br />&nbsp;&nbsp;&nbsp;&nbsp; Origin: Made in Vietnam</p>', '<p>&bull; HIGHLIGHTS:<br /><br />&nbsp;&nbsp;&nbsp;&nbsp; Hoodie is designed with long sleeves, hat and front pocket to help you show your active and healthy style.<br />&nbsp;&nbsp;&nbsp;&nbsp; Felt material is soft, smooth and stretchy.<br />&nbsp;&nbsp;&nbsp;&nbsp; Wide form, easy to wear, size suitable for both men and women.<br />&nbsp;&nbsp;&nbsp;&nbsp; Easy to mix with jeans, shorts, or as a shirt to keep warm on cold days.<br />&nbsp;&nbsp;&nbsp;&nbsp; Just combined with a stylish hoodie, your outfit will become more impressive than ever.</p>\r\n\r\n', '\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Cn2oMNvxvfM\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\r\n', 'hoodie', 'Hot', 'product'),
(18, 17, 5, 14, '2022-02-19 21:12:57', 'ao thun', 'ao-thun', 'thun1.png', 'thun2.png', 'thun3.png', 200000, 170000, '\r\n<p>PRODUCT INFORMATION:<br /><br />&nbsp;&nbsp;&nbsp;&nbsp; Material: Cotton Elastic<br />&nbsp;&nbsp;&nbsp;&nbsp; Color: Black, White, Gray<br />&nbsp;&nbsp;&nbsp;&nbsp; Size: S / M / L / XL / 2XL / 3XL<br />&nbsp;&nbsp;&nbsp;&nbsp; Form: Moderately wide shirt<br />&nbsp;&nbsp;&nbsp;&nbsp; Origin: Made in Vietnam</p>\r\n', '\r\n\r\n• PRODUCT INFORMATION:\r\n\r\n     Material: Cotton Elastic\r\n     Color: Black, White, Gray\r\n     Size: S / M / L / XL / 2XL / 3XL\r\n     Form: Moderately wide shirt\r\n     Origin: Made in Vietnam\r\n\r\n• HIGHLIGHTS:\r\n\r\n     4-way stretch cotton fabric, smooth and cool, not ruffled, extremely absorbent, feels cool and comfortable\r\n     Simple style, suitable for almost all items, all genders.\r\n     Fancy flap design, avoid boring feeling.', '\r\n\r\n<iframe width=\"900\" height=\"480\" src=\"https://www.youtube.com/embed/MnBjhG8WXyw\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'ao thun', 'Sale', 'product'),
(19, 13, 5, 16, '2022-02-19 21:17:43', 'Khaki . Shirt Jacket', 'Shirt-Jacket', 'ao1.png', 'ao2.png', 'ao3.png', 270000, 240000, '\r\n\r\n<p>PRODUCT INFORMATION:<br /><br />&nbsp;&nbsp;&nbsp;&nbsp; Material: Khaki<br />&nbsp;&nbsp;&nbsp;&nbsp; Color: Black, Moss<br />&nbsp;&nbsp;&nbsp;&nbsp; Size: M / L / XL / 2XL / 3XL / 4XL / 5XL<br />&nbsp;&nbsp;&nbsp;&nbsp; Form: Fit shirt<br />&nbsp;&nbsp;&nbsp;&nbsp; Origin: Made in Vietnam</p>', '<p>&bull; PRODUCT INFORMATION:<br /><br />&nbsp;&nbsp;&nbsp;&nbsp; Material: Khaki<br />&nbsp;&nbsp;&nbsp;&nbsp; Color: Black, Moss<br />&nbsp;&nbsp;&nbsp;&nbsp; Size: M / L / XL / 2XL / 3XL / 4XL / 5XL<br />&nbsp;&nbsp;&nbsp;&nbsp; Form: Fit shirt<br />&nbsp;&nbsp;&nbsp;&nbsp; Origin: Made in Vietnam<br /><br />&bull; HIGHLIGHTS:<br /><br />&nbsp;&nbsp;&nbsp;&nbsp; Excellent quality khaki, soft and smooth, delicate shape, trendy colors, extremely luxurious.<br />&nbsp;&nbsp;&nbsp;&nbsp; You can mix and match all kinds, from combining with Jogger pants, jeans, western pants to khaki pants, ... or transform into a personalized jacket.<br />&nbsp;&nbsp;&nbsp;&nbsp; Simple design in modern style, is an item that everyone should have in their wardrobe.<br />&nbsp;&nbsp;&nbsp;&nbsp; For those who like Classic style (both classic and sophisticated) but easy to coordinate.<br /><br />*** The shirt form hugs the arms and biceps, so please note when choosing the Size.</p>\r\n\r\n', '<iframe width=\"900\" height=\"400\" src=\"https://www.youtube.com/embed/c-Dctim6yLM\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\r\n\r\n', 'shirt', 'Sale', 'product'),
(20, 14, 5, 13, '2022-02-20 08:14:48', '3 hoodie', 'hoodie-mix', 'ao4.jpg', 'hoodie 1.png', 'hoodie1.jpg', 1200000, 1000000, '\r\nhoodie mix\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', 'jacket', 'Sale', 'bundle'),
(21, 19, 5, 13, '2022-02-20 04:20:00', 'Jeans Basic Slim ', 'Jeans-Basic-Slim ', 'jean1.jpg', 'jean2.jpg', 'jean3.jpg', 250000, 210000, '\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; If you are looking for jeans that fit, are comfortable, youthful at a reasonable price, then this option is worth a try. Besides the first Basic Slim version, Coolmate introduces you to the second version of Basic Slim Jeans with 3 colors: light blue - dark blue and garment blue and has more balanced shapes than Vietnamese men, to You have more options in your slim jeans wardrobe.</p>\r\n', '\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; If you are looking for jeans that fit, are comfortable, youthful at a reasonable price, then this option is worth a try. Besides the first Basic Slim version, Coolmate introduces you to the second version of Basic Slim Jeans with 3 colors: light blue - dark blue and garment blue and has more balanced shapes than Vietnamese men, to You have more options in your slim jeans wardrobe.</p>\r\n', '\r\n\r\ncome soon', 'jean', 'Hot', 'product'),
(22, 13, 2, 10, '2022-02-20 04:39:52', 'Black Blouse Versace Coat1', 'black-coat', 'Black Blouse Versace Coat1.jpg', 'Black Blouse Versace Coat2.jpg', 'Black Blouse Versace Coat3.jpg', 400000, 350000, 'noon\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'coat', 'Git', 'product'),
(23, 17, 5, 13, '2022-02-20 04:41:27', 'ao len', 'ao-len', 'product-1.jpg', 'product-2.jpg', 'product-3.jpg', 500000, 450000, 'noon\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'len', 'Sale', 'product'),
(24, 19, 5, 17, '2022-02-20 04:42:49', 'jeans ', 'jeans', 'nike-s.jpg', 'nike-s02.jpg', 'nike-s2.jpg', 350000, 300000, 'noon\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'jean', 'Like', 'product'),
(25, 14, 5, 17, '2022-02-20 05:02:40', 'Hoodie with hood', 'Hoodie-with-hood', 'hoodie1.jpg', 'hoodie2.jpg', 'hoodie3.jpg', 450000, 399000, '<p>Outstanding Features</p>\r\n<ul>\r\n<li>Material 90% Cotton, 10% Polyester; Helps the shirt to stay airy without causing any mystery or discomfort</li>\r\n<li>Finished from material to style, with moderate thickness, not heavy to wear</li>\r\n<li>Comfortable wide hood with strong drawstring</li>\r\n<li>The surface of the fabric is smooth, not ruffled, soft and friendly to all skin types</li>\r\n<li>Model: 1m78 - 73kg, wearing size XL</li>\r\n<li>Proudly made in Vietnam</li>\r\n</ul>\r\n\r\n', '\r\n<p>Outstanding Features</p>\r\n<ul>\r\n<li>Material 90% Cotton, 10% Polyester; Helps the shirt to stay airy without causing any mystery or discomfort</li>\r\n<li>Finished from material to style, with moderate thickness, not heavy to wear</li>\r\n<li>Comfortable wide hood with strong drawstring</li>\r\n<li>The surface of the fabric is smooth, not ruffled, soft and friendly to all skin types</li>\r\n<li>Model: 1m78 - 73kg, wearing size XL</li>\r\n<li>Proudly made in Vietnam</li>\r\n</ul>\r\n', '<iframe width=\"900\" height=\"680\" src=\"https://www.youtube.com/embed/lbbw0sVejmo\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\r\n\r\n', 'hoodie', 'Like', 'product'),
(26, 14, 5, 13, '2022-02-20 08:07:28', 'Wind jacket', 'Wind-jacket', 'ao4.jpg', 'ao5.jpg', 'ao6.jpg', 400000, 350000, 'Bundles of 3 hoodie\r\n\r\n', 'Bundles of 3 hoodie\r\n\r\n', '\r\n\r\n', 'jacket', 'Like', 'product'),
(27, 17, 5, 13, '2022-02-20 08:19:48', 'Cotton tank top', 'Cotton-tank-top', 'ba1.jpg', 'ba2.jpg', 'ba3.jpg', 300000, 250000, '\r\n<p>Outstanding Features</p>\r\n<ul>\r\n<li>100% cotton material</li>\r\n<li>Brushed fabric, 2-way stretch treatment</li>\r\n<li>Proudly made in Vietnam</li>\r\n<li>Model: 1m80 - 75kg, wearing 2XL</li>\r\n</ul>\r\n', '\r\n\r\n<p>Outstanding Features</p>\r\n<ul>\r\n<li>100% cotton material</li>\r\n<li>Brushed fabric, 2-way stretch treatment</li>\r\n<li>Proudly made in Vietnam</li>\r\n<li>Model: 1m80 - 75kg, wearing 2XL</li>\r\n</ul>', '\r\n\r\n', 'tank', 'Hot', 'product');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(10, 'Anorak ', 'yes', 'Anorak.png'),
(11, 'Blouse ', 'yes', 'Blouse.png'),
(12, 'Blazer ', 'yes', '1.png'),
(13, 'Coat ', 'no', '2.png'),
(14, 'Jacket ', 'yes', '3.png'),
(15, 'Jumper ', 'no', '4.png'),
(16, 'Overcoat ', 'no', '5.jpg'),
(17, 'Shirt ', 'no', '6.png'),
(18, 'Vest ', 'no', '7.png'),
(19, 'Jean', 'no', 'jean.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `terms`
--

CREATE TABLE `terms` (
  `term_id` int(10) NOT NULL,
  `term_title` varchar(100) NOT NULL,
  `term_link` varchar(100) NOT NULL,
  `term_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `terms`
--

INSERT INTO `terms` (`term_id`, `term_title`, `term_link`, `term_desc`) VALUES
(1, 'Shop at known entities.', 'rules', '<p style=\"text-align: justify\">Any entity can be a known quantity if you do your homework. Instead of looking at the Net as a sea of unrelated competing entities, divide retailers into three subsets and attack each with a different strategy. </p>\r\n\r\n<p style=\"text-align: justify\">The first group is brand-name brick-and-click retailers, known offline companies that have set up shops online. The advantage here is if you have a problem, you can always track down a live person. In the worst-case scenario, you can make a pilgrimage to the brick-and-mortar store, stomp your feet and if that does not get you anywhere, set up a picket line outside. </p>\r\n\r\n<p style=\"text-align: justify\">The second subset of stores online is cyber-only shops. By now, many of these shops have established their own reputation. Read the papers. Ask your friends. </p>\r\n\r\n<p style=\"text-align: justify\">The last — but certainly not the least — category of cyber shops are mom-and-pop ventures online. These small cyber shops stock unusual or hard-to-find items — one very good reason to shop the Net. </p>'),
(2, 'Set your own standards.', 'link2', '<p style=\"text-align:justify\">As a rule, before I consider shopping at any cyber store, I look for a toll-free number or e-mail address on the Web site. If I can’t find this information easily, I move on. I don’t care if it is a well-known retailer or an aromatherapy dealer.</p>\r\n\r\n<p style=\"text-align:justify\">But rules are made to be broken. Set your own standards. Decide what risks you are willing to take. If you find the perfect gift or an unusual item at a relatively unknown Web site, take a chance. </p>'),
(3, 'Shop at secure sites.', 'link3', '<p style=\"text-align:justify\">Secure sites are encrypted or designed to prevent a third party from seeing the information. Encryption scrambles information or codes data that is transmitted. SSL (Secure Sockets Layer) is the standard “protocol” (method) to encrypt data and authenticate users. </p>\r\n\r\n<p style=\"text-align:justify\">How do you know a site is secure? Many secure sites have an “s” after the “http:” in the URL address. Some have pop-up windows that let you know you are entering or exiting a secure site. Others have a special icon to verify that the site is secure.  </p>'),
(4, 'Pay with a credit card', 'link4', '<p style=\"text-align:justify\"> Using a credit card remains the safest way to buy goods online. The chance of stealing a credit-card number online is less likely than someone rifling through your wastebasket for a brick-and-mortar receipt or looking over your shoulder at a brick-and-mortar checkout counter. It’s also relatively painless to contest charges that are not yours or that are unreasonable. If you have a good credit rating, most credit-card companies will attempt to resolve the dispute as fast as possible. On fraudulent charges, federal law limits your liability to $50. </p>'),
(5, 'Ask, don’t tell.', 'link5', '<p style=\"text-align:justify\">Remember the consumer — not the retailer — should be asking the questions. Some queries to consider are: What is your return policy? What are my shipping options? When can I expect delivery? Can I exchange or return the product in a brick-and-mortar store? If you find that a checkout form is requesting more information than your federal tax form, reconsider the purchase. </p>\r\n\r\n<p style=\"text-align:justify\">In general, it’s a good policy to reveal as little personal information as possible. If you have to complete a form, answer only mandatory questions that are often highlighted with an asterisk. No matter what you do, don’t give out your Social Security number or mother’s maiden name to a retailer. There’s no legitimate reason a retailer needs to know this information. </p>'),
(6, 'Don’t open unsolicited e-mails.', 'link6', '<p style=\"text-align:justify\">Most shopping scams — and viruses — arrive in the mail. If you are not familiar with the sender, don’t open the mail. To help prevent future junk mail, SPAM and possible frauds, make sure you read the text carefully in checkout areas before you submit your order. Some companies automatically have checked a box that indicates your desire to receive future mailings. Unless you are confident that you want this mail, uncheck this box! </p>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `customer_id`, `product_id`) VALUES
(2, 2, 8),
(3, 5, 13),
(4, 3, 13),
(5, 6, 15),
(8, 8, 18);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`about_id`);

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  ADD PRIMARY KEY (`rel_id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Chỉ mục cho bảng `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`contact_id`);

--
-- Chỉ mục cho bảng `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Chỉ mục cho bảng `enquiry_types`
--
ALTER TABLE `enquiry_types`
  ADD PRIMARY KEY (`enquiry_id`);

--
-- Chỉ mục cho bảng `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturer_id`),
  ADD KEY `manufacturer_id` (`manufacturer_id`);

--
-- Chỉ mục cho bảng `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Chỉ mục cho bảng `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Chỉ mục cho bảng `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`term_id`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `about_us`
--
ALTER TABLE `about_us`
  MODIFY `about_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  MODIFY `rel_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `enquiry_types`
--
ALTER TABLE `enquiry_types`
  MODIFY `enquiry_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `terms`
--
ALTER TABLE `terms`
  MODIFY `term_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
