
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

INSERT INTO `bc73q_kunena_user_topics` VALUES(630, 19, 2, 1, 30, 0, 0, 1, '');
INSERT INTO `bc73q_kunena_user_topics` VALUES(849, 19, 2, 1, 27, 1, 0, 1, '');
INSERT INTO `bc73q_kunena_user_topics` VALUES(849, 21, 3, 1, 29, 1, 0, 1, '');
