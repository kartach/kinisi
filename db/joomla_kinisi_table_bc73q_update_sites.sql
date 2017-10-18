
DROP TABLE IF EXISTS `bc73q_update_sites`;
CREATE TABLE `bc73q_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

INSERT INTO `bc73q_update_sites` VALUES(1, 'Joomla! Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1501173495, '');
INSERT INTO `bc73q_update_sites` VALUES(2, 'Joomla! Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1501173495, '');
INSERT INTO `bc73q_update_sites` VALUES(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 1501173495, '');
INSERT INTO `bc73q_update_sites` VALUES(4, 'Joomla! Update Component Update Site', 'extension', 'http://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1501173495, '');
INSERT INTO `bc73q_update_sites` VALUES(6, 'AcyMailing', 'extension', 'http://www.acyba.com/component/updateme/updatexml/component-acymailing/level-Starter/file-extension.xml', 1, 1501173497, '');
INSERT INTO `bc73q_update_sites` VALUES(7, 'JoomGallery Update Service', 'collection', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3.xml', 1, 1501173498, '');
INSERT INTO `bc73q_update_sites` VALUES(9, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1501173518, '');
INSERT INTO `bc73q_update_sites` VALUES(10, 'Kunena 5.0 Update Site', 'collection', 'https://update.kunena.org/5.0/list.xml', 1, 1501173518, '');
INSERT INTO `bc73q_update_sites` VALUES(11, 'Joomline', 'extension', 'http://joomline.net/index.php?option=com_ars&view=update&task=stream&format=xml&id=5&dummy=extension.xml', 1, 1501173519, '');
INSERT INTO `bc73q_update_sites` VALUES(12, 'Joomline', 'extension', 'https://joomline.net/index.php?option=com_ars&view=update&task=stream&format=xml&id=5&dummy=extension.xml', 1, 1501173519, '');
INSERT INTO `bc73q_update_sites` VALUES(13, 'Plugin Googlemap Update Site', 'extension', 'http://www.mapsplugin.com/update/plugin_googlemap3/extension.xml', 1, 1501173520, '');
INSERT INTO `bc73q_update_sites` VALUES(14, 'Plugin Googlemap Update Site', 'extension', 'https://raw.githubusercontent.com/jmosmap/plugin_googlemaps/master/update/extension.xml', 1, 1501173520, NULL);