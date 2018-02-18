
DROP TABLE IF EXISTS `bc73q_messages`;
CREATE TABLE `bc73q_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `bc73q_messages` VALUES(1, 846, 910, 0, '2017-10-08 20:11:14', 0, 0, 'An image has been downloaded', 'The image with the title Suspendisse (Filename: first_category_1_20140903_1689763756.jpg) has been downloaded by Guest!');
INSERT INTO `bc73q_messages` VALUES(2, 322, 322, 0, '2017-10-08 20:11:14', -2, 0, 'New Comment', 'A new comment from Guest has been submitted. This comment needs to be approved before it can be published.');
INSERT INTO `bc73q_messages` VALUES(5, 729, 729, 0, '2017-10-08 20:11:14', 0, 0, 'New Comment', 'A new comment from ejhjkesh has been submitted. This comment needs to be approved before it can be published.');
INSERT INTO `bc73q_messages` VALUES(6, 729, 729, 0, '2017-10-08 20:11:14', 0, 0, 'New Comment', 'A new comment from ejhjkesh has been submitted. This comment needs to be approved before it can be published.');
INSERT INTO `bc73q_messages` VALUES(7, 729, 729, 0, '2017-10-08 20:11:14', 0, 0, 'New Comment', 'A new comment from dbdrt has been submitted. This comment needs to be approved before it can be published.');
INSERT INTO `bc73q_messages` VALUES(8, 729, 729, 0, '2017-10-08 20:11:14', 0, 0, 'New Comment', 'A new comment from rgdrvdr has been submitted. This comment needs to be approved before it can be published.');
INSERT INTO `bc73q_messages` VALUES(9, 729, 729, 0, '2017-10-08 20:11:14', 0, 0, 'New Comment', 'A new comment from 65rd has been submitted. This comment needs to be approved before it can be published.');
INSERT INTO `bc73q_messages` VALUES(10, 729, 729, 0, '2017-10-08 20:11:14', 0, 0, 'New Comment', 'A new comment from vsrtdrtrd has been submitted. This comment needs to be approved before it can be published.');
INSERT INTO `bc73q_messages` VALUES(12, 504, 504, 0, '2017-10-08 20:11:14', 0, 0, 'New Comment', 'A new comment from xcz has been submitted. This comment needs to be approved before it can be published.');
INSERT INTO `bc73q_messages` VALUES(14, 849, 849, 0, '2017-12-15 17:13:40', 0, 0, 'Chyba při odesílání pošty', 'Při odesílání zprávy s registrací uživatele došlo k chybě. Chyba: Could not instantiate mail function. Pokusil se zaregistrovat uživatel: Dadad-Kakak-facebook');
INSERT INTO `bc73q_messages` VALUES(16, 849, 849, 0, '2017-12-15 17:45:04', 0, 0, 'Chyba při odesílání pošty', 'Při odesílání zprávy s registrací uživatele došlo k chybě. Chyba: Could not instantiate mail function. Pokusil se zaregistrovat uživatel: Klra-Karkokov-facebook');
