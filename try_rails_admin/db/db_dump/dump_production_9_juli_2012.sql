-- MySQL dump 10.13  Distrib 5.5.24, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: portfolioapps_production
-- ------------------------------------------------------
-- Server version	5.5.24-0ubuntu0.12.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `api_callers`
--

DROP TABLE IF EXISTS `api_callers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_callers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_callers`
--

LOCK TABLES `api_callers` WRITE;
/*!40000 ALTER TABLE `api_callers` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_callers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_file_size` int(11) DEFAULT NULL,
  `file_updated_at` datetime DEFAULT NULL,
  `parent_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ticket_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comments_ticket_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
INSERT INTO `assets` VALUES (1,'Epiware.pdf','application/pdf',331951,'2012-07-04 07:12:18','','2012-07-04 07:12:25','2012-07-04 07:12:25','AssetsProduct','9','',''),(2,'Fedena_Features_.pdf','application/pdf',2442499,'2012-07-04 07:14:57','','2012-07-04 07:15:06','2012-07-04 07:15:06','AssetsProduct','1','',''),(3,'eFront_Features.ppt.pdf','application/pdf',3037542,'2012-07-04 07:17:24','','2012-07-04 07:17:35','2012-07-04 07:17:35','AssetsProduct','2','',''),(4,'Locanda.pdf','application/pdf',461592,'2012-07-04 07:19:32','','2012-07-04 07:19:39','2012-07-04 07:19:39','AssetsProduct','10','',''),(5,'Vtiger_Features.pdf','application/pdf',1443006,'2012-07-04 07:24:42','','2012-07-04 07:24:50','2012-07-04 07:24:50','AssetsProduct','3','',''),(6,'ReOS_Features.pdf','application/pdf',571868,'2012-07-04 07:28:04','','2012-07-04 07:28:11','2012-07-04 07:28:11','AssetsProduct','4','',''),(7,'magento.pdf','application/pdf',1288861,'2012-07-04 07:29:27','','2012-07-04 07:29:38','2012-07-04 07:29:38','AssetsProduct','5','',''),(8,'mySeat.pdf','application/pdf',543082,'2012-07-04 07:30:07','','2012-07-04 07:30:15','2012-07-04 07:30:15','AssetsProduct','6','',''),(9,'Floreant-POS.pdf','application/pdf',268941,'2012-07-04 07:30:39','','2012-07-04 07:30:47','2012-07-04 07:30:47','AssetsProduct','7','',''),(10,'social-stream.pdf','application/pdf',1563493,'2012-07-04 07:32:56','','2012-07-04 07:33:05','2012-07-04 07:33:05','AssetsProduct','11','',''),(11,'Medical_MS.pdf','application/pdf',6108403,'2012-07-04 07:34:55','','2012-07-04 07:35:13','2012-07-04 07:35:13','AssetsProduct','8','',''),(12,'ResourceSpace.pdf','application/pdf',281645,'2012-07-06 04:10:05','','2012-07-06 04:10:14','2012-07-06 04:10:14','AssetsProduct','12','','');
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets_comments`
--

DROP TABLE IF EXISTS `assets_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assets_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets_comments`
--

LOCK TABLES `assets_comments` WRITE;
/*!40000 ALTER TABLE `assets_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `assets_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets_products`
--

DROP TABLE IF EXISTS `assets_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assets_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets_products`
--

LOCK TABLES `assets_products` WRITE;
/*!40000 ALTER TABLE `assets_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `assets_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets_tickets`
--

DROP TABLE IF EXISTS `assets_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assets_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets_tickets`
--

LOCK TABLES `assets_tickets` WRITE;
/*!40000 ALTER TABLE `assets_tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `assets_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Training / Learning Management','2012-06-14 04:50:13','2012-07-05 09:28:01'),(2,'Real Estate Agent Management','2012-06-14 04:53:55','2012-07-05 09:31:32'),(3,'Ecommerce','2012-06-14 04:56:12','2012-06-14 04:56:12'),(4,'CRM','2012-06-14 04:56:29','2012-06-14 04:56:29'),(5,'Restaurant','2012-06-21 02:22:28','2012-06-21 02:22:28'),(6,'Healthcare Management','2012-06-25 02:40:33','2012-07-05 09:31:58'),(7,'Document Management','2012-06-26 02:11:31','2012-07-05 09:31:12'),(8,'Hotel Management','2012-06-28 06:24:14','2012-07-05 09:30:37'),(9,'Social Networking','2012-06-28 09:06:03','2012-06-28 09:06:03'),(10,'University Management','2012-07-05 09:28:49','2012-07-05 09:28:49'),(11,'Knowledge Management','2012-07-05 09:29:23','2012-07-05 09:29:23'),(12,'Shipping Crew Management','2012-07-05 09:30:01','2012-07-05 09:30:01'),(13,'Property Management','2012-07-05 09:32:20','2012-07-05 09:32:57'),(14,'Distribution Management System','2012-07-05 09:33:22','2012-07-05 09:33:22'),(15,'POS, Inventory, Finance','2012-07-05 09:33:55','2012-07-05 09:33:55'),(16,'Government','2012-07-05 09:34:15','2012-07-05 09:34:15'),(17,'Business Intelligence','2012-07-05 09:34:51','2012-07-05 09:34:51'),(18,'Digital Asset management','2012-07-06 04:08:27','2012-07-06 04:08:27');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments_tickets`
--

DROP TABLE IF EXISTS `comments_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ticket_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments_tickets`
--

LOCK TABLES `comments_tickets` WRITE;
/*!40000 ALTER TABLE `comments_tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `priorities`
--

DROP TABLE IF EXISTS `priorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `priorities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `priorities`
--

LOCK TABLES `priorities` WRITE;
/*!40000 ALTER TABLE `priorities` DISABLE KEYS */;
INSERT INTO `priorities` VALUES (1,'Highest','2012-06-22 07:36:21','2012-06-22 07:36:21'),(2,'High','2012-06-22 07:36:30','2012-06-22 07:36:30'),(3,'Normal','2012-06-22 07:36:46','2012-06-22 07:36:46'),(4,'Low','2012-06-22 07:37:07','2012-06-22 07:37:07');
/*!40000 ALTER TABLE `priorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `photo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_file_size` int(11) DEFAULT NULL,
  `video_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Fedena','10','2012-06-14 06:18:27','2012-07-05 09:46:25','http://demo.projectfedena.org/','Aplikasi untuk campus / school management includes:\r\n\r\n- Academic\r\n- Scheduling\r\n- Attendance Students & Employees\r\n- HRM\r\n- Finance\r\n- Campus News\r\n- Student\'s Reminder\r\n\r\nTest Account:\r\n\r\n- Admin : admin/admin123\r\n- Student: 1/1123\r\n- Employee E1/E1123','app_fedena_logo.jpg','image/jpeg',18799,''),(2,'Efront','1','2012-06-14 06:34:48','2012-07-05 09:48:20','http://efront.portfolioapps.net/','Training and Course Management\r\n\r\nTest Account:\r\n\r\n\"- admin: 1234\r\n- student : 1234\r\n- professor : 1234\r\n','logo.png','image/png',6101,''),(3,'Vtiger','4','2012-06-14 06:42:53','2012-06-14 10:21:45','http://crm.portfolioapps.net/','Test Account: <br />\r\n\r\nadmin : 12345678','vtiger-crm-logo.gif','image/gif',3966,'http://www.youtube.com/watch?v=XgRlTHyJKg4'),(4,'ReOS','2','2012-06-14 06:45:49','2012-06-14 09:36:30','http://realestate.portfolioapps.net/padmin','User Roles: Admin, Customer <br /> <br />\r\nTest Account : <br />\r\n\r\nAdmin: admin/admin','reos.png','image/png',2776,''),(5,'Magentoo','3','2012-06-14 06:48:01','2012-07-03 02:42:21','http://ecommerce.portfolioapps.net/admin','Test Account:\r\n\r\nAdmin : admin/admin1234','logo.gif','image/gif',2106,''),(6,'mySeat','5','2012-06-21 02:41:19','2012-06-22 04:47:04','http://restaurant.portfolioapps.net/PLC/index.php ','Aplikasi pemesanan tempat untuk restoran atau hotel secara online.\r\nUser : Admin  Pass : Admin1234\r\nhttps://openmyseat.com/demo/PLC/index.php','logo.png','image/png',7123,''),(7,'Floreant POS','5','2012-06-21 08:03:24','2012-06-21 08:03:24','( not available - java desktop app )','POS yang dirancang untuk resturant <br />\r\nDibuat dengan Java<br />\r\nDemo user: 123/123\r\n','mr_logo.png','image/png',1557,''),(8,'Care 2x ','6','2012-06-25 02:47:10','2012-06-25 02:50:05','hospital.portfolioapps.net','Software yang memiliki fitur untuk Rumah Sakit, Apotik, Klinik dan Dokter Umum Pribadi. <br /><br />\r\nTest Account: admin/admin1234','care_logo.png','image/png',4094,''),(9,'Epiware','7','2012-06-26 02:14:21','2012-07-02 03:40:03','http://document.portfolioapps.net','Aplikasi yang digunakan untuk memanage dokumen \r\nUser : admin\r\nPass: admin1234 ','epiware_logo_shadow.gif','image/gif',3777,''),(10,'Locanda','8','2012-06-28 06:19:14','2012-07-02 06:30:54','http://locanda.co.cc/locanda/','Aplikasi untuk mengatur room, facilities, order/ booking dan customer booking kamar hotel online. <br />\r\nUser : feby.a@wgs.co.id\r\npass : locanda','logo_locanda.png','image/png',82824,''),(11,'Social Stream','9','2012-06-28 09:08:44','2012-06-28 09:08:44','http://demo-social-stream.dit.upm.es/','Aplikasi social networking open source yang dibuat dengan Ruby on rails <br /> <br />\r\n\r\nemail: feby.a@wgs.co.id\r\npassword: password','ss.png','image/png',5747,''),(12,'ResourceSpace','18','2012-07-06 04:07:56','2012-07-06 04:09:06','http://digitalasset.portfolioapps.net/','Aplikasi untuk memanage digital (video, audio,document,photo) asset\r\nusername :admin\r\npass         : admin',NULL,NULL,NULL,'');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rails_admin_histories`
--

DROP TABLE IF EXISTS `rails_admin_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rails_admin_histories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text COLLATE utf8_unicode_ci,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item` int(11) DEFAULT NULL,
  `table` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `month` smallint(6) DEFAULT NULL,
  `year` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_rails_admin_histories` (`item`,`table`,`month`,`year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rails_admin_histories`
--

LOCK TABLES `rails_admin_histories` WRITE;
/*!40000 ALTER TABLE `rails_admin_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `rails_admin_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin'),(2,'Sales');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20120607074205'),('20120607074723'),('20120607074725'),('20120607081658'),('20120607081804'),('20120607084656'),('20120607092251'),('20120611064344'),('20120613075753'),('20120614032257'),('20120614034006'),('20120615064208'),('20120620032706'),('20120620035045'),('20120620053124'),('20120620082332'),('20120621070022'),('20120626044204'),('20120627065642'),('20120627074316'),('20120627074337'),('20120627074401'),('20120627083239'),('20120628024609'),('20120704064653');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statuses`
--

DROP TABLE IF EXISTS `statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statuses`
--

LOCK TABLES `statuses` WRITE;
/*!40000 ALTER TABLE `statuses` DISABLE KEYS */;
INSERT INTO `statuses` VALUES (1,'Open','2012-06-22 07:37:29','2012-06-22 07:39:04'),(2,'On Progress','2012-06-22 07:37:42','2012-06-22 07:38:48'),(3,'Resolved','2012-06-22 07:38:10','2012-06-22 07:38:10'),(4,'Closed','2012-06-22 07:38:22','2012-06-22 07:38:22');
/*!40000 ALTER TABLE `statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `short_summary` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `full_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `assign_to_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (1,'Test Ticket','<p>Test 123</p>','1','1','1','1','2012-06-22 07:40:27','2012-06-22 07:40:27');
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`),
  KEY `index_users_on_role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','Admin',NULL,'2012-06-13 09:58:14','2012-06-13 09:58:14','feby.a@wgs.co.id','$2a$10$iJQRMpyCQEVeHVNZoE9bjej23pBTnXYU6k0cMDMS7DUuGchEVVdNe',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'1'),(5,'niko.p.k@qorser.com','Niko Perdana',NULL,'2012-06-14 08:46:19','2012-06-14 08:46:19','niko.p.k@qorser.com','$2a$10$5umW3QUcQ8E3L6T.O3hJ8ezvjD04i9c.PyBPMD9XY7iKJPm0JG3YS',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'1'),(6,'desi','Desi Dian',NULL,'2012-06-18 02:43:28','2012-06-18 02:43:28','desi.dian@w-appstore.com','$2a$10$0noTk1sKrykI9r27EgcbuOYVN9ufI.pZBKFRaeWCBKOxi.EZ8LxaO',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'1'),(7,'Ani','Ani',NULL,'2012-06-18 02:45:02','2012-06-18 02:45:02','ani@appschef.com','$2a$10$9n0gKK660tweAdn4oq7g2O6mYTPNJF7MFL0JuIoYX7273.UN0TsLi',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'1'),(8,'paskal','Yohanes Paskal',NULL,'2012-06-18 09:01:25','2012-06-19 02:45:34','y.paskal@kiranatama.com','$2a$10$1qukiX0B2lHWXgakP1rmP.UJRT841/f9vKxzoJIVe100ArfibsVJW',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2'),(9,'aria','Aria',NULL,'2012-06-19 02:49:13','2012-06-19 02:57:04','aria.w@wgs.co.id','$2a$10$Mqz1sXHK1bxTGhzBg.dco.XZDKryAeHcfWEEEhf4i6Mv1iyGCgsJG',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2'),(10,'grace','Grace',NULL,'2012-06-19 03:38:58','2012-06-19 03:38:58','grace.natalia@kiranatama.com','$2a$10$zBbAQkG2zIIJfwXwpYZ7jesRRZEfG5rNsE.3kz84cdHS2GIiJJw3m',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'1'),(11,'adi.r','Adi Rian',NULL,'2012-06-22 06:20:57','2012-06-22 06:20:57','adi.rian@kiranatama.com','$2a$10$C2Q.r/m6nngLI5DteF/EmOr42H8JpgTbCiq5c9OwuJG2jCLjYNoz.',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2'),(12,'ari.patria','Ari Patria',NULL,'2012-06-22 06:22:50','2012-06-22 06:22:50','ari.patria@wgs.co.id','$2a$10$zVl2jr34dJANi5Qpwj77OOujY88kZb1bIb9VQ/40V7YO8XwimV4Uq',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2'),(13,'thomas','Thomas Muliawan',NULL,'2012-06-22 06:24:25','2012-06-22 06:24:25','thomas.m@wgs.co.id ','$2a$10$rHVHyv.QrvPa6c5OfV7/lOznOle5vPENb/AfVFPZQsua8.9b41mim',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2'),(14,'william','William Notowidagdo',NULL,'2012-06-22 06:28:00','2012-06-22 06:28:00','william@kiranatama.com','$2a$10$6bhW1O9EOIq5yrlnqy4aNOVqEvqexRxbQHDKRI2ANAhkmEerR8Xty',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2'),(15,'ikin','Ikin Wirawan',NULL,'2012-06-22 06:28:50','2012-06-22 06:28:50','ikin.w@wgs.co.id','$2a$10$up2VRVGihhArf6RWf1Y0j.WCW9MuMr95GYL1FYx4luW70rrqyeVVu',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'1'),(16,'frangky','Frangky Pangalila',NULL,'2012-07-04 02:48:04','2012-07-04 02:50:07','frangki.p@wgs.co.id ','$2a$10$TwevR0vABNS6WKZGN0wPZOwq.N9jQ6GRQqFWxdPlANyqYOK1itduS',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-07-10 10:08:26
