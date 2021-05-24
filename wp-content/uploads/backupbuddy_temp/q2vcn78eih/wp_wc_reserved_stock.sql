CREATE TABLE `wp_wc_reserved_stock` (  `order_id` bigint(20) NOT NULL,  `product_id` bigint(20) NOT NULL,  `stock_quantity` double NOT NULL DEFAULT 0,  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',  PRIMARY KEY (`order_id`,`product_id`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40000 ALTER TABLE `wp_wc_reserved_stock` DISABLE KEYS */;
SET FOREIGN_KEY_CHECKS = 0;
SET UNIQUE_CHECKS = 0;
/*!40000 ALTER TABLE `wp_wc_reserved_stock` ENABLE KEYS */;
SET FOREIGN_KEY_CHECKS = 1;
SET UNIQUE_CHECKS = 1;
