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
-- Table structure for table `tb_partner`
--

DROP TABLE IF EXISTS `tb_partner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_partner` (
  `id` int(11) NOT NULL,
  `type` char(1) NOT NULL,
  `name` varchar(200) NOT NULL,
  `logo_file` varchar(200) NOT NULL,
  `tel` varchar(100) NOT NULL,
  `fax` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `contacter` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city_id` int(11) NOT NULL,
  `coordinate` varchar(100) NOT NULL,
  `website` varchar(255) NOT NULL,
  `weixin` varchar(255) NOT NULL,
  `summary` varchar(1000) NOT NULL,
  `content` text NOT NULL,
  `remark` varchar(255) NOT NULL,
  `status` char(1) NOT NULL,
  `created_user` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_user` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_partner`
--

LOCK TABLES `tb_partner` WRITE;
/*!40000 ALTER TABLE `tb_partner` DISABLE KEYS */;
INSERT INTO `tb_partner` VALUES (0,'H','1','14081617037ico.png','2','4','3','5','6',1,'7','8','9','10','11','12','D',1,'2014-08-16 17:09:31',1,'2014-08-16 19:17:42'),(1,'H','雷德睦华医院（上海）','','137111014','','','aaa','上海市人民大道200号',355,'121.480285,31.236221','http://','','','非常不错','','D',1,'2014-08-16 19:22:54',1,'2014-08-16 19:23:59'),(2,'S','雷德睦华总代理（北京）','14081716012logo1.png','010-58032661 ','010-58032661 ','010-58032661 ','陈先生','北京市丰台区马家堡东路106号自然新天地写字楼606室',1,'116.393463,39.847131','http://','','','暂无详情','','A',1,'2014-08-17 16:10:02',1,'2014-08-17 16:10:02'),(3,'H','雷德睦华医院（上海）','14081716011logo1.png','020-5002200','020-5002200','020-5002200','林先生','上海市人民大道200号',355,'121.480262,31.236238','http://','','','暂无详情','','A',1,'2014-08-17 16:10:54',1,'2014-08-17 16:13:56'),(4,'D','雷德睦华医生（深圳）','','0755-25578945','0755-25578945','0755-25578945','蔡先生','深圳市罗湖区文锦中路1008号罗湖管理中心大厦',214,'114.138108,22.554558','','','','暂无详情','','A',1,'2014-08-17 16:12:13',1,'2014-08-17 16:12:13'),(5,'S','雷德睦华代理（长沙）','14081716025logo1.png','0731-889999176','0731-889999176','0731-889999176','王小姐','长沙市芙蓉区人民东路189号',199,'113.002354,28.191841','','','','暂无详情','','A',1,'2014-08-17 16:13:13',1,'2014-08-17 16:13:13');
/*!40000 ALTER TABLE `tb_partner` ENABLE KEYS */;
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
