CREATE TABLE `wp_wc_admin_notes` (  `note_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,  `locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,  `content_data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',  `date_reminder` datetime DEFAULT NULL,  `is_snoozable` tinyint(1) NOT NULL DEFAULT 0,  `layout` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,  `icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'info',  PRIMARY KEY (`note_id`)) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40000 ALTER TABLE `wp_wc_admin_notes` DISABLE KEYS */;
SET FOREIGN_KEY_CHECKS = 0;
SET UNIQUE_CHECKS = 0;
INSERT INTO `wp_wc_admin_notes` VALUES('1', 'wc-admin-onboarding-email-marketing', 'info', 'en_US', 'Sign up for tips, product updates, and inspiration', 'We\'re here for you - get tips, product updates and inspiration straight to your email box', '{}', 'unactioned', 'woocommerce-admin', '2021-05-22 06:42:19', NULL, '0', 'plain', '', '0', 'info');
INSERT INTO `wp_wc_admin_notes` VALUES('2', 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Connect to WooCommerce.com', 'Connect to get important product notifications and updates.', '{}', 'unactioned', 'woocommerce-admin', '2021-05-22 06:42:19', NULL, '0', 'plain', '', '0', 'info');
INSERT INTO `wp_wc_admin_notes` VALUES('3', 'wc-admin-selling-online-courses', 'marketing', 'en_US', 'Do you want to sell online courses?', 'Online courses are a great solution for any business that can teach a new skill. Since courses don’t require physical product development or shipping, they’re affordable, fast to create, and can generate passive income for years to come. In this article, we provide you more information about selling courses using WooCommerce.', '{}', 'unactioned', 'woocommerce-admin', '2021-05-22 06:47:44', NULL, '0', 'plain', '', '0', 'info');
INSERT INTO `wp_wc_admin_notes` VALUES('4', 'wc-admin-install-jp-and-wcs-plugins', 'info', 'en_US', 'Uh oh... There was a problem during the Jetpack and WooCommerce Shipping & Tax install. Please try again.', 'We noticed that there was a problem during the Jetpack and WooCommerce Shipping &amp; Tax install. Please try again and enjoy all the advantages of having the plugins connected to your store! Sorry for the inconvenience. The \"Jetpack\" and \"WooCommerce Shipping &amp; Tax\" plugins will be installed &amp; activated for free.', '{}', 'unactioned', 'woocommerce-admin', '2021-05-22 06:49:12', NULL, '0', 'plain', '', '0', 'info');
INSERT INTO `wp_wc_admin_notes` VALUES('5', 'wc-admin-learn-more-about-variable-products', 'info', 'en_US', 'Learn more about variable products', 'Variable products are a powerful product type that lets you offer a set of variations on a product, with control over prices, stock, image and more for each variation. They can be used for a product like a shirt, where you can offer a large, medium and small and in different colors.', '{}', 'unactioned', 'woocommerce-admin', '2021-05-22 07:19:05', NULL, '0', 'plain', '', '0', 'info');
INSERT INTO `wp_wc_admin_notes` VALUES('6', 'wc-admin-test-checkout', 'info', 'en_US', 'Don\'t forget to test your checkout', 'Make sure that your checkout is working properly before you launch your store. Go through your checkout process in its entirety: from adding a product to your cart, choosing a shipping location, and making a payment.', '{}', 'unactioned', 'woocommerce-admin', '2021-05-22 07:48:40', NULL, '0', 'plain', '', '0', 'info');
INSERT INTO `wp_wc_admin_notes` VALUES('7', 'wc-admin-woocommerce-subscriptions', 'marketing', 'en_US', 'Do you need more info about WooCommerce Subscriptions?', 'WooCommerce Subscriptions allows you to introduce a variety of subscriptions for physical or virtual products and services. Create product-of-the-month clubs, weekly service subscriptions or even yearly software billing packages. Add sign-up fees, offer free trials, or set expiration periods.', '{}', 'unactioned', 'woocommerce-admin', '2021-05-23 06:42:32', NULL, '0', 'plain', '', '0', 'info');
INSERT INTO `wp_wc_admin_notes` VALUES('8', 'wc-admin-launch-checklist', 'info', 'en_US', 'Ready to launch your store?', 'To make sure you never get that sinking \"what did I forget\" feeling, we\'ve put together the essential pre-launch checklist.', '{}', 'unactioned', 'woocommerce-admin', '2021-05-23 06:42:32', NULL, '0', 'plain', '', '0', 'info');
INSERT INTO `wp_wc_admin_notes` VALUES('9', 'wc-admin-choosing-a-theme', 'marketing', 'en_US', 'Choosing a theme?', 'Check out the themes that are compatible with WooCommerce and choose one aligned with your brand and business needs.', '{}', 'unactioned', 'woocommerce-admin', '2021-05-23 06:42:32', NULL, '0', 'plain', '', '0', 'info');
INSERT INTO `wp_wc_admin_notes` VALUES('10', 'wc-admin-insight-first-product-and-payment', 'survey', 'en_US', 'Insight', 'More than 80% of new merchants add the first product and have at least one payment method set up during the first week.<br><br>Do you find this type of insight useful?', '{}', 'unactioned', 'woocommerce-admin', '2021-05-23 06:42:32', NULL, '0', 'plain', '', '0', 'info');
INSERT INTO `wp_wc_admin_notes` VALUES('11', 'wc-admin-first-downloadable-product', 'info', 'en_US', 'Learn more about digital/downloadable products', 'Congrats on adding your first digital product! You can learn more about how to handle digital or downloadable products in our documentation.', '{}', 'unactioned', 'woocommerce-admin', '2021-05-23 06:42:32', NULL, '0', 'plain', '', '0', 'info');
/*!40000 ALTER TABLE `wp_wc_admin_notes` ENABLE KEYS */;
SET FOREIGN_KEY_CHECKS = 1;
SET UNIQUE_CHECKS = 1;