-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2019 at 03:55 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `liverpool`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `transnum` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `tgl` date NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `fieldnum` int(11) DEFAULT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'Waiting for Confirmation',
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`transnum`, `username`, `tgl`, `start`, `end`, `duration`, `fieldnum`, `status`, `datecreated`) VALUES
(1, 'ACHMAD', '2018-11-01', 20, 22, 2, 4, 'Accepted', '2018-10-31 00:00:00');


-- --------------------------------------------------------

--
-- Stand-in structure for view `booking_price`
-- (See below for the actual view)
--
CREATE TABLE `booking_price` (
`transnum` bigint(20) unsigned
,`username` varchar(30)
,`tgl` date
,`start` int(11)
,`end` int(11)
,`duration` int(11)
,`fieldnum` int(11)
,`status` varchar(30)
,`datecreated` datetime
,`price` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `name` text NOT NULL,
  `phonenum` text NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `role` varchar(30) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`name`, `phonenum`, `username`, `password`, `role`) VALUES
('AANG', '81927536639', 'AANG', '$2y$10$IxZX2Bh3VrXa1ZCUsQH6Puk8lb/Rh72LBVsyYFu2ehjuIin.kujJq', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `field`
--

CREATE TABLE `field` (
  `fieldnum` int(11) NOT NULL,
  `tipe` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `field`
--

INSERT INTO `field` (`fieldnum`, `tipe`) VALUES
(1, 'Sintetis'),
(2, 'Finil'),
(3, 'Finil'),
(4, 'Sintetis');

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `transnum` int(11) DEFAULT NULL,
  `opt` int(11) DEFAULT NULL,
  `totalprice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`transnum`, `opt`, `totalprice`) VALUES
(1, 13, 300000),
(2, 13, 320000),
(3, 5, 300000),
(4, 5, 320000),
(5, 5, 150000),
(6, 5, 160000),
(7, 13, 150000),
(8, 5, 160000),
(9, 5, 150000),
(10, 13, 75000),
(11, 5, 100000),
(12, 5, 75000),
(13, 13, 150000),
(14, 13, 160000),
(15, 5, 320000),
(16, 5, 300000),
(17, 13, 160000),
(18, 5, 160000),
(19, 13, 300000),
(20, 5, 160000),
(21, 5, 150000),
(22, 13, 160000),
(23, 5, 160000),
(24, 5, 150000),
(25, 13, 150000),
(26, 5, 300000),
(27, 5, 260000),
(28, 5, 160000),
(29, 5, 150000),
(30, 13, 320000),
(31, 5, 150000),
(32, 13, 300000),
(33, 5, 150000),
(34, 5, 160000),
(35, 13, 300000),
(36, 10, 110000),
(37, 2, 220000),
(38, 5, 135000),
(39, 13, 135000),
(40, 5, 135000),
(41, 5, 250000),
(42, 2, 100000),
(43, 2, 100000),
(44, 13, 125000),
(45, 5, 125000),
(46, 13, 125000),
(47, 5, 135000),
(48, 13, 125000),
(49, 13, 270000),
(50, 5, 250000),
(51, 5, 270000),
(52, 5, 135000),
(53, 2, 100000),
(54, 13, 125000),
(55, 13, 125000),
(56, 5, 135000),
(57, 5, 250000),
(58, 13, 250000),
(59, 5, 135000),
(60, 5, 135000),
(61, 5, 135000),
(62, 5, 250000),
(63, 13, 135000),
(64, 13, 135000),
(65, 5, 270000),
(66, 5, 250000),
(67, 13, 250000),
(68, 5, 125000),
(69, 5, 270000),
(70, 5, 250000),
(71, 5, 125000),
(72, 2, 75000),
(73, 5, 150000),
(74, 5, 160000),
(75, 5, 150000),
(76, 13, 300000),
(77, 13, 160000),
(78, 5, 160000),
(79, 5, 160000),
(80, 13, 150000),
(81, 5, 160000),
(82, 5, 300000),
(83, 5, 75000),
(84, 13, 150000),
(85, 5, 160000),
(86, 5, 150000),
(87, 5, 160000),
(88, 13, 300000),
(89, 5, 150000),
(90, 13, 160000),
(91, 5, 150000),
(92, 13, 150000),
(93, 13, 150000),
(94, 5, 160000),
(95, 5, 150000),
(96, 5, 160000),
(97, 5, 150000),
(98, 13, 150000),
(99, 13, 320000),
(100, 5, 160000),
(101, 5, 160000),
(102, 5, 300000),
(103, 5, 150000),
(104, 13, 150000),
(105, 5, 160000),
(106, 5, 150000),
(107, 10, 350000),
(108, 10, 396000),
(109, 2, 495000),
(110, 2, 360000),
(111, 5, 135000),
(112, 5, 125000),
(113, 13, 135000),
(114, 5, 125000),
(115, 5, 135000),
(116, 13, 125000),
(117, 13, 135000),
(118, 5, 135000),
(119, 5, 250000),
(120, 5, 135000),
(121, 5, 135000),
(122, 5, 125000),
(123, 5, 270000),
(124, 13, 125000),
(125, 13, 270000),
(126, 5, 135000),
(127, 5, 125000),
(128, 5, 135000),
(129, 5, 250000),
(130, 5, 100000),
(131, 5, 250000),
(132, 13, 135000),
(133, 5, 135000),
(134, 5, 125000),
(135, 13, 125000),
(136, 13, 135000),
(137, 5, 135000),
(138, 5, 135000),
(139, 5, 250000),
(140, 5, 135000),
(141, 5, 125000),
(142, 5, 150000),
(143, 5, 150000),
(144, 5, 320000),
(145, 13, 300000),
(146, 5, 160000),
(147, 13, 150000),
(148, 5, 150000),
(149, 13, 160000),
(150, 5, 100000),
(151, 2, 100000),
(152, 5, 160000),
(153, 5, 300000),
(154, 5, 150000),
(155, 13, 160000),
(156, 5, 160000),
(157, 5, 150000),
(158, 13, 300000),
(159, 13, 160000),
(160, 5, 160000),
(161, 5, 150000),
(162, 13, 150000),
(163, 13, 160000),
(164, 5, 160000),
(165, 5, 150000),
(166, 5, 160000),
(167, 5, 150000),
(168, 5, 160000),
(169, 5, 300000),
(170, 5, 75000),
(171, 5, 150000),
(172, 13, 150000),
(173, 13, 160000),
(174, 5, 160000),
(175, 5, 150000),
(176, 5, 150000),
(177, 13, 300000),
(178, 13, 160000),
(179, 5, 160000),
(180, 5, 150000),
(181, 13, 150000),
(182, 5, 125000),
(183, 5, 125000),
(184, 13, 250000),
(185, 5, 125000),
(186, 2, 200000),
(187, 2, 200000),
(188, 10, 100000),
(189, 2, 100000),
(190, 13, 135000),
(191, 13, 125000),
(192, 13, 135000),
(193, 13, 125000),
(194, 5, 270000),
(195, 13, 270000),
(196, 5, 135000),
(197, 5, 250000),
(198, 13, 250000),
(199, 5, 250000),
(200, 5, 135000),
(201, 5, 135000),
(202, 13, 270000),
(203, 5, 135000),
(204, 13, 125000),
(205, 5, 135000),
(206, 13, 135000),
(207, 5, 135000),
(208, 5, 250000),
(209, 13, 250000),
(210, 5, 135000),
(211, 10, 75000),
(212, 2, 75000),
(213, 10, 75000),
(214, 13, 125000),
(215, 5, 250000),
(216, 13, 135000),
(217, 5, 135000),
(218, 13, 135000),
(219, 5, 135000),
(220, 5, 125000),
(221, 13, 250000),
(222, 13, 270000),
(223, 5, 270000),
(224, 5, 125000),
(225, 13, 160000),
(226, 5, 160000),
(227, 13, 160000),
(228, 13, 160000),
(229, 5, 260000),
(230, 5, 320000),
(231, 13, 300000),
(232, 13, 320000),
(233, 5, 160000),
(234, 5, 300000),
(235, 5, 150000),
(236, 13, 300000),
(237, 13, 320000),
(238, 5, 150000),
(239, 5, 160000),
(240, 5, 150000),
(241, 5, 100000),
(242, 2, 100000),
(243, 5, 150000),
(244, 13, 320000),
(245, 5, 150000),
(246, 13, 300000),
(247, 13, 320000),
(248, 5, 320000),
(249, 5, 150000),
(250, 13, 270000),
(251, 5, 125000),
(252, 5, 125000),
(253, 5, 125000),
(254, 5, 125000),
(255, 13, 125000),
(256, 10, 100000),
(257, 2, 110000),
(258, 10, 100000),
(259, 2, 200000),
(260, 2, 100000),
(261, 5, 125000),
(262, 5, 135000),
(263, 13, 125000),
(264, 5, 250000),
(265, 13, 135000),
(266, 10, 150000),
(267, 5, 135000),
(268, 5, 135000),
(269, 5, 135000),
(270, 5, 135000),
(271, 5, 250000),
(272, 5, 250000),
(273, 5, 135000),
(274, 13, 75000),
(275, 5, 125000),
(276, 13, 125000),
(277, 5, 125000),
(278, 13, 135000),
(279, 5, 135000),
(280, 5, 75000),
(281, 13, 300000),
(282, 5, 160000),
(283, 2, 75000),
(284, 5, 160000),
(285, 13, 150000),
(286, 5, 160000),
(287, 5, 300000),
(288, 13, 150000),
(289, 13, 320000),
(290, 5, 160000),
(291, 5, 150000),
(292, 13, 160000),
(293, 5, 160000),
(294, 13, 150000),
(295, 5, 160000),
(296, 5, 150000),
(297, 5, 160000),
(298, 5, 160000),
(299, 5, 100000),
(300, 5, 160000),
(301, 5, 150000),
(302, 13, 150000),
(303, 13, 320000),
(304, 5, 160000),
(305, 5, 150000),
(306, 13, 320000),
(307, 5, 160000),
(308, 13, 150000),
(309, 5, 150000),
(310, 13, 150000),
(311, 2, 220000),
(312, 13, 125000),
(313, 13, 125000),
(314, 5, 125000),
(315, 5, 135000),
(316, 13, 375000),
(317, 5, 125000),
(318, 5, 250000),
(319, 10, 75000),
(320, 13, 125000),
(321, 13, 135000),
(322, 5, 125000),
(323, 13, 135000),
(324, 5, 270000),
(325, 13, 250000),
(326, 5, 135000),
(327, 5, 250000),
(328, 5, 250000),
(329, 13, 125000),
(330, 13, 135000),
(331, 5, 250000),
(332, 5, 270000),
(333, 5, 125000),
(334, 5, 135000),
(335, 5, 150000),
(336, 13, 160000),
(337, 5, 160000),
(338, 5, 160000),
(339, 5, 300000),
(340, 13, 450000),
(341, 13, 320000),
(342, 5, 160000),
(343, 5, 150000),
(344, 5, 320000),
(345, 5, 150000),
(346, 13, 150000),
(347, 5, 75000),
(348, 5, 160000),
(349, 13, 160000),
(350, 5, 160000),
(351, 5, 150000),
(352, 13, 150000),
(353, 5, 160000),
(354, 5, 150000),
(355, 13, 160000),
(356, 5, 150000),
(357, 5, 160000),
(358, 5, 150000),
(359, 13, 300000),
(360, 13, 320000),
(361, 13, 160000),
(362, 5, 320000),
(363, 5, 450000),
(364, 13, 150000),
(365, 5, 150000),
(366, 5, 150000),
(367, 5, 320000),
(368, 5, 150000),
(369, 13, 300000),
(370, 5, 160000),
(371, 5, 150000),
(372, 13, 320000),
(373, 5, 160000),
(374, 5, 150000),
(375, 5, 160000),
(376, 5, 135000),
(377, 5, 135000),
(378, 5, 100000),
(379, 2, 100000),
(380, 10, 200000),
(381, 10, 110000),
(382, 2, 110000),
(383, 2, 100000),
(384, 2, 110000),
(385, 5, 125000),
(386, 5, 270000),
(387, 5, 25000),
(388, 10, 75000),
(389, 5, 135000),
(390, 5, 270000),
(391, 2, 75000),
(392, 5, 250000),
(393, 13, 125000),
(394, 5, 135000),
(395, 13, 270000),
(396, 13, 125000),
(397, 13, 135000),
(398, 5, 270000),
(399, 5, 250000),
(400, 5, 135000),
(401, 5, 160000),
(402, 5, 160000),
(403, 5, 75000),
(404, 5, 160000),
(405, 13, 160000),
(406, 13, 150000),
(407, 5, 160000),
(408, 5, 300000),
(409, 13, 160000),
(410, 13, 150000),
(411, 5, 150000),
(412, 5, 320000),
(413, 13, 160000),
(414, 5, 150000),
(415, 13, 160000),
(416, 5, 320000),
(417, 5, 160000),
(418, 5, 150000),
(419, 13, 150000),
(420, 13, 150000),
(421, 13, 320000),
(422, 5, 320000),
(423, 5, 150000),
(424, 5, 150000),
(425, 13, 300000),
(426, 13, 150000),
(427, 5, 150000),
(428, 13, 150000),
(429, 5, 100000),
(430, 13, 250000),
(431, 5, 125000),
(432, 5, 270000),
(433, 13, 250000),
(434, 2, 110000),
(435, 2, 100000),
(436, 2, 110000),
(437, 2, 100000),
(438, 5, 250000),
(439, 5, 250000),
(440, 5, 125000),
(441, 13, 135000),
(442, 13, 125000),
(443, 13, 135000),
(444, 5, 135000),
(445, 5, 250000),
(446, 13, 135000),
(447, 5, 250000),
(448, 5, 125000),
(449, 5, 250000),
(450, 13, 450000),
(451, 5, 160000),
(452, 13, 160000),
(453, 13, 150000),
(454, 5, 150000),
(455, 5, 160000),
(456, 5, 160000),
(457, 5, 160000),
(458, 13, 150000),
(459, 13, 160000),
(460, 5, 150000),
(461, 13, 300000),
(462, 5, 160000),
(463, 13, 320000),
(464, 13, 150000),
(465, 5, 150000),
(466, 5, 160000),
(467, 5, 150000),
(468, 13, 150000),
(469, 5, 160000),
(470, 5, 150000),
(471, 13, 160000),
(472, 13, 150000),
(473, 5, 160000),
(474, 5, 150000),
(475, 13, 150000),
(476, 5, 160000),
(477, 13, 320000),
(478, 5, 150000),
(479, 5, 150000),
(480, 5, 150000),
(481, 10, 320000),
(482, 2, 150000),
(483, 5, 250000),
(484, 13, 135000),
(485, 2, 200000),
(486, 10, 110000),
(487, 2, 100000),
(488, 2, 100000),
(489, 2, 110000),
(490, 13, 125000),
(491, 5, 135000),
(492, 5, 125000),
(493, 5, 250000),
(494, 5, 250000),
(495, 13, 135000),
(496, 5, 125000),
(497, 5, 135000),
(498, 5, 250000),
(499, 5, 270000),
(500, 5, 250000),
(501, 5, 125000);

-- --------------------------------------------------------

--
-- Table structure for table `pricelist`
--

CREATE TABLE `pricelist` (
  `opt` int(11) NOT NULL,
  `fieldnum` int(11) DEFAULT NULL,
  `startday` int(11) NOT NULL,
  `endday` int(11) NOT NULL,
  `starttime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pricelist`
--

INSERT INTO `pricelist` (`opt`, `fieldnum`, `startday`, `endday`, `starttime`, `endtime`, `price`) VALUES
(1, 1, 1, 5, 7, 14, 75000),
(2, 2, 1, 5, 7, 14, 100000),
(3, 1, 7, 3, 14, 24, 125000),
(4, 2, 7, 3, 14, 24, 135000),
(5, 1, 6, 7, 7, 14, 100000),
(6, 2, 6, 7, 7, 14, 110000),
(7, 1, 4, 6, 14, 24, 150000),
(8, 2, 4, 6, 14, 24, 160000),
(9, 4, 1, 5, 7, 14, 75000),
(10, 3, 1, 5, 7, 14, 100000),
(11, 4, 7, 3, 14, 24, 125000),
(12, 3, 7, 3, 14, 24, 135000),
(13, 4, 6, 7, 7, 14, 100000),
(14, 3, 6, 7, 7, 14, 110000),
(15, 4, 4, 6, 14, 24, 150000),
(16, 3, 4, 6, 14, 24, 160000);

-- --------------------------------------------------------

--
-- Stand-in structure for view `transaksi`
-- (See below for the actual view)
--
CREATE TABLE `transaksi` (
`transnum` bigint(20) unsigned
,`tgl` date
,`username` varchar(30)
,`phonenum` text
,`start` int(11)
,`end` int(11)
,`duration` int(11)
,`fieldnum` int(11)
,`tipe` text
,`totalprice` int(11)
,`status` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `verifikasi`
-- (See below for the actual view)
--
CREATE TABLE `verifikasi` (
`transnum` bigint(20) unsigned
,`username` varchar(30)
,`phonenum` text
,`tgl` date
,`start` int(11)
,`end` int(11)
,`duration` int(11)
,`fieldnum` int(11)
,`tipe` text
,`status` varchar(30)
);

-- --------------------------------------------------------

--
-- Structure for view `booking_price`
--
DROP TABLE IF EXISTS `booking_price`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `booking_price`  AS  select `booking`.`transnum` AS `transnum`,`booking`.`username` AS `username`,`booking`.`tgl` AS `tgl`,`booking`.`start` AS `start`,`booking`.`end` AS `end`,`booking`.`duration` AS `duration`,`booking`.`fieldnum` AS `fieldnum`,`booking`.`status` AS `status`,`booking`.`datecreated` AS `datecreated`,`price`.`totalprice` AS `price` from (`booking` join `price` on((`booking`.`transnum` = `price`.`transnum`))) ;

-- --------------------------------------------------------

--
-- Structure for view `transaksi`
--
DROP TABLE IF EXISTS `transaksi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `transaksi`  AS  select `booking`.`transnum` AS `transnum`,`booking`.`tgl` AS `tgl`,`customer`.`username` AS `username`,`customer`.`phonenum` AS `phonenum`,`booking`.`start` AS `start`,`booking`.`end` AS `end`,`booking`.`duration` AS `duration`,`field`.`fieldnum` AS `fieldnum`,`field`.`tipe` AS `tipe`,`price`.`totalprice` AS `totalprice`,`booking`.`status` AS `status` from (((`customer` join `booking` on((`customer`.`username` = `booking`.`username`))) join `price` on((`booking`.`transnum` = `price`.`transnum`))) join `field` on((`booking`.`fieldnum` = `field`.`fieldnum`))) where (`booking`.`status` <> 'Waiting for Confirmation') ;

-- --------------------------------------------------------

--
-- Structure for view `verifikasi`
--
DROP TABLE IF EXISTS `verifikasi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `verifikasi`  AS  select `booking`.`transnum` AS `transnum`,`customer`.`username` AS `username`,`customer`.`phonenum` AS `phonenum`,`booking`.`tgl` AS `tgl`,`booking`.`start` AS `start`,`booking`.`end` AS `end`,`booking`.`duration` AS `duration`,`field`.`fieldnum` AS `fieldnum`,`field`.`tipe` AS `tipe`,`booking`.`status` AS `status` from (((`customer` join `booking` on((`customer`.`username` = `booking`.`username`))) join `price` on((`booking`.`transnum` = `price`.`transnum`))) join `field` on((`booking`.`fieldnum` = `field`.`fieldnum`))) where (`booking`.`status` = 'Waiting for Confirmation') ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`transnum`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `field`
--
ALTER TABLE `field`
  ADD PRIMARY KEY (`fieldnum`);

--
-- Indexes for table `pricelist`
--
ALTER TABLE `pricelist`
  ADD PRIMARY KEY (`opt`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `transnum` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
