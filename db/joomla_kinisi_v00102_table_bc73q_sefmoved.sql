
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_sefmoved`
--

DROP TABLE IF EXISTS `bc73q_sefmoved`;
CREATE TABLE `bc73q_sefmoved` (
  `id` int(11) NOT NULL,
  `old` varchar(255) NOT NULL,
  `new` varchar(255) NOT NULL,
  `lastHit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bc73q_sefmoved`
--

INSERT INTO `bc73q_sefmoved` VALUES(1, 'clanky/posledni/fyzioterapeutuv-sen-plazovy-fotbal', 'clanky/posledni/fyzioterapeutuv-sen-plazovy-volejbal', '0000-00-00 00:00:00');
INSERT INTO `bc73q_sefmoved` VALUES(2, 'clanky/posledni/fyzioterapeutuv-sen-plazovy-fotbal/upravit', 'clanky/posledni/fyzioterapeutuv-sen-plazovy-volebal/upravit', '0000-00-00 00:00:00');
