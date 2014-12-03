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
-- Table structure for table `tb_website_banner`
--

DROP TABLE IF EXISTS `tb_website_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_website_banner` (
  `id` int(11) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `cont` varchar(255) NOT NULL,
  `seq` varchar(10) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `status` char(1) NOT NULL,
  `created_user` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_user` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`slogan`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_website_banner`
--

LOCK TABLES `tb_website_banner` WRITE;
/*!40000 ALTER TABLE `tb_website_banner` DISABLE KEYS */;
INSERT INTO `tb_website_banner` VALUES (1,'<span style=\'color:#007dc6\'>SurgiWrap</span> 唯一兼具支撑保护与隔离的聚乳酸可吸收膜。','产品','<span style=\'color:#007dc6\'>聚乳酸手术保护膜</span>','<p><span style=\"color: rgb(0, 125, 198);\">SurgiWrap</span>聚乳酸脂手术保护膜（简称&ldquo;MAST膜&rdquo;）是由美国MAST Biosurgery Inc.研制生产。</p>\n','3','14111017003Operatie-1-e1408646748320.jpg','http://www.gushuini.com/product/detail.php?id=1','A',NULL,NULL,1,'2014-12-01 22:38:35'),(2,'<span style=\'color:#FFDC35\'>OSTEOPAL&reg; V</span>由内而外强化脊椎、再现灵活','产品','<span style=\'color:#FFDC35\'>脊柱外科领域的黄金标准。</span>','50多年来，德国制造的贺利氏一直是全球骨水泥的领先品牌。 PALACOS? 累积数十年的成功经验，使得贺利氏骨水泥系列不断扩展。OSTEOPAL? 脊柱骨水泥可满足严苛的椎体加固要求，由内而外强化脊椎、再现灵活。\n','2','1409221703811350592_101205133000_2.jpg','http://www.gushuini.com/product/detail.php?id=4','A',NULL,NULL,NULL,NULL),(3,'公司拥有稳定成熟的产品销售市场，经营的产品为同领域中的优秀产品，公司负责德国骨水泥产品在大陆地区的渠道销售管理及市场技术支持服务。','加入我们','雷德睦华诚邀您的加盟','公司拥有稳定成熟的产品销售市场，经营的产品为同领域中的优秀产品，公司负责德国骨水泥产品在大陆地区的渠道销售管理及市场技术支持服务。','','14090814031HMT_Walzwerk.jpg',NULL,'D',NULL,NULL,NULL,NULL),(4,'<span style=\'color:#74B726\'>PALACOS&reg; </span>假体置换术的黄金标准，50多年的品质和安全性。','产品','<span style=\'color:#74B726\'>品质、专业、创新。适用于关节置换术的现代化骨水泥技术。</span>','50 多年来，PALACOS? 骨水泥一直是植入物永久性骨锚定领域的黄金标准。完美\n融合现有的专业知识与市场需求 – 贺利氏成功的秘诀。基于数十年的研发工作，\n贺利氏得以持续开发创新产品，扩大产品组合。除了选择合适的骨水泥外，现代化骨\n水泥技术的应用也对人工关节置换手术的成功与否起着至关重要的作用。为此，贺\n利氏推出全面的产品组合，从高品质 PALACOS? 骨水泥到创新 PALAMIX? 真空混\n合系统再到用于清洗骨床的脉冲冲洗系统。','1','1411101602314092.jpg','http://www.gushuini.com/product/detail.php?id=3','A',NULL,NULL,NULL,NULL),(5,'\"\"','\"\"','\"\"','','1','','','A',1,'2014-12-01 22:39:20',1,'2014-12-01 22:39:20');
/*!40000 ALTER TABLE `tb_website_banner` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-01 23:15:31
