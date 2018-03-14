
DROP TABLE IF EXISTS `bc73q_acymailing_filter`;
CREATE TABLE `bc73q_acymailing_filter` (
  `filid` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `description` text,
  `published` tinyint(3) UNSIGNED DEFAULT NULL,
  `lasttime` int(10) UNSIGNED DEFAULT NULL,
  `trigger` text,
  `report` text,
  `action` text,
  `filter` text,
  `daycron` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
