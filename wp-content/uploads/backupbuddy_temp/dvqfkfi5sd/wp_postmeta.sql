CREATE TABLE `wp_postmeta` (  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,  PRIMARY KEY (`meta_id`),  KEY `post_id` (`post_id`),  KEY `meta_key` (`meta_key`(191))) ENGINE=InnoDB AUTO_INCREMENT=268 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
SET FOREIGN_KEY_CHECKS = 0;
SET UNIQUE_CHECKS = 0;
INSERT INTO `wp_postmeta` VALUES('1', '2', '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES('2', '3', '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES('5', '6', '_customize_draft_post_name', 'home');
INSERT INTO `wp_postmeta` VALUES('6', '6', '_customize_changeset_uuid', '3368f41f-2194-4022-a764-374f553ea71b');
INSERT INTO `wp_postmeta` VALUES('7', '7', '_customize_draft_post_name', 'blog');
INSERT INTO `wp_postmeta` VALUES('8', '7', '_customize_changeset_uuid', '3368f41f-2194-4022-a764-374f553ea71b');
INSERT INTO `wp_postmeta` VALUES('9', '8', '_customize_draft_post_name', 'about');
INSERT INTO `wp_postmeta` VALUES('10', '8', '_customize_changeset_uuid', '3368f41f-2194-4022-a764-374f553ea71b');
INSERT INTO `wp_postmeta` VALUES('11', '9', '_customize_draft_post_name', 'contact');
INSERT INTO `wp_postmeta` VALUES('12', '9', '_customize_changeset_uuid', '3368f41f-2194-4022-a764-374f553ea71b');
INSERT INTO `wp_postmeta` VALUES('15', '10', '_customize_restore_dismissed', '1');
INSERT INTO `wp_postmeta` VALUES('17', '12', '_customize_restore_dismissed', '1');
INSERT INTO `wp_postmeta` VALUES('18', '13', '_edit_lock', '1621665281:1');
INSERT INTO `wp_postmeta` VALUES('19', '13', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES('20', '13', '_wp_trash_meta_time', '1621665311');
INSERT INTO `wp_postmeta` VALUES('21', '14', '_edit_lock', '1621665489:1');
INSERT INTO `wp_postmeta` VALUES('22', '14', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES('23', '14', '_wp_trash_meta_time', '1621665501');
INSERT INTO `wp_postmeta` VALUES('26', '16', '_wp_attached_file', 'woocommerce-placeholder.png');
INSERT INTO `wp_postmeta` VALUES('27', '16', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES('28', '22', '_wp_attached_file', '2021/05/other-small.jpg');
INSERT INTO `wp_postmeta` VALUES('29', '22', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:23:\"2021/05/other-small.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES('30', '22', '_source_url', 'http://localhost/membershiptask/wp-content/plugins/woocommerce/packages/woocommerce-admin/images/onboarding/other-small.jpg');
INSERT INTO `wp_postmeta` VALUES('31', '24', '_wp_attached_file', '2021/05/images-1.jpeg');
INSERT INTO `wp_postmeta` VALUES('32', '24', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:570;s:6:\"height\";i:538;s:4:\"file\";s:21:\"2021/05/images-1.jpeg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES('33', '25', '_wp_attached_file', '2021/05/images.jpeg');
INSERT INTO `wp_postmeta` VALUES('34', '25', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:552;s:6:\"height\";i:555;s:4:\"file\";s:19:\"2021/05/images.jpeg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES('37', '27', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES('38', '27', '_edit_lock', '1621802407:1');
INSERT INTO `wp_postmeta` VALUES('39', '27', 'total_sales', '0');
INSERT INTO `wp_postmeta` VALUES('40', '27', '_tax_status', 'taxable');
INSERT INTO `wp_postmeta` VALUES('41', '27', '_tax_class', '');
INSERT INTO `wp_postmeta` VALUES('42', '27', '_manage_stock', 'no');
INSERT INTO `wp_postmeta` VALUES('43', '27', '_backorders', 'no');
INSERT INTO `wp_postmeta` VALUES('44', '27', '_sold_individually', 'no');
INSERT INTO `wp_postmeta` VALUES('45', '27', '_virtual', 'yes');
INSERT INTO `wp_postmeta` VALUES('46', '27', '_downloadable', 'yes');
INSERT INTO `wp_postmeta` VALUES('47', '27', '_download_limit', '-1');
INSERT INTO `wp_postmeta` VALUES('48', '27', '_download_expiry', '-1');
INSERT INTO `wp_postmeta` VALUES('49', '27', '_stock', NULL);
INSERT INTO `wp_postmeta` VALUES('50', '27', '_stock_status', 'instock');
INSERT INTO `wp_postmeta` VALUES('51', '27', '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES('52', '27', '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES('53', '27', '_product_version', '5.3.0');
INSERT INTO `wp_postmeta` VALUES('54', '27', '_regular_price', '10000');
INSERT INTO `wp_postmeta` VALUES('55', '27', '_price', '10000');
INSERT INTO `wp_postmeta` VALUES('56', '28', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES('57', '28', '_edit_lock', '1621802928:1');
INSERT INTO `wp_postmeta` VALUES('58', '28', 'total_sales', '0');
INSERT INTO `wp_postmeta` VALUES('59', '28', '_tax_status', 'taxable');
INSERT INTO `wp_postmeta` VALUES('60', '28', '_tax_class', '');
INSERT INTO `wp_postmeta` VALUES('61', '28', '_manage_stock', 'no');
INSERT INTO `wp_postmeta` VALUES('62', '28', '_backorders', 'no');
INSERT INTO `wp_postmeta` VALUES('63', '28', '_sold_individually', 'yes');
INSERT INTO `wp_postmeta` VALUES('64', '28', '_virtual', 'yes');
INSERT INTO `wp_postmeta` VALUES('65', '28', '_downloadable', 'yes');
INSERT INTO `wp_postmeta` VALUES('66', '28', '_download_limit', '-1');
INSERT INTO `wp_postmeta` VALUES('67', '28', '_download_expiry', '-1');
INSERT INTO `wp_postmeta` VALUES('68', '28', '_stock', NULL);
INSERT INTO `wp_postmeta` VALUES('69', '28', '_stock_status', 'instock');
INSERT INTO `wp_postmeta` VALUES('70', '28', '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES('71', '28', '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES('72', '28', '_product_version', '5.3.0');
INSERT INTO `wp_postmeta` VALUES('75', '29', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES('76', '29', '_edit_lock', '1621801614:1');
INSERT INTO `wp_postmeta` VALUES('77', '29', '_regular_price', '45000');
INSERT INTO `wp_postmeta` VALUES('78', '29', 'total_sales', '0');
INSERT INTO `wp_postmeta` VALUES('79', '29', '_tax_status', 'taxable');
INSERT INTO `wp_postmeta` VALUES('80', '29', '_tax_class', '');
INSERT INTO `wp_postmeta` VALUES('81', '29', '_manage_stock', 'no');
INSERT INTO `wp_postmeta` VALUES('82', '29', '_backorders', 'no');
INSERT INTO `wp_postmeta` VALUES('83', '29', '_sold_individually', 'no');
INSERT INTO `wp_postmeta` VALUES('84', '29', '_virtual', 'yes');
INSERT INTO `wp_postmeta` VALUES('85', '29', '_downloadable', 'yes');
INSERT INTO `wp_postmeta` VALUES('86', '29', '_download_limit', '-1');
INSERT INTO `wp_postmeta` VALUES('87', '29', '_download_expiry', '-1');
INSERT INTO `wp_postmeta` VALUES('88', '29', '_stock', NULL);
INSERT INTO `wp_postmeta` VALUES('89', '29', '_stock_status', 'instock');
INSERT INTO `wp_postmeta` VALUES('90', '29', '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES('91', '29', '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES('92', '29', '_product_version', '5.3.0');
INSERT INTO `wp_postmeta` VALUES('93', '29', '_price', '45000');
INSERT INTO `wp_postmeta` VALUES('94', '30', '_edit_lock', '1621668308:1');
INSERT INTO `wp_postmeta` VALUES('95', '30', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES('96', '30', '_wp_trash_meta_time', '1621668333');
INSERT INTO `wp_postmeta` VALUES('97', '31', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES('98', '31', '_wp_trash_meta_time', '1621668417');
INSERT INTO `wp_postmeta` VALUES('99', '17', '_edit_lock', '1621670616:1');
INSERT INTO `wp_postmeta` VALUES('100', '19', '_edit_lock', '1621670599:1');
INSERT INTO `wp_postmeta` VALUES('103', '19', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES('105', '19', 'blacklist', '1');
INSERT INTO `wp_postmeta` VALUES('106', '17', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES('107', '17', 'blacklist', '1');
INSERT INTO `wp_postmeta` VALUES('114', '38', 'list_type', 'products_selection');
INSERT INTO `wp_postmeta` VALUES('115', '38', 'product_list_config', 'a:5:{s:16:\"selectedProducts\";a:1:{i:0;i:49;}s:13:\"productAuthor\";s:0:\"\";s:16:\"excludedProducts\";a:0:{}s:11:\"taxRelation\";N;s:5:\"rules\";a:0:{}}');
INSERT INTO `wp_postmeta` VALUES('116', '39', 'list_type', 'products_selection');
INSERT INTO `wp_postmeta` VALUES('117', '39', 'product_list_config', 'a:5:{s:16:\"selectedProducts\";a:1:{i:0;i:50;}s:13:\"productAuthor\";s:0:\"\";s:16:\"excludedProducts\";a:0:{}s:11:\"taxRelation\";N;s:5:\"rules\";a:0:{}}');
INSERT INTO `wp_postmeta` VALUES('139', '41', 'discount_start_date', '2021-05-22 08:47:34');
INSERT INTO `wp_postmeta` VALUES('140', '41', 'discount_end_date', '2023-12-14 00:00:00');
INSERT INTO `wp_postmeta` VALUES('141', '41', 'discount_schedules', 's:103:\"a:1:{i:0;a:2:{s:10:\"start_date\";s:19:\"2021-05-22 08:47:34\";s:8:\"end_date\";s:19:\"2023-12-14 00:00:00\";}}\";');
INSERT INTO `wp_postmeta` VALUES('142', '41', 'discount_quantityranges', 's:110:\"a:1:{i:0;a:4:{s:11:\"start_range\";s:0:\"\";s:9:\"end_range\";s:0:\"\";s:8:\"dis_type\";s:0:\"\";s:9:\"dis_value\";s:0:\"\";}}\";');
INSERT INTO `wp_postmeta` VALUES('143', '41', 'discount_variation_check', '');
INSERT INTO `wp_postmeta` VALUES('144', '41', 'discount_cartamount', '');
INSERT INTO `wp_postmeta` VALUES('145', '41', 'discount_start_time', '00:00');
INSERT INTO `wp_postmeta` VALUES('146', '41', 'discount_end_time', '00:00');
INSERT INTO `wp_postmeta` VALUES('147', '41', 'discount_schedule_days', '');
INSERT INTO `wp_postmeta` VALUES('148', '41', 'discount_quantity_type', '');
INSERT INTO `wp_postmeta` VALUES('149', '41', 'discount_schedule_weekday', '');
INSERT INTO `wp_postmeta` VALUES('150', '41', 'discount_table_layout', '');
INSERT INTO `wp_postmeta` VALUES('151', '41', 'discount_calc_type', '');
INSERT INTO `wp_postmeta` VALUES('152', '41', 'discount_type', 'percent_product_price');
INSERT INTO `wp_postmeta` VALUES('153', '41', 'discount_value', '10');
INSERT INTO `wp_postmeta` VALUES('154', '41', 'discount_status', '1');
INSERT INTO `wp_postmeta` VALUES('155', '41', 'discount_reg_customers', '');
INSERT INTO `wp_postmeta` VALUES('156', '41', 'discount_pricing_table', '');
INSERT INTO `wp_postmeta` VALUES('157', '41', 'discount_priority', '1');
INSERT INTO `wp_postmeta` VALUES('158', '41', 'discount_product_list', '38');
INSERT INTO `wp_postmeta` VALUES('159', '41', 'discount_config', 'a:7:{s:7:\"inc_tax\";b:0;s:5:\"label\";s:28:\"Covid-19 membership discount\";s:12:\"sequentially\";b:1;s:11:\"usage_limit\";s:0:\"\";s:15:\"disable_on_sale\";b:1;s:12:\"show_in_loop\";b:0;s:5:\"rules\";s:8:\"YTowOnt9\";}');
INSERT INTO `wp_postmeta` VALUES('160', '42', 'discount_start_date', '2021-05-22 08:49:07');
INSERT INTO `wp_postmeta` VALUES('161', '42', 'discount_end_date', '2027-11-26 00:00:00');
INSERT INTO `wp_postmeta` VALUES('162', '42', 'discount_schedules', 's:103:\"a:1:{i:0;a:2:{s:10:\"start_date\";s:19:\"2021-05-22 08:49:07\";s:8:\"end_date\";s:19:\"2027-11-26 00:00:00\";}}\";');
INSERT INTO `wp_postmeta` VALUES('163', '42', 'discount_quantityranges', 's:110:\"a:1:{i:0;a:4:{s:11:\"start_range\";s:0:\"\";s:9:\"end_range\";s:0:\"\";s:8:\"dis_type\";s:0:\"\";s:9:\"dis_value\";s:0:\"\";}}\";');
INSERT INTO `wp_postmeta` VALUES('164', '42', 'discount_variation_check', '');
INSERT INTO `wp_postmeta` VALUES('165', '42', 'discount_cartamount', '');
INSERT INTO `wp_postmeta` VALUES('166', '42', 'discount_start_time', '00:00');
INSERT INTO `wp_postmeta` VALUES('167', '42', 'discount_end_time', '00:00');
INSERT INTO `wp_postmeta` VALUES('168', '42', 'discount_schedule_days', '');
INSERT INTO `wp_postmeta` VALUES('169', '42', 'discount_quantity_type', '');
INSERT INTO `wp_postmeta` VALUES('170', '42', 'discount_schedule_weekday', '');
INSERT INTO `wp_postmeta` VALUES('171', '42', 'discount_table_layout', '');
INSERT INTO `wp_postmeta` VALUES('172', '42', 'discount_calc_type', '');
INSERT INTO `wp_postmeta` VALUES('173', '42', 'discount_type', 'percent_product_price');
INSERT INTO `wp_postmeta` VALUES('174', '42', 'discount_value', '15');
INSERT INTO `wp_postmeta` VALUES('175', '42', 'discount_status', '1');
INSERT INTO `wp_postmeta` VALUES('176', '42', 'discount_reg_customers', '');
INSERT INTO `wp_postmeta` VALUES('177', '42', 'discount_pricing_table', '');
INSERT INTO `wp_postmeta` VALUES('178', '42', 'discount_priority', '1');
INSERT INTO `wp_postmeta` VALUES('179', '42', 'discount_product_list', '39');
INSERT INTO `wp_postmeta` VALUES('180', '42', 'discount_config', 'a:7:{s:7:\"inc_tax\";b:0;s:5:\"label\";s:28:\"Covid-19 membership discount\";s:12:\"sequentially\";b:1;s:11:\"usage_limit\";s:0:\"\";s:15:\"disable_on_sale\";b:0;s:12:\"show_in_loop\";b:0;s:5:\"rules\";s:8:\"YTowOnt9\";}');
INSERT INTO `wp_postmeta` VALUES('183', '28', '_product_attributes', 'a:1:{s:15:\"silver-discount\";a:6:{s:4:\"name\";s:15:\"Silver discount\";s:5:\"value\";s:35:\"Get a 2 year membership for 10% off\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:0;}}');
INSERT INTO `wp_postmeta` VALUES('184', '28', 'blacklist', '1');
INSERT INTO `wp_postmeta` VALUES('202', '28', '_default_attributes', 'a:1:{s:15:\"silver-discount\";s:35:\"Get a 2 year membership for 10% off\";}');
INSERT INTO `wp_postmeta` VALUES('206', '46', 'epofw_prd_opt_data', '{\"epofw_addon_name\":\"\",\"additional_rule_data\":{\"condition\":\"product\",\"operator\":\"is_equal_to\"},\"epofw_addon_position\":\"before_add_to_cart\",\"general\":{\"1\":{\"field\":{\"status\":\"on\",\"type\":\"text\",\"required\":\"on\",\"field_restriction\":\"all\",\"value\":\"test 1\",\"placeholder\":\"test 23\",\"name\":\"epofw_field_2434919211\",\"id\":\"epofw_field_1787202810\",\"class\":\"epofw_field_1090078458||epofw_all\",\"readonly\":\"on\",\"enable_price_extra\":\"on\",\"addon_price_type\":\"fixed\",\"addon_price\":\"18000\"},\"label\":{\"title\":\"Get 10% discount for 2 years membership\",\"enable_title_extra\":\"on\",\"class\":\"epofw_label_2175066515\",\"enable_subtitle_extra\":\"on\",\"subtitle\":\"Get 10% discount for 2 years membership\",\"subtitle_class\":\"Get 10% discount for 2 years membership\"}}}}');
INSERT INTO `wp_postmeta` VALUES('207', '28', '_regular_price', '20000');
INSERT INTO `wp_postmeta` VALUES('208', '28', '_price', '20000');
INSERT INTO `wp_postmeta` VALUES('209', '49', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES('210', '49', '_edit_lock', '1621801658:1');
INSERT INTO `wp_postmeta` VALUES('211', '49', '_regular_price', '20000');
INSERT INTO `wp_postmeta` VALUES('212', '49', 'total_sales', '0');
INSERT INTO `wp_postmeta` VALUES('213', '49', '_tax_status', 'taxable');
INSERT INTO `wp_postmeta` VALUES('214', '49', '_tax_class', '');
INSERT INTO `wp_postmeta` VALUES('215', '49', '_manage_stock', 'no');
INSERT INTO `wp_postmeta` VALUES('216', '49', '_backorders', 'no');
INSERT INTO `wp_postmeta` VALUES('217', '49', '_sold_individually', 'no');
INSERT INTO `wp_postmeta` VALUES('218', '49', '_virtual', 'yes');
INSERT INTO `wp_postmeta` VALUES('219', '49', '_downloadable', 'yes');
INSERT INTO `wp_postmeta` VALUES('220', '49', '_download_limit', '-1');
INSERT INTO `wp_postmeta` VALUES('221', '49', '_download_expiry', '-1');
INSERT INTO `wp_postmeta` VALUES('222', '49', '_stock', NULL);
INSERT INTO `wp_postmeta` VALUES('223', '49', '_stock_status', 'instock');
INSERT INTO `wp_postmeta` VALUES('224', '49', '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES('225', '49', '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES('226', '49', '_product_version', '5.3.0');
INSERT INTO `wp_postmeta` VALUES('227', '49', '_price', '20000');
INSERT INTO `wp_postmeta` VALUES('228', '50', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES('229', '50', '_edit_lock', '1621801395:1');
INSERT INTO `wp_postmeta` VALUES('230', '50', '_regular_price', '45000');
INSERT INTO `wp_postmeta` VALUES('231', '50', 'total_sales', '0');
INSERT INTO `wp_postmeta` VALUES('232', '50', '_tax_status', 'taxable');
INSERT INTO `wp_postmeta` VALUES('233', '50', '_tax_class', '');
INSERT INTO `wp_postmeta` VALUES('234', '50', '_manage_stock', 'no');
INSERT INTO `wp_postmeta` VALUES('235', '50', '_backorders', 'no');
INSERT INTO `wp_postmeta` VALUES('236', '50', '_sold_individually', 'no');
INSERT INTO `wp_postmeta` VALUES('237', '50', '_virtual', 'yes');
INSERT INTO `wp_postmeta` VALUES('238', '50', '_downloadable', 'yes');
INSERT INTO `wp_postmeta` VALUES('239', '50', '_download_limit', '-1');
INSERT INTO `wp_postmeta` VALUES('240', '50', '_download_expiry', '-1');
INSERT INTO `wp_postmeta` VALUES('241', '50', '_stock', NULL);
INSERT INTO `wp_postmeta` VALUES('242', '50', '_stock_status', 'instock');
INSERT INTO `wp_postmeta` VALUES('243', '50', '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES('244', '50', '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES('245', '50', '_product_version', '5.3.0');
INSERT INTO `wp_postmeta` VALUES('246', '50', '_price', '45000');
INSERT INTO `wp_postmeta` VALUES('247', '51', '_edit_lock', '1621801264:1');
INSERT INTO `wp_postmeta` VALUES('248', '51', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES('249', '51', '_wp_trash_meta_time', '1621801306');
INSERT INTO `wp_postmeta` VALUES('250', '29', '_oembed_95bd89be02531a995148489d8770f62a', '<blockquote class=\"wp-embedded-content\" data-secret=\"C5Yx5Yztng\"><a href=\"http://localhost/membershiptask/product/gold-discount/\">Gold Discount</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" style=\"position: absolute; clip: rect(1px, 1px, 1px, 1px);\" title=\"&#8220;Gold Discount&#8221; &#8212; Covid-19 Rescue Membership\" src=\"http://localhost/membershiptask/product/gold-discount/embed/#?secret=C5Yx5Yztng\" data-secret=\"C5Yx5Yztng\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>');
INSERT INTO `wp_postmeta` VALUES('251', '29', '_oembed_time_95bd89be02531a995148489d8770f62a', '1621801645');
INSERT INTO `wp_postmeta` VALUES('252', '28', '_oembed_6309796736a7d3795831bb950bdcd8c3', '<blockquote class=\"wp-embedded-content\" data-secret=\"xVRsdN9Bji\"><a href=\"http://localhost/membershiptask/product/silver-discount/\">Silver Discount</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" style=\"position: absolute; clip: rect(1px, 1px, 1px, 1px);\" title=\"&#8220;Silver Discount&#8221; &#8212; Covid-19 Rescue Membership\" src=\"http://localhost/membershiptask/product/silver-discount/embed/#?secret=xVRsdN9Bji\" data-secret=\"xVRsdN9Bji\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>');
INSERT INTO `wp_postmeta` VALUES('253', '28', '_oembed_time_6309796736a7d3795831bb950bdcd8c3', '1621801814');
INSERT INTO `wp_postmeta` VALUES('254', '52', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES('255', '52', '_wp_trash_meta_time', '1621801871');
INSERT INTO `wp_postmeta` VALUES('256', '53', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES('257', '53', '_wp_trash_meta_time', '1621801883');
INSERT INTO `wp_postmeta` VALUES('258', '54', '_edit_lock', '1621802030:1');
INSERT INTO `wp_postmeta` VALUES('259', '54', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES('260', '54', '_wp_trash_meta_time', '1621802036');
INSERT INTO `wp_postmeta` VALUES('261', '55', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES('262', '55', '_wp_trash_meta_time', '1621802114');
INSERT INTO `wp_postmeta` VALUES('265', '27', '_age_gate-restrict', '1');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
SET FOREIGN_KEY_CHECKS = 1;
SET UNIQUE_CHECKS = 1;