
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_schemas`
--

DROP TABLE IF EXISTS `bc73q_schemas`;
CREATE TABLE `bc73q_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bc73q_schemas`
--

INSERT INTO `bc73q_schemas` VALUES(700, '3.8.2-2017-10-14');
INSERT INTO `bc73q_schemas` VALUES(10032, '3.3.0');
INSERT INTO `bc73q_schemas` VALUES(10072, 'install.mysql.utf8');
INSERT INTO `bc73q_schemas` VALUES(10148, '1.0.2');
INSERT INTO `bc73q_schemas` VALUES(10325, '3.0.0');
