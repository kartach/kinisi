
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
INSERT INTO `bc73q_kunena_aliases` VALUES('diskuse-detska-fyzioterapie', 'catid', '17', 0);
INSERT INTO `bc73q_kunena_aliases` VALUES('diskuse-fyzioterapeuticke-metody', 'catid', '21', 0);
INSERT INTO `bc73q_kunena_aliases` VALUES('diskuse-fyzioterapeuticke-nastroje', 'catid', '21', 0);
INSERT INTO `bc73q_kunena_aliases` VALUES('diskuse-fyzioterapie', 'catid', '4', 0);
INSERT INTO `bc73q_kunena_aliases` VALUES('diskuse-fyzioterapie-kinisi', 'catid', '15', 0);
INSERT INTO `bc73q_kunena_aliases` VALUES('diskuse-fyzioterapie-prevence-lecba', 'catid', '9', 0);
INSERT INTO `bc73q_kunena_aliases` VALUES('diskuse-fyzioterapie-tehotenstvi-po-porodu', 'catid', '23', 0);
INSERT INTO `bc73q_kunena_aliases` VALUES('diskuse-muskuloskeletalni-fyzioterapie', 'catid', '19', 0);
INSERT INTO `bc73q_kunena_aliases` VALUES('diskuse-ortopedicka-fyzioterapie', 'catid', '20', 0);
INSERT INTO `bc73q_kunena_aliases` VALUES('diskuse-sportovni-fyzioterapie', 'catid', '16', 0);
INSERT INTO `bc73q_kunena_aliases` VALUES('edit', 'layout', 'category.edit', 0);
INSERT INTO `bc73q_kunena_aliases` VALUES('fyzioterapeuticke-metody', 'catid', '14', 0);
INSERT INTO `bc73q_kunena_aliases` VALUES('fyzioterapeuticke-nastroje', 'catid', '12', 0);
INSERT INTO `bc73q_kunena_aliases` VALUES('home', 'view', 'home', 1);
INSERT INTO `bc73q_kunena_aliases` VALUES('kardio-fyzioterapie', 'catid', '11', 0);
INSERT INTO `bc73q_kunena_aliases` VALUES('manage', 'layout', 'category.manage', 0);
INSERT INTO `bc73q_kunena_aliases` VALUES('misc', 'view', 'misc', 1);
INSERT INTO `bc73q_kunena_aliases` VALUES('moderate', 'layout', 'category.moderate', 0);
INSERT INTO `bc73q_kunena_aliases` VALUES('navrhy-dotazy-sluzby-kinisi', 'catid', '3', 0);
INSERT INTO `bc73q_kunena_aliases` VALUES('neurofyzioterapise', 'catid', '10', 0);
INSERT INTO `bc73q_kunena_aliases` VALUES('obecne-sluzby-onlie', 'catid', '1', 0);
INSERT INTO `bc73q_kunena_aliases` VALUES('oborova-fyzioterapie', 'catid', '9', 0);
INSERT INTO `bc73q_kunena_aliases` VALUES('obsah-online-komunikace', 'catid', '2', 0);
INSERT INTO `bc73q_kunena_aliases` VALUES('pracovni-fyzioterapie', 'catid', '24', 0);
INSERT INTO `bc73q_kunena_aliases` VALUES('search', 'view', 'search', 1);
INSERT INTO `bc73q_kunena_aliases` VALUES('statistics', 'view', 'statistics', 1);
INSERT INTO `bc73q_kunena_aliases` VALUES('topic', 'view', 'topic', 1);
INSERT INTO `bc73q_kunena_aliases` VALUES('topics', 'view', 'topics', 1);
INSERT INTO `bc73q_kunena_aliases` VALUES('user', 'view', 'user', 1);
