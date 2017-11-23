
DROP TABLE IF EXISTS `bc73q_template_styles`;
CREATE TABLE `bc73q_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `bc73q_template_styles` VALUES(4, 'beez3', 0, '0', 'Beez3 - Default', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}');
INSERT INTO `bc73q_template_styles` VALUES(5, 'hathor', 1, '0', 'Hathor - Default', '{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}');
INSERT INTO `bc73q_template_styles` VALUES(7, 'protostar', 0, '0', 'protostar - Default', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}');
INSERT INTO `bc73q_template_styles` VALUES(8, 'isis', 1, '1', 'isis - Default', '{\"templateColor\":\"\",\"logoFile\":\"\"}');
INSERT INTO `bc73q_template_styles` VALUES(9, 'theme3447', 0, '1', 'theme3447 - Default', '{\"top_layout\":\"normal\",\"header_layout\":\"normal\",\"navigation_layout\":\"normal\",\"showcase_layout\":\"fullwidth\",\"feature_layout\":\"fullwidth\",\"breadcrumbs_layout\":\"normal\",\"maintop_layout\":\"normal\",\"map_layout\":\"normal\",\"content_layout\":\"normal\",\"video_layout\":\"normal\",\"mainbottom_layout\":\"normal\",\"mainbottom-2_layout\":\"normal\",\"mainbottom-3_layout\":\"normal\",\"mainbottom-4_layout\":\"normal\",\"mainbottom-5_layout\":\"normal\",\"bottom_layout\":\"normal\",\"footer_layout\":\"normal\",\"copyright_layout\":\"normal\",\"logoFile\":\"images\\/6logo_kinisi_final.png\",\"logoBlockWidth\":\"2\",\"LogoDescription\":\"0\",\"logo_description_title\":\"\",\"footerLogo\":\"0\",\"footerLogoFile\":\"\",\"footerWidth\":\"6\",\"footerCopy\":\"1\",\"footerYear\":\"1\",\"privacyLink\":\"1\",\"privacy_link_menu\":\"176\",\"privacy_link_title\":\"Privacy Policy\",\"termsLink\":\"0\",\"terms_link_menu\":\"124\",\"terms_link_title\":\"\",\"asideLeftWidth\":\"4\",\"asideRightWidth\":\"3\",\"featuredPageHeading\":\"h3\",\"featuredItemHeading\":\"h5\",\"categoryPageHeading\":\"h3\",\"categoryItemHeading\":\"h5\",\"blogPageHeading\":\"h3\",\"blogItemHeading\":\"h5\",\"itemItemHeading\":\"h3\",\"itemBlogItemHeading\":\"h5\",\"totop\":\"1\",\"totop_text\":\" \",\"todesktop\":\"0\",\"todesktop_text\":\"Zp\\u011bt k desktopov\\u00e9 verzi\",\"tomobile_text\":\"Zp\\u011bt k mobiln\\u00ed verzi\",\"blackandwhite\":\"0\",\"invertHoverEffect\":\"1\",\"fadeIn\":\"500\",\"fadeOut\":\"500\",\"countdown_time\":\"\",\"color_scheme\":\"color_scheme_1\"}');
INSERT INTO `bc73q_template_styles` VALUES(10, 'theme3447', 0, '0', 'theme3447 - Careers', '{\"top_layout\":\"normal\",\"header_layout\":\"normal\",\"navigation_layout\":\"normal\",\"showcase_layout\":\"fullwidth\",\"feature_layout\":\"fullwidth\",\"breadcrumbs_layout\":\"normal\",\"maintop_layout\":\"normal\",\"map_layout\":\"normal\",\"content_layout\":\"normal\",\"video_layout\":\"normal\",\"mainbottom_layout\":\"normal\",\"mainbottom-2_layout\":\"normal\",\"mainbottom-3_layout\":\"normal\",\"mainbottom-4_layout\":\"normal\",\"mainbottom-5_layout\":\"normal\",\"bottom_layout\":\"normal\",\"footer_layout\":\"normal\",\"copyright_layout\":\"normal\",\"logoFile\":\"images\\/6logo_kinisi_final.png\",\"logoBlockWidth\":\"2\",\"LogoDescription\":\"0\",\"logo_description_title\":\"\",\"footerLogo\":\"0\",\"footerLogoFile\":\"\",\"footerWidth\":\"6\",\"footerCopy\":\"1\",\"footerYear\":\"1\",\"privacyLink\":\"1\",\"privacy_link_menu\":\"176\",\"privacy_link_title\":\"Privacy Policy\",\"termsLink\":\"0\",\"terms_link_menu\":\"124\",\"terms_link_title\":\"\",\"asideLeftWidth\":\"4\",\"asideRightWidth\":\"5\",\"featuredPageHeading\":\"h3\",\"featuredItemHeading\":\"h5\",\"categoryPageHeading\":\"h3\",\"categoryItemHeading\":\"h5\",\"blogPageHeading\":\"h3\",\"blogItemHeading\":\"h5\",\"itemItemHeading\":\"h3\",\"itemBlogItemHeading\":\"h5\",\"totop\":\"1\",\"totop_text\":\" \",\"todesktop\":\"0\",\"todesktop_text\":\"Back to desktop version\",\"tomobile_text\":\"Back to mobile version\",\"blackandwhite\":\"0\",\"invertHoverEffect\":\"1\",\"fadeIn\":\"500\",\"fadeOut\":\"500\",\"countdown_time\":\"\",\"color_scheme\":\"color_scheme_1\"}');
INSERT INTO `bc73q_template_styles` VALUES(11, 'theme3447', 0, '0', 'theme3447 - Home', '{\"top_layout\":\"normal\",\"header_layout\":\"normal\",\"navigation_layout\":\"normal\",\"showcase_layout\":\"fullwidth\",\"feature_layout\":\"fullwidth\",\"breadcrumbs_layout\":\"normal\",\"maintop_layout\":\"normal\",\"map_layout\":\"normal\",\"content_layout\":\"normal\",\"video_layout\":\"normal\",\"mainbottom_layout\":\"normal\",\"mainbottom-2_layout\":\"normal\",\"mainbottom-3_layout\":\"normal\",\"mainbottom-4_layout\":\"normal\",\"mainbottom-5_layout\":\"normal\",\"bottom_layout\":\"normal\",\"footer_layout\":\"normal\",\"copyright_layout\":\"normal\",\"logoFile\":\"images\\/6logo_kinisi_final.png\",\"logoBlockWidth\":\"2\",\"LogoDescription\":\"0\",\"logo_description_title\":\"\",\"footerLogo\":\"0\",\"footerLogoFile\":\"\",\"footerWidth\":\"6\",\"footerCopy\":\"1\",\"footerYear\":\"1\",\"privacyLink\":\"1\",\"privacy_link_menu\":\"176\",\"privacy_link_title\":\"Privacy Policy\",\"termsLink\":\"0\",\"terms_link_menu\":\"124\",\"terms_link_title\":\"\",\"asideLeftWidth\":\"4\",\"asideRightWidth\":\"3\",\"featuredPageHeading\":\"h3\",\"featuredItemHeading\":\"h5\",\"categoryPageHeading\":\"h3\",\"categoryItemHeading\":\"h5\",\"blogPageHeading\":\"h3\",\"blogItemHeading\":\"h5\",\"itemItemHeading\":\"h3\",\"itemBlogItemHeading\":\"h5\",\"totop\":\"1\",\"totop_text\":\"\",\"todesktop\":\"0\",\"todesktop_text\":\"Zp\\u011bt k desctopov\\u00e9 verzi\",\"tomobile_text\":\"Zp\\u011bt k mobiln\\u00ed verzi\",\"blackandwhite\":\"0\",\"invertHoverEffect\":\"1\",\"fadeIn\":\"500\",\"fadeOut\":\"500\",\"countdown_time\":\"\",\"color_scheme\":\"color_scheme_1\"}');
