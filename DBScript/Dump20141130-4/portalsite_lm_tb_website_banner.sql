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
  `cont` varchar(3000) NOT NULL,
  `seq` varchar(10) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `status` char(1) NOT NULL,
  `created_user` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_user` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_website_banner`
--

LOCK TABLES `tb_website_banner` WRITE;
/*!40000 ALTER TABLE `tb_website_banner` DISABLE KEYS */;
INSERT INTO `tb_website_banner` VALUES (1,'本公司为德国Heraeus Medical®医疗器械生产商在中国大陆指定产品的总代理，同时作为企业驻中国的联络处。','公司简介','我们是雷德睦华','<p>本公司为德国Heraeus Medical医疗器械生产商在中国大陆指定产品的总代理，同时作为企业驻中国的联络处。 公司拥有稳定成熟的产品销售市场，经营的产品为同领域中的优秀产品，公司负责德国骨水泥产品在大陆地区的渠道销售管理及市场技术支持服务。为快速完成德国生产商对渠道规范的要求，也更符合国内市场的需求！</p>\n','1','14113010054Hydrangeas.jpg','aaa','A',NULL,NULL,1,'2014-11-30 18:54:00'),(2,'如果你对我们的产品感到有兴趣，请立即联系我们！','联系我们','雷德睦华医药科技（北京）有限公司北京总部','地址 :\n北京市丰台区马家堡东路106号自然新天地写字楼606室\n邮编：100068\n\n联系人 :\n李倢瑞 Jerry\n\n联系电话 :\n010-58031636\n010-58032661\n传真：010-58031636 转 804','','14090811048HEN_Sensor.jpg',NULL,'A',NULL,NULL,NULL,NULL),(3,'t','t','t','t','','14090811033HEN_Sensor.jpg',NULL,'D',NULL,NULL,NULL,NULL),(4,'t','t','t','t','','14090811051HEN_Sensor.jpg',NULL,'D',NULL,NULL,NULL,NULL),(5,'a','e','e','z','','14090811005HEN_Sensor.jpg',NULL,'D',NULL,NULL,NULL,NULL),(6,'a','e','r','<p>vg</p>\n','1','14113011048Chrysanthemum.jpg','z','A',1,'2014-11-30 19:05:53',1,'2014-11-30 19:06:24');
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

-- Dump completed on 2014-11-30 22:38:10
