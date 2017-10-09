
DROP TABLE IF EXISTS `bc73q_session`;
CREATE TABLE `bc73q_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `guest` tinyint(4) UNSIGNED DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `bc73q_session` VALUES('986rdq1313nurdk3i7lelbdoa1', 0, 1, '1507493520', 'joomla|s:836:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUwNzQ5MzUxOTtzOjQ6Imxhc3QiO2k6MTUwNzQ5MzUxOTtzOjM6Im5vdyI7aToxNTA3NDkzNTE5O31zOjU6InRva2VuIjtzOjMyOiJCUE4xMGVUMThRUmRidlY5T3REaGFUR2FHQzc2SkVBRiI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjoxOntzOjEwOiJjb21fc2xvZ2luIjtPOjg6InN0ZENsYXNzIjoxOntzOjEwOiJyZXR1cm5fdXJsIjtzOjI4OiJhVzVrWlhndWNHaHdQMGwwWlcxcFpEMHhNREU9Ijt9fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7Tzo1OiJKVXNlciI6MTp7czoyOiJpZCI7aTowO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', 0, '');
