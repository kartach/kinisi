
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

INSERT INTO `bc73q_kunena_messages` VALUES(1, 0, 1, 2, '', 317, '', 'Welcome to Kunena!', 1399057228, '127.0.0.1', 0, 0, 0, 0, 0, 0, 846, 1423728734, '');
INSERT INTO `bc73q_kunena_messages` VALUES(2, 0, 2, 5, 'demo', 846, '', 'Morbi tincidunt sodales neque eu rutrum', 1415103771, '192.168.9.17', 0, 0, 0, 0, 0, 0, 846, 1444812838, '');
INSERT INTO `bc73q_kunena_messages` VALUES(3, 2, 2, 5, 'demo', 846, '', 'General Template Issues, Questions And Problems', 1415179292, '192.168.9.17', 0, 0, 0, 0, 0, 0, 846, 1444813202, '');
INSERT INTO `bc73q_kunena_messages` VALUES(4, 2, 2, 5, 'lorem_ipsum', 847, '', 'Personal diary in Kunena Forum', 1418121749, '192.168.9.17', 0, 0, 0, 0, 0, 0, 846, 1444813240, '');
INSERT INTO `bc73q_kunena_messages` VALUES(5, 2, 2, 5, 'lorem_ipsum', 847, '', 'Multiples templates (linked to forum categories)', 1418121786, '192.168.9.17', 0, 0, 0, 0, 0, 0, 846, 1444813776, '');
INSERT INTO `bc73q_kunena_messages` VALUES(6, 0, 3, 6, 'lorem_ipsum', 847, '', 'Pellentesque non libero', 1418121957, '192.168.9.17', 0, 0, 0, 0, 0, 0, NULL, NULL, '');
INSERT INTO `bc73q_kunena_messages` VALUES(7, 6, 3, 6, 'dolor_sit', 848, '', 'Pellentesque non libero', 1418122011, '192.168.9.17', 0, 0, 0, 0, 0, 0, NULL, NULL, '');
