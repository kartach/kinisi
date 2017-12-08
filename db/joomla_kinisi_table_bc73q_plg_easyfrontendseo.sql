
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
