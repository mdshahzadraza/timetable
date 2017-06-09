CREATE DATABASE  IF NOT EXISTS `timetable` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `timetable`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: timetable
-- ------------------------------------------------------
-- Server version	5.7.16-log

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
-- Table structure for table `branch_table`
--

DROP TABLE IF EXISTS `branch_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branch_table` (
  `bid` int(20) NOT NULL,
  `bname` varchar(40) DEFAULT NULL,
  `sid` int(20) DEFAULT NULL,
  PRIMARY KEY (`bid`),
  KEY `sid` (`sid`),
  CONSTRAINT `branch_table_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `streamm_table` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch_table`
--

LOCK TABLES `branch_table` WRITE;
/*!40000 ALTER TABLE `branch_table` DISABLE KEYS */;
INSERT INTO `branch_table` VALUES (1,'cse',1);
/*!40000 ALTER TABLE `branch_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `designation_category`
--

DROP TABLE IF EXISTS `designation_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `designation_category` (
  `type_id` int(20) NOT NULL,
  `type_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `designation_category`
--

LOCK TABLES `designation_category` WRITE;
/*!40000 ALTER TABLE `designation_category` DISABLE KEYS */;
INSERT INTO `designation_category` VALUES (1,'Dean'),(2,'HOD'),(3,'Controller'),(4,'Principal'),(5,'Assistant Professor'),(6,' Professor'),(7,' Lab Instructor');
/*!40000 ALTER TABLE `designation_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailverify`
--

DROP TABLE IF EXISTS `emailverify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailverify` (
  `uid` int(12) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `status` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailverify`
--

LOCK TABLES `emailverify` WRITE;
/*!40000 ALTER TABLE `emailverify` DISABLE KEYS */;
INSERT INTO `emailverify` VALUES (2,'pr85in2',0),(3,'aj85in3',0),(4,'sh85in4',0),(5,'as85in5',0),(6,'ze85in6',0),(7,'ar85in7',0),(8,'ha85in8',0),(9,'ni85in9',0),(13,'ka43in13',0),(14,'sh43in14',0),(15,'sh43in15',0),(16,'ra34in16',0),(17,'mo55fd17',0),(18,'md04hk18',0);
/*!40000 ALTER TABLE `emailverify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_table`
--

DROP TABLE IF EXISTS `group_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_table` (
  `gid` int(20) NOT NULL,
  `gname` varchar(40) DEFAULT NULL,
  `bid` int(20) DEFAULT NULL,
  PRIMARY KEY (`gid`),
  KEY `bid` (`bid`),
  CONSTRAINT `group_table_ibfk_1` FOREIGN KEY (`bid`) REFERENCES `branch_table` (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_table`
--

LOCK TABLES `group_table` WRITE;
/*!40000 ALTER TABLE `group_table` DISABLE KEYS */;
INSERT INTO `group_table` VALUES (1,'cse1',1),(2,'cse2',1);
/*!40000 ALTER TABLE `group_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institution_category`
--

DROP TABLE IF EXISTS `institution_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution_category` (
  `type_id` int(20) NOT NULL,
  `type_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution_category`
--

LOCK TABLES `institution_category` WRITE;
/*!40000 ALTER TABLE `institution_category` DISABLE KEYS */;
INSERT INTO `institution_category` VALUES (1,'Technical University'),(2,'Deemed University'),(3,'Affailated University'),(4,'B Schoo;'),(5,'State University');
/*!40000 ALTER TABLE `institution_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_table`
--

DROP TABLE IF EXISTS `login_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_table` (
  `email` varchar(40) NOT NULL,
  `password` varchar(40) DEFAULT NULL,
  `status` int(10) DEFAULT NULL,
  `user_id` int(20) DEFAULT NULL,
  `user_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`email`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `login_table_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_table`
--

LOCK TABLES `login_table` WRITE;
/*!40000 ALTER TABLE `login_table` DISABLE KEYS */;
INSERT INTO `login_table` VALUES ('@abvc','qwerty',1,14,2),('@abvcddd','qwerty',1,15,2),('ajaz@gmail.com','qwerty',1,3,2),('aqib','qwerty',1,12,2),('arif@gmail.com','qwerty',1,7,2),('asif@gmail.com','qwerty',1,5,2),('dfgfdgd','wwwq',1,13,2),('haroon@gmail.com','qwerty',1,8,2),('m.ikram876@gmail.com','qwerty',0,17,2),('mdshahzadraza@gmail.com','qwerty',1,1,1),('mdsrnq@gmail.com','qwerty',0,18,2),('nitin@gmail.com','qwerty',1,9,2),('prashant@gmail.com','qwerty',1,2,2),('qwqe','qwerty',1,11,2),('rahul','qwerty',1,16,2),('ritesh@gmail.com','qwerty',1,10,2),('shahzad@gmail.com','qwerty',1,4,2),('zeeshan@gmail.com','qwerty',1,6,2);
/*!40000 ALTER TABLE `login_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programme_table`
--

DROP TABLE IF EXISTS `programme_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `programme_table` (
  `pid` int(20) NOT NULL,
  `pname` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programme_table`
--

LOCK TABLES `programme_table` WRITE;
/*!40000 ALTER TABLE `programme_table` DISABLE KEYS */;
INSERT INTO `programme_table` VALUES (1,'pg'),(2,'Post Graduate');
/*!40000 ALTER TABLE `programme_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `streamm_table`
--

DROP TABLE IF EXISTS `streamm_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `streamm_table` (
  `sid` int(20) NOT NULL,
  `sname` varchar(40) DEFAULT NULL,
  `duration` int(20) DEFAULT NULL,
  `sem` int(20) DEFAULT NULL,
  `pid` int(20) DEFAULT NULL,
  PRIMARY KEY (`sid`),
  KEY `pid` (`pid`),
  CONSTRAINT `streamm_table_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `programme_table` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `streamm_table`
--

LOCK TABLES `streamm_table` WRITE;
/*!40000 ALTER TABLE `streamm_table` DISABLE KEYS */;
INSERT INTO `streamm_table` VALUES (1,'btech',4,8,1),(2,'M.tech(Evening)',3,6,2);
/*!40000 ALTER TABLE `streamm_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_table`
--

DROP TABLE IF EXISTS `subject_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject_table` (
  `subid` int(20) NOT NULL,
  `subname` varchar(40) DEFAULT NULL,
  `bid` int(20) DEFAULT NULL,
  `year` int(20) DEFAULT NULL,
  `semester` int(20) DEFAULT NULL,
  `lab` int(20) DEFAULT NULL,
  PRIMARY KEY (`subid`),
  KEY `bid` (`bid`),
  CONSTRAINT `subject_table_ibfk_1` FOREIGN KEY (`bid`) REFERENCES `branch_table` (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_table`
--

LOCK TABLES `subject_table` WRITE;
/*!40000 ALTER TABLE `subject_table` DISABLE KEYS */;
INSERT INTO `subject_table` VALUES (1,'physics',1,1,1,0),(2,'electrical',1,1,1,0),(3,'math1',1,1,1,0),(4,'electronics',1,1,1,0),(5,'pc',1,1,1,1),(6,'english',1,1,1,0),(7,'mechanical',1,1,2,0),(8,'chemistry',1,1,2,0),(9,'c',1,1,2,0),(10,'manufacturing',1,1,2,0),(11,'evs',1,1,2,0),(12,'Computer Graphics',1,1,2,0),(13,'manufacturin lab',1,1,2,1),(14,'physics lab',1,1,1,1),(15,'electrical lab',1,1,1,1),(16,'electronics lab',1,1,1,1),(17,'pc lab',1,1,1,1),(18,'Data Structue',1,2,3,0),(19,'ACP',1,2,3,0),(21,'Dot Net',1,3,5,0),(22,'DBMS',1,3,5,0),(23,'DIP',1,4,7,0);
/*!40000 ALTER TABLE `subject_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timetable_generation`
--

DROP TABLE IF EXISTS `timetable_generation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timetable_generation` (
  `teacherid` int(20) DEFAULT NULL,
  `streamid` int(20) DEFAULT NULL,
  `branchid` int(20) DEFAULT NULL,
  `year` int(20) DEFAULT NULL,
  `semester` int(20) DEFAULT NULL,
  `day` int(20) DEFAULT NULL,
  `subid` int(20) DEFAULT NULL,
  `lecture` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timetable_generation`
--

LOCK TABLES `timetable_generation` WRITE;
/*!40000 ALTER TABLE `timetable_generation` DISABLE KEYS */;
INSERT INTO `timetable_generation` VALUES (9,1,1,1,1,1,1,1),(3,1,1,1,1,1,2,2),(5,1,1,1,1,1,3,3),(8,1,1,1,1,1,4,4),(4,1,1,1,1,1,14,8),(9,1,1,1,1,2,1,3),(3,1,1,1,1,2,2,4),(6,1,1,1,1,2,5,1),(13,1,1,1,1,2,6,2),(10,1,1,1,1,2,15,8),(5,1,1,1,1,3,3,1),(8,1,1,1,1,3,4,2),(6,1,1,1,1,3,5,3),(13,1,1,1,1,3,6,4),(11,1,1,1,1,3,16,8),(9,1,1,1,1,4,1,1),(3,1,1,1,1,4,2,2),(5,1,1,1,1,4,3,3),(8,1,1,1,1,4,4,4),(12,1,1,1,1,4,17,8),(9,1,1,1,1,5,1,1),(3,1,1,1,1,5,2,2),(5,1,1,1,1,5,3,3),(8,1,1,1,1,5,4,4),(6,1,1,1,1,5,5,6),(13,1,1,1,1,5,6,7),(6,1,1,1,1,6,5,1),(13,1,1,1,1,6,6,2);
/*!40000 ALTER TABLE `timetable_generation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_subject`
--

DROP TABLE IF EXISTS `user_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_subject` (
  `user_id` int(20) DEFAULT NULL,
  `subid` int(20) DEFAULT NULL,
  `priority` int(20) DEFAULT NULL,
  KEY `user_id` (`user_id`),
  KEY `subid` (`subid`),
  CONSTRAINT `user_subject_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`user_id`),
  CONSTRAINT `user_subject_ibfk_2` FOREIGN KEY (`subid`) REFERENCES `subject_table` (`subid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_subject`
--

LOCK TABLES `user_subject` WRITE;
/*!40000 ALTER TABLE `user_subject` DISABLE KEYS */;
INSERT INTO `user_subject` VALUES (14,1,1),(14,2,2),(14,3,3),(14,5,2),(5,1,2),(5,2,2),(5,3,1),(5,4,2),(6,1,2),(6,2,3),(6,4,3),(6,5,1),(13,1,2),(13,3,2),(13,5,2),(13,6,3),(15,1,2),(15,2,1),(15,3,2),(15,4,2),(2,1,3),(2,2,3),(2,3,1),(2,4,2),(3,2,1),(3,3,3),(3,15,1),(3,16,3),(7,4,3),(7,5,2),(7,6,1),(7,17,1),(8,1,3),(8,4,2),(8,5,2),(8,6,2),(8,14,1),(9,1,1),(9,3,2),(9,16,2),(4,14,1),(4,15,2),(4,16,2),(4,17,3),(10,14,2),(10,15,2),(10,16,3),(10,17,2),(11,14,2),(11,15,2),(11,16,2),(11,17,1),(12,17,1);
/*!40000 ALTER TABLE `user_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_table`
--

DROP TABLE IF EXISTS `user_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_table` (
  `user_id` int(20) NOT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `contact_no` varchar(20) DEFAULT NULL,
  `itype_id` int(20) DEFAULT NULL,
  `dtype_id` int(20) DEFAULT NULL,
  `institution` varchar(30) DEFAULT NULL,
  `bid` int(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `itype_id` (`itype_id`),
  KEY `dtype_id` (`dtype_id`),
  KEY `bid` (`bid`),
  CONSTRAINT `user_table_ibfk_1` FOREIGN KEY (`itype_id`) REFERENCES `institution_category` (`type_id`),
  CONSTRAINT `user_table_ibfk_2` FOREIGN KEY (`dtype_id`) REFERENCES `designation_category` (`type_id`),
  CONSTRAINT `user_table_ibfk_3` FOREIGN KEY (`bid`) REFERENCES `branch_table` (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_table`
--

LOCK TABLES `user_table` WRITE;
/*!40000 ALTER TABLE `user_table` DISABLE KEYS */;
INSERT INTO `user_table` VALUES (1,'Md Shahzad','Raza','7860256173',1,1,'Integral',NULL),(2,'prashant','srivastava','858595',1,4,'integral',1),(3,'ajaz','ansari','858595',1,4,'integral',1),(4,'shahzad','raza','858595',1,4,'integral',1),(5,'asif','raza','858595',1,4,'integral',1),(6,'zeeshan','khan','858595',1,4,'integral',1),(7,'arif','khan','858595',1,4,'integral',1),(8,'haroon','khan','858595',1,4,'integral',1),(9,'nitin','khan','858595',1,4,'integral',1),(10,'ritesh','tiwari','124',1,4,'integral',1),(11,'atif','umar','124',1,4,'integral',1),(12,'tabrez','umar','124',1,4,'integral',1),(13,'kashif','umar','12434',1,4,'integral',1),(14,'shahzaev','khan','12434',1,4,'integral',1),(15,'shahid','khan','12434',1,4,'integral',1),(16,'rahu;','a','1234',1,5,'integral',1),(17,'monis','wq','5555',1,1,'fdfdf',1),(18,'md','shahryar','7204691259',1,1,'hkbk',NULL);
/*!40000 ALTER TABLE `user_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-09  7:40:12
