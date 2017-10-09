
DROP TABLE IF EXISTS `bc73q_joomgallery_countstop`;
CREATE TABLE `bc73q_joomgallery_countstop` (
  `cspicid` int(11) NOT NULL DEFAULT '0',
  `csip` varchar(20) NOT NULL,
  `cssessionid` varchar(200) DEFAULT NULL,
  `cstime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `bc73q_joomgallery_countstop` VALUES(19, '192.168.9.155', 'FvkFR9dfmI2gBXdIHcHtHWgxBunEqQ3T', '2016-06-23 16:27:11');
