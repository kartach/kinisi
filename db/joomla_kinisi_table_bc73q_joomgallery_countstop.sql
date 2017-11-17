
DROP TABLE IF EXISTS `bc73q_joomgallery_countstop`;
CREATE TABLE `bc73q_joomgallery_countstop` (
  `cspicid` int(11) NOT NULL DEFAULT '0',
  `csip` varchar(20) NOT NULL,
  `cssessionid` varchar(200) DEFAULT NULL,
  `cstime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `bc73q_joomgallery_countstop` VALUES(181, '::1', 'wuFAc6wuWJM5xEP7VLkdLCmc3Pp1cM70', '2017-11-17 12:06:44');
