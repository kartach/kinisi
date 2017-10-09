
DROP TABLE IF EXISTS `bc73q_updates`;
CREATE TABLE `bc73q_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

INSERT INTO `bc73q_updates` VALUES(1, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.7.4.2', '', 'https://update.joomla.org/language/details3/sr-YU_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(2, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/es-ES_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(3, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/bs-BA_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(4, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.7.4.2', '', 'https://update.joomla.org/language/details3/sr-RS_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(5, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/vi-VN_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(6, 3, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/id-ID_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(7, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/fi-FI_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(8, 3, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/sw-KE_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(9, 3, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/srp-ME_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(10, 3, 0, 'English CA', '', 'pkg_en-CA', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/en-CA_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(11, 3, 0, 'French CA', '', 'pkg_fr-CA', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/fr-CA_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(12, 1, 700, 'Joomla', '', 'joomla', 'file', '', 0, '3.7.4', '', 'https://update.joomla.org/core/sts/extension_sts.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(13, 3, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.7.0.1', '', 'https://update.joomla.org/language/details3/cy-GB_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(14, 3, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/si-LK_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(15, 3, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.2', '', 'https://update.joomla.org/language/details3/prs-AF_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(16, 3, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.5.0.2', '', 'https://update.joomla.org/language/details3/tk-TM_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(17, 3, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '3.7.0.1', '', 'https://update.joomla.org/language/details3/ga-IE_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(18, 3, 0, 'Dzongkha', '', 'pkg_dz-BT', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/dz-BT_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(19, 3, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/sl-SI_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(20, 3, 0, 'Spanish CO', '', 'pkg_es-CO', 'package', '', 0, '3.7.4.1', '', 'https://update.joomla.org/language/details3/es-CO_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(21, 3, 0, 'German CH', '', 'pkg_de-CH', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/de-CH_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(22, 3, 0, 'German AT', '', 'pkg_de-AT', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/de-AT_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(23, 3, 0, 'German LI', '', 'pkg_de-LI', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/de-LI_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(24, 3, 0, 'German LU', '', 'pkg_de-LU', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/de-LU_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(25, 3, 0, 'English NZ', '', 'pkg_en-NZ', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/en-NZ_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(26, 7, 0, 'JoomAutoCat', '', 'joomautocat', 'plugin', 'user', 0, '3.0', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joomautocat.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(27, 7, 0, 'JoomPlu', '', 'joomplu', 'plugin', 'content', 0, '3.1', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joomplu.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(28, 7, 0, 'JoomBu', '', 'joombu', 'plugin', 'editors-xtd', 0, '3.2', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joombu.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(29, 7, 0, 'JoomLightbox2', '', 'joomlightbox2', 'plugin', 'joomgallery', 0, '1.0', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joomlightbox2.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(30, 7, 0, 'JoomSearchPlugin', '', 'joomgallery', 'plugin', 'search', 0, '3.1', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joomsearchplugin.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(31, 7, 0, 'JoomColorbox', '', 'joomcolorbox', 'plugin', 'joomgallery', 0, '3.0', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joomcolorbox.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(32, 7, 0, 'JoomLytebox', '', 'joomlytebox', 'plugin', 'joomgallery', 0, '3.0', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joomlytebox.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(33, 7, 0, 'JoomQuickicon', '', 'joomgallery', 'plugin', 'quickicon', 0, '3.0', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joomquickicon.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(34, 7, 0, 'JoomTreeview', '', 'mod_jgreeview', 'module', '', 0, '3.1 BETA', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joomtreeview.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(35, 7, 0, 'JoomStats', '', 'mod_joomstats', 'module', '', 0, '3.0 BETA', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joomstats.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(36, 7, 0, 'JoomSearchModule', '', 'mod_joomsearch', 'module', '', 0, '3.0 BETA', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joomsearchmodule.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(37, 7, 0, 'JoomCategories', '', 'mod_joomcat', 'module', '', 0, '3.0 BETA', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joomcategories.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(38, 7, 0, 'JoomImages', '', 'mod_joomimg', 'module', '', 0, '3.3', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joomimages.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(39, 7, 0, 'XmapPlugin', '', 'com_joomgallery', 'plugin', 'xmap', 0, '2.0', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/xmapplugin.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(40, 7, 0, 'JoomAdditionalImageFields', '', 'joomadditionalimagefields', 'plugin', 'joomgallery', 0, '1.1', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joomadditionalimagefields.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(41, 7, 0, 'JoomAdditionalCategoryFields', '', 'joomadditionalcategoryfields', 'plugin', 'joomgallery', 0, '1.1', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joomadditionalcategoryfields.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(42, 7, 0, 'JoomreCaptcha', '', 'joomrecaptcha', 'plugin', 'joomgallery', 0, '2.0', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joomrecaptcha.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(43, 7, 0, 'JoomShadowbox', '', 'joomshadowbox', 'plugin', 'joomgallery', 0, '3.0', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joomshadowbox.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(44, 7, 0, 'JoomHighslide', '', 'joomhighslide', 'plugin', 'joomgallery', 0, '3.0', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joomhighslide.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(45, 7, 0, 'JoomRokBox', '', 'joomrokbox', 'plugin', 'joomgallery', 0, '3.0', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joomrokbox.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(46, 7, 0, 'JoomprettyPhoto', '', 'joomprettyphoto', 'plugin', 'joomgallery', 0, '1.0', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joomprettyphoto.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(47, 7, 0, 'JoomPhotoswipe', '', 'joomphotoswipe', 'plugin', 'joomgallery', 0, '3.0 BETA', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joomphotoswipe.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(48, 7, 0, 'MigrateMVC2JUX', '', 'joomgallery_migratemvc2jux', 'file', '', 0, '3.0', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/migratemvc2jux.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(49, 7, 0, 'Migrate4Images2Joom', '', 'joomgallery_migrate4images2joo', 'file', '', 0, '3.0 BETA', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/migrate4images2joom.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(50, 7, 0, 'MigratePhoca2Joom', '', 'joomgallery_migratephoca2joom', 'file', '', 0, '3.0', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/migratephoca2joom.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(51, 7, 0, 'JoomMarketLink', '', 'joommarketlink', 'plugin', 'joomgallery', 0, '3.1', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joommarketlink.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(52, 7, 0, 'JoomDisplayCBname', '', 'joomdisplaycbname', 'plugin', 'joomgallery', 0, '3.1', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joomdisplaycbname.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(53, 7, 0, 'MigrateACL2JUX', '', 'joomgallery_migrateacl2jux', 'file', '', 0, '3.0', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/migrateacl2jux.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(54, 10, 10020, 'Kunena Forum', 'Kunena Forum', 'pkg_kunena', 'package', '', 0, '5.0.10', '', 'https://update.kunena.org/5.0/pkg_kunena.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(55, 10, 0, 'Kunena Language Pack', 'Language Pack for Kunena Forum', 'pkg_kunena_languages', 'package', '', 0, '5.0.10', '', 'https://update.kunena.org/5.0/pkg_kunena_languages.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(56, 10, 0, 'Kunena Latest Module', '', 'mod_kunenalatest', 'module', '', 0, '5.0.3', '', 'https://update.kunena.org/5.0/mod_kunenalatest.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(57, 10, 0, 'Kunena Login Module', '', 'mod_kunenalogin', 'module', '', 0, '5.0.3', '', 'https://update.kunena.org/5.0/mod_kunenalogin.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(58, 10, 0, 'Kunena Search Module', '', 'mod_kunenasearch', 'module', '', 0, '5.0.3', '', 'https://update.kunena.org/5.0/mod_kunenasearch.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(59, 10, 0, 'Kunena Statistics Module', '', 'mod_kunenastats', 'module', '', 0, '5.0.3', '', 'https://update.kunena.org/5.0/mod_kunenastats.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(60, 10, 0, 'Content - Kunena Discuss', '', 'kunenadiscuss', 'plugin', 'content', 0, '5.0.3', '', 'https://update.kunena.org/5.0/plg_content_kunenadiscuss.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(61, 10, 0, 'Search - Kunena', '', 'kunena', 'plugin', 'search', 0, '5.0.3', '', 'https://update.kunena.org/5.0/plg_search_kunena.xml', '', '');
