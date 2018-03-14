
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_kunena_thankyou`
--

DROP TABLE IF EXISTS `bc73q_kunena_thankyou`;
CREATE TABLE `bc73q_kunena_thankyou` (
  `postid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `targetuserid` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
