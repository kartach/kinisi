
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_menu_types`
--

DROP TABLE IF EXISTS `bc73q_menu_types`;
CREATE TABLE `bc73q_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bc73q_menu_types`
--

INSERT INTO `bc73q_menu_types` VALUES(2, 0, 'kunenamenu', 'Kunena Menu', 'This is the default Kunena menu. It is used as the top navigation for Kunena. It can be publish in any module position. Simply unpublish items that are not required.', 0);
INSERT INTO `bc73q_menu_types` VALUES(3, 0, 'system-menu', 'System Menu', '', 0);
INSERT INTO `bc73q_menu_types` VALUES(5, 0, 'social-media', 'Social Media', '', 0);
INSERT INTO `bc73q_menu_types` VALUES(12, 0, 'main-menu', 'Main menu', '', 0);
INSERT INTO `bc73q_menu_types` VALUES(13, 0, 'what-we-offer', 'What we offer', '', 0);
INSERT INTO `bc73q_menu_types` VALUES(14, 0, 'requirements', 'Requirements', '', 0);
INSERT INTO `bc73q_menu_types` VALUES(15, 0, 'what-we-expect-from-you', 'What we Expect from you?', '', 0);
INSERT INTO `bc73q_menu_types` VALUES(16, 0, 'user-menu', 'User menu', '', 0);
INSERT INTO `bc73q_menu_types` VALUES(17, 0, 'what-we-do', 'What we do', '', 0);
INSERT INTO `bc73q_menu_types` VALUES(18, 0, 'top-menu', 'Top menu', '', 0);
INSERT INTO `bc73q_menu_types` VALUES(19, 681, 'top-address', 'Top address', '', 0);
INSERT INTO `bc73q_menu_types` VALUES(20, 687, 'copyright-social', 'Copyright social', '', 0);
INSERT INTO `bc73q_menu_types` VALUES(21, 693, 'bottom-menu', 'Bottom menu', '', 0);
