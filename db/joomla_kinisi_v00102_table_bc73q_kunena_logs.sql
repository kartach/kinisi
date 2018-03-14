
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_kunena_logs`
--

DROP TABLE IF EXISTS `bc73q_kunena_logs`;
CREATE TABLE `bc73q_kunena_logs` (
  `id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `topic_id` int(11) NOT NULL DEFAULT '0',
  `target_user` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(40) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `operation` varchar(40) NOT NULL,
  `data` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bc73q_kunena_logs`
--

INSERT INTO `bc73q_kunena_logs` VALUES(1, 3, 630, 0, 0, 0, '::1', 1509997975, 'LOG_ERROR_FATAL', '{\"type\":1,\"message\":\"Call to undefined function iconv()\",\"file\":\"\\/home\\/k\\/projects\\/kinisi\\/administrator\\/components\\/com_finder\\/helpers\\/indexer\\/parser\\/html.php\",\"line\":36}');
INSERT INTO `bc73q_kunena_logs` VALUES(2, 3, 630, 0, 0, 0, '::1', 1509997988, 'LOG_ERROR_FATAL', '{\"type\":1,\"message\":\"Call to undefined function iconv()\",\"file\":\"\\/home\\/k\\/projects\\/kinisi\\/administrator\\/components\\/com_finder\\/helpers\\/indexer\\/parser\\/html.php\",\"line\":36}');
INSERT INTO `bc73q_kunena_logs` VALUES(3, 3, 630, 0, 0, 0, '::1', 1509998046, 'LOG_ERROR_FATAL', '{\"type\":1,\"message\":\"Call to undefined function iconv()\",\"file\":\"\\/home\\/k\\/projects\\/kinisi\\/administrator\\/components\\/com_finder\\/helpers\\/indexer\\/parser\\/html.php\",\"line\":36}');
INSERT INTO `bc73q_kunena_logs` VALUES(4, 3, 630, 0, 0, 0, '::1', 1509998110, 'LOG_ERROR_FATAL', '{\"type\":1,\"message\":\"Call to undefined function iconv()\",\"file\":\"\\/home\\/k\\/projects\\/kinisi\\/administrator\\/components\\/com_finder\\/helpers\\/indexer\\/parser\\/html.php\",\"line\":36}');
INSERT INTO `bc73q_kunena_logs` VALUES(5, 3, 630, 0, 0, 0, '::1', 1509998178, 'LOG_ERROR_FATAL', '{\"type\":1,\"message\":\"Call to undefined function iconv()\",\"file\":\"\\/home\\/k\\/projects\\/kinisi\\/administrator\\/components\\/com_finder\\/helpers\\/indexer\\/parser\\/html.php\",\"line\":36}');
INSERT INTO `bc73q_kunena_logs` VALUES(6, 3, 630, 0, 0, 0, '::1', 1509998199, 'LOG_ERROR_FATAL', '{\"type\":1,\"message\":\"Call to undefined function iconv()\",\"file\":\"\\/home\\/k\\/projects\\/kinisi\\/administrator\\/components\\/com_finder\\/helpers\\/indexer\\/parser\\/html.php\",\"line\":36}');
INSERT INTO `bc73q_kunena_logs` VALUES(7, 3, 630, 0, 0, 0, '::1', 1510081228, 'LOG_ERROR_FATAL', '{\"type\":1,\"message\":\"Call to undefined function iconv()\",\"file\":\"\\/home\\/k\\/projects\\/kinisi\\/administrator\\/components\\/com_finder\\/helpers\\/indexer\\/parser\\/html.php\",\"line\":36}');
INSERT INTO `bc73q_kunena_logs` VALUES(8, 3, 630, 0, 0, 0, '::1', 1510081461, 'LOG_ERROR_FATAL', '{\"type\":1,\"message\":\"Call to undefined function iconv()\",\"file\":\"\\/home\\/k\\/projects\\/kinisi\\/administrator\\/components\\/com_finder\\/helpers\\/indexer\\/parser\\/html.php\",\"line\":36}');
INSERT INTO `bc73q_kunena_logs` VALUES(9, 3, 630, 0, 0, 0, '::1', 1510130020, 'LOG_ERROR_FATAL', '{\"type\":1,\"message\":\"Call to undefined function iconv()\",\"file\":\"\\/home\\/k\\/projects\\/kinisi\\/administrator\\/components\\/com_finder\\/helpers\\/indexer\\/parser\\/html.php\",\"line\":36}');
INSERT INTO `bc73q_kunena_logs` VALUES(10, 3, 630, 0, 0, 0, '::1', 1510131517, 'LOG_ERROR_FATAL', '{\"type\":1,\"message\":\"Call to undefined function iconv()\",\"file\":\"\\/home\\/k\\/projects\\/kinisi\\/administrator\\/components\\/com_finder\\/helpers\\/indexer\\/parser\\/html.php\",\"line\":36}');
INSERT INTO `bc73q_kunena_logs` VALUES(11, 3, 630, 0, 0, 0, '::1', 1510131543, 'LOG_ERROR_FATAL', '{\"type\":1,\"message\":\"Call to undefined function iconv()\",\"file\":\"\\/home\\/k\\/projects\\/kinisi\\/administrator\\/components\\/com_finder\\/helpers\\/indexer\\/parser\\/html.php\",\"line\":36}');
INSERT INTO `bc73q_kunena_logs` VALUES(12, 3, 630, 0, 0, 0, '::1', 1510132195, 'LOG_ERROR_FATAL', '{\"type\":1,\"message\":\"Call to undefined function iconv()\",\"file\":\"\\/home\\/k\\/projects\\/kinisi\\/administrator\\/components\\/com_finder\\/helpers\\/indexer\\/parser\\/html.php\",\"line\":36}');
INSERT INTO `bc73q_kunena_logs` VALUES(13, 3, 630, 0, 0, 0, '::1', 1510132322, 'LOG_ERROR_FATAL', '{\"type\":1,\"message\":\"Call to undefined function iconv()\",\"file\":\"\\/home\\/k\\/projects\\/kinisi\\/administrator\\/components\\/com_finder\\/helpers\\/indexer\\/parser\\/html.php\",\"line\":36}');
INSERT INTO `bc73q_kunena_logs` VALUES(14, 3, 630, 0, 0, 0, '::1', 1510133156, 'LOG_ERROR_FATAL', '{\"type\":1,\"message\":\"Call to undefined function iconv()\",\"file\":\"\\/home\\/k\\/projects\\/kinisi\\/administrator\\/components\\/com_finder\\/helpers\\/indexer\\/parser\\/html.php\",\"line\":36}');
INSERT INTO `bc73q_kunena_logs` VALUES(15, 3, 630, 0, 0, 0, '::1', 1510133788, 'LOG_ERROR_FATAL', '{\"type\":1,\"message\":\"Call to undefined function iconv()\",\"file\":\"\\/home\\/k\\/projects\\/kinisi\\/administrator\\/components\\/com_finder\\/helpers\\/indexer\\/parser\\/html.php\",\"line\":36}');
INSERT INTO `bc73q_kunena_logs` VALUES(16, 3, 630, 0, 0, 0, '::1', 1510135800, 'LOG_ERROR_FATAL', '{\"type\":1,\"message\":\"Call to undefined function iconv()\",\"file\":\"\\/home\\/k\\/projects\\/kinisi\\/administrator\\/components\\/com_finder\\/helpers\\/indexer\\/parser\\/html.php\",\"line\":36}');
INSERT INTO `bc73q_kunena_logs` VALUES(17, 3, 630, 0, 0, 0, '::1', 1510142240, 'LOG_ERROR_FATAL', '{\"type\":1,\"message\":\"Call to undefined function iconv()\",\"file\":\"\\/home\\/k\\/projects\\/kinisi\\/administrator\\/components\\/com_finder\\/helpers\\/indexer\\/parser\\/html.php\",\"line\":36}');
