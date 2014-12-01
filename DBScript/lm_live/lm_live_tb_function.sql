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
-- Table structure for table `tb_function`
--

DROP TABLE IF EXISTS `tb_function`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_function` (
  `function_id` int(11) NOT NULL,
  `function_name` varchar(50) NOT NULL,
  `function_link` varchar(100) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `function_type` int(11) NOT NULL,
  `function_group` int(11) NOT NULL,
  `seq` int(11) NOT NULL,
  `status` char(1) NOT NULL,
  PRIMARY KEY (`function_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_function`
--

LOCK TABLES `tb_function` WRITE;
/*!40000 ALTER TABLE `tb_function` DISABLE KEYS */;
INSERT INTO `tb_function` VALUES (1,'内容管理','#',1,1,1,1,'A'),(2,'一般内容','general.php',1,9,1,11,'A'),(3,'下载中心','download.php',1,9,1,12,'A'),(4,'新闻中心','news.php',1,9,1,13,'A'),(5,'伙伴管理','#',5,1,1,14,'A'),(6,'分区经理','manager.php',5,9,1,15,'A'),(7,'日常管理','#',7,1,2,2,'A'),(8,'用户管理','user.php',7,9,7,71,'A'),(9,'网站管理','website.php',7,9,7,72,'A'),(10,'供应商管理','partner.php',5,9,1,15,'A'),(11,'产品分类管理','product_category.php',1,9,1,16,'A'),(12,'产品管理','product.php',1,9,1,17,'A'),(13,'加盟申请','requisition.php',5,9,1,16,'A');
/*!40000 ALTER TABLE `tb_function` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-01 23:15:34
