
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_kunena_ranks`
--

DROP TABLE IF EXISTS `bc73q_kunena_ranks`;
CREATE TABLE `bc73q_kunena_ranks` (
  `rank_id` mediumint(8) UNSIGNED NOT NULL,
  `rank_title` varchar(255) NOT NULL DEFAULT '',
  `rank_min` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rank_special` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `rank_image` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bc73q_kunena_ranks`
--

INSERT INTO `bc73q_kunena_ranks` VALUES(1, 'Nový uživatel', 0, 0, 'rank1.gif');
INSERT INTO `bc73q_kunena_ranks` VALUES(2, 'Čerstvý uživatel', 20, 0, 'rank2.gif');
INSERT INTO `bc73q_kunena_ranks` VALUES(3, 'Dlouhodobý uživatel', 40, 0, 'rank3.gif');
INSERT INTO `bc73q_kunena_ranks` VALUES(4, 'Premium uživatel', 80, 0, 'rank4.gif');
INSERT INTO `bc73q_kunena_ranks` VALUES(5, 'Elitní člen', 160, 0, 'rank5.gif');
INSERT INTO `bc73q_kunena_ranks` VALUES(6, 'Platinum Member', 320, 0, 'rank6.gif');
INSERT INTO `bc73q_kunena_ranks` VALUES(7, 'Administrátor', 0, 1, 'rankadmin.gif');
INSERT INTO `bc73q_kunena_ranks` VALUES(8, 'Moderátor', 0, 1, 'rankmod.gif');
INSERT INTO `bc73q_kunena_ranks` VALUES(9, 'Spammer', 0, 1, 'rankspammer.gif');
INSERT INTO `bc73q_kunena_ranks` VALUES(10, 'Banned', 0, 1, 'rankbanned.gif');
