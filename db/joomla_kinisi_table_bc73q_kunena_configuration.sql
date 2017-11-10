
DROP TABLE IF EXISTS `bc73q_kunena_configuration`;
CREATE TABLE `bc73q_kunena_configuration` (
  `id` int(11) NOT NULL DEFAULT '0',
  `params` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `bc73q_kunena_configuration` VALUES(1, '{\"board_title\":\"Diskusn\\u00ed f\\u00f3rum Centrum fyzioterapie Kinisi\",\"email\":\"karkoskova.klara@gmail.com\",\"board_offline\":\"0\",\"offline_message\":\"F\\u00f3rum je do\\u010dasn\\u011b mimo provoz. Pracujeme na \\u00fadr\\u017eb\\u011b, vra\\u0165te se pros\\u00edm pozd\\u011bji. T\\u00fdm Kinisi\",\"enablerss\":\"0\",\"threads_per_page\":\"20\",\"messages_per_page\":\"6\",\"messages_per_page_search\":\"10\",\"showhistory\":\"1\",\"historylimit\":\"6\",\"shownew\":\"1\",\"disemoticons\":\"1\",\"template\":\"tm_custom\",\"showannouncement\":\"1\",\"avataroncat\":\"0\",\"catimagepath\":\"category_images\",\"showchildcaticon\":\"0\",\"rtewidth\":\"450\",\"rteheight\":\"300\",\"enableforumjump\":\"1\",\"reportmsg\":\"1\",\"username\":\"1\",\"askemail\":\"0\",\"showemail\":\"0\",\"showuserstats\":\"0\",\"showkarma\":\"0\",\"useredit\":\"1\",\"useredittime\":\"0\",\"useredittimegrace\":\"600\",\"editmarkup\":\"1\",\"allowsubscriptions\":\"1\",\"subscriptionschecked\":\"1\",\"allowfavorites\":\"1\",\"maxsubject\":\"50\",\"maxsig\":\"300\",\"regonly\":\"0\",\"pubwrite\":\"1\",\"floodprotection\":\"0\",\"mailmod\":\"0\",\"mailadmin\":\"0\",\"captcha\":\"0\",\"mailfull\":\"1\",\"allowavatarupload\":\"1\",\"allowavatargallery\":\"1\",\"avatarquality\":\"75\",\"avatarsize\":\"2048\",\"imageheight\":\"800\",\"imagewidth\":\"800\",\"imagesize\":\"150\",\"filetypes\":\"txt,rtf,pdf,zip,tar.gz,tgz,tar.bz2\",\"filesize\":\"120\",\"showranking\":\"0\",\"rankimages\":\"0\",\"userlist_rows\":\"30\",\"userlist_online\":\"1\",\"userlist_avatar\":\"1\",\"userlist_posts\":\"1\",\"userlist_karma\":\"0\",\"userlist_email\":\"0\",\"userlist_joindate\":\"0\",\"userlist_lastvisitdate\":\"0\",\"userlist_userhits\":\"0\",\"latestcategory\":\"0\",\"showstats\":\"0\",\"showwhoisonline\":\"0\",\"showgenstats\":\"0\",\"showpopuserstats\":\"0\",\"popusercount\":\"5\",\"showpopsubjectstats\":\"0\",\"popsubjectcount\":\"5\",\"showspoilertag\":\"1\",\"showvideotag\":\"1\",\"showebaytag\":\"0\",\"trimlongurls\":\"1\",\"trimlongurlsfront\":\"40\",\"trimlongurlsback\":\"20\",\"autoembedyoutube\":\"1\",\"autoembedebay\":\"0\",\"ebaylanguagecode\":\"en-us\",\"sessiontimeout\":\"1800\",\"highlightcode\":\"1\",\"rss_type\":\"topic\",\"rss_timelimit\":\"month\",\"rss_limit\":\"100\",\"rss_included_categories\":\"\",\"rss_excluded_categories\":\"\",\"rss_specification\":\"rss2.0\",\"rss_allow_html\":\"1\",\"rss_author_format\":\"name\",\"rss_author_in_title\":\"1\",\"rss_word_count\":\"0\",\"rss_old_titles\":\"1\",\"rss_cache\":\"900\",\"defaultpage\":\"recent\",\"default_sort\":\"asc\",\"sef\":\"1\",\"showimgforguest\":\"1\",\"showfileforguest\":\"1\",\"pollnboptions\":\"4\",\"pollallowvoteone\":\"1\",\"pollenabled\":\"1\",\"poppollscount\":\"5\",\"showpoppollstats\":\"0\",\"polltimebtvotes\":\"00:15:00\",\"pollnbvotesbyuser\":\"100\",\"pollresultsuserslist\":\"1\",\"maxpersotext\":\"50\",\"ordering_system\":\"replyid\",\"post_dateformat\":\"datetime_today\",\"post_dateformat_hover\":\"datetime\",\"hide_ip\":\"1\",\"imagetypes\":\"jpg,jpeg,gif,png\",\"checkmimetypes\":\"1\",\"imagemimetypes\":\"image\\/jpeg,image\\/jpg,image\\/gif,image\\/png\",\"imagequality\":\"50\",\"thumbheight\":\"32\",\"thumbwidth\":\"32\",\"hideuserprofileinfo\":\"put_empty\",\"boxghostmessage\":\"0\",\"userdeletetmessage\":\"0\",\"latestcategory_in\":\"1\",\"topicicons\":\"0\",\"debug\":\"0\",\"catsautosubscribed\":0,\"showbannedreason\":\"1\",\"showthankyou\":\"1\",\"showpopthankyoustats\":\"0\",\"popthankscount\":\"5\",\"mod_see_deleted\":\"0\",\"bbcode_img_secure\":\"text\",\"listcat_show_moderators\":\"0\",\"lightbox\":\"0\",\"show_list_time\":\"720\",\"show_session_type\":\"0\",\"show_session_starttime\":\"0\",\"userlist_allowed\":\"0\",\"userlist_count_users\":\"1\",\"enable_threaded_layouts\":\"0\",\"category_subscriptions\":\"post\",\"topic_subscriptions\":\"every\",\"pubprofile\":\"0\",\"thankyou_max\":\"10\",\"email_recipient_count\":\"0\",\"email_recipient_privacy\":\"bcc\",\"email_visible_address\":\"info@kinisi.cz\",\"captcha_post_limit\":\"0\",\"image_upload\":\"everybody\",\"file_upload\":\"registered\",\"topic_layout\":\"indented\",\"time_to_create_page\":\"0\",\"show_imgfiles_manage_profile\":\"1\",\"hold_newusers_posts\":\"0\",\"hold_guest_posts\":\"1\",\"attachment_limit\":\"8\",\"pickup_category\":\"1\",\"article_display\":\"intro\",\"send_emails\":\"1\",\"fallback_english\":\"1\",\"cache\":\"1\",\"cache_time\":\"60\",\"ebay_affiliate_id\":\"5337089937\",\"iptracking\":\"1\",\"stopforumspam_key\":\"\",\"rss_feedburner_url\":\"\",\"autolink\":\"1\",\"access_component\":\"1\",\"statslink_allowed\":\"1\",\"superadmin_userlist\":\"0\",\"legacy_urls\":\"1\",\"attachment_protection\":\"0\",\"categoryicons\":1,\"avatarresizemethod\":\"1\",\"avatarcrop\":\"0\",\"user_report\":\"1\",\"searchtime\":\"365\",\"teaser\":\"0\",\"ebay_language\":\"0\",\"ebay_api_key\":\"\",\"twitter_consumer_key\":\"\",\"twitter_consumer_secret\":\"\",\"allow_change_subject\":\"1\",\"max_links\":\"6\",\"read_only\":\"0\",\"ratingenabled\":\"1\",\"url_subject_topic\":\"1\",\"log_moderation\":\"0\",\"attach_start\":\"0\",\"attach_end\":\"14\",\"google_map_api_key\":\"\",\"attachment_utf8\":\"1\",\"autoembedsoundcloud\":\"1\",\"emailheader\":\"\\/media\\/kunena\\/email\\/hero-wide.png\",\"user_status\":\"1\",\"plain_email\":\"0\",\"recaptcha_publickey\":\"\",\"recaptcha_privatekey\":\"\",\"recaptcha_theme\":\"white\",\"keywords\":0,\"userkeywords\":0,\"userlist_name\":\"1\",\"usernamechange\":\"0\",\"version_check\":\"1\",\"plugins\":{\"plg_system_kunena\":{\"jcontentevents\":\"0\",\"jcontentevent_target\":\"body\"}}}');
