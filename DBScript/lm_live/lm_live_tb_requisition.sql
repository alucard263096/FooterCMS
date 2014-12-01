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
-- Table structure for table `tb_requisition`
--

DROP TABLE IF EXISTS `tb_requisition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_requisition` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `company_name` varchar(150) NOT NULL,
  `company_city` varchar(100) NOT NULL,
  `company_address` varchar(300) NOT NULL,
  `company_phone` varchar(100) NOT NULL,
  `company_website` varchar(100) NOT NULL,
  `knew` varchar(1) NOT NULL,
  `message` varchar(300) NOT NULL,
  `question` varchar(300) NOT NULL,
  `status` varchar(1) NOT NULL,
  `remarks` varchar(300) NOT NULL,
  `applied_date` datetime NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_requisition`
--

LOCK TABLES `tb_requisition` WRITE;
/*!40000 ALTER TABLE `tb_requisition` DISABLE KEYS */;
INSERT INTO `tb_requisition` VALUES (1,'姓名','职务','alucard263096@126.com','13751082562','359304951','公司名称','公司所在地','公司地址','13751082562','','Y','我的留言','您希望进一步了解的信息是','A','测试','2014-11-16 13:52:28','2014-11-16 13:55:04',1);
/*!40000 ALTER TABLE `tb_requisition` ENABLE KEYS */;
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
