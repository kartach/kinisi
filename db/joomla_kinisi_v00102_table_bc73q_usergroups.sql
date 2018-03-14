
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_usergroups`
--

DROP TABLE IF EXISTS `bc73q_usergroups`;
CREATE TABLE `bc73q_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bc73q_usergroups`
--

INSERT INTO `bc73q_usergroups` VALUES(1, 0, 1, 18, 'Public');
INSERT INTO `bc73q_usergroups` VALUES(2, 1, 8, 15, 'Registered');
INSERT INTO `bc73q_usergroups` VALUES(3, 2, 9, 14, 'Author');
INSERT INTO `bc73q_usergroups` VALUES(4, 3, 10, 13, 'Editor');
INSERT INTO `bc73q_usergroups` VALUES(5, 4, 11, 12, 'Publisher');
INSERT INTO `bc73q_usergroups` VALUES(6, 1, 4, 7, 'Manager');
INSERT INTO `bc73q_usergroups` VALUES(7, 6, 5, 6, 'Administrator');
INSERT INTO `bc73q_usergroups` VALUES(8, 1, 16, 17, 'Super Users');
INSERT INTO `bc73q_usergroups` VALUES(9, 1, 2, 3, 'Guest');
