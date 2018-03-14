
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_slogin_users`
--

DROP TABLE IF EXISTS `bc73q_slogin_users`;
CREATE TABLE `bc73q_slogin_users` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `slogin_id` varchar(150) NOT NULL,
  `provider` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bc73q_slogin_users`
--

INSERT INTO `bc73q_slogin_users` VALUES(1, 855, '2061915120694785', 'facebook');
INSERT INTO `bc73q_slogin_users` VALUES(2, 856, '1995680753780750', 'facebook');
INSERT INTO `bc73q_slogin_users` VALUES(3, 856, '1995706637111495', 'facebook');
INSERT INTO `bc73q_slogin_users` VALUES(4, 855, '2061939370692360', 'facebook');
