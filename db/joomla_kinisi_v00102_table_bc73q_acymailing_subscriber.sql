
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_acymailing_subscriber`
--

DROP TABLE IF EXISTS `bc73q_acymailing_subscriber`;
CREATE TABLE `bc73q_acymailing_subscriber` (
  `subid` int(10) UNSIGNED NOT NULL,
  `email` varchar(200) NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(250) NOT NULL DEFAULT '',
  `created` int(10) UNSIGNED DEFAULT NULL,
  `confirmed` tinyint(4) NOT NULL DEFAULT '0',
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `accept` tinyint(4) NOT NULL DEFAULT '1',
  `ip` varchar(100) DEFAULT NULL,
  `html` tinyint(4) NOT NULL DEFAULT '1',
  `key` varchar(250) DEFAULT NULL,
  `confirmed_date` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `confirmed_ip` varchar(100) DEFAULT NULL,
  `lastopen_date` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastopen_ip` varchar(100) DEFAULT NULL,
  `lastclick_date` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastsent_date` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `source` varchar(50) NOT NULL DEFAULT '',
  `filterflags` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bc73q_acymailing_subscriber`
--

INSERT INTO `bc73q_acymailing_subscriber` VALUES(1, 'admin@admin.com', 787, 'Super User', 1414757087, 1, 1, 1, NULL, 1, NULL, 0, NULL, 0, NULL, 0, 0, '', '');
INSERT INTO `bc73q_acymailing_subscriber` VALUES(2, 'demo@demolink.org', 846, 'Demo User', 1350460572, 1, 1, 1, NULL, 1, NULL, 0, NULL, 0, NULL, 0, 0, '', '');
INSERT INTO `bc73q_acymailing_subscriber` VALUES(3, 'lorem_ipsum@demolink.org', 847, 'Lorem Ipsum', 1418120944, 1, 1, 1, '192.168.9.17', 1, 'VgqgGnB4hRm6xz', 1418121419, '192.168.9.17', 0, NULL, 0, 0, 'joomla', '');
INSERT INTO `bc73q_acymailing_subscriber` VALUES(4, 'dolor_sit@demolink.org', 848, 'Dolor Sit', 1418121448, 1, 1, 1, '192.168.9.17', 1, 'GrHSwPnkMc0MCT', 1418121459, '192.168.9.17', 0, NULL, 0, 0, 'joomla', '');
INSERT INTO `bc73q_acymailing_subscriber` VALUES(6, 'admin@admin.co', 0, 'Admin', 1427376525, 0, 1, 1, '192.168.9.17', 1, 'bywCJIRslYdTAD', 0, NULL, 0, NULL, 0, 0, '', '');
INSERT INTO `bc73q_acymailing_subscriber` VALUES(9, 'karkoskova.klara@gmail.com', 630, 'Klára K', 1507486274, 1, 1, 1, NULL, 1, NULL, 0, NULL, 0, NULL, 0, 0, '', '');
INSERT INTO `bc73q_acymailing_subscriber` VALUES(10, 'czechtraveldream@gmail.com', 849, 'Alena H.', 1509965351, 1, 1, 1, NULL, 1, NULL, 0, NULL, 0, NULL, 0, 0, '', '');
INSERT INTO `bc73q_acymailing_subscriber` VALUES(11, 'martin.vojtovic@kinisi.cz', 850, 'Martin Vojtovič', 1510245518, 1, 1, 1, NULL, 1, NULL, 0, NULL, 0, NULL, 0, 0, '', '');
INSERT INTO `bc73q_acymailing_subscriber` VALUES(12, 'lenka.augustinova@kinisi.cz', 851, 'Lenka Augustínová', 1510245633, 1, 1, 1, NULL, 1, NULL, 0, NULL, 0, NULL, 0, 0, '', '');
INSERT INTO `bc73q_acymailing_subscriber` VALUES(13, 'michaela.hrickova@kinisi.cz', 852, 'Michaela Hricková', 1510245737, 1, 1, 1, NULL, 1, NULL, 0, NULL, 0, NULL, 0, 0, '', '');
INSERT INTO `bc73q_acymailing_subscriber` VALUES(14, 'testhdbtest@gmail.com', 855, 'Dadad Kakak', 1513354420, 1, 1, 1, NULL, 1, NULL, 0, NULL, 0, NULL, 0, 0, '', '');
INSERT INTO `bc73q_acymailing_subscriber` VALUES(15, 'k_cejkova@email.cz', 856, 'Klára Karkošková', 1513356304, 1, 1, 1, NULL, 1, NULL, 0, NULL, 0, NULL, 0, 0, '', '');
INSERT INTO `bc73q_acymailing_subscriber` VALUES(16, 'tomas.mocik@kinisi.cz', 859, 'Tomáš Mocik', 1518968100, 1, 1, 1, NULL, 1, NULL, 0, NULL, 0, NULL, 0, 0, '', '');
