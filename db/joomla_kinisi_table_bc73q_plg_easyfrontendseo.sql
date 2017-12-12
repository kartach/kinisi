
DROP TABLE IF EXISTS `bc73q_plg_easyfrontendseo`;
CREATE TABLE `bc73q_plg_easyfrontendseo` (
  `id` int(11) NOT NULL,
  `url` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `title` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `keywords` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `generator` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `robots` tinytext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `bc73q_plg_easyfrontendseo` VALUES(1, 'index.php?option=com_content&catid=15&id=13&view=article&Itemid=101', 'Plážový volejbal z pohledu fyzioterapeuta - Fyzioteraputické cent', 'XXX Plážový volejbal je velice prospěšný pro náš pohybový systém.', 'systém, pohybový, svaly, koordinačně-stabilizační', 'Joomla! - Open Source Content Management', 'index, follow');
