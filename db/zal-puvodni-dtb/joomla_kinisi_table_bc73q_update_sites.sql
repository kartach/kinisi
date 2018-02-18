
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

INSERT INTO `bc73q_update_sites` VALUES(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1513864573, '');
INSERT INTO `bc73q_update_sites` VALUES(2, 'Joomla! Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1513864573, '');
INSERT INTO `bc73q_update_sites` VALUES(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 1513864573, '');
INSERT INTO `bc73q_update_sites` VALUES(4, 'Joomla! Update Component Update Site', 'extension', 'http://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1513864573, '');
INSERT INTO `bc73q_update_sites` VALUES(6, 'AcyMailing', 'extension', 'http://www.acyba.com/component/updateme/updatexml/component-acymailing/level-Starter/file-extension.xml', 1, 1513864573, '');
INSERT INTO `bc73q_update_sites` VALUES(7, 'JoomGallery Update Service', 'collection', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3.xml', 1, 1513864573, '');
INSERT INTO `bc73q_update_sites` VALUES(9, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1513864574, '');
INSERT INTO `bc73q_update_sites` VALUES(10, 'Kunena 5.0 Update Site', 'collection', 'https://update.kunena.org/5.0/list.xml', 1, 1513864574, '');
INSERT INTO `bc73q_update_sites` VALUES(11, 'Joomline', 'extension', 'http://joomline.net/index.php?option=com_ars&view=update&task=stream&format=xml&id=5&dummy=extension.xml', 1, 1513864574, '');
INSERT INTO `bc73q_update_sites` VALUES(12, 'Joomline', 'extension', 'https://joomline.net/index.php?option=com_ars&view=update&task=stream&format=xml&id=5&dummy=extension.xml', 1, 1513864574, '');
INSERT INTO `bc73q_update_sites` VALUES(13, 'Plugin Googlemap Update Site', 'extension', 'http://www.mapsplugin.com/update/plugin_googlemap3/extension.xml', 1, 1513864574, '');
INSERT INTO `bc73q_update_sites` VALUES(14, 'Plugin Googlemap Update Site', 'extension', 'https://raw.githubusercontent.com/jmosmap/plugin_googlemaps/master/update/extension.xml', 1, 1513864574, NULL);
INSERT INTO `bc73q_update_sites` VALUES(15, 'WebInstaller Update Site', 'extension', 'https://appscdn.joomla.org/webapps/jedapps/webinstaller.xml', 1, 1513864575, '');
INSERT INTO `bc73q_update_sites` VALUES(16, 'Regular Labs - Cache Cleaner', 'extension', 'https://download.regularlabs.com/updates.xml?e=cachecleaner&type=.xml', 1, 1513864575, '');
INSERT INTO `bc73q_update_sites` VALUES(17, 'Ark Editor', 'extension', 'http://update.arkextensions.com/arkeditor.xml', 1, 1513864575, '');
INSERT INTO `bc73q_update_sites` VALUES(18, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 1513864575, '');
INSERT INTO `bc73q_update_sites` VALUES(19, '', 'extension', 'https://update.unitemplates.com/extensions/mod_ut_joomstagram.xml', 1, 1513864576, '');
INSERT INTO `bc73q_update_sites` VALUES(20, 'mod_jbcookies', 'extension', 'http://www.joomball.com/images/updates/jbcookies.xml', 1, 1513864576, '');
INSERT INTO `bc73q_update_sites` VALUES(21, 'Regular Labs - Articles Anywhere', 'extension', 'https://download.regularlabs.com/updates.xml?e=articlesanywhere&type=.xml', 1, 1513864576, '');
INSERT INTO `bc73q_update_sites` VALUES(22, 'eorisis: Google Analytics', 'extension', 'https://eorisis.com/updates/eorisis-google-analytics/extension.xml', 1, 1513864576, '');
INSERT INTO `bc73q_update_sites` VALUES(23, 'Regular Labs - Extension Manager', 'extension', 'https://download.regularlabs.com/updates.xml?e=extensionmanager&type=.xml', 1, 1513864576, '');
INSERT INTO `bc73q_update_sites` VALUES(24, 'Regular Labs - Sourcerer', 'extension', 'https://download.regularlabs.com/updates.xml?e=sourcerer&type=.xml', 1, 1513864576, '');
INSERT INTO `bc73q_update_sites` VALUES(25, 'Regular Labs - ReReplacer', 'extension', 'https://download.regularlabs.com/updates.xml?e=rereplacer&type=.xml', 1, 1513864577, '');
INSERT INTO `bc73q_update_sites` VALUES(26, 'Regular Labs - Dummy Content', 'extension', 'https://download.regularlabs.com/updates.xml?e=dummycontent&type=.xml', 1, 1513864577, '');
INSERT INTO `bc73q_update_sites` VALUES(27, 'Sitemap Generator Update Site', 'extension', 'https://static.marcobeierer.com/joomla-extensions/sitemapgenerator/update.xml', 1, 1513864577, '');
INSERT INTO `bc73q_update_sites` VALUES(28, 'Google Structured Data', 'extension', 'http://static.tassos.gr/update/gsdfree?type=.xml', 1, 1513864577, 'dlid=');
INSERT INTO `bc73q_update_sites` VALUES(29, 'System - Novarain Installer', 'extension', 'http://static.tassos.gr/update?type=.xml', 1, 1513864578, '');
INSERT INTO `bc73q_update_sites` VALUES(30, 'Google TagManager Updates', 'extension', 'http://toolsforjoomla.com/index.php?option=com_ars&view=update&task=stream&format=xml&id=2', 1, 1513864579, '');
INSERT INTO `bc73q_update_sites` VALUES(32, 'ext_joomsef4_banners', 'sef_update', 'http://www.artio.net/joomla-updates/list/ext_joomsef4_banners.xml', 1, 1513864579, '');
INSERT INTO `bc73q_update_sites` VALUES(33, 'ext_joomsef4_contact', 'sef_update', 'http://www.artio.net/joomla-updates/list/ext_joomsef4_contact.xml', 1, 1513864579, '');
INSERT INTO `bc73q_update_sites` VALUES(34, 'ext_joomsef4_content', 'sef_update', 'http://www.artio.net/joomla-updates/list/ext_joomsef4_content.xml', 1, 1513864579, '');
INSERT INTO `bc73q_update_sites` VALUES(35, 'ext_joomsef4_mailto', 'sef_update', 'http://www.artio.net/joomla-updates/list/ext_joomsef4_mailto.xml', 1, 1513864579, '');
INSERT INTO `bc73q_update_sites` VALUES(36, 'ext_joomsef4_newfeeds', 'sef_update', 'http://www.artio.net/joomla-updates/list/ext_joomsef4_newsfeeds.xml', 1, 1513864580, '');
INSERT INTO `bc73q_update_sites` VALUES(37, 'ext_joomsef4_search', 'sef_update', 'http://www.artio.net/joomla-updates/list/ext_joomsef4_search.xml', 1, 1513864580, '');
INSERT INTO `bc73q_update_sites` VALUES(38, 'ext_joomsef4_tags', 'sef_update', 'http://www.artio.net/joomla-updates/list/ext_joomsef4_tags.xml', 1, 1513864580, '');
INSERT INTO `bc73q_update_sites` VALUES(39, 'ext_joomsef4_users', 'sef_update', 'http://www.artio.net/joomla-updates/list/ext_joomsef4_users.xml', 1, 1513864580, '');
INSERT INTO `bc73q_update_sites` VALUES(40, 'ext_joomsef4_weblinks', 'sef_update', 'http://www.artio.net/joomla-updates/list/ext_joomsef4_weblinks.xml', 1, 1513864580, '');
INSERT INTO `bc73q_update_sites` VALUES(41, 'ext_joomsef4_wrapper', 'sef_update', 'http://www.artio.net/joomla-updates/list/ext_joomsef4_wrapper.xml', 1, 1513864580, '');
INSERT INTO `bc73q_update_sites` VALUES(42, 'com_joomsef', 'sef_update', 'http://www.artio.net/joomla-updates/list/com_joomsef4.xml', 1, 1513864581, '');
INSERT INTO `bc73q_update_sites` VALUES(43, 'ext_joomsef4_kunena', 'sef_update', 'http://www.artio.net/joomla-updates/list/ext_joomsef4_kunena.xml', 1, 1513864581, '');
INSERT INTO `bc73q_update_sites` VALUES(44, 'Ultimate Feed Display Updates', 'extension', 'http://web-expert.gr/updates/mod_we_ufacebook_comments.xml', 1, 1513864581, '');
INSERT INTO `bc73q_update_sites` VALUES(45, 'Ultimate Facebook Comments Updates', 'extension', 'http://web-expert.gr/updates/we_ufacebook_comments.xml', 1, 1513864581, '');
INSERT INTO `bc73q_update_sites` VALUES(46, 'Ultimate Social Elements (JSDK)', 'extension', 'http://web-expert.gr/updates/wefacebookjsdk.xml', 1, 1513864581, '');
INSERT INTO `bc73q_update_sites` VALUES(47, 'J! Extensions Live Updater', 'extension', 'https://web-expert.gr/updates/plg_jextupdater.xml', 1, 1513864582, '');
INSERT INTO `bc73q_update_sites` VALUES(48, 'J! Extensions Live Updater', 'extension', 'http://web-expert.gr/updates/plg_jextupdater.xml', 1, 1513864582, '');
