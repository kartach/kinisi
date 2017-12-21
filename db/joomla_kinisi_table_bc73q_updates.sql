
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

INSERT INTO `bc73q_updates` VALUES(1, 1, 700, 'Joomla', '', 'joomla', 'file', '', 0, '3.8.3', '', 'https://update.joomla.org/core/sts/extension_sts.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(2, 3, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '3.4.4.1', '', 'https://update.joomla.org/language/details3/hy-AM_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(3, 3, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '3.4.1.2', '', 'https://update.joomla.org/language/details3/ms-MY_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(4, 3, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/ro-RO_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(5, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.8.3.1', '', 'https://update.joomla.org/language/details3/nl-BE_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(6, 3, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.8.0.1', '', 'https://update.joomla.org/language/details3/zh-TW_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(7, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.8.3.2', '', 'https://update.joomla.org/language/details3/fr-FR_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(8, 3, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/gl-ES_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(9, 3, 0, 'Georgian', '', 'pkg_ka-GE', 'package', '', 0, '3.8.3.1', '', 'https://update.joomla.org/language/details3/ka-GE_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(10, 3, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.8.3.4', '', 'https://update.joomla.org/language/details3/el-GR_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(11, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.8.3.1', '', 'https://update.joomla.org/language/details3/ja-JP_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(12, 3, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.1', '', 'https://update.joomla.org/language/details3/he-IL_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(13, 3, 0, 'Bengali', '', 'pkg_bn-BD', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/bn-BD_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(14, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/hu-HU_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(15, 3, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.8.3.1', '', 'https://update.joomla.org/language/details3/af-ZA_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(16, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/ar-AA_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(17, 3, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/be-BY_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(18, 3, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.6.5.2', '', 'https://update.joomla.org/language/details3/bg-BG_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(19, 3, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.8.3.2', '', 'https://update.joomla.org/language/details3/ca-ES_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(20, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.8.3.1', '', 'https://update.joomla.org/language/details3/zh-CN_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(21, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/hr-HR_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(22, 3, 10299, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.8.3.1', '', 'https://update.joomla.org/language/details3/cs-CZ_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(23, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.8.3.1', '', 'https://update.joomla.org/language/details3/da-DK_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(24, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.8.3.1', '', 'https://update.joomla.org/language/details3/nl-NL_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(25, 3, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '3.8.3.1', '', 'https://update.joomla.org/language/details3/eo-XX_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(26, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.7.0.1', '', 'https://update.joomla.org/language/details3/et-EE_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(27, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.8.3.1', '', 'https://update.joomla.org/language/details3/it-IT_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(28, 3, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/km-KH_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(29, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.8.1.1', '', 'https://update.joomla.org/language/details3/ko-KR_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(30, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/lv-LV_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(31, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/mk-MK_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(32, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.7.4.1', '', 'https://update.joomla.org/language/details3/nb-NO_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(33, 3, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/nn-NO_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(34, 3, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.8.3.2', '', 'https://update.joomla.org/language/details3/fa-IR_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(35, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.8.3.1', '', 'https://update.joomla.org/language/details3/pl-PL_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(36, 3, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/pt-PT_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(37, 3, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/ru-RU_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(38, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.8.3.1', '', 'https://update.joomla.org/language/details3/en-AU_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(39, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.8.1.1', '', 'https://update.joomla.org/language/details3/sk-SK_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(40, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.8.3.1', '', 'https://update.joomla.org/language/details3/en-US_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(41, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.8.3.1', '', 'https://update.joomla.org/language/details3/sv-SE_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(42, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/sy-IQ_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(43, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.8.3.1', '', 'https://update.joomla.org/language/details3/ta-IN_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(44, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.8.3.1', '', 'https://update.joomla.org/language/details3/th-TH_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(45, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/tr-TR_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(46, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.7.1.1', '', 'https://update.joomla.org/language/details3/uk-UA_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(47, 3, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/ug-CN_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(48, 3, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.2', '', 'https://update.joomla.org/language/details3/sq-AL_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(49, 3, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/eu-ES_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(50, 3, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.2', '', 'https://update.joomla.org/language/details3/hi-IN_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(51, 3, 0, 'German DE', '', 'pkg_de-DE', 'package', '', 0, '3.8.3.1', '', 'https://update.joomla.org/language/details3/de-DE_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(52, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.8.3.1', '', 'https://update.joomla.org/language/details3/pt-BR_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(53, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.8.3.1', '', 'https://update.joomla.org/language/details3/sr-YU_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(54, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/es-ES_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(55, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.8.0.1', '', 'https://update.joomla.org/language/details3/bs-BA_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(56, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.8.3.1', '', 'https://update.joomla.org/language/details3/sr-RS_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(57, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/vi-VN_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(58, 3, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/id-ID_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(59, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.8.1.1', '', 'https://update.joomla.org/language/details3/fi-FI_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(60, 3, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/sw-KE_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(61, 3, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/srp-ME_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(62, 3, 0, 'English CA', '', 'pkg_en-CA', 'package', '', 0, '3.8.3.1', '', 'https://update.joomla.org/language/details3/en-CA_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(63, 3, 0, 'French CA', '', 'pkg_fr-CA', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/fr-CA_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(64, 3, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/cy-GB_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(65, 3, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/si-LK_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(66, 3, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.2', '', 'https://update.joomla.org/language/details3/prs-AF_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(67, 3, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.5.0.2', '', 'https://update.joomla.org/language/details3/tk-TM_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(68, 3, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/ga-IE_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(69, 3, 0, 'Dzongkha', '', 'pkg_dz-BT', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/dz-BT_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(70, 3, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '3.8.3.1', '', 'https://update.joomla.org/language/details3/sl-SI_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(71, 3, 0, 'Spanish CO', '', 'pkg_es-CO', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/es-CO_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(72, 3, 0, 'German CH', '', 'pkg_de-CH', 'package', '', 0, '3.8.3.1', '', 'https://update.joomla.org/language/details3/de-CH_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(73, 3, 0, 'German AT', '', 'pkg_de-AT', 'package', '', 0, '3.8.3.1', '', 'https://update.joomla.org/language/details3/de-AT_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(74, 3, 0, 'German LI', '', 'pkg_de-LI', 'package', '', 0, '3.8.3.1', '', 'https://update.joomla.org/language/details3/de-LI_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(75, 3, 0, 'German LU', '', 'pkg_de-LU', 'package', '', 0, '3.8.3.1', '', 'https://update.joomla.org/language/details3/de-LU_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(76, 3, 0, 'English NZ', '', 'pkg_en-NZ', 'package', '', 0, '3.8.3.1', '', 'https://update.joomla.org/language/details3/en-NZ_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(77, 7, 0, 'JoomAutoCat', '', 'joomautocat', 'plugin', 'user', 0, '3.0', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joomautocat.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(78, 7, 0, 'JoomPlu', '', 'joomplu', 'plugin', 'content', 0, '3.1', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joomplu.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(79, 7, 0, 'JoomBu', '', 'joombu', 'plugin', 'editors-xtd', 0, '3.2', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joombu.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(80, 7, 0, 'JoomLightbox2', '', 'joomlightbox2', 'plugin', 'joomgallery', 0, '1.0', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joomlightbox2.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(81, 7, 0, 'JoomSearchPlugin', '', 'joomgallery', 'plugin', 'search', 0, '3.1', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joomsearchplugin.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(82, 7, 0, 'JoomColorbox', '', 'joomcolorbox', 'plugin', 'joomgallery', 0, '3.0', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joomcolorbox.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(83, 7, 0, 'JoomLytebox', '', 'joomlytebox', 'plugin', 'joomgallery', 0, '3.0', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joomlytebox.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(84, 7, 0, 'JoomQuickicon', '', 'joomgallery', 'plugin', 'quickicon', 0, '3.0', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joomquickicon.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(85, 7, 0, 'JoomTreeview', '', 'mod_jgreeview', 'module', '', 0, '3.1 BETA', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joomtreeview.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(86, 7, 0, 'JoomStats', '', 'mod_joomstats', 'module', '', 0, '3.0 BETA', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joomstats.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(87, 7, 0, 'JoomSearchModule', '', 'mod_joomsearch', 'module', '', 0, '3.0 BETA', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joomsearchmodule.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(88, 7, 0, 'JoomCategories', '', 'mod_joomcat', 'module', '', 0, '3.0 BETA', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joomcategories.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(89, 7, 0, 'JoomImages', '', 'mod_joomimg', 'module', '', 0, '3.3', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joomimages.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(90, 7, 0, 'XmapPlugin', '', 'com_joomgallery', 'plugin', 'xmap', 0, '2.0', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/xmapplugin.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(91, 7, 0, 'JoomAdditionalImageFields', '', 'joomadditionalimagefields', 'plugin', 'joomgallery', 0, '1.1', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joomadditionalimagefields.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(92, 7, 0, 'JoomAdditionalCategoryFields', '', 'joomadditionalcategoryfields', 'plugin', 'joomgallery', 0, '1.1', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joomadditionalcategoryfields.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(93, 7, 0, 'JoomreCaptcha', '', 'joomrecaptcha', 'plugin', 'joomgallery', 0, '2.0', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joomrecaptcha.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(94, 7, 0, 'JoomShadowbox', '', 'joomshadowbox', 'plugin', 'joomgallery', 0, '3.0', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joomshadowbox.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(95, 7, 0, 'JoomHighslide', '', 'joomhighslide', 'plugin', 'joomgallery', 0, '3.0', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joomhighslide.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(96, 7, 0, 'JoomRokBox', '', 'joomrokbox', 'plugin', 'joomgallery', 0, '3.0', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joomrokbox.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(97, 7, 0, 'JoomprettyPhoto', '', 'joomprettyphoto', 'plugin', 'joomgallery', 0, '1.0', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joomprettyphoto.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(98, 7, 0, 'JoomPhotoswipe', '', 'joomphotoswipe', 'plugin', 'joomgallery', 0, '3.0 BETA', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joomphotoswipe.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(99, 7, 0, 'MigrateMVC2JUX', '', 'joomgallery_migratemvc2jux', 'file', '', 0, '3.0', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/migratemvc2jux.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(100, 7, 0, 'Migrate4Images2Joom', '', 'joomgallery_migrate4images2joo', 'file', '', 0, '3.0 BETA', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/migrate4images2joom.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(101, 7, 0, 'MigratePhoca2Joom', '', 'joomgallery_migratephoca2joom', 'file', '', 0, '3.0', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/migratephoca2joom.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(102, 7, 0, 'JoomMarketLink', '', 'joommarketlink', 'plugin', 'joomgallery', 0, '3.1', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joommarketlink.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(103, 7, 0, 'JoomDisplayCBname', '', 'joomdisplaycbname', 'plugin', 'joomgallery', 0, '3.1', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/joomdisplaycbname.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(104, 7, 0, 'MigrateACL2JUX', '', 'joomgallery_migrateacl2jux', 'file', '', 0, '3.0', '', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3/migrateacl2jux.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(105, 10, 10020, 'Kunena Forum', 'Kunena Forum', 'pkg_kunena', 'package', '', 0, '5.0.12', '', 'https://update.kunena.org/5.0/pkg_kunena.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(106, 10, 10302, 'Kunena Language Pack', 'Language Pack for Kunena Forum', 'pkg_kunena_languages', 'package', '', 0, '5.0.12', '', 'https://update.kunena.org/5.0/pkg_kunena_languages.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(107, 10, 0, 'Kunena Latest Module', '', 'mod_kunenalatest', 'module', '', 0, '5.0.3', '', 'https://update.kunena.org/5.0/mod_kunenalatest.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(108, 10, 0, 'Kunena Login Module', '', 'mod_kunenalogin', 'module', '', 0, '5.0.3', '', 'https://update.kunena.org/5.0/mod_kunenalogin.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(109, 10, 0, 'Kunena Search Module', '', 'mod_kunenasearch', 'module', '', 0, '5.0.3', '', 'https://update.kunena.org/5.0/mod_kunenasearch.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(110, 10, 0, 'Kunena Statistics Module', '', 'mod_kunenastats', 'module', '', 0, '5.0.3', '', 'https://update.kunena.org/5.0/mod_kunenastats.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(111, 10, 0, 'Content - Kunena Discuss', '', 'kunenadiscuss', 'plugin', 'content', 0, '5.0.3', '', 'https://update.kunena.org/5.0/plg_content_kunenadiscuss.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(112, 10, 0, 'Search - Kunena', '', 'kunena', 'plugin', 'search', 0, '5.0.3', '', 'https://update.kunena.org/5.0/plg_search_kunena.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(113, 16, 10203, 'Regular Labs - Cache Cleaner', '', 'mod_cachecleaner', 'module', '', 1, '6.1.0FREE', '', 'https://download.regularlabs.com/updates.xml?e=cachecleaner&type=.xml', 'https://www.regularlabs.com/extensions/cachecleaner#download', '');
INSERT INTO `bc73q_updates` VALUES(114, 21, 10317, 'Regular Labs - Articles Anywhere', '', 'articlesanywhere', 'plugin', 'system', 0, '7.3.1FREE', '', 'https://download.regularlabs.com/updates.xml?e=articlesanywhere&type=.xml', 'https://www.regularlabs.com/extensions/articlesanywhere#download', '');
INSERT INTO `bc73q_updates` VALUES(115, 22, 10329, 'eorisis: Google Analytics (Joomla 4 Compatible) 13 Dec 2017', 'Joomla 4 Compatible', 'eorisis_google_analytics', 'plugin', 'system', 0, '2.1.1', '', 'https://eorisis.com/updates/eorisis-google-analytics/extension.xml', 'https://eorisis.com/google-analytics', '');
INSERT INTO `bc73q_updates` VALUES(116, 24, 10334, 'Regular Labs - Sourcerer', '', 'sourcerer', 'plugin', 'system', 0, '7.1.11FREE', '', 'https://download.regularlabs.com/updates.xml?e=sourcerer&type=.xml', 'https://www.regularlabs.com/extensions/sourcerer#download', '');
INSERT INTO `bc73q_updates` VALUES(117, 44, 0, 'Ultimate Facebook Comments Module', 'This module loads the Facebook Comments into a Joomla Module 1.5/1.6/1.7/2.5/3.x site (by Web-expert.gr)', 'mod_we_ufacebook_comments', 'module', '', 1, '1.3.5', '', 'http://web-expert.gr/updates/mod_we_ufacebook_comments.xml', 'Please login to the Web-expert.gr Client Area to get this update', '');
