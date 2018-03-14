
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_kunena_polls`
--

DROP TABLE IF EXISTS `bc73q_kunena_polls`;
CREATE TABLE `bc73q_kunena_polls` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `threadid` int(11) NOT NULL,
  `polltimetolive` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
