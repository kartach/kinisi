
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_sefexttexts`
--

DROP TABLE IF EXISTS `bc73q_sefexttexts`;
CREATE TABLE `bc73q_sefexttexts` (
  `id` int(11) NOT NULL,
  `extension` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  `lang_id` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
