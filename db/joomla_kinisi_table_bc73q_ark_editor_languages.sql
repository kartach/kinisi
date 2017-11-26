
DROP TABLE IF EXISTS `bc73q_ark_editor_languages`;
CREATE TABLE `bc73q_ark_editor_languages` (
  `id` int(11) NOT NULL,
  `tag` varchar(5) DEFAULT NULL,
  `filename` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
