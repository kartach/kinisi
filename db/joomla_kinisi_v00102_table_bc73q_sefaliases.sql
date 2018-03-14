
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_sefaliases`
--

DROP TABLE IF EXISTS `bc73q_sefaliases`;
CREATE TABLE `bc73q_sefaliases` (
  `id` int(11) NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `vars` text NOT NULL,
  `url` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
