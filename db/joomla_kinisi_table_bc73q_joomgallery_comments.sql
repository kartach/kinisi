
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_joomgallery_comments`
--

DROP TABLE IF EXISTS `bc73q_joomgallery_comments`;
CREATE TABLE `bc73q_joomgallery_comments` (
  `cmtid` int(11) NOT NULL,
  `cmtpic` int(11) NOT NULL DEFAULT '0',
  `cmtip` varchar(15) NOT NULL DEFAULT '',
  `userid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `cmtname` varchar(50) NOT NULL DEFAULT '',
  `cmttext` text NOT NULL,
  `cmtdate` datetime NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
