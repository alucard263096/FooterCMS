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
-- Table structure for table `tb_general`
--

DROP TABLE IF EXISTS `tb_general`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_general` (
  `id` int(11) NOT NULL,
  `key` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `content` text,
  `updated_user` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `craeted_user` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_general`
--

LOCK TABLES `tb_general` WRITE;
/*!40000 ALTER TABLE `tb_general` DISABLE KEYS */;
INSERT INTO `tb_general` VALUES (1,'company_descript','关于我们','关于我们的介绍','string','本公司为德国Heraeus Medical医疗器械生产商在中国大陆指定产品的总代理，同时作为企业驻中国的联络处。\n\n公司拥有稳定成熟的产品销售市场，经营的产品为同领域中的优秀产品，公司负责德国骨水泥产品在大陆地区的渠道销售管理及市场技术支持服务。为快速完成德国生产商对渠道规范的要求，也更符合国内市场的需求！\n',1,'2014-09-01 22:00:50',NULL,NULL),(2,'contact_us_company','联系我们公司信息','联系我们顶部','string','<div class=\"span7\">\n							<h4>雷德睦华医药科技（北京）有限公司北京总部</h4>\n							<p>\n							<strong><i class=\"icon-home\"></i>地址 :</strong><br>\n							北京市丰台区马家堡东路106号自然新天地写字楼606室<br>\n							邮编：100068\n							</p>\n							<p>\n							<strong><i class=\"icon-phone\"></i>北京 联系电话 :</strong><br>\n							010-58031636<br>\n							010-58032661<br>\n							传真：010-58031636 转 804\n							</p>	\n							<p>\n							<strong><i class=\"icon-phone\"></i>上海 联系电话 :</strong><br>\n							021-60908582<br>\n							传真：021-60908583\n							</p>							\n						</div>\n						<div class=\"span5\">\n							<h4>&nbsp;</h4>\n							<p>\n							<strong><h6><i class=\"icon-globe\"></i>微信关注</h6></strong>\n							<img alt=\"微信\" style=\"height:185px\" src=\"/themes/lm/images/qrcode.png\" />\n							</p>\n						</div>',1,'2014-11-27 23:50:16',NULL,NULL);
/*!40000 ALTER TABLE `tb_general` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-01 23:15:33
