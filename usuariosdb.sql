-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: usuarios
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `migrations` (
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2019_10_24_065258_create_users_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'jesus tuesta',778899555,'prueba@gmail.com','2019-10-24 07:13:13.441307','2019-10-24 07:13:13.441307'),(2,'jesus',34252354,'yedujucigo@provmail.net','2019-10-24 14:58:23.246473','2019-10-24 14:58:23.246473'),(3,'prueba3',45435434,'ajldasd@gmail.com','2019-10-24 15:00:30.812769','2019-10-24 15:00:30.812769'),(4,'prueba3',2343434,'djajsda@gmail.com','2019-10-24 15:01:04.581701','2019-10-24 15:01:04.581701'),(5,'prueba2',942227124,'jesus_tr28@hotmail.com','2019-10-24 15:03:06.166655','2019-10-24 15:03:06.166655'),(6,'prueba50',345678,'prueba50@hotmail.pe','2019-10-25 05:56:12.323608','2019-10-25 05:56:12.323608'),(7,'prueba50',345678,'prueba50@hotmail.pe','2019-10-25 05:56:30.029620','2019-10-25 05:56:30.029620'),(8,'prueba50',256325,'iorec12@hotmail.com','2019-10-25 05:57:07.418759','2019-10-25 05:57:07.418759'),(9,'prueba50',256325,'iorec12@hotmail.com','2019-10-25 05:57:50.106201','2019-10-25 05:57:50.106201'),(10,'JESUS RONCAL',2563124,'RONCAL@HOTMAIL.COM','2019-10-25 05:58:18.542827','2019-10-25 05:58:18.542827'),(11,'jesus',34252354,'jesus.tr61@gmail.com','2019-10-25 06:11:14.777225','2019-10-25 06:11:14.777225'),(12,'jesus40',345645,'test@gmail.com','2019-10-25 06:17:50.599865','2019-10-25 06:17:50.599865'),(13,'jesus40',345645,'','2019-10-25 06:18:06.293763','2019-10-25 06:18:06.293763'),(14,'fdsafasd',34252354,'yedujucigo@provmail.net','2019-10-25 06:30:02.281715','2019-10-25 06:30:02.281715'),(15,'fdsafasd',34252354,'yedujucigo@provmail.net','2019-10-25 06:30:02.513728','2019-10-25 06:30:02.513728'),(16,'fdsafasd',34252354,'yedujucigo@provmail.net','2019-10-25 06:30:06.111934','2019-10-25 06:30:06.111934'),(17,'una',23456,'dkfjklsdfjlksdf@hotmial.com','2019-10-25 06:31:17.126996','2019-10-25 06:31:17.126996'),(18,'una',23456,'dkfjklsdfjlksdf@hotmial.com','2019-10-25 06:31:43.967531','2019-10-25 06:31:43.967531'),(19,'uno',34536,'jesus.tr61@gmail.com','2019-10-25 06:32:27.528022','2019-10-25 06:32:27.528022'),(20,'fdsafasd23',34252354,'jesus.tr61@gmail.com','2019-10-25 06:38:28.236654','2019-10-25 06:38:28.236654'),(21,'erwre',3425,'','2019-10-25 06:44:25.913112','2019-10-25 06:44:25.913112'),(22,'erwre',3425,'yedujucigo@provmail.net','2019-10-25 06:44:27.901225','2019-10-25 06:44:27.901225'),(23,'jesuspruba700',34560,'JESUS.TR61@GMAIL.COM','2019-10-25 06:46:26.132988','2019-10-25 06:46:26.132988'),(24,'jesus3',34252354,'test@gmail.com','2019-10-25 06:46:47.769225','2019-10-25 06:46:47.769225'),(25,'hola',123,'prueba@hotmail.com','2019-10-25 06:50:43.792725','2019-10-25 12:17:53.894962'),(26,'hola',123,'prueba@hotmail.com','2019-10-25 06:51:38.859875','2019-10-25 12:18:09.667864'),(27,'',34252354,'','2019-10-25 06:52:31.941911','2019-10-25 06:52:31.941911'),(28,'',942227125,'yedujucigo@provmail.net','2019-10-25 06:53:31.737331','2019-10-25 06:53:31.737331'),(29,'',942227125,'','2019-10-25 06:54:07.082353','2019-10-25 06:54:07.082353'),(30,'',942227125,'','2019-10-25 07:02:43.724903','2019-10-25 07:02:43.724903'),(31,'',942227124,'','2019-10-25 07:03:09.697388','2019-10-25 07:03:09.697388'),(32,'jesus',942227124,'adasdad@asdñkjasd','2019-10-25 07:10:56.462086','2019-10-25 07:10:56.462086'),(33,'weqweqwe',942227125,'qweqweqwe@weqweqwe','2019-10-25 07:12:42.202134','2019-10-25 07:12:42.202134'),(34,'prueba2',345,'jesus.tr61@gmail.com','2019-10-25 07:18:35.700353','2019-10-25 07:18:35.700353'),(35,'prueba2',345,'jesus.tr61@gmail.com','2019-10-25 07:18:45.564917','2019-10-25 07:18:45.564917'),(36,'prueba2',345,'jesus.tr61@gmail.com','2019-10-25 07:18:46.149950','2019-10-25 07:18:46.149950'),(37,'prueba2',345,'jesus.tr61@gmail.com','2019-10-25 07:18:58.609663','2019-10-25 07:18:58.609663'),(38,'prueba37',34566,'kjkrfjkjfa@hotmail.com','2019-10-25 07:27:52.005172','2019-10-25 07:27:52.005172'),(39,'jesus',34252354,'jesus.tr61@gmail.com','2019-10-25 07:28:31.859451','2019-10-25 07:28:31.859451'),(40,'prueba40',545464,'jesus.tr61@gmail.com','2019-10-25 07:43:25.087541','2019-10-25 07:43:25.087541');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-25  3:39:42
