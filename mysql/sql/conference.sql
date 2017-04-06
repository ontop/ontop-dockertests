-- MySQL dump 10.13  Distrib 5.6.33, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: conference
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

DROP DATABASE IF EXISTS conference;
CREATE DATABASE conference;
USE conference;--
--
-- Table structure for table `Acceptance`
--

DROP TABLE IF EXISTS `Acceptance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Acceptance` (
  `ID` int(11) NOT NULL,
  `UploadTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `User` int(11) NOT NULL,
  `Paper` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `User` (`User`),
  KEY `Paper` (`Paper`),
  CONSTRAINT `acceptance_ibfk_1` FOREIGN KEY (`User`) REFERENCES `Login` (`ID`),
  CONSTRAINT `acceptance_ibfk_2` FOREIGN KEY (`Paper`) REFERENCES `Paper` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Acceptance`
--

LOCK TABLES `Acceptance` WRITE;
/*!40000 ALTER TABLE `Acceptance` DISABLE KEYS */;
/*!40000 ALTER TABLE `Acceptance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Conference`
--

DROP TABLE IF EXISTS `Conference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Conference` (
  `ID` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Organizer` int(11) NOT NULL,
  `Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `Organizer` (`Organizer`),
  CONSTRAINT `conference_ibfk_1` FOREIGN KEY (`Organizer`) REFERENCES `Login` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Conference`
--

LOCK TABLES `Conference` WRITE;
/*!40000 ALTER TABLE `Conference` DISABLE KEYS */;
INSERT INTO `Conference` VALUES (441,'SWC',332,'1980-03-14 23:00:01');
/*!40000 ALTER TABLE `Conference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Decision`
--

DROP TABLE IF EXISTS `Decision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Decision` (
  `ID` varchar(20) NOT NULL,
  `DecisionTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Chair` int(11) NOT NULL,
  `Outcome` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Chair` (`Chair`),
  CONSTRAINT `decision_ibfk_1` FOREIGN KEY (`Chair`) REFERENCES `Login` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Decision`
--

LOCK TABLES `Decision` WRITE;
/*!40000 ALTER TABLE `Decision` DISABLE KEYS */;
INSERT INTO `Decision` VALUES ('661','1980-03-28 00:00:01',332,1);
/*!40000 ALTER TABLE `Decision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Login`
--

DROP TABLE IF EXISTS `Login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Login` (
  `ID` int(11) NOT NULL,
  `User` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Login`
--

LOCK TABLES `Login` WRITE;
/*!40000 ALTER TABLE `Login` DISABLE KEYS */;
INSERT INTO `Login` VALUES (331,'111'),(332,'112');
/*!40000 ALTER TABLE `Login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LoginStats`
--

DROP TABLE IF EXISTS `LoginStats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LoginStats` (
  `ID` int(11) NOT NULL,
  `User` int(11) NOT NULL,
  `CT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `LastAccess` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `User` (`User`),
  CONSTRAINT `loginstats_ibfk_1` FOREIGN KEY (`User`) REFERENCES `Login` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LoginStats`
--

LOCK TABLES `LoginStats` WRITE;
/*!40000 ALTER TABLE `LoginStats` DISABLE KEYS */;
/*!40000 ALTER TABLE `LoginStats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Paper`
--

DROP TABLE IF EXISTS `Paper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Paper` (
  `ID` int(11) NOT NULL,
  `Title` varchar(20) NOT NULL,
  `CT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `User` int(11) NOT NULL,
  `Conf` int(11) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Status` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `User` (`User`),
  KEY `Conf` (`Conf`),
  KEY `Status` (`Status`),
  CONSTRAINT `paper_ibfk_1` FOREIGN KEY (`User`) REFERENCES `Login` (`ID`),
  CONSTRAINT `paper_ibfk_2` FOREIGN KEY (`Conf`) REFERENCES `Conference` (`ID`),
  CONSTRAINT `paper_ibfk_3` FOREIGN KEY (`Status`) REFERENCES `Decision` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Paper`
--

LOCK TABLES `Paper` WRITE;
/*!40000 ALTER TABLE `Paper` DISABLE KEYS */;
INSERT INTO `Paper` VALUES (1,'Conference 1','1980-03-20 23:00:01',331,441,'book','661');
/*!40000 ALTER TABLE `Paper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Review`
--

DROP TABLE IF EXISTS `Review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Review` (
  `ID` int(11) NOT NULL,
  `IDrr` int(11) NOT NULL,
  `SubmissionTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `IDrr` (`IDrr`),
  CONSTRAINT `review_ibfk_1` FOREIGN KEY (`IDrr`) REFERENCES `ReviewRequest` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Review`
--

LOCK TABLES `Review` WRITE;
/*!40000 ALTER TABLE `Review` DISABLE KEYS */;
/*!40000 ALTER TABLE `Review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReviewRequest`
--

DROP TABLE IF EXISTS `ReviewRequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReviewRequest` (
  `ID` int(11) NOT NULL,
  `InvitationTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Reviewer` int(11) NOT NULL,
  `Paper` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Reviewer` (`Reviewer`),
  KEY `Paper` (`Paper`),
  CONSTRAINT `reviewrequest_ibfk_1` FOREIGN KEY (`Reviewer`) REFERENCES `Login` (`ID`),
  CONSTRAINT `reviewrequest_ibfk_2` FOREIGN KEY (`Paper`) REFERENCES `Paper` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ReviewRequest`
--

LOCK TABLES `ReviewRequest` WRITE;
/*!40000 ALTER TABLE `ReviewRequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReviewRequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Submission`
--

DROP TABLE IF EXISTS `Submission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Submission` (
  `ID` int(11) NOT NULL,
  `UploadTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `User` int(11) NOT NULL,
  `Paper` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `User` (`User`),
  KEY `Paper` (`Paper`),
  CONSTRAINT `submission_ibfk_1` FOREIGN KEY (`User`) REFERENCES `Login` (`ID`),
  CONSTRAINT `submission_ibfk_2` FOREIGN KEY (`Paper`) REFERENCES `Paper` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Submission`
--

LOCK TABLES `Submission` WRITE;
/*!40000 ALTER TABLE `Submission` DISABLE KEYS */;
INSERT INTO `Submission` VALUES (991,'1975-03-20 23:00:01',331,1);
/*!40000 ALTER TABLE `Submission` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-05 17:24:56
