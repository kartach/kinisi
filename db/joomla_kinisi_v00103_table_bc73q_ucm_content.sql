
DROP TABLE IF EXISTS `bc73q_ucm_content`;
CREATE TABLE `bc73q_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

INSERT INTO `bc73q_ucm_content` VALUES(1, 'com_content.article', 'Children\'s Book Exhibition', 'anniversary-showcase-of-fox-tv-shows-and-movies', '<p>In this article, you will find out about the Children\'s Book Exhibition - an annual event that gathers the world\'s most famous authors of infantile and teenage literature.</p>\r\n', 1, '', 0, 1, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"theme3447:blog\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 630, '', '2017-10-08 20:11:14', 630, '2017-10-08 20:11:14', '*', '2017-10-08 20:11:14', '0000-00-00 00:00:00', 11, 509, '{\"image_intro\":\"images\\/blog\\/blog-thumb1.jpg\",\"float_intro\":\"none\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/blog\\/blog-img1.jpg\",\"float_fulltext\":\"none\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 501, 46, 1, '', '', 48, '', 1);
INSERT INTO `bc73q_ucm_content` VALUES(2, 'com_content.article', 'Svaly kolem kolena by měl posilovat každý', 'svaly-okolo-kolena-by-mel-posilovat-kazdy', '<p>Koleno trpí, když sedíte a necvičíte. Svaly ochabnou a kloub je náchylnější na zranění. Fyzioterapeutka Lenka Augustínová prozradila v článku s videem pro slovenský server <a href=\"http://www.pluska.sk/izdravie/bud-fit/video-svaly-okolo-kolena-mal-posilnovat-kazdy-preco.html\" title=\"Pluska.sk\">Pluska.sk</a>, proč se vylatí kolena procvičovat.</p>\r\n\r\n', 1, '', 0, 1, '{\"article_layout\":\"theme3447:blog\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\\u010c\\u00edst v\\u00edce..\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"1\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"0\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 630, '', '2017-12-08 20:11:14', 630, '2018-02-18 19:31:18', '*', '2017-12-08 20:11:14', '0000-00-00 00:00:00', 10, 717, '{\"image_intro\":\"images\\/blog\\/HPpooperacni-fyzio.jpg\",\"float_intro\":\"none\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"none\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 444, 43, 2, 'Centrum fyzioterapie, fyzioterapie Praha 9, fyzioterapeut Praha, dětský fyzioterapeut', 'Když svaly ochabnou, kloub je náchylnější na zranění, kolena se vyplatí procvičovat.', 15, '', 1);
INSERT INTO `bc73q_ucm_content` VALUES(3, 'com_content.article', 'Presentations that Impress Your Audit Committee', 'presentations-that-impress-your-audit-committee', '<p>Modern business is often observed in a complex manner. Like any organism requires a lot of elements to function correctly, a company contains some departments that play vital roles in its successful functioning. Work of these departments may be connected with finances, and if it is, then cost management becomes important for flawless functioning of such departments.</p>\r\n', 1, '', 0, 1, '{\"article_layout\":\"theme3447:blog\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 630, '', '2017-10-08 20:11:14', 630, '2017-10-08 20:11:14', '*', '2017-10-08 20:11:14', '0000-00-00 00:00:00', 9, 718, '{\"image_intro\":\"images\\/blog\\/blog-thumb3.jpg\",\"float_intro\":\"none\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/blog\\/blog-img3.jpg\",\"float_fulltext\":\"none\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 25, 25, 0, '', '', 15, '', 1);
INSERT INTO `bc73q_ucm_content` VALUES(4, 'com_content.article', 'Plážový volejbal z pohledu fyzioterapeuta', 'fyzioterapeutuv-sen-plazovy-volejbal', '<p>Plážový volejbal je velice prospěšný pro náš pohybový systém. Při správně zvládnuté technice <strong>jsme schopni aktivovat</strong> nejen <strong>šikmé břišní svaly</strong> a <strong>hluboké svalstvo trupu </strong>zodpovědné za stabilizaci páteře, ale také <strong>svaly v oblasti ramen, pánve a kloubů dolních končetin</strong>. K přínosům plážového fotbalu se vyjadřoval Martin Vojtovič z pražského fyzioterapeutického centra pro server <a href=\"https://www.zeny.cz/lifestyle/go-to-the-beach-5-duvodu-proc-hrat-plazovy-volejbal-2330.html\" title=\"zena.cz\">zena.cz.</a>&nbsp;</p>\r\n\r\n', 1, '', 0, 1, '{\"article_layout\":\"theme3447:blog\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"C\\u00edst v\\u00edce..\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 630, '', '2017-10-08 20:11:14', 630, '2017-12-18 19:31:59', '*', '2017-10-08 20:11:14', '0000-00-00 00:00:00', 13, 719, '{\"image_intro\":\"images\\/blog\\/beach-volleyball.jpg\",\"float_intro\":\"none\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"none\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 455, 37, 2, 'Plážový volejbal, fyzio, fyzioterapie dětí Praha 9', 'Mgr. Vojtovič z fyzioterapeutického centra v Praze 9 - Kinisi uvádí, že plážový volejbal je velice prospěšný pro náš pohybový systém.', 15, '', 1);
INSERT INTO `bc73q_ucm_content` VALUES(5, 'com_content.article', 'Top 3 Concerns Whe Choosing a Cloud Vendor', 'op-3-concerns-whe-choosing-a-cloud-vendor', '<p>Are you a journalist or a creative personality? Do you want to share information with the world? Then our new project will be perfect for you to express your ideas and concepts.</p>\r\n', 1, '', 0, 1, '{\"article_layout\":\"theme3447:blog\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 630, '', '2017-10-08 20:11:14', 630, '2017-10-08 20:11:14', '*', '2017-10-08 20:11:14', '0000-00-00 00:00:00', 12, 694, '{\"image_intro\":\"images\\/blog\\/blog-thumb5.jpg\",\"float_intro\":\"none\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/blog\\/blog-img5.jpg\",\"float_fulltext\":\"none\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 10, 34, 0, '', '', 14, '', 1);
INSERT INTO `bc73q_ucm_content` VALUES(7, 'com_content.article', 'American Tea and Coffee Fair: The Most Anticipated Event', 'american-tea-and-coffee-fair-the-most-anticipated-event', '<p>The American Tea and Coffee Fair is one of the events that can definitely boast the title of the most anticipated one. In the USA, this fair has been numerously recognized as the most popular and important event to promote unknown yet very tasty sorts of tea and coffee, created by enthusiastic tea and coffee lovers and well-known manufacturers of these drinks.</p>\r\n', 1, '', 0, 1, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"theme3447:blog\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 630, '', '2017-10-08 20:11:14', 630, '2017-10-08 20:11:14', '*', '2017-10-08 20:11:14', '0000-00-00 00:00:00', 8, 514, '{\"image_intro\":\"images\\/blog\\/blog-thumb7.jpg\",\"float_intro\":\"none\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/blog\\/blog-img7.jpg\",\"float_fulltext\":\"none\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 9, 23, 1, '', '', 50, '', 1);
INSERT INTO `bc73q_ucm_content` VALUES(8, 'com_content.article', 'Music is now officially proved to have influence on us', 'music-is-now-officially-proved-to-have-influence-on-us', '<p>During our latest visit, the scientists of the Seattle Scientific Company laboratory have unveiled some information about their current project, and today we can share the results of their research with you.</p>\r\n\r\n', 1, '', 0, 1, '{\"article_layout\":\"theme3447:blog\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 630, '', '2017-10-08 20:11:14', 630, '2017-11-02 09:43:41', '*', '2017-10-08 20:11:14', '0000-00-00 00:00:00', 15, 819, '{\"image_intro\":\"images\\/blog\\/blog-thumb8.jpg\",\"float_intro\":\"none\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/blog\\/blog-img8.jpg\",\"float_fulltext\":\"none\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 8, 26, 0, '', '', 15, '', 1);
INSERT INTO `bc73q_ucm_content` VALUES(9, 'com_content.article', 'Audit Data Analytics: Why Auditors Dhould Care', 'audit-data-analytics-why-auditors-dhould-care', '<p>The North American Auto Show, one of the most important annual events that influence the international automotive industry and exhibits its main achievements, is eventually confirmed to take place in Chicago, IL. Located on the southwestern coast of Lake Michigan, this city will host representatives of vehicle manufacturers from all over the world. They include American companies (Ford, General Motors), European (Alfa Romeo, Lotus, BMW, FIAT, Seat) as well as Japanese ones and many others.</p>\r\n', 1, '', 0, 1, '{\"article_layout\":\"theme3447:blog\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 630, '', '2017-10-08 20:11:14', 630, '2017-10-08 20:11:14', '*', '2017-10-08 20:11:14', '0000-00-00 00:00:00', 118, 692, '{\"image_intro\":\"images\\/blog\\/blog-thumb1.jpg\",\"float_intro\":\"none\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/blog\\/blog-img1.jpg\",\"float_fulltext\":\"none\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 327, 53, 1, '', '', 14, '', 1);
INSERT INTO `bc73q_ucm_content` VALUES(10, 'com_content.article', 'Anniversary Showcase of Fox TV shows and movies ', 'anniversary-showcase-of-fox-tv-shows-and-movies', '<p>Fox TV Channel is showcasing the most successful series and full-length films of 20th Century Fox this month in all American cinemas with wide promotional campaign of their upcoming projects.</p>\r\n', 1, '', 0, 1, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"theme3447:blog\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 630, '', '2017-10-08 20:11:14', 630, '2017-10-08 20:11:14', '*', '2017-10-08 20:11:14', '0000-00-00 00:00:00', 119, 511, '{\"image_intro\":\"images\\/blog\\/blog-thumb2.jpg\",\"float_intro\":\"none\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/blog\\/blog-img2.jpg\",\"float_fulltext\":\"none\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 13, 28, 0, '', '', 53, '', 1);
INSERT INTO `bc73q_ucm_content` VALUES(11, 'com_content.article', 'Jerry C. Lewis has a thought on changing the world we live in', 'jerry-c-lewis-has-a-thought-on-changing-the-world-we-live-in', '<p>Recently our partner, Jerry Conrad Lewis has revealed some of his own global plans alongside with a new set of social measures, designed to improve the world we live in.</p>\r\n', 1, '', 0, 1, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"theme3447:blog\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 630, '', '2017-10-08 20:11:14', 630, '2017-10-08 20:11:14', '*', '2017-10-08 20:11:14', '0000-00-00 00:00:00', 120, 508, '{\"image_intro\":\"images\\/blog\\/blog-thumb3.jpg\",\"float_intro\":\"none\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/blog\\/blog-img3.jpg\",\"float_fulltext\":\"none\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 24, 34, 0, '', '', 54, '', 1);
INSERT INTO `bc73q_ucm_content` VALUES(12, 'com_content.article', 'Audit Data Analytics: Why Auditors Dhould Care (2)', 'audit-data-analytics-why-auditors-dhould-care-2', '<p>The North American Auto Show, one of the most important annual events that influence the international automotive industry and exhibits its main achievements, is eventually confirmed to take place in Chicago, IL. Located on the southwestern coast of Lake Michigan, this city will host representatives of vehicle manufacturers from all over the world. They include American companies (Ford, General Motors), European (Alfa Romeo, Lotus, BMW, FIAT, Seat) as well as Japanese ones and many others.</p>\r\n\r\n', 1, '', 0, 1, '{\"article_layout\":\"theme3447:blog\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 630, '', '2017-10-08 20:11:14', 630, '2017-11-02 09:55:00', '*', '2017-10-08 20:11:14', '0000-00-00 00:00:00', 189, 821, '{\"image_intro\":\"images\\/blog\\/blog-thumb1.jpg\",\"float_intro\":\"none\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/blog\\/blog-img1.jpg\",\"float_fulltext\":\"none\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 0, '', '', 14, '', 1);
INSERT INTO `bc73q_ucm_content` VALUES(13, 'com_content.article', 'Maminky, pozor na zatěžování kloubů a svalů', 'maminky-pozor-na-zatezovani-kloubu-a-svalu', '<p>Maminky na mateřské jsou obdařeny zvláštním darem – vnímají všechny tělesné signály svého dítěte, na které hned dokáží reagovat jako nikdo jiný. Své vlastní tělo však tak pozorně nesledují a své potřeby často ignorují ve prospěch milovaného potomka. S rostoucí hmotností dítěte, a tudíž i náročností mateřské „dovolené“, se jim to však může vymstít. Co dělat, aby maminky fyzicky zvládaly své mateřství? Na dotaz odpovídala fyzioterapeutka Lenka Augustínová z centra fyzioterapie Kinisi v Praze na servru Výhra na sedm.cz.</p>\r\n\r\n', 1, '', 0, 1, '{\"article_layout\":\"theme3447:blog\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\\u010c\\u00edst v\\u00edce..\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 630, '', '2017-10-08 20:11:14', 630, '2017-11-12 00:18:01', '*', '2017-10-08 20:11:14', '0000-00-00 00:00:00', 190, 823, '{\"image_intro\":\"images\\/blog\\/fyzio-po-porodu.jpg\",\"float_intro\":\"none\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"none\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 25, 14, 0, '', 'Co dělat, aby maminky fyzicky zvládaly své mateřství? Na dotaz odpovídala Lenka Augustínová z našeho centra v Praze na servru Výhra na sedm.cz.', 15, '', 1);
INSERT INTO `bc73q_ucm_content` VALUES(14, 'com_content.article', 'Vítáme v týmu nového kolegu zastřešujícího masáže, Bc. Tomáše Mocika ', 'masaze-tomas-mocik', '<p>S potěšením vám oznamujeme, že se náš tým rozrůstá o novou posilu! Bc. Tomáš Mocik je naším novým dvorním masérem. Ve svých masážích se snaží udělat maximum pro klienty, ať už se jedná o přípravu, regeneraci či rekonvalescenci po zranění.</p>\r\n\r\n', 1, '', 0, 1, '{\"article_layout\":\"theme3447:blog\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\\u010c\\u00edst v\\u00edce..\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"1\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"0\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 630, '', '2018-02-18 20:11:14', 630, '2018-03-06 12:14:07', '*', '2018-02-19 20:11:14', '0000-00-00 00:00:00', 234, 908, '{\"image_intro\":\"images\\/blog\\/masaze.jpg\",\"float_intro\":\"none\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"none\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 22, 11, 0, 'masáže Praha 9, sportovní masáže, masáže Kinisi Praha, specialista masáže', 'Vítáme v týmu nového kolegu zastřešujícího masáže, Bc. Tomáše Mocika ', 15, '', 1);
INSERT INTO `bc73q_ucm_content` VALUES(15, 'com_content.article', 'Píchá vás na hrudi nebo pod lopatkou? Příčinou může být zablokované žebro', 'pichani-na-hrudi-pod-lopatkou', '<p>Lidské tělo obsahuje 12 párů žeber, přičemž fyzioterapeuti se zabývají zejména léčbou prvních sedmi, u kterých často nacházíme blokády. Při blokádě žebra dochází k&nbsp;jeho rotaci v&nbsp;podélné ose, přičemž bývá jeho horní hrana zanořená buď dovnitř (1-4. žebro), nebo je naopak odklopená (5.-7. žebro). Příčiny vzniku blokád jsou různorodé. Velkou úlohu tu hrají prsní svaly, které jsou většinou oslabené, nebo naopak přetížené. Tyto blokády následně vyvolávají tzv. zřetězené spasmy, které můžou být zodpovědné také za vznik přenesených bolestí ve vzdálenějších částech těla, které zdánlivě s&nbsp;žebry nesouvisí. Opak je však pravdou, protože zablokované žebro může mít vliv i na bolesti hlavy, lokte, kolene nebo např. lýtka.</p>\r\n\r\n', 1, '', 0, 1, '{\"article_layout\":\"theme3447:blog\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"1\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\\u010c\\u00edst v\\u00edce..\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"1\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"0\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 630, '', '2018-03-13 20:11:14', 630, '2018-03-15 00:40:32', '*', '2018-03-14 20:11:14', '0000-00-00 00:00:00', 250, 930, '{\"image_intro\":\"images\\/blog\\/zebro.jpg\",\"float_intro\":\"none\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"none\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 5, 11, 0, '12 párů žeber, blokády, blokáda žebra', 'Lidské tělo obsahuje 12 párů žeber, přičemž fyzioterapeuti se zabývají zejména léčbou prvních sedmi, u kterých často nacházíme blokády. ', 15, '', 1);
