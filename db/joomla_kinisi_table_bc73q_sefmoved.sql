
DROP TABLE IF EXISTS `bc73q_sefmoved`;
CREATE TABLE `bc73q_sefmoved` (
  `id` int(11) NOT NULL,
  `old` varchar(255) NOT NULL,
  `new` varchar(255) NOT NULL,
  `lastHit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
