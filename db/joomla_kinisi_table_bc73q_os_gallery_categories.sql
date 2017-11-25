
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_os_gallery_categories`
--

DROP TABLE IF EXISTS `bc73q_os_gallery_categories`;
CREATE TABLE `bc73q_os_gallery_categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `fk_gal_id` int(11) UNSIGNED DEFAULT NULL COMMENT 'The gallery id from table __os_gallery',
  `name` varchar(255) DEFAULT NULL,
  `ordering` int(11) NOT NULL,
  `params` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bc73q_os_gallery_categories`
--

INSERT INTO `bc73q_os_gallery_categories` VALUES(1, 1, 'Category Title', 0, '%7B%22categoryAlias%22:%22%22,%22categoryUnpublish%22:false,%22categoryShowTitle%22:false,%22categoryShowTitleCaption%22:false%7D');
INSERT INTO `bc73q_os_gallery_categories` VALUES(2, 2, 'Category Title', 0, '%7B%22categoryAlias%22:%22%22,%22categoryUnpublish%22:false,%22categoryShowTitle%22:false,%22categoryShowTitleCaption%22:false%7D');
INSERT INTO `bc73q_os_gallery_categories` VALUES(3, 3, 'Category Title', 0, '{}');
