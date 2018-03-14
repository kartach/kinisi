
DROP TABLE IF EXISTS `bc73q_os_gallery_connect`;
CREATE TABLE `bc73q_os_gallery_connect` (
  `id` int(11) UNSIGNED NOT NULL,
  `fk_cat_id` int(11) UNSIGNED DEFAULT NULL COMMENT 'The id from table __os_gallery_categories',
  `fk_gal_img_id` int(11) UNSIGNED DEFAULT NULL COMMENT 'The img id from table __os_gallery_img'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `bc73q_os_gallery_connect` VALUES(1, 1, 1);
INSERT INTO `bc73q_os_gallery_connect` VALUES(2, 2, 2);
INSERT INTO `bc73q_os_gallery_connect` VALUES(5, 5, 5);
INSERT INTO `bc73q_os_gallery_connect` VALUES(4, 4, 4);
INSERT INTO `bc73q_os_gallery_connect` VALUES(6, 6, 6);
INSERT INTO `bc73q_os_gallery_connect` VALUES(19, 13, 19);
INSERT INTO `bc73q_os_gallery_connect` VALUES(8, 7, 8);
INSERT INTO `bc73q_os_gallery_connect` VALUES(10, 8, 10);
INSERT INTO `bc73q_os_gallery_connect` VALUES(12, 9, 12);
INSERT INTO `bc73q_os_gallery_connect` VALUES(14, 10, 14);
INSERT INTO `bc73q_os_gallery_connect` VALUES(16, 11, 16);
INSERT INTO `bc73q_os_gallery_connect` VALUES(18, 12, 18);
INSERT INTO `bc73q_os_gallery_connect` VALUES(20, 14, 20);
INSERT INTO `bc73q_os_gallery_connect` VALUES(22, 15, 22);
INSERT INTO `bc73q_os_gallery_connect` VALUES(24, 16, 24);
INSERT INTO `bc73q_os_gallery_connect` VALUES(26, 17, 26);
INSERT INTO `bc73q_os_gallery_connect` VALUES(28, 18, 28);
INSERT INTO `bc73q_os_gallery_connect` VALUES(30, 19, 30);
INSERT INTO `bc73q_os_gallery_connect` VALUES(32, 20, 32);
INSERT INTO `bc73q_os_gallery_connect` VALUES(34, 21, 34);
INSERT INTO `bc73q_os_gallery_connect` VALUES(36, 22, 36);
INSERT INTO `bc73q_os_gallery_connect` VALUES(38, 23, 38);
INSERT INTO `bc73q_os_gallery_connect` VALUES(40, 24, 40);
INSERT INTO `bc73q_os_gallery_connect` VALUES(42, 25, 42);
INSERT INTO `bc73q_os_gallery_connect` VALUES(44, 26, 44);
INSERT INTO `bc73q_os_gallery_connect` VALUES(70, 33, 70);
INSERT INTO `bc73q_os_gallery_connect` VALUES(69, 27, 69);
INSERT INTO `bc73q_os_gallery_connect` VALUES(52, 30, 52);
INSERT INTO `bc73q_os_gallery_connect` VALUES(54, 31, 54);
INSERT INTO `bc73q_os_gallery_connect` VALUES(58, 32, 58);
INSERT INTO `bc73q_os_gallery_connect` VALUES(68, 28, 68);
INSERT INTO `bc73q_os_gallery_connect` VALUES(61, 34, 61);
INSERT INTO `bc73q_os_gallery_connect` VALUES(72, 29, 72);
INSERT INTO `bc73q_os_gallery_connect` VALUES(67, 36, 67);
INSERT INTO `bc73q_os_gallery_connect` VALUES(65, 35, 65);
INSERT INTO `bc73q_os_gallery_connect` VALUES(76, 39, 76);
INSERT INTO `bc73q_os_gallery_connect` VALUES(77, 40, 77);
INSERT INTO `bc73q_os_gallery_connect` VALUES(75, 38, 75);
INSERT INTO `bc73q_os_gallery_connect` VALUES(78, 41, 78);
