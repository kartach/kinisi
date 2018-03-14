
DROP TABLE IF EXISTS `bc73q_tags`;
CREATE TABLE `bc73q_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
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
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `bc73q_tags` VALUES(1, 0, 0, 47, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 630, '2017-10-08 20:11:14', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `bc73q_tags` VALUES(3, 1, 1, 2, 1, 'masaze', 'Masáže', 'masaze', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"tag_layout\":\"\",\"tag_link_class\":\"label label-info\"}', ' ', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', '', 630, '2018-02-18 19:25:25', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"0\":\"{\\\"0\\\":\\\"{}\\\"}\"}', 28, '*', 1, '2017-10-08 20:11:14', '2017-10-08 20:11:14');
INSERT INTO `bc73q_tags` VALUES(4, 1, 3, 4, 1, 'popular', 'populární', 'popularni', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{\"tag_layout\":\"\",\"tag_link_class\":\"label label-info\"}', ' ', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', '', 630, '2017-11-02 09:17:50', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"0\":\"{}\"}', 4, '*', 1, '2017-10-08 20:11:14', '2017-10-08 20:11:14');
INSERT INTO `bc73q_tags` VALUES(5, 1, 5, 6, 1, 'public', 'veřejné', 'verejne', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{\"tag_layout\":\"\",\"tag_link_class\":\"label label-info\"}', ' ', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', '', 630, '2017-11-02 09:18:07', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"0\":\"{}\"}', 2, '*', 1, '2017-10-08 20:11:14', '2017-10-08 20:11:14');
INSERT INTO `bc73q_tags` VALUES(6, 1, 7, 8, 1, 'information', 'informace', 'informace', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{\"tag_layout\":\"\",\"tag_link_class\":\"label label-info\"}', ' ', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', '', 630, '2017-11-02 09:18:24', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"0\":\"{}\"}', 3, '*', 1, '2017-10-08 20:11:14', '2017-10-08 20:11:14');
INSERT INTO `bc73q_tags` VALUES(7, 1, 9, 10, 1, 'fresh', 'čerstvé', 'cerstve', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{\"tag_layout\":\"\",\"tag_link_class\":\"label label-info\"}', ' ', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', '', 630, '2017-11-02 09:18:50', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"0\":\"{\\\"0\\\":\\\"{}\\\"}\"}', 14, '*', 1, '2017-10-08 20:11:14', '2017-10-08 20:11:14');
INSERT INTO `bc73q_tags` VALUES(8, 1, 11, 12, 1, 'archive', 'archiv', 'archiv', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{\"tag_layout\":\"\",\"tag_link_class\":\"label label-info\"}', ' ', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', '', 630, '2017-11-02 09:19:07', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"0\":\"{}\"}', 2, '*', 1, '2017-10-08 20:11:14', '2017-10-08 20:11:14');
INSERT INTO `bc73q_tags` VALUES(9, 1, 13, 14, 1, 'news', 'novinky', 'novinky', '', '', 0, 0, '0000-00-00 00:00:00', 1, '{\"tag_layout\":\"\",\"tag_link_class\":\"label label-info\"}', ' ', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', '', 630, '2017-11-02 09:19:23', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"0\":\"{\\\"0\\\":\\\"{}\\\"}\"}', 1, '*', 1, '2017-10-08 20:11:14', '2017-10-08 20:11:14');
INSERT INTO `bc73q_tags` VALUES(10, 1, 15, 16, 1, 'important', 'Důležité', 'dulezite', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"tag_layout\":\"\",\"tag_link_class\":\"label label-info\"}', ' ', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', '', 630, '2017-11-09 14:06:27', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"0\":\"{}\"}', 203, '*', 1, '2017-10-08 20:11:14', '2017-10-08 20:11:14');
INSERT INTO `bc73q_tags` VALUES(11, 1, 17, 18, 1, 'topic', 'téma', 'tema', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{\"tag_layout\":\"\",\"tag_link_class\":\"label label-info\"}', ' ', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', '', 630, '2017-11-02 09:19:57', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"0\":\"{}\"}', 1, '*', 1, '2017-10-08 20:11:14', '2017-10-08 20:11:14');
INSERT INTO `bc73q_tags` VALUES(12, 1, 19, 20, 1, 'publication', 'Média', 'media', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"tag_layout\":\"\",\"tag_link_class\":\"label label-info\"}', ' ', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', '', 630, '2017-11-09 14:06:41', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"0\":\"{}\"}', 228, '*', 1, '2017-10-08 20:11:14', '2017-10-08 20:11:14');
INSERT INTO `bc73q_tags` VALUES(13, 1, 21, 22, 1, 'announcement', 'oznámení', 'oznameni', '', '', 0, 0, '0000-00-00 00:00:00', 1, '{\"tag_layout\":\"\",\"tag_link_class\":\"label label-info\"}', ' ', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', '', 630, '2017-11-02 09:20:36', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"0\":\"{}\"}', 2, '*', 1, '2017-10-08 20:11:14', '2017-10-08 20:11:14');
INSERT INTO `bc73q_tags` VALUES(14, 1, 23, 24, 1, 'content', 'obsah', 'obsah', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{\"tag_layout\":\"\",\"tag_link_class\":\"label label-info\"}', ' ', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', '', 630, '2017-11-02 09:20:52', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"0\":\"{\\\"0\\\":\\\"{}\\\"}\"}', 11, '*', 1, '2017-10-08 20:11:14', '2017-10-08 20:11:14');
INSERT INTO `bc73q_tags` VALUES(15, 1, 25, 26, 1, 'latest', 'poslední', 'posledni', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{\"tag_layout\":\"\",\"tag_link_class\":\"label label-info\"}', ' ', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', '', 630, '2017-11-02 09:21:10', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"0\":\"{}\"}', 3, '*', 1, '2017-10-08 20:11:14', '2017-10-08 20:11:14');
INSERT INTO `bc73q_tags` VALUES(16, 1, 27, 28, 1, 'recent', 'nedávné', 'nedavne', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{\"tag_layout\":\"\",\"tag_link_class\":\"label label-info\"}', ' ', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', '', 630, '2017-11-02 09:21:26', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"0\":\"{\\\"0\\\":\\\"{}\\\"}\"}', 2, '*', 1, '2017-10-08 20:11:14', '2017-10-08 20:11:14');
INSERT INTO `bc73q_tags` VALUES(17, 1, 29, 30, 1, 'text', 'text', 'text', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{\"tag_layout\":\"\",\"tag_link_class\":\"label label-info\"}', ' ', ' ', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-10-08 20:11:14', '', 630, '2017-10-08 20:11:14', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"0\":\"{\\\"0\\\":\\\"{\\\\\\\"0\\\\\\\":\\\\\\\"{\\\\\\\\\\\\\\\"urla\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"\\\\\\\\\\\\\\\"}\\\\\\\"}\\\"}\"}', 3, '*', 1, '2017-10-08 20:11:14', '2017-10-08 20:11:14');
INSERT INTO `bc73q_tags` VALUES(18, 1, 31, 32, 1, '', 'Funkční trénink', 'funkcni-trenink', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"tag_layout\":\"\",\"tag_link_class\":\"label label-info\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-11-09 14:03:57', '', 630, '2017-11-09 14:11:10', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{}', 4, '*', 1, '2017-11-09 14:03:57', '2017-11-09 14:03:57');
INSERT INTO `bc73q_tags` VALUES(19, 1, 33, 34, 1, '', 'Fyzioterapie pro ženy', 'fyzioterapie-pro-zeny', '', '', 1, 0, '2017-11-09 14:04:24', 1, '{\"tag_layout\":\"\",\"tag_link_class\":\"label label-info\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-11-09 14:04:24', '', 0, '2017-11-09 14:04:24', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{}', 211, '*', 1, '2017-11-09 14:04:24', '2017-11-09 14:04:24');
INSERT INTO `bc73q_tags` VALUES(20, 1, 35, 36, 1, '', 'Cvičení s dětmi', 'cviceni-s-detmi', '', '', 1, 0, '2017-11-09 14:04:41', 1, '{\"tag_layout\":\"\",\"tag_link_class\":\"label label-info\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-11-09 14:04:41', '', 0, '2017-11-09 14:04:41', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{}', 208, '*', 1, '2017-11-09 14:04:41', '2017-11-09 14:04:41');
INSERT INTO `bc73q_tags` VALUES(21, 1, 37, 38, 1, '', 'Klouby', 'klouby', '', '', 1, 0, '2017-11-09 14:04:49', 1, '{\"tag_layout\":\"\",\"tag_link_class\":\"label label-info\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-11-09 14:04:49', '', 0, '2017-11-09 14:04:49', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{}', 208, '*', 1, '2017-11-09 14:04:49', '2017-11-09 14:04:49');
INSERT INTO `bc73q_tags` VALUES(22, 1, 39, 40, 1, '', 'Břišní svaly', 'brisni-svaly', '', '', 1, 0, '2017-11-09 14:05:17', 1, '{\"tag_layout\":\"\",\"tag_link_class\":\"label label-info\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-11-09 14:05:17', '', 0, '2017-11-09 14:05:17', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{}', 214, '*', 1, '2017-11-09 14:05:17', '2017-11-09 14:05:17');
INSERT INTO `bc73q_tags` VALUES(23, 1, 41, 42, 1, '', 'Pářeř', 'parer', '', '', 1, 0, '2017-11-09 14:05:41', 1, '{\"tag_layout\":\"\",\"tag_link_class\":\"label label-info\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-11-09 14:05:41', '', 0, '2017-11-09 14:05:41', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{}', 4, '*', 1, '2017-11-09 14:05:41', '2017-11-09 14:05:41');
INSERT INTO `bc73q_tags` VALUES(24, 1, 43, 44, 1, '', 'Ramena', 'ramena', '', '', 1, 0, '2017-11-09 14:05:52', 1, '{\"tag_layout\":\"\",\"tag_link_class\":\"label label-info\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-11-09 14:05:52', '', 0, '2017-11-09 14:05:52', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{}', 4, '*', 1, '2017-11-09 14:05:52', '2017-11-09 14:05:52');
INSERT INTO `bc73q_tags` VALUES(25, 1, 45, 46, 1, '', 'Svaly', 'svaly', '', '', 1, 0, '2017-11-09 14:08:54', 1, '{\"tag_layout\":\"\",\"tag_link_class\":\"label label-info\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 630, '2017-11-09 14:08:54', '', 0, '2017-11-09 14:08:54', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{}', 215, '*', 1, '2017-11-09 14:08:54', '2017-11-09 14:08:54');
