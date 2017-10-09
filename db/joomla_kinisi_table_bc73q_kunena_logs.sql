
DROP TABLE IF EXISTS `bc73q_kunena_logs`;
CREATE TABLE `bc73q_kunena_logs` (
  `id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `topic_id` int(11) NOT NULL DEFAULT '0',
  `target_user` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(40) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `operation` varchar(40) NOT NULL,
  `data` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
