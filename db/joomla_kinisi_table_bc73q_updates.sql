
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
INSERT INTO `bc73q_updates` VALUES(2, 16, 10203, 'Regular Labs - Cache Cleaner', '', 'mod_cachecleaner', 'module', '', 1, '6.1.0FREE', '', 'https://download.regularlabs.com/updates.xml?e=cachecleaner&type=.xml', 'https://www.regularlabs.com/extensions/cachecleaner#download', '');
INSERT INTO `bc73q_updates` VALUES(3, 18, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '3.4.4.1', '', 'https://update.joomla.org/language/details3/hy-AM_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(4, 18, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '3.4.1.2', '', 'https://update.joomla.org/language/details3/ms-MY_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(5, 18, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/ro-RO_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(6, 18, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/nl-BE_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(7, 18, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.8.0.1', '', 'https://update.joomla.org/language/details3/zh-TW_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(8, 18, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.8.3.1', '', 'https://update.joomla.org/language/details3/fr-FR_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(9, 18, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/gl-ES_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(10, 18, 0, 'Georgian', '', 'pkg_ka-GE', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/ka-GE_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(11, 18, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.6.3.2', '', 'https://update.joomla.org/language/details3/el-GR_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(12, 18, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/ja-JP_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(13, 18, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.1', '', 'https://update.joomla.org/language/details3/he-IL_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(14, 18, 0, 'Bengali', '', 'pkg_bn-BD', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/bn-BD_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(15, 18, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/hu-HU_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(16, 18, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/af-ZA_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(17, 18, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/ar-AA_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(18, 18, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/be-BY_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(19, 18, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.6.5.2', '', 'https://update.joomla.org/language/details3/bg-BG_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(20, 18, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.7.3.3', '', 'https://update.joomla.org/language/details3/ca-ES_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(21, 18, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.8.0.1', '', 'https://update.joomla.org/language/details3/zh-CN_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(22, 18, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/hr-HR_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(23, 18, 10299, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/cs-CZ_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(24, 18, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.8.3.1', '', 'https://update.joomla.org/language/details3/da-DK_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(25, 18, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.8.3.1', '', 'https://update.joomla.org/language/details3/nl-NL_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(26, 18, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '3.8.3.1', '', 'https://update.joomla.org/language/details3/eo-XX_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(27, 18, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.7.0.1', '', 'https://update.joomla.org/language/details3/et-EE_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(28, 18, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.8.3.1', '', 'https://update.joomla.org/language/details3/it-IT_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(29, 18, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/km-KH_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(30, 18, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.8.1.1', '', 'https://update.joomla.org/language/details3/ko-KR_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(31, 18, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/lv-LV_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(32, 18, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/mk-MK_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(33, 18, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.7.4.1', '', 'https://update.joomla.org/language/details3/nb-NO_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(34, 18, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/nn-NO_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(35, 18, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/fa-IR_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(36, 18, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.8.3.1', '', 'https://update.joomla.org/language/details3/pl-PL_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(37, 18, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/pt-PT_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(38, 18, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/ru-RU_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(39, 18, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/en-AU_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(40, 18, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.8.1.1', '', 'https://update.joomla.org/language/details3/sk-SK_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(41, 18, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/en-US_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(42, 18, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/sv-SE_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(43, 18, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/sy-IQ_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(44, 18, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.8.3.1', '', 'https://update.joomla.org/language/details3/ta-IN_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(45, 18, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/th-TH_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(46, 18, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/tr-TR_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(47, 18, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.7.1.1', '', 'https://update.joomla.org/language/details3/uk-UA_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(48, 18, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/ug-CN_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(49, 18, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.2', '', 'https://update.joomla.org/language/details3/sq-AL_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(50, 18, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/eu-ES_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(51, 18, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.2', '', 'https://update.joomla.org/language/details3/hi-IN_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(52, 18, 0, 'German DE', '', 'pkg_de-DE', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/de-DE_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(53, 18, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/pt-BR_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(54, 18, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/sr-YU_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(55, 18, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/es-ES_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(56, 18, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.8.0.1', '', 'https://update.joomla.org/language/details3/bs-BA_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(57, 18, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/sr-RS_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(58, 18, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/vi-VN_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(59, 18, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/id-ID_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(60, 18, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.8.1.1', '', 'https://update.joomla.org/language/details3/fi-FI_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(61, 18, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/sw-KE_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(62, 18, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/srp-ME_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(63, 18, 0, 'English CA', '', 'pkg_en-CA', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/en-CA_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(64, 18, 0, 'French CA', '', 'pkg_fr-CA', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/fr-CA_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(65, 18, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/cy-GB_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(66, 18, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/si-LK_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(67, 18, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.2', '', 'https://update.joomla.org/language/details3/prs-AF_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(68, 18, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.5.0.2', '', 'https://update.joomla.org/language/details3/tk-TM_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(69, 18, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/ga-IE_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(70, 18, 0, 'Dzongkha', '', 'pkg_dz-BT', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/dz-BT_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(71, 18, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/sl-SI_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(72, 18, 0, 'Spanish CO', '', 'pkg_es-CO', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/es-CO_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(73, 18, 0, 'German CH', '', 'pkg_de-CH', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/de-CH_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(74, 18, 0, 'German AT', '', 'pkg_de-AT', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/de-AT_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(75, 18, 0, 'German LI', '', 'pkg_de-LI', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/de-LI_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(76, 18, 0, 'German LU', '', 'pkg_de-LU', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/de-LU_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(77, 18, 0, 'English NZ', '', 'pkg_en-NZ', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/en-NZ_details.xml', '', '');
INSERT INTO `bc73q_updates` VALUES(78, 21, 10317, 'Regular Labs - Articles Anywhere', '', 'articlesanywhere', 'plugin', 'system', 0, '7.3.1FREE', '', 'https://download.regularlabs.com/updates.xml?e=articlesanywhere&type=.xml', 'https://www.regularlabs.com/extensions/articlesanywhere#download', '');
