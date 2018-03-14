
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_sef_statistics`
--

DROP TABLE IF EXISTS `bc73q_sef_statistics`;
CREATE TABLE `bc73q_sef_statistics` (
  `url_id` int(5) NOT NULL,
  `page_rank` int(3) NOT NULL,
  `total_indexed` int(10) NOT NULL,
  `popularity` int(10) NOT NULL,
  `facebook_indexed` int(10) NOT NULL,
  `twitter_indexed` int(10) NOT NULL,
  `validation_score` varchar(255) NOT NULL,
  `page_speed_score` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
