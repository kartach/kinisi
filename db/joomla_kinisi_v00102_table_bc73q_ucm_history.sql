
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_ucm_history`
--

DROP TABLE IF EXISTS `bc73q_ucm_history`;
CREATE TABLE `bc73q_ucm_history` (
  `version_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) UNSIGNED NOT NULL,
  `ucm_type_id` int(10) UNSIGNED NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bc73q_ucm_history`
--

INSERT INTO `bc73q_ucm_history` VALUES(1, 1, 14, '', '2017-11-06 11:50:06', 630, 361, '1d6d357e103fdf255d648dcc2ba7a77f2df924e9', '{\"id\":1,\"user_id\":\"849\",\"catid\":\"7\",\"subject\":\"Pro testov\\u00e1n\\u00ed\",\"body\":\"<p>Pro testov\\u00e1n\\u00ed<\\/p>\\r\\n\",\"state\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"created_user_id\":\"630\",\"created_time\":\"2017-11-06 11:50:06\",\"modified_user_id\":\"630\",\"modified_time\":\"2017-11-06 11:50:06\",\"review_time\":\"2017-11-06\",\"publish_up\":null,\"publish_down\":null}', 0);
