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
INSERT INTO `tb_partner` VALUES (0,'H','1','14081617037ico.png','2','4','3','5','6',1,'7','8','9','10','11','12','D',1,'2014-08-16 17:09:31',1,'2014-08-16 19:17:42'),(1,'H','雷德睦华医院（上海）','','137111014','','','aaa','上海市人民大道200号',355,'121.480285,31.236221','http://','','','非常不错','','D',1,'2014-08-16 19:22:54',1,'2014-08-16 19:23:59'),(2,'S','雷德睦华总代理（北京）','14081716012logo1.png','010-58032661 ','010-58032661 ','010-58032661 ','陈先生','北京市丰台区马家堡东路106号自然新天地写字楼606室',1,'116.393463,39.847131','http://','','','<p>\n	这几年一直用的filezilla省时省心，开源免费，就是更新的太频繁，不过这都无关大碍，今天修改个文件忽然出现错误：<br />\n<strong>filezilla无法启动传输 严重文件传输错误</strong>\n</p>\n<p style=\"text-align:center;\">\n	<a href=\"http://bcs.duapp.com/tomatoer/blog/201405/20131018102202406.jpg\" class=\"highslide-image\"><img class=\"aligncenter wp-image-2215\" src=\"http://bcs.duapp.com/tomatoer/blog/201405/20131018102202406.jpg\" alt=\"20131018102202406\" width=\"604\" height=\"333\" style=\"height:auto;\" /></a><br />\n分析查找了下无非以下几个原因：\n</p>\n<ul style=\"margin-left:26px;\">\n	<li style=\"background-color:initial;\">\n		文件夹权限不够，修改之。\n	</li>\n	<li style=\"background-color:initial;\">\n		你的空间或服务器已经满了，请空下回收站或者扩容。\n	</li>\n	<li style=\"background-color:initial;\">\n		文件正在被占用，关闭后传输。\n	</li>\n</ul>','','A',1,'2014-08-17 16:10:02',1,'2014-09-08 15:30:25'),(3,'H','雷德睦华医院（上海）','14081716011logo1.png','020-5002200','020-5002200','020-5002200','林先生','上海市人民大道200号',355,'121.480262,31.236238','http://','','','<p>\n	这几年一直用的filezilla省时省心，开源免费，就是更新的太频繁，不过这都无关大碍，今天修改个文件忽然出现错误：<br />\n<strong>filezilla无法启动传输 严重文件传输错误</strong>\n</p>\n<p style=\"text-align:center;\">\n	<a href=\"http://bcs.duapp.com/tomatoer/blog/201405/20131018102202406.jpg\" class=\"highslide-image\"><img class=\"aligncenter wp-image-2215\" src=\"http://bcs.duapp.com/tomatoer/blog/201405/20131018102202406.jpg\" alt=\"20131018102202406\" width=\"604\" height=\"333\" style=\"height:auto;\" /></a><br />\n分析查找了下无非以下几个原因：\n</p>\n<ul style=\"margin-left:26px;\">\n	<li style=\"background-color:initial;\">\n		文件夹权限不够，修改之。\n	</li>\n	<li style=\"background-color:initial;\">\n		你的空间或服务器已经满了，请空下回收站或者扩容。\n	</li>\n	<li style=\"background-color:initial;\">\n		文件正在被占用，关闭后传输。\n	</li>\n</ul>','','A',1,'2014-08-17 16:10:54',1,'2014-09-08 15:30:48'),(4,'D','雷德睦华医生（深圳）','','0755-25578945','0755-25578945','0755-25578945','蔡先生','深圳市罗湖区文锦中路1008号罗湖管理中心大厦',214,'114.138108,22.554558','http://','','','<p>\n	这几年一直用的filezilla省时省心，开源免费，就是更新的太频繁，不过这都无关大碍，今天修改个文件忽然出现错误：<br />\n<strong>filezilla无法启动传输 严重文件传输错误</strong>\n</p>\n<p style=\"text-align:center;\">\n	<a href=\"http://bcs.duapp.com/tomatoer/blog/201405/20131018102202406.jpg\" class=\"highslide-image\"><img class=\"aligncenter wp-image-2215\" src=\"http://bcs.duapp.com/tomatoer/blog/201405/20131018102202406.jpg\" alt=\"20131018102202406\" width=\"604\" height=\"333\" style=\"height:auto;\" /></a><br />\n分析查找了下无非以下几个原因：\n</p>\n<ul style=\"margin-left:26px;\">\n	<li style=\"background-color:initial;\">\n		文件夹权限不够，修改之。\n	</li>\n	<li style=\"background-color:initial;\">\n		你的空间或服务器已经满了，请空下回收站或者扩容。\n	</li>\n	<li style=\"background-color:initial;\">\n		文件正在被占用，关闭后传输。\n	</li>\n</ul>','','A',1,'2014-08-17 16:12:13',1,'2014-09-08 15:30:54'),(5,'S','雷德睦华代理（长沙）','14081716025logo1.png','0731-889999176','0731-889999176','0731-889999176','王小姐','长沙市芙蓉区人民东路189号',199,'113.002354,28.191841','http://','','','<p>\n	这几年一直用的filezilla省时省心，开源免费，就是更新的太频繁，不过这都无关大碍，今天修改个文件忽然出现错误：<br />\n<strong>filezilla无法启动传输 严重文件传输错误</strong>\n</p>\n<p style=\"text-align:center;\">\n	<a href=\"http://bcs.duapp.com/tomatoer/blog/201405/20131018102202406.jpg\" class=\"highslide-image\"><img class=\"aligncenter wp-image-2215\" src=\"http://bcs.duapp.com/tomatoer/blog/201405/20131018102202406.jpg\" alt=\"20131018102202406\" width=\"604\" height=\"333\" style=\"height:auto;\" /></a><br />\n分析查找了下无非以下几个原因：\n</p>\n<ul style=\"margin-left:26px;\">\n	<li style=\"background-color:initial;\">\n		文件夹权限不够，修改之。\n	</li>\n	<li style=\"background-color:initial;\">\n		你的空间或服务器已经满了，请空下回收站或者扩容。\n	</li>\n	<li style=\"background-color:initial;\">\n		文件正在被占用，关闭后传输。\n	</li>\n</ul>','','A',1,'2014-08-17 16:13:13',1,'2014-09-08 15:31:02');
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

-- Dump completed on 2014-11-30 22:38:12
