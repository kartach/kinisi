
DROP TABLE IF EXISTS `bc73q_komento_hashkeys`;
CREATE TABLE `bc73q_komento_hashkeys` (
  `id` bigint(11) NOT NULL,
  `uid` bigint(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `key` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
