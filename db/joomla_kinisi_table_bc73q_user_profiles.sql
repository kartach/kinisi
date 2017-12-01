
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_user_profiles`
--

DROP TABLE IF EXISTS `bc73q_user_profiles`;
CREATE TABLE `bc73q_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

--
-- Dumping data for table `bc73q_user_profiles`
--

INSERT INTO `bc73q_user_profiles` VALUES(630, 'profile.aboutme', '\"\"', 10);
INSERT INTO `bc73q_user_profiles` VALUES(630, 'profile.address1', '\"\"', 1);
INSERT INTO `bc73q_user_profiles` VALUES(630, 'profile.address2', '\"\"', 2);
INSERT INTO `bc73q_user_profiles` VALUES(630, 'profile.city', '\"\"', 3);
INSERT INTO `bc73q_user_profiles` VALUES(630, 'profile.country', '\"\"', 5);
INSERT INTO `bc73q_user_profiles` VALUES(630, 'profile.dob', '\"\"', 11);
INSERT INTO `bc73q_user_profiles` VALUES(630, 'profile.favoritebook', '\"\"', 9);
INSERT INTO `bc73q_user_profiles` VALUES(630, 'profile.phone', '\"\"', 7);
INSERT INTO `bc73q_user_profiles` VALUES(630, 'profile.postal_code', '\"\"', 6);
INSERT INTO `bc73q_user_profiles` VALUES(630, 'profile.region', '\"\"', 4);
INSERT INTO `bc73q_user_profiles` VALUES(630, 'profile.website', 'false', 8);
INSERT INTO `bc73q_user_profiles` VALUES(849, 'profile.aboutme', '\"\"', 10);
INSERT INTO `bc73q_user_profiles` VALUES(849, 'profile.address1', '\"\"', 1);
INSERT INTO `bc73q_user_profiles` VALUES(849, 'profile.address2', '\"\"', 2);
INSERT INTO `bc73q_user_profiles` VALUES(849, 'profile.city', '\"\"', 3);
INSERT INTO `bc73q_user_profiles` VALUES(849, 'profile.country', '\"\"', 5);
INSERT INTO `bc73q_user_profiles` VALUES(849, 'profile.dob', '\"\"', 11);
INSERT INTO `bc73q_user_profiles` VALUES(849, 'profile.favoritebook', '\"\"', 9);
INSERT INTO `bc73q_user_profiles` VALUES(849, 'profile.phone', '\"\"', 7);
INSERT INTO `bc73q_user_profiles` VALUES(849, 'profile.postal_code', '\"\"', 6);
INSERT INTO `bc73q_user_profiles` VALUES(849, 'profile.region', '\"\"', 4);
INSERT INTO `bc73q_user_profiles` VALUES(849, 'profile.website', 'false', 8);
INSERT INTO `bc73q_user_profiles` VALUES(850, 'profile.aboutme', '\"\"', 10);
INSERT INTO `bc73q_user_profiles` VALUES(850, 'profile.address1', '\"\"', 1);
INSERT INTO `bc73q_user_profiles` VALUES(850, 'profile.address2', '\"\"', 2);
INSERT INTO `bc73q_user_profiles` VALUES(850, 'profile.city', '\"\"', 3);
INSERT INTO `bc73q_user_profiles` VALUES(850, 'profile.country', '\"\"', 5);
INSERT INTO `bc73q_user_profiles` VALUES(850, 'profile.dob', '\"\"', 11);
INSERT INTO `bc73q_user_profiles` VALUES(850, 'profile.favoritebook', '\"\"', 9);
INSERT INTO `bc73q_user_profiles` VALUES(850, 'profile.phone', '\"\"', 7);
INSERT INTO `bc73q_user_profiles` VALUES(850, 'profile.postal_code', '\"\"', 6);
INSERT INTO `bc73q_user_profiles` VALUES(850, 'profile.region', '\"\"', 4);
INSERT INTO `bc73q_user_profiles` VALUES(850, 'profile.website', 'false', 8);
INSERT INTO `bc73q_user_profiles` VALUES(851, 'profile.aboutme', '\"\"', 10);
INSERT INTO `bc73q_user_profiles` VALUES(851, 'profile.address1', '\"\"', 1);
INSERT INTO `bc73q_user_profiles` VALUES(851, 'profile.address2', '\"\"', 2);
INSERT INTO `bc73q_user_profiles` VALUES(851, 'profile.city', '\"\"', 3);
INSERT INTO `bc73q_user_profiles` VALUES(851, 'profile.country', '\"\"', 5);
INSERT INTO `bc73q_user_profiles` VALUES(851, 'profile.dob', '\"\"', 11);
INSERT INTO `bc73q_user_profiles` VALUES(851, 'profile.favoritebook', '\"\"', 9);
INSERT INTO `bc73q_user_profiles` VALUES(851, 'profile.phone', '\"\"', 7);
INSERT INTO `bc73q_user_profiles` VALUES(851, 'profile.postal_code', '\"\"', 6);
INSERT INTO `bc73q_user_profiles` VALUES(851, 'profile.region', '\"\"', 4);
INSERT INTO `bc73q_user_profiles` VALUES(851, 'profile.website', 'false', 8);
INSERT INTO `bc73q_user_profiles` VALUES(852, 'profile.aboutme', '\"\"', 10);
INSERT INTO `bc73q_user_profiles` VALUES(852, 'profile.address1', '\"\"', 1);
INSERT INTO `bc73q_user_profiles` VALUES(852, 'profile.address2', '\"\"', 2);
INSERT INTO `bc73q_user_profiles` VALUES(852, 'profile.city', '\"\"', 3);
INSERT INTO `bc73q_user_profiles` VALUES(852, 'profile.country', '\"\"', 5);
INSERT INTO `bc73q_user_profiles` VALUES(852, 'profile.dob', '\"\"', 11);
INSERT INTO `bc73q_user_profiles` VALUES(852, 'profile.favoritebook', '\"\"', 9);
INSERT INTO `bc73q_user_profiles` VALUES(852, 'profile.phone', '\"\"', 7);
INSERT INTO `bc73q_user_profiles` VALUES(852, 'profile.postal_code', '\"\"', 6);
INSERT INTO `bc73q_user_profiles` VALUES(852, 'profile.region', '\"\"', 4);
INSERT INTO `bc73q_user_profiles` VALUES(852, 'profile.website', 'false', 8);
