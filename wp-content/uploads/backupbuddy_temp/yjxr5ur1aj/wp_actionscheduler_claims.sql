CREATE TABLE `wp_actionscheduler_claims` (  `claim_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',  PRIMARY KEY (`claim_id`),  KEY `date_created_gmt` (`date_created_gmt`)) ENGINE=InnoDB AUTO_INCREMENT=1057 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` DISABLE KEYS */;
SET FOREIGN_KEY_CHECKS = 0;
SET UNIQUE_CHECKS = 0;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` ENABLE KEYS */;
SET FOREIGN_KEY_CHECKS = 1;
SET UNIQUE_CHECKS = 1;
