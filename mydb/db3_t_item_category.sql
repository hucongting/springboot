-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: db3
-- ------------------------------------------------------
-- Server version	5.6.37

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
-- Table structure for table `t_item_category`
--

DROP TABLE IF EXISTS `t_item_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_item_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父分类id',
  `name` varchar(150) DEFAULT NULL COMMENT '名称',
  `status` int(1) DEFAULT '1' COMMENT '状态   1：正常   2：删除',
  `sort_order` int(4) DEFAULT NULL COMMENT '排序号',
  `is_parent` tinyint(1) DEFAULT NULL COMMENT '是否是父分类   1：是  0：否',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modified_time` datetime DEFAULT NULL COMMENT '最后修改时间',
  `created_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `modified_user` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=918 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_item_category`
--

LOCK TABLES `t_item_category` WRITE;
/*!40000 ALTER TABLE `t_item_category` DISABLE KEYS */;
INSERT INTO `t_item_category` VALUES (163,162,'笔记本',1,1,0,'2017-10-25 15:00:55','2017-10-25 15:00:55','admin','admin'),(236,229,'文件管理',1,7,0,'2017-10-25 15:00:55','2017-10-25 15:00:55','admin','admin'),(238,229,'本册/便签',1,9,0,'2017-10-25 15:00:55','2017-10-25 15:00:55','admin','admin'),(241,229,'笔类',1,12,0,'2017-10-25 15:00:55','2017-10-25 15:00:55','admin','admin'),(917,913,'双肩包',1,4,0,'2017-10-25 15:00:55','2017-10-25 15:00:55','admin','admin');
/*!40000 ALTER TABLE `t_item_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-20 17:47:28
