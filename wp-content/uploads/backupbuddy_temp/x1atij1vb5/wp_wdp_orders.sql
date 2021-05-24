CREATE TABLE `wp_wdp_orders` (  `id` int(11) NOT NULL AUTO_INCREMENT,  `order_id` int(11) NOT NULL,  `rule_id` int(11) NOT NULL,  `amount` decimal(50,2) DEFAULT 0.00,  `qty` int(11) DEFAULT 0,  `extra` decimal(50,2) DEFAULT 0.00,  `shipping` decimal(50,2) DEFAULT 0.00,  `is_free_shipping` tinyint(1) DEFAULT 0,  `gifted_amount` decimal(50,2) DEFAULT 0.00,  `gifted_qty` int(11) DEFAULT 0,  `date` datetime DEFAULT NULL,  PRIMARY KEY (`id`),  UNIQUE KEY `order_id` (`order_id`,`rule_id`),  KEY `rule_id` (`rule_id`),  KEY `date` (`date`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40000 ALTER TABLE `wp_wdp_orders` DISABLE KEYS */;
SET FOREIGN_KEY_CHECKS = 0;
SET UNIQUE_CHECKS = 0;
/*!40000 ALTER TABLE `wp_wdp_orders` ENABLE KEYS */;
SET FOREIGN_KEY_CHECKS = 1;
SET UNIQUE_CHECKS = 1;
