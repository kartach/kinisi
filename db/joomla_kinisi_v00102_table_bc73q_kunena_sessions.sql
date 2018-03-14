
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_kunena_sessions`
--

DROP TABLE IF EXISTS `bc73q_kunena_sessions`;
CREATE TABLE `bc73q_kunena_sessions` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `allowed` text,
  `lasttime` int(11) NOT NULL DEFAULT '0',
  `readtopics` text,
  `currvisit` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bc73q_kunena_sessions`
--

INSERT INTO `bc73q_kunena_sessions` VALUES(19, 'na', 1465478134, '0', 1466687744);
INSERT INTO `bc73q_kunena_sessions` VALUES(55, 'na', 1444224132, '0', 1445433740);
INSERT INTO `bc73q_kunena_sessions` VALUES(283, 'na', 1452089892, '0', 1452517940);
INSERT INTO `bc73q_kunena_sessions` VALUES(354, 'na', 1501226341, '0', 1501230660);
INSERT INTO `bc73q_kunena_sessions` VALUES(630, 'na', 1510248742, '0', 1510262168);
INSERT INTO `bc73q_kunena_sessions` VALUES(757, 'na', 1475675596, '0', 1476885244);
INSERT INTO `bc73q_kunena_sessions` VALUES(846, 'na', 1487580126, '0', 1498824837);
INSERT INTO `bc73q_kunena_sessions` VALUES(847, 'na', 1416912031, '0', 1418121958);
INSERT INTO `bc73q_kunena_sessions` VALUES(848, 'na', 1432031594, '0', 1432036031);
INSERT INTO `bc73q_kunena_sessions` VALUES(849, 'na', 1509970201, '0', 1510249359);
INSERT INTO `bc73q_kunena_sessions` VALUES(850, 'na', 1510252269, '0', 1510317266);
INSERT INTO `bc73q_kunena_sessions` VALUES(851, 'na', 1510249596, '0', 1510594331);
INSERT INTO `bc73q_kunena_sessions` VALUES(852, 'na', 1509040022, '0', 1510249650);
INSERT INTO `bc73q_kunena_sessions` VALUES(853, 'na', 1511283171, '0', 1511287958);
INSERT INTO `bc73q_kunena_sessions` VALUES(854, 'na', 1511285324, '0', 1511289950);
INSERT INTO `bc73q_kunena_sessions` VALUES(855, 'na', 1513359641, '0', 1513903315);
INSERT INTO `bc73q_kunena_sessions` VALUES(895, 'na', 1469090890, '0', 1469094062);
