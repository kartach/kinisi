
DROP TABLE IF EXISTS `bc73q_gsd_config`;
CREATE TABLE `bc73q_gsd_config` (
  `name` varchar(255) NOT NULL,
  `params` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Store any configuration in key => params maps' ROW_FORMAT=DYNAMIC;

INSERT INTO `bc73q_gsd_config` VALUES('config', '{\"sitename_enabled\":\"1\",\"sitename_name\":\"\",\"sitename_name_alt\":\"\",\"sitename_url\":\"\",\"breadcrumbs_enabled\":\"1\",\"breadcrumbs_home\":\"\",\"sitelinks_enabled\":\"2\",\"sitelinks_search_custom_url\":\"\",\"logo_file\":\"\",\"colorgroup\":\"1\",\"preparecontent\":\"0\",\"minifyjson\":\"0\",\"desclimit\":\"300\",\"debug\":\"0\",\"initonevent\":\"onBeforeRender\",\"customcode\":\"\"}');
