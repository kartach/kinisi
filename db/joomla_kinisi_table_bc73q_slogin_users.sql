
DROP TABLE IF EXISTS `bc73q_slogin_users`;
CREATE TABLE `bc73q_slogin_users` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `slogin_id` varchar(150) NOT NULL,
  `provider` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `bc73q_slogin_users` VALUES(1, 855, '2061915120694785', 'facebook');
INSERT INTO `bc73q_slogin_users` VALUES(2, 856, '1995680753780750', 'facebook');
