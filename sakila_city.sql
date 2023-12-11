-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: sakila
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `city_id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `city` varchar(50) NOT NULL,
  `country_id` smallint unsigned NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`city_id`),
  KEY `idx_fk_country_id` (`country_id`),
  CONSTRAINT `fk_city_country` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=601 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'A Coruña (La Coruña)',87,'2006-02-14 23:15:25'),(2,'Abha',82,'2006-02-14 23:15:25'),(3,'Abu Dhabi',101,'2006-02-14 23:15:25'),(4,'Acuña',60,'2006-02-14 23:15:25'),(5,'Adana',97,'2006-02-14 23:15:25'),(6,'Addis Abeba',31,'2006-02-14 23:15:25'),(7,'Aden',107,'2006-02-14 23:15:25'),(8,'Adoni',44,'2006-02-14 23:15:25'),(9,'Ahmadnagar',44,'2006-02-14 23:15:25'),(10,'Akishima',50,'2006-02-14 23:15:25'),(11,'Akron',103,'2006-02-14 23:15:25'),(12,'al-Ayn',101,'2006-02-14 23:15:25'),(13,'al-Hawiya',82,'2006-02-14 23:15:25'),(14,'al-Manama',11,'2006-02-14 23:15:25'),(15,'al-Qadarif',89,'2006-02-14 23:15:25'),(16,'al-Qatif',82,'2006-02-14 23:15:25'),(17,'Alessandria',49,'2006-02-14 23:15:25'),(18,'Allappuzha (Alleppey)',44,'2006-02-14 23:15:25'),(19,'Allende',60,'2006-02-14 23:15:25'),(20,'Almirante Brown',6,'2006-02-14 23:15:25'),(21,'Alvorada',15,'2006-02-14 23:15:25'),(22,'Ambattur',44,'2006-02-14 23:15:25'),(23,'Amersfoort',67,'2006-02-14 23:15:25'),(24,'Amroha',44,'2006-02-14 23:15:25'),(25,'Angra dos Reis',15,'2006-02-14 23:15:25'),(26,'Anápolis',15,'2006-02-14 23:15:25'),(27,'Antofagasta',22,'2006-02-14 23:15:25'),(28,'Aparecida de Goiânia',15,'2006-02-14 23:15:25'),(29,'Apeldoorn',67,'2006-02-14 23:15:25'),(30,'Araçatuba',15,'2006-02-14 23:15:25'),(31,'Arak',46,'2006-02-14 23:15:25'),(32,'Arecibo',77,'2006-02-14 23:15:25'),(33,'Arlington',103,'2006-02-14 23:15:25'),(34,'Ashdod',48,'2006-02-14 23:15:25'),(35,'Ashgabat',98,'2006-02-14 23:15:25'),(36,'Ashqelon',48,'2006-02-14 23:15:25'),(37,'Asunción',73,'2006-02-14 23:15:25'),(38,'Athenai',39,'2006-02-14 23:15:25'),(39,'Atšinsk',80,'2006-02-14 23:15:25'),(40,'Atlixco',60,'2006-02-14 23:15:25'),(41,'Augusta-Richmond County',103,'2006-02-14 23:15:25'),(42,'Aurora',103,'2006-02-14 23:15:25'),(43,'Avellaneda',6,'2006-02-14 23:15:25'),(44,'Bagé',15,'2006-02-14 23:15:25'),(45,'Bahía Blanca',6,'2006-02-14 23:15:25'),(46,'Baicheng',23,'2006-02-14 23:15:25'),(47,'Baiyin',23,'2006-02-14 23:15:25'),(48,'Baku',10,'2006-02-14 23:15:25'),(49,'Balašiha',80,'2006-02-14 23:15:25'),(50,'Balikesir',97,'2006-02-14 23:15:25'),(51,'Balurghat',44,'2006-02-14 23:15:25'),(52,'Bamenda',19,'2006-02-14 23:15:25'),(53,'Bandar Seri Begawan',16,'2006-02-14 23:15:25'),(54,'Banjul',37,'2006-02-14 23:15:25'),(55,'Barcelona',104,'2006-02-14 23:15:25'),(56,'Basel',91,'2006-02-14 23:15:25'),(57,'Bat Yam',48,'2006-02-14 23:15:25'),(58,'Batman',97,'2006-02-14 23:15:25'),(59,'Batna',2,'2006-02-14 23:15:25'),(60,'Battambang',18,'2006-02-14 23:15:25'),(61,'Baybay',75,'2006-02-14 23:15:25'),(62,'Bayugan',75,'2006-02-14 23:15:25'),(63,'Béchar',2,'2006-02-14 23:15:25'),(64,'Beira',63,'2006-02-14 23:15:25'),(65,'Bellevue',103,'2006-02-14 23:15:25'),(66,'Belém',15,'2006-02-14 23:15:25'),(67,'Benguela',4,'2006-02-14 23:15:25'),(68,'Beni-Mellal',62,'2006-02-14 23:15:25'),(69,'Benin City',69,'2006-02-14 23:15:25'),(70,'Bergamo',49,'2006-02-14 23:15:25'),(71,'Berhampore (Baharampur)',44,'2006-02-14 23:15:25'),(72,'Bern',91,'2006-02-14 23:15:25'),(73,'Bhavnagar',44,'2006-02-14 23:15:25'),(74,'Bhilwara',44,'2006-02-14 23:15:25'),(75,'Bhimavaram',44,'2006-02-14 23:15:25'),(76,'Bhopal',44,'2006-02-14 23:15:25'),(77,'Bhusawal',44,'2006-02-14 23:15:25'),(78,'Bijapur',44,'2006-02-14 23:15:25'),(79,'Bilbays',29,'2006-02-14 23:15:25'),(80,'Binzhou',23,'2006-02-14 23:15:25'),(81,'Birgunj',66,'2006-02-14 23:15:25'),(82,'Bislig',75,'2006-02-14 23:15:25'),(83,'Blumenau',15,'2006-02-14 23:15:25'),(84,'Boa Vista',15,'2006-02-14 23:15:25'),(85,'Boksburg',85,'2006-02-14 23:15:25'),(86,'Botosani',78,'2006-02-14 23:15:25'),(87,'Botshabelo',85,'2006-02-14 23:15:25'),(88,'Bradford',102,'2006-02-14 23:15:25'),(89,'Brasília',15,'2006-02-14 23:15:25'),(90,'Bratislava',84,'2006-02-14 23:15:25'),(91,'Brescia',49,'2006-02-14 23:15:25'),(92,'Brest',34,'2006-02-14 23:15:25'),(93,'Brindisi',49,'2006-02-14 23:15:25'),(94,'Brockton',103,'2006-02-14 23:15:25'),(95,'Bucuresti',78,'2006-02-14 23:15:25'),(96,'Buenaventura',24,'2006-02-14 23:15:25'),(97,'Bydgoszcz',76,'2006-02-14 23:15:25'),(98,'Cabuyao',75,'2006-02-14 23:15:25'),(99,'Callao',74,'2006-02-14 23:15:25'),(100,'Cam Ranh',105,'2006-02-14 23:15:25'),(101,'Cape Coral',103,'2006-02-14 23:15:25'),(102,'Caracas',104,'2006-02-14 23:15:25'),(103,'Carmen',60,'2006-02-14 23:15:25'),(104,'Cavite',75,'2006-02-14 23:15:25'),(105,'Cayenne',35,'2006-02-14 23:15:25'),(106,'Celaya',60,'2006-02-14 23:15:25'),(107,'Chandrapur',44,'2006-02-14 23:15:25'),(108,'Changhwa',92,'2006-02-14 23:15:25'),(109,'Changzhou',23,'2006-02-14 23:15:25'),(110,'Chapra',44,'2006-02-14 23:15:25'),(111,'Charlotte Amalie',106,'2006-02-14 23:15:25'),(112,'Chatsworth',85,'2006-02-14 23:15:25'),(113,'Cheju',86,'2006-02-14 23:15:25'),(114,'Chiayi',92,'2006-02-14 23:15:25'),(115,'Chisinau',61,'2006-02-14 23:15:25'),(116,'Chungho',92,'2006-02-14 23:15:25'),(117,'Cianjur',45,'2006-02-14 23:15:25'),(118,'Ciomas',45,'2006-02-14 23:15:25'),(119,'Ciparay',45,'2006-02-14 23:15:25'),(120,'Citrus Heights',103,'2006-02-14 23:15:25'),(121,'Città del Vaticano',41,'2006-02-14 23:15:25'),(122,'Ciudad del Este',73,'2006-02-14 23:15:25'),(123,'Clarksville',103,'2006-02-14 23:15:25'),(124,'Coacalco de Berriozábal',60,'2006-02-14 23:15:25'),(125,'Coatzacoalcos',60,'2006-02-14 23:15:25'),(126,'Compton',103,'2006-02-14 23:15:25'),(127,'Coquimbo',22,'2006-02-14 23:15:25'),(128,'Córdoba',6,'2006-02-14 23:15:25'),(129,'Cuauhtémoc',60,'2006-02-14 23:15:25'),(130,'Cuautla',60,'2006-02-14 23:15:25'),(131,'Cuernavaca',60,'2006-02-14 23:15:25'),(132,'Cumaná',104,'2006-02-14 23:15:25'),(133,'Czestochowa',76,'2006-02-14 23:15:25'),(134,'Dadu',72,'2006-02-14 23:15:25'),(135,'Dallas',103,'2006-02-14 23:15:25'),(136,'Datong',23,'2006-02-14 23:15:25'),(137,'Daugavpils',54,'2006-02-14 23:15:25'),(138,'Davao',75,'2006-02-14 23:15:25'),(139,'Daxian',23,'2006-02-14 23:15:25'),(140,'Dayton',103,'2006-02-14 23:15:25'),(141,'Deba Habe',69,'2006-02-14 23:15:25'),(142,'Denizli',97,'2006-02-14 23:15:25'),(143,'Dhaka',12,'2006-02-14 23:15:25'),(144,'Dhule (Dhulia)',44,'2006-02-14 23:15:25'),(145,'Dongying',23,'2006-02-14 23:15:25'),(146,'Donostia-San Sebastián',87,'2006-02-14 23:15:25'),(147,'Dos Quebradas',24,'2006-02-14 23:15:25'),(148,'Duisburg',38,'2006-02-14 23:15:25'),(149,'Dundee',102,'2006-02-14 23:15:25'),(150,'Dzerzinsk',80,'2006-02-14 23:15:25'),(151,'Ede',67,'2006-02-14 23:15:25'),(152,'Effon-Alaiye',69,'2006-02-14 23:15:25'),(153,'El Alto',14,'2006-02-14 23:15:25'),(154,'El Fuerte',60,'2006-02-14 23:15:25'),(155,'El Monte',103,'2006-02-14 23:15:25'),(156,'Elista',80,'2006-02-14 23:15:25'),(157,'Emeishan',23,'2006-02-14 23:15:25'),(158,'Emmen',67,'2006-02-14 23:15:25'),(159,'Enshi',23,'2006-02-14 23:15:25'),(160,'Erlangen',38,'2006-02-14 23:15:25'),(161,'Escobar',6,'2006-02-14 23:15:25'),(162,'Esfahan',46,'2006-02-14 23:15:25'),(163,'Eskisehir',97,'2006-02-14 23:15:25'),(164,'Etawah',44,'2006-02-14 23:15:25'),(165,'Ezeiza',6,'2006-02-14 23:15:25'),(166,'Ezhou',23,'2006-02-14 23:15:25'),(167,'Faaa',36,'2006-02-14 23:15:25'),(168,'Fengshan',92,'2006-02-14 23:15:25'),(169,'Firozabad',44,'2006-02-14 23:15:25'),(170,'Florencia',24,'2006-02-14 23:15:25'),(171,'Fontana',103,'2006-02-14 23:15:25'),(172,'Fukuyama',50,'2006-02-14 23:15:25'),(173,'Funafuti',99,'2006-02-14 23:15:25'),(174,'Fuyu',23,'2006-02-14 23:15:25'),(175,'Fuzhou',23,'2006-02-14 23:15:25'),(176,'Gandhinagar',44,'2006-02-14 23:15:25'),(177,'Garden Grove',103,'2006-02-14 23:15:25'),(178,'Garland',103,'2006-02-14 23:15:25'),(179,'Gatineau',20,'2006-02-14 23:15:25'),(180,'Gaziantep',97,'2006-02-14 23:15:25'),(181,'Gijón',87,'2006-02-14 23:15:25'),(182,'Gingoog',75,'2006-02-14 23:15:25'),(183,'Goiânia',15,'2006-02-14 23:15:25'),(184,'Gorontalo',45,'2006-02-14 23:15:25'),(185,'Grand Prairie',103,'2006-02-14 23:15:25'),(186,'Graz',9,'2006-02-14 23:15:25'),(187,'Greensboro',103,'2006-02-14 23:15:25'),(188,'Guadalajara',60,'2006-02-14 23:15:25'),(189,'Guarujá',15,'2006-02-14 23:15:25'),(190,'Águas Lindas de Goiás',15,'2006-02-14 23:15:25'),(191,'Gulbarga',44,'2006-02-14 23:15:25'),(192,'Hagonoy',75,'2006-02-14 23:15:25'),(193,'Haining',23,'2006-02-14 23:15:25'),(194,'Haiphong',105,'2006-02-14 23:15:25'),(195,'Haldia',44,'2006-02-14 23:15:25'),(196,'Halifax',20,'2006-02-14 23:15:25'),(197,'Halisahar',44,'2006-02-14 23:15:25'),(198,'Halle/Saale',38,'2006-02-14 23:15:25'),(199,'Hami',23,'2006-02-14 23:15:25'),(200,'Hamilton',68,'2006-02-14 23:15:25'),(201,'Hanoi',105,'2006-02-14 23:15:25'),(202,'Hidalgo',60,'2006-02-14 23:15:25'),(203,'Higashiosaka',50,'2006-02-14 23:15:25'),(204,'Hino',50,'2006-02-14 23:15:25'),(205,'Hiroshima',50,'2006-02-14 23:15:25'),(206,'Hodeida',107,'2006-02-14 23:15:25'),(207,'Hohhot',23,'2006-02-14 23:15:25'),(208,'Hoshiarpur',44,'2006-02-14 23:15:25'),(209,'Hsichuh',92,'2006-02-14 23:15:25'),(210,'Huai´an',23,'2006-02-14 23:15:25'),(211,'Hubli-Dharwad',44,'2006-02-14 23:15:25'),(212,'Huejutla de Reyes',60,'2006-02-14 23:15:25'),(213,'Huixquilucan',60,'2006-02-14 23:15:25'),(214,'Huánuco',74,'2006-02-14 23:15:25'),(215,'Ibirité',15,'2006-02-14 23:15:25'),(216,'Idfu',29,'2006-02-14 23:15:25'),(217,'Ife',69,'2006-02-14 23:15:25'),(218,'Ikerre',69,'2006-02-14 23:15:25'),(219,'Iligan',75,'2006-02-14 23:15:25'),(220,'Ilorin',69,'2006-02-14 23:15:25'),(221,'Imus',75,'2006-02-14 23:15:25'),(222,'Inegöl',97,'2006-02-14 23:15:25'),(223,'Ipoh',59,'2006-02-14 23:15:25'),(224,'Isesaki',50,'2006-02-14 23:15:25'),(225,'Ivanovo',80,'2006-02-14 23:15:25'),(226,'Iwaki',50,'2006-02-14 23:15:25'),(227,'Iwakuni',50,'2006-02-14 23:15:25'),(228,'Iwatsuki',50,'2006-02-14 23:15:25'),(229,'Izumisano',50,'2006-02-14 23:15:25'),(230,'Jaffna',88,'2006-02-14 23:15:25'),(231,'Jaipur',44,'2006-02-14 23:15:25'),(232,'Jakarta',45,'2006-02-14 23:15:25'),(233,'Jalib al-Shuyukh',53,'2006-02-14 23:15:25'),(234,'Jamalpur',12,'2006-02-14 23:15:25'),(235,'Jaroslavl',80,'2006-02-14 23:15:25'),(236,'Jastrzebie-Zdrój',76,'2006-02-14 23:15:25'),(237,'Jedda',82,'2006-02-14 23:15:25'),(238,'Jelets',80,'2006-02-14 23:15:25'),(239,'Jhansi',44,'2006-02-14 23:15:25'),(240,'Jinchang',23,'2006-02-14 23:15:25'),(241,'Jining',23,'2006-02-14 23:15:25'),(242,'Jinzhou',23,'2006-02-14 23:15:25'),(243,'Jodhpur',44,'2006-02-14 23:15:25'),(244,'Johannesburg',85,'2006-02-14 23:15:25'),(245,'Joliet',103,'2006-02-14 23:15:25'),(246,'José Azueta',60,'2006-02-14 23:15:25'),(247,'Juazeiro do Norte',15,'2006-02-14 23:15:25'),(248,'Juiz de Fora',15,'2006-02-14 23:15:25'),(249,'Junan',23,'2006-02-14 23:15:25'),(250,'Juárez',60,'2006-02-14 23:15:25'),(251,'Kabul',1,'2006-02-14 23:15:25'),(252,'Kaduna',69,'2006-02-14 23:15:25'),(253,'Kakamigahara',50,'2006-02-14 23:15:25'),(254,'Kaliningrad',80,'2006-02-14 23:15:25'),(255,'Kalisz',76,'2006-02-14 23:15:25'),(256,'Kamakura',50,'2006-02-14 23:15:25'),(257,'Kamarhati',44,'2006-02-14 23:15:25'),(258,'Kamjanets-Podilskyi',100,'2006-02-14 23:15:25'),(259,'Kamyšin',80,'2006-02-14 23:15:25'),(260,'Kanazawa',50,'2006-02-14 23:15:25'),(261,'Kanchrapara',44,'2006-02-14 23:15:25'),(262,'Kansas City',103,'2006-02-14 23:15:25'),(263,'Karnal',44,'2006-02-14 23:15:25'),(264,'Katihar',44,'2006-02-14 23:15:25'),(265,'Kermanshah',46,'2006-02-14 23:15:25'),(266,'Kilis',97,'2006-02-14 23:15:25'),(267,'Kimberley',85,'2006-02-14 23:15:25'),(268,'Kimchon',86,'2006-02-14 23:15:25'),(269,'Kingstown',81,'2006-02-14 23:15:25'),(270,'Kirovo-Tšepetsk',80,'2006-02-14 23:15:25'),(271,'Kisumu',52,'2006-02-14 23:15:25'),(272,'Kitwe',109,'2006-02-14 23:15:25'),(273,'Klerksdorp',85,'2006-02-14 23:15:25'),(274,'Kolpino',80,'2006-02-14 23:15:25'),(275,'Konotop',100,'2006-02-14 23:15:25'),(276,'Koriyama',50,'2006-02-14 23:15:25'),(277,'Korla',23,'2006-02-14 23:15:25'),(278,'Korolev',80,'2006-02-14 23:15:25'),(279,'Kowloon and New Kowloon',42,'2006-02-14 23:15:25'),(280,'Kragujevac',108,'2006-02-14 23:15:25'),(281,'Kütahya',97,'2006-02-14 23:15:25'),(282,'Kuching',59,'2006-02-14 23:15:25'),(283,'Kumbakonam',44,'2006-02-14 23:15:25'),(284,'Kurashiki',50,'2006-02-14 23:15:25'),(285,'Kurgan',80,'2006-02-14 23:15:25'),(286,'Kursk',80,'2006-02-14 23:15:25'),(287,'Kuwana',50,'2006-02-14 23:15:25'),(288,'La Paz',60,'2006-02-14 23:15:25'),(289,'La Plata',6,'2006-02-14 23:15:25'),(290,'La Romana',27,'2006-02-14 23:15:25'),(291,'Laiwu',23,'2006-02-14 23:15:25'),(292,'Lancaster',103,'2006-02-14 23:15:25'),(293,'Laohekou',23,'2006-02-14 23:15:25'),(294,'Lapu-Lapu',75,'2006-02-14 23:15:25'),(295,'Laredo',103,'2006-02-14 23:15:25'),(296,'Lausanne',91,'2006-02-14 23:15:25'),(297,'Le Mans',34,'2006-02-14 23:15:25'),(298,'Lengshuijiang',23,'2006-02-14 23:15:25'),(299,'Leshan',23,'2006-02-14 23:15:25'),(300,'Lethbridge',20,'2006-02-14 23:15:25'),(301,'Lhokseumawe',45,'2006-02-14 23:15:25'),(302,'Liaocheng',23,'2006-02-14 23:15:25'),(303,'Liepaja',54,'2006-02-14 23:15:25'),(304,'Lilongwe',58,'2006-02-14 23:15:25'),(305,'Lima',74,'2006-02-14 23:15:25'),(306,'Lincoln',103,'2006-02-14 23:15:25'),(307,'Linz',9,'2006-02-14 23:15:25'),(308,'Lipetsk',80,'2006-02-14 23:15:25'),(309,'Livorno',49,'2006-02-14 23:15:25'),(310,'Ljubertsy',80,'2006-02-14 23:15:25'),(311,'Loja',28,'2006-02-14 23:15:25'),(312,'London',102,'2006-02-14 23:15:25'),(313,'London',20,'2006-02-14 23:15:25'),(314,'Lublin',76,'2006-02-14 23:15:25'),(315,'Lubumbashi',25,'2006-02-14 23:15:25'),(316,'Lungtan',92,'2006-02-14 23:15:25'),(317,'Luziânia',15,'2006-02-14 23:15:25'),(318,'Madiun',45,'2006-02-14 23:15:25'),(319,'Mahajanga',57,'2006-02-14 23:15:25'),(320,'Maikop',80,'2006-02-14 23:15:25'),(321,'Malmö',90,'2006-02-14 23:15:25'),(322,'Manchester',103,'2006-02-14 23:15:25'),(323,'Mandaluyong',75,'2006-02-14 23:15:25'),(324,'Mandi Bahauddin',72,'2006-02-14 23:15:25'),(325,'Mannheim',38,'2006-02-14 23:15:25'),(326,'Maracaíbo',104,'2006-02-14 23:15:25'),(327,'Mardan',72,'2006-02-14 23:15:25'),(328,'Maringá',15,'2006-02-14 23:15:25'),(329,'Masqat',71,'2006-02-14 23:15:25'),(330,'Matamoros',60,'2006-02-14 23:15:25'),(331,'Matsue',50,'2006-02-14 23:15:25'),(332,'Meixian',23,'2006-02-14 23:15:25'),(333,'Memphis',103,'2006-02-14 23:15:25'),(334,'Merlo',6,'2006-02-14 23:15:25'),(335,'Mexicali',60,'2006-02-14 23:15:25'),(336,'Miraj',44,'2006-02-14 23:15:25'),(337,'Mit Ghamr',29,'2006-02-14 23:15:25'),(338,'Miyakonojo',50,'2006-02-14 23:15:25'),(339,'Mogiljov',13,'2006-02-14 23:15:25'),(340,'Molodetšno',13,'2006-02-14 23:15:25'),(341,'Monclova',60,'2006-02-14 23:15:25'),(342,'Monywa',64,'2006-02-14 23:15:25'),(343,'Moscow',80,'2006-02-14 23:15:25'),(344,'Mosul',47,'2006-02-14 23:15:25'),(345,'Mukatševe',100,'2006-02-14 23:15:25'),(346,'Munger (Monghyr)',44,'2006-02-14 23:15:25'),(347,'Mwanza',93,'2006-02-14 23:15:25'),(348,'Mwene-Ditu',25,'2006-02-14 23:15:25'),(349,'Myingyan',64,'2006-02-14 23:15:25'),(350,'Mysore',44,'2006-02-14 23:15:25'),(351,'Naçala-Porto',63,'2006-02-14 23:15:25'),(352,'Nabereznyje Tšelny',80,'2006-02-14 23:15:25'),(353,'Nador',62,'2006-02-14 23:15:25'),(354,'Nagaon',44,'2006-02-14 23:15:25'),(355,'Nagareyama',50,'2006-02-14 23:15:25'),(356,'Najafabad',46,'2006-02-14 23:15:25'),(357,'Naju',86,'2006-02-14 23:15:25'),(358,'Nakhon Sawan',94,'2006-02-14 23:15:25'),(359,'Nam Dinh',105,'2006-02-14 23:15:25'),(360,'Namibe',4,'2006-02-14 23:15:25'),(361,'Nantou',92,'2006-02-14 23:15:25'),(362,'Nanyang',23,'2006-02-14 23:15:25'),(363,'NDjamna',21,'2006-02-14 23:15:25'),(364,'Newcastle',85,'2006-02-14 23:15:25'),(365,'Nezahualcóyotl',60,'2006-02-14 23:15:25'),(366,'Nha Trang',105,'2006-02-14 23:15:25'),(367,'Niznekamsk',80,'2006-02-14 23:15:25'),(368,'Novi Sad',108,'2006-02-14 23:15:25'),(369,'Novotšerkassk',80,'2006-02-14 23:15:25'),(370,'Nuku´alofa',95,'2006-02-14 23:15:25'),(371,'Nuuk',40,'2006-02-14 23:15:25'),(372,'Nyeri',52,'2006-02-14 23:15:25'),(373,'Ocumare del Tuy',104,'2006-02-14 23:15:25'),(374,'Ogbomosho',69,'2006-02-14 23:15:25'),(375,'Okara',72,'2006-02-14 23:15:25'),(376,'Okayama',50,'2006-02-14 23:15:25'),(377,'Okinawa',50,'2006-02-14 23:15:25'),(378,'Olomouc',26,'2006-02-14 23:15:25'),(379,'Omdurman',89,'2006-02-14 23:15:25'),(380,'Omiya',50,'2006-02-14 23:15:25'),(381,'Ondo',69,'2006-02-14 23:15:25'),(382,'Onomichi',50,'2006-02-14 23:15:25'),(383,'Oshawa',20,'2006-02-14 23:15:25'),(384,'Osmaniye',97,'2006-02-14 23:15:25'),(385,'Šostka',100,'2006-02-14 23:15:25'),(386,'Otsu',50,'2006-02-14 23:15:25'),(387,'Oulu',33,'2006-02-14 23:15:25'),(388,'Ourense (Orense)',87,'2006-02-14 23:15:25'),(389,'Owo',69,'2006-02-14 23:15:25'),(390,'Oyo',69,'2006-02-14 23:15:25'),(391,'Ozamis',75,'2006-02-14 23:15:25'),(392,'Paarl',85,'2006-02-14 23:15:25'),(393,'Pachuca de Soto',60,'2006-02-14 23:15:25'),(394,'Pak Kret',94,'2006-02-14 23:15:25'),(395,'Palghat (Palakkad)',44,'2006-02-14 23:15:25'),(396,'Pangkal Pinang',45,'2006-02-14 23:15:25'),(397,'Papeete',36,'2006-02-14 23:15:25'),(398,'Parbhani',44,'2006-02-14 23:15:25'),(399,'Pathankot',44,'2006-02-14 23:15:25'),(400,'Patiala',44,'2006-02-14 23:15:25'),(401,'Patras',39,'2006-02-14 23:15:25'),(402,'Pavlodar',51,'2006-02-14 23:15:25'),(403,'Pemalang',45,'2006-02-14 23:15:25'),(404,'Peoria',103,'2006-02-14 23:15:25'),(405,'Pereira',24,'2006-02-14 23:15:25'),(406,'Phnom Penh',18,'2006-02-14 23:15:25'),(407,'Pingxiang',23,'2006-02-14 23:15:25'),(408,'Pjatigorsk',80,'2006-02-14 23:15:25'),(409,'Plock',76,'2006-02-14 23:15:25'),(410,'Poá',15,'2006-02-14 23:15:25'),(411,'Ponce',77,'2006-02-14 23:15:25'),(412,'Pontianak',45,'2006-02-14 23:15:25'),(413,'Poços de Caldas',15,'2006-02-14 23:15:25'),(414,'Portoviejo',28,'2006-02-14 23:15:25'),(415,'Probolinggo',45,'2006-02-14 23:15:25'),(416,'Pudukkottai',44,'2006-02-14 23:15:25'),(417,'Pune',44,'2006-02-14 23:15:25'),(418,'Purnea (Purnia)',44,'2006-02-14 23:15:25'),(419,'Purwakarta',45,'2006-02-14 23:15:25'),(420,'Pyongyang',70,'2006-02-14 23:15:25'),(421,'Qalyub',29,'2006-02-14 23:15:25'),(422,'Qinhuangdao',23,'2006-02-14 23:15:25'),(423,'Qomsheh',46,'2006-02-14 23:15:25'),(424,'Quilmes',6,'2006-02-14 23:15:25'),(425,'Rae Bareli',44,'2006-02-14 23:15:25'),(426,'Rajkot',44,'2006-02-14 23:15:25'),(427,'Rampur',44,'2006-02-14 23:15:25'),(428,'Rancagua',22,'2006-02-14 23:15:25'),(429,'Ranchi',44,'2006-02-14 23:15:25'),(430,'Richmond Hill',20,'2006-02-14 23:15:25'),(431,'Rio Claro',15,'2006-02-14 23:15:25'),(432,'Rizhao',23,'2006-02-14 23:15:25'),(433,'Roanoke',103,'2006-02-14 23:15:25'),(434,'Ríobamba',28,'2006-02-14 23:15:25'),(435,'Rockford',103,'2006-02-14 23:15:25'),(436,'Ruse',17,'2006-02-14 23:15:25'),(437,'Rustenburg',85,'2006-02-14 23:15:25'),(438,'´s-Hertogenbosch',67,'2006-02-14 23:15:25'),(439,'Saarbrücken',38,'2006-02-14 23:15:25'),(440,'Sagamihara',50,'2006-02-14 23:15:25'),(441,'Saint Louis',103,'2006-02-14 23:15:25'),(442,'Saint-Denis',79,'2006-02-14 23:15:25'),(443,'Salé',62,'2006-02-14 23:15:25'),(444,'Salala',71,'2006-02-14 23:15:25'),(445,'Salamanca',60,'2006-02-14 23:15:25'),(446,'Salinas',103,'2006-02-14 23:15:25'),(447,'Salzburg',9,'2006-02-14 23:15:25'),(448,'Sambhal',44,'2006-02-14 23:15:25'),(449,'San Bernardino',103,'2006-02-14 23:15:25'),(450,'San Felipe de Puerto Plata',27,'2006-02-14 23:15:25'),(451,'San Felipe del Progreso',60,'2006-02-14 23:15:25'),(452,'San Juan Bautista Tuxtepec',60,'2006-02-14 23:15:25'),(453,'San Lorenzo',73,'2006-02-14 23:15:25'),(454,'San Miguel de Tucumán',6,'2006-02-14 23:15:25'),(455,'Sanaa',107,'2006-02-14 23:15:25'),(456,'Santa Brbara dOeste',15,'2006-02-14 23:15:25'),(457,'Santa Fé',6,'2006-02-14 23:15:25'),(458,'Santa Rosa',75,'2006-02-14 23:15:25'),(459,'Santiago de Compostela',87,'2006-02-14 23:15:25'),(460,'Santiago de los Caballeros',27,'2006-02-14 23:15:25'),(461,'Santo André',15,'2006-02-14 23:15:25'),(462,'Sanya',23,'2006-02-14 23:15:25'),(463,'Sasebo',50,'2006-02-14 23:15:25'),(464,'Satna',44,'2006-02-14 23:15:25'),(465,'Sawhaj',29,'2006-02-14 23:15:25'),(466,'Serpuhov',80,'2006-02-14 23:15:25'),(467,'Shahr-e Kord',46,'2006-02-14 23:15:25'),(468,'Shanwei',23,'2006-02-14 23:15:25'),(469,'Shaoguan',23,'2006-02-14 23:15:25'),(470,'Sharja',101,'2006-02-14 23:15:25'),(471,'Shenzhen',23,'2006-02-14 23:15:25'),(472,'Shikarpur',72,'2006-02-14 23:15:25'),(473,'Shimoga',44,'2006-02-14 23:15:25'),(474,'Shimonoseki',50,'2006-02-14 23:15:25'),(475,'Shivapuri',44,'2006-02-14 23:15:25'),(476,'Shubra al-Khayma',29,'2006-02-14 23:15:25'),(477,'Siegen',38,'2006-02-14 23:15:25'),(478,'Siliguri (Shiliguri)',44,'2006-02-14 23:15:25'),(479,'Simferopol',100,'2006-02-14 23:15:25'),(480,'Sincelejo',24,'2006-02-14 23:15:25'),(481,'Sirjan',46,'2006-02-14 23:15:25'),(482,'Sivas',97,'2006-02-14 23:15:25'),(483,'Skikda',2,'2006-02-14 23:15:25'),(484,'Smolensk',80,'2006-02-14 23:15:25'),(485,'São Bernardo do Campo',15,'2006-02-14 23:15:25'),(486,'São Leopoldo',15,'2006-02-14 23:15:25'),(487,'Sogamoso',24,'2006-02-14 23:15:25'),(488,'Sokoto',69,'2006-02-14 23:15:25'),(489,'Songkhla',94,'2006-02-14 23:15:25'),(490,'Sorocaba',15,'2006-02-14 23:15:25'),(491,'Soshanguve',85,'2006-02-14 23:15:25'),(492,'Sousse',96,'2006-02-14 23:15:25'),(493,'South Hill',5,'2006-02-14 23:15:25'),(494,'Southampton',102,'2006-02-14 23:15:25'),(495,'Southend-on-Sea',102,'2006-02-14 23:15:25'),(496,'Southport',102,'2006-02-14 23:15:25'),(497,'Springs',85,'2006-02-14 23:15:25'),(498,'Stara Zagora',17,'2006-02-14 23:15:25'),(499,'Sterling Heights',103,'2006-02-14 23:15:25'),(500,'Stockport',102,'2006-02-14 23:15:25'),(501,'Sucre',14,'2006-02-14 23:15:25'),(502,'Suihua',23,'2006-02-14 23:15:25'),(503,'Sullana',74,'2006-02-14 23:15:25'),(504,'Sultanbeyli',97,'2006-02-14 23:15:25'),(505,'Sumqayit',10,'2006-02-14 23:15:25'),(506,'Sumy',100,'2006-02-14 23:15:25'),(507,'Sungai Petani',59,'2006-02-14 23:15:25'),(508,'Sunnyvale',103,'2006-02-14 23:15:25'),(509,'Surakarta',45,'2006-02-14 23:15:25'),(510,'Syktyvkar',80,'2006-02-14 23:15:25'),(511,'Syrakusa',49,'2006-02-14 23:15:25'),(512,'Székesfehérvár',43,'2006-02-14 23:15:25'),(513,'Tabora',93,'2006-02-14 23:15:25'),(514,'Tabriz',46,'2006-02-14 23:15:25'),(515,'Tabuk',82,'2006-02-14 23:15:25'),(516,'Tafuna',3,'2006-02-14 23:15:25'),(517,'Taguig',75,'2006-02-14 23:15:25'),(518,'Taizz',107,'2006-02-14 23:15:25'),(519,'Talavera',75,'2006-02-14 23:15:25'),(520,'Tallahassee',103,'2006-02-14 23:15:25'),(521,'Tama',50,'2006-02-14 23:15:25'),(522,'Tambaram',44,'2006-02-14 23:15:25'),(523,'Tanauan',75,'2006-02-14 23:15:25'),(524,'Tandil',6,'2006-02-14 23:15:25'),(525,'Tangail',12,'2006-02-14 23:15:25'),(526,'Tanshui',92,'2006-02-14 23:15:25'),(527,'Tanza',75,'2006-02-14 23:15:25'),(528,'Tarlac',75,'2006-02-14 23:15:25'),(529,'Tarsus',97,'2006-02-14 23:15:25'),(530,'Tartu',30,'2006-02-14 23:15:25'),(531,'Tšeboksary',80,'2006-02-14 23:15:25'),(532,'Tegal',45,'2006-02-14 23:15:25'),(533,'Tel Aviv-Jaffa',48,'2006-02-14 23:15:25'),(534,'Tete',63,'2006-02-14 23:15:25'),(535,'Tianjin',23,'2006-02-14 23:15:25'),(536,'Tiefa',23,'2006-02-14 23:15:25'),(537,'Tieli',23,'2006-02-14 23:15:25'),(538,'Tokat',97,'2006-02-14 23:15:25'),(539,'Tonghae',86,'2006-02-14 23:15:25'),(540,'Tongliao',23,'2006-02-14 23:15:25'),(541,'Torreón',60,'2006-02-14 23:15:25'),(542,'Touliu',92,'2006-02-14 23:15:25'),(543,'Toulon',34,'2006-02-14 23:15:25'),(544,'Toulouse',34,'2006-02-14 23:15:25'),(545,'Tórshavn',32,'2006-02-14 23:15:25'),(546,'Tsaotun',92,'2006-02-14 23:15:25'),(547,'Tsuyama',50,'2006-02-14 23:15:25'),(548,'Tuguegarao',75,'2006-02-14 23:15:25'),(549,'Tychy',76,'2006-02-14 23:15:25'),(550,'Udaipur',44,'2006-02-14 23:15:25'),(551,'Udine',49,'2006-02-14 23:15:25'),(552,'Ueda',50,'2006-02-14 23:15:25'),(553,'Uijongbu',86,'2006-02-14 23:15:25'),(554,'Uluberia',44,'2006-02-14 23:15:25'),(555,'Urawa',50,'2006-02-14 23:15:25'),(556,'Uruapan',60,'2006-02-14 23:15:25'),(557,'Usak',97,'2006-02-14 23:15:25'),(558,'Usolje-Sibirskoje',80,'2006-02-14 23:15:25'),(559,'Uttarpara-Kotrung',44,'2006-02-14 23:15:25'),(560,'Vaduz',55,'2006-02-14 23:15:25'),(561,'Valencia',104,'2006-02-14 23:15:25'),(562,'Valle de la Pascua',104,'2006-02-14 23:15:25'),(563,'Valle de Santiago',60,'2006-02-14 23:15:25'),(564,'Valparai',44,'2006-02-14 23:15:25'),(565,'Vancouver',20,'2006-02-14 23:15:25'),(566,'Varanasi (Benares)',44,'2006-02-14 23:15:25'),(567,'Vicente López',6,'2006-02-14 23:15:25'),(568,'Vijayawada',44,'2006-02-14 23:15:25'),(569,'Vila Velha',15,'2006-02-14 23:15:25'),(570,'Vilnius',56,'2006-02-14 23:15:25'),(571,'Vinh',105,'2006-02-14 23:15:25'),(572,'Vitória de Santo Antão',15,'2006-02-14 23:15:25'),(573,'Warren',103,'2006-02-14 23:15:25'),(574,'Weifang',23,'2006-02-14 23:15:25'),(575,'Witten',38,'2006-02-14 23:15:25'),(576,'Woodridge',8,'2006-02-14 23:15:25'),(577,'Wroclaw',76,'2006-02-14 23:15:25'),(578,'Xi´angfan',23,'2006-02-14 23:15:25'),(579,'Xi´angtan',23,'2006-02-14 23:15:25'),(580,'Xintai',23,'2006-02-14 23:15:25'),(581,'Xinxiang',23,'2006-02-14 23:15:25'),(582,'Yamuna Nagar',44,'2006-02-14 23:15:25'),(583,'Yangor',65,'2006-02-14 23:15:25'),(584,'Yantai',23,'2006-02-14 23:15:25'),(585,'Yaoundé',19,'2006-02-14 23:15:25'),(586,'Yerevan',7,'2006-02-14 23:15:25'),(587,'Yinchuan',23,'2006-02-14 23:15:25'),(588,'Yingkou',23,'2006-02-14 23:15:25'),(589,'York',102,'2006-02-14 23:15:25'),(590,'Yuncheng',23,'2006-02-14 23:15:25'),(591,'Yuzhou',23,'2006-02-14 23:15:25'),(592,'Zalantun',23,'2006-02-14 23:15:25'),(593,'Zanzibar',93,'2006-02-14 23:15:25'),(594,'Zaoyang',23,'2006-02-14 23:15:25'),(595,'Zapopan',60,'2006-02-14 23:15:25'),(596,'Zaria',69,'2006-02-14 23:15:25'),(597,'Zeleznogorsk',80,'2006-02-14 23:15:25'),(598,'Zhezqazghan',51,'2006-02-14 23:15:25'),(599,'Zhoushan',23,'2006-02-14 23:15:25'),(600,'Ziguinchor',83,'2006-02-14 23:15:25');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-28 12:30:13
