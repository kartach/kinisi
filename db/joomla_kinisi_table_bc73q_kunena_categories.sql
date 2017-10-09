
DROP TABLE IF EXISTS `bc73q_kunena_categories`;
CREATE TABLE `bc73q_kunena_categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `name` tinytext,
  `alias` varchar(255) NOT NULL,
  `icon` varchar(60) DEFAULT NULL,
  `icon_id` tinyint(4) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `accesstype` varchar(20) NOT NULL DEFAULT 'joomla.level',
  `access` int(11) NOT NULL DEFAULT '0',
  `pub_access` int(11) NOT NULL DEFAULT '1',
  `pub_recurse` tinyint(4) DEFAULT '1',
  `admin_access` int(11) NOT NULL DEFAULT '0',
  `admin_recurse` tinyint(4) DEFAULT '1',
  `ordering` smallint(6) NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL DEFAULT '0',
  `channels` text,
  `checked_out` tinyint(4) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review` tinyint(4) NOT NULL DEFAULT '0',
  `allow_anonymous` tinyint(4) NOT NULL DEFAULT '0',
  `post_anonymous` tinyint(4) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `headerdesc` text NOT NULL,
  `class_sfx` varchar(20) NOT NULL,
  `allow_polls` tinyint(4) NOT NULL DEFAULT '0',
  `topic_ordering` varchar(16) NOT NULL DEFAULT 'lastpost',
  `iconset` varchar(255) NOT NULL DEFAULT 'default',
  `numTopics` mediumint(8) NOT NULL DEFAULT '0',
  `numPosts` mediumint(8) NOT NULL DEFAULT '0',
  `last_topic_id` int(11) NOT NULL DEFAULT '0',
  `last_post_id` int(11) NOT NULL DEFAULT '0',
  `last_post_time` int(11) NOT NULL DEFAULT '0',
  `allow_ratings` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `bc73q_kunena_categories` VALUES(1, 0, 'Main Forum', 'main-forum', '', 0, 0, 'joomla.group', 0, 1, 1, 0, 1, 1, 1, NULL, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'This is the main forum section. It serves as a container for categories for your topics.', 'The section header is used to display additional information about the categories of topics that it contains.', '', 0, 'lastpost', 'default', 0, 0, 0, 0, 0, 0, '');
INSERT INTO `bc73q_kunena_categories` VALUES(2, 1, 'Welcome Mat', 'welcome-mat', '', 0, 0, 'joomla.group', 1, 1, 1, 0, 1, 1, 1, NULL, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'We encourage new members to introduce themselves here. Get to know one another and share your interests.', 'Welcome to the Kunena forum! Tell us and our members who you are, what you like and why you became a member of this site. We welcome all new members and hope to see you around a lot!', '', 0, 'lastpost', 'default', 1, 1, 1, 1, 1399057228, 0, '{\"access_post\":[\"6\",\"2\",\"8\"],\"access_reply\":[\"6\",\"2\",\"8\"]}');
INSERT INTO `bc73q_kunena_categories` VALUES(3, 1, 'Suggestion Box', 'suggestion-box', '', 0, 0, 'joomla.group', 0, 1, 1, 0, 1, 2, 1, NULL, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'Have some feedback and input to share? \n Don\'t be shy and drop us a note. We want to hear from you and strive to make our site better and more user friendly for our guests and members a like.', 'This is the optional category header for the Suggestion Box.', '', 1, 'lastpost', 'default', 0, 0, 0, 0, 0, 0, '');
INSERT INTO `bc73q_kunena_categories` VALUES(4, 0, 'Kunena, the Communication Platform for Joomla', 'kunena-the-communication-platform-for-joomla', '', 0, 0, 'joomla.level', 1, 1, 1, 8, 1, 2, 1, NULL, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'Kunena is the ideal forum extension for Joomla. It\'s free, fully integrated, and no bridges or hacks are required.', 'Want to know more about the Kunena Project? See how the open source philosophy drives our community, follow our development on GitHub, and how you can participate to make Kunena even better.', '', 0, 'lastpost', 'default', 0, 0, 0, 0, 0, 0, '{}');
INSERT INTO `bc73q_kunena_categories` VALUES(5, 4, 'Ideal forum', 'ideal-forum', '', 0, 0, 'joomla.level', 1, 1, 1, 8, 1, 1, 1, NULL, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'Kunena is the ideal forum extension for Joomla. It\'s free, fully integrated, and no bridges or hacks are required.', 'Kunena is the ideal forum extension for Joomla. It\'s free, fully integrated, and no bridges or hacks are required.', '', 0, 'lastpost', 'default', 1, 4, 2, 5, 1418121786, 0, '{\"access_post\":[\"6\",\"2\",\"8\"],\"access_reply\":[\"6\",\"2\",\"8\"]}');
INSERT INTO `bc73q_kunena_categories` VALUES(6, 4, 'More about the Kunena', 'more-about-the-kunena', '', 0, 0, 'joomla.level', 1, 1, 1, 8, 1, 2, 1, NULL, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'Want to know more about the Kunena Project? See how the open source philosophy drives our community, follow our development on GitHub, and how you can participate to make Kunena even better.', 'Want to know more about the Kunena Project? See how the open source philosophy drives our community, follow our development on GitHub, and how you can participate to make Kunena even better.', '', 0, 'lastpost', 'default', 1, 2, 3, 7, 1418122011, 0, '{\"access_post\":[\"6\",\"2\",\"8\"],\"access_reply\":[\"6\",\"2\",\"8\"]}');
