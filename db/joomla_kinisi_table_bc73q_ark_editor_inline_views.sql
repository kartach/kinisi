
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_ark_editor_inline_views`
--

DROP TABLE IF EXISTS `bc73q_ark_editor_inline_views`;
CREATE TABLE `bc73q_ark_editor_inline_views` (
  `element` varchar(50) NOT NULL,
  `views` varchar(500) NOT NULL DEFAULT '[]',
  `context` varchar(50) NOT NULL,
  `types` varchar(500) NOT NULL DEFAULT '[]',
  `params` text NOT NULL,
  `parent` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bc73q_ark_editor_inline_views`
--

INSERT INTO `bc73q_ark_editor_inline_views` VALUES('com_content', '[\"featured\",\"article\",\"category\",\"categories\"]', 'article', '[\"article\",\"featured\",\"category\",\"blog\"]', '{}', NULL);
