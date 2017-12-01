
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_joomgallery_catg`
--

DROP TABLE IF EXISTS `bc73q_joomgallery_catg`;
CREATE TABLE `bc73q_joomgallery_catg` (
  `cid` int(11) NOT NULL,
  `asset_id` int(10) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(2048) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `description` text,
  `access` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `in_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(100) NOT NULL DEFAULT '',
  `owner` int(11) DEFAULT '0',
  `thumbnail` int(11) DEFAULT NULL,
  `img_position` int(10) DEFAULT '0',
  `catpath` varchar(2048) NOT NULL,
  `params` text NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `exclude_toplists` int(1) NOT NULL,
  `exclude_search` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bc73q_joomgallery_catg`
--

INSERT INTO `bc73q_joomgallery_catg` VALUES(1, 0, 'ROOT', 'root', 0, 0, 15, 0, NULL, 1, 1, 0, 0, '', 0, NULL, 0, '', '', '', '', 0, 0);
INSERT INTO `bc73q_joomgallery_catg` VALUES(2, 170, 'Gallery', 'gallery', 1, 1, 14, 1, '', 1, 1, 0, 0, '', 846, 0, -1, 'gallery_2', '', '', '', 0, 0);
INSERT INTO `bc73q_joomgallery_catg` VALUES(9, 521, 'Gallery 1', 'gallery/gallery-1', 2, 2, 3, 2, '', 1, 1, 0, 0, '', 0, 0, -1, 'gallery_2/gallery_1_9', '', '', '', 0, 0);
INSERT INTO `bc73q_joomgallery_catg` VALUES(10, 522, 'Gallery 2', 'gallery/gallery-2', 2, 4, 5, 2, '', 1, 1, 0, 0, '', 0, 0, -1, 'gallery_2/gallery_2_10', '', '', '', 0, 0);
INSERT INTO `bc73q_joomgallery_catg` VALUES(11, 523, 'Gallery 3', 'gallery/gallery-3', 2, 6, 7, 2, '', 1, 1, 0, 0, '', 0, 0, -1, 'gallery_2/gallery_3_11', '', '', '', 0, 0);
INSERT INTO `bc73q_joomgallery_catg` VALUES(12, 524, 'Gallery 4', 'gallery/gallery-4', 2, 8, 9, 2, '', 1, 1, 0, 0, '', 0, 0, -1, 'gallery_2/gallery_4_12', '', '', '', 0, 0);
INSERT INTO `bc73q_joomgallery_catg` VALUES(13, 525, 'Gallery 5', 'gallery/gallery-5', 2, 10, 11, 2, '', 1, 1, 0, 0, '', 0, 0, -1, 'gallery_2/gallery_5_13', '', '', '', 0, 0);
INSERT INTO `bc73q_joomgallery_catg` VALUES(14, 526, 'Gallery 6', 'gallery/gallery-6', 2, 12, 13, 2, '', 1, 1, 0, 0, '', 0, 0, -1, 'gallery_2/gallery_6_14', '', '', '', 0, 0);
