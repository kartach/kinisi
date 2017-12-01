
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_rereplacer`
--

DROP TABLE IF EXISTS `bc73q_rereplacer`;
CREATE TABLE `bc73q_rereplacer` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(50) NOT NULL,
  `search` text NOT NULL,
  `replace` text NOT NULL,
  `area` text NOT NULL,
  `params` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
