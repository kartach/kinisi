
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_kunena_version`
--

DROP TABLE IF EXISTS `bc73q_kunena_version`;
CREATE TABLE `bc73q_kunena_version` (
  `id` int(11) NOT NULL,
  `version` varchar(20) NOT NULL,
  `versiondate` date NOT NULL,
  `installdate` date NOT NULL,
  `build` varchar(20) NOT NULL,
  `versionname` varchar(40) DEFAULT NULL,
  `state` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bc73q_kunena_version`
--

INSERT INTO `bc73q_kunena_version` VALUES(1, '3.0.5', '2014-03-09', '2014-05-02', '', 'Invecchiato', '');
INSERT INTO `bc73q_kunena_version` VALUES(2, '3.0.6', '2014-07-28', '2014-08-05', '', 'Tala', '');
INSERT INTO `bc73q_kunena_version` VALUES(3, '4.0.10', '2016-02-18', '2016-07-13', '', 'Villavicencio', '');
INSERT INTO `bc73q_kunena_version` VALUES(4, '4.0.12', '2016-10-01', '2016-10-19', '', 'Lima', '');
INSERT INTO `bc73q_kunena_version` VALUES(5, '5.0.8', '2017-05-15', '2017-06-29', '', 'Hoatzin', '');
INSERT INTO `bc73q_kunena_version` VALUES(6, '5.0.11', '2017-09-02', '2017-10-09', '', 'Kinkajou', '');
