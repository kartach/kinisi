
DROP TABLE IF EXISTS `bc73q_ark_editor_toolbars`;
CREATE TABLE `bc73q_ark_editor_toolbars` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL,
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iscore` tinyint(3) NOT NULL DEFAULT '0',
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `bc73q_ark_editor_toolbars` VALUES(1, 'Back', 'back', 1, 0, '0000-00-00 00:00:00', 1, '{\"show_new\":\"0\",\"show_save\":\"0\",\"components\":[]}');
INSERT INTO `bc73q_ark_editor_toolbars` VALUES(2, 'Front', 'front', 1, 0, '0000-00-00 00:00:00', 1, '{\"show_versions\":\"0\",\"show_new\":\"0\",\"show_save\":\"0\",\"show_undo\":\"0\",\"show_redo\":\"0\",\"show_find\":\"0\",\"show_close\":\"0\",\"show_source\":\"0\",\"show_design\":\"0\",\"show_maximum\":\"0\",\"components\":[]}');
INSERT INTO `bc73q_ark_editor_toolbars` VALUES(3, 'Inline', 'inline', 1, 0, '0000-00-00 00:00:00', 1, '{\"show_versions\":\"0\",\"show_new\":\"0\",\"show_save\":\"0\",\"show_undo\":\"0\",\"show_redo\":\"0\",\"show_find\":\"0\",\"show_close\":\"0\",\"show_source\":\"0\",\"show_design\":\"0\",\"show_maximum\":\"0\",\"components\":[]}');
INSERT INTO `bc73q_ark_editor_toolbars` VALUES(4, 'Title', 'title', 1, 0, '0000-00-00 00:00:00', 1, '{\"show_versions\":\"0\",\"show_new\":\"0\",\"show_save\":\"0\",\"show_undo\":\"0\",\"show_redo\":\"0\",\"show_find\":\"0\",\"show_close\":\"0\",\"show_source\":\"0\",\"show_design\":\"0\",\"show_maximum\":\"0\",\"components\":[]}');
INSERT INTO `bc73q_ark_editor_toolbars` VALUES(5, 'Mobile', 'mobile', 1, 0, '0000-00-00 00:00:00', 1, '{\"show_versions\":\"0\",\"show_new\":\"0\",\"show_save\":\"0\",\"show_undo\":\"0\",\"show_redo\":\"0\",\"show_find\":\"0\",\"show_close\":\"0\",\"show_source\":\"0\",\"show_design\":\"0\",\"show_maximum\":\"0\",\"components\":[]}');
INSERT INTO `bc73q_ark_editor_toolbars` VALUES(6, 'Image', 'image', 1, 0, '0000-00-00 00:00:00', 1, '{\"show_versions\":\"0\",\"show_new\":\"0\",\"show_save\":\"0\",\"show_undo\":\"0\",\"show_redo\":\"0\",\"show_find\":\"0\",\"show_close\":\"0\",\"show_source\":\"0\",\"show_design\":\"0\",\"show_maximum\":\"0\",\"components\":[]}');
INSERT INTO `bc73q_ark_editor_toolbars` VALUES(7, 'Full', 'full', 1, 0, '0000-00-00 00:00:00', 1, '{\"show_new\":\"0\",\"show_save\":\"0\",\"components\":[]}');
