
DROP TABLE IF EXISTS `bc73q_update_sites_extensions`;
CREATE TABLE `bc73q_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

INSERT INTO `bc73q_update_sites_extensions` VALUES(1, 700);
INSERT INTO `bc73q_update_sites_extensions` VALUES(2, 700);
INSERT INTO `bc73q_update_sites_extensions` VALUES(3, 600);
INSERT INTO `bc73q_update_sites_extensions` VALUES(4, 28);
INSERT INTO `bc73q_update_sites_extensions` VALUES(6, 10097);
INSERT INTO `bc73q_update_sites_extensions` VALUES(7, 10032);
INSERT INTO `bc73q_update_sites_extensions` VALUES(9, 28);
INSERT INTO `bc73q_update_sites_extensions` VALUES(10, 10020);
INSERT INTO `bc73q_update_sites_extensions` VALUES(11, 10097);
INSERT INTO `bc73q_update_sites_extensions` VALUES(11, 10143);
INSERT INTO `bc73q_update_sites_extensions` VALUES(12, 10032);
INSERT INTO `bc73q_update_sites_extensions` VALUES(12, 10143);
INSERT INTO `bc73q_update_sites_extensions` VALUES(13, 10012);
INSERT INTO `bc73q_update_sites_extensions` VALUES(14, 10012);
