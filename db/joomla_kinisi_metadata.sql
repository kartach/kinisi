

ALTER TABLE `bc73q_acymailing_action`
  ADD PRIMARY KEY (`action_id`);

ALTER TABLE `bc73q_acymailing_config`
  ADD PRIMARY KEY (`namekey`);

ALTER TABLE `bc73q_acymailing_fields`
  ADD PRIMARY KEY (`fieldid`),
  ADD UNIQUE KEY `namekey` (`namekey`),
  ADD KEY `orderingindex` (`published`,`ordering`);

ALTER TABLE `bc73q_acymailing_filter`
  ADD PRIMARY KEY (`filid`);

ALTER TABLE `bc73q_acymailing_forward`
  ADD PRIMARY KEY (`subid`,`mailid`);

ALTER TABLE `bc73q_acymailing_geolocation`
  ADD PRIMARY KEY (`geolocation_id`),
  ADD KEY `geolocation_type` (`geolocation_subid`,`geolocation_type`),
  ADD KEY `geolocation_ip_created` (`geolocation_ip`,`geolocation_created`);

ALTER TABLE `bc73q_acymailing_history`
  ADD KEY `subid` (`subid`,`date`),
  ADD KEY `dateindex` (`date`),
  ADD KEY `actionindex` (`action`,`mailid`);

ALTER TABLE `bc73q_acymailing_list`
  ADD PRIMARY KEY (`listid`),
  ADD KEY `typeorderingindex` (`type`,`ordering`),
  ADD KEY `useridindex` (`userid`),
  ADD KEY `typeuseridindex` (`type`,`userid`);

ALTER TABLE `bc73q_acymailing_listcampaign`
  ADD PRIMARY KEY (`campaignid`,`listid`);

ALTER TABLE `bc73q_acymailing_listmail`
  ADD PRIMARY KEY (`listid`,`mailid`);

ALTER TABLE `bc73q_acymailing_listsub`
  ADD PRIMARY KEY (`listid`,`subid`),
  ADD KEY `subidindex` (`subid`),
  ADD KEY `listidstatusindex` (`listid`,`status`);

ALTER TABLE `bc73q_acymailing_mail`
  ADD PRIMARY KEY (`mailid`),
  ADD KEY `senddate` (`senddate`),
  ADD KEY `typemailidindex` (`type`,`mailid`),
  ADD KEY `useridindex` (`userid`);

ALTER TABLE `bc73q_acymailing_queue`
  ADD PRIMARY KEY (`subid`,`mailid`),
  ADD KEY `listingindex` (`senddate`,`subid`),
  ADD KEY `mailidindex` (`mailid`),
  ADD KEY `orderingindex` (`priority`,`senddate`,`subid`);

ALTER TABLE `bc73q_acymailing_rules`
  ADD PRIMARY KEY (`ruleid`),
  ADD KEY `ordering` (`published`,`ordering`);

ALTER TABLE `bc73q_acymailing_stats`
  ADD PRIMARY KEY (`mailid`),
  ADD KEY `senddateindex` (`senddate`);

ALTER TABLE `bc73q_acymailing_subscriber`
  ADD PRIMARY KEY (`subid`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `userid` (`userid`),
  ADD KEY `queueindex` (`enabled`,`accept`,`confirmed`);

ALTER TABLE `bc73q_acymailing_tag`
  ADD PRIMARY KEY (`tagid`),
  ADD KEY `useridindex` (`userid`);

ALTER TABLE `bc73q_acymailing_tagmail`
  ADD PRIMARY KEY (`tagid`,`mailid`);

ALTER TABLE `bc73q_acymailing_template`
  ADD PRIMARY KEY (`tempid`),
  ADD UNIQUE KEY `namekey` (`namekey`),
  ADD KEY `orderingindex` (`ordering`);

ALTER TABLE `bc73q_acymailing_url`
  ADD PRIMARY KEY (`urlid`),
  ADD KEY `url` (`url`(250));

ALTER TABLE `bc73q_acymailing_urlclick`
  ADD PRIMARY KEY (`urlid`,`mailid`,`subid`),
  ADD KEY `dateindex` (`date`),
  ADD KEY `mailidindex` (`mailid`),
  ADD KEY `subidindex` (`subid`);

ALTER TABLE `bc73q_acymailing_userstats`
  ADD PRIMARY KEY (`mailid`,`subid`),
  ADD KEY `senddateindex` (`senddate`),
  ADD KEY `subidindex` (`subid`);

ALTER TABLE `bc73q_ark_editor_inline_views`
  ADD PRIMARY KEY (`element`,`context`);

ALTER TABLE `bc73q_ark_editor_languages`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bc73q_ark_editor_plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plugin` (`name`);

ALTER TABLE `bc73q_ark_editor_toolbars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `toolbar` (`name`);

ALTER TABLE `bc73q_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

ALTER TABLE `bc73q_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

ALTER TABLE `bc73q_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

ALTER TABLE `bc73q_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

ALTER TABLE `bc73q_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

ALTER TABLE `bc73q_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_alias` (`alias`(100));

ALTER TABLE `bc73q_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

ALTER TABLE `bc73q_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`),
  ADD KEY `idx_alias` (`alias`(191));

ALTER TABLE `bc73q_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

ALTER TABLE `bc73q_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

ALTER TABLE `bc73q_content_rating`
  ADD PRIMARY KEY (`content_id`);

ALTER TABLE `bc73q_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

ALTER TABLE `bc73q_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

ALTER TABLE `bc73q_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_user_id` (`created_user_id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

ALTER TABLE `bc73q_fields_categories`
  ADD PRIMARY KEY (`field_id`,`category_id`);

ALTER TABLE `bc73q_fields_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

ALTER TABLE `bc73q_fields_values`
  ADD KEY `idx_field_id` (`field_id`),
  ADD KEY `idx_item_id` (`item_id`(191));

ALTER TABLE `bc73q_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

ALTER TABLE `bc73q_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

ALTER TABLE `bc73q_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `bc73q_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `bc73q_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `bc73q_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `bc73q_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `bc73q_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `bc73q_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `bc73q_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `bc73q_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `bc73q_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `bc73q_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `bc73q_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `bc73q_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `bc73q_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `bc73q_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `bc73q_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `bc73q_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

ALTER TABLE `bc73q_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

ALTER TABLE `bc73q_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

ALTER TABLE `bc73q_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

ALTER TABLE `bc73q_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

ALTER TABLE `bc73q_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

ALTER TABLE `bc73q_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

ALTER TABLE `bc73q_joomgallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_owner` (`owner`);

ALTER TABLE `bc73q_joomgallery_category_details`
  ADD PRIMARY KEY (`id`,`details_key`);

ALTER TABLE `bc73q_joomgallery_catg`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `idx_parent_id` (`parent_id`);

ALTER TABLE `bc73q_joomgallery_comments`
  ADD PRIMARY KEY (`cmtid`),
  ADD KEY `idx_cmtpic` (`cmtpic`);

ALTER TABLE `bc73q_joomgallery_config`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bc73q_joomgallery_countstop`
  ADD KEY `idx_cspicid` (`cspicid`);

ALTER TABLE `bc73q_joomgallery_image_details`
  ADD PRIMARY KEY (`id`,`details_key`);

ALTER TABLE `bc73q_joomgallery_maintenance`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bc73q_joomgallery_nameshields`
  ADD PRIMARY KEY (`nid`),
  ADD KEY `idx_picid` (`npicid`);

ALTER TABLE `bc73q_joomgallery_orphans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fullpath` (`fullpath`);

ALTER TABLE `bc73q_joomgallery_users`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `idx_uid` (`uuserid`);

ALTER TABLE `bc73q_joomgallery_votes`
  ADD PRIMARY KEY (`voteid`),
  ADD KEY `idx_picid` (`picid`);

ALTER TABLE `bc73q_komento_acl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `komento_acl_content_type` (`type`);

ALTER TABLE `bc73q_komento_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `komento_actions` (`type`,`comment_id`,`action_by`),
  ADD KEY `komento_actions_comment_id` (`comment_id`);

ALTER TABLE `bc73q_komento_activities`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bc73q_komento_captcha`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bc73q_komento_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `komento_threaded` (`component`,`cid`,`published`,`lft`,`rgt`),
  ADD KEY `komento_threaded_reverse` (`component`,`cid`,`published`,`rgt`),
  ADD KEY `komento_module_comments` (`component`,`cid`,`published`,`created`),
  ADD KEY `komento_backend` (`parent_id`,`created`);

ALTER TABLE `bc73q_komento_hashkeys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `type` (`type`);

ALTER TABLE `bc73q_komento_ipfilter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `komento_ipfilter` (`component`,`ip`);

ALTER TABLE `bc73q_komento_mailq`
  ADD PRIMARY KEY (`id`),
  ADD KEY `komento_mailq_status` (`status`);

ALTER TABLE `bc73q_komento_subscription`
  ADD PRIMARY KEY (`id`),
  ADD KEY `komento_subscription` (`type`,`component`,`cid`);

ALTER TABLE `bc73q_komento_uploads`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bc73q_kunena_aliases`
  ADD UNIQUE KEY `alias` (`alias`),
  ADD KEY `state` (`state`),
  ADD KEY `item` (`item`),
  ADD KEY `type` (`type`);

ALTER TABLE `bc73q_kunena_announcement`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bc73q_kunena_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mesid` (`mesid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `hash` (`hash`),
  ADD KEY `filename` (`filename`),
  ADD KEY `filename_real` (`filename_real`);

ALTER TABLE `bc73q_kunena_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `category_access` (`accesstype`,`access`),
  ADD KEY `published_pubaccess_id` (`published`,`pub_access`,`id`);

ALTER TABLE `bc73q_kunena_configuration`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bc73q_kunena_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `target_user` (`target_user`),
  ADD KEY `user_id` (`user_id`);

ALTER TABLE `bc73q_kunena_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thread` (`thread`),
  ADD KEY `ip` (`ip`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`),
  ADD KEY `locked` (`locked`),
  ADD KEY `hold_time` (`hold`,`time`),
  ADD KEY `parent_hits` (`parent`,`hits`),
  ADD KEY `catid_parent` (`catid`,`parent`);

ALTER TABLE `bc73q_kunena_messages_text`
  ADD PRIMARY KEY (`mesid`);

ALTER TABLE `bc73q_kunena_polls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `threadid` (`threadid`);

ALTER TABLE `bc73q_kunena_polls_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pollid` (`pollid`);

ALTER TABLE `bc73q_kunena_polls_users`
  ADD UNIQUE KEY `pollid` (`pollid`,`userid`);

ALTER TABLE `bc73q_kunena_ranks`
  ADD PRIMARY KEY (`rank_id`);

ALTER TABLE `bc73q_kunena_rate`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bc73q_kunena_sessions`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `currvisit` (`currvisit`);

ALTER TABLE `bc73q_kunena_smileys`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bc73q_kunena_thankyou`
  ADD UNIQUE KEY `postid` (`postid`,`userid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `targetuserid` (`targetuserid`);

ALTER TABLE `bc73q_kunena_topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `locked` (`locked`),
  ADD KEY `hold` (`hold`),
  ADD KEY `posts` (`posts`),
  ADD KEY `hits` (`hits`),
  ADD KEY `first_post_userid` (`first_post_userid`),
  ADD KEY `last_post_userid` (`last_post_userid`),
  ADD KEY `first_post_time` (`first_post_time`),
  ADD KEY `last_post_time` (`last_post_time`),
  ADD KEY `last_post_id` (`last_post_id`);

ALTER TABLE `bc73q_kunena_users`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `posts` (`posts`),
  ADD KEY `uhits` (`uhits`),
  ADD KEY `banned` (`banned`),
  ADD KEY `moderator` (`moderator`);

ALTER TABLE `bc73q_kunena_users_banned`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `ip` (`ip`),
  ADD KEY `expiration` (`expiration`),
  ADD KEY `created_time` (`created_time`);

ALTER TABLE `bc73q_kunena_user_categories`
  ADD PRIMARY KEY (`user_id`,`category_id`),
  ADD KEY `category_subscribed` (`category_id`,`subscribed`),
  ADD KEY `role` (`role`);

ALTER TABLE `bc73q_kunena_user_read`
  ADD UNIQUE KEY `user_topic_id` (`user_id`,`topic_id`),
  ADD KEY `category_user_id` (`category_id`,`user_id`),
  ADD KEY `time` (`time`);

ALTER TABLE `bc73q_kunena_user_topics`
  ADD UNIQUE KEY `user_topic_id` (`user_id`,`topic_id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `posts` (`posts`),
  ADD KEY `owner` (`owner`),
  ADD KEY `favorite` (`favorite`),
  ADD KEY `subscribed` (`subscribed`);

ALTER TABLE `bc73q_kunena_version`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bc73q_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

ALTER TABLE `bc73q_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100));

ALTER TABLE `bc73q_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

ALTER TABLE `bc73q_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

ALTER TABLE `bc73q_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

ALTER TABLE `bc73q_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

ALTER TABLE `bc73q_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

ALTER TABLE `bc73q_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

ALTER TABLE `bc73q_os_gallery`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bc73q_os_gallery_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_gal_id` (`fk_gal_id`);

ALTER TABLE `bc73q_os_gallery_connect`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cat_id` (`fk_cat_id`),
  ADD KEY `fk_gal_img_id` (`fk_gal_img_id`);

ALTER TABLE `bc73q_os_gallery_img`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bc73q_overrider`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bc73q_plg_slogin_profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_prov` (`user_id`,`provider`),
  ADD KEY `user_curr` (`user_id`,`current_profile`),
  ADD KEY `user` (`user_id`);

ALTER TABLE `bc73q_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

ALTER TABLE `bc73q_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_link_modifed` (`modified_date`),
  ADD KEY `idx_old_url` (`old_url`(100));

ALTER TABLE `bc73q_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

ALTER TABLE `bc73q_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

ALTER TABLE `bc73q_slogin_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `slogin_id` (`slogin_id`);

ALTER TABLE `bc73q_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_alias` (`alias`(100));

ALTER TABLE `bc73q_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_home` (`home`);

ALTER TABLE `bc73q_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

ALTER TABLE `bc73q_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_content_type` (`core_type_alias`(100));

ALTER TABLE `bc73q_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

ALTER TABLE `bc73q_updates`
  ADD PRIMARY KEY (`update_id`);

ALTER TABLE `bc73q_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

ALTER TABLE `bc73q_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

ALTER TABLE `bc73q_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

ALTER TABLE `bc73q_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

ALTER TABLE `bc73q_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD UNIQUE KEY `series_2` (`series`),
  ADD UNIQUE KEY `series_3` (`series`),
  ADD KEY `user_id` (`user_id`);

ALTER TABLE `bc73q_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

ALTER TABLE `bc73q_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

ALTER TABLE `bc73q_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

ALTER TABLE `bc73q_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

ALTER TABLE `bc73q_weblinks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);


ALTER TABLE `bc73q_acymailing_action`
  MODIFY `action_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bc73q_acymailing_fields`
  MODIFY `fieldid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `bc73q_acymailing_filter`
  MODIFY `filid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bc73q_acymailing_geolocation`
  MODIFY `geolocation_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bc73q_acymailing_list`
  MODIFY `listid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `bc73q_acymailing_mail`
  MODIFY `mailid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `bc73q_acymailing_rules`
  MODIFY `ruleid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bc73q_acymailing_subscriber`
  MODIFY `subid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `bc73q_acymailing_tag`
  MODIFY `tagid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bc73q_acymailing_template`
  MODIFY `tempid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `bc73q_acymailing_url`
  MODIFY `urlid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bc73q_ark_editor_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bc73q_ark_editor_plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

ALTER TABLE `bc73q_ark_editor_toolbars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

ALTER TABLE `bc73q_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=899;

ALTER TABLE `bc73q_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bc73q_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bc73q_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

ALTER TABLE `bc73q_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `bc73q_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

ALTER TABLE `bc73q_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

ALTER TABLE `bc73q_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10329;

ALTER TABLE `bc73q_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bc73q_fields_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bc73q_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bc73q_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=523;

ALTER TABLE `bc73q_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

ALTER TABLE `bc73q_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250877;

ALTER TABLE `bc73q_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `bc73q_joomgallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

ALTER TABLE `bc73q_joomgallery_catg`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

ALTER TABLE `bc73q_joomgallery_comments`
  MODIFY `cmtid` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bc73q_joomgallery_config`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `bc73q_joomgallery_maintenance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bc73q_joomgallery_nameshields`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bc73q_joomgallery_orphans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bc73q_joomgallery_users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bc73q_joomgallery_votes`
  MODIFY `voteid` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bc73q_komento_acl`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE `bc73q_komento_actions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bc73q_komento_activities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

ALTER TABLE `bc73q_komento_captcha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bc73q_komento_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

ALTER TABLE `bc73q_komento_hashkeys`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bc73q_komento_ipfilter`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bc73q_komento_mailq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bc73q_komento_subscription`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bc73q_komento_uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bc73q_kunena_announcement`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bc73q_kunena_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bc73q_kunena_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

ALTER TABLE `bc73q_kunena_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

ALTER TABLE `bc73q_kunena_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

ALTER TABLE `bc73q_kunena_polls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bc73q_kunena_polls_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bc73q_kunena_ranks`
  MODIFY `rank_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `bc73q_kunena_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bc73q_kunena_smileys`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

ALTER TABLE `bc73q_kunena_topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

ALTER TABLE `bc73q_kunena_users_banned`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bc73q_kunena_version`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `bc73q_languages`
  MODIFY `lang_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `bc73q_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=702;

ALTER TABLE `bc73q_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

ALTER TABLE `bc73q_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

ALTER TABLE `bc73q_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;

ALTER TABLE `bc73q_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bc73q_os_gallery`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

ALTER TABLE `bc73q_os_gallery_categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

ALTER TABLE `bc73q_os_gallery_connect`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

ALTER TABLE `bc73q_os_gallery_img`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

ALTER TABLE `bc73q_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=9264;

ALTER TABLE `bc73q_plg_slogin_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bc73q_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `bc73q_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bc73q_slogin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bc73q_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

ALTER TABLE `bc73q_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

ALTER TABLE `bc73q_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

ALTER TABLE `bc73q_ucm_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `bc73q_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `bc73q_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

ALTER TABLE `bc73q_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=10;

ALTER TABLE `bc73q_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=855;

ALTER TABLE `bc73q_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `bc73q_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `bc73q_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=7;

ALTER TABLE `bc73q_weblinks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
