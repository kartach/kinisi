
DROP TABLE IF EXISTS `bc73q_joomgallery_countstop`;
CREATE TABLE `bc73q_joomgallery_countstop` (
  `cspicid` int(11) NOT NULL DEFAULT '0',
  `csip` varchar(20) NOT NULL,
  `cssessionid` varchar(200) DEFAULT NULL,
  `cstime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `bc73q_joomgallery_countstop` VALUES(190, '::1', 'YypXeM1HrD2A7iSQQUdXXbYHlwZ6U5CG', '2017-10-25 15:52:16');
