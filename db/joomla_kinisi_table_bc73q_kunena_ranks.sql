
DROP TABLE IF EXISTS `bc73q_kunena_ranks`;
CREATE TABLE `bc73q_kunena_ranks` (
  `rank_id` mediumint(8) UNSIGNED NOT NULL,
  `rank_title` varchar(255) NOT NULL DEFAULT '',
  `rank_min` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rank_special` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `rank_image` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `bc73q_kunena_ranks` VALUES(1, 'New Member', 0, 0, 'rank1.gif');
INSERT INTO `bc73q_kunena_ranks` VALUES(2, 'Junior Member', 20, 0, 'rank2.gif');
INSERT INTO `bc73q_kunena_ranks` VALUES(3, 'Senior Member', 40, 0, 'rank3.gif');
INSERT INTO `bc73q_kunena_ranks` VALUES(4, 'Premium Member', 80, 0, 'rank4.gif');
INSERT INTO `bc73q_kunena_ranks` VALUES(5, 'Elite Member', 160, 0, 'rank5.gif');
INSERT INTO `bc73q_kunena_ranks` VALUES(6, 'Platinum Member', 320, 0, 'rank6.gif');
INSERT INTO `bc73q_kunena_ranks` VALUES(7, 'Administrator', 0, 1, 'rankadmin.gif');
INSERT INTO `bc73q_kunena_ranks` VALUES(8, 'Moderator', 0, 1, 'rankmod.gif');
INSERT INTO `bc73q_kunena_ranks` VALUES(9, 'Spammer', 0, 1, 'rankspammer.gif');
INSERT INTO `bc73q_kunena_ranks` VALUES(10, 'Banned', 0, 1, 'rankbanned.gif');
