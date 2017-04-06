-- MySQL dump 10.13  Distrib 5.6.33, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: datatypes
-- ------------------------------------------------------
-- Server version	5.6.33-0ubuntu0.14.04.1

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

DROP DATABASE IF EXISTS datatypes;
CREATE DATABASE datatypes;
USE datatypes;

--
-- Table structure for table `Binaries`
--

DROP TABLE IF EXISTS `Binaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Binaries` (
  `id` int(11) NOT NULL,
  `type_binary` binary(1) DEFAULT NULL,
  `type_varbinary` varbinary(100) DEFAULT NULL,
  `type_blob` blob,
  `type_longblob` longblob,
  `type_mediumblob` mediumblob,
  `type_tinyblob` tinyblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Binaries`
--

LOCK TABLES `Binaries` WRITE;
/*!40000 ALTER TABLE `Binaries` DISABLE KEYS */;
/*!40000 ALTER TABLE `Binaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Booleans`
--

DROP TABLE IF EXISTS `Booleans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Booleans` (
  `id` int(11) NOT NULL,
  `type_bit` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Booleans`
--

LOCK TABLES `Booleans` WRITE;
/*!40000 ALTER TABLE `Booleans` DISABLE KEYS */;
INSERT INTO `Booleans` VALUES (1,''),(2,'\0');
/*!40000 ALTER TABLE `Booleans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Characters`
--

DROP TABLE IF EXISTS `Characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Characters` (
  `id` int(11) NOT NULL,
  `type_char` char(1) DEFAULT NULL,
  `type_varchar` varchar(100) DEFAULT NULL,
  `type_text` text,
  `type_enum` enum('N','Y') DEFAULT NULL,
  `type_set` set('N','Y') DEFAULT NULL,
  `type_longtext` longtext,
  `type_mediumtext` mediumtext,
  `type_tinytext` tinytext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Characters`
--

LOCK TABLES `Characters` WRITE;
/*!40000 ALTER TABLE `Characters` DISABLE KEYS */;
INSERT INTO `Characters` VALUES (1,'a','abc','abc','Y','N','abc','abc','abc');
/*!40000 ALTER TABLE `Characters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DateTimes`
--

DROP TABLE IF EXISTS `DateTimes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DateTimes` (
  `id` int(11) NOT NULL,
  `type_date` date DEFAULT NULL,
  `type_datetime` datetime DEFAULT NULL,
  `type_timestamp` timestamp NULL DEFAULT NULL,
  `type_time` time DEFAULT NULL,
  `type_year` year(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DateTimes`
--

LOCK TABLES `DateTimes` WRITE;
/*!40000 ALTER TABLE `DateTimes` DISABLE KEYS */;
INSERT INTO `DateTimes` VALUES (1,'2013-03-18','2013-03-18 10:12:10','2013-03-18 10:12:10','10:12:10',2013);
/*!40000 ALTER TABLE `DateTimes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Numerics`
--

DROP TABLE IF EXISTS `Numerics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Numerics` (
  `id` int(11) NOT NULL,
  `type_tinyint` tinyint(4) DEFAULT NULL,
  `type_smallint` smallint(6) DEFAULT NULL,
  `type_mediumint` mediumint(9) DEFAULT NULL,
  `type_int` int(11) DEFAULT NULL,
  `type_bigint` bigint(20) DEFAULT NULL,
  `type_decimal` decimal(16,5) DEFAULT NULL,
  `type_float` float DEFAULT NULL,
  `type_double` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Numerics`
--

LOCK TABLES `Numerics` WRITE;
/*!40000 ALTER TABLE `Numerics` DISABLE KEYS */;
INSERT INTO `Numerics` VALUES (1,1,1,1,1,1,1.00000,1,1);
/*!40000 ALTER TABLE `Numerics` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-05 11:28:24
