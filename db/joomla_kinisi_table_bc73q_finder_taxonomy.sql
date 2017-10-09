
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
