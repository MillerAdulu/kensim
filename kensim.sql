-- MySQL dump 10.16  Distrib 10.1.30-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: kensim
-- ------------------------------------------------------
-- Server version	10.1.30-MariaDB-0ubuntu0.17.10.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,NULL,1,'Category 1','category-1','2018-04-25 08:56:30','2018-04-25 08:56:30'),(2,NULL,1,'Category 2','category-2','2018-04-25 08:56:30','2018-04-25 08:56:30');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,'',1),(2,1,'name','text','Name',1,1,1,1,1,1,'',2),(3,1,'email','text','Email',1,1,1,1,1,1,'',3),(4,1,'password','password','Password',1,0,0,1,1,0,'',4),(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,'',5),(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,'',6),(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',7),(8,1,'avatar','image','Avatar',0,1,1,1,1,1,'',8),(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}',10),(10,1,'user_belongstomany_role_relationship','relationship','Roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),(11,1,'locale','text','Locale',0,1,1,1,1,0,'',12),(12,2,'id','number','ID',1,0,0,0,0,0,'',1),(13,2,'name','text','Name',1,1,1,1,1,1,'',2),(14,2,'created_at','timestamp','Created At',0,0,0,0,0,0,'',3),(15,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',4),(16,3,'id','number','ID',1,0,0,0,0,0,'',1),(17,3,'name','text','Name',1,1,1,1,1,1,'',2),(18,3,'created_at','timestamp','Created At',0,0,0,0,0,0,'',3),(19,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',4),(20,3,'display_name','text','Display Name',1,1,1,1,1,1,'',5),(21,1,'role_id','text','Role',1,1,1,1,1,1,'',9),(22,4,'id','number','ID',1,0,0,0,0,0,'',1),(23,4,'parent_id','select_dropdown','Parent',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),(24,4,'order','text','Order',1,1,1,1,1,1,'{\"default\":1}',3),(25,4,'name','text','Name',1,1,1,1,1,1,'',4),(26,4,'slug','text','Slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"name\"}}',5),(27,4,'created_at','timestamp','Created At',0,0,1,0,0,0,'',6),(28,4,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',7),(29,5,'id','number','ID',1,0,0,0,0,0,'',1),(30,5,'author_id','text','Author',1,0,1,1,0,1,'',2),(31,5,'category_id','text','Category',1,0,1,1,1,0,'',3),(32,5,'title','text','Title',1,1,1,1,1,1,'',4),(33,5,'excerpt','text_area','Excerpt',1,0,1,1,1,1,'',5),(34,5,'body','rich_text_box','Body',1,0,1,1,1,1,'',6),(35,5,'image','image','Post Image',0,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',7),(36,5,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}',8),(37,5,'meta_description','text_area','Meta Description',1,0,1,1,1,1,'',9),(38,5,'meta_keywords','text_area','Meta Keywords',1,0,1,1,1,1,'',10),(39,5,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}',11),(40,5,'created_at','timestamp','Created At',0,1,1,0,0,0,'',12),(41,5,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',13),(42,5,'seo_title','text','SEO Title',0,1,1,1,1,1,'',14),(43,5,'featured','checkbox','Featured',1,1,1,1,1,1,'',15),(44,6,'id','number','ID',1,0,0,0,0,0,'',1),(45,6,'author_id','text','Author',1,0,0,0,0,0,'',2),(46,6,'title','text','Title',1,1,1,1,1,1,'',3),(47,6,'excerpt','text_area','Excerpt',1,0,1,1,1,1,'',4),(48,6,'body','rich_text_box','Body',1,0,1,1,1,1,'',5),(49,6,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}',6),(50,6,'meta_description','text','Meta Description',1,0,1,1,1,1,'',7),(51,6,'meta_keywords','text','Meta Keywords',1,0,1,1,1,1,'',8),(52,6,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}',9),(53,6,'created_at','timestamp','Created At',1,1,1,0,0,0,'',10),(54,6,'updated_at','timestamp','Updated At',1,0,0,0,0,0,'',11),(55,6,'image','image','Page Image',0,1,1,1,1,1,'',12),(56,7,'id','text','Id',1,0,0,0,0,0,NULL,1),(57,7,'property_type','text','Property Type',1,1,1,1,1,1,NULL,2),(58,7,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,3),(59,7,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(60,7,'deleted_at','timestamp','Deleted At',0,1,1,1,1,1,NULL,5),(61,9,'id','text','Id',1,0,0,0,0,0,NULL,1),(62,9,'property_name','text','Property Name',1,1,1,1,1,1,NULL,2),(63,9,'location','text','Location',1,1,1,1,1,1,NULL,3),(64,9,'mode','radio_btn','Mode',1,1,1,1,1,1,'{\"options\":{\"0\":\"For Rent\",\"1\":\"For Sale\"}}',4),(65,9,'price','text','Price',1,1,1,1,1,1,NULL,5),(66,9,'Bedrooms','text','Bedrooms',1,1,1,1,1,1,NULL,6),(67,9,'Bathrooms','text','Bathrooms',1,1,1,1,1,1,NULL,7),(69,9,'property_type','select_dropdown','Property Type',1,1,1,1,1,1,NULL,9),(70,9,'featured_image','image','Featured Image',1,1,1,1,1,1,'{\"upsize\":true,\"thumbnails\":[{\"name\":\"view\",\"crop\":{\"width\":\"304\",\"height\":\"248\"}}]}',10),(72,9,'description','text_area','Description',1,1,1,1,1,1,NULL,12),(73,9,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,13),(74,9,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,14),(75,9,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,NULL,15),(76,9,'property_belongsto_type_relationship','relationship','types',0,1,1,1,1,1,'{\"model\":\"App\\\\Type\",\"table\":\"types\",\"type\":\"belongsTo\",\"column\":\"property_type\",\"key\":\"id\",\"label\":\"property_type\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}',16),(77,9,'gallery','multiple_images','Gallery',1,1,1,1,1,1,'{\"upsize\":true,\"thumbnails\":[{\"name\":\"normal\",\"crop\":{\"width\":\"850\",\"height\":\"570\"}}]}',11),(79,9,'size','text','Size',1,1,1,1,1,1,NULL,8),(80,9,'gps_coordinates','coordinates','Gps Coordinates',0,1,1,1,1,1,NULL,16),(81,10,'id','text','Id',1,0,0,0,0,0,NULL,1),(82,10,'name','text','Name',1,1,1,1,1,1,NULL,2),(83,10,'comment','text','Comment',1,1,1,1,1,1,NULL,3),(84,10,'profession','text','Profession',1,1,1,1,1,1,NULL,4),(85,10,'created_at','timestamp','Created At',0,0,1,0,0,1,NULL,5),(86,10,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,6);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','','',1,0,NULL,'2018-04-25 08:56:04','2018-04-25 08:56:04'),(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2018-04-25 08:56:04','2018-04-25 08:56:04'),(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'','',1,0,NULL,'2018-04-25 08:56:04','2018-04-25 08:56:04'),(4,'categories','categories','Category','Categories','voyager-categories','TCG\\Voyager\\Models\\Category',NULL,'','',1,0,NULL,'2018-04-25 08:56:30','2018-04-25 08:56:30'),(5,'posts','posts','Post','Posts','voyager-news','TCG\\Voyager\\Models\\Post','TCG\\Voyager\\Policies\\PostPolicy','','',1,0,NULL,'2018-04-25 08:56:30','2018-04-25 08:56:30'),(6,'pages','pages','Page','Pages','voyager-file-text','TCG\\Voyager\\Models\\Page',NULL,'','',1,0,NULL,'2018-04-25 08:56:30','2018-04-25 08:56:30'),(7,'types','types','Type','Types',NULL,'App\\Type',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null}','2018-04-25 09:27:41','2018-04-25 09:27:41'),(9,'properties','properties','Property','Properties',NULL,'App\\Property',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null}','2018-04-25 09:46:43','2018-04-25 09:46:43'),(10,'testimonials','testimonials','Testimonial','Testimonials',NULL,'App\\Testimonial',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null}','2018-06-04 06:21:26','2018-06-04 06:21:26');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eyewitness_io_history_monitors`
--

DROP TABLE IF EXISTS `eyewitness_io_history_monitors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eyewitness_io_history_monitors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `record` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eyewitness_io_history_monitors`
--

LOCK TABLES `eyewitness_io_history_monitors` WRITE;
/*!40000 ALTER TABLE `eyewitness_io_history_monitors` DISABLE KEYS */;
/*!40000 ALTER TABLE `eyewitness_io_history_monitors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eyewitness_io_history_queue`
--

DROP TABLE IF EXISTS `eyewitness_io_history_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eyewitness_io_history_queue` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue_id` int(10) unsigned NOT NULL,
  `pending_count` int(10) unsigned NOT NULL DEFAULT '0',
  `failed_count` int(10) unsigned NOT NULL DEFAULT '0',
  `exception_count` int(10) unsigned NOT NULL DEFAULT '0',
  `sonar_time` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `sonar_count` int(10) unsigned NOT NULL DEFAULT '0',
  `process_time` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `process_count` int(10) unsigned NOT NULL DEFAULT '0',
  `idle_time` int(10) unsigned NOT NULL DEFAULT '0',
  `sonar_deployed` int(11) DEFAULT NULL,
  `hour` int(11) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `eyewitness_io_history_queue_queue_id_index` (`queue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eyewitness_io_history_queue`
--

LOCK TABLES `eyewitness_io_history_queue` WRITE;
/*!40000 ALTER TABLE `eyewitness_io_history_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `eyewitness_io_history_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eyewitness_io_history_scheduler`
--

DROP TABLE IF EXISTS `eyewitness_io_history_scheduler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eyewitness_io_history_scheduler` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `scheduler_id` int(10) unsigned NOT NULL,
  `time_to_run` decimal(9,4) DEFAULT NULL,
  `exitcode` int(11) DEFAULT NULL,
  `output` text COLLATE utf8mb4_unicode_ci,
  `overdue` tinyint(1) NOT NULL DEFAULT '0',
  `expected_completion` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `eyewitness_io_history_scheduler_scheduler_id_index` (`scheduler_id`),
  KEY `eyewitness_io_history_scheduler_exitcode_index` (`exitcode`),
  KEY `eyewitness_io_history_scheduler_expected_completion_index` (`expected_completion`),
  KEY `eyewitness_io_history_scheduler_created_at_index` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eyewitness_io_history_scheduler`
--

LOCK TABLES `eyewitness_io_history_scheduler` WRITE;
/*!40000 ALTER TABLE `eyewitness_io_history_scheduler` DISABLE KEYS */;
/*!40000 ALTER TABLE `eyewitness_io_history_scheduler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eyewitness_io_notification_history`
--

DROP TABLE IF EXISTS `eyewitness_io_notification_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eyewitness_io_notification_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isError` tinyint(1) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `severity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci,
  `acknowledged` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `eyewitness_io_notification_history_type_index` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eyewitness_io_notification_history`
--

LOCK TABLES `eyewitness_io_notification_history` WRITE;
/*!40000 ALTER TABLE `eyewitness_io_notification_history` DISABLE KEYS */;
INSERT INTO `eyewitness_io_notification_history` VALUES (1,'Queue',1,'Your sync (sync) has a failed job!','Warning - your queue has a failed \"Laravel\\Scout\\Jobs\\MakeSearchable\" job. You can log into Eyewitness to view more about the failed job information.','medium','{\"Connection\":\"sync\",\"Queue\":\"sync\",\"Job\":\"Laravel\\\\Scout\\\\Jobs\\\\MakeSearchable\"}',0,'2018-05-11 06:51:57');
/*!40000 ALTER TABLE `eyewitness_io_notification_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eyewitness_io_notification_recipients`
--

DROP TABLE IF EXISTS `eyewitness_io_notification_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eyewitness_io_notification_recipients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `low` tinyint(1) NOT NULL DEFAULT '1',
  `medium` tinyint(1) NOT NULL DEFAULT '1',
  `high` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `eyewitness_io_notification_recipients_type_index` (`type`),
  KEY `eyewitness_io_notification_recipients_low_index` (`low`),
  KEY `eyewitness_io_notification_recipients_medium_index` (`medium`),
  KEY `eyewitness_io_notification_recipients_high_index` (`high`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eyewitness_io_notification_recipients`
--

LOCK TABLES `eyewitness_io_notification_recipients` WRITE;
/*!40000 ALTER TABLE `eyewitness_io_notification_recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `eyewitness_io_notification_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eyewitness_io_notification_severities`
--

DROP TABLE IF EXISTS `eyewitness_io_notification_severities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eyewitness_io_notification_severities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notification` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `severity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `eyewitness_io_notification_severities_namespace_index` (`namespace`),
  KEY `eyewitness_io_notification_severities_notification_index` (`notification`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eyewitness_io_notification_severities`
--

LOCK TABLES `eyewitness_io_notification_severities` WRITE;
/*!40000 ALTER TABLE `eyewitness_io_notification_severities` DISABLE KEYS */;
INSERT INTO `eyewitness_io_notification_severities` VALUES (1,'Scheduler','Fast','medium'),(2,'Scheduler','Slow','medium'),(3,'Scheduler','Missed','high'),(4,'Scheduler','Overdue','high'),(5,'Scheduler','Error','high'),(6,'Scheduler','Working','high'),(7,'DNS','Change','low'),(8,'SSL','GradeChange','medium'),(9,'SSL','Expiring','low'),(10,'SSL','Invalid','high'),(11,'SSL','Revoked','high'),(12,'Debug','Enabled','high'),(13,'Debug','Disabled','high'),(14,'Composer','Safe','medium'),(15,'Composer','Risk','medium'),(16,'Database','Offline','high'),(17,'Database','Online','high'),(18,'Database','SizeOk','low'),(19,'Database','SizeLarge','low'),(20,'Database','SizeSmall','low'),(21,'Queue','Failed','medium'),(22,'Queue','Offline','high'),(23,'Queue','Online','high'),(24,'Queue','FailedCountExceeded','medium'),(25,'Queue','FailedCountOk','medium'),(26,'Queue','PendingCountExceeded','medium'),(27,'Queue','PendingCountOk','medium'),(28,'Queue','WaitLong','medium'),(29,'Queue','WaitOk','medium'),(30,'Custom','Passed','medium'),(31,'Custom','Failed','medium');
/*!40000 ALTER TABLE `eyewitness_io_notification_severities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eyewitness_io_queues`
--

DROP TABLE IF EXISTS `eyewitness_io_queues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eyewitness_io_queues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `connection` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tube` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_wait_time` decimal(8,2) NOT NULL DEFAULT '0.00',
  `healthy` tinyint(1) DEFAULT NULL,
  `alert_on_failed_job` tinyint(1) NOT NULL DEFAULT '1',
  `alert_heartbeat_greater_than` int(11) NOT NULL DEFAULT '120',
  `alert_pending_jobs_greater_than` int(11) NOT NULL DEFAULT '0',
  `alert_failed_jobs_greater_than` int(11) NOT NULL DEFAULT '0',
  `alert_wait_time_greater_than` int(11) NOT NULL DEFAULT '0',
  `last_heartbeat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `eyewitness_io_queues_healthy_index` (`healthy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eyewitness_io_queues`
--

LOCK TABLES `eyewitness_io_queues` WRITE;
/*!40000 ALTER TABLE `eyewitness_io_queues` DISABLE KEYS */;
/*!40000 ALTER TABLE `eyewitness_io_queues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eyewitness_io_schedulers`
--

DROP TABLE IF EXISTS `eyewitness_io_schedulers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eyewitness_io_schedulers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `schedule` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `command` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timezone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `without_overlapping` tinyint(1) NOT NULL DEFAULT '0',
  `run_in_background` tinyint(1) NOT NULL DEFAULT '0',
  `on_one_server` tinyint(1) NOT NULL DEFAULT '0',
  `mutex` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `healthy` tinyint(1) DEFAULT NULL,
  `next_run_due` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `next_check_due` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `alert_on_missed` tinyint(1) NOT NULL DEFAULT '1',
  `alert_on_fail` tinyint(1) NOT NULL DEFAULT '1',
  `alert_run_time_greater_than` int(11) NOT NULL DEFAULT '0',
  `alert_run_time_less_than` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `eyewitness_io_schedulers_mutex_unique` (`mutex`),
  KEY `eyewitness_io_schedulers_command_index` (`command`),
  KEY `eyewitness_io_schedulers_healthy_index` (`healthy`),
  KEY `eyewitness_io_schedulers_next_run_due_index` (`next_run_due`),
  KEY `eyewitness_io_schedulers_next_check_due_index` (`next_check_due`),
  KEY `eyewitness_io_schedulers_alert_on_missed_index` (`alert_on_missed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eyewitness_io_schedulers`
--

LOCK TABLES `eyewitness_io_schedulers` WRITE;
/*!40000 ALTER TABLE `eyewitness_io_schedulers` DISABLE KEYS */;
/*!40000 ALTER TABLE `eyewitness_io_schedulers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eyewitness_io_statuses`
--

DROP TABLE IF EXISTS `eyewitness_io_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eyewitness_io_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `monitor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `healthy` tinyint(1) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eyewitness_io_statuses`
--

LOCK TABLES `eyewitness_io_statuses` WRITE;
/*!40000 ALTER TABLE `eyewitness_io_statuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `eyewitness_io_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2018-04-25 08:56:05','2018-04-25 08:56:05','voyager.dashboard',NULL),(2,1,'Media','','_self','voyager-images',NULL,NULL,5,'2018-04-25 08:56:05','2018-04-25 08:56:05','voyager.media.index',NULL),(3,1,'Users','','_self','voyager-person',NULL,NULL,3,'2018-04-25 08:56:05','2018-04-25 08:56:05','voyager.users.index',NULL),(4,1,'Roles','','_self','voyager-lock',NULL,NULL,2,'2018-04-25 08:56:05','2018-04-25 08:56:05','voyager.roles.index',NULL),(5,1,'Tools','','_self','voyager-tools',NULL,NULL,9,'2018-04-25 08:56:05','2018-04-25 08:56:05',NULL,NULL),(6,1,'Menu Builder','','_self','voyager-list',NULL,5,10,'2018-04-25 08:56:05','2018-04-25 08:56:05','voyager.menus.index',NULL),(7,1,'Database','','_self','voyager-data',NULL,5,11,'2018-04-25 08:56:05','2018-04-25 08:56:05','voyager.database.index',NULL),(8,1,'Compass','','_self','voyager-compass',NULL,5,12,'2018-04-25 08:56:05','2018-04-25 08:56:05','voyager.compass.index',NULL),(9,1,'Settings','','_self','voyager-settings',NULL,NULL,14,'2018-04-25 08:56:05','2018-04-25 08:56:05','voyager.settings.index',NULL),(10,1,'Hooks','','_self','voyager-hook',NULL,5,13,'2018-04-25 08:56:05','2018-04-25 08:56:05','voyager.hooks',NULL),(11,1,'Categories','','_self','voyager-categories',NULL,NULL,8,'2018-04-25 08:56:30','2018-04-25 08:56:30','voyager.categories.index',NULL),(12,1,'Posts','','_self','voyager-news',NULL,NULL,6,'2018-04-25 08:56:30','2018-04-25 08:56:30','voyager.posts.index',NULL),(13,1,'Pages','','_self','voyager-file-text',NULL,NULL,7,'2018-04-25 08:56:31','2018-04-25 08:56:31','voyager.pages.index',NULL),(14,1,'Types','','_self',NULL,NULL,NULL,15,'2018-04-25 09:27:42','2018-04-25 09:27:42','voyager.types.index',NULL),(15,1,'Properties','','_self',NULL,NULL,NULL,16,'2018-04-25 09:46:43','2018-04-25 09:46:43','voyager.properties.index',NULL),(16,1,'Testimonials','','_self',NULL,NULL,NULL,17,'2018-06-04 06:21:26','2018-06-04 06:21:26','voyager.testimonials.index',NULL);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2018-04-25 08:56:05','2018-04-25 08:56:05');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_01_000000_add_voyager_user_fields',1),(4,'2016_01_01_000000_create_data_types_table',1),(5,'2016_01_01_000000_create_pages_table',1),(6,'2016_01_01_000000_create_posts_table',1),(7,'2016_02_15_204651_create_categories_table',1),(8,'2016_05_19_173453_create_menu_table',1),(9,'2016_10_21_190000_create_roles_table',1),(10,'2016_10_21_190000_create_settings_table',1),(11,'2016_11_30_135954_create_permission_table',1),(12,'2016_11_30_141208_create_permission_role_table',1),(13,'2016_12_26_201236_data_types__add__server_side',1),(14,'2017_01_13_000000_add_route_to_menu_items_table',1),(15,'2017_01_14_005015_create_translations_table',1),(16,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(17,'2017_03_06_000000_add_controller_to_data_types_table',1),(18,'2017_04_11_000000_alter_post_nullable_fields_table',1),(19,'2017_04_21_000000_add_order_to_data_rows_table',1),(20,'2017_07_05_210000_add_policyname_to_data_types_table',1),(21,'2017_08_05_000000_add_group_to_settings_table',1),(22,'2017_11_26_013050_add_user_role_relationship',1),(23,'2017_11_26_015000_create_user_roles_table',1),(24,'2018_03_11_000000_add_user_settings',1),(25,'2018_03_14_000000_add_details_to_data_types_table',1),(26,'2018_03_16_000000_make_settings_value_nullable',1),(27,'2018_04_28_123026_create_categories_table',2),(28,'2018_04_28_123026_create_data_rows_table',2),(29,'2018_04_28_123026_create_data_types_table',2),(30,'2018_04_28_123026_create_menu_items_table',2),(31,'2018_04_28_123026_create_menus_table',2),(32,'2018_04_28_123026_create_pages_table',2),(33,'2018_04_28_123026_create_password_resets_table',2),(34,'2018_04_28_123026_create_permission_role_table',2),(35,'2018_04_28_123026_create_permissions_table',2),(36,'2018_04_28_123026_create_posts_table',2),(37,'2017_12_01_000001_create_eyewitness_io_statuses_table',3),(38,'2017_12_01_000002_create_eyewitness_io_history_monitors_table',3),(39,'2017_12_01_000003_create_eyewitness_io_notification_recipients_table',3),(40,'2017_12_01_000004_create_eyewitness_io_notification_severities_table',3),(41,'2017_12_01_000005_create_eyewitness_io_notification_history_table',3),(42,'2017_12_01_000006_create_eyewitness_io_schedulers_table',3),(43,'2017_12_01_000007_create_eyewitness_io_history_scheduler_table',3),(44,'2017_12_01_000008_create_eyewitness_io_queues_table',3),(45,'2017_12_01_000009_create_eyewitness_io_history_queue_table',3),(46,'2018_05_09_160412_create_jobs_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,'Hello World','Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.','<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','pages/page1.jpg','hello-world','Yar Meta Description','Keyword1, Keyword2','ACTIVE','2018-04-25 08:56:31','2018-04-25 08:56:31');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2018-04-25 08:56:05','2018-04-25 08:56:05'),(2,'browse_bread',NULL,'2018-04-25 08:56:05','2018-04-25 08:56:05'),(3,'browse_database',NULL,'2018-04-25 08:56:05','2018-04-25 08:56:05'),(4,'browse_media',NULL,'2018-04-25 08:56:05','2018-04-25 08:56:05'),(5,'browse_compass',NULL,'2018-04-25 08:56:05','2018-04-25 08:56:05'),(6,'browse_menus','menus','2018-04-25 08:56:05','2018-04-25 08:56:05'),(7,'read_menus','menus','2018-04-25 08:56:05','2018-04-25 08:56:05'),(8,'edit_menus','menus','2018-04-25 08:56:05','2018-04-25 08:56:05'),(9,'add_menus','menus','2018-04-25 08:56:05','2018-04-25 08:56:05'),(10,'delete_menus','menus','2018-04-25 08:56:05','2018-04-25 08:56:05'),(11,'browse_roles','roles','2018-04-25 08:56:05','2018-04-25 08:56:05'),(12,'read_roles','roles','2018-04-25 08:56:05','2018-04-25 08:56:05'),(13,'edit_roles','roles','2018-04-25 08:56:05','2018-04-25 08:56:05'),(14,'add_roles','roles','2018-04-25 08:56:05','2018-04-25 08:56:05'),(15,'delete_roles','roles','2018-04-25 08:56:05','2018-04-25 08:56:05'),(16,'browse_users','users','2018-04-25 08:56:05','2018-04-25 08:56:05'),(17,'read_users','users','2018-04-25 08:56:05','2018-04-25 08:56:05'),(18,'edit_users','users','2018-04-25 08:56:05','2018-04-25 08:56:05'),(19,'add_users','users','2018-04-25 08:56:05','2018-04-25 08:56:05'),(20,'delete_users','users','2018-04-25 08:56:05','2018-04-25 08:56:05'),(21,'browse_settings','settings','2018-04-25 08:56:05','2018-04-25 08:56:05'),(22,'read_settings','settings','2018-04-25 08:56:05','2018-04-25 08:56:05'),(23,'edit_settings','settings','2018-04-25 08:56:05','2018-04-25 08:56:05'),(24,'add_settings','settings','2018-04-25 08:56:05','2018-04-25 08:56:05'),(25,'delete_settings','settings','2018-04-25 08:56:05','2018-04-25 08:56:05'),(26,'browse_hooks',NULL,'2018-04-25 08:56:05','2018-04-25 08:56:05'),(27,'browse_categories','categories','2018-04-25 08:56:30','2018-04-25 08:56:30'),(28,'read_categories','categories','2018-04-25 08:56:30','2018-04-25 08:56:30'),(29,'edit_categories','categories','2018-04-25 08:56:30','2018-04-25 08:56:30'),(30,'add_categories','categories','2018-04-25 08:56:30','2018-04-25 08:56:30'),(31,'delete_categories','categories','2018-04-25 08:56:30','2018-04-25 08:56:30'),(32,'browse_posts','posts','2018-04-25 08:56:30','2018-04-25 08:56:30'),(33,'read_posts','posts','2018-04-25 08:56:30','2018-04-25 08:56:30'),(34,'edit_posts','posts','2018-04-25 08:56:30','2018-04-25 08:56:30'),(35,'add_posts','posts','2018-04-25 08:56:30','2018-04-25 08:56:30'),(36,'delete_posts','posts','2018-04-25 08:56:30','2018-04-25 08:56:30'),(37,'browse_pages','pages','2018-04-25 08:56:31','2018-04-25 08:56:31'),(38,'read_pages','pages','2018-04-25 08:56:31','2018-04-25 08:56:31'),(39,'edit_pages','pages','2018-04-25 08:56:31','2018-04-25 08:56:31'),(40,'add_pages','pages','2018-04-25 08:56:31','2018-04-25 08:56:31'),(41,'delete_pages','pages','2018-04-25 08:56:31','2018-04-25 08:56:31'),(42,'browse_types','types','2018-04-25 09:27:42','2018-04-25 09:27:42'),(43,'read_types','types','2018-04-25 09:27:42','2018-04-25 09:27:42'),(44,'edit_types','types','2018-04-25 09:27:42','2018-04-25 09:27:42'),(45,'add_types','types','2018-04-25 09:27:42','2018-04-25 09:27:42'),(46,'delete_types','types','2018-04-25 09:27:42','2018-04-25 09:27:42'),(47,'browse_properties','properties','2018-04-25 09:46:43','2018-04-25 09:46:43'),(48,'read_properties','properties','2018-04-25 09:46:43','2018-04-25 09:46:43'),(49,'edit_properties','properties','2018-04-25 09:46:43','2018-04-25 09:46:43'),(50,'add_properties','properties','2018-04-25 09:46:43','2018-04-25 09:46:43'),(51,'delete_properties','properties','2018-04-25 09:46:43','2018-04-25 09:46:43'),(52,'browse_testimonials','testimonials','2018-06-04 06:21:26','2018-06-04 06:21:26'),(53,'read_testimonials','testimonials','2018-06-04 06:21:26','2018-06-04 06:21:26'),(54,'edit_testimonials','testimonials','2018-06-04 06:21:26','2018-06-04 06:21:26'),(55,'add_testimonials','testimonials','2018-06-04 06:21:26','2018-06-04 06:21:26'),(56,'delete_testimonials','testimonials','2018-06-04 06:21:26','2018-06-04 06:21:26');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,1,1,'Small Living Room Ideas to Make the Most of Your Space',NULL,'looking for great tips to furnish your living room? This article might just be what you are looking for.','<p style=\"box-sizing: border-box; text-rendering: optimizeLegibility; -webkit-font-smoothing: antialiased; margin: 0px 0px 30px; max-width: 100%; font-size: 16px; line-height: 28px; color: #343434; font-family: gotham_bookregular;\">Many small living room ideas revolve around tricking the eye into making the area appear more spacious. Such strategies can transform an area that feels cramped and claustrophobic into one that feels cozy and aesthetically pleasing. Decorate in a way that maximizes light and space, and pay attention to how you use color, scale and weight. It can make quite a difference.</p>\r\n<p style=\"box-sizing: border-box; text-rendering: optimizeLegibility; -webkit-font-smoothing: antialiased; margin: 0px 0px 30px; max-width: 100%; font-size: 16px; line-height: 28px; color: #343434; font-family: gotham_bookregular;\">It&rsquo;s interesting to try new things. Sometimes traditional ideas about living room decor aren&rsquo;t the best solution for a small space. Instead of using blinds for window treatments, use long, flowing drapes because they draw attention to vertical space, thus expanding the area of the room.</p>\r\n<p>&nbsp;</p>\r\n<div class=\"freshome-attachment\" style=\"box-sizing: border-box; text-rendering: optimizeLegibility; -webkit-font-smoothing: antialiased; max-width: 100%; position: relative; margin: 0px 0px 30px; color: #333333; font-family: proxima_nova_rgregular;\">&nbsp;</div>\r\n<p>&nbsp;</p>\r\n<p style=\"box-sizing: border-box; text-rendering: optimizeLegibility; -webkit-font-smoothing: antialiased; margin: 0px 0px 30px; max-width: 100%; font-size: 16px; line-height: 28px; color: #343434; font-family: gotham_bookregular; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Your living room, regardless of size, should be able to function as a space for relaxation and entertaining. Here are some of our favorite ways to make it feel more spacious.</p>\r\n<h2 style=\"box-sizing: border-box; text-rendering: optimizeLegibility; -webkit-font-smoothing: antialiased; font-family: gotham_mediumregular; font-weight: 500; line-height: 1.1; color: #4a4a4a; margin: 0px 0px 30px; font-size: 24px; max-width: 100%;\">Decorate with Mirrors</h2>\r\n<p style=\"box-sizing: border-box; text-rendering: optimizeLegibility; -webkit-font-smoothing: antialiased; margin: 0px 0px 30px; max-width: 100%; font-size: 16px; line-height: 28px; color: #343434; font-family: gotham_bookregular;\">Designers often place mirrors strategically in small places in order to make them feel larger. One of the most common small living room ideas is to hang a large mirror in a central location to create a focal point. To reflect light and add a nice ambiance, put it behind a light source such as a candle or pendant lamp. If possible, position a mirror across from your window so it will reflect the view and give the illusion of another window.</p>\r\n<h2 style=\"box-sizing: border-box; text-rendering: optimizeLegibility; -webkit-font-smoothing: antialiased; font-family: gotham_mediumregular; font-weight: 500; line-height: 1.1; color: #4a4a4a; margin: 0px 0px 30px; font-size: 24px; max-width: 100%;\">Draw the Eye Upward</h2>\r\n<p style=\"box-sizing: border-box; text-rendering: optimizeLegibility; -webkit-font-smoothing: antialiased; margin: 0px 0px 30px; max-width: 100%; font-size: 16px; line-height: 28px; color: #343434; font-family: gotham_bookregular;\">A room has a vertical dimension as well as a horizontal one. If your living room has a high ceiling, make the most of the extra space by decorating it in a manner that draws the eye upward. Floor-to-ceiling drapes are a stylish way to accomplish this goal.</p>\r\n<p style=\"box-sizing: border-box; text-rendering: optimizeLegibility; -webkit-font-smoothing: antialiased; margin: 0px 0px 30px; max-width: 100%; font-size: 16px; line-height: 28px; color: #343434; font-family: gotham_bookregular;\">Another idea is to fill the vertical space with a menagerie of small to midsize artwork. This technique will make the room feel larger than it actually is, because it invites the eye to roam beyond the eye-level horizontal space that may feel confined.</p>\r\n<h2 style=\"box-sizing: border-box; text-rendering: optimizeLegibility; -webkit-font-smoothing: antialiased; font-family: gotham_mediumregular; font-weight: 500; line-height: 1.1; color: #4a4a4a; margin: 0px 0px 30px; font-size: 24px; max-width: 100%;\">Choose Furniture with a Lightweight Appearance</h2>\r\n<p style=\"box-sizing: border-box; text-rendering: optimizeLegibility; -webkit-font-smoothing: antialiased; margin: 0px 0px 30px; max-width: 100%; font-size: 16px; line-height: 28px; color: #343434; font-family: gotham_bookregular;\">When you shop for furniture, consider its visual weight. This concept refers to the perceived heaviness of an object based on size, color and design. Pick out pieces that have a lightweight appearance, as heavier ones will seem to constrict a space.</p>\r\n<p style=\"box-sizing: border-box; text-rendering: optimizeLegibility; -webkit-font-smoothing: antialiased; margin: 0px 0px 30px; max-width: 100%; font-size: 16px; line-height: 28px; color: #343434; font-family: gotham_bookregular;\">Opt for pale colors over darker ones, and select pieces that have legs while avoiding those that are boxy. Glass&nbsp;coffee or end tables will take up less visual space than wooden ones because you&nbsp;can see&nbsp;through them. Any furnishings that don&rsquo;t obstruct views will make an area seem more open.</p>','posts/May2018/ClRN8Uu59OyXYE0wyvYB.jpg','small-living-room-ideas-to-make-the-most-of-your-space','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2018-04-25 08:56:30','2018-05-28 10:08:18');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `properties`
--

DROP TABLE IF EXISTS `properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `properties` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `property_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `location` text COLLATE utf8_unicode_ci NOT NULL,
  `mode` text COLLATE utf8_unicode_ci NOT NULL,
  `price` bigint(20) NOT NULL DEFAULT '0',
  `Bedrooms` smallint(6) NOT NULL DEFAULT '1',
  `Bathrooms` smallint(6) NOT NULL DEFAULT '1',
  `size` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `property_type` text COLLATE utf8_unicode_ci NOT NULL,
  `featured_image` text COLLATE utf8_unicode_ci NOT NULL,
  `gallery` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `gps_coordinates` geometry DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `properties`
--

LOCK TABLES `properties` WRITE;
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
INSERT INTO `properties` VALUES (1,'EdenVille','Kiambu Road','1',16000000,4,4,'5000ft','2','properties/June2018/UJsESbyyCbGkLHWDOBjd.jpg','[\"properties\\/April2018\\/2GY5EoshMwC6waHCa4MH.jpg\",\"properties\\/June2018\\/IKD25LzWfMlDvIxrXH4h.jpg\",\"properties\\/June2018\\/hnc4mmAjCqELsCdDD2No.jpeg\"]','Features:\r\n- 4 bedrooms both with Servants quarter.\r\n- Spacious living room and dining area.','2018-04-25 10:04:46','2018-06-04 06:32:43',NULL,'\0\0\0\0\0\0\0—≤IŸ}fB@j4“u<Ùø'),(2,'Kilimani Homes','Kiambu Road','0',90000,4,4,'4000','1','properties/June2018/hPhMfX14g0KEUYaAyhOr.jpg','[\"properties\\/April2018\\/OrE1ETriwM2T4KkUPXSs.jpg\",\"properties\\/June2018\\/EmB8uTE1Bd0j8130AmND.jpg\"]','Features\r\nCategory:\r\nTo Let	\r\nType:\r\nHouse	\r\nBeds:\r\n3\r\n\r\nLocation\r\nRequest more Details ‚ñ∫\r\nEmail to a Friend ‚ñ∫','2018-04-25 10:11:49','2018-06-04 06:33:45',NULL,'\0\0\0\0\0\0\0—≤IŸ}fB@j4“u<Ùø'),(3,'Mushroom Blue Apartments','Village inn','1',30000000,5,7,'5500ft','2','properties/June2018/8vWLcXsQT38U05tKynwL.jpg','[\"properties\\/April2018\\/59Kmc3d1SP4h9i0xobR4.jpeg\",\"properties\\/June2018\\/rrcZUPLcHoCcJvTk6qUc.jpeg\"]','Mushroom draws from the African culture of society living and is planned to create small communities. Architectural flair is tempered with a keen eye for the environment to create an atmosphere basking in natural greenery. When complete, Mushrom Blue will provide an elegant lifestyle for its dwellers complete with recreational areas, playgrounds, community centers, shops and offices.','2018-04-28 16:49:43','2018-06-04 06:34:43',NULL,'\0\0\0\0\0\0\0—≤IŸ}fB@j4“u<Ùø'),(4,'Suraya Suites','BY pass Ruiru','1',30000000,5,5,'2500 ft','4','properties/June2018/FBSHwtQsL4TLS0t50Kir.jpg','[\"properties\\/April2018\\/PS5yaa7vmn8RXTzmILu2.jpeg\",\"properties\\/June2018\\/IEeDAuozGTz0MvQxIcoZ.jpg\",\"properties\\/June2018\\/POwAxNusXnQ5Nie6Dryj.jpeg\"]','Niiiice','2018-04-30 04:29:15','2018-06-04 06:35:38',NULL,'\0\0\0\0\0\0\0—≤IŸ}fB@j4“u<Ùø'),(5,'white view','nairobi','0',100000,3,4,'2500 ft','1','properties/May2018/Fo76pxnC6rt63s4NvVNf.jpg','[\"properties\\/May2018\\/HkS5YErsPpISDnvhHByc.jpg\"]','niiiice','2018-05-14 05:33:26','2018-05-14 05:33:26',NULL,'\0\0\0\0\0\0\0î≤IYÒcB@Ñ3¿∏™mÙø'),(6,'Karen Fair Acres Houses','Karen','1',95000000,4,4,'1 Acre','1','properties/May2018/GIr4J8ZUeoj41DNlFNZ8.jpg','[\"properties\\/May2018\\/xeE2ItO1Wj3PRwyo1PYB.jpg\"]','A stunning luxuriously finished 3 bed plus DSQ apartment in Kileleshwa.\r\nThe apartment offers a well-proportioned living space.\r\nFeatures include :\r\nGym\r\nWell lit lounge and separate dining.\r\nElegant american open plan kitchen with inbuilt plenty of cupboards.\r\nThe bedroom wing comprises of 3 over sized bedrooms all ensuite and all with balconies.\r\nSelf contained servant quarter.\r\nFinishes incorporate wood parquet floors in the living area, colored ceramic tiles in the wet areas and granite tops in the kitchen. Extras include lifts, back-up generator for both common ares and inside the houses, borehole , basement parking and electric fence, 24 hour security, internet connections, club house, ample parking, and well equipped gym.\r\nLocated near major shopping malls, schools and hospitals.\r\nCall for viewing!','2018-05-27 13:12:13','2018-05-27 13:12:13',NULL,'\0\0\0\0\0\0\0§≤Ii_B@ÄH,ë»ıø'),(8,'Ami Suites','Karen Area','1',80000000,5,6,'500 m2','4','properties/May2018/tunBwKYIYJRCm7SxEEJr.jpg','[\"properties\\/May2018\\/nszfVs4tbljRFruPJzpD.jpg\",\"properties\\/May2018\\/IwfuFGVjKBrY7zTt1aEO.jpg\",\"properties\\/May2018\\/ByWajreMoklIuisZNHDo.jpg\",\"properties\\/May2018\\/W4uzrBJ2ZTe1lwRLhvwc.jpg\",\"properties\\/May2018\\/ETn9ZlU2dMbU3bEkUnDt.jpg\"]','5 bedroom all ensuite townhouse in a gated community of 10 units.\r\nMaster bedroom with walk-in closet, balcony &\r\nJacuzzi\r\n‚Ä¢ Lobby\r\n‚Ä¢ Lounge ‚Ä¢ Family room ‚Ä¢ TV room ‚Ä¢ Study & Office room ‚Ä¢ Dining Room ‚Ä¢ Fitted kitchen from Germany ‚Ä¢ Public Balcony ‚Ä¢ Two DSQ ‚Ä¢ Laundry Yard ‚Ä¢ Solar heater ‚Ä¢ Ample parking lot for 3 cars ‚Ä¢ Executive high-end finishes\r\nThe gorgeous Golden Oak villa is an absolute peaceful\r\nresidential setup only ten minutes‚Äô walk from the main street\r\nof the langata - Karen road, with easy access to Galleria and\r\nKaren Shopping malls which both have many restaurants,\r\nshops, SPAs, entertainment centers and great hotels. In\r\nthe same area are International Schools, such as Nairobi\r\nacademy and Hillcrest. Proximity to Karen hospital and\r\nreligious centres also makes it the ideal living location.\r\nThe name of the villa speaks for itself - you can enjoy amazing\r\nsunsets without ever having to leave your own home. Modern\r\ntropical architecture and minimalistic interiors provide no\r\ndistraction from the breathtaking forest views and the\r\nsurrounding landscape making it an ideal place for a family\r\nhome, vacation, as well as for a romantic getaway or a fun holiday with friends.\r\nPlenty of parking for each unit. ‚Ä¢ Club house having recreational ammenities such as\r\nSwimming pool, steam bath, Gym, Shower rooms,\r\nChanging room & bar.\r\n‚Ä¢ Borehole ‚Ä¢ Power back up generator ‚Ä¢ CCTV surveillance 24/7\r\nAvailable Immidiately. Call for viewing.','2018-05-27 13:28:07','2018-05-27 13:28:07',NULL,'\0\0\0\0\0\0\0ı≤IŸ{YB@è£Á“	ˆÙø'),(9,'Akiba Villes','Mugoya','0',140000,4,4,'60 sq. ft','1','properties/May2018/ovVCwgbYJFQdFVRUSFCy.jpg','[\"properties\\/May2018\\/mV5XiSd5tkrrwQDRbLzy.jpg\",\"properties\\/May2018\\/kZ0B7YcD3F4a31B2oHnz.jpg\",\"properties\\/May2018\\/m01CYMr2knmPtWjFKOxZ.jpg\"]','In a bustling suburb with easy access by bus or bike to the best shopping, schools and recreation. The marvelous Mulberry apartments are located in the leafy suburban area of Lavington, King\'ara road; Mulberry Apartments offers you elegance in an apartment. The 4 bedroom all en-suite penthouse plus a DSQ with a separate entrance is versed with an open plan kitchen. Finishes comprise imported quality furniture, gypsum ceilings with recessed lights, laminated floors, fitted kitchen, luxurious shower cubical and many more high end fittings.\r\n\r\nThe pent house not only offers 24/7 security but also has an electric fence, 2 cabro paved parking slots. Other amenities include backup generator, optional borehole water, high speed lifts and proximity to facilities like vehicle car wash, Braeburn and Makini School and a 5 minute drive to the Nakumatt junction.','2018-05-27 15:49:55','2018-05-27 15:49:55',NULL,'\0\0\0\0\0\0\0—≤IŸ}fB@j4“u<Ùø'),(10,'Mulberry Apartments','Lavington','0',150000,4,5,'230 sq. ft','1','properties/May2018/UP6mv7ERBb1wMA97Uck2.jpg','[\"properties\\/May2018\\/zsWOkyLAFaQohJziYl6G.jpg\",\"properties\\/May2018\\/lHreXckeBQf41ra9nK5S.jpg\"]','In a bustling suburb with easy access by bus or bike to the best shopping, schools and recreation. The marvelous Mulberry apartments are located in the leafy suburban area of Lavington, King\'ara road; Mulberry Apartments offers you elegance in an apartment. The 4 bedroom all en-suite penthouse plus a DSQ with a separate entrance is versed with an open plan kitchen. Finishes comprise imported quality furniture, gypsum ceilings with recessed lights, laminated floors, fitted kitchen, luxurious shower cubical and many more high end fittings.\r\n\r\nThe pent house not only offers 24/7 security but also has an electric fence, 2 cabro paved parking slots. Other amenities include backup generator, optional borehole water, high speed lifts and proximity to facilities like vehicle car wash, Braeburn and Makini School and a 5 minute drive to the Nakumatt junction.','2018-05-27 16:21:12','2018-05-27 16:21:12',NULL,'\0\0\0\0\0\0\0˜≤I}†cB@QÀÀùdÙø'),(11,'Westlands Town House','Westlands Grivellea','0',350000000,4,5,'500 m2','4','properties/May2018/weshAR1rNskClT0Z5yjj.jpg','[\"properties\\/May2018\\/IM9Xykpr896sx2MYQryi.jpg\",\"properties\\/May2018\\/UiWuTZzpSqzLwW24vDOw.jpg\"]','This development is an exquisite 4bedroom townhouse all ensuite at Taj Prestige at the serene location of Grivellea Groove Westlands.\r\n\r\n\r\nSecure gated community of 18 townhouses with a swimming pool, garden/green area, playing ground and sufficient parking.\r\n\r\n\r\nThis beautiful fully furnished residence also comes with;\r\n\r\n- Two lounges\r\n\r\n- Family room\r\n\r\n- Rooftop terrace\r\n\r\n- A backyard\r\n\r\nLetting @ Kshs. 350,000/= per month','2018-05-27 16:37:52','2018-05-27 16:37:52',NULL,'\0\0\0\0\0\0\0—≤IŸ}fB@j4“u<Ùø'),(12,'Outspan Homes','Loower Kabete','1',15000000,6,6,'1000 m2','3','properties/May2018/RApfNgxpmPYXSwqQgJ8z.jpg','[\"properties\\/May2018\\/GFNPDwXISe9JVaeSSqMg.jpg\",\"properties\\/May2018\\/34ByUc7aXoz9Hpjljj2X.jpg\"]','The beautiful furnished house is primely located opposite along the United Nations Avenue, with beautiful mature gardens, providing the comfort of an excellent neighborhood.\r\n\r\nThe home comprises of a welcoming entry porch, country style fireplace both in the study and living room, spacious two lounges, a bright and airy kitchen and a formal dining room, with the guest bedroom (ensuite) and guest bathroom on the main ground floor. The upper floor consists of two ensuite, high ceiling bedrooms and a master bedroom with walk in closets.  The basement area can be converted into a TV room or a study.\r\n\r\nFinishes include wooden parquet flooring and ceramic tiles on the wet area, unique light fittings and ample closet and storage space.\r\n\r\nExtras include SQ for 2, ample parking, garden, extra water tanks, power back-up, UN security compliant, garden, fire place and a high perimeter wall.','2018-05-27 16:58:59','2018-05-27 16:58:59',NULL,'\0\0\0\0\0\0\0´≤I	ÈaB@ÑCÄŒDÎÛø'),(13,'Homeland','Kasarani','1',50000000,4,6,'600 m2','5','properties/May2018/flTA7TzZEsZ5le3BIc7R.jpg','[\"properties\\/May2018\\/4YqdB5WMxzgT3xz15irL.jpg\",\"properties\\/May2018\\/R8Zrle9QGZhEdOsqFGXL.jpg\"]','Fine living bungalow with a garden and swimming pool. Located at Complex View Estate Kasarani Exit 7,off Thika Road Mall.Very cool environment for raising up kids. Facilities such as Safaricom Kasarani Stadium are located nearby. There are also schools and hospitals in the area.','2018-05-28 01:59:56','2018-05-28 01:59:56',NULL,'\0\0\0\0\0\0\0—≤IŸ}fB@j4“u<Ùø');
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrator','2018-04-25 08:56:05','2018-04-25 08:56:05'),(2,'user','Normal User','2018-04-25 08:56:05','2018-04-25 08:56:05');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site.title','Site Title','Site Title','','text',1,'Site'),(2,'site.description','Site Description','Site Description','','text',2,'Site'),(3,'site.logo','Site Logo','','','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID','','','text',4,'Site'),(5,'admin.bg_image','Admin Background Image','','','image',5,'Admin'),(6,'admin.title','Admin Title','Voyager','','text',1,'Admin'),(7,'admin.description','Admin Description','Welcome to Voyager. The Missing Admin for Laravel','','text',2,'Admin'),(8,'admin.loader','Admin Loader','','','image',3,'Admin'),(9,'admin.icon_image','Admin Icon Image','','','image',4,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)','','','text',1,'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testimonials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `profession` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (1,'Miller','These are awesome listings.','Software Developer','2018-06-04 06:22:00','2018-06-04 06:22:00'),(2,'Anna','Very efficient search for properties.','Fashion','2018-06-04 06:22:37','2018-06-04 06:22:37'),(3,'Caroline','Beautifully designed.','UI/Developer','2018-06-04 06:23:24','2018-06-04 06:23:24'),(4,'Ken','Very fast services','N/A','2018-06-04 06:23:43','2018-06-04 06:23:43');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES (1,'data_types','display_name_singular',5,'pt','Post','2018-04-25 08:56:31','2018-04-25 08:56:31'),(2,'data_types','display_name_singular',6,'pt','P√°gina','2018-04-25 08:56:31','2018-04-25 08:56:31'),(3,'data_types','display_name_singular',1,'pt','Utilizador','2018-04-25 08:56:31','2018-04-25 08:56:31'),(4,'data_types','display_name_singular',4,'pt','Categoria','2018-04-25 08:56:31','2018-04-25 08:56:31'),(5,'data_types','display_name_singular',2,'pt','Menu','2018-04-25 08:56:31','2018-04-25 08:56:31'),(6,'data_types','display_name_singular',3,'pt','Fun√ß√£o','2018-04-25 08:56:31','2018-04-25 08:56:31'),(7,'data_types','display_name_plural',5,'pt','Posts','2018-04-25 08:56:31','2018-04-25 08:56:31'),(8,'data_types','display_name_plural',6,'pt','P√°ginas','2018-04-25 08:56:31','2018-04-25 08:56:31'),(9,'data_types','display_name_plural',1,'pt','Utilizadores','2018-04-25 08:56:31','2018-04-25 08:56:31'),(10,'data_types','display_name_plural',4,'pt','Categorias','2018-04-25 08:56:31','2018-04-25 08:56:31'),(11,'data_types','display_name_plural',2,'pt','Menus','2018-04-25 08:56:31','2018-04-25 08:56:31'),(12,'data_types','display_name_plural',3,'pt','Fun√ß√µes','2018-04-25 08:56:31','2018-04-25 08:56:31'),(13,'categories','slug',1,'pt','categoria-1','2018-04-25 08:56:31','2018-04-25 08:56:31'),(14,'categories','name',1,'pt','Categoria 1','2018-04-25 08:56:31','2018-04-25 08:56:31'),(15,'categories','slug',2,'pt','categoria-2','2018-04-25 08:56:31','2018-04-25 08:56:31'),(16,'categories','name',2,'pt','Categoria 2','2018-04-25 08:56:31','2018-04-25 08:56:31'),(17,'pages','title',1,'pt','Ol√° Mundo','2018-04-25 08:56:31','2018-04-25 08:56:31'),(18,'pages','slug',1,'pt','ola-mundo','2018-04-25 08:56:31','2018-04-25 08:56:31'),(19,'pages','body',1,'pt','<p>Ol√° Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','2018-04-25 08:56:31','2018-04-25 08:56:31'),(20,'menu_items','title',1,'pt','Painel de Controle','2018-04-25 08:56:31','2018-04-25 08:56:31'),(21,'menu_items','title',2,'pt','Media','2018-04-25 08:56:31','2018-04-25 08:56:31'),(22,'menu_items','title',12,'pt','Publica√ß√µes','2018-04-25 08:56:31','2018-04-25 08:56:31'),(23,'menu_items','title',3,'pt','Utilizadores','2018-04-25 08:56:31','2018-04-25 08:56:31'),(24,'menu_items','title',11,'pt','Categorias','2018-04-25 08:56:31','2018-04-25 08:56:31'),(25,'menu_items','title',13,'pt','P√°ginas','2018-04-25 08:56:31','2018-04-25 08:56:31'),(26,'menu_items','title',4,'pt','Fun√ß√µes','2018-04-25 08:56:31','2018-04-25 08:56:31'),(27,'menu_items','title',5,'pt','Ferramentas','2018-04-25 08:56:31','2018-04-25 08:56:31'),(28,'menu_items','title',6,'pt','Menus','2018-04-25 08:56:31','2018-04-25 08:56:31'),(29,'menu_items','title',7,'pt','Base de dados','2018-04-25 08:56:31','2018-04-25 08:56:31'),(30,'menu_items','title',9,'pt','Configura√ß√µes','2018-04-25 08:56:31','2018-04-25 08:56:31');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `property_type` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types`
--

LOCK TABLES `types` WRITE;
/*!40000 ALTER TABLE `types` DISABLE KEYS */;
INSERT INTO `types` VALUES (1,'Apartment','2018-04-25 09:28:22','2018-04-25 09:28:22',NULL),(2,'Bungalow','2018-04-25 09:28:37','2018-04-25 09:28:37',NULL),(3,'Condos','2018-04-25 09:28:46','2018-04-25 09:28:46',NULL),(4,'Town House','2018-04-25 09:28:59','2018-04-25 09:28:59',NULL),(5,'Villa','2018-04-25 09:29:15','2018-04-25 09:29:15',NULL),(6,'Double Storey','2018-04-25 09:29:34','2018-04-25 09:29:34',NULL);
/*!40000 ALTER TABLE `types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'Admin','admin@admin.com','users/default.png','$2y$10$zAOeoZLDvtmgSN.s5RiP.Om8Sf9VpACFuO.XN.xB/HoNNJQCIw0Me','aHeuLLCmk1S3oWtcvyyrbLR08NWzAi65477UQdzfiFv0ayhHnTMvxMKnt7th',NULL,'2018-04-25 08:56:30','2018-04-25 08:56:30');
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

-- Dump completed on 2018-10-05 14:55:09
