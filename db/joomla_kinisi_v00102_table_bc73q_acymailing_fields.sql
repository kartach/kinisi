
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_acymailing_fields`
--

DROP TABLE IF EXISTS `bc73q_acymailing_fields`;
CREATE TABLE `bc73q_acymailing_fields` (
  `fieldid` smallint(5) UNSIGNED NOT NULL,
  `fieldname` varchar(250) NOT NULL,
  `namekey` varchar(50) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `value` text NOT NULL,
  `published` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `ordering` smallint(5) UNSIGNED DEFAULT '99',
  `options` text,
  `core` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `required` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `backend` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `frontcomp` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `default` text,
  `listing` tinyint(3) UNSIGNED DEFAULT NULL,
  `frontlisting` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `frontjoomlaprofile` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `frontjoomlaregistration` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `joomlaprofile` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `access` varchar(250) NOT NULL DEFAULT 'all',
  `fieldcat` int(11) NOT NULL DEFAULT '0',
  `listingfilter` tinyint(4) DEFAULT NULL,
  `frontlistingfilter` tinyint(4) DEFAULT NULL,
  `frontform` tinyint(4) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bc73q_acymailing_fields`
--

INSERT INTO `bc73q_acymailing_fields` VALUES(1, 'NAMECAPTION', 'name', 'text', '', 1, 1, '', 1, 1, 1, 1, '', 1, 1, 0, 0, 0, 'all', 0, NULL, NULL, 1);
INSERT INTO `bc73q_acymailing_fields` VALUES(2, 'EMAILCAPTION', 'email', 'text', '', 1, 2, '', 1, 1, 1, 1, '', 1, 1, 0, 0, 0, 'all', 0, NULL, NULL, 1);
INSERT INTO `bc73q_acymailing_fields` VALUES(3, 'RECEIVE', 'html', 'radio', '0::JOOMEXT_TEXT\n1::HTML', 1, 3, '', 1, 1, 1, 1, '1', 1, 0, 0, 0, 0, 'all', 0, NULL, NULL, 1);
