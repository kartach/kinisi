
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_kunena_topics`
--

DROP TABLE IF EXISTS `bc73q_kunena_topics`;
CREATE TABLE `bc73q_kunena_topics` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `subject` tinytext,
  `icon_id` int(11) NOT NULL DEFAULT '0',
  `label_id` int(11) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `hold` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `posts` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `attachments` int(11) NOT NULL DEFAULT '0',
  `poll_id` int(11) NOT NULL DEFAULT '0',
  `moved_id` int(11) NOT NULL DEFAULT '0',
  `first_post_id` int(11) NOT NULL DEFAULT '0',
  `first_post_time` int(11) NOT NULL DEFAULT '0',
  `first_post_userid` int(11) NOT NULL DEFAULT '0',
  `first_post_message` text,
  `first_post_guest_name` tinytext,
  `last_post_id` int(11) NOT NULL DEFAULT '0',
  `last_post_time` int(11) NOT NULL DEFAULT '0',
  `last_post_userid` int(11) NOT NULL DEFAULT '0',
  `last_post_message` text,
  `last_post_guest_name` tinytext,
  `rating` tinyint(6) NOT NULL DEFAULT '0',
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bc73q_kunena_topics`
--

INSERT INTO `bc73q_kunena_topics` VALUES(5, 2, 'ssssss', 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, '');
INSERT INTO `bc73q_kunena_topics` VALUES(6, 2, 'ff', 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, '');
INSERT INTO `bc73q_kunena_topics` VALUES(7, 2, 'ff', 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, '');
INSERT INTO `bc73q_kunena_topics` VALUES(8, 2, 'dddddddd', 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, '');
INSERT INTO `bc73q_kunena_topics` VALUES(9, 15, 'Dotaz do poradny', 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, '');
INSERT INTO `bc73q_kunena_topics` VALUES(10, 15, 'Dotaz do poradny', 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, '');
INSERT INTO `bc73q_kunena_topics` VALUES(11, 2, 'ss', 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, '');
INSERT INTO `bc73q_kunena_topics` VALUES(12, 2, 'ddd', 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, '');
INSERT INTO `bc73q_kunena_topics` VALUES(13, 2, 'xx', 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, '');
INSERT INTO `bc73q_kunena_topics` VALUES(14, 2, 'c', 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, '');
INSERT INTO `bc73q_kunena_topics` VALUES(15, 2, 'ssssss', 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, '');
INSERT INTO `bc73q_kunena_topics` VALUES(16, 2, 'ss', 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, '');
INSERT INTO `bc73q_kunena_topics` VALUES(17, 2, 's', 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, '');
INSERT INTO `bc73q_kunena_topics` VALUES(19, 2, 'Komentáře', 0, 0, 0, 0, 0, 2, 157, 0, 0, 0, 27, 1510248194, 849, 'Dobrý den, \r\ngratuluji k novému webu! Jen poznámku, když už máte registraci, nebylo by dobrý mít i možnost komentářů pod článkama? Myslím si, že lidi by si zrovna u článků z tohoto oboru rádi vyměňovali názory.', 'AlenaH', 30, 1510262167, 630, 'Děkujeme za první postřeh a návrh. Naprosto s Vámi souhlasíme. S komentáři k jednotlivým článkům počítáme do další verze.', 'Administrátor', 0, '');
INSERT INTO `bc73q_kunena_topics` VALUES(21, 3, 'Skupinové cvičení, cvičení maminek s dětma', 0, 0, 0, 0, 0, 2, 156, 0, 0, 0, 29, 1510248840, 849, 'Dobrý den, \r\nbydlím nedaleko a uvítala bych, kdybyste měli možnost skupinového cvičení maminek s dětma, aby svičení bylo zaměřeno na vývoj dítěte a my bychom se mohli něco dozvědět a zároveň si u toho zacvičit. Je to něco jinýho, než normální cvičení v různých kurzech a školičkách, když by to bylo pod vedenim fyzioterapeuta. Na stránkách jsem žádné informace o skupinovém cvičení nenašla. Pořádáte nějaké nebo plánujete je? Jaké? Děkuji.', 'AlenaH', 31, 1510258840, 851, 'Dobrý den,\r\nprozatím skupinová cvičení neplánujeme. V centru Kinisi se zaměřujeme na individuální vedenou dětskou fyzioterapii šitou na míru daného dítěte, kde rodičům pečlivě všechno vysvětlíme. S pozdravem, Lenka Augustínová', 'Lenka Augustínová', 0, '');
