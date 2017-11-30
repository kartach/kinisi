
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_komento_captcha`
--

DROP TABLE IF EXISTS `bc73q_komento_captcha`;
CREATE TABLE `bc73q_komento_captcha` (
  `id` int(11) NOT NULL,
  `response` varchar(5) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
