-- MySQL dump 10.13  Distrib 5.6.15, for Win32 (x86)
--
-- Host: localhost    Database: symfo
-- ------------------------------------------------------
-- Server version	5.6.15-log

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
-- Table structure for table `Category`
--

DROP TABLE IF EXISTS `Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Category`
--

LOCK TABLES `Category` WRITE;
/*!40000 ALTER TABLE `Category` DISABLE KEYS */;
INSERT INTO `Category` VALUES (10,'sdeiptcd'),(11,'sulkrtdxza'),(12,'uzbhdxtou'),(13,'oykqzwpkt'),(14,'yvmtir');
/*!40000 ALTER TABLE `Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Product`
--

DROP TABLE IF EXISTS `Product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_1CF73D3112469DE2` (`category_id`),
  CONSTRAINT `FK_1CF73D3112469DE2` FOREIGN KEY (`category_id`) REFERENCES `Category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Product`
--

LOCK TABLES `Product` WRITE;
/*!40000 ALTER TABLE `Product` DISABLE KEYS */;
INSERT INTO `Product` VALUES (105,'fxrkswx',3.96,'',10),(106,'chrodasrw',2.88,'',10),(107,'dzcvcdumao',179.36,'',10),(108,'gthkbvdnyu',4.26,'',10),(109,'wqvxgfo',1.88,'',10),(110,'qjxrlubdgp',57.28,'',10),(111,'vpzcmy',6.74,'',10),(112,'bqtrlzuhdc',128.78,'',10),(113,'mnxczau',3.31,'',10),(114,'rtkldsx',87.77,'',10),(115,'ofcfvpq',61.41,'',10),(116,'ronricw',843.68,'',10),(117,'ieobtkaogn',6.52,'',10),(118,'vjeaawbcuu',5.94,'',10),(119,'tieoibsv',79.95,'',10),(120,'vjbtkx',4.56,'',10),(121,'gclsonsng',5.67,'',10),(122,'munxzy',69.44,'',10),(123,'owtueq',898.68,'',10),(124,'elvsif',9.21,'',10),(125,'sfzxtefzex',78.34,'',11),(126,'axhwdw',82.24,'',11),(127,'nqrsmxxl',268.73,'',11),(128,'jrwxktfo',454.89,'',11),(129,'misyiv',925.11,'',11),(130,'lxkxac',61.31,'',11),(131,'jlxhjtnn',438.23,'',11),(132,'wydxnftnaq',283.86,'',11),(133,'upmrpxjugh',6.49,'',11),(134,'tzosttmqsg',54.46,'',11),(135,'xzaqwnztmw',9.95,'',11),(136,'klygnzleqc',273.59,'',11),(137,'wecwos',6.14,'',11),(138,'jgaaokd',3.72,'',11),(139,'bhuacjofy',46.89,'',11),(140,'xnfhjygyy',972.61,'',11),(141,'gkzanxoe',26.58,'',11),(142,'wwvrokah',943.67,'',11),(143,'zxgciuab',47.81,'',11),(144,'soraeotfjf',759.57,'',11),(145,'cyjzlou',21.22,'',12),(146,'swexnb',154.64,'',12),(147,'dtsenmjh',481.59,'',12),(148,'nanqtbr',3.27,'',12),(149,'rcayobaqlw',88.38,'',12),(150,'kyebkmj',72.12,'',12),(151,'vjelkqsm',513.58,'',12),(152,'merttut',392.22,'',12),(153,'csfnajrbgw',85.56,'',12),(154,'qowppag',21.73,'',12),(155,'ygcfqspqg',59.99,'',12),(156,'aubdtjb',518.59,'',12),(157,'ewnjzyqqi',6.86,'',12),(158,'ypyutaqq',4.69,'',12),(159,'wbjkxoer',89.55,'',12),(160,'pmfkvpqpfx',191.43,'',12),(161,'upbtuya',27.81,'',12),(162,'ygbuhhhpt',23.89,'',12),(163,'zcxemrz',7.94,'',12),(164,'eujjnom',414.73,'',12),(165,'hydpwru',93.45,'',13),(166,'citsxqtwdr',97.41,'',13),(167,'valqleqykm',6.59,'',13),(168,'blfcpmjwk',841.79,'',13),(169,'yaggahhe',6.62,'',13),(170,'uaalng',251.32,'',13),(171,'ofwrops',68.68,'',13),(172,'fuvqfhozap',53.85,'',13),(173,'vgilqbb',65.74,'',13),(174,'lsyiefay',898.96,'',13),(175,'rozfccj',9.61,'',13),(176,'rfpyskaos',663.16,'',13),(177,'gpmwol',62.94,'',13),(178,'uigxea',88.58,'',13),(179,'wpmlztc',767.68,'',13),(180,'dfbmsy',857.42,'',13),(181,'ogyftbczkh',4.82,'',13),(182,'vqctbowvbr',274.17,'',13),(183,'lkcjnyrbg',945.18,'',13),(184,'prylwdj',934.41,'',13),(185,'vosuahlr',83.58,'',14),(186,'vgpimh',5.46,'',14),(187,'gsewjmwba',84.24,'',14),(188,'mhdjvvsm',86.23,'',14),(189,'xwsxpeiv',4.44,'',14),(190,'olhdbmueg',5.43,'',14),(191,'tgfxag',6.97,'',14),(192,'bncjryilsb',248.24,'',14),(193,'qjdtsb',727.42,'',14),(194,'pzbbczibob',17.22,'',14),(195,'deidoff',69.97,'',14),(196,'stzspuz',7.85,'',14),(197,'wmtmtifuj',745.36,'',14),(198,'whiepddbb',5.96,'',14),(199,'nfmcegwxk',17.98,'',14),(200,'pdtnjjp',2.17,'',14),(201,'rqwpquk',195.77,'',14),(202,'vaenhncuw',191.73,'',14),(203,'bfjffmld',6.66,'',14),(204,'injzhzcxdk',348.11,'',14);
/*!40000 ALTER TABLE `Product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-03-04 12:45:26
