
DROP TABLE IF EXISTS `bc73q_kunena_user_categories`;
CREATE TABLE `bc73q_kunena_user_categories` (
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT '0',
  `allreadtime` int(11) NOT NULL DEFAULT '0',
  `subscribed` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `bc73q_kunena_user_categories` VALUES(354, 0, 0, 1499970900, 0, '');
INSERT INTO `bc73q_kunena_user_categories` VALUES(757, 0, 0, 1475675596, 0, '');
INSERT INTO `bc73q_kunena_user_categories` VALUES(846, 0, 0, 1444738495, 0, '');
INSERT INTO `bc73q_kunena_user_categories` VALUES(846, 2, 0, 1482315775, 0, '');
INSERT INTO `bc73q_kunena_user_categories` VALUES(895, 0, 0, 1467881216, 0, '');
