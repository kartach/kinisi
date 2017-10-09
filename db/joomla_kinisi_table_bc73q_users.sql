
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

INSERT INTO `bc73q_users` VALUES(630, 'Super User', 'Klara', 'karkoskova.klara@gmail.com', '$2y$10$/Lw9JAXC12jF.Xjwdrjipeg1HTqJhzdoqK2Tjj2LjSCcXTOhM.rxC', 0, 1, '2017-10-08 20:11:14', '0000-00-00 00:00:00', '0', '', '0000-00-00 00:00:00', 0, '', '', 0);
INSERT INTO `bc73q_users` VALUES(846, 'Demo User', 'demo', 'demo@demolink.org', 'y.xksMc0Rh19yJxOtqUOIQZ7OaxfheK7zSAsak7elym/kwAzjqW', 0, 0, '2017-10-08 20:11:14', '2017-10-08 20:11:14', '', '{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}', '0000-00-00 00:00:00', 0, '', '', 0);
INSERT INTO `bc73q_users` VALUES(847, 'Lorem Ipsum', 'lorem_ipsum', 'lorem_ipsum@demolink.org', 'y/FxAHYMOjEIrvvJdKPfz4UB.qc9Fm1/eXeXc.ci', 0, 0, '2017-10-08 20:11:14', '2017-10-08 20:11:14', '', '{}', '0000-00-00 00:00:00', 0, '', '', 0);
INSERT INTO `bc73q_users` VALUES(848, 'Dolor Sit', 'dolor_sit', 'dolor_sit@demolink.org', 'y/JUy', 0, 0, '2017-10-08 20:11:14', '2017-10-08 20:11:14', '', '{}', '0000-00-00 00:00:00', 0, '', '', 0);
