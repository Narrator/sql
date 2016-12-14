-- MySQL dump 10.13  Distrib 5.5.50, for debian-linux-gnu (x86_64)
--
-- Host: 0.0.0.0    Database: c9
-- ------------------------------------------------------
-- Server version	5.5.50-0ubuntu0.14.04.1

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
-- Table structure for table `adresses`
--

DROP TABLE IF EXISTS `adresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adresses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `street_adress` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zip_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isBilling` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `adresses_user_id_index` (`user_id`),
  CONSTRAINT `adresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adresses`
--

LOCK TABLES `adresses` WRITE;
/*!40000 ALTER TABLE `adresses` DISABLE KEYS */;
INSERT INTO `adresses` VALUES (2,'2016-11-16 10:12:41','2016-11-16 10:12:41',2,'Kaushik','+ 044 (22) 22-22-2222','315 S Hester Street Apt 317','STILLWATER','Michoacán','74074',0),(12,'2016-12-03 20:42:45','2016-12-03 20:42:45',1,'Alejandro','+ 044 (99) 82-38-1590','716 N Husband Apt 5 ','Cancun','Quintana Roo','77500',1),(13,'2016-12-03 20:46:14','2016-12-03 20:46:14',1,'Alejandro','+ 044 (99) 81-68-7621','716 N Husband Apt 5 ','Cancun','Quintana Roo','77500',0),(14,'2016-12-08 00:25:09','2016-12-08 00:25:09',7,'Alejandro Carstens','+ 044 (99) 81-68-7621','Av. Antonio E. Savignac Lt.1 SM.4B Mz.1  Isla del Sol El Table Depto. 101','Cacnun','Quintana Roo','77500',0);
/*!40000 ALTER TABLE `adresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `department_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_department_id_index` (`department_id`),
  CONSTRAINT `categories_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Calceteria',1,'2016-11-16 01:00:01','2016-11-16 01:00:01'),(2,'Camisas',1,'2016-11-19 01:35:47','2016-11-19 01:35:47'),(3,'Ropa Interior',1,'2016-11-19 01:53:24','2016-11-19 01:53:24'),(4,'Shorts',1,'2016-11-19 01:53:43','2016-11-19 01:53:43'),(5,'Pantalones',1,'2016-11-19 01:54:03','2016-11-19 01:54:03'),(6,'Ropa Interior Damas',2,'2016-11-20 02:10:08','2016-11-20 02:10:08'),(7,'medias ninas',4,'2016-11-22 00:59:24','2016-11-22 00:59:31');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colorpics`
--

DROP TABLE IF EXISTS `colorpics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colorpics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `color_id` int(10) unsigned NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `colorpics_color_id_index` (`color_id`),
  CONSTRAINT `colorpics_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colorpics`
--

LOCK TABLES `colorpics` WRITE;
/*!40000 ALTER TABLE `colorpics` DISABLE KEYS */;
INSERT INTO `colorpics` VALUES (1,'2016-11-16 01:06:56','2016-11-16 01:06:56',1,'/colors/images/1479258416HNS_29223_GoldRedAssortment_sw.jpg'),(2,'2016-11-16 01:07:26','2016-11-16 01:07:26',2,'/colors/images/1479258446HNS_29223_GoldRedAssortment_sw.jpg'),(3,'2016-11-16 01:08:16','2016-11-16 01:08:16',3,'/colors/images/1479258496HNS_29223_RedGoldAssortment_sw.jpg'),(4,'2016-11-16 01:08:52','2016-11-16 01:08:52',4,'/colors/images/1479258532HNS_29223_RedOrangeAssortment_sw.jpg'),(5,'2016-11-16 01:09:20','2016-11-16 01:09:20',5,'/colors/images/1479258560HNS_29223_RedOrangeAssortment_sw.jpg'),(6,'2016-11-16 01:10:53','2016-11-16 01:10:53',6,'/colors/images/1479258653HNS_123647_White_sw.jpg'),(7,'2016-11-16 01:11:14','2016-11-16 01:11:14',7,'/colors/images/1479258674HNS_123647_Black_sw.jpg'),(8,'2016-11-16 01:13:41','2016-11-16 01:13:41',8,'/colors/images/1479258674HNS_123647_Black_sw.jpg'),(9,'2016-11-16 01:15:21','2016-11-16 01:15:21',9,'/colors/images/1479258653HNS_123647_White_sw.jpg'),(10,'2016-11-16 01:19:02','2016-11-16 01:19:02',10,'/colors/images/1479258674HNS_123647_Black_sw.jpg'),(11,'2016-11-16 01:20:04','2016-11-16 01:20:04',11,'/colors/images/1479258653HNS_123647_White_sw.jpg'),(12,'2016-11-16 01:21:41','2016-11-16 01:21:41',12,'/colors/images/1479258674HNS_123647_Black_sw.jpg'),(13,'2016-11-20 02:11:25','2016-11-20 02:11:25',13,'/colors/images/1479258653HNS_123647_White_sw.jpg'),(14,'2016-11-22 01:02:32','2016-11-22 01:02:32',14,'/colors/images/1479776552HNS_115784_SoftTaupe_sw.jpg'),(15,'2016-11-22 01:02:59','2016-11-22 01:02:59',15,'/colors/images/1479776579HNS_115784_Natural_sw.jpg'),(18,'2016-11-26 04:36:08','2016-11-26 04:36:08',17,'/colors/images/1479258653HNS_123647_White_sw.jpg'),(19,'2016-11-26 04:44:53','2016-11-26 04:44:53',18,'/colors/images/1479258653HNS_123647_White_sw.jpg'),(20,'2016-11-26 04:48:35','2016-11-26 04:48:35',19,'/colors/images/1479258674HNS_123647_Black_sw.jpg'),(21,'2016-11-26 04:53:20','2016-11-26 04:53:20',20,'/colors/images/1479258674HNS_123647_Black_sw.jpg'),(22,'2016-11-26 04:55:36','2016-11-26 04:55:36',21,'/colors/images/1479258674HNS_123647_Black_sw.jpg'),(24,'2016-11-26 05:05:04','2016-11-26 05:05:04',23,'/colors/images/1479258653HNS_123647_White_sw.jpg'),(27,'2016-11-28 02:56:11','2016-11-28 02:56:11',22,'/colors/images/14803017711477266120HNS_6307_Yellow_sw.jpg');
/*!40000 ALTER TABLE `colorpics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `line_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `colors_line_id_index` (`line_id`),
  CONSTRAINT `colors_line_id_foreign` FOREIGN KEY (`line_id`) REFERENCES `lines` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (1,'2016-11-16 01:06:33','2016-11-16 01:06:33',5,'Azul Amarillo'),(2,'2016-11-16 01:07:13','2016-11-16 01:07:13',5,'Azul Verde'),(3,'2016-11-16 01:08:08','2016-11-16 01:08:08',3,'Azul Gris'),(4,'2016-11-16 01:08:44','2016-11-16 01:08:44',2,'Azul Rojo'),(5,'2016-11-16 01:09:14','2016-11-16 01:09:14',1,'azul naranja'),(6,'2016-11-16 01:10:46','2016-11-16 01:10:46',4,'Blanco'),(7,'2016-11-16 01:11:09','2016-11-16 01:11:09',4,'Negro'),(8,'2016-11-16 01:13:41','2016-11-16 01:13:41',6,'negro'),(9,'2016-11-16 01:15:21','2016-11-16 01:15:21',7,'blanco'),(10,'2016-11-16 01:19:02','2016-11-16 01:19:02',8,'negro'),(11,'2016-11-16 01:20:04','2016-11-16 01:20:04',9,'blanco'),(12,'2016-11-16 01:21:41','2016-11-16 01:21:41',10,'negro'),(13,'2016-11-20 02:11:25','2016-11-20 02:11:25',11,'blanco'),(14,'2016-11-22 01:01:52','2016-11-22 01:01:52',12,'cafe'),(15,'2016-11-22 01:02:52','2016-11-22 01:02:52',12,'natural'),(17,'2016-11-26 04:36:08','2016-11-26 04:36:08',14,'blanco'),(18,'2016-11-26 04:44:53','2016-11-26 04:44:53',15,'blanco'),(19,'2016-11-26 04:48:35','2016-11-26 04:48:35',16,'negro'),(20,'2016-11-26 04:53:20','2016-11-26 04:53:20',17,'negro'),(21,'2016-11-26 04:55:36','2016-11-26 04:55:36',18,'negro'),(22,'2016-11-26 05:04:30','2016-11-26 05:04:30',18,'blanco'),(23,'2016-11-26 05:05:04','2016-11-26 05:05:04',17,'blanco');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Hombres','2016-11-16 00:59:51','2016-11-16 00:59:51'),(2,'Mujeres','2016-11-20 02:07:39','2016-11-20 02:07:39'),(3,'Ninos','2016-11-20 02:07:46','2016-11-20 02:07:46'),(4,'ninas','2016-11-20 02:07:51','2016-11-20 02:07:51');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `helpfuls`
--

DROP TABLE IF EXISTS `helpfuls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `helpfuls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rating_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `helpfuls`
--

LOCK TABLES `helpfuls` WRITE;
/*!40000 ALTER TABLE `helpfuls` DISABLE KEYS */;
INSERT INTO `helpfuls` VALUES (12,'2016-12-05 19:52:15','2016-12-05 19:52:15',3,1),(13,'2016-12-05 19:52:32','2016-12-05 19:52:32',4,1),(14,'2016-12-05 20:19:02','2016-12-05 20:19:02',2,1),(15,'2016-12-06 22:03:02','2016-12-06 22:03:02',7,1),(16,'2016-12-07 01:55:16','2016-12-07 01:55:16',3,7),(17,'2016-12-07 01:55:47','2016-12-07 01:55:47',8,7),(18,'2016-12-07 01:58:17','2016-12-07 01:58:17',5,7),(19,'2016-12-07 01:58:44','2016-12-07 01:58:44',9,7),(20,'2016-12-07 02:23:49','2016-12-07 02:23:49',4,7),(21,'2016-12-07 02:25:05','2016-12-07 02:25:05',2,7),(22,'2016-12-07 02:26:12','2016-12-07 02:26:12',10,7),(23,'2016-12-07 02:26:36','2016-12-07 02:26:36',8,1),(24,'2016-12-07 02:26:48','2016-12-07 02:26:48',10,1),(25,'2016-12-07 22:30:06','2016-12-07 22:30:06',11,7),(26,'2016-12-07 23:09:35','2016-12-07 23:09:35',7,7),(27,'2016-12-08 00:09:26','2016-12-08 00:09:26',12,1),(28,'2016-12-08 00:20:46','2016-12-08 00:20:46',5,1),(29,'2016-12-08 04:58:51','2016-12-08 04:58:51',12,7),(30,'2016-12-08 21:07:36','2016-12-08 21:07:36',13,7),(31,'2016-12-09 00:01:05','2016-12-09 00:01:05',6,1),(32,'2016-12-10 04:24:35','2016-12-10 04:24:35',14,1);
/*!40000 ALTER TABLE `helpfuls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `helps`
--

DROP TABLE IF EXISTS `helps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `helps` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `helps`
--

LOCK TABLES `helps` WRITE;
/*!40000 ALTER TABLE `helps` DISABLE KEYS */;
/*!40000 ALTER TABLE `helps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lines`
--

DROP TABLE IF EXISTS `lines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lines` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subcategory_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double NOT NULL,
  `discount` int(11) NOT NULL,
  `real_price` double NOT NULL,
  `overall_rating` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `brand_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lines_subcategory_id_index` (`subcategory_id`),
  CONSTRAINT `lines_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lines`
--

LOCK TABLES `lines` WRITE;
/*!40000 ALTER TABLE `lines` DISABLE KEYS */;
INSERT INTO `lines` VALUES (1,1,'Premium Negros de Varios Disenos','',160,20,128,4.3333333333333,'2016-11-16 01:01:43','2016-12-09 00:10:06',1,'Best Value',1),(2,1,'Premium Negros Con Verde','',160,15,136,4,'2016-11-16 01:02:11','2016-12-06 22:02:55',1,'Good Socks',1),(3,1,'Premium Negros con Azules','',160,20,128,9,'2016-11-16 01:02:32','2016-12-07 02:25:59',1,'Cannon Comfort Cool',1),(4,1,'X Temp Comfort x6','',200,10,180,0,'2016-11-16 01:03:06','2016-11-26 20:50:33',1,'Best Value',1),(5,1,'Comfort Blend x6','',100,5,95,4.6666666666667,'2016-11-16 01:03:49','2016-12-08 02:42:07',1,'Cannon Soft Socks',1),(6,1,'Ankle Pack x6','',400,20,320,8.65,'2016-11-16 01:13:28','2016-12-07 02:44:55',1,'Cannon Socks',1),(7,1,'Comfort Cool x6','',200,18,164,2.3333333333333,'2016-11-16 01:15:04','2016-12-07 02:48:20',1,'Cannon Comfort Cool',1),(8,1,'Comfort Blend Over Calf','',200,25,150,9.6666666666667,'2016-11-16 01:18:45','2016-12-08 22:39:12',1,'Cannon Socks',1),(9,1,'Cushion Ankle','',160,15,136,0,'2016-11-16 01:19:54','2016-11-26 20:56:09',1,'Ankle Power',1),(10,1,'Cushion Crew','',160,25,120,8,'2016-11-16 01:21:30','2016-12-07 01:58:36',1,'Cannon Socks',1),(11,7,'Blusa de Algodon','',100,5,95,4.6666666666667,'2016-11-20 02:11:14','2016-11-26 20:56:59',6,'Cannon Mujeres',2),(12,8,'medias con nada','',200,2,196,0,'2016-11-22 01:01:39','2016-11-26 20:57:34',7,'Cannon Socks',4),(14,2,'Sport 3 x6',NULL,90,0,90,0,'2016-11-26 04:36:00','2016-11-26 20:58:04',1,'Marti',1),(15,3,'Camisa Normal',NULL,100,10,90,0,'2016-11-26 04:44:38','2016-11-26 20:58:36',2,'Cannon',1),(16,9,'Formal',NULL,90,0,90,0,'2016-11-26 04:48:28','2016-11-26 20:58:46',1,'Cannon',1),(17,10,'Moderno',NULL,100,12,88,0,'2016-11-26 04:53:12','2016-11-26 20:58:55',1,'Cannon',1),(18,11,'Negro Formal',NULL,90,25,67.5,0,'2016-11-26 04:55:29','2016-11-26 20:59:05',1,'Cannon',1);
/*!40000 ALTER TABLE `lines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table',1),('2014_10_12_100000_create_password_resets_table',1),('2016_10_17_192410_create_departments_table',1),('2016_10_17_200557_create_categories_table',1),('2016_10_17_212109_create_subcategories_table',1),('2016_10_18_011809_create_lines_table',1),('2016_10_18_032531_create_colors_table',1),('2016_10_18_032558_create_colorpics_table',1),('2016_10_18_032621_create_productpics_table',1),('2016_10_18_195304_create_sizes_table',1),('2016_10_28_020806_create_storedcolors_table',1),('2016_11_02_174151_add_name_path_to_storedcolors',1),('2016_11_05_195912_create_adresses_table',1),('2016_11_05_200243_create_orders_table',1),('2016_11_05_200535_create_order_items_table',1),('2016_11_06_193116_add_cashier_columns',1),('2016_11_13_224830_create_ratings_table',1),('2016_11_13_230505_update_orders_table',1),('2016_11_13_232411_rename_column_orders_table',1),('2016_11_25_001045_add_categories_and_brands_to_lines_table',2),('2016_11_26_204656_add_department_to_lines_table',3),('2016_11_27_005446_create_promotional_images_table',4),('2016_12_01_052930_create_helpfuls_table',5),('2016_12_07_224306_add_isVBuyer_and_isReported_to_rtings',6),('2016_12_10_064637_add_tel_name_email_columns_to_orders',7);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `size_id` int(10) unsigned NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_items_order_id_index` (`order_id`),
  KEY `order_items_size_id_index` (`size_id`),
  CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (31,'2016-12-10 20:17:33','2016-12-10 20:17:33',29,7,320,1,'Ankle Pack x6 negro Grande'),(32,'2016-12-10 20:22:59','2016-12-10 20:22:59',30,4,95,1,'Comfort Blend x6 Azul Verde extra grande'),(33,'2016-12-10 21:17:21','2016-12-10 21:17:21',31,1,320,1,'Ankle Pack x6 negro Mediano'),(34,'2016-12-11 17:23:50','2016-12-11 17:23:50',32,7,640,2,'Ankle Pack x6 negro Grande'),(35,'2016-12-11 17:44:36','2016-12-11 17:44:36',33,7,320,1,'Ankle Pack x6 negro Grande'),(36,'2016-12-11 17:57:28','2016-12-11 17:57:28',34,9,95,1,'Blusa de Algodon blanco Mediano'),(37,'2016-12-11 19:37:35','2016-12-11 19:37:35',35,7,320,1,'Ankle Pack x6 negro Grande'),(38,'2016-12-13 11:28:02','2016-12-13 11:28:02',36,8,128,1,'Premium Negros con Azules Azul Gris mediano');
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `billingAdress_id` int(10) unsigned NOT NULL,
  `shippingAdress_id` int(10) unsigned NOT NULL,
  `totalPrice` int(11) NOT NULL,
  `totalQty` int(11) NOT NULL,
  `shippingMethod` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shippingPrice` int(11) NOT NULL,
  `billingAdress` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shippingAdress` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `orderDate` date NOT NULL,
  `shippedDate` date NOT NULL,
  `deliveredDate` date NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_user_id_index` (`user_id`),
  KEY `orders_billingadress_id_index` (`billingAdress_id`),
  KEY `orders_shippingadress_id_index` (`shippingAdress_id`),
  CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (29,'2016-12-10 20:17:33','2016-12-10 20:17:33',1,13,13,370,1,'1',50,'716 N Husband Apt 5 , Cancun, Quintana Roo, 77500','716 N Husband Apt 5 , Cancun, Quintana Roo, 77500','2016-12-10','0000-00-00','0000-00-00','ordered','+ 044 (99) 81-68-7621','Alejandro','Alejandro','jdoe@example.com'),(30,'2016-12-10 20:22:59','2016-12-10 20:22:59',1,0,0,145,1,'5',50,'716 N Husband Apt 5 , Cancun, Quintana Roo, 77500','716 N Husband Apt 5 , Cancun, Quintana Roo, 77500','2016-12-10','0000-00-00','0000-00-00','backordered','+ 044 (99) 81-68-7621','Alejandro Carstens Cattori','Alejandro Carstens Cattori','carstennis@gmail.com'),(31,'2016-12-10 21:17:21','2016-12-11 03:18:23',1,0,0,370,1,'5',50,'716 N Husband Apt 5 , Cancun, Quintana Roo, 77500','716 N Husband Apt 5 , Cancun, Quintana Roo, 77500','2016-12-10','2016-12-11','0000-00-00','shipped','+ 044 (99) 81-68-7621','Alejandro Carstens Cattori','Alejandro Carstens Cattori','carstennis@gmail.com'),(32,'2016-12-11 17:23:50','2016-12-11 17:23:50',1,0,0,690,2,'1',50,'716 N Husband Apt 5 , Cancun, Quintana Roo, 77500','716 N Husband Apt 5 , Cancun, Quintana Roo, 77500','2016-12-11','0000-00-00','0000-00-00','ordered','+ 044 (99) 81-68-7621','Alejandro Carstens Cattori','Alejandro Carstens Cattori','carstennis@gmail.com'),(33,'2016-12-11 17:44:36','2016-12-11 17:44:36',1,0,0,370,1,'1',50,'716 N Husband Apt 5 , Cancun, Quintana Roo, 77500','716 N Husband Apt 5 , Cancun, Quintana Roo, 77500','2016-12-11','0000-00-00','0000-00-00','ordered','+ 044 (99) 81-68-7621','Alejandro Carstens Cattori','Alejandro Carstens Cattori','carstennis@gmail.com'),(34,'2016-12-11 17:57:28','2016-12-11 17:57:28',1,0,0,145,1,'1',50,'716 N Husband Apt 5 , Cancun, Quintana Roo, 77500','716 N Husband Apt 5 , Cancun, Quintana Roo, 77500','2016-12-11','0000-00-00','0000-00-00','ordered','+ 044 (99) 81-68-7621','Alejandro Carstens Cattori','Alejandro Carstens Cattori','carstennis@gmail.com'),(35,'2016-12-11 19:37:35','2016-12-11 19:37:35',1,0,0,370,1,'1',50,'4th Trust Cross Street, Mandavelli 46/8, Chennai, Baja California, 75500','4th Trust Cross Street, Mandavelli 46/8, Chennai, Baja California, 75500','2016-12-11','0000-00-00','0000-00-00','ordered','+ 044 (22) 22-22-2222','Kaushik Subramaniam Gnanaskandan','Kaushik Subramaniam Gnanaskandan','kaushik.subman@gmail.com'),(36,'2016-12-13 11:28:02','2016-12-13 11:28:02',1,0,0,178,1,'5',50,'716 N Husband Apt 5 , Stillwater, Michoacán, 77500','716 N Husband Apt 5 , Stillwater, Michoacán, 77500','2016-12-13','0000-00-00','0000-00-00','backordered','+ 044 (99) 81-68-7621','Alejandro Carstens Cattori','Alejandro Carstens Cattori','carstennis@gmail.com');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productpics`
--

DROP TABLE IF EXISTS `productpics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productpics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `color_id` int(10) unsigned NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `productpics_color_id_index` (`color_id`),
  CONSTRAINT `productpics_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productpics`
--

LOCK TABLES `productpics` WRITE;
/*!40000 ALTER TABLE `productpics` DISABLE KEYS */;
INSERT INTO `productpics` VALUES (1,'2016-11-16 01:07:04','2016-11-16 01:07:04',1,'/products/photos/1479258424canvas5.png'),(2,'2016-11-16 01:07:34','2016-11-16 01:07:34',2,'/products/photos/1479258454canvas1.png'),(3,'2016-11-16 01:08:22','2016-11-16 01:08:22',3,'/products/photos/1479258502canvas3.png'),(4,'2016-11-16 01:08:59','2016-11-16 01:08:59',4,'/products/photos/1479258539canvas5.png'),(5,'2016-11-16 01:09:27','2016-11-16 01:09:27',5,'/products/photos/1479258567canvas4.png'),(6,'2016-11-16 01:11:02','2016-11-16 01:11:02',6,'/products/photos/1479258662canvas7.jpg'),(7,'2016-11-16 01:11:20','2016-11-16 01:11:20',7,'/products/photos/1479258680canvas6.jpg'),(8,'2016-11-16 01:14:01','2016-11-16 01:14:01',8,'/products/photos/1479258841canvas8.jpg'),(9,'2016-11-16 01:15:43','2016-11-16 01:15:43',9,'/products/photos/1479258943canvas9.jpg'),(10,'2016-11-16 01:19:21','2016-11-16 01:19:21',10,'/products/photos/1479259161canvas10.jpg'),(11,'2016-11-16 01:20:19','2016-11-16 01:20:19',11,'/products/photos/1479259219canvas11.jpg'),(12,'2016-11-16 01:22:03','2016-11-16 01:22:03',12,'/products/photos/1479259323canvas14.jpg'),(13,'2016-11-20 02:12:23','2016-11-20 02:12:23',13,'/products/photos/1479607943canvas.jpg'),(14,'2016-11-22 01:02:42','2016-11-22 01:02:42',14,'/products/photos/1479776562canvas.png'),(15,'2016-11-22 01:03:08','2016-11-22 01:03:08',15,'/products/photos/1479776588canvas1.png'),(17,'2016-11-26 04:41:20','2016-11-26 04:41:20',17,'/products/photos/1480135280bro1151_bonjour_sport_men_socks1.jpg'),(18,'2016-11-26 04:45:50','2016-11-26 04:45:50',18,'/products/photos/1480135550sport_tshirt_009.jpg'),(19,'2016-11-26 04:49:39','2016-11-26 04:49:39',19,'/products/photos/1480135779black socks.jpg'),(20,'2016-11-26 04:53:28','2016-11-26 04:53:28',20,'/products/photos/1480136008black socks.jpg'),(21,'2016-11-26 04:55:43','2016-11-26 04:55:43',21,'/products/photos/1480136143black socks.jpg'),(23,'2016-11-26 05:05:12','2016-11-26 05:05:12',23,'/products/photos/1480136712bro1151_bonjour_sport_men_socks1.jpg'),(27,'2016-12-12 22:23:02','2016-12-12 22:23:02',22,'/products/photos/1481581382bro1151_bonjour_sport_men_socks1.jpg'),(28,'2016-12-12 22:32:38','2016-12-12 22:32:38',22,'/products/photos/1481581958canvas2.png');
/*!40000 ALTER TABLE `productpics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotional_images`
--

DROP TABLE IF EXISTS `promotional_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotional_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `department_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `bannerText` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotional_images`
--

LOCK TABLES `promotional_images` WRITE;
/*!40000 ALTER TABLE `promotional_images` DISABLE KEYS */;
INSERT INTO `promotional_images` VALUES (1,'2016-12-01 05:41:20','2016-12-01 05:42:34',1,0,0,'Hasta 40% de descuento en hombres','/promotional/images/14805708801480219717e72ffd52608205a3c91b8062bcc29034.jpg'),(2,'2016-12-01 05:43:15','2016-12-01 20:49:59',2,0,0,'','/promotional/images/148062539914805712081480308011banner61.jpg'),(3,'2016-12-01 05:46:48','2016-12-01 05:51:42',4,0,0,'','/promotional/images/148057150214803080770008b93b5ac1d19f43798a23dd0a211f.jpg'),(4,'2016-12-01 05:47:15','2016-12-01 05:49:23',1,1,1,'Hasta 40% de descuento en calcetería.','/promotional/images/14805712351480535259Patterns.jpg'),(5,'2016-12-01 05:47:58','2016-12-01 05:53:43',2,0,0,'Las mejores medias desde $50, aprovecha.','/promotional/images/148057162314805373342016-New-3-Colors-Fashion-Women-s-font-b-Socks-b-font-Sexy-Warm-Thigh-High.jpg'),(6,'2016-12-01 05:48:20','2016-12-01 05:51:08',3,0,0,'Salva hasta un $100 en calcetines de niños. ','/promotional/images/14805713001480537490Screen-Shot-2014-02-23-at-12.35.05-PM.png'),(7,'2016-12-01 20:58:46','2016-12-01 20:58:46',4,0,0,'Ahorra con nuestras promociones en el departamento de niñas.','/promotional/images/1480625926guess-kids-41.jpg');
/*!40000 ALTER TABLE `promotional_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ratings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `line_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `overall` int(11) NOT NULL,
  `comfort` int(11) NOT NULL,
  `style` int(11) NOT NULL,
  `fit` int(11) NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `publishable` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `has_verified_buyer` tinyint(1) NOT NULL,
  `isReported` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ratings_line_id_index` (`line_id`),
  KEY `ratings_user_id_index` (`user_id`),
  CONSTRAINT `ratings_line_id_foreign` FOREIGN KEY (`line_id`) REFERENCES `lines` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
INSERT INTO `ratings` VALUES (2,3,1,4,4,4,4,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',1,'2016-11-16 05:05:37','2016-12-08 21:02:13',0,1),(3,6,1,5,5,5,5,'fgdfgdfgdfg',1,'2016-11-17 01:52:12','2016-12-07 22:55:06',0,1),(5,10,1,4,4,5,3,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',1,'2016-11-20 02:22:59','2016-12-08 09:35:59',0,1),(6,11,1,5,5,5,4,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',1,'2016-11-20 02:24:10','2016-12-09 00:01:11',0,1),(7,2,1,4,4,5,3,'asdfsdfkasdfjcksabd sadf;sadfasd fasdfn\'askdnfalsdnfasfsdlknfas c dasfaksdlfh;asdf ',1,'2016-12-06 22:02:55','2016-12-07 23:07:56',0,1),(8,6,7,4,4,4,3,'Excelente producto, muy bien hecho, excelente calidad por el precio. Altamente recomendable.',1,'2016-12-07 01:55:03','2016-12-08 19:53:17',0,1),(9,10,7,4,4,3,5,'fkal;hdf;lasdhjifpo;sadiknalsdc;askdlcjaso\'dcpjaosmdcas js;dlfkasldjf;asdafsdasdfasdfasdfasd',1,'2016-12-07 01:58:36','2016-12-07 22:56:07',0,1),(10,3,7,5,5,5,5,'Estupendo producto, me parecio excelente.\r\n',1,'2016-12-07 02:25:59','2016-12-08 21:04:24',0,1),(11,7,1,2,2,2,3,'gfadgfsadgsdfgsdfgsdfgsdfgsdfgsd',1,'2016-12-07 02:48:20','2016-12-07 23:13:51',0,1),(12,8,1,5,5,5,5,'jfhgjfgjhfgjhfgjhfghjfghjfgh',1,'2016-12-08 00:03:13','2016-12-08 00:09:05',1,1),(13,5,7,5,5,5,4,'Very good and high quality product. It was extremely reliable and I highly recommend it.',1,'2016-12-08 02:42:07','2016-12-08 02:42:07',1,0),(14,8,7,5,5,4,5,'asdfasdfasdfasd',0,'2016-12-08 22:39:12','2016-12-08 22:39:12',0,0),(15,1,1,4,5,4,4,'fld;kdsfgksdfkgl;sd\'kf;lg\'sdfl;kgsdkfgs;lkggl;sd\'flg;',0,'2016-12-09 00:10:06','2016-12-10 07:56:07',0,1);
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sizes`
--

DROP TABLE IF EXISTS `sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sizes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `color_id` int(10) unsigned NOT NULL,
  `line_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sku` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `inventory` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sizes_color_id_index` (`color_id`),
  CONSTRAINT `sizes_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sizes`
--

LOCK TABLES `sizes` WRITE;
/*!40000 ALTER TABLE `sizes` DISABLE KEYS */;
INSERT INTO `sizes` VALUES (1,8,'Ankle Pack x6','negro','Mediano','Ankle Pack x6 negro Mediano','00001','320',-14,'2016-11-16 01:22:45','2016-12-10 21:17:21'),(2,10,'Comfort Blend Over Calf','negro','Grande','Comfort Blend Over Calf negro Grande','00002','150',0,'2016-11-16 01:23:05','2016-11-16 01:23:05'),(3,1,'Comfort Blend x6','Azul Amarillo','Chico','Comfort Blend x6 Azul Amarillo Chico','00003','95',-2,'2016-11-16 01:23:21','2016-12-07 18:25:48'),(4,2,'Comfort Blend x6','Azul Verde','extra grande','Comfort Blend x6 Azul Verde extra grande','00004','95',-1,'2016-11-16 01:23:37','2016-12-10 20:22:59'),(5,9,'Comfort Cool x6','blanco','Mediano','Comfort Cool x6 blanco Mediano','00005','164',0,'2016-11-16 01:24:10','2016-11-16 01:24:10'),(6,11,'Cushion Ankle','blanco','Mediano','Cushion Ankle blanco Mediano','00006','136',0,'2016-11-16 01:24:31','2016-11-16 01:24:31'),(7,8,'Ankle Pack x6','negro','Grande','Ankle Pack x6 negro Grande','000015','320',1988,'2016-11-16 21:35:58','2016-12-11 19:37:35'),(8,3,'Premium Negros con Azules','Azul Gris','mediano','Premium Negros con Azules Azul Gris mediano','000016','128',-5,'2016-11-16 22:26:02','2016-12-13 11:28:02'),(9,13,'Blusa de Algodon','blanco','Mediano','Blusa de Algodon blanco Mediano','000019','95',498,'2016-11-20 02:12:46','2016-12-11 17:57:28');
/*!40000 ALTER TABLE `sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storedcolors`
--

DROP TABLE IF EXISTS `storedcolors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storedcolors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storedcolors`
--

LOCK TABLES `storedcolors` WRITE;
/*!40000 ALTER TABLE `storedcolors` DISABLE KEYS */;
INSERT INTO `storedcolors` VALUES (1,'2016-11-16 01:06:33','2016-11-16 01:06:56','Azul Amarillo','/colors/images/1479258416HNS_29223_GoldRedAssortment_sw.jpg'),(2,'2016-11-16 01:07:13','2016-11-16 01:07:26','Azul Verde','/colors/images/1479258446HNS_29223_GoldRedAssortment_sw.jpg'),(3,'2016-11-16 01:08:08','2016-11-16 01:08:16','Azul Gris','/colors/images/1479258496HNS_29223_RedGoldAssortment_sw.jpg'),(4,'2016-11-16 01:08:44','2016-11-16 01:08:52','Azul Rojo','/colors/images/1479258532HNS_29223_RedOrangeAssortment_sw.jpg'),(5,'2016-11-16 01:09:14','2016-11-16 01:09:20','azul naranja','/colors/images/1479258560HNS_29223_RedOrangeAssortment_sw.jpg'),(6,'2016-11-16 01:10:47','2016-11-16 01:10:53','Blanco','/colors/images/1479258653HNS_123647_White_sw.jpg'),(7,'2016-11-16 01:11:09','2016-11-16 01:11:14','Negro','/colors/images/1479258674HNS_123647_Black_sw.jpg'),(8,'2016-11-22 01:01:52','2016-11-22 01:02:32','cafe','/colors/images/1479776552HNS_115784_SoftTaupe_sw.jpg'),(9,'2016-11-22 01:02:52','2016-11-22 01:02:59','natural','/colors/images/1479776579HNS_115784_Natural_sw.jpg'),(10,'2016-11-27 00:37:02','2016-11-27 00:37:02','Azul',''),(11,'2016-11-27 03:16:26','2016-11-27 04:06:24','fffdfd','/colors/images/1480219584e72ffd52608205a3c91b8062bcc29034.jpg'),(12,'2016-12-12 21:57:17','2016-12-12 21:57:17','fuego','');
/*!40000 ALTER TABLE `storedcolors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategories`
--

DROP TABLE IF EXISTS `subcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subcategories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subcategories_category_id_index` (`category_id`),
  CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategories`
--

LOCK TABLES `subcategories` WRITE;
/*!40000 ALTER TABLE `subcategories` DISABLE KEYS */;
INSERT INTO `subcategories` VALUES (1,'Calcetines',1,'2016-11-16 01:00:27','2016-11-16 01:00:27'),(2,'Calcetines Deportivos',1,'2016-11-19 01:30:41','2016-11-19 01:36:03'),(3,'camisas deportivas',2,'2016-11-19 01:36:21','2016-11-19 01:36:21'),(4,'Calzones',3,'2016-11-19 01:53:31','2016-11-19 01:53:31'),(5,'Bermudas',4,'2016-11-19 01:53:49','2016-11-19 01:53:49'),(6,'pants',5,'2016-11-19 01:54:11','2016-11-19 01:54:11'),(7,'Blusas',6,'2016-11-20 02:10:33','2016-11-20 02:10:33'),(8,'Invierno',7,'2016-11-22 00:59:43','2016-11-22 00:59:43'),(9,'Calcetines Formales',1,'2016-11-26 04:48:14','2016-11-26 04:48:14'),(10,'Moderna',1,'2016-11-26 04:52:56','2016-11-26 04:52:56'),(11,'Alex Category',1,'2016-11-26 04:55:06','2016-11-26 04:55:06');
/*!40000 ALTER TABLE `subcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isAdmin` tinyint(1) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stripe_active` tinyint(4) NOT NULL DEFAULT '0',
  `stripe_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripe_subscription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripe_plan` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_four` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `subscription_ends_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'John Doe','jdoe@example.com','$2y$10$1gGRInbWJmbWNMaxNdbUl.7RghH7jyUY7qjC21dxULo5hWRM..AFa',1,'tEXaiEC2f3S9naeyRIhocGLuNx3LBXhhTqzI40y2mpdiUmhWgQ1xuK6T6pTb','2016-11-16 00:58:50','2016-12-12 03:21:10',0,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Kaushik Subramaniam Gnanaskandan','kaushik.subman@gmail.com','$2y$10$ffAsu3znl4YI7wN5fS3EfuTi.6hs/6QSpKozAz9BxaVUQcz5DQVOG',0,'CO28SjVdfrdNTc2XCn55Cl0bc3wzlC0Fa3xYrh8MTbErSP5rZPP4rIwqmkau','2016-11-16 06:26:22','2016-11-16 10:27:36',0,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Pedro Solis Camara','pedroSC@gmail.com','$2y$10$JTVpwJwV/qyVs9ogANA6d.A2MLWgRBvMbFVjNaMwet1Xnh6R7k3XS',0,'FDuciUIXQWkpFJFQO943J6O8kfHctVxS7K3Jqtw1Y5YVdj2eg6GUTP586gjE','2016-11-30 23:51:05','2016-11-30 23:51:10',0,NULL,NULL,NULL,NULL,NULL,NULL),(5,'Hussain','iamhusainshaikh@gmail.com','$2y$10$UZcKX8y6CqVg8CglvzGideA0LgdX6ZTbuz7EpNfiUhm85Tw.PFXyu',0,'fnfvpCmTITvJItISXXOuPy2BTKFkXuIxBI0uKBNJ6vdGAJlwskMbdzoX5ZLP','2016-12-02 19:01:47','2016-12-02 19:04:32',0,NULL,NULL,NULL,NULL,NULL,NULL),(6,'FEDERICO CARSTENS CARSTENS','fmcarstens@gmail.com','$2y$10$rVaf4vNsV8k3HeG6MD0W4.uNLsDwMONoXBcyey14h9R.Fv3CjTPIe',0,'pCFz2za4Hw8YrJTs9QszinqpaQCiajAeAs5ilcXa6Lu3MOlF19fJmoAe6Dzf','2016-12-03 03:03:12','2016-12-03 03:16:42',0,NULL,NULL,NULL,NULL,NULL,NULL),(7,'Alejandro Carstens Cattori','carstennis@gmail.com','$2y$10$1uSxNLt.fmFJ0N1JUtNuceI/ul77H3lK4rU.rVvdE2GuYkkaAQxz2',0,'E4n6yXiir266gorPa6KpQnm6UwGGuVo9n4n77msTxp0lCcBXKeew8u42ZnVN','2016-12-07 01:19:50','2016-12-12 03:24:04',0,NULL,NULL,NULL,NULL,NULL,NULL);
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

-- Dump completed on 2016-12-14  0:09:51
