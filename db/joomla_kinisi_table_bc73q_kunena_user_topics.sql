
DROP TABLE IF EXISTS `bc73q_kunena_user_topics`;
CREATE TABLE `bc73q_kunena_user_topics` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `topic_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL,
  `posts` mediumint(8) NOT NULL DEFAULT '0',
  `last_post_id` int(11) NOT NULL DEFAULT '0',
  `owner` tinyint(4) NOT NULL DEFAULT '0',
  `favorite` tinyint(4) NOT NULL DEFAULT '0',
  `subscribed` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `bc73q_kunena_user_topics` VALUES(317, 1, 2, 1, 1, 1, 0, 0, '');
INSERT INTO `bc73q_kunena_user_topics` VALUES(846, 2, 5, 2, 3, 1, 0, 1, '');
INSERT INTO `bc73q_kunena_user_topics` VALUES(847, 2, 5, 2, 5, 0, 0, 1, '');
INSERT INTO `bc73q_kunena_user_topics` VALUES(847, 3, 6, 1, 6, 1, 0, 1, '');
INSERT INTO `bc73q_kunena_user_topics` VALUES(848, 3, 6, 1, 7, 0, 0, 1, '');
