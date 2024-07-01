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
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `stud_id` int NOT NULL,
  `stud_username` varchar(30) NOT NULL,
  `stud_password` int NOT NULL,
  `dept_id` int DEFAULT NULL,
  `stud_faculty` varchar(30) DEFAULT NULL,
  `stud_degree` varchar(30) DEFAULT NULL,
  `stud_level` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`stud_id`),
  UNIQUE KEY `stud_username_UNIQUE` (`stud_username`),
  KEY `stud_dept_id_idx` (`dept_id`),
  CONSTRAINT `stud_dept_id` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'khaledhamouda',11223,1,'cs',NULL,NULL),(2,'ahmedmohamed',12345,2,'cs',NULL,NULL),(3,'zeyadzaza',123345,3,'eng',NULL,NULL),(4,'abyusif',12345,4,'business',NULL,NULL),(5,'santa',12345,5,'medical',NULL,NULL),(6,'aboelanwar',12345,6,'eng',NULL,NULL),(7,'seif',12345,7,'eng',NULL,NULL),(8,'mohamedismail',11223,1,'cs',NULL,NULL),(9,'malik hassan',12345,2,'cs',NULL,NULL),(10,'hassan osama',123345,3,'eng',NULL,NULL),(11,'afsha',12345,4,'business',NULL,NULL),(12,'noor',12345,5,'medical',NULL,NULL),(13,'hossam',12345,6,'eng',NULL,NULL),(14,'mohamed',12345,7,'eng',NULL,NULL),(15,'minamalik',11223,1,'cs',NULL,NULL),(16,'ahmedkhalid',12345,2,'cs',NULL,NULL),(17,'mohamedrizk',123345,3,'eng',NULL,NULL),(18,'ahmedashraf',12345,4,'business',NULL,NULL),(19,'ahmedraslan',12345,5,'medical',NULL,NULL),(20,'youssefadel',12345,6,'eng',NULL,NULL),(21,'emadkamel',12345,7,'eng',NULL,NULL);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
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
