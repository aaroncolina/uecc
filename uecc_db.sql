CREATE DATABASE  IF NOT EXISTS `uecc_db` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `uecc_db`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: uecc_db
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.21-MariaDB

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
-- Table structure for table `l_form_input_type`
--

DROP TABLE IF EXISTS `l_form_input_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_form_input_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_input_type` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `notes` text CHARACTER SET latin1,
  `enabled` enum('Y','N') CHARACTER SET latin1 DEFAULT 'Y',
  `lastupdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `l_form_input_type`
--

LOCK TABLES `l_form_input_type` WRITE;
/*!40000 ALTER TABLE `l_form_input_type` DISABLE KEYS */;
INSERT INTO `l_form_input_type` VALUES (1,'TEXT',NULL,'Y','2017-11-08 09:32:42'),(2,'NUMBER',NULL,'Y','2017-11-08 09:32:42'),(3,'TEXTAREA',NULL,'Y','2017-11-08 09:32:42'),(4,'SELECT',NULL,'Y','2017-11-08 09:32:42'),(5,'CHECKBOX',NULL,'Y','2017-11-08 09:32:42'),(6,'RADIO',NULL,'Y','2017-11-08 09:32:42');
/*!40000 ALTER TABLE `l_form_input_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `l_module_field`
--

DROP TABLE IF EXISTS `l_module_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_module_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `field_name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `field_display` varchar(100) CHARACTER SET latin1 NOT NULL,
  `field_datatype` enum('VARCHAR','INT','DOUBLE','DATETIME','DATE','BOOLEAN') CHARACTER SET latin1 NOT NULL DEFAULT 'VARCHAR',
  `field_type` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT 'TEXT',
  `field_length` int(11) DEFAULT '255',
  `description` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `required` enum('Y','N') CHARACTER SET latin1 DEFAULT 'Y',
  `is_multiple_records` enum('Y','N') CHARACTER SET latin1 DEFAULT 'N',
  `enabled` enum('Y','N') CHARACTER SET latin1 DEFAULT 'Y',
  `lastupdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_name_UNIQUE` (`field_name`),
  UNIQUE KEY `field_display_UNIQUE` (`field_display`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `l_module_field`
--

LOCK TABLES `l_module_field` WRITE;
/*!40000 ALTER TABLE `l_module_field` DISABLE KEYS */;
INSERT INTO `l_module_field` VALUES (1,'m_members','member_zone','Zone','VARCHAR','SELECT',20,NULL,'Y','N','Y','2018-01-14 17:11:32'),(2,'m_members','member_ministry','Ministry','VARCHAR','SELECT',NULL,NULL,'Y','Y','Y','2018-01-14 17:13:52'),(3,'m_members','member_baptized','is Baptized?','BOOLEAN','CHECKBOX',255,NULL,'N','N','Y','2018-01-14 17:18:07');
/*!40000 ALTER TABLE `l_module_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `l_module_field_option`
--

DROP TABLE IF EXISTS `l_module_field_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_module_field_option` (
  `id` int(11) NOT NULL,
  `module_name` varchar(100) DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `field_option_value` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `field_option_display` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `enabled` enum('Y','N') CHARACTER SET latin1 NOT NULL DEFAULT 'Y',
  `order_by` int(11) DEFAULT NULL,
  `lastupdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FK_l_module_field_option_x_field_name_idx` (`field_name`),
  CONSTRAINT `FK_l_module_field_option_x_field_name` FOREIGN KEY (`field_name`) REFERENCES `l_module_field` (`field_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `l_module_field_option`
--

LOCK TABLES `l_module_field_option` WRITE;
/*!40000 ALTER TABLE `l_module_field_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `l_module_field_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `l_role`
--

DROP TABLE IF EXISTS `l_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(20) DEFAULT NULL,
  `description` text,
  `lastupdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `role_UNIQUE` (`role`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `l_role`
--

LOCK TABLES `l_role` WRITE;
/*!40000 ALTER TABLE `l_role` DISABLE KEYS */;
INSERT INTO `l_role` VALUES (2,'ADMIN','Administrator of the Portal','2018-01-14 17:05:06');
/*!40000 ALTER TABLE `l_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_form_group`
--

DROP TABLE IF EXISTS `m_form_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_form_group` (
  `form_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `form_group_name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `originator` int(11) DEFAULT NULL,
  `enabled` enum('Y','N') CHARACTER SET latin1 DEFAULT 'Y',
  `lastupdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `notes` text CHARACTER SET latin1,
  PRIMARY KEY (`form_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_form_group`
--

LOCK TABLES `m_form_group` WRITE;
/*!40000 ALTER TABLE `m_form_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `m_form_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_form_group_option`
--

DROP TABLE IF EXISTS `m_form_group_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_form_group_option` (
  `form_group_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `form_group_id` int(11) DEFAULT NULL,
  `form_group_option_label` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `form_group_option_value` varchar(1000) CHARACTER SET latin1 DEFAULT NULL,
  `enabled` enum('Y','N') CHARACTER SET latin1 DEFAULT 'Y',
  `lastupdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`form_group_option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_form_group_option`
--

LOCK TABLES `m_form_group_option` WRITE;
/*!40000 ALTER TABLE `m_form_group_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `m_form_group_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_form_input`
--

DROP TABLE IF EXISTS `m_form_input`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_form_input` (
  `form_input_id` int(11) NOT NULL AUTO_INCREMENT,
  `form_group_id` int(11) DEFAULT NULL,
  `form_input_label` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `form_input_type` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `enabled` enum('Y','N') CHARACTER SET latin1 DEFAULT 'Y',
  `lastupdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`form_input_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_form_input`
--

LOCK TABLES `m_form_input` WRITE;
/*!40000 ALTER TABLE `m_form_input` DISABLE KEYS */;
/*!40000 ALTER TABLE `m_form_input` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_form_input_option`
--

DROP TABLE IF EXISTS `m_form_input_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_form_input_option` (
  `form_input_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `form_input_id` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `form_input_option_label` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `form_input_option_value` int(11) DEFAULT NULL,
  `enabled` enum('Y','N') CHARACTER SET latin1 DEFAULT 'Y',
  `lastupdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`form_input_option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_form_input_option`
--

LOCK TABLES `m_form_input_option` WRITE;
/*!40000 ALTER TABLE `m_form_input_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `m_form_input_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_members`
--

DROP TABLE IF EXISTS `m_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `meid` varchar(50) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `gender` enum('M','F') DEFAULT 'M',
  `birthdate` date DEFAULT '0000-00-00',
  `email_address` varchar(255) DEFAULT NULL,
  `active` enum('Y','N') DEFAULT 'Y',
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `lastupdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `meid_UNIQUE` (`meid`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `email_address_UNIQUE` (`email_address`),
  KEY `fk_m_members_x_role` (`role`),
  CONSTRAINT `fk_m_members_x_role` FOREIGN KEY (`role`) REFERENCES `l_role` (`role`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_members`
--

LOCK TABLES `m_members` WRITE;
/*!40000 ALTER TABLE `m_members` DISABLE KEYS */;
INSERT INTO `m_members` VALUES (1,NULL,'Aaron Andrew','Magsino','Colina','M','1995-07-13','aaroncolina@gmail.com','Y','xenon757',NULL,'ADMIN','2018-01-14 17:05:57');
/*!40000 ALTER TABLE `m_members` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-15  1:22:30
