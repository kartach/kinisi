
DROP TABLE IF EXISTS `bc73q_acymailing_forward`;
CREATE TABLE `bc73q_acymailing_forward` (
  `subid` int(10) UNSIGNED NOT NULL,
  `mailid` mediumint(8) UNSIGNED NOT NULL,
  `date` int(10) UNSIGNED NOT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `nbforwarded` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
