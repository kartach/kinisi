
DROP TABLE IF EXISTS `bc73q_users`;
CREATE TABLE `bc73q_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `bc73q_users` VALUES(630, 'Klára K', 'Administrátor', 'karkoskova.klara@gmail.com', '$2y$10$/Lw9JAXC12jF.Xjwdrjipeg1HTqJhzdoqK2Tjj2LjSCcXTOhM.rxC', 0, 1, '2017-10-08 20:11:14', '2017-11-24 10:54:31', '0', '{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"arkeditor\",\"helpsite\":\"\",\"timezone\":\"\"}', '0000-00-00 00:00:00', 0, '', '', 0);
INSERT INTO `bc73q_users` VALUES(846, 'Demo User', 'demo', 'demo@demolink.org', 'y.xksMc0Rh19yJxOtqUOIQZ7OaxfheK7zSAsak7elym/kwAzjqW', 0, 0, '2017-10-08 20:11:14', '2017-10-08 20:11:14', '', '{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}', '0000-00-00 00:00:00', 0, '', '', 0);
INSERT INTO `bc73q_users` VALUES(847, 'Lorem Ipsum', 'lorem_ipsum', 'lorem_ipsum@demolink.org', 'y/FxAHYMOjEIrvvJdKPfz4UB.qc9Fm1/eXeXc.ci', 0, 0, '2017-10-08 20:11:14', '2017-10-08 20:11:14', '', '{}', '0000-00-00 00:00:00', 0, '', '', 0);
INSERT INTO `bc73q_users` VALUES(848, 'Dolor Sit', 'dolor_sit', 'dolor_sit@demolink.org', 'y/JUy', 0, 0, '2017-10-08 20:11:14', '2017-10-08 20:11:14', '', '{}', '0000-00-00 00:00:00', 0, '', '', 0);
INSERT INTO `bc73q_users` VALUES(849, 'Alena H.', 'AlenaH', 'czechtraveldream@gmail.com', '$2y$10$PKFP68s40Llgx.VwwqW/1e8NdbwqbAM9z3JqjVnMXVAhO1JphzP7.', 0, 1, '2017-11-06 11:49:11', '2017-11-09 17:42:48', '', '{\"admin_style\":\"\",\"admin_language\":\"cs-CZ\",\"language\":\"cs-CZ\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}', '0000-00-00 00:00:00', 0, '', '', 0);
INSERT INTO `bc73q_users` VALUES(850, 'Martin Vojtovič', 'Martin Vojtovič', 'martin.vojtovic@kinisi.cz', '$2y$10$udVcbWbTKpG.z9FQ1l6eheNwacn6LFdNjqXOiqTgvJIcVxBowLUqO', 0, 0, '2017-11-09 17:38:38', '2017-11-17 12:21:26', '', '{\"admin_style\":\"\",\"admin_language\":\"cs-CZ\",\"language\":\"cs-CZ\",\"editor\":\"arkeditor\",\"helpsite\":\"\",\"timezone\":\"\"}', '0000-00-00 00:00:00', 0, '', '', 0);
INSERT INTO `bc73q_users` VALUES(851, 'Lenka Augustínová', 'Lenka Augustínová', 'lenka.augustinova@kinisi.cz', '$2y$10$ku4hXCQJXsMw3fpvE94Q5eu7Ouv3nB3f1BisTpic4Sy6ERQjYpdqy', 0, 0, '2017-11-09 17:40:33', '2017-11-13 17:30:36', '', '{\"admin_style\":\"\",\"admin_language\":\"cs-CZ\",\"language\":\"cs-CZ\",\"editor\":\"arkeditor\",\"helpsite\":\"\",\"timezone\":\"\"}', '0000-00-00 00:00:00', 0, '', '', 0);
INSERT INTO `bc73q_users` VALUES(852, 'Michaela Hricková', 'Michaela Hricková', 'michaela.hrickova@kinisi.cz', '$2y$10$Xk.M4GfpHmMM9NrHr2/6b.LBZotT0PPadHfsLpRnsqZk3Ev4lR0vG', 0, 0, '2017-11-09 17:42:17', '2017-11-09 17:47:37', '', '{\"admin_style\":\"\",\"admin_language\":\"cs-CZ\",\"language\":\"cs-CZ\",\"editor\":\"arkeditor\",\"helpsite\":\"\",\"timezone\":\"\"}', '0000-00-00 00:00:00', 0, '', '', 0);
INSERT INTO `bc73q_users` VALUES(853, 'camillostblazey', 'camillostblazey', 'wphymo58@pozycjonowanie-szczecin.top', '$2y$10$wXuWC492BunlV9yYv8yy4.PZZ4m4mN3efADHIXF29kTF5L/dKFKca', 0, 0, '2017-11-21 08:24:44', '2017-11-21 18:12:31', '', '{}', '0000-00-00 00:00:00', 0, '', '', 0);
INSERT INTO `bc73q_users` VALUES(854, 'orazio27winchester', 'orazio27winchester', 'pqtmrp18@pozycjonowanie-szczecin.top', '$2y$10$KoJv5okHaMWiEsgv3SnqhuUp/bkETBSYcq/tjuSMRzDjVFC6IHaIe', 0, 0, '2017-11-21 13:48:31', '2017-11-21 18:45:44', '', '{}', '0000-00-00 00:00:00', 0, '', '', 0);
