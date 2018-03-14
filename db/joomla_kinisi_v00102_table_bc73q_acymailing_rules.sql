
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_acymailing_rules`
--

DROP TABLE IF EXISTS `bc73q_acymailing_rules`;
CREATE TABLE `bc73q_acymailing_rules` (
  `ruleid` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `ordering` smallint(6) DEFAULT NULL,
  `regex` text NOT NULL,
  `executed_on` text NOT NULL,
  `action_message` text NOT NULL,
  `action_user` text NOT NULL,
  `published` tinyint(3) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
