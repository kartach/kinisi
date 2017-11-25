
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_joomgallery_orphans`
--

DROP TABLE IF EXISTS `bc73q_joomgallery_orphans`;
CREATE TABLE `bc73q_joomgallery_orphans` (
  `id` int(11) NOT NULL,
  `fullpath` varchar(255) NOT NULL,
  `type` varchar(7) NOT NULL,
  `refid` int(11) NOT NULL,
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
