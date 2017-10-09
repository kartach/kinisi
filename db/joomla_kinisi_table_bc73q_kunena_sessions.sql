
DROP TABLE IF EXISTS `bc73q_kunena_sessions`;
CREATE TABLE `bc73q_kunena_sessions` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `allowed` text,
  `lasttime` int(11) NOT NULL DEFAULT '0',
  `readtopics` text,
  `currvisit` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `bc73q_kunena_sessions` VALUES(19, 'na', 1465478134, '0', 1466687744);
INSERT INTO `bc73q_kunena_sessions` VALUES(55, 'na', 1444224132, '0', 1445433740);
INSERT INTO `bc73q_kunena_sessions` VALUES(283, 'na', 1452089892, '0', 1452517940);
INSERT INTO `bc73q_kunena_sessions` VALUES(354, 'na', 1501226341, '0', 1501230660);
INSERT INTO `bc73q_kunena_sessions` VALUES(757, 'na', 1475675596, '0', 1476885244);
INSERT INTO `bc73q_kunena_sessions` VALUES(846, 'na', 1487580126, '0', 1498824837);
INSERT INTO `bc73q_kunena_sessions` VALUES(847, 'na', 1416912031, '0', 1418121958);
INSERT INTO `bc73q_kunena_sessions` VALUES(848, 'na', 1432031594, '0', 1432036031);
INSERT INTO `bc73q_kunena_sessions` VALUES(895, 'na', 1469090890, '0', 1469094062);
