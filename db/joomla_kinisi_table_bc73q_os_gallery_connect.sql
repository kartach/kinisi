
DROP TABLE IF EXISTS `bc73q_os_gallery_connect`;
CREATE TABLE `bc73q_os_gallery_connect` (
  `id` int(11) UNSIGNED NOT NULL,
  `fk_cat_id` int(11) UNSIGNED DEFAULT NULL COMMENT 'The id from table __os_gallery_categories',
  `fk_gal_img_id` int(11) UNSIGNED DEFAULT NULL COMMENT 'The img id from table __os_gallery_img'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `bc73q_os_gallery_connect` VALUES(1, 1, 1);
INSERT INTO `bc73q_os_gallery_connect` VALUES(2, 2, 2);
