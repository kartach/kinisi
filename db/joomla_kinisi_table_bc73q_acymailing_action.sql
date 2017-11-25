
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_acymailing_action`
--

DROP TABLE IF EXISTS `bc73q_acymailing_action`;
CREATE TABLE `bc73q_acymailing_action` (
  `action_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `frequency` int(10) UNSIGNED NOT NULL,
  `nextdate` int(10) UNSIGNED NOT NULL,
  `server` varchar(255) NOT NULL,
  `port` varchar(50) NOT NULL,
  `connection_method` varchar(10) NOT NULL DEFAULT '0',
  `secure_method` varchar(10) NOT NULL DEFAULT '0',
  `self_signed` tinyint(4) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `userid` int(10) UNSIGNED DEFAULT NULL,
  `conditions` text,
  `actions` text,
  `report` text,
  `published` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` smallint(5) UNSIGNED DEFAULT '0',
  `delete_wrong_emails` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
