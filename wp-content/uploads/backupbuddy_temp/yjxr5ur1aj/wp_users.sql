CREATE TABLE `wp_users` (  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',  `user_status` int(11) NOT NULL DEFAULT 0,  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',  PRIMARY KEY (`ID`),  KEY `user_login_key` (`user_login`),  KEY `user_nicename` (`user_nicename`),  KEY `user_email` (`user_email`)) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
SET FOREIGN_KEY_CHECKS = 0;
SET UNIQUE_CHECKS = 0;
INSERT INTO `wp_users` VALUES('1', 'fishsticks', '$P$BHeX.DqCYaH3tQnhbKB7MzDe/8GvIf.', 'fishsticks', 'fishstickzy@gmail.com', 'http://localhost/membershiptask', '2021-05-22 06:24:04', '', '0', 'fishsticks');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
SET FOREIGN_KEY_CHECKS = 1;
SET UNIQUE_CHECKS = 1;
