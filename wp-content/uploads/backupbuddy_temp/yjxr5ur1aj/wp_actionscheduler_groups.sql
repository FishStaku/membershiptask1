CREATE TABLE `wp_actionscheduler_groups` (  `group_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,  PRIMARY KEY (`group_id`),  KEY `slug` (`slug`(191))) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40000 ALTER TABLE `wp_actionscheduler_groups` DISABLE KEYS */;
SET FOREIGN_KEY_CHECKS = 0;
SET UNIQUE_CHECKS = 0;
INSERT INTO `wp_actionscheduler_groups` VALUES('1', 'action-scheduler-migration');
/*!40000 ALTER TABLE `wp_actionscheduler_groups` ENABLE KEYS */;
SET FOREIGN_KEY_CHECKS = 1;
SET UNIQUE_CHECKS = 1;
