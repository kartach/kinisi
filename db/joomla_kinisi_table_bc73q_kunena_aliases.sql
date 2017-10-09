
DROP TABLE IF EXISTS `bc73q_kunena_aliases`;
CREATE TABLE `bc73q_kunena_aliases` (
  `alias` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  `item` varchar(32) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `bc73q_kunena_aliases` VALUES('announcement', 'view', 'announcement', 1);
INSERT INTO `bc73q_kunena_aliases` VALUES('category', 'view', 'category', 1);
INSERT INTO `bc73q_kunena_aliases` VALUES('category/create', 'layout', 'category.create', 1);
INSERT INTO `bc73q_kunena_aliases` VALUES('category/default', 'layout', 'category.default', 1);
INSERT INTO `bc73q_kunena_aliases` VALUES('category/edit', 'layout', 'category.edit', 1);
INSERT INTO `bc73q_kunena_aliases` VALUES('category/manage', 'layout', 'category.manage', 1);
INSERT INTO `bc73q_kunena_aliases` VALUES('category/moderate', 'layout', 'category.moderate', 1);
INSERT INTO `bc73q_kunena_aliases` VALUES('category/user', 'layout', 'category.user', 1);
INSERT INTO `bc73q_kunena_aliases` VALUES('common', 'view', 'common', 1);
INSERT INTO `bc73q_kunena_aliases` VALUES('create', 'layout', 'category.create', 0);
INSERT INTO `bc73q_kunena_aliases` VALUES('credits', 'view', 'credits', 1);
INSERT INTO `bc73q_kunena_aliases` VALUES('default', 'layout', 'category.default', 0);
INSERT INTO `bc73q_kunena_aliases` VALUES('edit', 'layout', 'category.edit', 0);
INSERT INTO `bc73q_kunena_aliases` VALUES('home', 'view', 'home', 1);
INSERT INTO `bc73q_kunena_aliases` VALUES('ideal-forum', 'catid', '5', 0);
INSERT INTO `bc73q_kunena_aliases` VALUES('kunena-the-communication-platform-for-joomla', 'catid', '4', 0);
INSERT INTO `bc73q_kunena_aliases` VALUES('main-forum', 'catid', '1', 1);
INSERT INTO `bc73q_kunena_aliases` VALUES('manage', 'layout', 'category.manage', 0);
INSERT INTO `bc73q_kunena_aliases` VALUES('misc', 'view', 'misc', 1);
INSERT INTO `bc73q_kunena_aliases` VALUES('moderate', 'layout', 'category.moderate', 0);
INSERT INTO `bc73q_kunena_aliases` VALUES('more-about-the-kunena', 'catid', '6', 0);
INSERT INTO `bc73q_kunena_aliases` VALUES('search', 'view', 'search', 1);
INSERT INTO `bc73q_kunena_aliases` VALUES('statistics', 'view', 'statistics', 1);
INSERT INTO `bc73q_kunena_aliases` VALUES('suggestion-box', 'catid', '3', 1);
INSERT INTO `bc73q_kunena_aliases` VALUES('topic', 'view', 'topic', 1);
INSERT INTO `bc73q_kunena_aliases` VALUES('topics', 'view', 'topics', 1);
INSERT INTO `bc73q_kunena_aliases` VALUES('user', 'view', 'user', 1);
INSERT INTO `bc73q_kunena_aliases` VALUES('welcome-mat', 'catid', '2', 1);
