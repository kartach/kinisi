
DROP TABLE IF EXISTS `bc73q_contentitem_tag_map`;
CREATE TABLE `bc73q_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

INSERT INTO `bc73q_contentitem_tag_map` VALUES('com_content.article', 7, 8, 13, '2017-10-08 12:11:14', 1);
INSERT INTO `bc73q_contentitem_tag_map` VALUES('com_content.article', 7, 8, 14, '2017-10-08 12:11:14', 1);
INSERT INTO `bc73q_contentitem_tag_map` VALUES('com_content.article', 3, 9, 5, '2017-10-08 12:11:14', 1);
INSERT INTO `bc73q_contentitem_tag_map` VALUES('com_content.article', 3, 9, 6, '2017-10-08 12:11:14', 1);
INSERT INTO `bc73q_contentitem_tag_map` VALUES('com_content.article', 2, 10, 12, '2018-02-18 18:31:18', 1);
INSERT INTO `bc73q_contentitem_tag_map` VALUES('com_content.article', 2, 10, 21, '2018-02-18 18:31:18', 1);
INSERT INTO `bc73q_contentitem_tag_map` VALUES('com_content.article', 2, 10, 25, '2018-02-18 18:31:18', 1);
INSERT INTO `bc73q_contentitem_tag_map` VALUES('com_content.article', 1, 11, 7, '2017-10-08 12:11:14', 1);
INSERT INTO `bc73q_contentitem_tag_map` VALUES('com_content.article', 1, 11, 17, '2017-10-08 12:11:14', 1);
INSERT INTO `bc73q_contentitem_tag_map` VALUES('com_content.article', 5, 12, 9, '2017-10-08 12:11:14', 1);
INSERT INTO `bc73q_contentitem_tag_map` VALUES('com_content.article', 5, 12, 10, '2017-10-08 12:11:14', 1);
INSERT INTO `bc73q_contentitem_tag_map` VALUES('com_content.article', 4, 13, 3, '2017-12-18 18:31:59', 1);
INSERT INTO `bc73q_contentitem_tag_map` VALUES('com_content.article', 4, 13, 12, '2017-12-18 18:31:59', 1);
INSERT INTO `bc73q_contentitem_tag_map` VALUES('com_content.article', 4, 13, 22, '2017-12-18 18:31:59', 1);
INSERT INTO `bc73q_contentitem_tag_map` VALUES('com_content.article', 4, 13, 25, '2017-12-18 18:31:59', 1);
INSERT INTO `bc73q_contentitem_tag_map` VALUES('com_content.article', 8, 15, 15, '2017-11-02 05:43:41', 1);
INSERT INTO `bc73q_contentitem_tag_map` VALUES('com_content.article', 8, 15, 16, '2017-11-02 05:43:41', 1);
INSERT INTO `bc73q_contentitem_tag_map` VALUES('com_content.article', 9, 118, 7, '2017-10-08 12:11:14', 1);
INSERT INTO `bc73q_contentitem_tag_map` VALUES('com_content.article', 9, 118, 17, '2017-10-08 12:11:14', 1);
INSERT INTO `bc73q_contentitem_tag_map` VALUES('com_content.article', 10, 119, 4, '2017-10-08 12:11:14', 1);
INSERT INTO `bc73q_contentitem_tag_map` VALUES('com_content.article', 10, 119, 14, '2017-10-08 12:11:14', 1);
INSERT INTO `bc73q_contentitem_tag_map` VALUES('com_content.article', 11, 120, 5, '2017-10-08 12:11:14', 1);
INSERT INTO `bc73q_contentitem_tag_map` VALUES('com_content.article', 11, 120, 6, '2017-10-08 12:11:14', 1);
INSERT INTO `bc73q_contentitem_tag_map` VALUES('com_content.article', 12, 189, 7, '2017-11-02 05:55:00', 1);
INSERT INTO `bc73q_contentitem_tag_map` VALUES('com_content.article', 12, 189, 15, '2017-11-02 05:55:00', 1);
INSERT INTO `bc73q_contentitem_tag_map` VALUES('com_content.article', 12, 189, 17, '2017-11-02 05:55:00', 1);
INSERT INTO `bc73q_contentitem_tag_map` VALUES('com_content.article', 13, 190, 12, '2017-11-11 20:18:01', 1);
INSERT INTO `bc73q_contentitem_tag_map` VALUES('com_content.article', 13, 190, 19, '2017-11-11 20:18:01', 1);
INSERT INTO `bc73q_contentitem_tag_map` VALUES('com_content.article', 13, 190, 20, '2017-11-11 20:18:01', 1);
INSERT INTO `bc73q_contentitem_tag_map` VALUES('com_content.article', 14, 234, 3, '2018-03-06 11:14:07', 1);
INSERT INTO `bc73q_contentitem_tag_map` VALUES('com_content.article', 14, 234, 21, '2018-03-06 11:14:07', 1);
INSERT INTO `bc73q_contentitem_tag_map` VALUES('com_content.article', 14, 234, 25, '2018-03-06 11:14:07', 1);
INSERT INTO `bc73q_contentitem_tag_map` VALUES('com_content.article', 15, 250, 3, '2018-03-15 00:40:32', 1);
INSERT INTO `bc73q_contentitem_tag_map` VALUES('com_content.article', 15, 250, 21, '2018-03-15 00:40:32', 1);
INSERT INTO `bc73q_contentitem_tag_map` VALUES('com_content.article', 15, 250, 25, '2018-03-15 00:40:32', 1);
INSERT INTO `bc73q_contentitem_tag_map` VALUES('com_content.article', 15, 250, 27, '2018-03-15 00:40:32', 1);
INSERT INTO `bc73q_contentitem_tag_map` VALUES('com_content.article', 15, 250, 28, '2018-03-15 00:40:32', 1);
