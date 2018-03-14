
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

INSERT INTO `bc73q_user_keys` VALUES(7, 'Martin Vojtovič', '$2y$10$7jCIiu5ZR1TstudiIhR2tudgDM5w6rOvdVar5n.f0xJ9tO0kyN4Z2', 'SRcfTl1ipSZrmvx14anN', 0, '1525528679', 'joomla_remember_me_5621f691b00f5e019dba7d4e62905d7a');
