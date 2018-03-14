
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_acymailing_list`
--

DROP TABLE IF EXISTS `bc73q_acymailing_list`;
CREATE TABLE `bc73q_acymailing_list` (
  `name` varchar(250) NOT NULL,
  `description` text,
  `ordering` smallint(5) UNSIGNED DEFAULT '0',
  `listid` smallint(5) UNSIGNED NOT NULL,
  `published` tinyint(4) DEFAULT NULL,
  `userid` int(10) UNSIGNED DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `color` varchar(30) DEFAULT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `welmailid` mediumint(9) DEFAULT NULL,
  `unsubmailid` mediumint(9) DEFAULT NULL,
  `type` enum('list','campaign') NOT NULL DEFAULT 'list',
  `access_sub` varchar(250) NOT NULL DEFAULT 'all',
  `access_manage` varchar(250) NOT NULL DEFAULT 'none',
  `languages` varchar(250) NOT NULL DEFAULT 'all',
  `startrule` varchar(50) NOT NULL DEFAULT '0',
  `category` varchar(250) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bc73q_acymailing_list`
--

INSERT INTO `bc73q_acymailing_list` VALUES('Newsletters', 'Receive our latest news', 1, 1, 1, 846, 'mailing_list', '#3366ff', 1, NULL, NULL, 'list', 'all', 'none', 'all', '0', '');
