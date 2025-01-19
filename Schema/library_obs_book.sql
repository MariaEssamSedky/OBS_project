-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: library_obs
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `borrowed` bit(1) NOT NULL,
  `borrowed_date` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `author_id` bigint DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKklnrv3weler2ftkweewlky958` (`author_id`),
  CONSTRAINT `FKklnrv3weler2ftkweewlky958` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (17,_binary '\0',NULL,'A great book for learning','Book 5',13,NULL),(18,_binary '','2024-07-31','An amazing thriller','Book 6',14,NULL),(19,_binary '\0',NULL,'A must-read classic','Book 7',15,NULL),(20,_binary '','2024-12-17','A guide to modern programming','Book 8',16,NULL),(21,_binary '\0',NULL,'The journey of a hero','Book 9',17,NULL),(22,_binary '','2025-01-16','A collection of poems','Book 10',18,NULL),(23,_binary '\0',NULL,'Understanding AI','Book 11',19,NULL),(24,_binary '','2025-01-01','Exploring space and beyond','Book 12',20,NULL),(25,_binary '\0',NULL,'A historical account','Book 13',21,NULL),(26,_binary '\0',NULL,'A science fiction masterpiece','Book 14',22,NULL),(27,_binary '','2025-01-18','A detailed cookbook','Book 15',23,NULL),(28,_binary '\0',NULL,'A book of puzzles','Book 16',24,NULL),(29,_binary '\0',NULL,'A biography of a legend','Book 17',25,NULL),(30,_binary '','2025-05-01','The mysteries of the deep','Book 18',26,NULL),(31,_binary '\0',NULL,'The art of communication','Book 19',27,NULL),(32,_binary '','2025-06-10','A guide to personal finance','Book 20',28,NULL),(33,_binary '\0',NULL,'The science of happiness','Book 21',29,NULL),(34,_binary '','2025-07-15','A study of ancient civilizations','Book 22',30,NULL),(35,_binary '\0',NULL,'An in-depth look at philosophy','Book 23',31,NULL),(36,_binary '\0',NULL,'A book of short stories','Book 24',32,NULL),(37,_binary '','2025-08-01','Understanding the universe','Book 25',33,NULL),(38,_binary '\0',NULL,'A comprehensive grammar guide','Book 26',34,NULL),(39,_binary '\0',NULL,'A manual for software development','Book 27',35,NULL),(40,_binary '','2025-09-10','A collection of travel stories','Book 28',36,NULL),(41,_binary '\0',NULL,'A journal of discoveries','Book 29',37,NULL),(42,_binary '','2025-10-15','Understanding cultural differences','Book 30',38,NULL),(43,_binary '\0',NULL,'A guide to entrepreneurship','Book 31',39,NULL),(44,_binary '','2025-11-01','A thrilling mystery novel','Book 32',40,NULL),(45,_binary '\0',NULL,'The future of technology','Book 33',41,NULL),(46,_binary '','2025-12-10','A handbook for engineers','Book 34',42,NULL),(47,_binary '\0',NULL,'A guide to better health','Book 35',43,NULL),(48,_binary '','2026-01-15','The wonders of nature','Book 36',44,NULL),(49,_binary '\0',NULL,'A novel of epic proportions','Book 37',45,NULL),(50,_binary '\0',NULL,'A beginner\'s guide to painting','Book 38',46,NULL),(51,_binary '','2026-02-01','A captivating fantasy novel','Book 39',47,NULL),(52,_binary '\0',NULL,'A practical guide to coding','Book 40',48,NULL),(53,_binary '\0',NULL,'The secrets of the brain','Book 41',49,NULL),(54,_binary '','2026-03-10','A captivating historical novel','Book 42',50,NULL),(55,_binary '\0',NULL,'A book about ocean exploration','Book 43',51,NULL),(56,_binary '','2026-04-15','A guide to sustainable living','Book 44',52,NULL),(57,_binary '\0',NULL,'Understanding human behavior','Book 45',53,NULL),(58,_binary '\0',NULL,'A story of resilience and hope','Book 46',54,NULL),(59,_binary '','2026-05-01','The art of negotiation','Book 47',55,NULL),(60,_binary '\0',NULL,'An introduction to astronomy','Book 48',56,NULL),(61,_binary '','2026-06-10','The evolution of language','Book 49',57,NULL),(62,_binary '\0',NULL,'A thrilling adventure novel','Book 50',58,NULL);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-19 17:15:28
