
DROP TABLE IF EXISTS `bc73q_joomgallery_maintenance`;
CREATE TABLE `bc73q_joomgallery_maintenance` (
  `id` int(11) NOT NULL,
  `refid` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `owner` int(11) NOT NULL,
  `title` text NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `orig` varchar(255) NOT NULL,
  `thumborphan` int(11) NOT NULL,
  `imgorphan` int(11) NOT NULL,
  `origorphan` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
