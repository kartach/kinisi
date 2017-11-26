
DROP TABLE IF EXISTS `bc73q_acymailing_userstats`;
CREATE TABLE `bc73q_acymailing_userstats` (
  `mailid` mediumint(8) UNSIGNED NOT NULL,
  `subid` int(10) UNSIGNED NOT NULL,
  `html` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `sent` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `senddate` int(10) UNSIGNED NOT NULL,
  `open` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `opendate` int(11) NOT NULL,
  `bounce` tinyint(4) NOT NULL DEFAULT '0',
  `fail` tinyint(4) NOT NULL DEFAULT '0',
  `ip` varchar(100) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL,
  `browser_version` tinyint(3) UNSIGNED DEFAULT NULL,
  `is_mobile` tinyint(3) UNSIGNED DEFAULT NULL,
  `mobile_os` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `bouncerule` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
