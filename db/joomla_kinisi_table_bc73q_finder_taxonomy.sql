
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
INSERT INTO `bc73q_finder_taxonomy` VALUES(41, 11, 'Fyzioterapie dospělých', 1, 1, 0);
INSERT INTO `bc73q_finder_taxonomy` VALUES(43, 11, 'Poslední', 1, 1, 0);
INSERT INTO `bc73q_finder_taxonomy` VALUES(45, 11, 'Služby I', 1, 1, 0);
INSERT INTO `bc73q_finder_taxonomy` VALUES(46, 11, 'Služby II', 1, 1, 0);
INSERT INTO `bc73q_finder_taxonomy` VALUES(47, 11, 'Tým Centra fyzioterapie Kinisi', 1, 1, 0);
INSERT INTO `bc73q_finder_taxonomy` VALUES(49, 11, 'Uncategorised', 1, 1, 0);
INSERT INTO `bc73q_finder_taxonomy` VALUES(53, 11, 'Kvalita služeb 3', 1, 1, 0);
INSERT INTO `bc73q_finder_taxonomy` VALUES(55, 11, 'Slider', 1, 1, 0);
INSERT INTO `bc73q_finder_taxonomy` VALUES(58, 11, 'Reference', 1, 1, 0);
INSERT INTO `bc73q_finder_taxonomy` VALUES(59, 11, 'HP reference', 1, 1, 0);
INSERT INTO `bc73q_finder_taxonomy` VALUES(60, 11, 'Reference jednotlivci', 1, 1, 0);
INSERT INTO `bc73q_finder_taxonomy` VALUES(64, 11, 'O nás', 1, 1, 0);
INSERT INTO `bc73q_finder_taxonomy` VALUES(67, 11, 'About HP pro Article', 1, 1, 0);
INSERT INTO `bc73q_finder_taxonomy` VALUES(68, 11, 'Kvalita služeb 4', 1, 1, 0);
INSERT INTO `bc73q_finder_taxonomy` VALUES(69, 11, 'Kvalita služeb ', 1, 1, 0);
INSERT INTO `bc73q_finder_taxonomy` VALUES(70, 11, 'Kvalita služeb 2', 1, 1, 0);
