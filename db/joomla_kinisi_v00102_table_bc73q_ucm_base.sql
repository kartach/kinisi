
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_ucm_base`
--

DROP TABLE IF EXISTS `bc73q_ucm_base`;
CREATE TABLE `bc73q_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bc73q_ucm_base`
--

INSERT INTO `bc73q_ucm_base` VALUES(1, 11, 1, 0);
INSERT INTO `bc73q_ucm_base` VALUES(2, 10, 1, 0);
INSERT INTO `bc73q_ucm_base` VALUES(3, 9, 1, 0);
INSERT INTO `bc73q_ucm_base` VALUES(4, 13, 1, 0);
INSERT INTO `bc73q_ucm_base` VALUES(5, 12, 1, 0);
INSERT INTO `bc73q_ucm_base` VALUES(7, 8, 1, 0);
INSERT INTO `bc73q_ucm_base` VALUES(8, 15, 1, 0);
INSERT INTO `bc73q_ucm_base` VALUES(9, 118, 1, 0);
INSERT INTO `bc73q_ucm_base` VALUES(10, 119, 1, 0);
INSERT INTO `bc73q_ucm_base` VALUES(11, 120, 1, 0);
INSERT INTO `bc73q_ucm_base` VALUES(12, 189, 1, 0);
INSERT INTO `bc73q_ucm_base` VALUES(13, 190, 1, 0);
INSERT INTO `bc73q_ucm_base` VALUES(14, 234, 1, 0);
