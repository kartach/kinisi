
DROP TABLE IF EXISTS `bc73q_ark_editor_plugins`;
CREATE TABLE `bc73q_ark_editor_plugins` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL DEFAULT 'command',
  `row` tinyint(4) NOT NULL DEFAULT '0',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `editable` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iscore` tinyint(3) NOT NULL DEFAULT '0',
  `acl` text,
  `params` text NOT NULL,
  `parentid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `bc73q_ark_editor_plugins` VALUES(1, 'Scayt', 'scayt', 'plugin', 1, '-1872', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 82);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(2, '', 'sourcearea', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(3, 'Source', 'source', 'command', 1, '-1824', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 2);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(4, 'Preview', 'preview', 'plugin', 1, '-1632', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(5, 'Cut', 'cut', 'command', 1, '-312', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 60);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(6, 'Copy', 'copy', 'command', 1, '-264', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 60);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(7, 'Paste', 'paste', 'command', 1, '-360', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 60);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(8, 'PasteText', 'pastetext', 'plugin', 1, '-1536', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(9, 'Find', 'find', 'plugin', 1, '-528', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(10, 'Replace', 'replace', 'command', 1, '-552', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 9);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(11, 'SelectAll', 'selectall', 'command', 1, '-1728', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 61);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(12, 'RemoveFormat', 'removeformat', 'plugin', 1, '-1680', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(13, 'Bold', 'bold', 'command', 2, '-24', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 58);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(14, 'Italic', 'italic', 'command', 2, '-48', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 58);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(15, 'Strike', 'strike', 'command', 2, '-72', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 58);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(16, 'Subscript', 'subscript', 'command', 2, '-96', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 58);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(17, 'Superscript', 'superscript', 'command', 2, '-120', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 58);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(18, 'Underline', 'underline', 'command', 2, '-144', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 58);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(19, 'Smiley', 'smiley', 'plugin', 2, '-1056', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(20, 'Link', 'link', 'plugin', 4, 'link.png', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{\"dialogtitle_switcher\":\"0\",\"dialogtitle\":\"Default\",\"height\":\"230\",\"width\":\"350\"}', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(21, 'Image', 'image', 'plugin', 2, '-936', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(22, 'Flash', 'flash', 'plugin', 2, '-576', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(23, 'SpecialChar', 'specialchar', 'plugin', 2, '-1848', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(24, 'PageBreak', 'pagebreak', 'plugin', 2, '-1488', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(25, 'SpellChecker', 'checkspell', 'command', 1, '-2016', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 82);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(26, '', 'tableresize', 'plugin', 4, '', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{}', 82);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(27, '', 'tabletools', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 82);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(28, 'TextColor', 'textcolor', 'command', 3, '-408', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 62);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(29, 'BGColor', 'bgcolor', 'command', 3, '-384', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 62);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(30, 'Form', 'form', 'command', 1, '-648', 0, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 75);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(31, 'Radio', 'radio', 'command', 1, '-720', 0, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 75);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(32, 'TextField', 'textfield', 'command', 1, '-864', 0, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 75);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(33, 'Textarea', 'textarea', 'command', 1, '-816', 0, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 75);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(34, 'ShowBlocks', 'showblocks', 'plugin', 3, '-1776', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(35, 'Select', 'select', 'command', 1, '-768', 0, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 75);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(36, 'ImageButton', 'imagebutton', 'command', 1, '-696', 0, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 75);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(37, 'HiddenField', 'hiddenfield', 'command', 1, '-672', 0, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 75);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(38, 'Checkbox', 'checkbox', 'command', 1, '-624', 0, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 75);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(39, 'Button', 'formbutton', 'command', 1, '-600', 0, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 75);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(40, 'NumberedList', 'numberedlist', 'command', 2, '-1368', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 90);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(41, 'BulletedList', 'bulletedlist', 'command', 2, '-1320', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 90);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(42, 'Indent', 'indent', 'plugin', 2, '-984', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(43, 'Outdent', 'outdent', 'command', 2, '-1032', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 42);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(44, 'JustifyLeft', 'justifyleft', 'command', 2, '-1128', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 55);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(45, 'JustifyCenter', 'justifycenter', 'command', 2, '-1104', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 55);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(46, 'JustifyBlock', 'justifyblock', 'command', 2, '-1080', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 55);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(47, 'JustifyRight', 'justifyright', 'command', 2, '-1152', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 55);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(48, 'Blockquote', 'blockquote', 'plugin', 2, '-216', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(49, 'About', 'about', 'plugin', 3, '0', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(50, 'Maximize', 'maximize', 'plugin', 3, '-1392', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(51, '', 'div', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(52, 'CreateDiv', 'creatediv', 'command', 2, '-480', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 51);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(53, '', 'editdiv', 'command', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 51);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(54, '', 'removediv', 'command', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 51);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(55, '', 'justify', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(56, '', 'a11yhelp', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(58, '', 'basicstyles', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(59, 'Table', 'table', 'plugin', 2, '-1896', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(60, '', 'clipboard', 'plugin', 4, '', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{}', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(61, '', 'selection', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(62, '', 'colorbutton', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(63, 'Unlink', 'unlink', 'command', 2, '-1272', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 20);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(64, 'Anchor', 'anchor', 'command', 2, '-1224', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 20);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(65, '', 'contextmenu', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(66, '', 'editingblock', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(67, '', 'elementspath', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(68, '', 'enterkey', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(69, '', 'entities', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(70, '', 'toolbar', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(71, '', 'filebrowser', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(72, 'Styles', 'stylescombo', 'plugin', 3, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(73, 'Font', 'font', 'plugin', 3, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(74, 'Format', 'format', 'plugin', 4, '', 1, 1, 630, '2018-05-23 11:45:46', 0, NULL, '{\"format_tags\":\"\",\"format_force_useDefaultText\":\"0\"}', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(75, '', 'forms', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(76, 'Undo', 'undo', 'plugin', 1, '-1992', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(77, 'Redo', 'redo', 'command', 1, '-1944', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 76);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(78, 'Templates', 'templates', 'plugin', 1, '-456', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(79, 'PasteFromWord', 'pastefromword', 'plugin', 1, '-1584', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(80, 'HorizontalRule', 'horizontalrule', 'plugin', 2, '-888', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(81, 'Print', 'print', 'plugin', 1, '-1656', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(82, '', 'wsc', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(83, '', 'showborders', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(84, '', 'tab', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(85, '', 'resize', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(86, '', 'wysiwygarea', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(87, '', 'list', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(88, 'FontSize', 'fontsize', 'command', 3, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 73);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(89, '', 'bidi', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(90, 'BidiLtr', 'bidiltr', 'command', 2, '-168', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 89);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(91, 'BidiRtl', 'bidirtl', 'command', 2, '-192', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 89);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(92, 'Iframe', 'iframe', 'plugin', 2, '-912', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(93, '', 'xml', 'plugin', 4, '', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{}', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(94, '', 'ajax', 'plugin', 4, '', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{}', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(95, '', 'stylesoverride', 'plugin', 4, '', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{}', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(96, '', 'autostylesheetparser', 'plugin', 4, '', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{}', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(97, 'Imagemanager', 'imagemanager', 'plugin', 4, 'image.png', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{}', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(98, 'Document', 'document', 'plugin', 4, 'document.png', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{}', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(99, 'Savecontent', 'savecontent', 'plugin', 4, 'savecontent.png', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{}', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(100, 'Versions', 'versions', 'plugin', 4, 'versions.png', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{}', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(101, 'Treelink', 'treelink', 'plugin', 4, 'treelink.png', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{}', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(102, 'Pagebreak2', 'pagebreak2', 'plugin', 4, 'pagebreak2.png', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{}', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(103, 'Readmore', 'readmore', 'plugin', 4, 'readmore.png', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{}', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(104, 'Arkabout', 'arkabout', 'plugin', 4, 'arkabout.png', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{}', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(105, '', 'uiheader', 'plugin', 4, '', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{}', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(106, '', 'arkmedia', 'plugin', 4, '', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{}', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(107, '', 'tabledefinition', 'plugin', 4, '', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{}', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(108, '', 'autosave', 'plugin', 4, '', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{}', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(109, '', 'preloader', 'plugin', 4, '', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{}', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(110, '', 'styles', 'plugin', 4, '', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{}', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(111, '', 'quicktable', 'plugin', 4, '', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{\"qtRows\":\"8\",\"qtColumns\":\"10\",\"qtBorder\":\"1\",\"qtStyle\":\"\",\"qtClass\":\"\",\"qtCellPadding\":\"1\",\"qtCellSpacing\":\"1\",\"qtWidth\":\"100%\"}', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(112, '', 'toolbarswitcher', 'plugin', 4, '', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{}', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(113, 'Close', 'close', 'plugin', 4, 'close.png', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{}', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(114, '', 'paragraphdataprocessor', 'plugin', 4, '', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{}', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(115, 'Email', 'email', 'plugin', 4, 'email.png', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{\"dialogtitle_switcher\":\"0\",\"dialogtitle\":\"Default\",\"height\":\"230\",\"width\":\"350\",\"emailProtection\":\"\"}', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(116, '', 'browsebrowser', 'plugin', 4, '', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{}', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(117, '', 'browsepopup', 'plugin', 4, '', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{}', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(118, '', 'video', 'plugin', 4, '', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{}', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(119, '', 'audio', 'plugin', 4, '', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{}', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(120, '', 'magicline', 'plugin', 4, '', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{}', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(121, '', 'widget', 'plugin', 4, '', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{}', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(122, '', 'lineutils', 'plugin', 4, '', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{}', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(123, '', 'contentscss', 'plugin', 4, '', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{}', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(124, '', 'notification', 'plugin', 4, '', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{}', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(125, '', 'notificationaggregator', 'plugin', 4, '', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{}', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(126, '', 'focusmanager', 'plugin', 4, '', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{}', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(127, '', 'dndhandler', 'plugin', 4, '', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{}', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(128, '', 'sefresourceprocessor', 'plugin', 4, '', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{}', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(129, 'Arkmediabutton', 'arkmediabutton', 'plugin', 4, 'arkmediabutton.png', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{}', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(130, '', 'corecss', 'plugin', 4, '', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{}', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(131, 'Arkwidgetbutton', 'arkwidgetbutton', 'plugin', 4, 'arkwidgetbutton.png', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{}', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(132, 'Image2', 'image2', 'plugin', 4, 'image2.png', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{}', NULL);
INSERT INTO `bc73q_ark_editor_plugins` VALUES(133, '', 'divbgimage', 'plugin', 4, '', 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, '{}', NULL);
