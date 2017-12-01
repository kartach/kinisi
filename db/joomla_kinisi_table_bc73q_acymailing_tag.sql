
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_acymailing_tag`
--

DROP TABLE IF EXISTS `bc73q_acymailing_tag`;
CREATE TABLE `bc73q_acymailing_tag` (
  `tagid` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `userid` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
