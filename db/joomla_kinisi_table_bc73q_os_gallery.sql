
DROP TABLE IF EXISTS `bc73q_os_gallery`;
CREATE TABLE `bc73q_os_gallery` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `published` int(1) DEFAULT '1',
  `params` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `bc73q_os_gallery` VALUES(1, 'test', 1, '{\"fancy_box_background\":\"\",\"open_close_effect\":\"none\",\"click_close\":1,\"helper_buttons\":0,\"helper_thumbnail\":0,\"loop\":0,\"open_close_speed\":500,\"prev_next_effect\":\"none\",\"img_title\":\"\",\"thumbnail_width\":50,\"thumbnail_height\":50,\"fancybox_arrows\":1,\"fancybox_arrows_pos\":1,\"close_button\":1,\"next_click\":0,\"mouse_wheel\":0,\"fancybox_autoplay\":0,\"autoplay_speed\":3000,\"imageHover\":\"dimas\",\"watermark_position\":\"center\",\"watermark_opacity\":30,\"watermark_size\":20,\"watermark_enable\":0,\"watermark_type\":1,\"watermark_text\":\"\",\"watermark_text_color\":\"rgb(0, 0, 0)\",\"watermark_text_size\":17,\"watermark_text_angle\":0,\"exist_watermark_text\":\"\",\"watermark_file\":\"\",\"backButtonText\":\"back\",\"image_margin\":5,\"num_column\":1,\"galleryLayout\":\"defaultTabs\",\"minImgEnable\":1,\"minImgSize\":200}');
INSERT INTO `bc73q_os_gallery` VALUES(2, 'test 2', 1, '{\"fancy_box_background\":\"\",\"open_close_effect\":\"none\",\"click_close\":1,\"helper_buttons\":0,\"helper_thumbnail\":0,\"loop\":0,\"open_close_speed\":500,\"prev_next_effect\":\"none\",\"img_title\":\"\",\"thumbnail_width\":50,\"thumbnail_height\":50,\"fancybox_arrows\":1,\"fancybox_arrows_pos\":1,\"close_button\":1,\"next_click\":0,\"mouse_wheel\":0,\"fancybox_autoplay\":0,\"autoplay_speed\":3000,\"imageHover\":\"dimas\",\"watermark_position\":\"center\",\"watermark_opacity\":30,\"watermark_size\":20,\"watermark_enable\":0,\"watermark_type\":1,\"watermark_text\":\"\",\"watermark_text_color\":\"rgb(0, 0, 0)\",\"watermark_text_size\":17,\"watermark_text_angle\":0,\"exist_watermark_text\":\"\",\"watermark_file\":\"\",\"backButtonText\":\"back\",\"image_margin\":5,\"num_column\":1,\"galleryLayout\":\"defaultTabs\",\"minImgEnable\":1,\"minImgSize\":200}');
