CREATE TABLE `wp_term_relationships` (  `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,  `term_order` int(11) NOT NULL DEFAULT 0,  PRIMARY KEY (`object_id`,`term_taxonomy_id`),  KEY `term_taxonomy_id` (`term_taxonomy_id`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
SET FOREIGN_KEY_CHECKS = 0;
SET UNIQUE_CHECKS = 0;
INSERT INTO `wp_term_relationships` VALUES('1', '1', '0');
INSERT INTO `wp_term_relationships` VALUES('27', '2', '0');
INSERT INTO `wp_term_relationships` VALUES('27', '16', '0');
INSERT INTO `wp_term_relationships` VALUES('27', '17', '0');
INSERT INTO `wp_term_relationships` VALUES('28', '2', '0');
INSERT INTO `wp_term_relationships` VALUES('28', '16', '0');
INSERT INTO `wp_term_relationships` VALUES('28', '17', '0');
INSERT INTO `wp_term_relationships` VALUES('29', '2', '0');
INSERT INTO `wp_term_relationships` VALUES('29', '16', '0');
INSERT INTO `wp_term_relationships` VALUES('29', '17', '0');
INSERT INTO `wp_term_relationships` VALUES('49', '2', '0');
INSERT INTO `wp_term_relationships` VALUES('50', '2', '0');
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
SET FOREIGN_KEY_CHECKS = 1;
SET UNIQUE_CHECKS = 1;
