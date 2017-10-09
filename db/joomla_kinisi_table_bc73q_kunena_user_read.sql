
DROP TABLE IF EXISTS `bc73q_kunena_user_read`;
CREATE TABLE `bc73q_kunena_user_read` (
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `bc73q_kunena_user_read` VALUES(846, 1, 2, 1, 1482315296);
INSERT INTO `bc73q_kunena_user_read` VALUES(846, 2, 5, 5, 1444814130);
INSERT INTO `bc73q_kunena_user_read` VALUES(847, 2, 5, 5, 1418121885);
INSERT INTO `bc73q_kunena_user_read` VALUES(847, 3, 6, 6, 1418121958);
INSERT INTO `bc73q_kunena_user_read` VALUES(848, 3, 6, 7, 1418122014);
