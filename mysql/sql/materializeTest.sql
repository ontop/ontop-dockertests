-- MySQL dump 10.13  Distrib 5.6.33, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: materializeTest
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

DROP DATABASE IF EXISTS materializeTest;
CREATE DATABASE materializeTest;
USE materializeTest;
--
-- Table structure for table `T1`
--

DROP TABLE IF EXISTS `T1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T1` (
  `id` int(11) NOT NULL,
  `p1` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T1`
--

LOCK TABLES `T1` WRITE;
/*!40000 ALTER TABLE `T1` DISABLE KEYS */;
INSERT INTO `T1` VALUES (1,'aa'),(2,'bb'),(3,'cc');
/*!40000 ALTER TABLE `T1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T2`
--

DROP TABLE IF EXISTS `T2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T2` (
  `id` int(11) NOT NULL,
  `p1` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T2`
--

LOCK TABLES `T2` WRITE;
/*!40000 ALTER TABLE `T2` DISABLE KEYS */;
INSERT INTO `T2` VALUES (1,11),(2,22),(3,33);
/*!40000 ALTER TABLE `T2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T3`
--

DROP TABLE IF EXISTS `T3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T3` (
  `id` int(11) NOT NULL,
  `p1` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T3`
--

LOCK TABLES `T3` WRITE;
/*!40000 ALTER TABLE `T3` DISABLE KEYS */;
INSERT INTO `T3` VALUES (1,101),(2,202),(3,303);
/*!40000 ALTER TABLE `T3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T4`
--

DROP TABLE IF EXISTS `T4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T4` (
  `id` int(11) NOT NULL,
  `p1` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T4`
--

LOCK TABLES `T4` WRITE;
/*!40000 ALTER TABLE `T4` DISABLE KEYS */;
INSERT INTO `T4` VALUES (1,1.01),(2,2.02),(3,3.03);
/*!40000 ALTER TABLE `T4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T5`
--

DROP TABLE IF EXISTS `T5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T5` (
  `id` int(11) NOT NULL,
  `p1` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T5`
--

LOCK TABLES `T5` WRITE;
/*!40000 ALTER TABLE `T5` DISABLE KEYS */;
INSERT INTO `T5` VALUES (1,'2012-04-30 22:00:00'),(2,'2013-06-01 22:00:00'),(3,'2011-07-06 22:00:00');
/*!40000 ALTER TABLE `T5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T6`
--

DROP TABLE IF EXISTS `T6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T6` (
  `id` int(11) NOT NULL,
  `p1` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T6`
--

LOCK TABLES `T6` WRITE;
/*!40000 ALTER TABLE `T6` DISABLE KEYS */;
INSERT INTO `T6` VALUES (1,1),(2,0),(3,1);
/*!40000 ALTER TABLE `T6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T7`
--

DROP TABLE IF EXISTS `T7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T7` (
  `id` int(11) NOT NULL,
  `p1` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T7`
--

LOCK TABLES `T7` WRITE;
/*!40000 ALTER TABLE `T7` DISABLE KEYS */;
INSERT INTO `T7` VALUES (1,'aaa'),(2,'bbb'),(3,'ccc');
/*!40000 ALTER TABLE `T7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T8`
--

DROP TABLE IF EXISTS `T8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T8` (
  `id` int(11) NOT NULL,
  `p1` varchar(10) DEFAULT NULL,
  `p2` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T8`
--

LOCK TABLES `T8` WRITE;
/*!40000 ALTER TABLE `T8` DISABLE KEYS */;
INSERT INTO `T8` VALUES (1,'aaa','en'),(2,'bbb','es'),(3,'ccc','fr');
/*!40000 ALTER TABLE `T8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T9`
--

DROP TABLE IF EXISTS `T9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T9` (
  `id` int(11) NOT NULL,
  `id2` int(11) NOT NULL,
  PRIMARY KEY (`id`,`id2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T9`
--

LOCK TABLES `T9` WRITE;
/*!40000 ALTER TABLE `T9` DISABLE KEYS */;
INSERT INTO `T9` VALUES (1,3),(2,2),(3,1);
/*!40000 ALTER TABLE `T9` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-05 16:55:58
