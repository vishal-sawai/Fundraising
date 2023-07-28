-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: frs
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `username` varchar(250) DEFAULT NULL,
  `userpass` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('vs@gmail.com','admin');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add campaign',7,'add_campaign'),(26,'Can change campaign',7,'change_campaign'),(27,'Can delete campaign',7,'delete_campaign'),(28,'Can view campaign',7,'view_campaign'),(29,'Can add campaigntable',7,'add_campaigntable'),(30,'Can change campaigntable',7,'change_campaigntable'),(31,'Can delete campaigntable',7,'delete_campaigntable'),(32,'Can view campaigntable',7,'view_campaigntable'),(33,'Can add crquesttable',8,'add_crquesttable'),(34,'Can change crquesttable',8,'change_crquesttable'),(35,'Can delete crquesttable',8,'delete_crquesttable'),(36,'Can view crquesttable',8,'view_crquesttable'),(37,'Can add crquesttable',9,'add_crquesttable'),(38,'Can change crquesttable',9,'change_crquesttable'),(39,'Can delete crquesttable',9,'delete_crquesttable'),(40,'Can view crquesttable',9,'view_crquesttable'),(41,'Can add contacttable',10,'add_contacttable'),(42,'Can change contacttable',10,'change_contacttable'),(43,'Can delete contacttable',10,'delete_contacttable'),(44,'Can view contacttable',10,'view_contacttable'),(45,'Can add donation',11,'add_donation'),(46,'Can change donation',11,'change_donation'),(47,'Can delete donation',11,'delete_donation'),(48,'Can view donation',11,'view_donation'),(49,'Can add donationtable',11,'add_donationtable'),(50,'Can change donationtable',11,'change_donationtable'),(51,'Can delete donationtable',11,'delete_donationtable'),(52,'Can view donationtable',11,'view_donationtable');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$XNsPAfqVs0IAp148r6JWCX$rdor4C09FC/IT9MTYr/iOenV3svDSNIkliC5zjOvqng=','2023-07-01 14:14:33.314340',1,'vishalsawai','','','vishalsawai17252@gmail.com',1,1,'2023-06-06 11:00:14.824939'),(2,'pbkdf2_sha256$600000$ZlAsV8z4Dq16v1Hyw9csC6$9Kn21ZtoQzZCqbRhsrvCUYCcArcgTLpkqyuaoXmJfVg=',NULL,0,'vs@123gmail.com','','','',0,1,'2023-06-06 12:41:33.729815');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-06-06 12:41:34.150598','2','vs@123gmail.com',1,'[{\"added\": {}}]',4,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(10,'home','contacttable'),(9,'home','crquesttable'),(11,'home','donationtable'),(7,'myadministration','campaigntable'),(8,'myadministration','crquesttable'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-06-06 10:41:51.822677'),(2,'auth','0001_initial','2023-06-06 10:41:52.254927'),(3,'admin','0001_initial','2023-06-06 10:41:52.368378'),(4,'admin','0002_logentry_remove_auto_add','2023-06-06 10:41:52.377555'),(5,'admin','0003_logentry_add_action_flag_choices','2023-06-06 10:41:52.385728'),(6,'contenttypes','0002_remove_content_type_name','2023-06-06 10:41:52.459677'),(7,'auth','0002_alter_permission_name_max_length','2023-06-06 10:41:52.515774'),(8,'auth','0003_alter_user_email_max_length','2023-06-06 10:41:52.564278'),(9,'auth','0004_alter_user_username_opts','2023-06-06 10:41:52.572196'),(10,'auth','0005_alter_user_last_login_null','2023-06-06 10:41:52.621031'),(11,'auth','0006_require_contenttypes_0002','2023-06-06 10:41:52.630041'),(12,'auth','0007_alter_validators_add_error_messages','2023-06-06 10:41:52.637052'),(13,'auth','0008_alter_user_username_max_length','2023-06-06 10:41:52.694242'),(14,'auth','0009_alter_user_last_name_max_length','2023-06-06 10:41:52.750245'),(15,'auth','0010_alter_group_name_max_length','2023-06-06 10:41:52.774327'),(16,'auth','0011_update_proxy_permissions','2023-06-06 10:41:52.791000'),(17,'auth','0012_alter_user_first_name_max_length','2023-06-06 10:41:52.839707'),(18,'sessions','0001_initial','2023-06-06 10:41:52.872229'),(19,'myadministration','0001_initial','2023-06-06 19:06:51.664362'),(20,'myadministration','0002_campaign_date_campaign_time_and_more','2023-06-06 19:31:48.939182'),(21,'myadministration','0003_rename_campaign_campaigntable','2023-06-07 19:30:15.648241'),(22,'myadministration','0004_crquesttable','2023-06-08 12:13:27.923273'),(23,'home','0001_initial','2023-06-08 12:41:14.936448'),(24,'myadministration','0005_delete_crquesttable','2023-06-08 12:41:14.963238'),(25,'home','0002_crquesttable_amount','2023-06-08 13:39:51.862810'),(26,'home','0003_contacttable','2023-06-08 14:05:17.639153'),(27,'home','0004_donation','2023-06-11 14:43:00.307797'),(28,'home','0005_rename_donation_donationtable','2023-06-12 09:08:11.247042'),(29,'home','0006_donationtable_campaigntitle','2023-06-12 16:39:17.794140');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('11xcmm3px2toe3kiy9er7ek3b9l5koh8','e30:1q8lh8:Ui0M61GxT9vZpi1fuYpM0zeWNkltXCfjIrbEoRC_ksc','2023-06-26 17:51:10.622482'),('58tkzo4fq2zjl1w5n0rj0pbexlmqnynb','e30:1q8ldi:CDhW5e8zOPSNiYl0k2G5swxDRaYIFnAugNY1TgKyjXM','2023-06-26 17:47:38.620101'),('abh8kiawvucm82ywoqpnhmergzcu1fl1','.eJxVjEEOwiAQRe_C2hBoQRiX7j0DmWFAqgaS0q6Md7dNutDtf-_9twi4LiWsPc1hYnERWpx-N8L4THUH_MB6bzK2uswTyV2RB-3y1ji9rof7d1Cwl602qLw3msCNEQ1k61gDIJMz3hrOcCav0jiQG8AbVhq0zXYEtmlrshKfL8qMNzc:1q9OOi:gs8hNXRVvH05jJZTNfF7evAZQAejzBSOm3zElzZBe08','2023-06-28 11:10:44.903649'),('ibf4czgl50vkvpmysbtwxzehsu2l8ezr','e30:1q8OUh:ZgT_v8T9CP9Ru2aj_L38MaUVSy4D2zGOOKm7EDcXFo8','2023-06-25 17:04:47.088780');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_contacttable`
--

DROP TABLE IF EXISTS `home_contacttable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_contacttable` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `message` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_contacttable`
--

LOCK TABLES `home_contacttable` WRITE;
/*!40000 ALTER TABLE `home_contacttable` DISABLE KEYS */;
INSERT INTO `home_contacttable` VALUES (3,'Vishal Sawai','vs@gmail.com','9284059973','Hello Vishal You Make Awesome Project'),(4,'Naresh Joshi','NG@gmail.com','9623639110','Hi Vishal');
/*!40000 ALTER TABLE `home_contacttable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_crquesttable`
--

DROP TABLE IF EXISTS `home_crquesttable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_crquesttable` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `cause` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `story` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `amount` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_crquesttable`
--

LOCK TABLES `home_crquesttable` WRITE;
/*!40000 ALTER TABLE `home_crquesttable` DISABLE KEYS */;
INSERT INTO `home_crquesttable` VALUES (3,'Vishal dnyaneshwar Sawai','To Buy IPhone','9623639110','vishalsawai17252@gmail.com','Pune','I need money to buy iPhone','2023-06-13','50000'),(24,'virat kholi','hello','9284059973','vk@gmail.com','Vitkheda, Kannad Subdistrict','hello','2023-06-13','5000'),(25,'Nilesh more','medical problem','9284059973','nm@gmail.com','pune','i need money','2023-06-14','5000'),(26,'vishal sawai','Animal','9284059973','vssawai@gmail.com','Vitkheda, Kannad Subdistrict','i nedd money','2023-06-14','5000');
/*!40000 ALTER TABLE `home_crquesttable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_donationtable`
--

DROP TABLE IF EXISTS `home_donationtable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_donationtable` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` varchar(300) NOT NULL,
  `amount` int NOT NULL,
  `cid` int NOT NULL,
  `payment_id` varchar(300) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time(6) DEFAULT NULL,
  `pstatus` varchar(200) DEFAULT NULL,
  `campaigntitle` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_donationtable`
--

LOCK TABLES `home_donationtable` WRITE;
/*!40000 ALTER TABLE `home_donationtable` DISABLE KEYS */;
INSERT INTO `home_donationtable` VALUES (17,'Vishal Sawai','9284059973','vishalsawai17252@gmail.com','Vitkheda,Kannad,Aurangabad',2000,12,'pay_M16SVo52bYD0D5','2023-06-12','23:06:44.000000','done','Need Funds For Food '),(18,'Nilesh More','9284059973','vishalsawai17252@gmail.com','Vitkheda,Kannad,Aurangabad',2000,14,'pay_M16nAIOFjr9RFw','2023-06-12','23:26:16.000000','done','Need Fund For Child Education'),(19,'Nilesh More','9284059973','vishalsawai17252@gmail.com','Vitkheda,Kannad,Aurangabad',2000,14,'pay_M16rs6DNoJhIxU','2023-06-12','23:30:44.000000','done','Need Fund For Child Education'),(20,'Nilesh More','9284059973','vishalsawai17252@gmail.com','Vitkheda,Kannad,Aurangabad',2000,14,'pay_M16xSlEKt5TKZZ','2023-06-12','23:36:01.000000','done','Need Fund For Child Education'),(21,'Nilesh More','9284059973','vishalsawai17252@gmail.com','Vitkheda,Kannad,Aurangabad',2000,14,'pay_M174fEbVCDCOod','2023-06-12','23:42:50.000000','done','Need Fund For Child Education'),(22,'Nilesh More','9284059973','vishalsawai17252@gmail.com','Vitkheda,Kannad,Aurangabad',2000,14,'pay_M175WY0GjwtGNb','2023-06-12','23:43:41.000000','done','Need Fund For Child Education'),(23,'Nilesh More','9284059973','vishalsawai17252@gmail.com','Vitkheda,Kannad,Aurangabad',2000,14,'pay_M17A3DH7WGqCSQ','2023-06-12','23:47:57.000000','done','Need Fund For Child Education'),(24,'Nilesh More','9284059973','vishalsawai17252@gmail.com','Vitkheda,Kannad,Aurangabad',2000,14,'pay_M17E9yjdPUH16J','2023-06-12','23:51:50.000000','done','Need Fund For Child Education'),(25,'Nilesh More','9284059973','vishalsawai17252@gmail.com','Vitkheda,Kannad,Aurangabad',2000,14,'pay_M17F59ZZQ6DTyJ','2023-06-12','23:52:42.000000','done','Need Fund For Child Education'),(26,'Nilesh More','9284059973','vishalsawai17252@gmail.com','Vitkheda,Kannad,Aurangabad',2000,14,'pay_M17GX2WErZiXMY','2023-06-12','23:54:04.000000','done','Need Fund For Child Education'),(27,'Nilesh More','9284059973','vishalsawai17252@gmail.com','Vitkheda,Kannad,Aurangabad',2000,14,'pay_M17IR182xO7R9u','2023-06-12','23:55:51.000000','done','Need Fund For Child Education'),(28,'Nilesh More','9284059973','vishalsawai17252@gmail.com','Vitkheda,Kannad,Aurangabad',2000,14,'pay_M17MyHftho0Nas','2023-06-13','00:00:10.000000','done','Need Fund For Child Education'),(29,'Nilesh More','9284059973','vishalsawai17252@gmail.com','Vitkheda,Kannad,Aurangabad',2000,14,'pay_M17OVnNBrRbXQC','2023-06-13','00:01:40.000000','done','Need Fund For Child Education'),(30,'Nilesh More','9284059973','vishalsawai17252@gmail.com','Vitkheda,Kannad,Aurangabad',2000,14,'pay_M17di8lx0R7Bwh','2023-06-13','00:16:01.000000','done','Need Fund For Child Education'),(31,'Nilesh More','9284059973','vishalsawai17252@gmail.com','Vitkheda,Kannad,Aurangabad',2000,14,'pay_M17k2MHlDn1EpR','2023-06-13','00:22:00.000000','done','Need Fund For Child Education'),(32,'Nilesh More','9284059973','vishalsawai17252@gmail.com','Vitkheda,Kannad,Aurangabad',2000,14,'pay_M17lgGuXtXJn1k','2023-06-13','00:23:33.000000','done','Need Fund For Child Education'),(33,'Nilesh More','9284059973','vishalsawai17252@gmail.com','Vitkheda,Kannad,Aurangabad',2000,14,'pay_M17mdxy7Ha1cB2','2023-06-13','00:24:26.000000','done','Need Fund For Child Education'),(34,'vikas kale','9284059973','vk@gmail.com','Vitkheda, Kannad Subdistrict',80000,13,'pay_M1885yxUHRL1NW','2023-06-13','00:44:46.000000','done','Medical Emergency'),(35,'MS Dhoni','1234567890','ms@gmail.com','CSK',5000,14,'pay_M18G8iK5hck6eA','2023-06-13','00:52:23.000000','done','Need Fund For Child Education'),(36,'MS Dhoni','1234567890','ms@gmail.com','CSK',5000,14,'pay_M18HWt8abVJz1K','2023-06-13','00:53:41.000000','done','Need Fund For Child Education'),(37,'MS Dhoni','1234567890','ms@gmail.com','CSK',5000,14,'pay_M18JqAHJVplubI','2023-06-13','00:55:52.000000','done','Need Fund For Child Education'),(38,'MS Dhoni','1234567890','ms@gmail.com','CSK',5000,14,'pay_M18KsF3uR6ZMOJ','2023-06-13','00:56:51.000000','done','Need Fund For Child Education'),(39,'Shubham sawai','9284059973','ss@gmail.com','Vitkheda,Kannad,Aurangabad',5000,14,'pay_M1IYnR3QMoVrfu','2023-06-13','10:56:59.000000','done','Need Fund For Child Education'),(40,'Shubham sawai','9284059973','ss@gmail.com','Vitkheda,Kannad,Aurangabad',5000,14,'pay_M1Ia5gRGLyBDG1','2023-06-13','10:58:11.000000','done','Need Fund For Child Education'),(41,'Shubham sawai','9284059973','ss@gmail.com','Vitkheda,Kannad,Aurangabad',5000,14,'pay_M1Ian5qdCv83aa','2023-06-13','10:58:53.000000','done','Need Fund For Child Education'),(42,'Vishal Sawai','9623639110','vs@gmail.com','pune',250000,14,'pay_M1J5DLnL9m4Rjd','2023-06-13','11:27:43.000000','done','Need Fund For Child Education'),(43,'Rupesh Rawate','9284059973','vishalsawai17252@gmail.com','Vitkheda, Kannad Subdistrict',2000,12,'pay_M1n0dYAbAQ0J0A','2023-06-14','16:44:19.000000','done','Need Funds For Food '),(44,'Vishal dnyaneshwar Sawai','9623639110','vishalsawai17252@gmail.com','Vitkheda, Kannad Subdistrict',699,13,'pay_M8Z9WyQOKfdfJv','2023-07-01','19:43:52.000000','done','Medical Emergency');
/*!40000 ALTER TABLE `home_donationtable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myadministration_campaigntable`
--

DROP TABLE IF EXISTS `myadministration_campaigntable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myadministration_campaigntable` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `fund` int NOT NULL,
  `raisedfund` int DEFAULT NULL,
  `img` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myadministration_campaigntable`
--

LOCK TABLES `myadministration_campaigntable` WRITE;
/*!40000 ALTER TABLE `myadministration_campaigntable` DISABLE KEYS */;
INSERT INTO `myadministration_campaigntable` VALUES (12,'Rupesh Ravate','Need Funds For Food ','Our campaign, \"Need Funds For Food,\" aims to provide essential meals to individuals and families facing food insecurity. The funds raised will directly contribute to purchasing nutritious food items and distributing them to those in need. Join us in making a difference by donating today and ensuring that no one goes hungry. Together, we can alleviate hunger and nourish our communities.',5000,4000,'campaign1.png','2023-06-11','19:27:10.000000'),(13,'Omkar Lohar ','Medical Emergency','Urgent funds are needed to support a critical medical emergency. Our loved one is battling a severe health condition and requires immediate medical intervention. Every contribution will help cover medical expenses, treatments, and necessary medications. Your support can make a life-saving difference in our journey towards recovery. Please donate and share this campaign to help us overcome this medical crisis.',500000,80699,'campaign2.png','2023-06-11','19:38:31.000000'),(15,'Vishal Sawai','Need Fund for Child Education','Help us provide quality education to underprivileged children by supporting our campaign. Your generous donations will make a significant difference in the lives of these children, enabling them to access educational opportunities that can shape their future. Join us in empowering these young minds and giving them the gift of education. Every contribution counts towards building a brighter tomorrow for these deserving children.',250000,0,'child.jpg','2023-06-14','09:33:53.000000');
/*!40000 ALTER TABLE `myadministration_campaigntable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-28 17:50:05
