
-- --------------------------------------------------------

--
-- Table structure for table `bc73q_joomgallery_image_details`
--

DROP TABLE IF EXISTS `bc73q_joomgallery_image_details`;
CREATE TABLE `bc73q_joomgallery_image_details` (
  `id` int(11) NOT NULL,
  `details_key` varchar(255) NOT NULL,
  `details_value` text NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
