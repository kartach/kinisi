
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_acymailing_config`
--

DROP TABLE IF EXISTS `bc73q_acymailing_config`;
CREATE TABLE `bc73q_acymailing_config` (
  `namekey` varchar(200) NOT NULL,
  `value` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bc73q_acymailing_config`
--

INSERT INTO `bc73q_acymailing_config` VALUES('level', 'Starter');
INSERT INTO `bc73q_acymailing_config` VALUES('version', '5.9.1');
INSERT INTO `bc73q_acymailing_config` VALUES('smtp_port', '25');
INSERT INTO `bc73q_acymailing_config` VALUES('from_name', '');
INSERT INTO `bc73q_acymailing_config` VALUES('from_email', '');
INSERT INTO `bc73q_acymailing_config` VALUES('bounce_email', '');
INSERT INTO `bc73q_acymailing_config` VALUES('mailer_method', 'phpmail');
INSERT INTO `bc73q_acymailing_config` VALUES('sendmail_path', '/usr/sbin/sendmail');
INSERT INTO `bc73q_acymailing_config` VALUES('smtp_secured', '');
INSERT INTO `bc73q_acymailing_config` VALUES('smtp_auth', '0');
INSERT INTO `bc73q_acymailing_config` VALUES('smtp_username', '');
INSERT INTO `bc73q_acymailing_config` VALUES('smtp_password', '');
INSERT INTO `bc73q_acymailing_config` VALUES('reply_name', '');
INSERT INTO `bc73q_acymailing_config` VALUES('reply_email', '');
INSERT INTO `bc73q_acymailing_config` VALUES('cron_sendto', 'admin@admin.com');
INSERT INTO `bc73q_acymailing_config` VALUES('add_names', '1');
INSERT INTO `bc73q_acymailing_config` VALUES('encoding_format', '8bit');
INSERT INTO `bc73q_acymailing_config` VALUES('charset', 'UTF-8');
INSERT INTO `bc73q_acymailing_config` VALUES('word_wrapping', '150');
INSERT INTO `bc73q_acymailing_config` VALUES('hostname', '');
INSERT INTO `bc73q_acymailing_config` VALUES('embed_images', '0');
INSERT INTO `bc73q_acymailing_config` VALUES('embed_files', '1');
INSERT INTO `bc73q_acymailing_config` VALUES('editor', 'acyeditor');
INSERT INTO `bc73q_acymailing_config` VALUES('multiple_part', '1');
INSERT INTO `bc73q_acymailing_config` VALUES('smtp_host', 'localhost');
INSERT INTO `bc73q_acymailing_config` VALUES('queue_nbmail', '40');
INSERT INTO `bc73q_acymailing_config` VALUES('queue_nbmail_auto', '70');
INSERT INTO `bc73q_acymailing_config` VALUES('queue_type', 'auto');
INSERT INTO `bc73q_acymailing_config` VALUES('queue_try', '3');
INSERT INTO `bc73q_acymailing_config` VALUES('queue_pause', '120');
INSERT INTO `bc73q_acymailing_config` VALUES('allow_visitor', '1');
INSERT INTO `bc73q_acymailing_config` VALUES('require_confirmation', '0');
INSERT INTO `bc73q_acymailing_config` VALUES('priority_newsletter', '3');
INSERT INTO `bc73q_acymailing_config` VALUES('allowedfiles', 'zip,doc,docx,pdf,xls,txt,gzip,rar,jpg,gif,xlsx,pps,csv,bmp,ico,odg,odp,ods,odt,png,ppt,swf,xcf,mp3,wma');
INSERT INTO `bc73q_acymailing_config` VALUES('uploadfolder', 'media/com_acymailing/upload');
INSERT INTO `bc73q_acymailing_config` VALUES('confirm_redirect', '');
INSERT INTO `bc73q_acymailing_config` VALUES('subscription_message', '1');
INSERT INTO `bc73q_acymailing_config` VALUES('notification_unsuball', '');
INSERT INTO `bc73q_acymailing_config` VALUES('cron_next', '1251990901');
INSERT INTO `bc73q_acymailing_config` VALUES('confirmation_message', '1');
INSERT INTO `bc73q_acymailing_config` VALUES('welcome_message', '1');
INSERT INTO `bc73q_acymailing_config` VALUES('unsub_message', '1');
INSERT INTO `bc73q_acymailing_config` VALUES('cron_last', '0');
INSERT INTO `bc73q_acymailing_config` VALUES('cron_fromip', '');
INSERT INTO `bc73q_acymailing_config` VALUES('cron_report', '');
INSERT INTO `bc73q_acymailing_config` VALUES('cron_frequency', '900');
INSERT INTO `bc73q_acymailing_config` VALUES('cron_sendreport', '2');
INSERT INTO `bc73q_acymailing_config` VALUES('cron_fullreport', '1');
INSERT INTO `bc73q_acymailing_config` VALUES('cron_savereport', '2');
INSERT INTO `bc73q_acymailing_config` VALUES('cron_savepath', 'media/com_acymailing/logs/report{year}_{month}.log');
INSERT INTO `bc73q_acymailing_config` VALUES('notification_created', '');
INSERT INTO `bc73q_acymailing_config` VALUES('notification_accept', '');
INSERT INTO `bc73q_acymailing_config` VALUES('notification_refuse', '');
INSERT INTO `bc73q_acymailing_config` VALUES('forward', '0');
INSERT INTO `bc73q_acymailing_config` VALUES('description_starter', 'Joomla!® Mailing Extension');
INSERT INTO `bc73q_acymailing_config` VALUES('description_essential', 'Joomla!® E-mail Marketing');
INSERT INTO `bc73q_acymailing_config` VALUES('description_business', 'Joomla!® Mailing Extension');
INSERT INTO `bc73q_acymailing_config` VALUES('description_enterprise', 'Joomla!® Newsletter Extension');
INSERT INTO `bc73q_acymailing_config` VALUES('priority_followup', '2');
INSERT INTO `bc73q_acymailing_config` VALUES('unsub_redirect', '');
INSERT INTO `bc73q_acymailing_config` VALUES('show_footer', '0');
INSERT INTO `bc73q_acymailing_config` VALUES('use_sef', '1');
INSERT INTO `bc73q_acymailing_config` VALUES('itemid', '0');
INSERT INTO `bc73q_acymailing_config` VALUES('css_module', '');
INSERT INTO `bc73q_acymailing_config` VALUES('css_frontend', 'default');
INSERT INTO `bc73q_acymailing_config` VALUES('css_backend', '');
INSERT INTO `bc73q_acymailing_config` VALUES('bootstrap_frontend', '0');
INSERT INTO `bc73q_acymailing_config` VALUES('menu_position', 'above');
INSERT INTO `bc73q_acymailing_config` VALUES('unsub_reasons', 'a:2:{i:0;s:21:\"UNSUB_SURVEY_FREQUENT\";i:1;s:21:\"UNSUB_SURVEY_RELEVANT\";}');
INSERT INTO `bc73q_acymailing_config` VALUES('security_key', 'VvpaKMHVvjyqdWN9RX4g42Ukd2b5GC');
INSERT INTO `bc73q_acymailing_config` VALUES('installcomplete', '1');
INSERT INTO `bc73q_acymailing_config` VALUES('Starter', '0');
INSERT INTO `bc73q_acymailing_config` VALUES('Essential', '1');
INSERT INTO `bc73q_acymailing_config` VALUES('Business', '2');
INSERT INTO `bc73q_acymailing_config` VALUES('Enterprise', '3');
INSERT INTO `bc73q_acymailing_config` VALUES('website', 'http://localhost/kinisi/');
INSERT INTO `bc73q_acymailing_config` VALUES('max_execution_time', '480');
INSERT INTO `bc73q_acymailing_config` VALUES('last_maxexec_check', '1519926942');
INSERT INTO `bc73q_acymailing_config` VALUES('ssl_links', '1');
INSERT INTO `bc73q_acymailing_config` VALUES('smtp_keepalive', '1');
INSERT INTO `bc73q_acymailing_config` VALUES('elasticemail_username', '');
INSERT INTO `bc73q_acymailing_config` VALUES('elasticemail_password', '');
INSERT INTO `bc73q_acymailing_config` VALUES('elasticemail_port', 'rest');
INSERT INTO `bc73q_acymailing_config` VALUES('bounce_action_maxtry', 'noaction');
INSERT INTO `bc73q_acymailing_config` VALUES('bounce_action_lists_maxtry', '1');
INSERT INTO `bc73q_acymailing_config` VALUES('sendorder', 'subid, ASC');
INSERT INTO `bc73q_acymailing_config` VALUES('autosub', 'None');
INSERT INTO `bc73q_acymailing_config` VALUES('allow_modif', 'data');
INSERT INTO `bc73q_acymailing_config` VALUES('generate_name', '1');
INSERT INTO `bc73q_acymailing_config` VALUES('notification_unsub', '');
INSERT INTO `bc73q_acymailing_config` VALUES('notification_contact', '');
INSERT INTO `bc73q_acymailing_config` VALUES('notification_contact_menu', '');
INSERT INTO `bc73q_acymailing_config` VALUES('notification_confirm', '');
INSERT INTO `bc73q_acymailing_config` VALUES('sub_redirect', '');
INSERT INTO `bc73q_acymailing_config` VALUES('modif_redirect', '');
INSERT INTO `bc73q_acymailing_config` VALUES('module_redirect', '192.168.9.17|localhost|cms.devoffice.com|192.168.9.27|192.168.9.22|192.168.9.155');
INSERT INTO `bc73q_acymailing_config` VALUES('unsubscription_message', '1');
INSERT INTO `bc73q_acymailing_config` VALUES('confirm_message', '0');
INSERT INTO `bc73q_acymailing_config` VALUES('comments_feature', '');
INSERT INTO `bc73q_acymailing_config` VALUES('disqus_shortname', '');
INSERT INTO `bc73q_acymailing_config` VALUES('frontend_subject', '1');
INSERT INTO `bc73q_acymailing_config` VALUES('frontend_print', '0');
INSERT INTO `bc73q_acymailing_config` VALUES('show_description', '1');
INSERT INTO `bc73q_acymailing_config` VALUES('show_filter', '1');
INSERT INTO `bc73q_acymailing_config` VALUES('show_headings', '1');
INSERT INTO `bc73q_acymailing_config` VALUES('show_senddate', '1');
INSERT INTO `bc73q_acymailing_config` VALUES('show_colnumber', '1');
INSERT INTO `bc73q_acymailing_config` VALUES('open_popup', '1');
INSERT INTO `bc73q_acymailing_config` VALUES('popup_width', '750');
INSERT INTO `bc73q_acymailing_config` VALUES('popup_height', '550');
INSERT INTO `bc73q_acymailing_config` VALUES('indexFollow', '1');
INSERT INTO `bc73q_acymailing_config` VALUES('unsub_intro', 'UNSUB_INTRO');
INSERT INTO `bc73q_acymailing_config` VALUES('unsub_dispoptions', '1');
INSERT INTO `bc73q_acymailing_config` VALUES('unsub_survey', '1');
INSERT INTO `bc73q_acymailing_config` VALUES('acyrss_format', '');
INSERT INTO `bc73q_acymailing_config` VALUES('acyrss_name', '');
INSERT INTO `bc73q_acymailing_config` VALUES('acyrss_description', '');
INSERT INTO `bc73q_acymailing_config` VALUES('acyrss_element', '20');
INSERT INTO `bc73q_acymailing_config` VALUES('acyrss_order', 'senddate');
INSERT INTO `bc73q_acymailing_config` VALUES('email_checkdomain', '1');
INSERT INTO `bc73q_acymailing_config` VALUES('email_botscout', '0');
INSERT INTO `bc73q_acymailing_config` VALUES('email_botscout_key', '');
INSERT INTO `bc73q_acymailing_config` VALUES('email_stopforumspam', '0');
INSERT INTO `bc73q_acymailing_config` VALUES('email_iptimecheck', '0');
INSERT INTO `bc73q_acymailing_config` VALUES('mediafolder', 'media/com_acymailing/upload');
INSERT INTO `bc73q_acymailing_config` VALUES('description_sidekick', 'Joomla!® Newsletter System');
INSERT INTO `bc73q_acymailing_config` VALUES('Sidekick', '4');
INSERT INTO `bc73q_acymailing_config` VALUES('captcha_plugin', 'no');
INSERT INTO `bc73q_acymailing_config` VALUES('latestversion', '5.9.1');
INSERT INTO `bc73q_acymailing_config` VALUES('expirationdate', '0');
INSERT INTO `bc73q_acymailing_config` VALUES('lastlicensecheck', '1519925934');
INSERT INTO `bc73q_acymailing_config` VALUES('special_chars', '0');
INSERT INTO `bc73q_acymailing_config` VALUES('redirect_tags', '0');
INSERT INTO `bc73q_acymailing_config` VALUES('show_order', '1');
INSERT INTO `bc73q_acymailing_config` VALUES('unsub_dispothersubs', '0');
