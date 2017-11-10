
DROP TABLE IF EXISTS `bc73q_kunena_categories`;
CREATE TABLE `bc73q_kunena_categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `name` tinytext,
  `alias` varchar(255) NOT NULL,
  `icon` varchar(60) DEFAULT NULL,
  `icon_id` tinyint(4) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `accesstype` varchar(20) NOT NULL DEFAULT 'joomla.level',
  `access` int(11) NOT NULL DEFAULT '0',
  `pub_access` int(11) NOT NULL DEFAULT '1',
  `pub_recurse` tinyint(4) DEFAULT '1',
  `admin_access` int(11) NOT NULL DEFAULT '0',
  `admin_recurse` tinyint(4) DEFAULT '1',
  `ordering` smallint(6) NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL DEFAULT '0',
  `channels` text,
  `checked_out` tinyint(4) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review` tinyint(4) NOT NULL DEFAULT '0',
  `allow_anonymous` tinyint(4) NOT NULL DEFAULT '0',
  `post_anonymous` tinyint(4) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `headerdesc` text NOT NULL,
  `class_sfx` varchar(20) NOT NULL,
  `allow_polls` tinyint(4) NOT NULL DEFAULT '0',
  `topic_ordering` varchar(16) NOT NULL DEFAULT 'lastpost',
  `iconset` varchar(255) NOT NULL DEFAULT 'default',
  `numTopics` mediumint(8) NOT NULL DEFAULT '0',
  `numPosts` mediumint(8) NOT NULL DEFAULT '0',
  `last_topic_id` int(11) NOT NULL DEFAULT '0',
  `last_post_id` int(11) NOT NULL DEFAULT '0',
  `last_post_time` int(11) NOT NULL DEFAULT '0',
  `allow_ratings` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `bc73q_kunena_categories` VALUES(1, 0, 'Dotazy a návrhy ke službám a onlinu Kinisi', 'obecne-sluzby-onlie', '', 0, 0, 'joomla.group', 1, 1, 1, 0, 1, 1, 1, 'THIS', 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'Obecná část diskusního fóra Centra fyzioterapie Kinisi', 'Obecná támata, návrhy, aj.', '', 0, 'lastpost', 'default', 0, 0, 0, 0, 0, 0, '{\"display\":{\"index\":{\"parent\":\"2\",\"children\":\"2\"}}}');
INSERT INTO `bc73q_kunena_categories` VALUES(2, 1, 'Dotazy a návrhy k obsahu webových stránek a online komunikaci', 'obsah-online-komunikace', '', 0, 0, 'joomla.group', 1, 1, 1, 0, 1, 1, 1, 'THIS', 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'Rádi uvíátáme veškeré připomínky, dotazy, návrhy k webovým stránkám, fóru, facebooku, instagramu, a pod.', '', '', 0, 'lastpost', 'default', 1, 2, 19, 30, 1510262167, 0, '{\"access_post\":[\"6\",\"2\",\"8\"],\"access_reply\":[\"6\",\"2\",\"8\"],\"display\":{\"index\":{\"parent\":\"3\",\"children\":\"3\"}}}');
INSERT INTO `bc73q_kunena_categories` VALUES(3, 1, 'Dotazy a návrhy k fyzioterapeutickým službám Kinisi', 'navrhy-dotazy-sluzby-kinisi', '', 0, 0, 'joomla.group', 1, 1, 1, 0, 1, 2, 1, 'THIS', 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'Podělte se s námi, co byste uvítal/a za novou službu Kinisi. Máte zájem o nějaký nový speciální kurz v našem centru? Potřebujete zjistit informace o průběhu fyzioterapeutických sezení? Máte jiné organizační dotazy?\r\n\r\n', '', '', 1, 'lastpost', 'default', 0, 1, 21, 29, 1510248840, 0, '{\"access_post\":[\"6\",\"2\",\"8\"],\"access_reply\":[\"6\",\"2\",\"8\"],\"display\":{\"index\":{\"parent\":\"3\",\"children\":\"3\"}}}');
INSERT INTO `bc73q_kunena_categories` VALUES(4, 0, 'Diskuse fyzioterapie', 'diskuse-fyzioterapie', '', 0, 0, 'joomla.level', 1, 1, 1, 8, 1, 2, 1, 'THIS', 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'Obecná fyzioterapeutická diskuse otevřená všem uživatelům. Prosím vložte svůj dotaz..', '', '', 0, 'lastpost', 'default', 0, 0, 0, 0, 0, 0, '{\"display\":{\"index\":{\"parent\":\"3\",\"children\":\"3\"}}}');
INSERT INTO `bc73q_kunena_categories` VALUES(9, 0, 'Preventivní a léčebná fyzioterapise', 'diskuse-fyzioterapie-prevence-lecba', '', 0, 0, 'joomla.level', 1, 1, 1, 8, 1, 3, 0, 'THIS', 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'Zde vložte své dotazy a diskusní příspěvky týkající se například prevence a léčebného postupu v případě artritidy, zpevňovacího, obvazového materiálnu, poúrazové fyzioterapie, aj. ', '', '', 0, 'lastpost', 'default', 0, 0, 0, 0, 0, 0, '{\"display\":{\"index\":{\"parent\":\"3\",\"children\":\"3\"}}}');
INSERT INTO `bc73q_kunena_categories` VALUES(10, 9, 'Neurofyzioterapie', 'neurofyzioterapise', '', 0, 0, 'joomla.level', 1, 1, 1, 8, 1, 2, 0, 'THIS', 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '', '', '', 0, 'lastpost', 'default', 0, 0, 0, 0, 0, 0, '{\"display\":{\"index\":{\"parent\":\"3\",\"children\":\"3\"}}}');
INSERT INTO `bc73q_kunena_categories` VALUES(11, 9, 'Kardiorespirační fyzioterapie', 'kardio-fyzioterapie', '', 0, 0, 'joomla.level', 1, 1, 1, 8, 1, 4, 0, 'THIS', 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '', '', '', 0, 'lastpost', 'default', 0, 0, 0, 0, 0, 0, '{\"display\":{\"index\":{\"parent\":\"3\",\"children\":\"3\"}}}');
INSERT INTO `bc73q_kunena_categories` VALUES(12, 0, 'Fyzioterapeutické metody a nástroje', 'fyzioterapeuticke-nastroje', '', 0, 0, 'joomla.level', 1, 1, 1, 8, 1, 4, 0, 'THIS', 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'Prostor pro diskusi nad jednotlivými postupy, metodami, školami fyzioterapie a nad využiitím konkrétních nástrojů ', '', '', 0, 'lastpost', 'default', 0, 0, 0, 0, 0, 0, '{\"display\":{\"index\":{\"parent\":\"3\",\"children\":\"3\"}}}');
INSERT INTO `bc73q_kunena_categories` VALUES(14, 12, 'Fyzioterapeutické metody', 'fyzioterapeuticke-metody', '', 0, 0, 'joomla.level', 1, 1, 1, 8, 1, 1, 0, 'THIS', 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '', '', '', 0, 'lastpost', 'default', 0, 0, 0, 0, 0, 0, '{\"display\":{\"index\":{\"parent\":\"3\",\"children\":\"3\"}}}');
INSERT INTO `bc73q_kunena_categories` VALUES(15, 4, 'Fyzioterapeutická poradna', 'diskuse-fyzioterapie-kinisi', '', 0, 0, 'joomla.level', 1, 1, 1, 8, 1, 1, 1, 'THIS', 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '', '', '', 0, 'lastpost', 'default', 0, 0, 0, 0, 0, 0, '{\"access_post\":[\"6\",\"2\",\"8\"],\"access_reply\":[\"6\",\"3\",\"8\"],\"display\":{\"index\":{\"parent\":\"2\",\"children\":\"2\"}}}');
INSERT INTO `bc73q_kunena_categories` VALUES(16, 4, 'Sportovní fyzioterapie', 'diskuse-sportovni-fyzioterapie', '', 0, 0, 'joomla.level', 1, 1, 1, 8, 1, 2, 0, 'THIS', 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '', '', '', 0, 'lastpost', 'default', 0, 0, 0, 0, 0, 0, '{\"access_post\":[\"6\",\"2\",\"8\"],\"access_reply\":[\"6\",\"2\",\"8\"],\"display\":{\"index\":{\"parent\":\"3\",\"children\":\"3\"}}}');
INSERT INTO `bc73q_kunena_categories` VALUES(17, 4, 'Dětská fyzioterapie', 'diskuse-detska-fyzioterapie', '', 0, 0, 'joomla.level', 1, 1, 1, 8, 1, 3, 0, 'THIS', 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '', '', '', 0, 'lastpost', 'default', 0, 0, 0, 0, 0, 0, '{\"access_post\":[\"6\",\"2\",\"8\"],\"access_reply\":[\"6\",\"2\",\"8\"],\"display\":{\"index\":{\"parent\":\"3\",\"children\":\"3\"}}}');
INSERT INTO `bc73q_kunena_categories` VALUES(19, 9, 'Muskuloskeletální fyzioterapie', 'diskuse-muskuloskeletalni-fyzioterapie', '', 0, 0, 'joomla.level', 1, 1, 1, 8, 1, 3, 0, 'THIS', 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '', '', '', 0, 'lastpost', 'default', 0, 0, 0, 0, 0, 0, '{\"access_post\":[\"6\",\"2\",\"8\"],\"access_reply\":[\"6\",\"2\",\"8\"],\"display\":{\"index\":{\"parent\":\"3\",\"children\":\"3\"}}}');
INSERT INTO `bc73q_kunena_categories` VALUES(20, 9, 'Ortopedická fyzioterapise', 'diskuse-ortopedicka-fyzioterapie', '', 0, 0, 'joomla.level', 1, 1, 1, 8, 1, 1, 0, 'THIS', 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'Dotazy a diskusní příspěvky týkající se například artritidy, náhrad, podpůrných dlah a jiného zpevňovacího, obvazového materiálnu,  aj. ', '', '', 0, 'lastpost', 'default', 0, 0, 0, 0, 0, 0, '{\"access_post\":[\"6\",\"2\",\"8\"],\"access_reply\":[\"6\",\"2\",\"8\"],\"display\":{\"index\":{\"parent\":\"3\",\"children\":\"3\"}}}');
INSERT INTO `bc73q_kunena_categories` VALUES(21, 12, 'Fyzioterapeutické nástroje', 'diskuse-fyzioterapeuticke-nastroje', '', 0, 0, 'joomla.level', 1, 1, 1, 8, 1, 2, 0, 'THIS', 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '', '', '', 0, 'lastpost', 'default', 0, 0, 0, 0, 0, 0, '{\"access_post\":[\"6\",\"2\",\"8\"],\"access_reply\":[\"6\",\"2\",\"8\"],\"display\":{\"index\":{\"parent\":\"3\",\"children\":\"3\"}}}');
INSERT INTO `bc73q_kunena_categories` VALUES(23, 4, 'Fyzioterapie v těhotenství a po porodu', 'diskuse-fyzioterapie-tehotenstvi-po-porodu', '', 0, 0, 'joomla.level', 1, 1, 1, 8, 1, 4, 0, 'THIS', 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '', '', '', 0, 'lastpost', 'default', 0, 0, 0, 0, 0, 0, '{\"display\":{\"index\":{\"parent\":\"3\",\"children\":\"3\"}}}');
INSERT INTO `bc73q_kunena_categories` VALUES(24, 4, 'Fyzioterapie práce (sedavé zaměstnání)', 'pracovni-fyzioterapie', '', 0, 0, 'joomla.level', 1, 1, 1, 8, 1, 5, 0, 'THIS', 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '', '', '', 0, 'lastpost', 'default', 0, 0, 0, 0, 0, 0, '{\"access_post\":[\"6\",\"2\",\"8\"],\"access_reply\":[\"6\",\"2\",\"8\"],\"display\":{\"index\":{\"parent\":\"3\",\"children\":\"3\"}}}');
