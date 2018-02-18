
DROP TABLE IF EXISTS `bc73q_komento_ipfilter`;
CREATE TABLE `bc73q_komento_ipfilter` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `component` varchar(255) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `rules` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
