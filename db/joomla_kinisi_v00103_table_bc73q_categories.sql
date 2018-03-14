
DROP TABLE IF EXISTS `bc73q_categories`;
CREATE TABLE `bc73q_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `bc73q_categories` VALUES(1, 0, 0, 0, 163, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 630, '2017-10-08 20:11:14', 0, '0000-00-00 00:00:00', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 0, '0000-00-00 00:00:00', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(3, 28, 1, 53, 54, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 0, '0000-00-00 00:00:00', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(4, 29, 1, 55, 56, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 0, '0000-00-00 00:00:00', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(5, 30, 1, 57, 58, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 0, '0000-00-00 00:00:00', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(6, 31, 1, 59, 60, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 0, '0000-00-00 00:00:00', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(7, 32, 1, 61, 62, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 0, '0000-00-00 00:00:00', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(8, 64, 1, 3, 6, 1, 'kinisi', 'com_content', 'Kinisi', 'kinisi', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 630, '2017-11-02 09:01:23', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(9, 65, 1, 7, 24, 1, 'o-nas', 'com_content', 'O nás', 'o-nas', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 630, '2017-11-02 09:00:47', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(10, 66, 1, 49, 50, 1, 'podminky-uziti', 'com_content', 'Podmínky užití', 'podminky-uziti', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 630, '2017-10-23 20:11:58', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(11, 67, 1, 25, 48, 1, 'clanky', 'com_content', 'Články', 'clanky', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 630, '2017-11-02 09:01:52', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(12, 68, 11, 26, 27, 2, 'clanky/verejne', 'com_content', 'Veřejné', 'verejne', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 630, '2017-11-02 09:02:15', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(13, 69, 11, 28, 29, 2, 'clanky/doporucene', 'com_content', 'Doporučené', 'doporucene', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 630, '2017-11-02 09:03:24', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(14, 70, 11, 30, 31, 2, 'clanky/nedavne', 'com_content', 'Nedávné', 'nedavne', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 630, '2017-11-02 09:02:36', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(15, 71, 11, 32, 33, 2, 'clanky/posledni', 'com_content', 'Poslední', 'posledni', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', 'Články fyzioterapeutické centrum Kinisi Praha', 'fyzioterapeutické centrum Kinisi Praha, novinky, články', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 630, '2018-02-18 19:23:45', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(18, 74, 62, 99, 100, 3, 'stranky/elements/fyzioterapie-sluzby-1', 'com_content', 'Služby I', 'fyzioterapie-sluzby-1', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 630, '2017-10-22 20:37:09', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(25, 81, 43, 88, 89, 2, 'stranky/history', 'com_content', 'History', 'history', '', '', 0, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 630, '2017-10-08 20:11:14', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(26, 82, 43, 82, 87, 2, 'stranky/tym-fyzioterapie-kinisi', 'com_content', 'Tým Centra fyzioterapie Kinisi', 'tym-fyzioterapie-kinisi', '', '<p><strong>&nbsp;</strong></p>\r\n', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 630, '2017-10-17 14:01:33', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(27, 83, 43, 80, 81, 2, 'stranky/faqs', 'com_content', 'FAQs', 'faqs', '', '', 0, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 630, '2017-10-08 20:11:14', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(28, 84, 43, 90, 91, 2, 'stranky/reference', 'com_content', 'Reference', 'reference', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 630, '2017-11-02 09:06:36', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(29, 85, 1, 51, 52, 1, 'help', 'com_content', 'Help', 'help', '', '', 0, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 0, '0000-00-00 00:00:00', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(30, 144, 1, 63, 64, 1, 'website-administrators', 'com_contact', 'Website Administrators', 'website-administrators', '', '<p>\'Website Administrators\' contact category description. Ut sapien enim, rhoncus sit amet fermentum at, sagittis ac massa. Fusce quis odio sit amet ipsum gravida faucibus vel et turpis. Aliquam a dui pretium elit feugiat interdum. Suspendisse tortor velit, bibendum vitae sollicitudin non, congue quis risus. Aliquam lacus nibh, viverra ut porta ac, luctus sit amet orci. Etiam euismod lacinia lectus et pulvinar. Integer dictum, dui id fermentum auctor, sem nunc ultricies ipsum, sed sagittis est justo nec neque. Integer sit amet justo elit, a dictum nisl.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 0, '0000-00-00 00:00:00', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(31, 273, 1, 65, 66, 1, 'our-latest-works', 'com_content', 'Our Latest Works', 'our-latest-works', '', '', 0, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 630, '2017-10-08 20:11:14', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(32, 284, 43, 68, 79, 2, 'stranky/cenik-sluzeb', 'com_content', 'Ceník služeb', 'cenik-sluzeb', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 630, '2017-11-01 21:11:40', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(33, 290, 9, 8, 9, 2, 'o-nas/counters', 'com_content', 'Counters', 'counters', '', '', 0, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 630, '2017-10-08 20:11:14', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(35, 304, 32, 69, 70, 3, 'stranky/cenik-sluzeb/fyzioterapie-dospelych', 'com_content', 'Fyzioterapie dospělých', 'fyzioterapie-dospelych', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 630, '2017-11-01 19:20:10', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(36, 305, 32, 75, 76, 3, 'stranky/cenik-sluzeb/simple', 'com_content', 'Simple', 'simple', '', '', 0, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 0, '0000-00-00 00:00:00', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(43, 342, 1, 67, 112, 1, 'stranky', 'com_content', 'Stránky', 'stranky', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 630, '2017-11-02 09:10:43', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(46, 374, 43, 92, 95, 2, 'stranky/careers', 'com_content', 'Careers', 'careers', '', '', 0, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 630, '2017-10-08 20:11:14', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(47, 376, 46, 93, 94, 3, 'stranky/careers/careers-additional-info', 'com_content', 'Careers additional info', 'careers-additional-info', '', '', 0, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 0, '0000-00-00 00:00:00', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(48, 406, 11, 34, 35, 2, 'clanky/archvivovane-clanky', 'com_content', 'Archvivované články', 'archvivovane-clanky', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 630, '2017-11-02 09:03:53', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(49, 407, 11, 36, 37, 2, 'clanky/nadchazejici-udalosti', 'com_content', 'Nadcházející události', 'nadchazejici-udalosti', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 630, '2017-11-02 09:04:23', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(50, 408, 11, 38, 39, 2, 'clanky/oznameni', 'com_content', 'Oznámení', 'oznameni', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 630, '2017-11-02 09:04:44', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(51, 409, 11, 40, 41, 2, 'clanky/nova-temata', 'com_content', 'Nová témata', 'nova-temata', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 630, '2017-11-02 09:05:08', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(52, 410, 11, 42, 43, 2, 'clanky/informace', 'com_content', 'Informace', 'informace', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 630, '2017-11-02 09:05:32', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(53, 411, 11, 44, 45, 2, 'clanky/novinky', 'com_content', 'Novinky', 'novinky', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 630, '2017-11-02 09:05:59', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(54, 412, 11, 46, 47, 2, 'clanky/updates', 'com_content', 'Updates', 'updates', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 630, '2017-10-08 20:11:14', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(55, 413, 1, 113, 114, 1, 'megamenu', 'com_content', 'Megamenu', 'megamenu', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 0, '0000-00-00 00:00:00', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(57, 438, 62, 97, 98, 3, 'stranky/elements/tabs', 'com_content', 'Tabs', 'tabs', '', '', 0, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 630, '2017-10-08 20:11:14', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(58, 446, 62, 103, 108, 3, 'stranky/elements/progress-bars', 'com_content', 'Progress Bars', 'progress-bars', 'For \"Elements\" page', '', 0, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 630, '2017-10-08 20:11:14', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(59, 447, 58, 104, 105, 4, 'stranky/elements/progress-bars/horizontal', 'com_content', 'Horizontal', 'horizontal', '', '', 0, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 630, '2017-10-08 20:11:14', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(60, 448, 58, 106, 107, 4, 'stranky/elements/progress-bars/vertical', 'com_content', 'Circle', 'vertical', '', '', 0, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 630, '2017-10-08 20:11:14', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(61, 467, 26, 83, 86, 3, 'stranky/tym-fyzioterapie-kinisi/tym-zkusenosti', 'com_content', 'Zkušenosti týmu', 'tym-zkusenosti', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 630, '2017-10-17 14:02:32', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(62, 475, 43, 96, 109, 2, 'stranky/elements', 'com_content', 'Elements', 'elements', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 0, '2017-10-08 20:11:14', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(63, 478, 8, 4, 5, 2, 'kinisi/slider', 'com_content', 'Slider', 'slider', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 0, '2017-10-08 20:11:14', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(64, 519, 1, 115, 116, 1, 'mapa-stranek', 'com_content', 'Mapa stránek', 'mapa-stranek', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 630, '2017-11-02 09:07:42', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(65, 697, 1, 117, 118, 1, 'hp-sluzby', 'com_content', 'HP služby', 'hp-sluzby', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 630, '2017-11-02 09:08:30', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(66, 709, 1, 119, 120, 1, 'hp-reference', 'com_content', 'HP reference', 'hp-reference', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 630, '2017-11-02 09:08:09', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(67, 724, 9, 10, 11, 2, 'o-nas/nase-prednosti', 'com_content', 'Naše přednosti', 'nase-prednosti', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', 630, '2017-12-12 16:32:15', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(68, 747, 61, 84, 85, 4, 'stranky/tym-fyzioterapie-kinisi/tym-zkusenosti/tym-fyzioterapie-kinisi-2', 'com_content', 'Tým Centra fyzioterapie Kinisi (2) test pro more', 'tym-fyzioterapie-kinisi-2', '', '<p><strong>&nbsp;</strong></p>\r\n', -2, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-17 18:55:54', 630, '2017-10-17 18:57:03', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(69, 751, 9, 12, 13, 2, 'o-nas/kvalita-sluzeb', 'com_content', 'Kvalita služeb ', 'kvalita-sluzeb', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-18 12:40:21', 630, '2017-11-02 08:58:33', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(70, 752, 9, 14, 15, 2, 'o-nas/kvalita-sluzeb-2', 'com_content', 'Kvalita služeb 2', 'kvalita-sluzeb-2', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-18 12:40:35', 630, '2017-11-02 08:59:18', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(71, 753, 9, 16, 17, 2, 'o-nas/kvalita-sluzeb-3', 'com_content', 'Kvalita služeb 3', 'kvalita-sluzeb-3', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-18 12:40:44', 630, '2017-11-02 08:59:55', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(72, 754, 9, 18, 19, 2, 'o-nas/kvalita-sluzeb-4', 'com_content', 'Kvalita služeb 4', 'kvalita-sluzeb-4', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-18 12:40:55', 630, '2017-11-02 09:00:20', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(73, 767, 62, 101, 102, 3, 'stranky/elements/fyzioterapie-sluzby-2', 'com_content', 'Služby II', 'fyzioterapie-sluzby-2', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-22 20:36:26', 630, '2017-10-22 20:37:24', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(74, 785, 9, 20, 21, 2, 'o-nas/our-advantages-5', 'com_content', 'our advantages 4 (2)', 'our-advantages-5', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-25 17:35:16', 0, '2017-10-25 17:35:16', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(75, 786, 9, 22, 23, 2, 'o-nas/about-hp-pro-asrticle', 'com_content', 'About HP pro Article', 'about-hp-pro-asrticle', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-25 17:36:02', 630, '2017-10-25 17:36:39', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(76, 797, 43, 110, 111, 2, 'stranky/reference-jednotlivci', 'com_content', 'Reference jednotlivci', 'reference-jednotlivci', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-11-01 16:43:08', 630, '2017-11-02 09:07:18', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(77, 811, 32, 71, 72, 3, 'stranky/cenik-sluzeb/detska-fyzioterapie', 'com_content', 'Dětská fyzioterapie', 'detska-fyzioterapie', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-11-01 19:20:44', 630, '2017-11-01 19:21:26', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(78, 816, 32, 73, 74, 3, 'stranky/cenik-sluzeb/funkcni-fyziotrening', 'com_content', 'Funkční fyziotréning', 'funkcni-fyziotrening', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-11-01 21:12:01', 630, '2017-11-01 21:12:46', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(83, 834, 1, 121, 160, 1, 'sluzby-a-programy', 'com_content', 'Služby a programy', 'sluzby-a-programy', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-11-08 13:10:57', 0, '2017-11-08 13:10:57', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(84, 835, 83, 122, 129, 2, 'sluzby-a-programy/fyzioterapie-dospelych', 'com_content', 'Fyzioterapie dospělých', 'fyzioterapie-dospelych', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-11-08 13:12:36', 630, '2017-11-24 12:28:18', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(85, 836, 84, 123, 124, 3, 'sluzby-a-programy/fyzioterapie-dospelych/vysetreni', 'com_content', 'Vyšetření', 'vysetreni', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-11-08 13:13:33', 0, '2017-11-08 13:13:33', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(86, 837, 84, 125, 126, 3, 'sluzby-a-programy/fyzioterapie-dospelych/indikace', 'com_content', 'Indikace', 'indikace', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-11-08 13:13:54', 0, '2017-11-08 13:13:54', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(87, 838, 84, 127, 128, 3, 'sluzby-a-programy/fyzioterapie-dospelych/metody-a-terapeuticke-pristupy', 'com_content', 'Metody a terapeutické přístupy', 'metody-a-terapeuticke-pristupy', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-11-08 13:14:12', 0, '2017-11-08 13:14:12', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(88, 839, 83, 130, 137, 2, 'sluzby-a-programy/detska-fyzioterapie', 'com_content', 'Dětská fyzioterapie', 'detska-fyzioterapie', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-11-08 13:14:46', 0, '2017-11-08 13:14:46', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(89, 840, 88, 131, 132, 3, 'sluzby-a-programy/detska-fyzioterapie/vysetreni', 'com_content', 'Vyšetření', 'vysetreni', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-11-08 13:15:08', 0, '2017-11-08 13:15:08', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(90, 841, 88, 133, 134, 3, 'sluzby-a-programy/detska-fyzioterapie/indikace', 'com_content', 'Indikace', 'indikace', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-11-08 13:15:28', 0, '2017-11-08 13:15:28', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(91, 842, 88, 135, 136, 3, 'sluzby-a-programy/detska-fyzioterapie/metody-a-terapeuticke-pristupy', 'com_content', 'Metody a terapeutické přístupy', 'metody-a-terapeuticke-pristupy', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-11-08 13:15:50', 0, '2017-11-08 13:15:50', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(92, 843, 83, 138, 143, 2, 'sluzby-a-programy/akutni-a-pooperacni-fyzioterapie', 'com_content', 'Akutní a pooperační fyzioterapie', 'akutni-a-pooperacni-fyzioterapie', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-11-08 13:16:33', 0, '2017-11-08 13:16:33', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(93, 844, 92, 139, 140, 3, 'sluzby-a-programy/akutni-a-pooperacni-fyzioterapie/akutni-fyzioterapie', 'com_content', 'Akutní fyzioterapie', 'akutni-fyzioterapie', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-11-08 13:16:53', 0, '2017-11-08 13:16:53', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(94, 845, 92, 141, 142, 3, 'sluzby-a-programy/akutni-a-pooperacni-fyzioterapie/pooperacni-fyzioterapie', 'com_content', 'Pooperační fyzioterapie', 'pooperacni-fyzioterapie', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-11-08 13:17:31', 0, '2017-11-08 13:17:31', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(95, 846, 83, 144, 151, 2, 'sluzby-a-programy/funkcni-fyziotrening', 'com_content', 'Funkční fyziotréning', 'funkcni-fyziotrening', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-11-08 13:18:06', 0, '2017-11-08 13:18:06', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(96, 847, 95, 145, 146, 3, 'sluzby-a-programy/funkcni-fyziotrening/preventivni-programy', 'com_content', 'Preventivní programy', 'preventivni-programy', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-11-08 13:18:28', 0, '2017-11-08 13:18:28', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(97, 848, 95, 147, 148, 3, 'sluzby-a-programy/funkcni-fyziotrening/spravne-cviceni-a-posilovani', 'com_content', 'Správné cvičení a posilování', 'spravne-cviceni-a-posilovani', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-11-08 13:18:48', 0, '2017-11-08 13:18:48', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(98, 849, 95, 149, 150, 3, 'sluzby-a-programy/funkcni-fyziotrening/metody-a-treninkove-prostredky', 'com_content', 'Metody a tréninkové prostředky', 'metody-a-treninkove-prostredky', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-11-08 13:19:07', 0, '2017-11-08 13:19:07', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(99, 850, 83, 152, 153, 2, 'sluzby-a-programy/fyzioterapie-pro-zeny', 'com_content', 'Fyzioterapie pro ženy', 'fyzioterapie-pro-zeny', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-11-08 13:19:49', 0, '2017-11-08 13:19:49', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(100, 851, 83, 154, 155, 2, 'sluzby-a-programy/pece-o-sportovce', 'com_content', 'Péče o sportovce', 'pece-o-sportovce', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-11-08 13:21:20', 0, '2017-11-08 13:21:20', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(101, 876, 1, 161, 162, 1, 'metody-a-lecebne-pristupy', 'com_content', 'METODY A LÉČEBNÉ PŘÍSTUPY', 'metody-a-lecebne-pristupy', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-11-08 21:32:57', 0, '2017-11-08 21:32:57', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(102, 913, 32, 77, 78, 3, 'stranky/cenik-sluzeb/masaze', 'com_content', 'Masáže', 'masaze', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', 'Masáže Kinisi centrum fyzioterapie', 'sportovní masáže Praha 9, relaxační masáže Praha 9, klasické masáže Praha 9', '{\"author\":\"\",\"robots\":\"\"}', 630, '2018-02-18 20:11:32', 630, '2018-02-18 20:22:26', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(103, 917, 83, 156, 157, 2, 'sluzby-a-programy/pristrojova-fyzioterapie', 'com_content', 'Přístrojová fyzioterapie', 'pristrojova-fyzioterapie', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2018-03-14 13:42:35', 0, '2018-03-14 13:42:35', 0, '*', 1);
INSERT INTO `bc73q_categories` VALUES(104, 918, 83, 158, 159, 2, 'sluzby-a-programy/masaze', 'com_content', 'Masáže', 'masaze', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2018-03-14 13:42:59', 0, '2018-03-14 13:42:59', 0, '*', 1);
