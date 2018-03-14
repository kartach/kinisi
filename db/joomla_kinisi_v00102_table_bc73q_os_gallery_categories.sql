
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_os_gallery_categories`
--

DROP TABLE IF EXISTS `bc73q_os_gallery_categories`;
CREATE TABLE `bc73q_os_gallery_categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `fk_gal_id` int(11) UNSIGNED DEFAULT NULL COMMENT 'The gallery id from table __os_gallery',
  `name` varchar(255) DEFAULT NULL,
  `ordering` int(11) NOT NULL,
  `params` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bc73q_os_gallery_categories`
--

INSERT INTO `bc73q_os_gallery_categories` VALUES(1, 1, 'Category Title', 0, '%7B%22categoryAlias%22:%22%22,%22categoryUnpublish%22:false,%22categoryShowTitle%22:false,%22categoryShowTitleCaption%22:false%7D');
INSERT INTO `bc73q_os_gallery_categories` VALUES(2, 2, 'Category Title', 0, '%7B%22categoryAlias%22:%22%22,%22categoryUnpublish%22:false,%22categoryShowTitle%22:false,%22categoryShowTitleCaption%22:false%7D');
INSERT INTO `bc73q_os_gallery_categories` VALUES(5, 5, 'Fyzioterapie dospělých', 0, '%7B%22categoryAlias%22:%22%22,%22categoryUnpublish%22:false,%22categoryShowTitle%22:false,%22categoryShowTitleCaption%22:true%7D');
INSERT INTO `bc73q_os_gallery_categories` VALUES(4, 4, 'Category Title', 0, '{}');
INSERT INTO `bc73q_os_gallery_categories` VALUES(6, 6, 'Fyzioterapie dospělých - indikace', 0, '%7B%22categoryAlias%22:%22%22,%22categoryUnpublish%22:false,%22categoryShowTitle%22:false,%22categoryShowTitleCaption%22:true%7D');
INSERT INTO `bc73q_os_gallery_categories` VALUES(7, 7, 'Fyzioterapie dospělých - metody', 0, '%7B%22categoryAlias%22:%22%22,%22categoryUnpublish%22:false,%22categoryShowTitle%22:false,%22categoryShowTitleCaption%22:true%7D');
INSERT INTO `bc73q_os_gallery_categories` VALUES(8, 8, 'Akutní a pooperační fyzioterapie - mobilizace bederní páteře', 0, '%7B%22categoryAlias%22:%22%22,%22categoryUnpublish%22:false,%22categoryShowTitle%22:false,%22categoryShowTitleCaption%22:true%7D');
INSERT INTO `bc73q_os_gallery_categories` VALUES(9, 9, 'Akutní fyzioterapie - metoda Mojžíšové', 0, '%7B%22categoryAlias%22:%22%22,%22categoryUnpublish%22:false,%22categoryShowTitle%22:false,%22categoryShowTitleCaption%22:true%7D');
INSERT INTO `bc73q_os_gallery_categories` VALUES(10, 10, 'Indikace - grafomotorika ruky', 0, '%7B%22categoryAlias%22:%22%22,%22categoryUnpublish%22:false,%22categoryShowTitle%22:false,%22categoryShowTitleCaption%22:true%7D');
INSERT INTO `bc73q_os_gallery_categories` VALUES(11, 11, 'Dětská fyzioterapie - metody', 0, '%7B%22categoryAlias%22:%22%22,%22categoryUnpublish%22:false,%22categoryShowTitle%22:false,%22categoryShowTitleCaption%22:true%7D');
INSERT INTO `bc73q_os_gallery_categories` VALUES(12, 12, 'Vyšetření - kyčelní kloub', 0, '%7B%22categoryAlias%22:%22%22,%22categoryUnpublish%22:false,%22categoryShowTitle%22:false,%22categoryShowTitleCaption%22:true%7D');
INSERT INTO `bc73q_os_gallery_categories` VALUES(13, 13, 'Dětská fyzioterapie ', 0, '%7B%22categoryAlias%22:%22%22,%22categoryUnpublish%22:false,%22categoryShowTitle%22:false,%22categoryShowTitleCaption%22:true%7D');
INSERT INTO `bc73q_os_gallery_categories` VALUES(14, 14, 'DNS', 0, '%7B%22categoryAlias%22:%22%22,%22categoryUnpublish%22:false,%22categoryShowTitle%22:false,%22categoryShowTitleCaption%22:true%7D');
INSERT INTO `bc73q_os_gallery_categories` VALUES(15, 15, 'Fyzioterapie pro ženy: Metoda Ludmily Mojžíšové', 0, '%7B%22categoryAlias%22:%22%22,%22categoryUnpublish%22:false,%22categoryShowTitle%22:false,%22categoryShowTitleCaption%22:true%7D');
INSERT INTO `bc73q_os_gallery_categories` VALUES(16, 16, 'Sportovní fyzioterapie', 0, '%7B%22categoryAlias%22:%22%22,%22categoryUnpublish%22:false,%22categoryShowTitle%22:false,%22categoryShowTitleCaption%22:true%7D');
INSERT INTO `bc73q_os_gallery_categories` VALUES(17, 17, 'Péče o sportovce - indikace', 0, '%7B%22categoryAlias%22:%22%22,%22categoryUnpublish%22:false,%22categoryShowTitle%22:false,%22categoryShowTitleCaption%22:true%7D');
INSERT INTO `bc73q_os_gallery_categories` VALUES(18, 18, 'Péče o sportovce - komplexní analýza', 0, '%7B%22categoryAlias%22:%22%22,%22categoryUnpublish%22:false,%22categoryShowTitle%22:false,%22categoryShowTitleCaption%22:true%7D');
INSERT INTO `bc73q_os_gallery_categories` VALUES(19, 19, 'Péče o sportovce - léčba akutního úrazu, aplikace suché jehly', 0, '%7B%22categoryAlias%22:%22%22,%22categoryUnpublish%22:false,%22categoryShowTitle%22:false,%22categoryShowTitleCaption%22:true%7D');
INSERT INTO `bc73q_os_gallery_categories` VALUES(20, 20, 'Péče o sportovce - metody a přístupy', 0, '%7B%22categoryAlias%22:%22%22,%22categoryUnpublish%22:false,%22categoryShowTitle%22:false,%22categoryShowTitleCaption%22:true%7D');
INSERT INTO `bc73q_os_gallery_categories` VALUES(21, 21, 'Vyšetření kloubů', 0, '%7B%22categoryAlias%22:%22%22,%22categoryUnpublish%22:false,%22categoryShowTitle%22:false,%22categoryShowTitleCaption%22:true%7D');
INSERT INTO `bc73q_os_gallery_categories` VALUES(22, 22, 'Léčba funkční sterility - ošetření SI kloubu', 0, '%7B%22categoryAlias%22:%22%22,%22categoryUnpublish%22:false,%22categoryShowTitle%22:false,%22categoryShowTitleCaption%22:true%7D');
INSERT INTO `bc73q_os_gallery_categories` VALUES(23, 23, 'Cvičení v těhotenství', 0, '%7B%22categoryAlias%22:%22%22,%22categoryUnpublish%22:false,%22categoryShowTitle%22:false,%22categoryShowTitleCaption%22:true%7D');
INSERT INTO `bc73q_os_gallery_categories` VALUES(24, 24, 'Metoda Ludmily Mojžíšové', 0, '%7B%22categoryAlias%22:%22%22,%22categoryUnpublish%22:false,%22categoryShowTitle%22:false,%22categoryShowTitleCaption%22:true%7D');
INSERT INTO `bc73q_os_gallery_categories` VALUES(25, 25, 'Pooperační fyzioterapie', 0, '%7B%22categoryAlias%22:%22%22,%22categoryUnpublish%22:false,%22categoryShowTitle%22:false,%22categoryShowTitleCaption%22:true%7D');
INSERT INTO `bc73q_os_gallery_categories` VALUES(26, 26, 'Funkční fyziotrénink', 0, '%7B%22categoryAlias%22:%22%22,%22categoryUnpublish%22:false,%22categoryShowTitle%22:false,%22categoryShowTitleCaption%22:true%7D');
INSERT INTO `bc73q_os_gallery_categories` VALUES(27, 27, 'Funkční fyziotrénink - box', 0, '%7B%22categoryAlias%22:%22%22,%22categoryUnpublish%22:false,%22categoryShowTitle%22:false,%22categoryShowTitleCaption%22:true%7D');
INSERT INTO `bc73q_os_gallery_categories` VALUES(28, 28, 'Nácvik techniky golfového švihu', 0, '%7B%22categoryAlias%22:%22%22,%22categoryUnpublish%22:false,%22categoryShowTitle%22:false,%22categoryShowTitleCaption%22:true%7D');
INSERT INTO `bc73q_os_gallery_categories` VALUES(29, 29, 'Správné cvičení a posilování ', 0, '%7B%22categoryAlias%22:%22%22,%22categoryUnpublish%22:false,%22categoryShowTitle%22:false,%22categoryShowTitleCaption%22:true%7D');
INSERT INTO `bc73q_os_gallery_categories` VALUES(30, 30, 'DNS', 0, '%7B%22categoryAlias%22:%22%22,%22categoryUnpublish%22:false,%22categoryShowTitle%22:false,%22categoryShowTitleCaption%22:true%7D');
INSERT INTO `bc73q_os_gallery_categories` VALUES(31, 31, ' Metoda Ludmily Mojžíšové', 0, '%7B%22categoryAlias%22:%22%22,%22categoryUnpublish%22:false,%22categoryShowTitle%22:false,%22categoryShowTitleCaption%22:true%7D');
INSERT INTO `bc73q_os_gallery_categories` VALUES(32, 32, ' Senzomotorická stimulace', 0, '%7B%22categoryAlias%22:%22%22,%22categoryUnpublish%22:false,%22categoryShowTitle%22:false,%22categoryShowTitleCaption%22:true%7D');
INSERT INTO `bc73q_os_gallery_categories` VALUES(33, 33, ' Léčba suchou jehlou (Dry Needling)', 0, '%7B%22categoryAlias%22:%22%22,%22categoryUnpublish%22:false,%22categoryShowTitle%22:false,%22categoryShowTitleCaption%22:true%7D');
INSERT INTO `bc73q_os_gallery_categories` VALUES(34, 34, 'Kineziotaping', 0, '%7B%22categoryAlias%22:%22%22,%22categoryUnpublish%22:false,%22categoryShowTitle%22:false,%22categoryShowTitleCaption%22:true%7D');
INSERT INTO `bc73q_os_gallery_categories` VALUES(35, 35, 'Elektroléčba', 0, '%7B%22categoryAlias%22:%22%22,%22categoryUnpublish%22:false,%22categoryShowTitle%22:false,%22categoryShowTitleCaption%22:true%7D');
INSERT INTO `bc73q_os_gallery_categories` VALUES(36, 36, 'Léčba TDP lampou', 0, '%7B%22categoryAlias%22:%22%22,%22categoryUnpublish%22:false,%22categoryShowTitle%22:false,%22categoryShowTitleCaption%22:true%7D');
