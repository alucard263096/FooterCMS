CREATE DATABASE  IF NOT EXISTS `portalsite_lm` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `portalsite_lm`;
-- MySQL dump 10.13  Distrib 5.6.19, for Win32 (x86)
--
-- Host: localhost    Database: portalsite_lm
-- ------------------------------------------------------
-- Server version	5.6.21-enterprise-commercial-advanced-log

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
-- Table structure for table `tb_user_function`
--

DROP TABLE IF EXISTS `tb_user_function`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user_function` (
  `user_id` int(11) NOT NULL,
  `function_id` int(11) NOT NULL,
  `status` char(1) NOT NULL,
  `created_user` int(11) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user_function`
--

LOCK TABLES `tb_user_function` WRITE;
/*!40000 ALTER TABLE `tb_user_function` DISABLE KEYS */;
INSERT INTO `tb_user_function` VALUES (2,2,'A',1,'2014-08-09 10:54:08'),(2,3,'A',1,'2014-08-09 10:54:08'),(2,4,'A',1,'2014-08-09 10:54:08'),(2,10,'A',1,'2014-08-09 10:54:08'),(2,6,'A',1,'2014-08-09 10:54:08'),(2,8,'A',1,'2014-08-09 10:54:08'),(2,9,'A',1,'2014-08-09 10:54:08'),(1,2,'A',1,'2014-11-15 20:09:14'),(1,3,'A',1,'2014-11-15 20:09:14'),(1,4,'A',1,'2014-11-15 20:09:14'),(1,11,'A',1,'2014-11-15 20:09:14'),(1,12,'A',1,'2014-11-15 20:09:14'),(1,6,'A',1,'2014-11-15 20:09:14'),(1,10,'A',1,'2014-11-15 20:09:14'),(1,13,'A',1,'2014-11-15 20:09:14'),(1,8,'A',1,'2014-11-15 20:09:14'),(1,9,'A',1,'2014-11-15 20:09:14');
/*!40000 ALTER TABLE `tb_user_function` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-30 22:38:14
