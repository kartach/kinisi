
DROP TABLE IF EXISTS `bc73q_plg_slogin_profile`;
CREATE TABLE `bc73q_plg_slogin_profile` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `slogin_id` varchar(150) NOT NULL,
  `provider` varchar(100) NOT NULL,
  `gender` int(1) NOT NULL DEFAULT '0',
  `f_name` varchar(100) NOT NULL,
  `l_name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `mobil_phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `social_profile_link` varchar(250) NOT NULL,
  `country` varchar(5) NOT NULL,
  `region` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `lat` varchar(50) NOT NULL,
  `lng` varchar(50) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `current_profile` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `bc73q_plg_slogin_profile` VALUES(1, 855, '2061915120694785', 'facebook', 1, 'Dadad', 'Kakak', '', '', 'testhdbtest@gmail.com', 'https://www.facebook.com/app_scoped_user_id/2061915120694785/', 'CZ', '', '', '', '', '', 1);
INSERT INTO `bc73q_plg_slogin_profile` VALUES(2, 856, '1995680753780750', 'facebook', 2, 'Klára', 'Karkošková', '', '', 'k_cejkova@email.cz', 'https://www.facebook.com/app_scoped_user_id/1995680753780750/', 'CZ', '', '', '', '', 'facebook_1995680753780750.jpg', 1);
