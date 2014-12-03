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
-- Table structure for table `tb_province`
--

DROP TABLE IF EXISTS `tb_province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_province` (
  `serialId` int(11) NOT NULL,
  `provinceId` varchar(20) DEFAULT NULL,
  `provinceName` varchar(20) DEFAULT NULL,
  `provinceUpId` varchar(20) DEFAULT NULL,
  `provinceUpIdNum` int(11) DEFAULT NULL,
  `provincePath` varchar(100) DEFAULT NULL,
  `provinceType` varchar(20) DEFAULT NULL,
  `provinceTypeNum` int(11) DEFAULT NULL,
  `shortName` varchar(11) DEFAULT NULL,
  `spell` varchar(20) DEFAULT NULL,
  `areaId` varchar(11) DEFAULT NULL,
  `postCode` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`serialId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_province`
--

LOCK TABLES `tb_province` WRITE;
/*!40000 ALTER TABLE `tb_province` DISABLE KEYS */;
INSERT INTO `tb_province` VALUES (1,'001001','北京市','001',0,'中国/北京','市',2,'bj','Beijing','010','100000'),(2,'001002','天津市','001',0,'中国/天津','市',2,'tj','Tianjin','022','300000'),(3,'001003','河北省','001',0,'中国/河北','省',2,'hb','Hebei','null','null'),(4,'001004','山西省','001',0,'中国/山西','省',2,'sx','Shaanxi','null','null'),(5,'001005','内蒙古自治区','001',0,'中国/内蒙古','自治区',2,'nmg','Mongol','null','null'),(6,'001006','辽宁省','001',0,'中国/辽宁','省',2,'ln','Liaoning','null','null'),(7,'001007','吉林省','001',0,'中国/吉林','省',2,'jl','Jilin','null','null'),(8,'001008','黑龙江省','001',0,'中国/黑龙江','省',2,'hlj','Heilongjiang','null','null'),(9,'001009','上海市','001',0,'中国/上海','市',2,'sh','Shanghai','021','200000'),(10,'001010','江苏省','001',0,'中国/江苏','省',2,'js','Jiangsu','null','null'),(11,'001011','浙江省','001',0,'中国/浙江','省',2,'zj','Zhejiang','null','null'),(12,'001012','安徽省','001',0,'中国/安徽','省',2,'ah','Anhui','null','null'),(13,'001013','福建省','001',0,'中国/福建','省',2,'fj','Fujian','null','null'),(14,'001014','江西省','001',0,'中国/江西','省',2,'jx','Jiangxi','null','null'),(15,'001015','山东省','001',0,'中国/山东','省',2,'sd','Shandong','null','null'),(16,'001016','河南省','001',0,'中国/河南','省',2,'hn','Henan','null','null'),(17,'001017','湖北省','001',0,'中国/湖北','省',2,'hb','Hubei','null','null'),(18,'001018','湖南省','001',0,'中国/湖南','省',2,'hn','Hunan','null','null'),(19,'001019','广东省','001',0,'中国/广东','省',2,'gd','Guangdong','null','null'),(20,'001020','广西省','001',0,'中国/广西','壮族自治区',2,'gx','Guangxi','null','null'),(21,'001021','海南省','001',0,'中国/海南','省',2,'hn','Hainan','null','null'),(22,'001022','重庆市','001',0,'中国/重庆','市',2,'cq','Chongqing','023','400000'),(23,'001023','四川省','001',0,'中国/四川','省',2,'sc','Sichuan','null','null'),(24,'001024','贵州省','001',0,'中国/贵州','省',2,'gz','Guizhou','null','null'),(25,'001025','云南省','001',0,'中国/云南','省',2,'yn','Yunnan','null','null'),(26,'001026','西藏自治区','001',0,'中国/西藏','自治区',2,'xc','Xizang','null','null'),(27,'001027','陕西省','001',0,'中国/陕西','省',2,'sx','Shanxi','null','null'),(28,'001028','甘肃省','001',0,'中国/甘肃','省',2,'gs','Gansu','null','null'),(29,'001029','青海省','001',0,'中国/青海','省',2,'qh','Qinghai','null','null'),(30,'001030','宁夏回族自治区','001',0,'中国/宁夏','回族自治区',2,'nx','Ningxia','null','null'),(31,'001031','新疆维吾尔自治区','001',0,'中国/新疆','维吾尔自治区',2,'xj','Xinjiang','null','null'),(32,'001032','香港特别行政区','001',0,'中国/香港','特别行政区',2,'xg','Xianggang','852','null'),(33,'001033','澳门特别行政区','001',0,'中国/澳门','特别行政区',2,'am','Aomen','853','null'),(34,'001034','台湾省','001',0,'中国/台湾','省',2,'tw','Taiwan','886','null');
/*!40000 ALTER TABLE `tb_province` ENABLE KEYS */;
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
