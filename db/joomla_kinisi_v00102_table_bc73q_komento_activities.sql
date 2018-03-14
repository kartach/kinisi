
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_komento_activities`
--

DROP TABLE IF EXISTS `bc73q_komento_activities`;
CREATE TABLE `bc73q_komento_activities` (
  `id` bigint(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `comment_id` bigint(20) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bc73q_komento_activities`
--

INSERT INTO `bc73q_komento_activities` VALUES(2, 'comment', 30, 0, '2016-05-06 14:28:30', 1);
INSERT INTO `bc73q_komento_activities` VALUES(3, 'comment', 29, 0, '2016-05-06 14:28:30', 1);
INSERT INTO `bc73q_komento_activities` VALUES(4, 'comment', 50, 0, '2016-05-06 14:28:41', 1);
INSERT INTO `bc73q_komento_activities` VALUES(5, 'comment', 49, 0, '2016-05-06 14:28:41', 1);
INSERT INTO `bc73q_komento_activities` VALUES(6, 'comment', 48, 0, '2016-05-06 14:28:41', 1);
INSERT INTO `bc73q_komento_activities` VALUES(7, 'comment', 47, 0, '2016-05-06 14:28:41', 1);
INSERT INTO `bc73q_komento_activities` VALUES(8, 'comment', 46, 0, '2016-05-06 14:28:41', 1);
INSERT INTO `bc73q_komento_activities` VALUES(9, 'comment', 45, 0, '2016-05-06 14:28:41', 1);
INSERT INTO `bc73q_komento_activities` VALUES(10, 'comment', 44, 0, '2016-05-06 14:28:41', 1);
INSERT INTO `bc73q_komento_activities` VALUES(11, 'comment', 43, 0, '2016-05-06 14:28:41', 1);
INSERT INTO `bc73q_komento_activities` VALUES(12, 'comment', 42, 0, '2016-05-06 14:28:41', 1);
INSERT INTO `bc73q_komento_activities` VALUES(13, 'comment', 41, 0, '2016-05-06 14:28:41', 1);
INSERT INTO `bc73q_komento_activities` VALUES(14, 'comment', 40, 0, '2016-05-06 14:28:41', 1);
INSERT INTO `bc73q_komento_activities` VALUES(15, 'comment', 39, 0, '2016-05-06 14:28:41', 1);
INSERT INTO `bc73q_komento_activities` VALUES(16, 'comment', 38, 0, '2016-05-06 14:28:41', 1);
INSERT INTO `bc73q_komento_activities` VALUES(17, 'comment', 37, 0, '2016-05-06 14:28:41', 1);
INSERT INTO `bc73q_komento_activities` VALUES(18, 'comment', 36, 0, '2016-05-06 14:28:41', 1);
INSERT INTO `bc73q_komento_activities` VALUES(19, 'comment', 35, 0, '2016-05-06 14:28:41', 1);
INSERT INTO `bc73q_komento_activities` VALUES(20, 'comment', 34, 0, '2016-05-06 14:28:41', 1);
INSERT INTO `bc73q_komento_activities` VALUES(21, 'comment', 33, 0, '2016-05-06 14:28:41', 1);
INSERT INTO `bc73q_komento_activities` VALUES(22, 'comment', 32, 0, '2016-05-06 14:28:41', 1);
INSERT INTO `bc73q_komento_activities` VALUES(23, 'comment', 31, 0, '2016-05-06 14:28:41', 1);
