
DROP TABLE IF EXISTS `bc73q_kunena_messages`;
CREATE TABLE `bc73q_kunena_messages` (
  `id` int(11) NOT NULL,
  `parent` int(11) DEFAULT '0',
  `thread` int(11) DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `name` tinytext,
  `userid` int(11) NOT NULL DEFAULT '0',
  `email` tinytext,
  `subject` tinytext,
  `time` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(128) DEFAULT NULL,
  `topic_emoticon` int(11) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `hold` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `hits` int(11) DEFAULT '0',
  `moved` tinyint(4) DEFAULT '0',
  `modified_by` int(7) DEFAULT NULL,
  `modified_time` int(11) DEFAULT NULL,
  `modified_reason` tinytext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `bc73q_kunena_messages` VALUES(12, 0, 5, 2, 'Klara', 630, '', 'ssssss', 1509998110, '::1', 0, 0, 0, 0, 0, 0, NULL, NULL, '');
INSERT INTO `bc73q_kunena_messages` VALUES(13, 0, 6, 2, 'Klara', 630, '', 'ff', 1509998178, '::1', 0, 0, 0, 0, 0, 0, NULL, NULL, '');
INSERT INTO `bc73q_kunena_messages` VALUES(14, 0, 7, 2, 'Klara', 630, '', 'ff', 1509998199, '::1', 0, 0, 0, 0, 0, 0, NULL, NULL, '');
INSERT INTO `bc73q_kunena_messages` VALUES(15, 0, 8, 2, 'Administrátor Klára K.', 630, '', 'dddddddd', 1510081228, '::1', 0, 0, 0, 0, 0, 0, NULL, NULL, '');
INSERT INTO `bc73q_kunena_messages` VALUES(17, 0, 9, 15, 'Administrátor Klára K.', 630, '', 'Dotaz do poradny', 1510130020, '::1', 0, 0, 0, 0, 0, 0, NULL, NULL, '');
INSERT INTO `bc73q_kunena_messages` VALUES(18, 0, 10, 15, 'Administrátor Klára K.', 630, '', 'Dotaz do poradny', 1510131517, '::1', 0, 0, 0, 0, 0, 0, NULL, NULL, '');
INSERT INTO `bc73q_kunena_messages` VALUES(19, 0, 11, 2, 'Administrátor Klára K.', 630, '', 'ss', 1510131543, '::1', 0, 0, 0, 0, 0, 0, NULL, NULL, '');
INSERT INTO `bc73q_kunena_messages` VALUES(20, 0, 12, 2, 'Administrátor Klára K.', 630, '', 'ddd', 1510132195, '::1', 0, 0, 0, 0, 0, 0, NULL, NULL, '');
INSERT INTO `bc73q_kunena_messages` VALUES(21, 0, 13, 2, 'Administrátor Klára K.', 630, '', 'xx', 1510132322, '::1', 0, 0, 0, 0, 0, 0, NULL, NULL, '');
INSERT INTO `bc73q_kunena_messages` VALUES(22, 0, 14, 2, 'Administrátor Klára K.', 630, '', 'c', 1510133156, '::1', 0, 0, 0, 0, 0, 0, NULL, NULL, '');
INSERT INTO `bc73q_kunena_messages` VALUES(23, 0, 15, 2, 'Administrátor Klára K.', 630, '', 'ssssss', 1510133787, '::1', 0, 0, 0, 0, 0, 0, NULL, NULL, '');
INSERT INTO `bc73q_kunena_messages` VALUES(24, 0, 16, 2, 'Administrátor Klára K.', 630, '', 'ss', 1510135800, '::1', 0, 0, 0, 0, 0, 0, NULL, NULL, '');
INSERT INTO `bc73q_kunena_messages` VALUES(25, 0, 17, 2, 'Administrátor Klára K.', 630, '', 's', 1510142240, '::1', 0, 0, 0, 0, 0, 0, NULL, NULL, '');
INSERT INTO `bc73q_kunena_messages` VALUES(27, 0, 19, 2, 'AlenaH', 849, '', 'Komentáře', 1510248194, '::1', 0, 0, 0, 0, 0, 0, NULL, NULL, '');
INSERT INTO `bc73q_kunena_messages` VALUES(29, 0, 21, 3, 'AlenaH', 849, '', 'Skupinové cvičení, cvičení maminek s dětma', 1510248840, '::1', 0, 0, 0, 0, 0, 0, NULL, NULL, '');
INSERT INTO `bc73q_kunena_messages` VALUES(30, 27, 19, 2, 'Administrátor', 630, '', 'Komentáře', 1510262167, '::1', 0, 0, 0, 0, 0, 0, NULL, NULL, '');
INSERT INTO `bc73q_kunena_messages` VALUES(31, 29, 21, 3, 'Lenka Augustínová', 851, '', 'Skupinové cvičení, cvičení maminek s dětma', 1510258840, '84.246.166.29', 0, 0, 0, 0, 0, 0, NULL, NULL, '');
