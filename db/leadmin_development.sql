-- MySQL dump 10.16  Distrib 10.1.44-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: leadmin_development
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
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2020-04-08 07:47:03','2020-04-08 07:47:03');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Intelligent Cotton Bench','2020-04-08 07:47:04','2020-04-08 07:47:04'),(2,'Small Plastic Lamp','2020-04-08 07:47:04','2020-04-08 07:47:04'),(3,'Enormous Wooden Car','2020-04-08 07:47:04','2020-04-08 07:47:04'),(4,'Ergonomic Paper Table','2020-04-08 07:47:04','2020-04-08 07:47:04'),(5,'Heavy Duty Paper Plate','2020-04-08 07:47:04','2020-04-08 07:47:04'),(6,'Enormous Paper Pants','2020-04-08 07:47:04','2020-04-08 07:47:04'),(7,'Intelligent Granite Wallet','2020-04-08 07:47:04','2020-04-08 07:47:04'),(8,'Fantastic Marble Clock','2020-04-08 07:47:25','2020-04-08 07:47:25'),(9,'Ergonomic Concrete Computer','2020-04-08 07:47:25','2020-04-08 07:47:25'),(10,'Durable Wooden Watch','2020-04-08 07:47:25','2020-04-08 07:47:25'),(11,'Awesome Cotton Wallet','2020-04-08 07:47:43','2020-04-08 07:47:43'),(12,'Fantastic Aluminum Lamp','2020-04-08 07:47:54','2020-04-08 07:47:54'),(13,'Small Aluminum Shoes','2020-04-08 07:47:54','2020-04-08 07:47:54');
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
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Vargem Grande',3),(2,'Surubim',3),(3,'Vitória do Mearim',3),(4,'Vitória de Santo Antão',3),(5,'Viseu',3),(6,'Conde',1),(7,'Vigia',1),(8,'Viçosa do Ceará',1),(9,'Viçosa',1),(10,'Viana',1),(11,'Várzea Alegre',1),(12,'Varjota',1),(13,'Vargem Grande',1),(14,'Zamora',2),(15,'Yaguachi Nuevo',2),(16,'Vinces',2),(17,'Ventanas',2),(18,'Velasco Ibarra',2),(19,'Tulcán',2),(20,'Tena',2),(21,'Sucre',2),(22,'Santo Domingo de los Colorados',2),(23,'Santa Rosa',2),(24,'Santa Elena',2),(25,'San Lorenzo de Esmeraldas',2),(26,'San Gabriel',2),(27,'Samborondón',2),(28,'Salinas',2),(29,'Rosa Zarate',2),(30,'Riobamba',2),(31,'Quito',2),(32,'Quevedo',2),(33,'Puyo',2),(34,'Pujilí',2),(35,'Puerto Francisco de Orellana',2),(36,'Portoviejo',2),(37,'Playas',2),(38,'Piñas',2),(39,'Pelileo',2),(40,'Pedro Carbo',2),(41,'Pasaje',2),(42,'Otavalo',2),(43,'Springdale',3),(44,'Texarkana',3),(45,'Van Buren',3),(46,'West Memphis',3),(47,'Washington, D.C.',3),(48,'Bear',3),(49,'Dover',3),(50,'Middletown',3),(51,'Newark',3),(52,'Wilmington',3),(53,'Allapattah',3),(54,'Altamonte Springs',3),(55,'Apopka',3),(56,'Aventura',3),(57,'Bartow',3),(58,'Bayonet Point',3),(59,'Bayshore Gardens',3),(60,'Belle Glade',3),(61,'Bellview',3),(62,'Bloomingdale',3),(63,'Boca Del Mar',3),(64,'Boca Raton',3),(65,'Bonita Springs',3),(66,'Vargem Grande',6),(67,'Surubim',6),(68,'Vitória do Mearim',6),(69,'Vitória de Santo Antão',6),(70,'Viseu',6),(71,'Conde',4),(72,'Vigia',4),(73,'Viçosa do Ceará',4),(74,'Viçosa',4),(75,'Viana',4),(76,'Várzea Alegre',4),(77,'Varjota',4),(78,'Vargem Grande',4),(79,'Zamora',2),(80,'Yaguachi Nuevo',2),(81,'Vinces',2),(82,'Ventanas',2),(83,'Velasco Ibarra',2),(84,'Tulcán',2),(85,'Tena',2),(86,'Sucre',2),(87,'Santo Domingo de los Colorados',2),(88,'Santa Rosa',2),(89,'Santa Elena',2),(90,'San Lorenzo de Esmeraldas',2),(91,'San Gabriel',2),(92,'Samborondón',2),(93,'Salinas',2),(94,'Rosa Zarate',2),(95,'Riobamba',2),(96,'Quito',2),(97,'Quevedo',2),(98,'Puyo',2),(99,'Pujilí',2),(100,'Puerto Francisco de Orellana',2),(101,'Portoviejo',2),(102,'Playas',2),(103,'Piñas',2),(104,'Pelileo',2),(105,'Pedro Carbo',2),(106,'Pasaje',2),(107,'Otavalo',2),(108,'Springdale',3),(109,'Texarkana',3),(110,'Van Buren',3),(111,'West Memphis',3),(112,'Washington, D.C.',3),(113,'Bear',3),(114,'Dover',3),(115,'Middletown',3),(116,'Newark',3),(117,'Wilmington',3),(118,'Allapattah',3),(119,'Altamonte Springs',3),(120,'Apopka',3),(121,'Aventura',3),(122,'Bartow',3),(123,'Bayonet Point',3),(124,'Bayshore Gardens',3),(125,'Belle Glade',3),(126,'Bellview',3),(127,'Bloomingdale',3),(128,'Boca Del Mar',3),(129,'Boca Raton',3),(130,'Bonita Springs',3),(131,'Vargem Grande',9),(132,'Surubim',9),(133,'Vitória do Mearim',9),(134,'Vitória de Santo Antão',9),(135,'Viseu',9),(136,'Conde',7),(137,'Vigia',7),(138,'Viçosa do Ceará',7),(139,'Viçosa',7),(140,'Viana',7),(141,'Várzea Alegre',7),(142,'Varjota',7),(143,'Vargem Grande',7),(144,'Zamora',2),(145,'Yaguachi Nuevo',2),(146,'Vinces',2),(147,'Ventanas',2),(148,'Velasco Ibarra',2),(149,'Tulcán',2),(150,'Tena',2),(151,'Sucre',2),(152,'Santo Domingo de los Colorados',2),(153,'Santa Rosa',2),(154,'Santa Elena',2),(155,'San Lorenzo de Esmeraldas',2),(156,'San Gabriel',2),(157,'Samborondón',2),(158,'Salinas',2),(159,'Rosa Zarate',2),(160,'Riobamba',2),(161,'Quito',2),(162,'Quevedo',2),(163,'Puyo',2),(164,'Pujilí',2),(165,'Puerto Francisco de Orellana',2),(166,'Portoviejo',2),(167,'Playas',2),(168,'Piñas',2),(169,'Pelileo',2),(170,'Pedro Carbo',2),(171,'Pasaje',2),(172,'Otavalo',2),(173,'Springdale',3),(174,'Texarkana',3),(175,'Van Buren',3),(176,'West Memphis',3),(177,'Washington, D.C.',3),(178,'Bear',3),(179,'Dover',3),(180,'Middletown',3),(181,'Newark',3),(182,'Wilmington',3),(183,'Allapattah',3),(184,'Altamonte Springs',3),(185,'Apopka',3),(186,'Aventura',3),(187,'Bartow',3),(188,'Bayonet Point',3),(189,'Bayshore Gardens',3),(190,'Belle Glade',3),(191,'Bellview',3),(192,'Bloomingdale',3),(193,'Boca Del Mar',3),(194,'Boca Raton',3),(195,'Bonita Springs',3),(196,'Vargem Grande',12),(197,'Surubim',12),(198,'Vitória do Mearim',12),(199,'Vitória de Santo Antão',12),(200,'Viseu',12),(201,'Conde',10),(202,'Vigia',10),(203,'Viçosa do Ceará',10),(204,'Viçosa',10),(205,'Viana',10),(206,'Várzea Alegre',10),(207,'Varjota',10),(208,'Vargem Grande',10),(209,'Zamora',2),(210,'Yaguachi Nuevo',2),(211,'Vinces',2),(212,'Ventanas',2),(213,'Velasco Ibarra',2),(214,'Tulcán',2),(215,'Tena',2),(216,'Sucre',2),(217,'Santo Domingo de los Colorados',2),(218,'Santa Rosa',2),(219,'Santa Elena',2),(220,'San Lorenzo de Esmeraldas',2),(221,'San Gabriel',2),(222,'Samborondón',2),(223,'Salinas',2),(224,'Rosa Zarate',2),(225,'Riobamba',2),(226,'Quito',2),(227,'Quevedo',2),(228,'Puyo',2),(229,'Pujilí',2),(230,'Puerto Francisco de Orellana',2),(231,'Portoviejo',2),(232,'Playas',2),(233,'Piñas',2),(234,'Pelileo',2),(235,'Pedro Carbo',2),(236,'Pasaje',2),(237,'Otavalo',2),(238,'Springdale',3),(239,'Texarkana',3),(240,'Van Buren',3),(241,'West Memphis',3),(242,'Washington, D.C.',3),(243,'Bear',3),(244,'Dover',3),(245,'Middletown',3),(246,'Newark',3),(247,'Wilmington',3),(248,'Allapattah',3),(249,'Altamonte Springs',3),(250,'Apopka',3),(251,'Aventura',3),(252,'Bartow',3),(253,'Bayonet Point',3),(254,'Bayshore Gardens',3),(255,'Belle Glade',3),(256,'Bellview',3),(257,'Bloomingdale',3),(258,'Boca Del Mar',3),(259,'Boca Raton',3),(260,'Bonita Springs',3);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Brazil'),(2,'Ecuador'),(3,'United States'),(4,'Brazil'),(5,'Ecuador'),(6,'United States'),(7,'Brazil'),(8,'Ecuador'),(9,'United States'),(10,'Brazil'),(11,'Ecuador'),(12,'United States');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Practical Marble Coat','white','large',50.28,10,4),(2,'Intelligent Leather Coat','white','large',93.18,46,3),(3,'Small Leather Gloves','white','large',38.87,72,3),(4,'Rustic Marble Knife','white','large',30.06,38,6),(5,'Ergonomic Rubber Table','white','large',33.01,97,6),(6,'Rustic Paper Chair','white','large',31.48,63,4),(7,'Heavy Duty Concrete Hat','white','large',36.07,63,4),(8,'Aerodynamic Silk Pants','white','large',74.02,16,8),(9,'Intelligent Paper Plate','white','large',35.14,38,4),(10,'Awesome Wool Shoes','white','large',97.55,72,8),(11,'Intelligent Silk Bag','white','large',90.59,89,8),(12,'Awesome Steel Computer','white','large',38.17,17,5),(13,'Fantastic Iron Bag','white','large',99.97,63,2),(14,'Gorgeous Wool Knife','white','large',37.23,97,2),(15,'Practical Steel Keyboard','white','large',76.84,13,5),(16,'Durable Copper Bottle','white','large',91.56,22,7),(17,'Heavy Duty Granite Shirt','white','large',84.49,15,9),(18,'Synergistic Bronze Shoes','white','large',81.07,81,1),(19,'Gorgeous Leather Bottle','white','large',65.64,46,7),(20,'Practical Leather Computer','white','large',73.47,58,8),(21,'Aerodynamic Plastic Table','white','large',30.65,79,6),(22,'Aerodynamic Cotton Clock','white','large',78.15,93,4),(23,'Heavy Duty Linen Shoes','white','large',70.74,46,2),(24,'Synergistic Steel Coat','white','large',66.69,33,3),(25,'Rustic Steel Keyboard','white','large',41.26,52,8),(26,'Intelligent Iron Coat','white','large',18.47,17,4),(27,'Incredible Bronze Bench','white','large',68.42,26,5),(28,'Ergonomic Rubber Shirt','white','large',12.92,82,6),(29,'Gorgeous Concrete Plate','white','large',27.88,72,8),(30,'Fantastic Silk Plate','white','large',46.89,18,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_products`
--

LOCK TABLES `store_products` WRITE;
/*!40000 ALTER TABLE `store_products` DISABLE KEYS */;
INSERT INTO `store_products` VALUES (1,1,1,2,'2020-04-08 08:13:41','2020-04-08 08:13:41'),(2,2,1,0,'2020-04-08 08:13:41','2020-04-08 08:13:41'),(3,3,1,0,'2020-04-08 08:13:41','2020-04-08 08:13:41'),(4,4,1,4,'2020-04-08 08:13:41','2020-04-08 08:13:41'),(5,5,1,0,'2020-04-08 08:13:41','2020-04-08 08:13:41'),(6,6,1,3,'2020-04-08 08:13:41','2020-04-08 08:13:41'),(7,7,1,0,'2020-04-08 08:13:41','2020-04-08 08:13:41'),(8,8,1,0,'2020-04-08 08:13:41','2020-04-08 08:13:41'),(9,9,1,0,'2020-04-08 08:13:41','2020-04-08 08:13:41'),(10,10,1,0,'2020-04-08 08:13:41','2020-04-08 08:51:00'),(11,11,1,0,'2020-04-08 08:13:41','2020-04-08 08:13:41'),(12,12,1,0,'2020-04-08 08:13:41','2020-04-08 08:13:41'),(13,1,6,5,'2020-04-08 08:14:10','2020-04-08 08:14:10'),(14,2,6,21,'2020-04-08 08:14:10','2020-04-08 08:14:10'),(15,3,6,0,'2020-04-08 08:14:10','2020-04-08 08:14:10'),(16,4,6,4,'2020-04-08 08:14:10','2020-04-08 08:14:10'),(17,5,6,0,'2020-04-08 08:14:10','2020-04-08 08:14:10'),(18,6,6,8,'2020-04-08 08:14:10','2020-04-08 08:14:10'),(19,7,6,0,'2020-04-08 08:14:10','2020-04-08 08:14:10'),(20,8,6,0,'2020-04-08 08:14:10','2020-04-08 08:14:10'),(21,9,6,0,'2020-04-08 08:14:10','2020-04-08 08:14:10'),(22,10,6,0,'2020-04-08 08:14:10','2020-04-08 08:14:10'),(23,11,6,0,'2020-04-08 08:14:10','2020-04-08 08:14:10'),(24,12,6,0,'2020-04-08 08:14:10','2020-04-08 08:14:10'),(25,1,7,2,'2020-04-08 08:14:34','2020-04-08 08:14:34'),(26,2,7,2,'2020-04-08 08:14:34','2020-04-08 08:14:34'),(27,3,7,2,'2020-04-08 08:14:34','2020-04-08 08:14:34'),(28,4,7,2,'2020-04-08 08:14:34','2020-04-08 08:14:34'),(29,5,7,2,'2020-04-08 08:14:34','2020-04-08 08:14:34'),(30,6,7,2,'2020-04-08 08:14:34','2020-04-08 08:14:34'),(31,7,7,2,'2020-04-08 08:14:34','2020-04-08 08:14:34'),(32,8,7,2,'2020-04-08 08:14:34','2020-04-08 08:14:34'),(33,9,7,0,'2020-04-08 08:14:34','2020-04-08 08:14:34'),(34,10,7,0,'2020-04-08 08:14:34','2020-04-08 08:14:34'),(35,11,7,0,'2020-04-08 08:14:34','2020-04-08 08:14:34'),(36,12,7,0,'2020-04-08 08:14:34','2020-04-08 08:14:34');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES (1,'Quiroz y Herrera','Bajada Gabriel','1234','1234',1,1,'2020-04-08 07:47:05','2020-04-08 07:47:05'),(2,'Alanis S.A.','Sección Elvira Velásquez','1234','1234',1,1,'2020-04-08 07:47:05','2020-04-08 07:47:05'),(3,'Cotto y Batista','Quinta Berta Camacho','1234','1234',1,1,'2020-04-08 07:47:05','2020-04-08 07:47:05'),(4,'Benavides y Hernandes','Rampa Jacobo','1234','1234',1,1,'2020-04-08 07:47:25','2020-04-08 07:47:25'),(5,'Barajas, Carreón y Lucero Asociados','Rampa Inés Ulloa','1234','1234',1,1,'2020-04-08 07:47:25','2020-04-08 07:47:25'),(6,'Hurtado Hermanos','Jardines Ana Luisa','1234','1234',1,1,'2020-04-08 07:47:25','2020-04-08 07:47:25'),(7,'Ordóñez Hermanos','Carretera Ignacio Cano','1234','1234',1,1,'2020-04-08 07:47:43','2020-04-08 07:47:43'),(8,'Narváez, Leyva y Padrón Asociados','Torrente Cristina','1234','1234',1,1,'2020-04-08 07:47:43','2020-04-08 07:47:43'),(9,'Delgado y Niño','Calleja José Eduardo Bañuelos','1234','1234',1,1,'2020-04-08 07:47:43','2020-04-08 07:47:43'),(10,'Gonzales Hermanos','Sección Lucia Ulloa','1234','1234',1,1,'2020-04-08 07:47:55','2020-04-08 07:47:55'),(11,'Marroquín, Flórez y Cardona Asociados','Travesía Elena Madrigal','1234','1234',1,1,'2020-04-08 07:47:55','2020-04-08 07:47:55'),(12,'Macías, Medrano y Juárez Asociados','Urbanización Martín Mesa','1234','1234',1,1,'2020-04-08 07:47:55','2020-04-08 07:47:55');
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggings`
--

LOCK TABLES `taggings` WRITE;
/*!40000 ALTER TABLE `taggings` DISABLE KEYS */;
INSERT INTO `taggings` VALUES (1,1,'Category',1,NULL,NULL,'tags','2020-04-08 07:47:04'),(2,2,'Category',1,NULL,NULL,'tags','2020-04-08 07:47:04'),(3,3,'Category',1,NULL,NULL,'tags','2020-04-08 07:47:04'),(4,4,'Category',1,NULL,NULL,'tags','2020-04-08 07:47:04'),(5,5,'Category',2,NULL,NULL,'tags','2020-04-08 07:47:04'),(6,6,'Category',2,NULL,NULL,'tags','2020-04-08 07:47:04'),(7,7,'Category',2,NULL,NULL,'tags','2020-04-08 07:47:04'),(8,8,'Category',2,NULL,NULL,'tags','2020-04-08 07:47:04'),(9,9,'Category',3,NULL,NULL,'tags','2020-04-08 07:47:04'),(10,10,'Category',3,NULL,NULL,'tags','2020-04-08 07:47:04'),(11,11,'Category',3,NULL,NULL,'tags','2020-04-08 07:47:04'),(12,12,'Category',3,NULL,NULL,'tags','2020-04-08 07:47:04'),(13,13,'Category',4,NULL,NULL,'tags','2020-04-08 07:47:04'),(14,14,'Category',4,NULL,NULL,'tags','2020-04-08 07:47:04'),(15,15,'Category',4,NULL,NULL,'tags','2020-04-08 07:47:04'),(16,16,'Category',4,NULL,NULL,'tags','2020-04-08 07:47:04'),(17,17,'Category',5,NULL,NULL,'tags','2020-04-08 07:47:04'),(18,18,'Category',5,NULL,NULL,'tags','2020-04-08 07:47:04'),(19,19,'Category',5,NULL,NULL,'tags','2020-04-08 07:47:04'),(20,20,'Category',5,NULL,NULL,'tags','2020-04-08 07:47:04'),(21,21,'Category',6,NULL,NULL,'tags','2020-04-08 07:47:04'),(22,22,'Category',6,NULL,NULL,'tags','2020-04-08 07:47:04'),(23,23,'Category',6,NULL,NULL,'tags','2020-04-08 07:47:04'),(24,24,'Category',6,NULL,NULL,'tags','2020-04-08 07:47:04'),(25,25,'Category',7,NULL,NULL,'tags','2020-04-08 07:47:04'),(26,26,'Category',7,NULL,NULL,'tags','2020-04-08 07:47:04'),(27,27,'Category',7,NULL,NULL,'tags','2020-04-08 07:47:04'),(28,28,'Category',7,NULL,NULL,'tags','2020-04-08 07:47:04'),(29,29,'Category',8,NULL,NULL,'tags','2020-04-08 07:47:25'),(30,30,'Category',8,NULL,NULL,'tags','2020-04-08 07:47:25'),(31,31,'Category',8,NULL,NULL,'tags','2020-04-08 07:47:25'),(32,32,'Category',8,NULL,NULL,'tags','2020-04-08 07:47:25'),(33,33,'Category',9,NULL,NULL,'tags','2020-04-08 07:47:25'),(34,34,'Category',9,NULL,NULL,'tags','2020-04-08 07:47:25'),(35,35,'Category',9,NULL,NULL,'tags','2020-04-08 07:47:25'),(36,36,'Category',9,NULL,NULL,'tags','2020-04-08 07:47:25'),(37,37,'Category',10,NULL,NULL,'tags','2020-04-08 07:47:25'),(38,38,'Category',10,NULL,NULL,'tags','2020-04-08 07:47:25'),(39,39,'Category',10,NULL,NULL,'tags','2020-04-08 07:47:25'),(40,40,'Category',10,NULL,NULL,'tags','2020-04-08 07:47:25'),(41,41,'Category',11,NULL,NULL,'tags','2020-04-08 07:47:43'),(42,42,'Category',11,NULL,NULL,'tags','2020-04-08 07:47:43'),(43,43,'Category',11,NULL,NULL,'tags','2020-04-08 07:47:43'),(44,44,'Category',11,NULL,NULL,'tags','2020-04-08 07:47:43'),(45,45,'Category',12,NULL,NULL,'tags','2020-04-08 07:47:54'),(46,46,'Category',12,NULL,NULL,'tags','2020-04-08 07:47:54'),(47,47,'Category',12,NULL,NULL,'tags','2020-04-08 07:47:54'),(48,48,'Category',12,NULL,NULL,'tags','2020-04-08 07:47:54'),(49,49,'Category',13,NULL,NULL,'tags','2020-04-08 07:47:54'),(50,50,'Category',13,NULL,NULL,'tags','2020-04-08 07:47:54'),(51,51,'Category',13,NULL,NULL,'tags','2020-04-08 07:47:54'),(52,52,'Category',13,NULL,NULL,'tags','2020-04-08 07:47:54');
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'maiores','2020-04-08 07:47:04','2020-04-08 07:47:04',1),(2,'qui','2020-04-08 07:47:04','2020-04-08 07:47:04',1),(3,'fugit','2020-04-08 07:47:04','2020-04-08 07:47:04',1),(4,'et','2020-04-08 07:47:04','2020-04-08 07:47:04',1),(5,'explicabo','2020-04-08 07:47:04','2020-04-08 07:47:04',1),(6,'illo','2020-04-08 07:47:04','2020-04-08 07:47:04',1),(7,'harum','2020-04-08 07:47:04','2020-04-08 07:47:04',1),(8,'sint','2020-04-08 07:47:04','2020-04-08 07:47:04',1),(9,'voluptas','2020-04-08 07:47:04','2020-04-08 07:47:04',1),(10,'veritatis','2020-04-08 07:47:04','2020-04-08 07:47:04',1),(11,'totam','2020-04-08 07:47:04','2020-04-08 07:47:04',1),(12,'earum','2020-04-08 07:47:04','2020-04-08 07:47:04',1),(13,'aut','2020-04-08 07:47:04','2020-04-08 07:47:04',1),(14,'necessitatibus','2020-04-08 07:47:04','2020-04-08 07:47:04',1),(15,'error','2020-04-08 07:47:04','2020-04-08 07:47:04',1),(16,'ut','2020-04-08 07:47:04','2020-04-08 07:47:04',1),(17,'est','2020-04-08 07:47:04','2020-04-08 07:47:04',1),(18,'quis','2020-04-08 07:47:04','2020-04-08 07:47:04',1),(19,'saepe','2020-04-08 07:47:04','2020-04-08 07:47:04',1),(20,'ex','2020-04-08 07:47:04','2020-04-08 07:47:04',1),(21,'numquam','2020-04-08 07:47:04','2020-04-08 07:47:04',1),(22,'blanditiis','2020-04-08 07:47:04','2020-04-08 07:47:04',1),(23,'sit','2020-04-08 07:47:04','2020-04-08 07:47:04',1),(24,'itaque','2020-04-08 07:47:04','2020-04-08 07:47:04',1),(25,'omnis','2020-04-08 07:47:04','2020-04-08 07:47:04',1),(26,'quod','2020-04-08 07:47:04','2020-04-08 07:47:04',1),(27,'sed','2020-04-08 07:47:04','2020-04-08 07:47:04',1),(28,'minima','2020-04-08 07:47:04','2020-04-08 07:47:04',1),(29,'tenetur','2020-04-08 07:47:25','2020-04-08 07:47:25',1),(30,'nulla','2020-04-08 07:47:25','2020-04-08 07:47:25',1),(31,'consequatur','2020-04-08 07:47:25','2020-04-08 07:47:25',1),(32,'magnam','2020-04-08 07:47:25','2020-04-08 07:47:25',1),(33,'rerum','2020-04-08 07:47:25','2020-04-08 07:47:25',1),(34,'doloremque','2020-04-08 07:47:25','2020-04-08 07:47:25',1),(35,'vel','2020-04-08 07:47:25','2020-04-08 07:47:25',1),(36,'nihil','2020-04-08 07:47:25','2020-04-08 07:47:25',1),(37,'ea','2020-04-08 07:47:25','2020-04-08 07:47:25',1),(38,'assumenda','2020-04-08 07:47:25','2020-04-08 07:47:25',1),(39,'quaerat','2020-04-08 07:47:25','2020-04-08 07:47:25',1),(40,'nam','2020-04-08 07:47:25','2020-04-08 07:47:25',1),(41,'autem','2020-04-08 07:47:43','2020-04-08 07:47:43',1),(42,'officiis','2020-04-08 07:47:43','2020-04-08 07:47:43',1),(43,'sapiente','2020-04-08 07:47:43','2020-04-08 07:47:43',1),(44,'tempora','2020-04-08 07:47:43','2020-04-08 07:47:43',1),(45,'excepturi','2020-04-08 07:47:54','2020-04-08 07:47:54',1),(46,'ab','2020-04-08 07:47:54','2020-04-08 07:47:54',1),(47,'expedita','2020-04-08 07:47:54','2020-04-08 07:47:54',1),(48,'in','2020-04-08 07:47:54','2020-04-08 07:47:54',1),(49,'eos','2020-04-08 07:47:54','2020-04-08 07:47:54',1),(50,'commodi','2020-04-08 07:47:54','2020-04-08 07:47:54',1),(51,'eligendi','2020-04-08 07:47:54','2020-04-08 07:47:54',1),(52,'optio','2020-04-08 07:47:54','2020-04-08 07:47:54',1);
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

-- Dump completed on 2020-04-08  3:53:13
