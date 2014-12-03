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
-- Table structure for table `tb_manager`
--

DROP TABLE IF EXISTS `tb_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_manager` (
  `id` int(11) NOT NULL,
  `chname` varchar(200) NOT NULL,
  `engname` varchar(200) NOT NULL,
  `position` varchar(200) NOT NULL,
  `tel` varchar(200) NOT NULL,
  `qq` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `provinces` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
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
-- Dumping data for table `tb_manager`
--

LOCK TABLES `tb_manager` WRITE;
/*!40000 ALTER TABLE `tb_manager` DISABLE KEYS */;
INSERT INTO `tb_manager` VALUES (1,'蔡笋','steve','开发','13751082562','359304951','alucard263096@126.com','广东省深圳市龙岗区怡龙枫景园1栋A座201','Hubei,Guangdong','','','D',1,'2014-08-16 12:18:03',1,'2014-08-16 12:29:08'),(2,'啊啊啊','','开','1111','','','','Beijing,Tianjin,Hebei,Shaanxi,Mongol,Liaoning,Jilin,Heilongjian,Shanghai,Jiangsu,Zhejiang,Shandong,Henan,Hubei,Hunan,Guangdong,Guangxi,Hainan,Chongqing,Sichuan,Guizhou,Yunnan,Xizang,Qinghai,Ningxia,Xinjiang,Xianggang,Aomen,Taiwan','','','D',1,'2014-08-16 12:28:54',1,'2014-08-16 12:29:08'),(3,'vvvvv','','aaaaa','1123','','','','Xianggang','','','D',1,'2014-08-16 13:22:23',1,'2014-08-17 14:30:07'),(4,'周凯歌','Joseph','','18802131899','','','上海市虹口区新市路242号113室','Shanghai,Jiangsu','','','A',1,'2014-08-17 14:29:52',1,'2014-08-17 14:29:52'),(5,'李春娟','Julie','','13607447390','','','湖南省长沙市湘江世纪城瑞江苑3栋2单元1306室','Hunan','','','A',1,'2014-08-17 14:30:50',1,'2014-08-17 14:31:01'),(6,'周瑞卿','Ricky','','13707145916','','','武汉市武昌区张之洞路280号欣隆紫苑A-1005室','Jiangxi,Hubei','','','A',1,'2014-08-17 14:31:48',1,'2014-08-17 14:31:48'),(7,'袁源宏','Kathy','','13980806340','','','四川省成都市成华区建设路53号国光一环大厦1808室','Chongqing,Sichuan','','','A',1,'2014-08-17 14:32:29',1,'2014-08-17 14:37:46'),(8,'胡慧霞','Angel','','13639929520','','','新疆乌鲁木齐市高新区桂林路92号万泰怡郡小区2号楼17H','Xinjiang','','','A',1,'2014-08-17 14:33:00',1,'2014-08-17 14:33:00'),(9,'张孝杰','Mark','','18603701235','','','河南省郑州市商城路与英协路交叉口西200米滨河绿苑5号楼3单元10层1001室 ','Hebei,Shaanxi,Henan,Shanxi','','','A',1,'2014-08-17 14:33:54',1,'2014-08-17 14:33:54'),(10,'赵绍嵩','','','13837145808','','','石家庄市桥东区中山路与休门街汇翠家园2号楼3单元2001室','Hebei','','','A',1,'2014-08-17 14:34:11',1,'2014-08-17 14:38:04'),(11,'侯彦杰','','','13991845726','','','西安市雁塔区电子正街凯悦华庭1602室','Shanxi','','','A',1,'2014-08-17 14:34:43',1,'2014-08-17 14:34:43'),(12,'张敬','Jessica','','18660795600','','','山东省济南市天桥区重汽翡翠郡北区7号楼1单元201室','Shandong','','','A',1,'2014-08-17 14:35:20',1,'2014-08-17 14:35:20'),(13,'饶小平','','','18870071616','','','江西省南昌市青山湖区学院路156号学院名都2栋3单元702室','Jiangxi','','','A',1,'2014-08-17 14:35:45',1,'2014-08-17 14:35:45'),(14,'黄逸','','','13922160737','','','广州市番禺区大石洛溪新城洛涛居7幢之一308室','Guangdong,Guizhou,Yunnan','','','A',1,'2014-08-17 14:36:34',1,'2014-08-17 14:36:34'),(15,'张婷','Tina','','15331988207','','','哈尔滨市南岗区宣化街、理治街，天马大厦（金丰·优豪斯）1单元2402室','Liaoning,Jilin,Heilongjiang','','','A',1,'2014-08-17 14:37:02',1,'2014-08-17 15:37:23');
/*!40000 ALTER TABLE `tb_manager` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-30 22:38:13
