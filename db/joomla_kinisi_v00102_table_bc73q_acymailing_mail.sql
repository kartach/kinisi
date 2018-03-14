
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_acymailing_mail`
--

DROP TABLE IF EXISTS `bc73q_acymailing_mail`;
CREATE TABLE `bc73q_acymailing_mail` (
  `mailid` mediumint(8) UNSIGNED NOT NULL,
  `subject` text,
  `body` longtext NOT NULL,
  `altbody` longtext NOT NULL,
  `published` tinyint(4) DEFAULT '1',
  `senddate` int(10) UNSIGNED DEFAULT NULL,
  `created` int(10) UNSIGNED DEFAULT NULL,
  `fromname` varchar(250) DEFAULT NULL,
  `fromemail` varchar(250) DEFAULT NULL,
  `replyname` varchar(250) DEFAULT NULL,
  `replyemail` varchar(250) DEFAULT NULL,
  `type` enum('news','autonews','followup','unsub','welcome','notification','joomlanotification','action','article') NOT NULL DEFAULT 'news',
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `userid` int(10) UNSIGNED DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `attach` text,
  `html` tinyint(4) NOT NULL DEFAULT '1',
  `tempid` smallint(6) NOT NULL DEFAULT '0',
  `key` varchar(200) DEFAULT NULL,
  `frequency` varchar(50) DEFAULT NULL,
  `params` text,
  `sentby` int(10) UNSIGNED DEFAULT NULL,
  `metakey` text,
  `metadesc` text,
  `filter` text,
  `language` varchar(50) NOT NULL DEFAULT '',
  `abtesting` varchar(250) DEFAULT NULL,
  `thumb` varchar(250) DEFAULT NULL,
  `summary` text NOT NULL,
  `favicon` text,
  `bccaddresses` varchar(250) DEFAULT NULL,
  `lastupdate` int(10) UNSIGNED DEFAULT NULL,
  `userlastupdate` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bc73q_acymailing_mail`
--

INSERT INTO `bc73q_acymailing_mail` VALUES(1, 'New Subscriber on your website : {user:email}', '<p>Hello {subtag:name},</p><p>A new user has been created in AcyMailing : </p><blockquote><p>Name : {user:name}</p><p>Email : {user:email}</p><p>IP : {user:ip} </p><p>Subscription : {user:subscription}</p></blockquote>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_created', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO `bc73q_acymailing_mail` VALUES(2, 'A User unsubscribed from all your lists : {user:email}', '<p>Hello {subtag:name},</p><p>The user {user:name} : {user:email} unsubscribed from all your lists</p><p>Subscription : {user:subscription}</p><p>{survey}</p>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_unsuball', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO `bc73q_acymailing_mail` VALUES(3, 'A User unsubscribed : {user:email}', '<p>Hello {subtag:name},</p><p>The user {user:name} : {user:email} unsubscribed from your list</p><p>Subscription : {user:subscription}</p><p>{survey}</p>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_unsub', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO `bc73q_acymailing_mail` VALUES(4, 'A User refuses to receive e-mails from your website : {user:email}', '<p>The User {user:name} : {user:email} refuses to receive any e-mail anymore from your website.</p><p>Subscription : {user:subscription}</p><p>{survey}</p>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_refuse', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO `bc73q_acymailing_mail` VALUES(5, 'New contact from your website : {user:email}', '<p>Hello {subtag:name},</p><p>A user submitted the form : </p><blockquote><p>Name : {user:name}</p><p>Email : {user:email}</p><p>IP : {user:ip} </p><p>Subscription : {user:subscription}</p></blockquote>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_contact', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO `bc73q_acymailing_mail` VALUES(6, 'A user subscribed or modified his subscription : {user:email}', '<p>Hello {subtag:name},</p><p>A user submitted the form : </p><blockquote><p>Name : {user:name}</p><p>Email : {user:email}</p><p>IP : {user:ip} </p><p>Subscription : {user:subscription}</p></blockquote>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_contact_menu', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO `bc73q_acymailing_mail` VALUES(7, 'A user confirmed his subscription : {user:email}', '<p>Hello {subtag:name},</p><p>A user confirmed his subscription : </p><blockquote><p>Name : {user:name}</p><p>Email : {user:email}</p><p>IP : {user:ip} </p><p>Subscription : {user:subscription}</p></blockquote>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_confirm', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO `bc73q_acymailing_mail` VALUES(8, '{subtag:name|ucfirst}, {trans:PLEASE_CONFIRM_SUB}', '<div style=\"text-align: center; width: 100%; background-color: #ffffff;\">\r\n			<table style=\"text-align:justify; margin:auto; background-color:#ebebeb; border:1px solid #e7e7e7\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\" bgcolor=\"#ebebeb\">\r\n			<tbody>\r\n			<tr style=\"line-height: 0px;\">\r\n			<td style=\"line-height: 0px;\" height=\"38px\"><img src=\"media/com_acymailing/templates/newsletter-4/top.png\" border=\"0\" alt=\" - - - \" /></td>\r\n			</tr>\r\n			<tr>\r\n			<td style=\"text-align:center\" width=\"600\">\r\n			<table style=\"margin:auto;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"520\">\r\n			<tbody>\r\n			<tr>\r\n			<td style=\"background-color: #ffffff; border: 1px solid #dbdbdb; padding: 20px; width: 500px; margin: 15px auto; text-align: left;\">\r\n			<h1>Hello {subtag:name|ucfirst},</h1>\r\n			<p>{trans:CONFIRM_MSG}<br /><br />{trans:CONFIRM_MSG_ACTIVATE}</p>\r\n			<br />\r\n			<p style=\"text-align:center;\"><strong>{confirm}{trans:CONFIRM_SUBSCRIPTION}{/confirm}</strong></p>\r\n			</td>\r\n			</tr>\r\n			</tbody>\r\n			</table>\r\n			</td>\r\n			</tr>\r\n			<tr style=\"line-height: 0px;\">\r\n			<td style=\"line-height: 0px;\" height=\"40px\"><img src=\"media/com_acymailing/templates/newsletter-4/bottom.png\" border=\"0\" alt=\" - - - \" /></td>\r\n			</tr>\r\n			</tbody>\r\n			</table>\r\n			</div>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'confirmation', NULL, 1, 1, NULL, NULL, 'a:3:{s:6:\"action\";s:7:\"confirm\";s:13:\"actionbtntext\";s:28:\"{trans:CONFIRM_SUBSCRIPTION}\";s:9:\"actionurl\";s:19:\"{confirm}{/confirm}\";}', NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO `bc73q_acymailing_mail` VALUES(9, 'AcyMailing Cron Report {mainreport}', '<p>{report}</p><p>{detailreport}</p>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'report', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO `bc73q_acymailing_mail` VALUES(10, 'Modify your subscription', '<p>Hello {subtag:name}, </p><p>You requested some changes on your subscription,</p><p>Please {modify}click here{/modify} to be identified as the owner of this account and then modify your subscription.</p>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'modif', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO `bc73q_acymailing_mail` VALUES(11, '{joomlacontent:current| type:title}', '<div style=\"text-align: center; width: 100%; background-color:#ffffff;\">\r\n		<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"w600\" style=\"text-align: justify; margin: auto; width: 600px;\">\r\n			<tbody>\r\n				<tr class=\"acyeditor_delete\" style=\"line-height: 0px;\" id=\"zone_2\">\r\n					<td class=\"w600\" colspan=\"5\" style=\"background-color: #69b4c0;\" valign=\"bottom\" width=\"600\" id=\"zone_3\"><img id=\"zone_29\" alt=\" - - - \" border=\"0\" src=\"http://localhost/kinisi//media/com_acymailing/templates/newsletter-4/images/top.png\"></td>\r\n				</tr>\r\n				<tr class=\"acyeditor_delete\" id=\"zone_4\">\r\n					<td class=\"w40\" style=\"background-color: #ebebeb;\" width=\"40\" id=\"zone_5\"></td>\r\n					<td class=\"w520 acyeditor_text\" colspan=\"3\" height=\"80\" style=\"text-align: left; background-color: #ebebeb;\" width=\"520\" id=\"zone_6\"><strong>​</strong>​​​​​​​​<img alt=\"-\" border=\"0\" src=\"http://localhost/kinisi//media/com_acymailing/templates/newsletter-4/images/message_icon.png\" style=\"float: left; margin-right: 10px;\">\r\n						<h3>{joomlacontent:current| type:title}<span style=\"display: none;\">&nbsp;</span></h3>\r\n					</td>\r\n					<td class=\"acyeditor_picture w40\" style=\"background-color: #ebebeb;\" width=\"40\" id=\"zone_7\"></td>\r\n				</tr>\r\n				<tr class=\"acyeditor_delete\" id=\"zone_8\">\r\n					<td class=\"w40\" style=\"background-color: #ebebeb;\" width=\"40\" id=\"zone_9\"></td>\r\n					<td class=\"w20\" style=\"background-color: #fff;\" width=\"20\" id=\"zone_10\"></td>\r\n					<td class=\"w480\" height=\"20\" style=\"background-color: #fff;\" width=\"480\" id=\"zone_11\"></td>\r\n					<td class=\"w20\" style=\"background-color: #fff;\" width=\"20\" id=\"zone_12\"></td>\r\n					<td class=\"w40\" style=\"background-color: #ebebeb;\" width=\"40\" id=\"zone_13\"></td>\r\n				</tr>\r\n				<tr class=\"acyeditor_delete\" id=\"zone_14\">\r\n					<td class=\"w40\" style=\"background-color: #ebebeb;\" width=\"40\" id=\"zone_15\"></td>\r\n					<td class=\"w20\" style=\"background-color: #fff;\" width=\"20\" id=\"zone_16\"></td>\r\n					<td class=\"w480 pict acyeditor_text\" style=\"background-color: #fff; text-align: left;\" width=\"480\" id=\"zone_17\">{joomlacontent:current| type:intro| format:TOP_LEFT| pict:1| link}</td>\r\n					<td class=\"w20\" style=\"background-color: #fff;\" width=\"20\" id=\"zone_18\"></td>\r\n					<td class=\"w40\" style=\"background-color: #ebebeb;\" width=\"40\" id=\"zone_19\"></td>\r\n				</tr>\r\n				<tr class=\"acyeditor_delete\" id=\"zone_20\">\r\n					<td class=\"w40\" style=\"background-color: #ebebeb;\" width=\"40\" id=\"zone_21\"></td>\r\n					<td class=\"w20\" style=\"background-color: #fff;\" width=\"20\" id=\"zone_22\"></td>\r\n					<td class=\"w480\" height=\"20\" style=\"background-color: #fff;\" width=\"480\" id=\"zone_23\"></td>\r\n					<td class=\"w20\" style=\"background-color: #fff;\" width=\"20\" id=\"zone_24\"></td>\r\n					<td class=\"w40\" style=\"background-color: #ebebeb;\" width=\"40\" id=\"zone_25\"></td>\r\n				</tr>\r\n				<tr class=\"acyeditor_delete\" style=\"line-height: 0px;\" id=\"zone_26\">\r\n					<td class=\"w600\" colspan=\"5\" style=\"background-color: #ebebeb;\" width=\"600\" id=\"zone_27\"><img id=\"zone_31\" alt=\" - - - \" border=\"0\" src=\"http://localhost/kinisi//media/com_acymailing/templates/newsletter-4/images/bottom.png\"></td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n		</div>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'article', 0, NULL, 'send-in-article', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL);
