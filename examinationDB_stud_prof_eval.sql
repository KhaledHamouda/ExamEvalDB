-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: examinationDB
-- ------------------------------------------------------
-- Server version	8.0.37-0ubuntu0.24.04.1

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
-- Table structure for table `stud_prof_eval`
--

DROP TABLE IF EXISTS `stud_prof_eval`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stud_prof_eval` (
  `stud_id` int NOT NULL,
  `prof_id` int NOT NULL,
  `prof_eval` int NOT NULL,
  PRIMARY KEY (`stud_id`,`prof_id`),
  KEY `fk_stud_prof_eval_1_idx` (`prof_id`),
  CONSTRAINT `fk_stud_prof_eval_1` FOREIGN KEY (`prof_id`) REFERENCES `professors` (`prof_id`),
  CONSTRAINT `fk_stud_prof_eval_2` FOREIGN KEY (`stud_id`) REFERENCES `students` (`stud_id`),
  CONSTRAINT `stud_prof_eval_chk_1` CHECK (((`prof_eval` <= 10) and (`prof_eval` >= 1)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stud_prof_eval`
--

LOCK TABLES `stud_prof_eval` WRITE;
/*!40000 ALTER TABLE `stud_prof_eval` DISABLE KEYS */;
INSERT INTO `stud_prof_eval` VALUES (1,2,7),(1,3,9),(1,4,6),(2,3,9),(3,3,9),(4,3,9),(5,3,9),(6,3,9),(7,3,9),(8,3,9),(9,3,9),(10,1,10),(10,3,9),(10,5,6),(10,11,6),(11,1,9),(11,6,6),(11,8,9),(12,2,5),(12,7,6),(12,9,5),(13,1,9),(13,3,2),(13,10,2),(14,2,2),(14,4,5),(14,11,5),(15,3,5),(15,5,4),(15,8,4),(16,4,7),(16,6,8),(16,9,8),(17,5,1),(17,7,4),(17,10,4),(18,1,9),(18,6,9),(18,11,9),(19,2,6),(19,8,6),(20,3,6),(20,9,5),(21,4,6),(21,10,7);
/*!40000 ALTER TABLE `stud_prof_eval` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-15 20:56:56
