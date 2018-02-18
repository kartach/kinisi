
DROP TABLE IF EXISTS `bc73q_komento_mailq`;
CREATE TABLE `bc73q_komento_mailq` (
  `id` int(11) NOT NULL,
  `mailfrom` varchar(255) DEFAULT NULL,
  `fromname` varchar(255) DEFAULT NULL,
  `recipient` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `created` datetime NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'text',
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
