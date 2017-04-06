-- MySQL dump 10.13  Distrib 5.6.33, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: dbconstraints
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

DROP DATABASE IF EXISTS dbconstraints;
CREATE DATABASE dbconstraints;
USE dbconstraints;

--
-- Table structure for table `Book`
--

DROP TABLE IF EXISTS `Book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Book` (
  `bk_code` int(11) NOT NULL,
  `bk_title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bk_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Book`
--

LOCK TABLES `Book` WRITE;
/*!40000 ALTER TABLE `Book` DISABLE KEYS */;
/*!40000 ALTER TABLE `Book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BookWriter`
--

DROP TABLE IF EXISTS `BookWriter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BookWriter` (
  `wr_code` int(11) NOT NULL,
  `bk_code` int(11) NOT NULL,
  KEY `FK_WRITER_BOOK_idx` (`wr_code`),
  KEY `FK_BOOK_WRITER_idx` (`bk_code`),
  CONSTRAINT `FK_BOOK_WRITER` FOREIGN KEY (`bk_code`) REFERENCES `Book` (`bk_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_WRITER_BOOK` FOREIGN KEY (`wr_code`) REFERENCES `Writer` (`wr_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BookWriter`
--

LOCK TABLES `BookWriter` WRITE;
/*!40000 ALTER TABLE `BookWriter` DISABLE KEYS */;
/*!40000 ALTER TABLE `BookWriter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Edition`
--

DROP TABLE IF EXISTS `Edition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Edition` (
  `ed_code` int(11) NOT NULL,
  `ed_year` int(11) DEFAULT NULL,
  `bk_code` int(11) DEFAULT NULL,
  PRIMARY KEY (`ed_code`),
  KEY `FK_BOOK_EDITION_idx` (`bk_code`),
  CONSTRAINT `FK_BOOK_EDITION` FOREIGN KEY (`bk_code`) REFERENCES `Book` (`bk_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Edition`
--

LOCK TABLES `Edition` WRITE;
/*!40000 ALTER TABLE `Edition` DISABLE KEYS */;
/*!40000 ALTER TABLE `Edition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Writer`
--

DROP TABLE IF EXISTS `Writer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Writer` (
  `wr_code` int(11) NOT NULL,
  `wr_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`wr_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Writer`
--

LOCK TABLES `Writer` WRITE;
/*!40000 ALTER TABLE `Writer` DISABLE KEYS */;
/*!40000 ALTER TABLE `Writer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-05 17:24:31
