
DROP TABLE IF EXISTS `bc73q_acymailing_queue`;
CREATE TABLE `bc73q_acymailing_queue` (
  `senddate` int(10) UNSIGNED NOT NULL,
  `subid` int(10) UNSIGNED NOT NULL,
  `mailid` mediumint(8) UNSIGNED NOT NULL,
  `priority` tinyint(3) UNSIGNED DEFAULT '3',
  `try` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `paramqueue` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
