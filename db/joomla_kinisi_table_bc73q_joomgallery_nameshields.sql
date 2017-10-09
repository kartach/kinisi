
DROP TABLE IF EXISTS `bc73q_joomgallery_nameshields`;
CREATE TABLE `bc73q_joomgallery_nameshields` (
  `nid` int(11) NOT NULL,
  `npicid` int(11) NOT NULL DEFAULT '0',
  `nuserid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `nxvalue` int(11) NOT NULL DEFAULT '0',
  `nyvalue` int(11) NOT NULL DEFAULT '0',
  `by` int(11) NOT NULL DEFAULT '0',
  `nuserip` varchar(15) NOT NULL DEFAULT '0',
  `ndate` datetime NOT NULL,
  `nzindex` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
