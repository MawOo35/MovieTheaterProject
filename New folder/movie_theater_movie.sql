-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: movie_theater
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `id` int NOT NULL,
  `adult` tinyint(1) NOT NULL DEFAULT '0',
  `budget` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `home_page` varchar(200) DEFAULT NULL,
  `overview` varchar(1000) DEFAULT NULL,
  `poster_path` varchar(200) DEFAULT NULL,
  `title` varchar(50) NOT NULL,
  `trailer_path` varchar(200) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_o6ifx5x4vtwfrpu1a42l8u81w` (`title`),
  KEY `FK5e3qbgdbp67ml7el1odwu65gi` (`category_id`),
  CONSTRAINT `FK5e3qbgdbp67ml7el1odwu65gi` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (5,1,1000,'2023-05-27 23:26:03',NULL,'testing overview 1','/media/jpg/1685206562_img.JPG','Test','/media/mp4/1685206562_20230520_143712.mp4','2023-05-27 23:58:14',1),(8,0,1000,'2023-05-28 10:25:35',NULL,'Hello Overview','/media/jpg/1685247417_img1.JPG','Hello','/media/mp4/1685246134_20230520_143712.mp4','2023-05-28 10:46:58',7);
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-31 21:06:23
