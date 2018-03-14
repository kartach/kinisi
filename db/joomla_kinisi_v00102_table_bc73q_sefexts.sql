
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_sefexts`
--

DROP TABLE IF EXISTS `bc73q_sefexts`;
CREATE TABLE `bc73q_sefexts` (
  `id` int(11) NOT NULL,
  `file` varchar(100) NOT NULL,
  `filters` text,
  `params` text,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
