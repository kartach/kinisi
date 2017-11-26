
DROP TABLE IF EXISTS `bc73q_kunena_rate`;
CREATE TABLE `bc73q_kunena_rate` (
  `id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `rate` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
