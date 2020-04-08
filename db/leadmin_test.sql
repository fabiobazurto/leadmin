-- MySQL dump 10.16  Distrib 10.1.44-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: leadmin_test
-- ------------------------------------------------------
-- Server version	10.1.44-MariaDB-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','test','2020-04-08 07:52:33','2020-04-08 07:52:33');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=731 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Intelligent Linen Keyboard','2020-04-08 07:52:33','2020-04-08 07:52:33'),(2,'Awesome Copper Chair','2020-04-08 07:52:33','2020-04-08 07:52:33'),(3,'Fantastic Concrete Bottle','2020-04-08 07:52:33','2020-04-08 07:52:33'),(4,'Enormous Rubber Watch','2020-04-08 07:52:33','2020-04-08 07:52:33'),(5,'Intelligent Steel Computer','2020-04-08 07:52:33','2020-04-08 07:52:33'),(90,'Basic Materials','2020-04-08 07:57:16','2020-04-08 07:57:16'),(91,'Consumer Goods','2020-04-08 07:57:16','2020-04-08 07:57:16'),(92,'Financials','2020-04-08 07:57:16','2020-04-08 07:57:16'),(380,'Health Care','2020-04-08 08:04:26','2020-04-08 08:04:26'),(381,'Telecommunications','2020-04-08 08:04:26','2020-04-08 08:04:26'),(382,'Basic Materials','2020-04-08 08:04:26','2020-04-08 08:04:26'),(383,'Telecommunications','2020-04-08 08:04:26','2020-04-08 08:04:26'),(384,'Consumer Services','2020-04-08 08:04:26','2020-04-08 08:04:26'),(385,'Utilities','2020-04-08 08:04:26','2020-04-08 08:04:26'),(386,'Industrials','2020-04-08 08:04:26','2020-04-08 08:04:26'),(387,'Industrials','2020-04-08 08:04:26','2020-04-08 08:04:26'),(388,'Utilities','2020-04-08 08:04:26','2020-04-08 08:04:26'),(389,'Oil & Gas','2020-04-08 08:04:26','2020-04-08 08:04:26'),(411,'Health Care','2020-04-08 08:04:54','2020-04-08 08:04:54'),(412,'Basic Materials','2020-04-08 08:04:54','2020-04-08 08:04:54'),(413,'Oil & Gas','2020-04-08 08:04:54','2020-04-08 08:04:54'),(414,'Health Care','2020-04-08 08:04:54','2020-04-08 08:04:54'),(415,'Consumer Goods','2020-04-08 08:04:54','2020-04-08 08:04:54'),(416,'Consumer Goods','2020-04-08 08:04:54','2020-04-08 08:04:54'),(417,'Consumer Services','2020-04-08 08:04:54','2020-04-08 08:04:54'),(418,'Basic Materials','2020-04-08 08:04:54','2020-04-08 08:04:54'),(419,'Consumer Services','2020-04-08 08:04:54','2020-04-08 08:04:54'),(420,'Consumer Goods','2020-04-08 08:04:54','2020-04-08 08:04:54'),(442,'Telecommunications','2020-04-08 08:06:13','2020-04-08 08:06:13'),(443,'Oil & Gas','2020-04-08 08:06:13','2020-04-08 08:06:13'),(444,'Utilities','2020-04-08 08:06:13','2020-04-08 08:06:13'),(445,'Health Care','2020-04-08 08:06:13','2020-04-08 08:06:13'),(446,'Financials','2020-04-08 08:06:13','2020-04-08 08:06:13'),(447,'Financials','2020-04-08 08:06:13','2020-04-08 08:06:13'),(448,'Health Care','2020-04-08 08:06:13','2020-04-08 08:06:13'),(449,'Health Care','2020-04-08 08:06:13','2020-04-08 08:06:13'),(450,'Oil & Gas','2020-04-08 08:06:13','2020-04-08 08:06:13'),(451,'Oil & Gas','2020-04-08 08:06:13','2020-04-08 08:06:13'),(473,'Health Care','2020-04-08 08:06:42','2020-04-08 08:06:42'),(474,'Technology','2020-04-08 08:06:42','2020-04-08 08:06:42'),(475,'Industrials','2020-04-08 08:06:42','2020-04-08 08:06:42'),(476,'Utilities','2020-04-08 08:06:42','2020-04-08 08:06:42'),(477,'Utilities','2020-04-08 08:06:42','2020-04-08 08:06:42'),(478,'Telecommunications','2020-04-08 08:06:42','2020-04-08 08:06:42'),(479,'Consumer Services','2020-04-08 08:06:42','2020-04-08 08:06:42'),(480,'Health Care','2020-04-08 08:06:42','2020-04-08 08:06:42'),(481,'Telecommunications','2020-04-08 08:06:42','2020-04-08 08:06:42'),(482,'Oil & Gas','2020-04-08 08:06:42','2020-04-08 08:06:42'),(504,'Consumer Services','2020-04-08 08:06:55','2020-04-08 08:06:55'),(505,'Consumer Goods','2020-04-08 08:06:56','2020-04-08 08:06:56'),(506,'Consumer Goods','2020-04-08 08:06:56','2020-04-08 08:06:56'),(507,'Consumer Goods','2020-04-08 08:06:56','2020-04-08 08:06:56'),(508,'Consumer Goods','2020-04-08 08:06:56','2020-04-08 08:06:56'),(509,'Basic Materials','2020-04-08 08:06:56','2020-04-08 08:06:56'),(510,'Oil & Gas','2020-04-08 08:06:56','2020-04-08 08:06:56'),(511,'Oil & Gas','2020-04-08 08:06:56','2020-04-08 08:06:56'),(512,'Technology','2020-04-08 08:06:56','2020-04-08 08:06:56'),(513,'Oil & Gas','2020-04-08 08:06:56','2020-04-08 08:06:56'),(535,'Health Care','2020-04-08 08:07:09','2020-04-08 08:07:09'),(536,'Utilities','2020-04-08 08:07:09','2020-04-08 08:07:09'),(537,'Utilities','2020-04-08 08:07:09','2020-04-08 08:07:09'),(538,'Consumer Services','2020-04-08 08:07:09','2020-04-08 08:07:09'),(539,'Oil & Gas','2020-04-08 08:07:09','2020-04-08 08:07:09'),(540,'Technology','2020-04-08 08:07:09','2020-04-08 08:07:09'),(541,'Telecommunications','2020-04-08 08:07:09','2020-04-08 08:07:09'),(542,'Basic Materials','2020-04-08 08:07:09','2020-04-08 08:07:09'),(543,'Health Care','2020-04-08 08:07:09','2020-04-08 08:07:09'),(544,'Industrials','2020-04-08 08:07:09','2020-04-08 08:07:09'),(566,'Industrials','2020-04-08 08:08:25','2020-04-08 08:08:25'),(567,'Industrials','2020-04-08 08:08:25','2020-04-08 08:08:25'),(568,'Consumer Services','2020-04-08 08:08:25','2020-04-08 08:08:25'),(569,'Oil & Gas','2020-04-08 08:08:25','2020-04-08 08:08:25'),(570,'Consumer Goods','2020-04-08 08:08:25','2020-04-08 08:08:25'),(571,'Consumer Goods','2020-04-08 08:08:25','2020-04-08 08:08:25'),(572,'Industrials','2020-04-08 08:08:25','2020-04-08 08:08:25'),(573,'Telecommunications','2020-04-08 08:08:25','2020-04-08 08:08:25'),(574,'Industrials','2020-04-08 08:08:25','2020-04-08 08:08:25'),(575,'Basic Materials','2020-04-08 08:08:25','2020-04-08 08:08:25'),(597,'Telecommunications','2020-04-08 08:08:46','2020-04-08 08:08:46'),(598,'Utilities','2020-04-08 08:08:46','2020-04-08 08:08:46'),(599,'Financials','2020-04-08 08:08:46','2020-04-08 08:08:46'),(600,'Oil & Gas','2020-04-08 08:08:46','2020-04-08 08:08:46'),(601,'Telecommunications','2020-04-08 08:08:46','2020-04-08 08:08:46'),(602,'Technology','2020-04-08 08:08:46','2020-04-08 08:08:46'),(603,'Financials','2020-04-08 08:08:46','2020-04-08 08:08:46'),(604,'Telecommunications','2020-04-08 08:08:46','2020-04-08 08:08:46'),(605,'Telecommunications','2020-04-08 08:08:46','2020-04-08 08:08:46'),(606,'Financials','2020-04-08 08:08:46','2020-04-08 08:08:46'),(628,'Health Care','2020-04-08 08:10:56','2020-04-08 08:10:56'),(629,'Consumer Goods','2020-04-08 08:10:56','2020-04-08 08:10:56'),(630,'Telecommunications','2020-04-08 08:10:56','2020-04-08 08:10:56'),(631,'Basic Materials','2020-04-08 08:10:56','2020-04-08 08:10:56'),(632,'Technology','2020-04-08 08:10:56','2020-04-08 08:10:56'),(633,'Consumer Services','2020-04-08 08:10:56','2020-04-08 08:10:56'),(634,'Industrials','2020-04-08 08:10:56','2020-04-08 08:10:56'),(635,'Basic Materials','2020-04-08 08:10:56','2020-04-08 08:10:56'),(636,'Utilities','2020-04-08 08:10:56','2020-04-08 08:10:56'),(637,'Telecommunications','2020-04-08 08:10:56','2020-04-08 08:10:56'),(659,'Financials','2020-04-08 08:11:09','2020-04-08 08:11:09'),(660,'Health Care','2020-04-08 08:11:09','2020-04-08 08:11:09'),(661,'Health Care','2020-04-08 08:11:09','2020-04-08 08:11:09'),(662,'Health Care','2020-04-08 08:11:09','2020-04-08 08:11:09'),(663,'Oil & Gas','2020-04-08 08:11:09','2020-04-08 08:11:09'),(664,'Telecommunications','2020-04-08 08:11:09','2020-04-08 08:11:09'),(665,'Health Care','2020-04-08 08:11:09','2020-04-08 08:11:09'),(666,'Basic Materials','2020-04-08 08:11:09','2020-04-08 08:11:09'),(667,'Utilities','2020-04-08 08:11:09','2020-04-08 08:11:09'),(668,'Technology','2020-04-08 08:11:09','2020-04-08 08:11:09'),(690,'Consumer Goods','2020-04-08 08:11:53','2020-04-08 08:11:53'),(691,'Technology','2020-04-08 08:11:53','2020-04-08 08:11:53'),(692,'Utilities','2020-04-08 08:11:53','2020-04-08 08:11:53'),(693,'Health Care','2020-04-08 08:11:53','2020-04-08 08:11:53'),(694,'Industrials','2020-04-08 08:11:53','2020-04-08 08:11:53'),(695,'Financials','2020-04-08 08:11:53','2020-04-08 08:11:53'),(696,'Oil & Gas','2020-04-08 08:11:53','2020-04-08 08:11:53'),(697,'Telecommunications','2020-04-08 08:11:53','2020-04-08 08:11:53'),(698,'Basic Materials','2020-04-08 08:11:53','2020-04-08 08:11:53'),(699,'Technology','2020-04-08 08:11:53','2020-04-08 08:11:53'),(721,'Technology','2020-04-08 08:12:15','2020-04-08 08:12:15'),(722,'Telecommunications','2020-04-08 08:12:15','2020-04-08 08:12:15'),(723,'Consumer Goods','2020-04-08 08:12:15','2020-04-08 08:12:15'),(724,'Telecommunications','2020-04-08 08:12:15','2020-04-08 08:12:15'),(725,'Financials','2020-04-08 08:12:15','2020-04-08 08:12:15'),(726,'Telecommunications','2020-04-08 08:12:15','2020-04-08 08:12:15'),(727,'Basic Materials','2020-04-08 08:12:15','2020-04-08 08:12:15'),(728,'Oil & Gas','2020-04-08 08:12:15','2020-04-08 08:12:15'),(729,'Consumer Services','2020-04-08 08:12:15','2020-04-08 08:12:15'),(730,'Utilities','2020-04-08 08:12:15','2020-04-08 08:12:15');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_cities_on_country_id` (`country_id`),
  CONSTRAINT `fk_rails_996e05be41` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=881 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Vargem Grande',3),(2,'Surubim',3),(3,'Vitória do Mearim',3),(4,'Vitória de Santo Antão',3),(5,'Viseu',3),(6,'Conde',1),(7,'Vigia',1),(8,'Viçosa do Ceará',1),(9,'Viçosa',1),(10,'Viana',1),(11,'Várzea Alegre',1),(12,'Varjota',1),(13,'Vargem Grande',1),(14,'Zamora',2),(15,'Yaguachi Nuevo',2),(16,'Vinces',2),(17,'Ventanas',2),(18,'Velasco Ibarra',2),(19,'Tulcán',2),(20,'Tena',2),(21,'Sucre',2),(22,'Santo Domingo de los Colorados',2),(23,'Santa Rosa',2),(24,'Santa Elena',2),(25,'San Lorenzo de Esmeraldas',2),(26,'San Gabriel',2),(27,'Samborondón',2),(28,'Salinas',2),(29,'Rosa Zarate',2),(30,'Riobamba',2),(31,'Quito',2),(32,'Quevedo',2),(33,'Puyo',2),(34,'Pujilí',2),(35,'Puerto Francisco de Orellana',2),(36,'Portoviejo',2),(37,'Playas',2),(38,'Piñas',2),(39,'Pelileo',2),(40,'Pedro Carbo',2),(41,'Pasaje',2),(42,'Otavalo',2),(43,'Springdale',3),(44,'Texarkana',3),(45,'Van Buren',3),(46,'West Memphis',3),(47,'Washington, D.C.',3),(48,'Bear',3),(49,'Dover',3),(50,'Middletown',3),(51,'Newark',3),(52,'Wilmington',3),(53,'Allapattah',3),(54,'Altamonte Springs',3),(55,'Apopka',3),(56,'Aventura',3),(57,'Bartow',3),(58,'Bayonet Point',3),(59,'Bayshore Gardens',3),(60,'Belle Glade',3),(61,'Bellview',3),(62,'Bloomingdale',3),(63,'Boca Del Mar',3),(64,'Boca Raton',3),(65,'Bonita Springs',3),(126,'Vigo',134),(127,'Gandía',135),(128,'Irún',136),(129,'Santa Cruz de Tenerife',137),(130,'Mérida',138),(131,'Córdoba',139),(132,'Badajoz',140),(133,'Parla',141),(134,'Guadalajara',142),(135,'Pontevedra',143),(156,'Sevilla',194),(157,'Cuenta',195),(158,'Alcalá de Guadaira',196),(159,'Pamplona',197),(160,'Alcalá de Henares',198),(161,'Alcalá de Henares',199),(162,'Bilbao',200),(163,'El Ejido',201),(164,'Fuengirola',202),(165,'Segovia',203),(166,'Tarrasa',204),(167,'Torrejón de Ardoz',206),(241,'Baracaldo',364),(242,'Ferrol',365),(243,'Móstoles',366),(244,'Inca',367),(245,'Lugo',368),(246,'Pozuelo de Alarcón',369),(247,'Pontevedra',370),(248,'Talavera de la Reina',371),(249,'Viladecans',372),(250,'San Cristróbal de la Laguna',373),(271,'Ciudad Real',424),(272,'Bilbao',425),(273,'Alcalá de Guadaira',426),(274,'Fuenlabrada',427),(275,'Sevilla',428),(276,'Torrelavega',429),(277,'Pozuelo de Alarcón',430),(278,'Santa Coloma de Gramanet',431),(279,'Telde',432),(280,'Arrecife',433),(301,'Collado Villalba',484),(302,'Salamanca',485),(303,'Pozuelo de Alarcón',486),(304,'Murcia',487),(305,'Las Palmas de Gran Canaria',488),(306,'León',489),(307,'Barcelona',490),(308,'Oviedo',491),(309,'Vigo',492),(310,'El Ejido',493),(331,'Santiago de Compostela',544),(332,'Palencia',545),(333,'Chiclana de la Frontera',546),(334,'El Ejido',547),(335,'Cuenta',548),(336,'Alcalá de Henares',549),(337,'Pontevedra',550),(338,'Barcelona',551),(339,'Ciudad Real',552),(340,'Elche',553),(361,'Mataró',604),(362,'Alcalá de Henares',605),(363,'Palencia',606),(364,'Cerdañola del Vallés',607),(365,'Viladecans',608),(366,'Albacete',609),(367,'San Sebastían de los Reyes',610),(368,'Collado Villalba',611),(369,'Cádiz',612),(370,'Valdemoro',613),(391,'Santa Lucía de Tirajana',664),(392,'Viladecans',665),(393,'Cáceres',666),(394,'Cerdañola del Vallés',667),(395,'Avilés',668),(396,'Oviedo',669),(397,'Torrejón de Ardoz',670),(398,'Molina de Segura',671),(399,'Ponferrada',672),(400,'Ávila',673),(421,'Mataró',724),(422,'Chiclana de la Frontera',725),(423,'Irún',726),(424,'Badajoz',727),(425,'Oviedo',728),(426,'Cáceres',729),(427,'Cádiz',730),(428,'Ponferrada',731),(429,'León',732),(430,'La Coruña',733),(451,'Barcelona',784),(452,'Málaga',785),(453,'Ceuta',786),(454,'León',787),(455,'Rubí',788),(456,'Cerdañola del Vallés',789),(457,'Mijas',790),(458,'Ciudad Real',791),(459,'Ciudad Real',792),(460,'San Cristróbal de la Laguna',793),(481,'Linares',844),(482,'Granollers',845),(483,'Leganés',846),(484,'Viladecans',847),(485,'San Sebastián',848),(486,'Tarrasa',849),(487,'Barcelona',850),(488,'Fuengirola',851),(489,'Roquetas de Mar',852),(490,'Fuenlabrada',853),(511,'Inca',904),(512,'Ceuta',905),(513,'Elche',906),(514,'Tarragona',907),(515,'Castellón de la Plana',908),(516,'Majadahonda',909),(517,'Bilbao',910),(518,'Valencia',911),(519,'Las Palmas de Gran Canaria',912),(520,'Sabadell',913),(541,'León',964),(542,'Baracaldo',965),(543,'Barcelona',966),(544,'Alcorcón',967),(545,'Santa Lucía de Tirajana',968),(546,'Molina de Segura',969),(547,'Cerdañola del Vallés',970),(548,'Manresa',971),(549,'Oviedo',972),(550,'Sabadell',973),(571,'Burgos',1024),(572,'Viladecans',1025),(573,'Elche',1026),(574,'Madrid',1027),(575,'Gandía',1028),(576,'Santa Cruz de Tenerife',1029),(577,'Fuengirola',1030),(578,'Benidorm',1031),(579,'Rubí',1032),(580,'El Prat de LLobregat',1033),(601,'Santiago de Compostela',1084),(602,'Móstoles',1085),(603,'Cáceres',1086),(604,'Leganés',1087),(605,'Valladolid',1088),(606,'Telde',1089),(607,'San Cristróbal de la Laguna',1090),(608,'Mataró',1091),(609,'Getafe',1092),(610,'Gecho',1093),(631,'Torrejón de Ardoz',1144),(632,'Elda',1145),(633,'Elda',1146),(634,'Ávila',1147),(635,'Mijas',1148),(636,'Gandía',1149),(637,'Pozuelo de Alarcón',1150),(638,'Puertollano',1151),(639,'Elda',1152),(640,'Torrevieja',1153),(661,'Majadahonda',1204),(662,'Sevilla',1205),(663,'Palma de Mallorca',1206),(664,'Rivas-Vaciamadrid',1207),(665,'Elche',1208),(666,'Santa Coloma de Gramanet',1209),(667,'Vigo',1210),(668,'Granollers',1211),(669,'Ciudad Real',1212),(670,'Cerdañola del Vallés',1213),(691,'Santa Cruz de Tenerife',1264),(692,'Torrevieja',1265),(693,'Cáceres',1266),(694,'Torrevieja',1267),(695,'Santander',1268),(696,'Pamplona',1269),(697,'Orihuela',1270),(698,'Molina de Segura',1271),(699,'Sanlúcar de Barrameda',1272),(700,'Mataró',1273),(721,'Algeciras',1324),(722,'Palma de Mallorca',1325),(723,'Santa Cruz de Tenerife',1326),(724,'Alcoy',1327),(725,'Telde',1328),(726,'Inca',1329),(727,'Fuenlabrada',1330),(728,'Burgos',1331),(729,'Talavera de la Reina',1332),(730,'Lorca',1333),(751,'Zaragoza',1384),(752,'Badajoz',1385),(753,'Arrecife',1386),(754,'Segovia',1387),(755,'Logroño',1388),(756,'Algeciras',1389),(757,'Viladecans',1390),(758,'Roquetas de Mar',1391),(759,'Sagunto',1392),(760,'Puertollano',1393),(781,'Mijas',1444),(782,'Gijón',1445),(783,'Valencia',1446),(784,'Las Palmas de Gran Canaria',1447),(785,'Badalona',1448),(786,'León',1449),(787,'Vitoria',1450),(788,'Sevilla',1451),(789,'Córdoba',1452),(790,'Calahorra',1453),(811,'San Cristróbal de la Laguna',1504),(812,'Granada',1505),(813,'Logroño',1506),(814,'Cartagena',1507),(815,'Alcoy',1508),(816,'Cartagena',1509),(817,'Alcoy',1510),(818,'Barcelona',1511),(819,'Talavera de la Reina',1512),(820,'Tarrasa',1513),(841,'Alcoy',1564),(842,'Gecho',1565),(843,'Jaén',1566),(844,'Ávila',1567),(845,'Jerez de la Frontera',1568),(846,'Castellón de la Plana',1569),(847,'Sabadell',1570),(848,'Granollers',1571),(849,'Lérida',1572),(850,'Segovia',1573),(871,'Santa Coloma de Gramanet',1624),(872,'Vigo',1625),(873,'Ciudad Real',1626),(874,'Pozuelo de Alarcón',1627),(875,'Estepona',1628),(876,'Gecho',1629),(877,'Viladecans',1630),(878,'Huelva',1631),(879,'Mataró',1632),(880,'Ceuta',1633);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1634 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Brazil'),(2,'Ecuador'),(3,'United States'),(124,'Burundi'),(125,'Chad'),(126,'Azerbayán'),(127,'Gambia'),(128,'Afganistán'),(129,'Kuwait'),(130,'Camboya'),(131,'Arabia Saudí'),(132,'Hungria'),(133,'Bangladesh'),(134,'Tajikistan'),(135,'Kuwait'),(136,'Arabia Saudí'),(137,'Finlandia'),(138,'Brasil'),(139,'Burkina Faso'),(140,'Bután'),(141,'Islas Caimán'),(142,'Tanzania'),(143,'Islas Caimán'),(184,'Nepal'),(185,'Ruanda'),(186,'Afganistán'),(187,'Nicaragua'),(188,'Austria'),(189,'Noruega'),(190,'Pakistan'),(191,'Colombia'),(192,'Granada'),(193,'Costa de Marfil'),(194,'Sri Lanka'),(195,'Eslovaquia'),(196,'Zambia'),(197,'India'),(198,'Montenegro'),(199,'Australia'),(200,'Portugal'),(201,'Etiopía'),(202,'Kazajistan'),(203,'Timor-Leste'),(204,'Burkina Faso'),(205,'Fiji'),(206,'Azerbayán'),(207,'Chile'),(354,'Mongolia'),(355,'Afganistán'),(356,'Camboya'),(357,'Vanuatu'),(358,'Colombia'),(359,'Kenia'),(360,'Montenegro'),(361,'Papúa Nueva Guinea'),(362,'Indonesia'),(363,'Guatemala'),(364,'Yemen'),(365,'Montserrat'),(366,'Bermuda'),(367,'Mongolia'),(368,'Granada'),(369,'El Salvador'),(370,'Gabón'),(371,'Guadalupe'),(372,'Senegal'),(373,'Perú'),(414,'Estonia'),(415,'Eslovenia'),(416,'Mali'),(417,'Poland'),(418,'Malta'),(419,'Malasia'),(420,'Dominica'),(421,'Guinea Ecuatorial'),(422,'Rusia'),(423,'Suriname'),(424,'Taiwan'),(425,'Kuwait'),(426,'El Salvador'),(427,'Bulgaria'),(428,'Zambia'),(429,'Micronesia'),(430,'Santo Tomé y Principe'),(431,'Nigeria'),(432,'Irak'),(433,'Francia'),(474,'Chad'),(475,'España'),(476,'Bulgaria'),(477,'Islas Caimán'),(478,'Costa Rica'),(479,'Azerbayán'),(480,'Turquia'),(481,'Corea'),(482,'Jordania'),(483,'Cabo Verde'),(484,'Finlandia'),(485,'Guayana'),(486,'Albania'),(487,'República Dominicana'),(488,'Ucrania'),(489,'Kenia'),(490,'Aruba'),(491,'Afganistán'),(492,'Nigeria'),(493,'Jamaica'),(534,'Kenia'),(535,'Suiza'),(536,'Bahamas'),(537,'Angola'),(538,'Suecia'),(539,'Macedonia'),(540,'India'),(541,'Eritrea'),(542,'Burkina Faso'),(543,'Emiratos Árabes Unidos'),(544,'Noruega'),(545,'Uzbekistan'),(546,'Burkina Faso'),(547,'Andorra'),(548,'Luxemburgo'),(549,'Guayana'),(550,'Zimbabwe'),(551,'Jamaica'),(552,'Burkina Faso'),(553,'Croacia'),(594,'Bután'),(595,'Chad'),(596,'Kazajistan'),(597,'Zambia'),(598,'Egipto'),(599,'Jordania'),(600,'Bulgaria'),(601,'Botswana'),(602,'Yemen'),(603,'Guam'),(604,'Mongolia'),(605,'Ruanda'),(606,'Timor-Leste'),(607,'Malta'),(608,'Nigeria'),(609,'Gambia'),(610,'Letonia'),(611,'Guinea-Bisau'),(612,'Samoa'),(613,'Timor-Leste'),(654,'República Checa'),(655,'Portugal'),(656,'Chile'),(657,'Omán'),(658,'República Checa'),(659,'Nauru'),(660,'Bielorusia'),(661,'Kenia'),(662,'Chad'),(663,'Gambia'),(664,'Barbados'),(665,'Irlanda'),(666,'Costa Rica'),(667,'Ruanda'),(668,'Namibia'),(669,'Botswana'),(670,'Costa Rica'),(671,'Omán'),(672,'España'),(673,'Líbano'),(714,'Irak'),(715,'Dominica'),(716,'Seychelles'),(717,'Niger'),(718,'Guatemala'),(719,'Luxemburgo'),(720,'Ecuador'),(721,'Grecia'),(722,'Congo'),(723,'Papúa Nueva Guinea'),(724,'El Salvador'),(725,'Fiji'),(726,'Moldavia'),(727,'Sierra Leona'),(728,'Santo Tomé y Principe'),(729,'Paraguay'),(730,'Sudán'),(731,'Micronesia'),(732,'Brasil'),(733,'Suecia'),(774,'Mali'),(775,'Ecuador'),(776,'Bélgica'),(777,'El Salvador'),(778,'India'),(779,'Siria'),(780,'Croacia'),(781,'Papúa Nueva Guinea'),(782,'Perú'),(783,'Macedonia'),(784,'Mauritania'),(785,'El Salvador'),(786,'Malawi'),(787,'Camerún'),(788,'Estados Unidos de América'),(789,'Paraguay'),(790,'Kiribati'),(791,'Montenegro'),(792,'Tailandia'),(793,'Malawi'),(834,'Reino Unido'),(835,'Ucrania'),(836,'Guadalupe'),(837,'Ucrania'),(838,'Timor-Leste'),(839,'Cuba'),(840,'Paraguay'),(841,'Granada'),(842,'Islas Faro'),(843,'Cabo Verde'),(844,'Rusia'),(845,'República Dominicana'),(846,'Holanda'),(847,'Macedonia'),(848,'Honduras'),(849,'Iran'),(850,'Fiji'),(851,'Estonia'),(852,'Japón'),(853,'República Dominicana'),(894,'Dominica'),(895,'Dominica'),(896,'Austria'),(897,'Marruecos'),(898,'Gambia'),(899,'Letonia'),(900,'Alemania'),(901,'Corea'),(902,'Panamá'),(903,'Sudán'),(904,'Suriname'),(905,'Holanda'),(906,'Siria'),(907,'Yemen'),(908,'Irlanda'),(909,'Egipto'),(910,'Belice'),(911,'Bután'),(912,'Serbia'),(913,'Kazajistan'),(954,'Mongolia'),(955,'Cabo Verde'),(956,'Poland'),(957,'Ruanda'),(958,'República Dominicana'),(959,'Martinica'),(960,'Croacia'),(961,'Ucrania'),(962,'Egipto'),(963,'Francia'),(964,'Letonia'),(965,'Uzbekistan'),(966,'Eslovaquia'),(967,'Dominica'),(968,'Papúa Nueva Guinea'),(969,'Georgia'),(970,'Méjico'),(971,'Malawi'),(972,'Puerto Rico'),(973,'Marruecos'),(1014,'Guinea Ecuatorial'),(1015,'Bahamas'),(1016,'Italia'),(1017,'Tanzania'),(1018,'Bangladesh'),(1019,'Afganistán'),(1020,'Congo'),(1021,'Islas Caimán'),(1022,'Albania'),(1023,'Tajikistan'),(1024,'Sierra Leona'),(1025,'Haiti'),(1026,'Guatemala'),(1027,'Fiji'),(1028,'Fiji'),(1029,'Montenegro'),(1030,'Seychelles'),(1031,'Zambia'),(1032,'Nepal'),(1033,'Bután'),(1074,'Taiwan'),(1075,'Siria'),(1076,'Burundi'),(1077,'Luxemburgo'),(1078,'Marruecos'),(1079,'Islandia'),(1080,'Georgia'),(1081,'Honduras'),(1082,'Moldavia'),(1083,'Bosnia Herzegovina'),(1084,'El Salvador'),(1085,'Ruanda'),(1086,'Bahamas'),(1087,'Tanzania'),(1088,'Seychelles'),(1089,'Tanzania'),(1090,'Montenegro'),(1091,'Kiribati'),(1092,'Rusia'),(1093,'Georgia'),(1134,'Vanuatu'),(1135,'Moldavia'),(1136,'España'),(1137,'Islandia'),(1138,'Armenia'),(1139,'Poland'),(1140,'Canada'),(1141,'Ghana'),(1142,'Nicaragua'),(1143,'Eslovenia'),(1144,'Liberia'),(1145,'Chad'),(1146,'Angola'),(1147,'Papúa Nueva Guinea'),(1148,'Liechtenstein'),(1149,'Costa Rica'),(1150,'Estados Unidos de América'),(1151,'Dinamarca'),(1152,'Vietnam'),(1153,'Malta'),(1194,'Albania'),(1195,'Montenegro'),(1196,'Ecuador'),(1197,'Venezuela'),(1198,'Isla de Navidad'),(1199,'Trinidad y Tobago'),(1200,'España'),(1201,'Etiopía'),(1202,'Irlanda'),(1203,'Congo'),(1204,'India'),(1205,'Malta'),(1206,'Aruba'),(1207,'Islas Faro'),(1208,'Bélgica'),(1209,'Bielorusia'),(1210,'Barbados'),(1211,'Uzbekistan'),(1212,'Macao'),(1213,'Burkina Faso'),(1254,'Bulgaria'),(1255,'Guatemala'),(1256,'Macedonia'),(1257,'Bélgica'),(1258,'Chile'),(1259,'Etiopía'),(1260,'Irak'),(1261,'Sudán'),(1262,'Bosnia Herzegovina'),(1263,'Hungria'),(1264,'Aruba'),(1265,'Nigeria'),(1266,'Burkina Faso'),(1267,'Islas Faro'),(1268,'Tunez'),(1269,'Guinea-Bisau'),(1270,'Tanzania'),(1271,'Letonia'),(1272,'Etiopía'),(1273,'Poland'),(1314,'Croacia'),(1315,'Méjico'),(1316,'Taiwan'),(1317,'Kuwait'),(1318,'Bosnia Herzegovina'),(1319,'San Marino'),(1320,'Nepal'),(1321,'Uruguay'),(1322,'Sierra Leona'),(1323,'Francia'),(1324,'Micronesia'),(1325,'India'),(1326,'Eritrea'),(1327,'Zambia'),(1328,'Arabia Saudí'),(1329,'Malawi'),(1330,'Vanuatu'),(1331,'Uzbekistan'),(1332,'Rusia'),(1333,'Pakistan'),(1374,'Hong Kong'),(1375,'Guam'),(1376,'Santo Tomé y Principe'),(1377,'Paraguay'),(1378,'Chipre'),(1379,'Togo'),(1380,'Trinidad y Tobago'),(1381,'Islas Caimán'),(1382,'Jamaica'),(1383,'Bosnia Herzegovina'),(1384,'Azerbayán'),(1385,'Madagascar'),(1386,'Dinamarca'),(1387,'Mauritania'),(1388,'Micronesia'),(1389,'Ruanda'),(1390,'Zambia'),(1391,'Guatemala'),(1392,'Perú'),(1393,'Francia'),(1434,'Venezuela'),(1435,'Jordania'),(1436,'Azerbayán'),(1437,'Angola'),(1438,'Burundi'),(1439,'Taiwan'),(1440,'Liechtenstein'),(1441,'Sierra Leona'),(1442,'Bielorusia'),(1443,'Holanda'),(1444,'China'),(1445,'Honduras'),(1446,'Aruba'),(1447,'Kazajistan'),(1448,'Siria'),(1449,'Bélgica'),(1450,'Argelia'),(1451,'Guinea'),(1452,'Mauritania'),(1453,'España'),(1494,'Liechtenstein'),(1495,'Malasia'),(1496,'Macao'),(1497,'Fiji'),(1498,'Moldavia'),(1499,'Líbano'),(1500,'Estonia'),(1501,'Bulgaria'),(1502,'Grecia'),(1503,'Croacia'),(1504,'Hong Kong'),(1505,'Martinica'),(1506,'Kuwait'),(1507,'Alemania'),(1508,'España'),(1509,'Congo'),(1510,'Malasia'),(1511,'Eslovenia'),(1512,'Hungria'),(1513,'Martinica'),(1554,'Paraguay'),(1555,'Egipto'),(1556,'Gabón'),(1557,'Ucrania'),(1558,'Costa de Marfil'),(1559,'Méjico'),(1560,'Mozambique'),(1561,'Nueva Zelanda'),(1562,'Chipre'),(1563,'Islas Caimán'),(1564,'Malasia'),(1565,'Suecia'),(1566,'Finlandia'),(1567,'Bután'),(1568,'Somalia'),(1569,'Chile'),(1570,'Papúa Nueva Guinea'),(1571,'Botswana'),(1572,'Santo Tomé y Principe'),(1573,'Perú'),(1614,'Trinidad y Tobago'),(1615,'San Marino'),(1616,'Camboya'),(1617,'Chipre'),(1618,'Afganistán'),(1619,'Irlanda'),(1620,'Venezuela'),(1621,'Japón'),(1622,'Gambia'),(1623,'Indonesia'),(1624,'Botswana'),(1625,'Sierra Leona'),(1626,'Filipinas'),(1627,'Azerbayán'),(1628,'Andorra'),(1629,'Luxemburgo'),(1630,'Italia'),(1631,'Turquia'),(1632,'Canada'),(1633,'Ecuador');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `color` varchar(255) NOT NULL DEFAULT '-1',
  `size` varchar(255) NOT NULL DEFAULT '-1',
  `price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `stock` int(11) NOT NULL DEFAULT '0',
  `category_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_products_on_category_id` (`category_id`),
  CONSTRAINT `fk_rails_fb915499a4` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=590 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Rustic Leather Gloves','white','large',94.99,93,3),(2,'Sleek Wool Lamp','white','large',71.76,72,3),(3,'Rustic Copper Bag','white','large',21.24,89,2),(4,'Durable Plastic Table','white','large',21.57,92,4),(5,'Incredible Leather Shirt','white','large',29.84,26,4),(90,'Molasses','white','large',53.05,1916,91),(91,'Pear','white','medium',37.83,3150,92);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20200403192628'),('20200403192912'),('20200403222047'),('20200405034643'),('20200406145417'),('20200407004506'),('20200407004742'),('20200407053204'),('20200407053205'),('20200407053206'),('20200407053207'),('20200407053208'),('20200407053209');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_products`
--

DROP TABLE IF EXISTS `store_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `store_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `stock` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_store_products_on_product_id` (`product_id`),
  KEY `index_store_products_on_store_id` (`store_id`),
  CONSTRAINT `fk_rails_814f36e860` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `fk_rails_f80750e323` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=752 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_products`
--

LOCK TABLES `store_products` WRITE;
/*!40000 ALTER TABLE `store_products` DISABLE KEYS */;
INSERT INTO `store_products` VALUES (101,84,91,1,'2020-04-08 07:57:16','2020-04-08 07:57:16');
/*!40000 ALTER TABLE `store_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stores` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `street` varchar(50) NOT NULL,
  `number` varchar(6) NOT NULL,
  `zipcode` varchar(6) DEFAULT NULL,
  `city_id` bigint(20) DEFAULT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_stores_on_city_id` (`city_id`),
  KEY `index_stores_on_country_id` (`country_id`),
  CONSTRAINT `fk_rails_7e7e2abd88` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  CONSTRAINT `fk_rails_b46c39c5fd` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=564 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES (1,'Zepeda y Miramontes','Solar Juana','1234','1234',1,1,'2020-04-08 07:52:33','2020-04-08 07:52:33'),(2,'Espinoza Cornejo S.A.','Manzana Carla Barela','1234','1234',1,1,'2020-04-08 07:52:33','2020-04-08 07:52:33'),(3,'Pedraza Acosta S.A.','Pasaje José Emilio','1234','1234',1,1,'2020-04-08 07:52:33','2020-04-08 07:52:33'),(84,'Pycca Central','Av. 9 de Octubre','4476','57707',166,205,'2020-04-08 07:57:16','2020-04-08 07:57:16'),(85,'Pycca Central','Av. 9 de Octubre','8842','57707',167,207,'2020-04-08 07:57:16','2020-04-08 07:57:16');
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggings`
--

DROP TABLE IF EXISTS `taggings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) DEFAULT NULL,
  `taggable_type` varchar(255) DEFAULT NULL,
  `taggable_id` int(11) DEFAULT NULL,
  `tagger_type` varchar(255) DEFAULT NULL,
  `tagger_id` int(11) DEFAULT NULL,
  `context` varchar(128) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taggings_idx` (`tag_id`,`taggable_id`,`taggable_type`,`context`,`tagger_id`,`tagger_type`),
  KEY `index_taggings_on_context` (`context`),
  KEY `index_taggings_on_tag_id` (`tag_id`),
  KEY `taggings_taggable_context_idx` (`taggable_id`,`taggable_type`,`context`),
  KEY `taggings_idy` (`taggable_id`,`taggable_type`,`tagger_id`,`context`),
  KEY `index_taggings_on_taggable_id` (`taggable_id`),
  KEY `index_taggings_on_taggable_type` (`taggable_type`),
  KEY `index_taggings_on_tagger_id_and_tagger_type` (`tagger_id`,`tagger_type`),
  KEY `index_taggings_on_tagger_id` (`tagger_id`),
  CONSTRAINT `fk_rails_9fcd2e236b` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggings`
--

LOCK TABLES `taggings` WRITE;
/*!40000 ALTER TABLE `taggings` DISABLE KEYS */;
INSERT INTO `taggings` VALUES (1,1,'Category',1,NULL,NULL,'tags','2020-04-08 07:52:33'),(2,2,'Category',1,NULL,NULL,'tags','2020-04-08 07:52:33'),(3,3,'Category',1,NULL,NULL,'tags','2020-04-08 07:52:33'),(4,4,'Category',1,NULL,NULL,'tags','2020-04-08 07:52:33'),(5,5,'Category',2,NULL,NULL,'tags','2020-04-08 07:52:33'),(6,6,'Category',2,NULL,NULL,'tags','2020-04-08 07:52:33'),(7,7,'Category',2,NULL,NULL,'tags','2020-04-08 07:52:33'),(8,8,'Category',2,NULL,NULL,'tags','2020-04-08 07:52:33'),(9,9,'Category',3,NULL,NULL,'tags','2020-04-08 07:52:33'),(10,10,'Category',3,NULL,NULL,'tags','2020-04-08 07:52:33'),(11,11,'Category',3,NULL,NULL,'tags','2020-04-08 07:52:33'),(12,12,'Category',3,NULL,NULL,'tags','2020-04-08 07:52:33'),(13,13,'Category',4,NULL,NULL,'tags','2020-04-08 07:52:33'),(14,14,'Category',4,NULL,NULL,'tags','2020-04-08 07:52:33'),(15,15,'Category',4,NULL,NULL,'tags','2020-04-08 07:52:33'),(16,16,'Category',4,NULL,NULL,'tags','2020-04-08 07:52:33'),(17,17,'Category',5,NULL,NULL,'tags','2020-04-08 07:52:33'),(18,18,'Category',5,NULL,NULL,'tags','2020-04-08 07:52:33'),(19,19,'Category',5,NULL,NULL,'tags','2020-04-08 07:52:33'),(20,20,'Category',5,NULL,NULL,'tags','2020-04-08 07:52:33');
/*!40000 ALTER TABLE `taggings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `taggings_count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_tags_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'repellendus','2020-04-08 07:52:33','2020-04-08 07:52:33',1),(2,'porro','2020-04-08 07:52:33','2020-04-08 07:52:33',1),(3,'officia','2020-04-08 07:52:33','2020-04-08 07:52:33',1),(4,'nam','2020-04-08 07:52:33','2020-04-08 07:52:33',1),(5,'doloribus','2020-04-08 07:52:33','2020-04-08 07:52:33',1),(6,'quia','2020-04-08 07:52:33','2020-04-08 07:52:33',1),(7,'in','2020-04-08 07:52:33','2020-04-08 07:52:33',1),(8,'qui','2020-04-08 07:52:33','2020-04-08 07:52:33',1),(9,'ut','2020-04-08 07:52:33','2020-04-08 07:52:33',1),(10,'est','2020-04-08 07:52:33','2020-04-08 07:52:33',1),(11,'architecto','2020-04-08 07:52:33','2020-04-08 07:52:33',1),(12,'aspernatur','2020-04-08 07:52:33','2020-04-08 07:52:33',1),(13,'similique','2020-04-08 07:52:33','2020-04-08 07:52:33',1),(14,'dolores','2020-04-08 07:52:33','2020-04-08 07:52:33',1),(15,'quod','2020-04-08 07:52:33','2020-04-08 07:52:33',1),(16,'aut','2020-04-08 07:52:33','2020-04-08 07:52:33',1),(17,'et','2020-04-08 07:52:33','2020-04-08 07:52:33',1),(18,'eveniet','2020-04-08 07:52:33','2020-04-08 07:52:33',1),(19,'inventore','2020-04-08 07:52:33','2020-04-08 07:52:33',1),(20,'quo','2020-04-08 07:52:33','2020-04-08 07:52:33',1);
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-08  3:53:25
