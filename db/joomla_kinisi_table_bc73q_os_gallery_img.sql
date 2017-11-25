
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_os_gallery_img`
--

DROP TABLE IF EXISTS `bc73q_os_gallery_img`;
CREATE TABLE `bc73q_os_gallery_img` (
  `id` int(11) UNSIGNED NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `ordering` int(11) NOT NULL,
  `params` mediumblob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bc73q_os_gallery_img`
--

INSERT INTO `bc73q_os_gallery_img` VALUES(1, 'funkcni-fyziotrenink5EEC98AE-2889-88F5-376A-9F9F23CDA17E.jpg', NULL, 0, 0x7b7d);
INSERT INTO `bc73q_os_gallery_img` VALUES(2, 'funkcni-fyziotrenink9E3A0E2C-3815-621B-A1E7-3A3E457869EB.jpg', NULL, 0, 0x7b7d);
