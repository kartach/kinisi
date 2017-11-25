
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_acymailing_stats`
--

DROP TABLE IF EXISTS `bc73q_acymailing_stats`;
CREATE TABLE `bc73q_acymailing_stats` (
  `mailid` mediumint(8) UNSIGNED NOT NULL,
  `senthtml` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `senttext` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `senddate` int(10) UNSIGNED NOT NULL,
  `openunique` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `opentotal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bounceunique` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `fail` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `clicktotal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `clickunique` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `unsub` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forward` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `bouncedetails` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
