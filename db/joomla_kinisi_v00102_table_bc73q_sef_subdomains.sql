
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_sef_subdomains`
--

DROP TABLE IF EXISTS `bc73q_sef_subdomains`;
CREATE TABLE `bc73q_sef_subdomains` (
  `subdomain` varchar(255) NOT NULL DEFAULT '',
  `Itemid` mediumtext NOT NULL,
  `Itemid_titlepage` int(10) NOT NULL,
  `option` varchar(255) NOT NULL,
  `lang` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
