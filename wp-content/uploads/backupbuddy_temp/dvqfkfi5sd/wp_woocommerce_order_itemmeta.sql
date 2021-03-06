CREATE TABLE `wp_woocommerce_order_itemmeta` (  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,  `order_item_id` bigint(20) unsigned NOT NULL,  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,  PRIMARY KEY (`meta_id`),  KEY `order_item_id` (`order_item_id`),  KEY `meta_key` (`meta_key`(32))) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40000 ALTER TABLE `wp_woocommerce_order_itemmeta` DISABLE KEYS */;
SET FOREIGN_KEY_CHECKS = 0;
SET UNIQUE_CHECKS = 0;
/*!40000 ALTER TABLE `wp_woocommerce_order_itemmeta` ENABLE KEYS */;
SET FOREIGN_KEY_CHECKS = 1;
SET UNIQUE_CHECKS = 1;
