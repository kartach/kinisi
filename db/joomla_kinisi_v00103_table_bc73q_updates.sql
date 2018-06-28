
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

INSERT INTO `bc73q_updates` VALUES(1, 10, 10020, 'Kunena Forum', 'Kunena Forum', 'pkg_kunena', 'package', '', 0, '5.1.0', '', 'https://update.kunena.org/5.1/pkg_kunena.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(2, 10, 10302, 'Kunena Language Pack', 'Language Pack for Kunena Forum', 'pkg_kunena_languages', 'package', '', 0, '5.1.0', '', 'https://update.kunena.org/5.1/pkg_kunena_languages.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(3, 10, 0, 'Kunena Latest Module', '', 'mod_kunenalatest', 'module', '', 0, '5.1.0', '', 'https://update.kunena.org/5.1/mod_kunenalatest.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(4, 10, 0, 'Kunena Login Module', '', 'mod_kunenalogin', 'module', '', 0, '5.1.0', '', 'https://update.kunena.org/5.1/mod_kunenalogin.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(5, 10, 0, 'Kunena Search Module', '', 'mod_kunenasearch', 'module', '', 0, '5.1.0', '', 'https://update.kunena.org/5.1/mod_kunenasearch.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(6, 10, 0, 'Kunena Statistics Module', '', 'mod_kunenastats', 'module', '', 0, '5.1.0', '', 'https://update.kunena.org/5.1/mod_kunenastats.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(7, 10, 0, 'Content - Kunena Discuss', '', 'kunenadiscuss', 'plugin', 'content', 0, '5.1.0', '', 'https://update.kunena.org/5.1/plg_content_kunenadiscuss.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(8, 10, 0, 'Search - Kunena', '', 'kunena', 'plugin', 'search', 0, '5.1.0', '', 'https://update.kunena.org/5.1/plg_search_kunena.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(9, 11, 10143, 'slogin', 'slogin', 'com_slogin', 'component', '', 1, '2.7.2', '', 'http://joomline.net/index.php?option=com_ars&view=update&task=stream&format=xml&id=5&dummy=extension.xml', 'http://joomline.net/component/ars/?view=Items&release_id=239', '');
INSERT INTO `bc73q_updates` VALUES(10, 16, 10203, 'Regular Labs - Cache Cleaner', '', 'mod_cachecleaner', 'module', '', 1, '6.3.0FREE', '', 'https://download.regularlabs.com/updates.xml?e=cachecleaner&type=.xml', 'https://www.regularlabs.com/extensions/cachecleaner#download', '');
INSERT INTO `bc73q_updates` VALUES(11, 18, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '3.4.4.1', '', 'https://update.joomla.org/language/details3/hy-AM_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(12, 18, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '3.4.1.2', '', 'https://update.joomla.org/language/details3/ms-MY_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(13, 18, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/ro-RO_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(14, 18, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/nl-BE_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(15, 18, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.8.0.1', '', 'https://update.joomla.org/language/details3/zh-TW_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(16, 18, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/fr-FR_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(17, 18, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/gl-ES_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(18, 18, 0, 'Georgian', '', 'pkg_ka-GE', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/ka-GE_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(19, 18, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/el-GR_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(20, 18, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/ja-JP_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(21, 18, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.2', '', 'https://update.joomla.org/language/details3/he-IL_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(22, 18, 0, 'Bengali', '', 'pkg_bn-BD', 'package', '', 0, '3.8.5.1', '', 'https://update.joomla.org/language/details3/bn-BD_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(23, 18, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.8.7.1', '', 'https://update.joomla.org/language/details3/hu-HU_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(24, 18, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/af-ZA_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(25, 18, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/ar-AA_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(26, 18, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/be-BY_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(27, 18, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.6.5.2', '', 'https://update.joomla.org/language/details3/bg-BG_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(28, 18, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.8.3.3', '', 'https://update.joomla.org/language/details3/ca-ES_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(29, 18, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/zh-CN_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(30, 18, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.8.5.1', '', 'https://update.joomla.org/language/details3/hr-HR_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(31, 18, 10299, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/cs-CZ_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(32, 18, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/da-DK_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(33, 18, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.8.9.1', '', 'https://update.joomla.org/language/details3/nl-NL_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(34, 18, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '3.8.8.1', '', 'https://update.joomla.org/language/details3/eo-XX_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(35, 18, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/et-EE_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(36, 18, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/it-IT_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(37, 18, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/km-KH_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(38, 18, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.8.7.3', '', 'https://update.joomla.org/language/details3/ko-KR_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(39, 18, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/lv-LV_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(40, 18, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/mk-MK_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(41, 18, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.8.9.1', '', 'https://update.joomla.org/language/details3/nb-NO_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(42, 18, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/nn-NO_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(43, 18, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.8.8.1', '', 'https://update.joomla.org/language/details3/fa-IR_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(44, 18, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.8.8.2', '', 'https://update.joomla.org/language/details3/pl-PL_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(45, 18, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/pt-PT_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(46, 18, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/ru-RU_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(47, 18, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/en-AU_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(48, 18, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/sk-SK_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(49, 18, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/en-US_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(50, 18, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/sv-SE_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(51, 18, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/sy-IQ_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(52, 18, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/ta-IN_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(53, 18, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/th-TH_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(54, 18, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/tr-TR_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(55, 18, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.7.1.1', '', 'https://update.joomla.org/language/details3/uk-UA_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(56, 18, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/ug-CN_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(57, 18, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.2', '', 'https://update.joomla.org/language/details3/sq-AL_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(58, 18, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/eu-ES_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(59, 18, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.2', '', 'https://update.joomla.org/language/details3/hi-IN_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(60, 18, 0, 'German DE', '', 'pkg_de-DE', 'package', '', 0, '3.8.10.2', '', 'https://update.joomla.org/language/details3/de-DE_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(61, 18, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/pt-BR_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(62, 18, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/sr-YU_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(63, 18, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.8.8.1', '', 'https://update.joomla.org/language/details3/es-ES_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(64, 18, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.8.8.1', '', 'https://update.joomla.org/language/details3/bs-BA_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(65, 18, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/sr-RS_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(66, 18, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/vi-VN_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(67, 18, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/id-ID_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(68, 18, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.8.1.1', '', 'https://update.joomla.org/language/details3/fi-FI_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(69, 18, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.8.8.1', '', 'https://update.joomla.org/language/details3/sw-KE_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(70, 18, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/srp-ME_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(71, 18, 0, 'English CA', '', 'pkg_en-CA', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/en-CA_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(72, 18, 0, 'French CA', '', 'pkg_fr-CA', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/fr-CA_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(73, 18, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.8.5.1', '', 'https://update.joomla.org/language/details3/cy-GB_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(74, 18, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/si-LK_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(75, 18, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.2', '', 'https://update.joomla.org/language/details3/prs-AF_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(76, 18, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.5.0.2', '', 'https://update.joomla.org/language/details3/tk-TM_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(77, 18, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '3.8.7.1', '', 'https://update.joomla.org/language/details3/ga-IE_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(78, 18, 0, 'Dzongkha', '', 'pkg_dz-BT', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/dz-BT_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(79, 18, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/sl-SI_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(80, 18, 0, 'Spanish CO', '', 'pkg_es-CO', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/es-CO_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(81, 18, 0, 'German CH', '', 'pkg_de-CH', 'package', '', 0, '3.8.10.2', '', 'https://update.joomla.org/language/details3/de-CH_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(82, 18, 0, 'German AT', '', 'pkg_de-AT', 'package', '', 0, '3.8.10.2', '', 'https://update.joomla.org/language/details3/de-AT_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(83, 18, 0, 'German LI', '', 'pkg_de-LI', 'package', '', 0, '3.8.10.2', '', 'https://update.joomla.org/language/details3/de-LI_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(84, 18, 0, 'German LU', '', 'pkg_de-LU', 'package', '', 0, '3.8.10.2', '', 'https://update.joomla.org/language/details3/de-LU_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(85, 18, 0, 'English NZ', '', 'pkg_en-NZ', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/en-NZ_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(86, 20, 10313, 'JBCookies', 'The module displays information about the use of cookies', 'mod_jbcookies', 'module', '', 0, '3.0.8', '', 'http://www.joomball.com/images/updates/jbcookies.xml', 'https://www.joomball.com', '');
INSERT INTO `bc73q_updates` VALUES(87, 21, 10317, 'Regular Labs - Articles Anywhere', '', 'articlesanywhere', 'plugin', 'system', 0, '7.6.1FREE', '', 'https://download.regularlabs.com/updates.xml?e=articlesanywhere&type=.xml', 'https://www.regularlabs.com/extensions/articlesanywhere#download', '');
INSERT INTO `bc73q_updates` VALUES(88, 22, 10329, 'eorisis: Google Analytics (Joomla 4 Compatible) 27 Jun 2018', 'Joomla 4 Compatible', 'eorisis_google_analytics', 'plugin', 'system', 0, '3.1.4', '', 'https://eorisis.com/updates/eorisis-google-analytics/extension.xml', 'https://eorisis.com/google-analytics', '');
INSERT INTO `bc73q_updates` VALUES(89, 23, 10331, 'Regular Labs - Extension Manager', '', 'com_regularlabsmanager', 'component', '', 1, '7.1.7', '', 'https://download.regularlabs.com/updates.xml?e=extensionmanager&type=.xml', 'https://www.regularlabs.com/extensions/extensionmanager#download', '');
INSERT INTO `bc73q_updates` VALUES(90, 24, 10334, 'Regular Labs - Sourcerer', '', 'sourcerer', 'plugin', 'system', 0, '7.2.0FREE', '', 'https://download.regularlabs.com/updates.xml?e=sourcerer&type=.xml', 'https://www.regularlabs.com/extensions/sourcerer#download', '');
INSERT INTO `bc73q_updates` VALUES(91, 25, 10336, 'Regular Labs - ReReplacer', '', 'com_rereplacer', 'component', '', 1, '8.4.4FREE', '', 'https://download.regularlabs.com/updates.xml?e=rereplacer&type=.xml', 'https://www.regularlabs.com/extensions/rereplacer#download', '');
INSERT INTO `bc73q_updates` VALUES(92, 26, 10341, 'Regular Labs - Dummy Content', '', 'dummycontent', 'plugin', 'system', 0, '5.1.1FREE', '', 'https://download.regularlabs.com/updates.xml?e=dummycontent&type=.xml', 'https://www.regularlabs.com/extensions/dummycontent#download', '');
INSERT INTO `bc73q_updates` VALUES(93, 27, 10343, 'Sitemap Generator', 'Sitemap Generator for Joomla 3.', 'pkg_sitemapgenerator', 'package', '', 0, '1.2.1', '', 'https://static.marcobeierer.com/joomla-extensions/sitemapgenerator/update.xml', 'https://www.marcobeierer.com/joomla-extensions/sitemap-generator', '');
INSERT INTO `bc73q_updates` VALUES(94, 28, 10348, 'Google Structured Data Free', 'Google Structured Data Free', 'gsd', 'plugin', 'system', 0, '3.1.9', '', 'http://static.tassos.gr/update/gsdfree?type=.xml', 'https://www.tassos.gr/update/gsdfree?view=Items&release_id=225', 'dlid=');
INSERT INTO `bc73q_updates` VALUES(95, 42, 10352, 'ARTIO JoomSEF', '', 'com_sef', 'component', '', 1, '4.7.5', '', 'http://www.artio.net/joomla-updates/list/com_joomsef4.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(96, 42, 10352, 'ARTIO JoomSEF', '', 'com_sef', 'component', '', 1, '4.7.5', '', 'http://www.artio.net/joomla-updates/list/com_joomsef4.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(97, 42, 10352, 'ARTIO JoomSEF', '', 'com_sef', 'component', '', 1, '4.7.5', '', 'http://www.artio.net/joomla-updates/list/com_joomsef4.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(98, 47, 10379, 'J! Extensions Live Updater', 'This plugin helper third party extensions to accomblish live update feature. Ideal for commercial and free extensions (by Web-expert.gr)', 'jextupdater', 'plugin', 'system', 0, '1.5', '', 'https://web-expert.gr/updates/plg_jextupdater.xml', 'https://www.web-expert.gr/en/joomla-extensions/item/104-joomla-extension-live-updater-plugin', '');
INSERT INTO `bc73q_updates` VALUES(99, 51, 0, 'RokGallery Extension', '', 'mod_rokgallery', 'module', '', 0, '2.42', '0802', 'http://updates.rockettheme.com/joomla/286/21ffe006', '', '');
INSERT INTO `bc73q_updates` VALUES(100, 51, 0, 'RokBooster Plugin', '', 'rokbooster', 'plugin', 'system', 0, '1.1.17', '0802', 'http://updates.rockettheme.com/joomla/287/cb577720', '', '');
INSERT INTO `bc73q_updates` VALUES(101, 51, 0, 'RokAjaxSearch Module', '', 'mod_rokajaxsearch', 'module', '', 0, '2.0.4', '0802', 'http://updates.rockettheme.com/joomla/290/1d5a0af1', '', '');
INSERT INTO `bc73q_updates` VALUES(102, 51, 0, 'RokWeather Module', '', 'mod_rokweather', 'module', '', 0, '2.0.4', '0802', 'http://updates.rockettheme.com/joomla/292/a0cbba72', '', '');
INSERT INTO `bc73q_updates` VALUES(103, 51, 0, 'RokStock Module', '', 'mod_rokstock', 'module', '', 0, '2.0.3', '0802', 'http://updates.rockettheme.com/joomla/295/87c1121c', '', '');
INSERT INTO `bc73q_updates` VALUES(104, 51, 0, 'RokMiniEvents3 Module', '', 'mod_rokminievents3', 'module', '', 0, '3.0.3', '0802', 'http://updates.rockettheme.com/joomla/297/1686051690', '', '');
INSERT INTO `bc73q_updates` VALUES(105, 51, 0, 'RokQuickCart Extension', '', 'com_rokquickcart', 'component', '', 1, '2.1.5', '0802', 'http://updates.rockettheme.com/joomla/298/ddfa10eb', '', '');
INSERT INTO `bc73q_updates` VALUES(106, 51, 0, 'RokPad Plugin', '', 'rokpad', 'plugin', 'editors', 0, '2.1.9', '0802', 'http://updates.rockettheme.com/joomla/299/e07875c9', '', '');
INSERT INTO `bc73q_updates` VALUES(107, 51, 0, 'RokNavMenu Module', '', 'mod_roknavmenu', 'module', '', 0, '2.0.9', '0802', 'http://updates.rockettheme.com/joomla/300/5a9aa468', '', '');
INSERT INTO `bc73q_updates` VALUES(108, 51, 0, 'RokBox Plugin', '', 'rokbox', 'plugin', 'system', 0, '2.0.13', '0802', 'http://updates.rockettheme.com/joomla/301/dfc993d8', '', '');
INSERT INTO `bc73q_updates` VALUES(109, 51, 0, 'RokCandy Extension', '', 'rokcandy', 'plugin', 'system', 0, '2.0.2', '0802', 'http://updates.rockettheme.com/joomla/302/2df8a4e2', '', '');
INSERT INTO `bc73q_updates` VALUES(110, 51, 0, 'RokComments Plugin', '', 'rokcomments', 'plugin', 'content', 0, '2.0.3', '0802', 'http://updates.rockettheme.com/joomla/303/d1fd7b76', '', '');
INSERT INTO `bc73q_updates` VALUES(111, 51, 0, 'RokSocialButtons Plugin', '', 'roksocialbuttons', 'plugin', 'content', 0, '1.5.3', '0802', 'http://updates.rockettheme.com/joomla/381/269989291', '', '');
