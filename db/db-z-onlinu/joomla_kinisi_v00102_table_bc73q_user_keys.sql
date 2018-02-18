
DROP TABLE IF EXISTS `bc73q_user_keys`;
CREATE TABLE `bc73q_user_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `bc73q_user_keys` VALUES(5, 'Klra-Karkokov-facebook', '$2y$10$/bWx3sanQ/gHPto5wPhS3.JjWRTdFB2ivLbK9Knav52RPEMFTzope', '5steSUpsmqmyZTCQxgT0', 0, '1518543905', 'joomla_remember_me_ebb1002713a93828a40a3a1ac9a5ed25');
INSERT INTO `bc73q_user_keys` VALUES(6, 'Klra-Karkokov-facebook', '$2y$10$xo/aKTWwY6woUQTqZ5DqGOknCS/XCu5XeEmGFUuw.MiaKAqTmvlP.', 'MnhLs17QQfbmLebFrpjl', 0, '1518706496', 'joomla_remember_me_ebb1002713a93828a40a3a1ac9a5ed25');
