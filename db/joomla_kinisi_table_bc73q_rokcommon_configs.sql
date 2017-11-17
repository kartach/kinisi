
DROP TABLE IF EXISTS `bc73q_rokcommon_configs`;
CREATE TABLE `bc73q_rokcommon_configs` (
  `id` int(11) NOT NULL,
  `extension` varchar(45) NOT NULL DEFAULT '',
  `type` varchar(45) NOT NULL,
  `file` varchar(256) NOT NULL,
  `priority` int(10) NOT NULL DEFAULT '10'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `bc73q_rokcommon_configs` VALUES(1, 'roksprocket', 'container', '/components/com_roksprocket/container.xml', 10);
INSERT INTO `bc73q_rokcommon_configs` VALUES(2, 'roksprocket', 'library', '/components/com_roksprocket/lib', 10);
