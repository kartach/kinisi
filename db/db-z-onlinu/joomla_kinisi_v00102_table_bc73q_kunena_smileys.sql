
DROP TABLE IF EXISTS `bc73q_kunena_smileys`;
CREATE TABLE `bc73q_kunena_smileys` (
  `id` int(4) NOT NULL,
  `code` varchar(12) NOT NULL DEFAULT '',
  `location` varchar(50) NOT NULL DEFAULT '',
  `greylocation` varchar(60) NOT NULL DEFAULT '',
  `emoticonbar` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `bc73q_kunena_smileys` VALUES(1, 'B)', 'cool.png', 'cool-grey.png', 1);
INSERT INTO `bc73q_kunena_smileys` VALUES(2, '8)', 'cool.png', 'cool-grey.png', 0);
INSERT INTO `bc73q_kunena_smileys` VALUES(3, '8-)', 'cool.png', 'cool-grey.png', 0);
INSERT INTO `bc73q_kunena_smileys` VALUES(4, ':-(', 'sad.png', 'sad-grey.png', 0);
INSERT INTO `bc73q_kunena_smileys` VALUES(5, ':(', 'sad.png', 'sad-grey.png', 1);
INSERT INTO `bc73q_kunena_smileys` VALUES(6, ':sad:', 'sad.png', 'sad-grey.png', 0);
INSERT INTO `bc73q_kunena_smileys` VALUES(7, ':cry:', 'sad.png', 'sad-grey.png', 0);
INSERT INTO `bc73q_kunena_smileys` VALUES(8, ':)', 'smile.png', 'smile-grey.png', 1);
INSERT INTO `bc73q_kunena_smileys` VALUES(9, ':-)', 'smile.png', 'smile-grey.png', 0);
INSERT INTO `bc73q_kunena_smileys` VALUES(10, ':cheer:', 'cheerful.png', 'cheerful-grey.png', 1);
INSERT INTO `bc73q_kunena_smileys` VALUES(11, ';)', 'wink.png', 'wink-grey.png', 1);
INSERT INTO `bc73q_kunena_smileys` VALUES(12, ';-)', 'wink.png', 'wink-grey.png', 0);
INSERT INTO `bc73q_kunena_smileys` VALUES(13, ':wink:', 'wink.png', 'wink-grey.png', 0);
INSERT INTO `bc73q_kunena_smileys` VALUES(14, ';-)', 'wink.png', 'wink-grey.png', 0);
INSERT INTO `bc73q_kunena_smileys` VALUES(15, ':P', 'tongue.png', 'tongue-grey.png', 1);
INSERT INTO `bc73q_kunena_smileys` VALUES(16, ':p', 'tongue.png', 'tongue-grey.png', 0);
INSERT INTO `bc73q_kunena_smileys` VALUES(17, ':-p', 'tongue.png', 'tongue-grey.png', 0);
INSERT INTO `bc73q_kunena_smileys` VALUES(18, ':-P', 'tongue.png', 'tongue-grey.png', 0);
INSERT INTO `bc73q_kunena_smileys` VALUES(19, ':razz:', 'tongue.png', 'tongue-grey.png', 0);
INSERT INTO `bc73q_kunena_smileys` VALUES(20, ':angry:', 'angry.png', 'angry-grey.png', 1);
INSERT INTO `bc73q_kunena_smileys` VALUES(21, ':mad:', 'angry.png', 'angry-grey.png', 0);
INSERT INTO `bc73q_kunena_smileys` VALUES(22, ':unsure:', 'unsure.png', 'unsure-grey.png', 1);
INSERT INTO `bc73q_kunena_smileys` VALUES(23, ':o', 'shocked.png', 'shocked-grey.png', 0);
INSERT INTO `bc73q_kunena_smileys` VALUES(24, ':-o', 'shocked.png', 'shocked-grey.png', 0);
INSERT INTO `bc73q_kunena_smileys` VALUES(25, ':O', 'shocked.png', 'shocked-grey.png', 0);
INSERT INTO `bc73q_kunena_smileys` VALUES(26, ':-O', 'shocked.png', 'shocked-grey.png', 0);
INSERT INTO `bc73q_kunena_smileys` VALUES(27, ':eek:', 'shocked.png', 'shocked-grey.png', 0);
INSERT INTO `bc73q_kunena_smileys` VALUES(28, ':ohmy:', 'shocked.png', 'shocked-grey.png', 1);
INSERT INTO `bc73q_kunena_smileys` VALUES(29, ':huh:', 'wassat.png', 'wassat-grey.png', 1);
INSERT INTO `bc73q_kunena_smileys` VALUES(30, ':?', 'confused.png', 'confused-grey.png', 0);
INSERT INTO `bc73q_kunena_smileys` VALUES(31, ':-?', 'confused.png', 'confused-grey.png', 0);
INSERT INTO `bc73q_kunena_smileys` VALUES(32, ':???', 'confused.png', 'confused-grey.png', 0);
INSERT INTO `bc73q_kunena_smileys` VALUES(33, ':dry:', 'ermm.png', 'ermm-grey.png', 1);
INSERT INTO `bc73q_kunena_smileys` VALUES(34, ':ermm:', 'ermm.png', 'ermm-grey.png', 0);
INSERT INTO `bc73q_kunena_smileys` VALUES(35, ':lol:', 'grin.png', 'grin-grey.png', 1);
INSERT INTO `bc73q_kunena_smileys` VALUES(36, ':X', 'sick.png', 'sick-grey.png', 0);
INSERT INTO `bc73q_kunena_smileys` VALUES(37, ':x', 'sick.png', 'sick-grey.png', 0);
INSERT INTO `bc73q_kunena_smileys` VALUES(38, ':sick:', 'sick.png', 'sick-grey.png', 1);
INSERT INTO `bc73q_kunena_smileys` VALUES(39, ':silly:', 'silly.png', 'silly-grey.png', 1);
INSERT INTO `bc73q_kunena_smileys` VALUES(40, ':y32b4:', 'silly.png', 'silly-grey.png', 0);
INSERT INTO `bc73q_kunena_smileys` VALUES(41, ':blink:', 'blink.png', 'blink-grey.png', 1);
INSERT INTO `bc73q_kunena_smileys` VALUES(42, ':blush:', 'blush.png', 'blush-grey.png', 1);
INSERT INTO `bc73q_kunena_smileys` VALUES(43, ':oops:', 'blush.png', 'blush-grey.png', 1);
INSERT INTO `bc73q_kunena_smileys` VALUES(44, ':kiss:', 'kissing.png', 'kissing-grey.png', 1);
INSERT INTO `bc73q_kunena_smileys` VALUES(45, ':rolleyes:', 'blink.png', 'blink-grey.png', 0);
INSERT INTO `bc73q_kunena_smileys` VALUES(46, ':roll:', 'blink.png', 'blink-grey.png', 0);
INSERT INTO `bc73q_kunena_smileys` VALUES(47, ':woohoo:', 'w00t.png', 'w00t-grey.png', 1);
INSERT INTO `bc73q_kunena_smileys` VALUES(48, ':side:', 'sideways.png', 'sideways-grey.png', 1);
INSERT INTO `bc73q_kunena_smileys` VALUES(49, ':S', 'dizzy.png', 'dizzy-grey.png', 1);
INSERT INTO `bc73q_kunena_smileys` VALUES(50, ':s', 'dizzy.png', 'dizzy-grey.png', 0);
INSERT INTO `bc73q_kunena_smileys` VALUES(51, ':evil:', 'devil.png', 'devil-grey.png', 1);
INSERT INTO `bc73q_kunena_smileys` VALUES(52, ':twisted:', 'devil.png', 'devil-grey.png', 0);
INSERT INTO `bc73q_kunena_smileys` VALUES(53, ':whistle:', 'whistling.png', 'whistling-grey.png', 1);
INSERT INTO `bc73q_kunena_smileys` VALUES(54, ':pinch:', 'pinch.png', 'pinch-grey.png', 1);
INSERT INTO `bc73q_kunena_smileys` VALUES(55, ':D', 'laughing.png', 'laughing-grey.png', 0);
INSERT INTO `bc73q_kunena_smileys` VALUES(56, ':-D', 'laughing.png', 'laughing-grey.png', 0);
INSERT INTO `bc73q_kunena_smileys` VALUES(57, ':grin:', 'laughing.png', 'laughing-grey.png', 0);
INSERT INTO `bc73q_kunena_smileys` VALUES(58, ':laugh:', 'laughing.png', 'laughing-grey.png', 0);
INSERT INTO `bc73q_kunena_smileys` VALUES(59, ':|', 'neutral.png', 'neutral-grey.png', 0);
INSERT INTO `bc73q_kunena_smileys` VALUES(60, ':-|', 'neutral.png', 'neutral-grey.png', 0);
INSERT INTO `bc73q_kunena_smileys` VALUES(61, ':neutral:', 'neutral.png', 'neutral-grey.png', 0);
INSERT INTO `bc73q_kunena_smileys` VALUES(62, ':mrgreen:', 'mrgreen.png', 'mrgreen-grey.png', 0);
INSERT INTO `bc73q_kunena_smileys` VALUES(63, ':?:', 'question.png', 'question-grey.png', 0);
INSERT INTO `bc73q_kunena_smileys` VALUES(64, ':!:', 'exclamation.png', 'exclamation-grey.png', 0);
INSERT INTO `bc73q_kunena_smileys` VALUES(65, ':arrow:', 'arrow.png', 'arrow-grey.png', 0);
INSERT INTO `bc73q_kunena_smileys` VALUES(66, ':idea:', 'idea.png', 'idea-grey.png', 0);
