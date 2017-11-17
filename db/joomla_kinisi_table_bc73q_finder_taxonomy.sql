
DROP TABLE IF EXISTS `bc73q_finder_taxonomy`;
CREATE TABLE `bc73q_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `access` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `bc73q_finder_taxonomy` VALUES(1, 0, 'ROOT', 0, 0, 0);
INSERT INTO `bc73q_finder_taxonomy` VALUES(2, 1, 'Type', 1, 1, 0);
INSERT INTO `bc73q_finder_taxonomy` VALUES(4, 1, 'Language', 1, 1, 0);
INSERT INTO `bc73q_finder_taxonomy` VALUES(6, 2, 'Forum Post', 1, 1, 0);
INSERT INTO `bc73q_finder_taxonomy` VALUES(7, 4, '*', 1, 1, 0);
INSERT INTO `bc73q_finder_taxonomy` VALUES(9, 1, 'Author', 1, 1, 0);
INSERT INTO `bc73q_finder_taxonomy` VALUES(11, 1, 'Category', 1, 1, 0);
INSERT INTO `bc73q_finder_taxonomy` VALUES(28, 2, 'Article', 1, 1, 0);
INSERT INTO `bc73q_finder_taxonomy` VALUES(29, 9, 'Klára K', 1, 1, 0);
INSERT INTO `bc73q_finder_taxonomy` VALUES(31, 11, 'Akutní a pooperační fyzioterapie', 1, 1, 0);
INSERT INTO `bc73q_finder_taxonomy` VALUES(33, 11, 'Dětská fyzioterapie', 1, 1, 0);
INSERT INTO `bc73q_finder_taxonomy` VALUES(34, 11, 'Péče o sportovce', 1, 1, 0);
INSERT INTO `bc73q_finder_taxonomy` VALUES(35, 11, 'METODY A LÉČEBNÉ PŘÍSTUPY', 1, 1, 0);
INSERT INTO `bc73q_finder_taxonomy` VALUES(36, 11, 'Funkční fyziotréning', 1, 1, 0);
INSERT INTO `bc73q_finder_taxonomy` VALUES(37, 11, 'Fyzioterapie pro ženy', 1, 1, 0);
INSERT INTO `bc73q_finder_taxonomy` VALUES(45, 11, 'Fyzioterapie dospělých', 1, 1, 0);
INSERT INTO `bc73q_finder_taxonomy` VALUES(48, 11, 'Uncategorised', 1, 1, 0);
