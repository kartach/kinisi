
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_viewlevels`
--

DROP TABLE IF EXISTS `bc73q_viewlevels`;
CREATE TABLE `bc73q_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bc73q_viewlevels`
--

INSERT INTO `bc73q_viewlevels` VALUES(1, 'Public', 0, '[1]');
INSERT INTO `bc73q_viewlevels` VALUES(2, 'Registered', 1, '[6,2,8]');
INSERT INTO `bc73q_viewlevels` VALUES(3, 'Special', 2, '[6,3,8]');
INSERT INTO `bc73q_viewlevels` VALUES(5, 'Guest', 0, '[9]');
INSERT INTO `bc73q_viewlevels` VALUES(6, 'Super Users', 0, '[8]');
