
DROP TABLE IF EXISTS `bc73q_acymailing_urlclick`;
CREATE TABLE `bc73q_acymailing_urlclick` (
  `urlid` int(10) UNSIGNED NOT NULL,
  `mailid` mediumint(8) UNSIGNED NOT NULL,
  `click` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `subid` int(10) UNSIGNED NOT NULL,
  `date` int(10) UNSIGNED NOT NULL,
  `ip` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
