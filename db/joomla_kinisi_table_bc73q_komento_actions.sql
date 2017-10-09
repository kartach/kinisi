
DROP TABLE IF EXISTS `bc73q_komento_actions`;
CREATE TABLE `bc73q_komento_actions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(20) NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL,
  `action_by` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `actioned` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
