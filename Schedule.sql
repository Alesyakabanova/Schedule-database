CREATE DATABASE  IF NOT EXISTS `schedule` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `schedule`;
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: schedule
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Temporary view structure for view `class_schedule_with_groups`
--

DROP TABLE IF EXISTS `class_schedule_with_groups`;
/*!50001 DROP VIEW IF EXISTS `class_schedule_with_groups`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `class_schedule_with_groups` AS SELECT 
 1 AS `id_of_pair`,
 1 AS `start_time`,
 1 AS `end_time`,
 1 AS `subject_name`,
 1 AS `teacher_name`,
 1 AS `classroom`,
 1 AS `classroom_type`,
 1 AS `number_of_group`,
 1 AS `number_of_course`,
 1 AS `number_of_students`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `classrooms`
--

DROP TABLE IF EXISTS `classrooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classrooms` (
  `id_of_classroom` int NOT NULL AUTO_INCREMENT,
  `building` int NOT NULL,
  `class_number` int NOT NULL,
  `number_of_seats` int NOT NULL,
  `classroom_type` enum('lecture','computer','usual') NOT NULL,
  PRIMARY KEY (`id_of_classroom`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classrooms`
--

LOCK TABLES `classrooms` WRITE;
/*!40000 ALTER TABLE `classrooms` DISABLE KEYS */;
INSERT INTO `classrooms` VALUES (1,1,100,25,'computer'),(2,1,101,25,'computer'),(3,1,102,30,'usual'),(4,1,103,30,'usual'),(5,1,104,30,'usual'),(6,1,105,120,'lecture'),(7,1,200,30,'usual'),(8,1,201,25,'computer'),(9,1,202,25,'computer'),(10,1,203,30,'usual'),(11,1,204,30,'usual'),(12,1,205,30,'usual'),(13,1,300,25,'usual'),(14,1,301,25,'usual'),(15,1,302,12,'usual'),(16,1,303,12,'usual'),(17,1,304,25,'usual'),(18,1,305,120,'lecture'),(19,1,100,25,'computer'),(20,1,101,25,'computer'),(21,1,102,30,'usual'),(22,1,103,30,'usual'),(23,1,104,30,'usual'),(24,1,105,120,'lecture'),(25,1,200,30,'usual'),(26,1,201,25,'computer'),(27,1,202,25,'computer'),(28,1,203,30,'usual'),(29,1,204,30,'usual'),(30,1,205,30,'usual'),(31,1,300,25,'usual'),(32,1,301,25,'usual'),(33,1,302,12,'usual'),(34,1,303,12,'usual'),(35,1,304,25,'usual'),(36,1,305,120,'lecture');
/*!40000 ALTER TABLE `classrooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `current_week_schedule`
--

DROP TABLE IF EXISTS `current_week_schedule`;
/*!50001 DROP VIEW IF EXISTS `current_week_schedule`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `current_week_schedule` AS SELECT 
 1 AS `id_of_pair`,
 1 AS `start_time`,
 1 AS `end_time`,
 1 AS `subject_name`,
 1 AS `teacher_name`,
 1 AS `classroom`,
 1 AS `classroom_type`,
 1 AS `number_of_group`,
 1 AS `number_of_course`,
 1 AS `number_of_students`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `groups_in_uni`
--

DROP TABLE IF EXISTS `groups_in_uni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups_in_uni` (
  `id_of_group` int NOT NULL AUTO_INCREMENT,
  `number_of_group` int DEFAULT NULL,
  `number_of_course` int DEFAULT NULL,
  `number_of_students` int DEFAULT NULL,
  `stream_id` int DEFAULT NULL,
  PRIMARY KEY (`id_of_group`),
  KEY `fk_stream` (`stream_id`),
  CONSTRAINT `fk_stream` FOREIGN KEY (`stream_id`) REFERENCES `streams` (`id_of_stream`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_in_uni`
--

LOCK TABLES `groups_in_uni` WRITE;
/*!40000 ALTER TABLE `groups_in_uni` DISABLE KEYS */;
INSERT INTO `groups_in_uni` VALUES (17,1,1,24,1),(18,2,1,26,1),(19,3,1,25,2),(20,4,1,25,2),(21,1,2,24,1),(22,2,2,26,1),(23,3,2,25,2),(24,4,2,25,2),(25,1,3,24,1),(26,2,3,26,1),(27,3,3,25,2),(28,4,3,25,2),(29,1,4,24,1),(30,2,4,26,1),(31,3,4,25,2),(32,4,4,25,2),(33,1,1,24,1),(34,2,1,26,1),(35,3,1,25,2),(36,4,1,25,2),(37,1,2,24,1),(38,2,2,26,1),(39,3,2,25,2),(40,4,2,25,2),(41,1,3,24,1),(42,2,3,26,1),(43,3,3,25,2),(44,4,3,25,2),(45,1,4,24,1),(46,2,4,26,1),(47,3,4,25,2),(48,4,4,25,2);
/*!40000 ALTER TABLE `groups_in_uni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pairs`
--

DROP TABLE IF EXISTS `pairs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pairs` (
  `id_of_pair` int NOT NULL AUTO_INCREMENT,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `teacher_id` int NOT NULL,
  `classroom_id` int NOT NULL,
  `number_of_students` int NOT NULL,
  `id_of_group` int DEFAULT '17',
  PRIMARY KEY (`id_of_pair`),
  KEY `teacher_id` (`teacher_id`),
  KEY `classroom_id` (`classroom_id`),
  KEY `fk_pair_group` (`id_of_group`),
  CONSTRAINT `fk_pair_group` FOREIGN KEY (`id_of_group`) REFERENCES `groups_in_uni` (`id_of_group`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pairs_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id_of_teacher`),
  CONSTRAINT `pairs_ibfk_2` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id_of_classroom`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pairs`
--

LOCK TABLES `pairs` WRITE;
/*!40000 ALTER TABLE `pairs` DISABLE KEYS */;
INSERT INTO `pairs` VALUES (1,'2024-09-01 08:15:00','2024-09-01 09:35:00','Промышленное программирование',16,1,25,17),(2,'2024-09-01 09:45:00','2024-09-01 11:05:00','Модели данных и СУБД',3,2,24,17),(3,'2024-09-02 09:45:00','2024-09-02 11:05:00','Математический анализ',4,6,90,17),(4,'2024-09-02 11:15:00','2024-09-02 12:35:00','Основы высшей алгебры',7,6,100,17),(5,'2024-09-03 08:15:00','2024-09-03 09:35:00','Теория функций комплексного переменного',5,15,24,17),(6,'2024-09-03 09:45:00','2024-09-03 11:05:00','Аналитическая геометрия',8,14,26,17),(7,'2024-09-03 11:15:00','2024-09-03 12:35:00','Основы и методологии программирования',10,2,24,17),(8,'2024-09-04 08:15:00','2024-09-04 09:35:00','Философия',12,18,100,17),(9,'2024-09-04 09:45:00','2024-09-04 11:05:00','Дискретная математика и математическая логика',13,6,99,17),(10,'2024-09-05 08:15:00','2024-09-05 09:35:00','Архитектура компьтера',9,3,24,17),(11,'2024-09-05 09:45:00','2024-09-05 11:05:00','Математический анализ',4,3,26,17),(12,'2024-09-06 08:15:00','2024-09-06 09:35:00','История белорусской государственности',15,11,24,17),(13,'2024-09-06 11:05:00','2024-09-06 12:35:00','Основы высшей алгебры',7,12,26,17),(14,'2024-09-01 08:15:00','2024-09-01 09:35:00','Промышленное программирование',15,1,25,17);
/*!40000 ALTER TABLE `pairs` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `CheckTeacherSubject` BEFORE INSERT ON `pairs` FOR EACH ROW BEGIN
    DECLARE subject_count INT;
    DECLARE teacher_count INT;
    DECLARE is_teaching INT DEFAULT 0;
    DECLARE error_message VARCHAR(255);
    
    -- Проверяем существует ли учитель
    SELECT COUNT(*) INTO teacher_count
    FROM teachers
    WHERE id_of_teacher = NEW.teacher_id;
    
    IF teacher_count = 0 THEN
        SET error_message = 'Teacher not found. Insertion aborted.';
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = error_message;
    END IF;
    
    -- Проверяем существует ли предмет
    SELECT COUNT(*) INTO subject_count
    FROM subjects
    WHERE subject_name = NEW.subject_name;
    
    IF subject_count = 0 THEN
        SET error_message = 'Subject not found. Insertion aborted.';
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = error_message;
    END IF;
    
    -- Проверяем, преподает ли учитель этот предмет
    SELECT COUNT(*) INTO is_teaching
    FROM teachers
    WHERE id_of_teacher = NEW.teacher_id
    AND subject_name = NEW.subject_name;
    
    -- Если учитель не преподает этот предмет
    IF is_teaching = 0 THEN
        SET error_message = CONCAT('Teacher does not teach subject "', NEW.subject_name, '". Insertion aborted.');
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = error_message;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `streams`
--

DROP TABLE IF EXISTS `streams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `streams` (
  `id_of_stream` int NOT NULL AUTO_INCREMENT,
  `number_of_stream` int DEFAULT NULL,
  PRIMARY KEY (`id_of_stream`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `streams`
--

LOCK TABLES `streams` WRITE;
/*!40000 ALTER TABLE `streams` DISABLE KEYS */;
INSERT INTO `streams` VALUES (1,1),(2,2),(3,3),(4,4);
/*!40000 ALTER TABLE `streams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_classroom`
--

DROP TABLE IF EXISTS `subject_classroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject_classroom` (
  `subject_id` int NOT NULL,
  `classroom_id` int NOT NULL,
  PRIMARY KEY (`subject_id`,`classroom_id`),
  KEY `classroom_id` (`classroom_id`),
  CONSTRAINT `subject_classroom_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id_of_subject`),
  CONSTRAINT `subject_classroom_ibfk_2` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id_of_classroom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_classroom`
--

LOCK TABLES `subject_classroom` WRITE;
/*!40000 ALTER TABLE `subject_classroom` DISABLE KEYS */;
/*!40000 ALTER TABLE `subject_classroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `id_of_subject` int NOT NULL AUTO_INCREMENT,
  `subject_num` int DEFAULT NULL,
  `subject_name` varchar(100) NOT NULL,
  `classroom_type` enum('lecture','computer','usual') NOT NULL,
  PRIMARY KEY (`id_of_subject`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,1,'Модели данных и СУБД','lecture'),(2,1,'Модели данных и СУБД','computer'),(3,2,'Промышленное программирование','computer'),(4,2,'Промышленное программирование','lecture'),(5,3,'Математический анализ','lecture'),(6,3,'Математический анализ','usual'),(7,4,'Основы высшей алгебры','lecture'),(8,4,'Основы высшей алгебры','usual'),(9,5,'Аналитическая геометрия','lecture'),(10,5,'Аналитическая геометрия','usual'),(11,6,'Основы права','lecture'),(12,7,'Философия','lecture'),(13,8,'Дискретная математика и математическая логика','lecture'),(14,9,'Основы и методологии программирования','lecture'),(15,9,'Основы и методологии программирования','usual');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_subject`
--

DROP TABLE IF EXISTS `teacher_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher_subject` (
  `teacher_id` int NOT NULL,
  `subject_id` int NOT NULL,
  PRIMARY KEY (`teacher_id`,`subject_id`),
  KEY `subject_id` (`subject_id`),
  CONSTRAINT `teacher_subject_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id_of_teacher`) ON DELETE CASCADE,
  CONSTRAINT `teacher_subject_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id_of_subject`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_subject`
--

LOCK TABLES `teacher_subject` WRITE;
/*!40000 ALTER TABLE `teacher_subject` DISABLE KEYS */;
/*!40000 ALTER TABLE `teacher_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `teacher_workload_with_groups`
--

DROP TABLE IF EXISTS `teacher_workload_with_groups`;
/*!50001 DROP VIEW IF EXISTS `teacher_workload_with_groups`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `teacher_workload_with_groups` AS SELECT 
 1 AS `id_of_teacher`,
 1 AS `teacher_name`,
 1 AS `subject_name`,
 1 AS `pairs_count`,
 1 AS `pairs_per_week`,
 1 AS `workload_percentage`,
 1 AS `study_groups`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers` (
  `id_of_teacher` int NOT NULL AUTO_INCREMENT,
  `teacher_num` int DEFAULT NULL,
  `teacher_name` varchar(100) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `pairs_per_week` int DEFAULT NULL,
  PRIMARY KEY (`id_of_teacher`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (3,1,'Жуковский Валерий Сергеевич','Модели данных и СУБД',55),(4,2,'Кастрица Олег Адамович','Математический анализ',4),(5,2,'Кастрица Олег Адамович','Теория функций комплексного переменного',6),(6,3,'Васьковский Максим Михайлович','Математический анализ',18),(7,4,'Размыслович Георгий Прокофьевич','Основы высшей алгебры',8),(8,4,'Размыслович Георгий Прокофьевич','Аналитическая геометрия',8),(9,5,'Гусейнова Анастасия Сергеевна','Архитектура компьтера',6),(10,5,'Гусейнова Анастасия Сергеевна','Основы и методологии программирования',6),(11,6,'Казанцева Ольга Геннадьевна','Основы и методологии программирования',4),(12,7,'Радевич Екатерина Владимировна','Философия',2),(13,8,'Орлович Юрий Леонидович','Дискретная математика и математическая логика',2),(14,9,'Проневич Дмитрий Андреевич','Основы права',1),(15,10,'Лебедева Ирина Валентиновна','История белорусской государственности',4),(16,11,'Кондратьева Ольга Михайловна','Промышленное программирование',4),(17,12,'Иванов Иван Иванович','Основы права',10);
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'schedule'
--

--
-- Dumping routines for database 'schedule'
--
/*!50003 DROP PROCEDURE IF EXISTS `AddPairsToTeacher` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddPairsToTeacher`( -- процедура, которая принимает номер предмета и преподавателя и количество часов
	IN p_id_of_subject INT, -- и прибавляет к нагрузке преподавателя по данному предмету это количество часов
    IN p_teacher_num INT,
    IN p_additional_pairs INT
)
BEGIN
    UPDATE teachers
    SET pairs_per_week = pairs_per_week + p_additional_pairs
    WHERE subject_name = (
        SELECT subject_name FROM subjects WHERE id_of_subject = p_id_of_subject
    ) AND teacher_num = p_teacher_num;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AddTeacher` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddTeacher`(
    IN p_teacher_num INT,
    IN p_teacher_name VARCHAR(100),
    IN p_subject_name VARCHAR(100),
    IN p_pairs_per_week INT
)
BEGIN
    DECLARE subject_exists INT;
    SELECT COUNT(*)
    INTO subject_exists
    FROM subjects
    WHERE subject_name = p_subject_name;

    IF subject_exists = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: Subject does not exist.';
    ELSE

        INSERT INTO teachers (teacher_num, teacher_name, subject_name, pairs_per_week)
        VALUES (p_teacher_num, p_teacher_name, p_subject_name, p_pairs_per_week);
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `class_schedule_with_groups`
--

/*!50001 DROP VIEW IF EXISTS `class_schedule_with_groups`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `class_schedule_with_groups` AS select `p`.`id_of_pair` AS `id_of_pair`,`p`.`start_time` AS `start_time`,`p`.`end_time` AS `end_time`,`s`.`subject_name` AS `subject_name`,`t`.`teacher_name` AS `teacher_name`,concat(`c`.`building`,'-',`c`.`class_number`) AS `classroom`,`c`.`classroom_type` AS `classroom_type`,`g`.`number_of_group` AS `number_of_group`,`g`.`number_of_course` AS `number_of_course`,`p`.`number_of_students` AS `number_of_students` from ((((`pairs` `p` join `subjects` `s` on((`p`.`subject_name` = `s`.`subject_name`))) join `teachers` `t` on((`p`.`teacher_id` = `t`.`id_of_teacher`))) join `classrooms` `c` on((`p`.`classroom_id` = `c`.`id_of_classroom`))) left join `groups_in_uni` `g` on((`p`.`id_of_group` = `g`.`id_of_group`))) order by `p`.`start_time` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `current_week_schedule`
--

/*!50001 DROP VIEW IF EXISTS `current_week_schedule`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `current_week_schedule` AS select `class_schedule_with_groups`.`id_of_pair` AS `id_of_pair`,`class_schedule_with_groups`.`start_time` AS `start_time`,`class_schedule_with_groups`.`end_time` AS `end_time`,`class_schedule_with_groups`.`subject_name` AS `subject_name`,`class_schedule_with_groups`.`teacher_name` AS `teacher_name`,`class_schedule_with_groups`.`classroom` AS `classroom`,`class_schedule_with_groups`.`classroom_type` AS `classroom_type`,`class_schedule_with_groups`.`number_of_group` AS `number_of_group`,`class_schedule_with_groups`.`number_of_course` AS `number_of_course`,`class_schedule_with_groups`.`number_of_students` AS `number_of_students` from `class_schedule_with_groups` where (`class_schedule_with_groups`.`start_time` between '2024-09-01' and convert(('2024-09-01' + interval 5 day) using utf8mb4)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `teacher_workload_with_groups`
--

/*!50001 DROP VIEW IF EXISTS `teacher_workload_with_groups`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `teacher_workload_with_groups` AS select `t`.`id_of_teacher` AS `id_of_teacher`,`t`.`teacher_name` AS `teacher_name`,`t`.`subject_name` AS `subject_name`,count(`p`.`id_of_pair`) AS `pairs_count`,`t`.`pairs_per_week` AS `pairs_per_week`,((count(`p`.`id_of_pair`) / `t`.`pairs_per_week`) * 100) AS `workload_percentage`,group_concat(distinct concat(`g`.`number_of_course`,' курс, гр.',`g`.`number_of_group`) separator ',') AS `study_groups` from ((`teachers` `t` left join `pairs` `p` on((`t`.`id_of_teacher` = `p`.`teacher_id`))) left join `groups_in_uni` `g` on((`p`.`id_of_group` = `g`.`id_of_group`))) group by `t`.`id_of_teacher`,`t`.`teacher_name`,`t`.`subject_name`,`t`.`pairs_per_week` order by `workload_percentage` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-31 12:02:51
