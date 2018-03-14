
DROP TABLE IF EXISTS `bc73q_finder_types`;
CREATE TABLE `bc73q_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `bc73q_finder_types` VALUES(1, 'Tag', '');
INSERT INTO `bc73q_finder_types` VALUES(2, 'Category', '');
INSERT INTO `bc73q_finder_types` VALUES(3, 'Contact', '');
INSERT INTO `bc73q_finder_types` VALUES(4, 'Article', '');
INSERT INTO `bc73q_finder_types` VALUES(5, 'News Feed', '');
INSERT INTO `bc73q_finder_types` VALUES(6, 'Forum Post', 'txt');
