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
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `author` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `bio` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (3,'An aspiring novelist.','Alice Johnson'),(4,'A well-known historian.','Robert Brown'),(5,'A tech enthusiast.','Emily White'),(6,'An environmental advocate.','David Green'),(7,'A celebrated poet.','Sophia Martinez'),(8,'An AI researcher.','Liam Wilson'),(9,'A travel blogger.','Olivia Taylor'),(10,'A science fiction writer.','Ethan Harris'),(11,'A teacher and author.','Charlotte Thompson'),(12,'A motivational speaker.','Amelia Moore'),(13,'A chef and cookbook author.','James Anderson'),(14,'An astrophysicist.','Isabella Clark'),(15,'A software engineer.','Benjamin Lewis'),(16,'A wildlife photographer.','Mia Walker'),(17,'A fitness expert.','Noah Hall'),(18,'A graphic designer.','Ava Young'),(19,'A journalist.','Lucas King'),(20,'A filmmaker.','Harper Scott'),(21,'A social worker.','Mason Perez'),(22,'An entrepreneur.','Ella Carter'),(23,'A linguist.','Alexander Mitchell'),(24,'A marine biologist.','Evelyn Roberts'),(25,'A musician.','William Ramirez'),(26,'A financial advisor.','Grace Phillips'),(27,'A fashion designer.','Jack Edwards'),(28,'A psychologist.','Lily Hernandez'),(29,'A novelist.','Daniel Collins'),(30,'A cultural anthropologist.','Chloe Morris'),(31,'A robotics engineer.','Henry Bell'),(32,'A game developer.','Emma Kelly'),(33,'A playwright.','Samuel Cooper'),(34,'A humanitarian.','Sophia Bailey'),(35,'An artist.','Michael Rivera'),(36,'A mathematician.','Emily Watson'),(37,'A research scientist.','Christopher Bennett'),(38,'A journalist and editor.','Ava Wood'),(39,'A poet and author.','Isabella Hughes'),(40,'An inventor.','Ethan Coleman'),(41,'A historian and lecturer.','Olivia Morgan'),(42,'A political analyst.','Liam Ross'),(43,'A book critic.','Charlotte Adams'),(44,'A culinary expert.','Amelia Sanders'),(45,'A travel photographer.','Noah Peterson'),(46,'A data scientist.','Mia Ramirez'),(47,'An educator.','Lucas Powell'),(48,'A public speaker.','Avery Foster'),(49,'A theater director.','Sophia Reed'),(50,'An environmental scientist.','Benjamin Ward');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
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
