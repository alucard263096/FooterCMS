CREATE DATABASE  IF NOT EXISTS `lm_live` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `lm_live`;
-- MySQL dump 10.13  Distrib 5.6.19, for Win32 (x86)
--
-- Host: localhost    Database: lm_live
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
-- Table structure for table `tb_download_category`
--

DROP TABLE IF EXISTS `tb_download_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_download_category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `seq` varchar(11) NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL,
  `created_user` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_user` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_download_category`
--

LOCK TABLES `tb_download_category` WRITE;
/*!40000 ALTER TABLE `tb_download_category` DISABLE KEYS */;
INSERT INTO `tb_download_category` VALUES (1,'aaaa','2','D',1,'2014-08-12 21:26:18',1,'2014-08-17 12:53:02'),(2,'PALACOS','1','D',1,'2014-08-13 00:39:46',1,'2014-08-13 00:43:58'),(3,'aaa','0','D',1,'2014-08-13 23:10:55',1,'2014-08-17 12:29:32'),(4,'PALACOS 关节骨水泥','1','A',1,'2014-08-17 12:42:57',1,'2014-11-28 14:17:33'),(5,'Osteopal V 脊柱骨水泥','2','A',1,'2014-08-17 12:44:51',1,'2014-11-28 12:35:55'),(6,'骨水泥真空混合系统','3','D',1,'2014-08-17 12:46:16',1,'2014-11-28 14:07:19'),(7,'MAST 聚乳酸手术保护膜','3','A',1,'2014-08-17 12:46:59',1,'2014-11-28 14:08:39'),(8,'no','0','D',1,'2014-11-03 16:10:28',1,'2014-11-03 23:04:41'),(9,'aa','aa','D',1,'2014-11-27 23:33:16',1,'2014-11-27 23:35:34');
/*!40000 ALTER TABLE `tb_download_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-01 23:15:32
