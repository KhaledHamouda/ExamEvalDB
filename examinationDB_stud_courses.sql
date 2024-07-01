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
-- Table structure for table `stud_courses`
--

DROP TABLE IF EXISTS `stud_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stud_courses` (
  `course_id` int NOT NULL,
  `stud_id` int NOT NULL,
  `course_eval` int DEFAULT NULL,
  `exam_score` int DEFAULT NULL,
  PRIMARY KEY (`course_id`,`stud_id`),
  KEY `courses_stud_fk_idx` (`course_id`),
  KEY `stud_course_fk_idx` (`stud_id`),
  CONSTRAINT `courses_stud_fk` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`),
  CONSTRAINT `stud_course_fk` FOREIGN KEY (`stud_id`) REFERENCES `students` (`stud_id`),
  CONSTRAINT `stud_courses_chk_1` CHECK (((`course_eval` >= 0) and (`course_eval` <= 10))),
  CONSTRAINT `stud_courses_chk_2` CHECK (((`exam_score` >= 0) and (`exam_score` <= 100)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stud_courses`
--

LOCK TABLES `stud_courses` WRITE;
/*!40000 ALTER TABLE `stud_courses` DISABLE KEYS */;
INSERT INTO `stud_courses` VALUES (1,1,9,90),(1,2,9,80),(1,3,5,80),(1,4,6,40),(1,5,7,70),(1,6,10,99),(2,1,9,90),(2,2,2,90),(2,3,5,88),(2,4,6,85),(2,5,7,40),(2,6,10,99),(3,1,8,50),(3,2,4,50),(3,3,8,75),(3,4,9,45),(3,5,7,75),(3,6,10,99),(4,1,9,60),(4,2,6,60),(4,3,6,45),(4,4,7,75),(4,5,6,40),(4,6,10,99),(5,1,8,70),(5,2,5,70),(5,3,8,75),(5,4,7,40),(5,5,7,79),(5,6,6,85),(5,7,5,88);
/*!40000 ALTER TABLE `stud_courses` ENABLE KEYS */;
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
