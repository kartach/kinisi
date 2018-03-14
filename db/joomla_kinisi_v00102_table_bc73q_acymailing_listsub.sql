
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_acymailing_listsub`
--

DROP TABLE IF EXISTS `bc73q_acymailing_listsub`;
CREATE TABLE `bc73q_acymailing_listsub` (
  `listid` smallint(5) UNSIGNED NOT NULL,
  `subid` int(10) UNSIGNED NOT NULL,
  `subdate` int(10) UNSIGNED DEFAULT NULL,
  `unsubdate` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bc73q_acymailing_listsub`
--

INSERT INTO `bc73q_acymailing_listsub` VALUES(1, 1, 1415263735, NULL, 1);
INSERT INTO `bc73q_acymailing_listsub` VALUES(1, 2, 1415263735, NULL, 1);
INSERT INTO `bc73q_acymailing_listsub` VALUES(1, 6, 1427376525, NULL, 1);
