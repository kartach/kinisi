
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_acymailing_history`
--

DROP TABLE IF EXISTS `bc73q_acymailing_history`;
CREATE TABLE `bc73q_acymailing_history` (
  `subid` int(10) UNSIGNED NOT NULL,
  `date` int(10) UNSIGNED NOT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `action` varchar(50) NOT NULL COMMENT 'different actions: created,modified,confirmed',
  `data` text,
  `source` text,
  `mailid` mediumint(8) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bc73q_acymailing_history`
--

INSERT INTO `bc73q_acymailing_history` VALUES(3, 1418120944, '192.168.9.17', 'created', '', 'HTTP_REFERER::http://192.168.9.17/framework/default/index.php/user-registration\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 6.1; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0\nHTTP_HOST::192.168.9.17\nSERVER_ADDR::192.168.9.17\nREMOTE_ADDR::192.168.9.17\nREQUEST_URI::/framework/default/index.php/user-registration?task=registration.register\nQUERY_STRING::task=registration.register', 0);
INSERT INTO `bc73q_acymailing_history` VALUES(3, 1418121419, '192.168.9.17', 'confirmed', 'EXECUTED_BY::846 ( demo )', 'HTTP_REFERER::http://192.168.9.17/framework/default/administrator/index.php?option=com_users\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 6.1; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0\nHTTP_HOST::192.168.9.17\nSERVER_ADDR::192.168.9.17\nREMOTE_ADDR::192.168.9.17\nREQUEST_URI::/framework/default/administrator/index.php?option=com_users&view=users\nQUERY_STRING::option=com_users&view=users', 0);
INSERT INTO `bc73q_acymailing_history` VALUES(4, 1418121448, '192.168.9.17', 'created', '', 'HTTP_REFERER::http://192.168.9.17/framework/default/index.php/user-registration\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 6.1; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0\nHTTP_HOST::192.168.9.17\nSERVER_ADDR::192.168.9.17\nREMOTE_ADDR::192.168.9.17\nREQUEST_URI::/framework/default/index.php/user-registration?task=registration.register\nQUERY_STRING::task=registration.register', 0);
INSERT INTO `bc73q_acymailing_history` VALUES(4, 1418121459, '192.168.9.17', 'confirmed', 'EXECUTED_BY::846 ( demo )', 'HTTP_REFERER::http://192.168.9.17/framework/default/administrator/index.php?option=com_users&view=users\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 6.1; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0\nHTTP_HOST::192.168.9.17\nSERVER_ADDR::192.168.9.17\nREMOTE_ADDR::192.168.9.17\nREQUEST_URI::/framework/default/administrator/index.php?option=com_users&view=users\nQUERY_STRING::option=com_users&view=users', 0);
INSERT INTO `bc73q_acymailing_history` VALUES(5, 1418218543, '192.168.9.125', 'created', '', 'HTTP_REFERER::http://192.168.9.17/framework/default/\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36\nHTTP_HOST::192.168.9.17\nSERVER_ADDR::192.168.9.17\nREMOTE_ADDR::192.168.9.1\nREQUEST_URI::/framework/default/index.php', 0);
INSERT INTO `bc73q_acymailing_history` VALUES(6, 1427376525, '192.168.9.17', 'created', '', 'HTTP_REFERER::http://192.168.9.17/framework/\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 6.1; WOW64; rv:36.0) Gecko/20100101 Firefox/36.0\nHTTP_HOST::192.168.9.17\nSERVER_ADDR::192.168.9.17\nREMOTE_ADDR::192.168.9.17\nREQUEST_URI::/framework/index.php', 0);
INSERT INTO `bc73q_acymailing_history` VALUES(2, 1430752922, '192.168.9.17', 'modified', 'EXECUTED_BY::846 ( demo )', 'HTTP_REFERER::http://192.168.9.17/framework/\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko/20100101 Firefox/37.0\nHTTP_HOST::192.168.9.17\nSERVER_ADDR::192.168.9.17\nREMOTE_ADDR::192.168.9.17\nREQUEST_URI::/framework/index.php', 0);
INSERT INTO `bc73q_acymailing_history` VALUES(7, 1443442316, '192.168.9.17', 'created', '', 'HTTP_REFERER::http://192.168.9.17/joomla/beta/\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0\nHTTP_HOST::192.168.9.17\nSERVER_ADDR::192.168.9.17\nREMOTE_ADDR::192.168.9.17\nREQUEST_URI::/joomla/beta/index.php', 0);
INSERT INTO `bc73q_acymailing_history` VALUES(8, 1466683696, '192.168.9.155', 'created', '', 'HTTP_REFERER::http://192.168.9.155/joomla/master-update/v1/\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 6.1; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0\nHTTP_HOST::192.168.9.155\nSERVER_ADDR::192.168.9.155\nREMOTE_ADDR::192.168.9.155\nREQUEST_URI::/joomla/master-update/v1/index.php', 0);
