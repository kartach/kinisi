
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_joomgallery`
--

DROP TABLE IF EXISTS `bc73q_joomgallery`;
CREATE TABLE `bc73q_joomgallery` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `imgtitle` text NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `imgauthor` varchar(50) DEFAULT NULL,
  `imgtext` text NOT NULL,
  `imgdate` datetime NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `downloads` int(11) NOT NULL DEFAULT '0',
  `imgvotes` int(11) NOT NULL DEFAULT '0',
  `imgvotesum` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `featured` tinyint(1) NOT NULL,
  `imgfilename` varchar(255) NOT NULL,
  `imgthumbname` varchar(255) NOT NULL,
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `owner` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `useruploaded` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bc73q_joomgallery`
--

INSERT INTO `bc73q_joomgallery` VALUES(180, 635, 9, 'gallery-image1', 'gallery-image1-180', '', '', '2016-09-10 11:39:41', 0, 0, 0, 0, 1, 1, 0, 0, 'gallery-image1_20160910_1412166015.jpg', 'gallery-image1_20160910_1412166015.jpg', 0, 0, 1, 0, 1, '', '', '');
INSERT INTO `bc73q_joomgallery` VALUES(181, 636, 9, 'gallery-image2', 'gallery-image2-181', '', '', '2016-09-10 11:39:42', 0, 0, 0, 0, 1, 1, 0, 0, 'gallery-image2_20160910_1460550998.jpg', 'gallery-image2_20160910_1460550998.jpg', 0, 0, 1, 0, 2, '', '', '');
INSERT INTO `bc73q_joomgallery` VALUES(182, 637, 9, 'gallery-image3', 'gallery-image3-182', '', '', '2016-09-10 11:39:43', 0, 0, 0, 0, 1, 1, 0, 0, 'gallery-image3_20160910_1841047942.jpg', 'gallery-image3_20160910_1841047942.jpg', 0, 0, 1, 0, 3, '', '', '');
INSERT INTO `bc73q_joomgallery` VALUES(183, 638, 9, 'gallery-image4', 'gallery-image4-183', '', '', '2016-09-10 11:39:44', 0, 0, 0, 0, 1, 1, 0, 0, 'gallery-image4_20160910_1736778152.jpg', 'gallery-image4_20160910_1736778152.jpg', 0, 0, 1, 0, 4, '', '', '');
INSERT INTO `bc73q_joomgallery` VALUES(184, 639, 9, 'gallery-image5', 'gallery-image5-184', '', '', '2016-09-10 11:39:45', 0, 0, 0, 0, 1, 1, 0, 0, 'gallery-image5_20160910_2075970967.jpg', 'gallery-image5_20160910_2075970967.jpg', 0, 0, 1, 0, 5, '', '', '');
INSERT INTO `bc73q_joomgallery` VALUES(185, 640, 9, 'gallery-image6', 'gallery-image6-185', '', '', '2016-09-10 11:39:46', 0, 0, 0, 0, 1, 1, 0, 0, 'gallery-image6_20160910_1338318163.jpg', 'gallery-image6_20160910_1338318163.jpg', 0, 0, 1, 0, 6, '', '', '');
INSERT INTO `bc73q_joomgallery` VALUES(186, 641, 10, 'gallery-image7', 'gallery-image7-186', '', '', '2016-09-10 11:39:51', 0, 0, 0, 0, 1, 1, 0, 0, 'gallery-image7_20160910_1762666836.jpg', 'gallery-image7_20160910_1762666836.jpg', 0, 0, 1, 0, 1, '', '', '');
INSERT INTO `bc73q_joomgallery` VALUES(187, 642, 10, 'gallery-image8', 'gallery-image8-187', '', '', '2016-09-10 11:39:52', 0, 0, 0, 0, 1, 1, 0, 0, 'gallery-image8_20160910_1580794659.jpg', 'gallery-image8_20160910_1580794659.jpg', 0, 0, 1, 0, 2, '', '', '');
INSERT INTO `bc73q_joomgallery` VALUES(188, 643, 10, 'gallery-image9', 'gallery-image9-188', '', '', '2016-09-10 11:39:53', 0, 0, 0, 0, 1, 1, 0, 0, 'gallery-image9_20160910_1743919503.jpg', 'gallery-image9_20160910_1743919503.jpg', 0, 0, 1, 0, 3, '', '', '');
INSERT INTO `bc73q_joomgallery` VALUES(189, 644, 10, 'gallery-image10', 'gallery-image10-189', '', '', '2016-09-10 11:39:54', 0, 0, 0, 0, 1, 1, 0, 0, 'gallery-image10_20160910_2089907610.jpg', 'gallery-image10_20160910_2089907610.jpg', 0, 0, 1, 0, 4, '', '', '');
INSERT INTO `bc73q_joomgallery` VALUES(190, 645, 10, 'gallery-image11', 'gallery-image11-190', '', '', '2016-09-10 11:39:55', 1, 0, 0, 0, 1, 1, 0, 0, 'gallery-image11_20160910_1189986388.jpg', 'gallery-image11_20160910_1189986388.jpg', 0, 0, 1, 0, 5, '', '', '');
INSERT INTO `bc73q_joomgallery` VALUES(191, 646, 10, 'gallery-image12', 'gallery-image12-191', '', '', '2016-09-10 11:39:55', 0, 0, 0, 0, 1, 1, 0, 0, 'gallery-image12_20160910_1949771630.jpg', 'gallery-image12_20160910_1949771630.jpg', 0, 0, 1, 0, 6, '', '', '');
INSERT INTO `bc73q_joomgallery` VALUES(192, 647, 11, 'gallery-image13', 'gallery-image13-192', '', '', '2016-09-10 11:40:00', 0, 0, 0, 0, 1, 1, 0, 0, 'gallery-image13_20160910_1908799666.jpg', 'gallery-image13_20160910_1908799666.jpg', 0, 0, 1, 0, 1, '', '', '');
INSERT INTO `bc73q_joomgallery` VALUES(193, 648, 11, 'gallery-image14', 'gallery-image14-193', '', '', '2016-09-10 11:40:01', 0, 0, 0, 0, 1, 1, 0, 0, 'gallery-image14_20160910_2056983391.jpg', 'gallery-image14_20160910_2056983391.jpg', 0, 0, 1, 0, 2, '', '', '');
INSERT INTO `bc73q_joomgallery` VALUES(194, 649, 11, 'gallery-image15', 'gallery-image15-194', '', '', '2016-09-10 11:40:02', 0, 0, 0, 0, 1, 1, 0, 0, 'gallery-image15_20160910_1124374135.jpg', 'gallery-image15_20160910_1124374135.jpg', 0, 0, 1, 0, 3, '', '', '');
INSERT INTO `bc73q_joomgallery` VALUES(195, 650, 11, 'gallery-image16', 'gallery-image16-195', '', '', '2016-09-10 11:40:04', 0, 0, 0, 0, 1, 1, 0, 0, 'gallery-image16_20160910_1511442922.jpg', 'gallery-image16_20160910_1511442922.jpg', 0, 0, 1, 0, 4, '', '', '');
INSERT INTO `bc73q_joomgallery` VALUES(196, 651, 11, 'gallery-image17', 'gallery-image17-196', '', '', '2016-09-10 11:40:04', 0, 0, 0, 0, 1, 1, 0, 0, 'gallery-image17_20160910_1675963155.jpg', 'gallery-image17_20160910_1675963155.jpg', 0, 0, 1, 0, 5, '', '', '');
INSERT INTO `bc73q_joomgallery` VALUES(197, 652, 11, 'gallery-image18', 'gallery-image18-197', '', '', '2016-09-10 11:40:05', 0, 0, 0, 0, 1, 1, 0, 0, 'gallery-image18_20160910_1040097239.jpg', 'gallery-image18_20160910_1040097239.jpg', 0, 0, 1, 0, 6, '', '', '');
INSERT INTO `bc73q_joomgallery` VALUES(198, 653, 12, 'gallery-image19', 'gallery-image19-198', '', '', '2016-09-10 11:40:10', 0, 0, 0, 0, 1, 1, 0, 0, 'gallery-image19_20160910_1362612819.jpg', 'gallery-image19_20160910_1362612819.jpg', 0, 0, 1, 0, 1, '', '', '');
INSERT INTO `bc73q_joomgallery` VALUES(199, 654, 12, 'gallery-image20', 'gallery-image20-199', '', '', '2016-09-10 11:40:11', 0, 0, 0, 0, 1, 1, 0, 0, 'gallery-image20_20160910_1350128947.jpg', 'gallery-image20_20160910_1350128947.jpg', 0, 0, 1, 0, 2, '', '', '');
INSERT INTO `bc73q_joomgallery` VALUES(200, 655, 12, 'gallery-image21', 'gallery-image21-200', '', '', '2016-09-10 11:40:12', 0, 0, 0, 0, 1, 1, 0, 0, 'gallery-image21_20160910_2000316743.jpg', 'gallery-image21_20160910_2000316743.jpg', 0, 0, 1, 0, 3, '', '', '');
INSERT INTO `bc73q_joomgallery` VALUES(201, 656, 12, 'gallery-image22', 'gallery-image22-201', '', '', '2016-09-10 11:40:13', 0, 0, 0, 0, 1, 1, 0, 0, 'gallery-image22_20160910_1589848637.jpg', 'gallery-image22_20160910_1589848637.jpg', 0, 0, 1, 0, 4, '', '', '');
INSERT INTO `bc73q_joomgallery` VALUES(202, 657, 12, 'gallery-image23', 'gallery-image23-202', '', '', '2016-09-10 11:40:14', 0, 0, 0, 0, 1, 1, 0, 0, 'gallery-image23_20160910_1107482619.jpg', 'gallery-image23_20160910_1107482619.jpg', 0, 0, 1, 0, 5, '', '', '');
INSERT INTO `bc73q_joomgallery` VALUES(203, 658, 12, 'gallery-image24', 'gallery-image24-203', '', '', '2016-09-10 11:40:15', 0, 0, 0, 0, 1, 1, 0, 0, 'gallery-image24_20160910_2099392332.jpg', 'gallery-image24_20160910_2099392332.jpg', 0, 0, 1, 0, 6, '', '', '');
INSERT INTO `bc73q_joomgallery` VALUES(204, 659, 13, 'gallery-image25', 'gallery-image25-204', '', '', '2016-09-10 11:40:21', 0, 0, 0, 0, 1, 1, 0, 0, 'gallery-image25_20160910_1063265071.jpg', 'gallery-image25_20160910_1063265071.jpg', 0, 0, 1, 0, 1, '', '', '');
INSERT INTO `bc73q_joomgallery` VALUES(205, 660, 13, 'gallery-image26', 'gallery-image26-205', '', '', '2016-09-10 11:40:23', 0, 0, 0, 0, 1, 1, 0, 0, 'gallery-image26_20160910_1167268580.jpg', 'gallery-image26_20160910_1167268580.jpg', 0, 0, 1, 0, 2, '', '', '');
INSERT INTO `bc73q_joomgallery` VALUES(206, 661, 13, 'gallery-image27', 'gallery-image27-206', '', '', '2016-09-10 11:40:24', 0, 0, 0, 0, 1, 1, 0, 0, 'gallery-image27_20160910_1901020332.jpg', 'gallery-image27_20160910_1901020332.jpg', 0, 0, 1, 0, 3, '', '', '');
INSERT INTO `bc73q_joomgallery` VALUES(207, 662, 13, 'gallery-image28', 'gallery-image28-207', '', '', '2016-09-10 11:40:25', 0, 0, 0, 0, 1, 1, 0, 0, 'gallery-image28_20160910_1151917855.jpg', 'gallery-image28_20160910_1151917855.jpg', 0, 0, 1, 0, 4, '', '', '');
INSERT INTO `bc73q_joomgallery` VALUES(208, 663, 13, 'gallery-image29', 'gallery-image29-208', '', '', '2016-09-10 11:40:26', 0, 0, 0, 0, 1, 1, 0, 0, 'gallery-image29_20160910_1437012639.jpg', 'gallery-image29_20160910_1437012639.jpg', 0, 0, 1, 0, 5, '', '', '');
INSERT INTO `bc73q_joomgallery` VALUES(209, 664, 13, 'gallery-image30', 'gallery-image30-209', '', '', '2016-09-10 11:40:26', 0, 0, 0, 0, 1, 1, 0, 0, 'gallery-image30_20160910_1111315435.jpg', 'gallery-image30_20160910_1111315435.jpg', 0, 0, 1, 0, 6, '', '', '');
INSERT INTO `bc73q_joomgallery` VALUES(210, 665, 14, 'gallery-image31', 'gallery-image31-210', '', '', '2016-09-10 11:40:32', 0, 0, 0, 0, 1, 1, 0, 0, 'gallery-image31_20160910_1608162681.jpg', 'gallery-image31_20160910_1608162681.jpg', 0, 0, 1, 0, 1, '', '', '');
INSERT INTO `bc73q_joomgallery` VALUES(211, 666, 14, 'gallery-image32', 'gallery-image32-211', '', '', '2016-09-10 11:40:33', 0, 0, 0, 0, 1, 1, 0, 0, 'gallery-image32_20160910_1847372156.jpg', 'gallery-image32_20160910_1847372156.jpg', 0, 0, 1, 0, 2, '', '', '');
INSERT INTO `bc73q_joomgallery` VALUES(212, 667, 14, 'gallery-image33', 'gallery-image33-212', '', '', '2016-09-10 11:40:34', 0, 0, 0, 0, 1, 1, 0, 0, 'gallery-image33_20160910_1985005333.jpg', 'gallery-image33_20160910_1985005333.jpg', 0, 0, 1, 0, 3, '', '', '');
INSERT INTO `bc73q_joomgallery` VALUES(213, 668, 14, 'gallery-image34', 'gallery-image34-213', '', '', '2016-09-10 11:40:35', 0, 0, 0, 0, 1, 1, 0, 0, 'gallery-image34_20160910_1263814566.jpg', 'gallery-image34_20160910_1263814566.jpg', 0, 0, 1, 0, 4, '', '', '');
INSERT INTO `bc73q_joomgallery` VALUES(214, 669, 14, 'gallery-image35', 'gallery-image35-214', '', '', '2016-09-10 11:40:35', 0, 0, 0, 0, 1, 1, 0, 0, 'gallery-image35_20160910_1224964265.jpg', 'gallery-image35_20160910_1224964265.jpg', 0, 0, 1, 0, 5, '', '', '');
INSERT INTO `bc73q_joomgallery` VALUES(215, 670, 14, 'gallery-image36', 'gallery-image36-215', '', '', '2016-09-10 11:40:37', 0, 0, 0, 0, 1, 1, 0, 0, 'gallery-image36_20160910_1985368095.jpg', 'gallery-image36_20160910_1985368095.jpg', 0, 0, 1, 0, 6, '', '', '');
