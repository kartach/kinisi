
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

INSERT INTO `bc73q_kunena_topics` VALUES(1, 2, 'Welcome to Kunena!', 0, 0, 0, 0, 0, 1, 11, 0, 0, 0, 1, 1399057228, 317, 'Thank you for choosing Kunena for your community forum needs in Joomla. \r\n Kunena, translated from Swahili meaning “to speak”, is built by a team of open source professionals with the goal of providing a top quality, tightly unified forum solution for Joomla. \r\nAdditional Kunena Resources\r\nKunena Documentation: [url]http://www.kunena.org/docs[/url] \r\nKunena Support Forum: [url]http://www.kunena.org/forum[/url] \r\nKunena Downloads: [url]http://www.kunena.org/download[/url] \r\nKunena Blog: [url]http://www.kunena.org/blog[/url] \r\nFollow Kunena on Twitter: [url]http://www.kunena.org/twitter[/url]', '', 1, 1399057228, 317, 'Thank you for choosing Kunena for your community forum needs in Joomla. \r\n Kunena, translated from Swahili meaning “to speak”, is built by a team of open source professionals with the goal of providing a top quality, tightly unified forum solution for Joomla. \r\nAdditional Kunena Resources\r\nKunena Documentation: [url]http://www.kunena.org/docs[/url] \r\nKunena Support Forum: [url]http://www.kunena.org/forum[/url] \r\nKunena Downloads: [url]http://www.kunena.org/download[/url] \r\nKunena Blog: [url]http://www.kunena.org/blog[/url] \r\nFollow Kunena on Twitter: [url]http://www.kunena.org/twitter[/url]', '', 0, '');
INSERT INTO `bc73q_kunena_topics` VALUES(2, 5, 'General template issues, questions and problems', 0, 0, 0, 0, 0, 4, 15, 0, 0, 0, 2, 1415103771, 846, 'Kunena is the ideal forum extension for Joomla. It\'s free, fully integrated, and no bridges or hacks are required.\r\n\r\nWant to know more about the Kunena Project? See how the open source philosophy drives our community, follow our development on GitHub, and how you can participate to make Kunena even better.', 'demo', 5, 1418121786, 847, 'Hi.\r\n\r\nI\'m looking to have 1 template for 1 categorie and an other template for all others catégories.\r\nSomeone he already well-considered the problem ?\r\n\r\nRegards.', 'lorem_ipsum', 0, '');
INSERT INTO `bc73q_kunena_topics` VALUES(3, 6, 'Pellentesque non libero', 0, 0, 0, 0, 0, 2, 4, 0, 0, 0, 6, 1418121957, 847, 'Sed justo felis, lacinia at scelerisque a, semper et ante. Fusce posuere lacus eu mi lacinia et fringilla elit sollicitudin. Maecenas non odio nunc. In ut sollicitudin magna. Sed sit amet tincidunt odio. Mauris pharetra adipiscing urna ut accumsan. Suspendisse nec risus in felis fermentum blandit.\r\n\r\nNam nec lectus ut orci porta volutpat id at purus. Sed sagittis congue dapibus. Proin dolor metus, pharetra ut pulvinar nec, condimentum quis libero. Sed fermentum tortor ac elit tristique vel dapibus sem porta. Suspendisse aliquet posuere ultrices. Proin facilisis libero lacinia erat pretium faucibus. In tortor nunc, posuere eget commodo et, eleifend vel risus.', 'lorem_ipsum', 7, 1418122011, 848, 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam erat volutpat. Pellentesque non libero dui, vitae pharetra urna. Vestibulum accumsan pulvinar magna sed consectetur. Nulla congue condimentum aliquam. Donec non libero lectus, id mollis nisi. Morbi turpis magna, varius in ullamcorper nec, suscipit sagittis nibh. Nam elementum aliquam turpis eget egestas. Cras ligula nisi, interdum et vulputate nec, sagittis a tellus. In hac habitasse platea dictumst. In in sem libero. Fusce cursus, metus eu commodo hendrerit, arcu nibh consequat lectus, nec suscipit eros urna in ipsum. Praesent et enim a nisl commodo sodales non id neque. Ut sodales dignissim massa vitae hendrerit. Sed porttitor purus ut ante fermentum quis mollis velit pellentesque.\r\n\r\nEtiam nisi felis, fermentum vitae ultrices non, euismod in magna. In mattis velit ut eros tristique a congue erat consequat. Suspendisse consequat, justo eu gravida semper, ligula turpis dignissim dolor, vitae lacinia velit metus id libero. Nullam consectetur rhoncus magna, quis pharetra tortor bibendum quis. Curabitur ac ante nisl. Nullam mauris arcu, malesuada eu consectetur non, eleifend quis est. Nullam dictum, leo vulputate elementum porttitor, enim mi posuere augue, id porttitor leo sapien sed libero. Quisque est velit, aliquam bibendum vestibulum eget, tristique a odio.', 'dolor_sit', 0, '');
