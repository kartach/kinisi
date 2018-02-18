
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

INSERT INTO `bc73q_users` VALUES(630, 'Klára K', 'Administrátor', 'karkoskova.klara@gmail.com', '$2y$10$/Lw9JAXC12jF.Xjwdrjipeg1HTqJhzdoqK2Tjj2LjSCcXTOhM.rxC', 0, 1, '2017-10-08 20:11:14', '2018-02-17 20:48:36', '0', '{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"arkeditor\",\"helpsite\":\"\",\"timezone\":\"\"}', '0000-00-00 00:00:00', 0, '', '', 0);
INSERT INTO `bc73q_users` VALUES(846, 'Demo User', 'demo', 'demo@demolink.org', 'y.xksMc0Rh19yJxOtqUOIQZ7OaxfheK7zSAsak7elym/kwAzjqW', 0, 0, '2017-10-08 20:11:14', '2017-10-08 20:11:14', '', '{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}', '0000-00-00 00:00:00', 0, '', '', 0);
INSERT INTO `bc73q_users` VALUES(847, 'Lorem Ipsum', 'lorem_ipsum', 'lorem_ipsum@demolink.org', 'y/FxAHYMOjEIrvvJdKPfz4UB.qc9Fm1/eXeXc.ci', 0, 0, '2017-10-08 20:11:14', '2017-10-08 20:11:14', '', '{}', '0000-00-00 00:00:00', 0, '', '', 0);
INSERT INTO `bc73q_users` VALUES(848, 'Dolor Sit', 'dolor_sit', 'dolor_sit@demolink.org', 'y/JUy', 0, 0, '2017-10-08 20:11:14', '2017-10-08 20:11:14', '', '{}', '0000-00-00 00:00:00', 0, '', '', 0);
INSERT INTO `bc73q_users` VALUES(849, 'Alena H.', 'AlenaH', 'czechtraveldream@gmail.com', '$2y$10$PKFP68s40Llgx.VwwqW/1e8NdbwqbAM9z3JqjVnMXVAhO1JphzP7.', 0, 1, '2017-11-06 11:49:11', '2017-11-09 17:42:48', '', '{\"admin_style\":\"\",\"admin_language\":\"cs-CZ\",\"language\":\"cs-CZ\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}', '0000-00-00 00:00:00', 0, '', '', 0);
INSERT INTO `bc73q_users` VALUES(850, 'Martin Vojtovič', 'Martin Vojtovič', 'martin.vojtovic@kinisi.cz', '$2y$10$udVcbWbTKpG.z9FQ1l6eheNwacn6LFdNjqXOiqTgvJIcVxBowLUqO', 0, 0, '2017-11-09 17:38:38', '2017-11-17 12:21:26', '', '{\"admin_style\":\"\",\"admin_language\":\"cs-CZ\",\"language\":\"cs-CZ\",\"editor\":\"arkeditor\",\"helpsite\":\"\",\"timezone\":\"\"}', '0000-00-00 00:00:00', 0, '', '', 0);
INSERT INTO `bc73q_users` VALUES(851, 'Lenka Augustínová', 'Lenka Augustínová', 'lenka.augustinova@kinisi.cz', '$2y$10$ku4hXCQJXsMw3fpvE94Q5eu7Ouv3nB3f1BisTpic4Sy6ERQjYpdqy', 0, 0, '2017-11-09 17:40:33', '2017-11-13 17:30:36', '', '{\"admin_style\":\"\",\"admin_language\":\"cs-CZ\",\"language\":\"cs-CZ\",\"editor\":\"arkeditor\",\"helpsite\":\"\",\"timezone\":\"\"}', '0000-00-00 00:00:00', 0, '', '', 0);
INSERT INTO `bc73q_users` VALUES(852, 'Michaela Hricková', 'Michaela Hricková', 'michaela.hrickova@kinisi.cz', '$2y$10$Xk.M4GfpHmMM9NrHr2/6b.LBZotT0PPadHfsLpRnsqZk3Ev4lR0vG', 0, 0, '2017-11-09 17:42:17', '2017-11-09 17:47:37', '', '{\"admin_style\":\"\",\"admin_language\":\"cs-CZ\",\"language\":\"cs-CZ\",\"editor\":\"arkeditor\",\"helpsite\":\"\",\"timezone\":\"\"}', '0000-00-00 00:00:00', 0, '', '', 0);
INSERT INTO `bc73q_users` VALUES(855, 'Dadad Kakak', 'Dadad-Kakak-facebook', 'testhdbtest@gmail.com', '$2y$10$p7Wnv71BonqlueK8H7rSueCGT9C3nKdrGrCmqTKumsnqvSVOXFTgW', 0, 0, '2017-12-15 17:13:40', '2017-12-22 00:51:29', '', '{}', '0000-00-00 00:00:00', 0, '', '', 0);
INSERT INTO `bc73q_users` VALUES(856, 'Klára Karkošková', 'Klra-Karkokov-facebook', 'k_cejkova@email.cz', '$2y$10$uDeWJXN9frQj/sdYMQkJd.xMko/Q6M/HJAUCTiQJ1/A7IfPJKV9p6', 0, 0, '2017-12-15 17:45:04', '2017-12-22 00:49:50', '', '{}', '0000-00-00 00:00:00', 0, '', '', 0);
INSERT INTO `bc73q_users` VALUES(857, 'ZeettsnownWD', 'Zeettsnown', 'angryssl12@gmx.com', '$2y$10$4YKiUjOrdQXlpdmoq9Wig.avHsli2uMWflSmzp3LncCHliJLN389y', 1, 0, '2018-02-17 18:37:16', '0000-00-00 00:00:00', '2a9e26b1e5fc9b7cf24cd2fbf8c973f1', '{}', '0000-00-00 00:00:00', 0, '', '', 0);
INSERT INTO `bc73q_users` VALUES(858, 'AbertupoNizHX', 'AbertupoNiz', 'sampelow@yandex.com', '$2y$10$GtcVWDCZf23Lpuh7wDS1WuZ8CWdJGRkaJ4YZo1w7x6Chx.XWamdmC', 1, 0, '2018-02-17 18:52:11', '0000-00-00 00:00:00', '381fb20d3ae4e981c3df0a73fe2948a9', '{}', '0000-00-00 00:00:00', 0, '', '', 0);
