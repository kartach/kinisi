
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_seflog`
--

DROP TABLE IF EXISTS `bc73q_seflog`;
CREATE TABLE `bc73q_seflog` (
  `id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  `component` varchar(255) DEFAULT NULL,
  `page` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
