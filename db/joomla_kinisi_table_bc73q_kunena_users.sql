
DROP TABLE IF EXISTS `bc73q_kunena_users`;
CREATE TABLE `bc73q_kunena_users` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `status_text` varchar(255) NOT NULL DEFAULT '',
  `view` varchar(8) NOT NULL DEFAULT '',
  `signature` text,
  `moderator` int(11) DEFAULT '0',
  `banned` datetime DEFAULT NULL,
  `ordering` int(11) DEFAULT '0',
  `posts` int(11) DEFAULT '0',
  `avatar` varchar(255) DEFAULT NULL,
  `karma` int(11) DEFAULT '0',
  `karma_time` int(11) DEFAULT '0',
  `group_id` int(4) DEFAULT '1',
  `uhits` int(11) DEFAULT '0',
  `personalText` tinytext,
  `gender` tinyint(4) NOT NULL DEFAULT '0',
  `birthdate` date NOT NULL DEFAULT '0001-01-01',
  `location` varchar(50) DEFAULT NULL,
  `icq` varchar(50) DEFAULT NULL,
  `aim` varchar(50) DEFAULT NULL,
  `yim` varchar(50) DEFAULT NULL,
  `microsoft` varchar(50) DEFAULT NULL,
  `telegram` varchar(50) DEFAULT NULL,
  `vk` varchar(50) DEFAULT NULL,
  `skype` varchar(50) DEFAULT NULL,
  `twitter` varchar(50) DEFAULT NULL,
  `facebook` varchar(50) DEFAULT NULL,
  `google` varchar(50) DEFAULT NULL,
  `myspace` varchar(50) DEFAULT NULL,
  `linkedin` varchar(50) DEFAULT NULL,
  `delicious` varchar(50) DEFAULT NULL,
  `friendfeed` varchar(50) DEFAULT NULL,
  `digg` varchar(50) DEFAULT NULL,
  `instagram` varchar(50) DEFAULT NULL,
  `qq` varchar(50) DEFAULT NULL,
  `qzone` varchar(50) DEFAULT NULL,
  `weibo` varchar(50) DEFAULT NULL,
  `wechat` varchar(50) DEFAULT NULL,
  `apple` varchar(50) DEFAULT NULL,
  `blogspot` varchar(50) DEFAULT NULL,
  `flickr` varchar(50) DEFAULT NULL,
  `bebo` varchar(50) DEFAULT NULL,
  `websitename` varchar(50) DEFAULT NULL,
  `websiteurl` varchar(50) DEFAULT NULL,
  `rank` tinyint(4) NOT NULL DEFAULT '0',
  `hideEmail` tinyint(1) NOT NULL DEFAULT '1',
  `showOnline` tinyint(1) NOT NULL DEFAULT '1',
  `canSubscribe` tinyint(1) NOT NULL DEFAULT '-1',
  `userListtime` int(11) NOT NULL DEFAULT '-2',
  `thankyou` int(11) DEFAULT '0',
  `ip` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `bc73q_kunena_users` VALUES(19, 0, '', '', NULL, 0, NULL, 0, 0, NULL, 0, 0, 1, 0, NULL, 0, '0001-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 1, -2, 0, '');
INSERT INTO `bc73q_kunena_users` VALUES(55, 0, '', '', NULL, 0, NULL, 0, 0, NULL, 0, 0, 1, 0, NULL, 0, '0001-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 1, -2, 0, '');
INSERT INTO `bc73q_kunena_users` VALUES(283, 0, '', '', NULL, 0, NULL, 0, 0, NULL, 0, 0, 1, 0, NULL, 0, '0001-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 1, -2, 0, '');
INSERT INTO `bc73q_kunena_users` VALUES(317, 0, '', '', NULL, 0, NULL, 0, 0, NULL, 0, 0, 1, 0, NULL, 0, '0001-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 1, -2, 1, '');
INSERT INTO `bc73q_kunena_users` VALUES(354, 0, '', '', NULL, 0, NULL, 0, 0, NULL, 0, 0, 1, 0, NULL, 0, '0001-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, -1, -2, 0, '');
INSERT INTO `bc73q_kunena_users` VALUES(545, 0, '', '', NULL, 0, NULL, 0, 0, NULL, 0, 0, 1, 0, NULL, 0, '0001-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, -1, -2, 0, '');
INSERT INTO `bc73q_kunena_users` VALUES(630, 0, '', '', '', 1, NULL, 0, 2, 'users/avatar630.png', 0, 0, 1, 0, '', 0, '2031-01-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 1, -1, -2, 0, '::1');
INSERT INTO `bc73q_kunena_users` VALUES(741, 0, '', '', NULL, 0, NULL, 0, 0, NULL, 0, 0, 1, 0, NULL, 0, '0001-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 1, -2, 0, '');
INSERT INTO `bc73q_kunena_users` VALUES(757, 0, '', '', NULL, 0, NULL, 0, 0, NULL, 0, 0, 1, 0, NULL, 0, '0001-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, -1, -2, 0, '');
INSERT INTO `bc73q_kunena_users` VALUES(815, 0, '', '', NULL, 0, NULL, 0, 0, NULL, 0, 0, 1, 0, NULL, 0, '0001-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, -1, -2, 0, '');
INSERT INTO `bc73q_kunena_users` VALUES(846, 0, '', '', '', 0, NULL, 0, 2, NULL, 1, 1435741740, 1, 2, '', 1, '0001-01-01', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 0, 1, 1, 1, -2, 0, '');
INSERT INTO `bc73q_kunena_users` VALUES(847, 0, '', '', NULL, 0, NULL, 0, 2, NULL, 1, 1418121732, 1, 24, NULL, 0, '0001-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 1, -2, 1, '');
INSERT INTO `bc73q_kunena_users` VALUES(848, 0, '', '', NULL, 0, NULL, 0, 1, NULL, 0, 1418121990, 1, 10, NULL, 0, '0001-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 1, -2, 0, '');
INSERT INTO `bc73q_kunena_users` VALUES(849, 0, '', '', NULL, 0, NULL, 0, 2, NULL, 0, 0, 1, 1, NULL, 0, '0001-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 1, -2, 0, '::1');
INSERT INTO `bc73q_kunena_users` VALUES(850, 0, '', '', '', 0, NULL, 0, 0, 'users/avatar850.png', 0, 0, 1, 0, '', 0, '0001-01-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 1, -1, -2, 0, '');
INSERT INTO `bc73q_kunena_users` VALUES(851, 0, '', '', '', 0, NULL, 0, 1, 'users/avatar851.png', 0, 0, 1, 0, '', 0, '0001-01-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 1, -1, -2, 0, '84.246.166.29');
INSERT INTO `bc73q_kunena_users` VALUES(852, 0, '', '', '', 0, NULL, 0, 0, 'users/avatar852.png', 0, 0, 1, 0, '', 0, '0001-01-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 1, -1, -2, 0, '');
INSERT INTO `bc73q_kunena_users` VALUES(853, 0, '', '', 'Circumstance depth spot lovely sundays the reckon gaining fill glorious relieved terrible point process reflection charges lodge miserable shoulders. Disappeared equal lows locked stating camp facing effects v. limiting required visiting rules pairing preventing accesses man\'s excepting succeeded gebaeudereinigung', 0, NULL, 0, 0, 'users/avatar853.jpg', 0, 0, 1, 0, '', 1, '1962-07-02', 'Dartford', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'kuechen aktiv dresden', 'www.moebel2m.de/dresden.html', 0, 1, 1, -1, -2, 0, '');
INSERT INTO `bc73q_kunena_users` VALUES(854, 0, '', '', 'Themselves frank past locked station boil drying designs cut labourer sentence citizens ships managed succeeding chiefly might observing collection coaching', 0, NULL, 0, 0, 'users/avatar854.jpg', 0, 0, 1, 0, '', 1, '1979-05-05', 'Colchester', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'coaching-szczecin.ovh', 'www.coaching-szczecin.ovh', 0, 1, 1, -1, -2, 0, '');
INSERT INTO `bc73q_kunena_users` VALUES(895, 0, '', '', NULL, 0, NULL, 0, 0, NULL, 0, 0, 1, 0, NULL, 0, '0001-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, -1, -2, 0, '');
