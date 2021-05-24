CREATE TABLE `wp_wc_admin_note_actions` (  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,  `note_id` bigint(20) unsigned NOT NULL,  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,  `query` longtext COLLATE utf8mb4_unicode_ci NOT NULL,  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,  `is_primary` tinyint(1) NOT NULL DEFAULT 0,  `actioned_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,  PRIMARY KEY (`action_id`),  KEY `note_id` (`note_id`)) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40000 ALTER TABLE `wp_wc_admin_note_actions` DISABLE KEYS */;
SET FOREIGN_KEY_CHECKS = 0;
SET UNIQUE_CHECKS = 0;
INSERT INTO `wp_wc_admin_note_actions` VALUES('1', '1', 'yes-please', 'Yes please!', 'https://woocommerce.us8.list-manage.com/subscribe/post?u=2c1434dc56f9506bf3c3ecd21&amp;id=13860df971&amp;SIGNUPPAGE=plugin', 'actioned', '0', '');
INSERT INTO `wp_wc_admin_note_actions` VALUES('2', '2', 'connect', 'Connect', '?page=wc-addons&section=helper', 'unactioned', '0', '');
INSERT INTO `wp_wc_admin_note_actions` VALUES('3', '3', 'learn-more', 'Learn more', 'https://woocommerce.com/posts/how-to-sell-online-courses-wordpress/?utm_source=inbox', 'actioned', '1', '');
INSERT INTO `wp_wc_admin_note_actions` VALUES('4', '4', 'install-jp-and-wcs-plugins', 'Install plugins', '', 'actioned', '1', '');
INSERT INTO `wp_wc_admin_note_actions` VALUES('5', '5', 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/variable-product/?utm_source=inbox', 'actioned', '0', '');
INSERT INTO `wp_wc_admin_note_actions` VALUES('6', '6', 'test-checkout', 'Test checkout', 'http://localhost/membershiptask/', 'actioned', '0', '');
INSERT INTO `wp_wc_admin_note_actions` VALUES('7', '7', 'learn-more', 'Learn More', 'https://woocommerce.com/products/woocommerce-subscriptions/?utm_source=inbox', 'unactioned', '1', '');
INSERT INTO `wp_wc_admin_note_actions` VALUES('8', '8', 'learn-more', 'Learn more', 'https://woocommerce.com/posts/pre-launch-checklist-the-essentials/?utm_source=inbox', 'actioned', '0', '');
INSERT INTO `wp_wc_admin_note_actions` VALUES('9', '9', 'visit-the-theme-marketplace', 'Visit the theme marketplace', 'https://woocommerce.com/product-category/themes/?utm_source=inbox', 'actioned', '0', '');
INSERT INTO `wp_wc_admin_note_actions` VALUES('10', '10', 'affirm-insight-first-product-and-payment', 'Yes', '', 'actioned', '0', 'Thanks for your feedback');
INSERT INTO `wp_wc_admin_note_actions` VALUES('11', '10', 'affirm-insight-first-product-and-payment', 'No', '', 'actioned', '0', 'Thanks for your feedback');
INSERT INTO `wp_wc_admin_note_actions` VALUES('12', '11', 'first-downloadable-product-handling', 'Learn more', 'https://docs.woocommerce.com/document/digital-downloadable-product-handling/?utm_source=inbox', 'actioned', '0', '');
/*!40000 ALTER TABLE `wp_wc_admin_note_actions` ENABLE KEYS */;
SET FOREIGN_KEY_CHECKS = 1;
SET UNIQUE_CHECKS = 1;
