
DROP TABLE IF EXISTS `bc73q_kunena_user_read`;
CREATE TABLE `bc73q_kunena_user_read` (
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `bc73q_kunena_user_read` VALUES(630, 19, 2, 30, 1510262168);
INSERT INTO `bc73q_kunena_user_read` VALUES(849, 19, 2, 27, 1510248194);
INSERT INTO `bc73q_kunena_user_read` VALUES(849, 21, 3, 29, 1510248841);
INSERT INTO `bc73q_kunena_user_read` VALUES(851, 19, 2, 30, 1510594331);
INSERT INTO `bc73q_kunena_user_read` VALUES(851, 21, 3, 31, 1510594293);
