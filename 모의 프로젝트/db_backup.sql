CREATE DATABASE  IF NOT EXISTS `eventdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `eventdb`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: eventdb
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `tb_admin`
--

DROP TABLE IF EXISTS `tb_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_admin` (
  `admin_seq` int NOT NULL AUTO_INCREMENT,
  `admin_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `use_yn` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `create_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `update_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `update_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`admin_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='관리자 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_admin`
--

LOCK TABLES `tb_admin` WRITE;
/*!40000 ALTER TABLE `tb_admin` DISABLE KEYS */;
INSERT INTO `tb_admin` VALUES (1,'webmaster','cac10cc25218bc71637f5a0d1bcd07b1485eacc020eb161964cc269243d7b869','관리자','Y','webmaster','2024-09-25 10:27:59.602543','webmaster','2024-09-25 10:27:59.602543');
/*!40000 ALTER TABLE `tb_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_event`
--

DROP TABLE IF EXISTS `tb_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_event` (
  `event_seq` int NOT NULL AUTO_INCREMENT,
  `event_post_start_date` timestamp(6) NOT NULL,
  `event_post_end_date` timestamp(6) NOT NULL,
  `event_start_date` timestamp(6) NOT NULL,
  `event_end_date` timestamp(6) NOT NULL,
  `event_title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_content` varchar(4000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_view_cnt` int DEFAULT '0',
  `event_file_group_seq` int NOT NULL,
  `use_yn` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `create_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `update_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `update_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`event_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_event`
--

LOCK TABLES `tb_event` WRITE;
/*!40000 ALTER TABLE `tb_event` DISABLE KEYS */;
INSERT INTO `tb_event` VALUES (1,'2024-09-28 00:30:00.000000','2024-09-28 09:30:00.000000','2024-09-28 00:00:00.000000','2024-09-28 09:30:00.000000','test','testContent',0,1,'Y','webmaster','2024-09-28 13:47:41.360289','webmaster','2024-09-28 13:47:41.360289'),(2,'2024-09-28 00:00:00.000000','2024-09-30 09:30:00.000000','2024-09-29 00:00:00.000000','2024-09-30 09:00:00.000000','EVENT','TEST EVENT',0,2,'Y','webmaster','2024-09-28 13:56:04.957192','webmaster','2024-09-28 13:56:04.957192'),(4,'2024-09-28 00:00:00.000000','2024-10-01 09:30:00.000000','2024-09-30 00:00:00.000000','2024-09-30 09:00:00.000000','tttt','test',0,3,'Y','webmaster','2024-09-28 14:01:45.766101','webmaster','2024-09-28 14:01:45.766101');
/*!40000 ALTER TABLE `tb_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_event_join`
--

DROP TABLE IF EXISTS `tb_event_join`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_event_join` (
  `event_join_seq` int NOT NULL AUTO_INCREMENT,
  `event_seq` int NOT NULL,
  `event_join_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_join_phone` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_join_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_join_sex` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_join_birth` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_join_addr` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_join_state` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A' COMMENT 'A: 신청 | W: 당첨 | C : 취소',
  `create_id` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `update_id` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `update_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`event_join_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_event_join`
--

LOCK TABLES `tb_event_join` WRITE;
/*!40000 ALTER TABLE `tb_event_join` DISABLE KEYS */;
INSERT INTO `tb_event_join` VALUES (1,2,'홍길동','010-0000-0000','test@naver.com','m','19910503','대전 서구','W','홍길동','2024-09-29 08:46:08.000000','webmaster','2024-09-29 09:55:28.000000'),(2,2,'홍길순','010-1111-1111','test1@naver.com','m','19910101','대전 유성구','W','홍길순','2024-09-29 08:46:36.000000','webmaster','2024-09-29 09:55:15.000000'),(3,2,'홍길자','010-2222-2222','test3@naver.com','f','19920504','대전 동구','W','홍길자','2024-09-29 08:47:03.000000','webmaster','2024-09-29 09:55:15.000000');
/*!40000 ALTER TABLE `tb_event_join` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_file_attr`
--

DROP TABLE IF EXISTS `tb_file_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_file_attr` (
  `file_seq` int NOT NULL AUTO_INCREMENT,
  `file_group_seq` int NOT NULL,
  `original_file_name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `save_file_name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `file_path` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `file_size` double DEFAULT NULL,
  `file_ext` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `create_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `create_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `update_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `update_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `use_yn` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`file_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_file_attr`
--

LOCK TABLES `tb_file_attr` WRITE;
/*!40000 ALTER TABLE `tb_file_attr` DISABLE KEYS */;
INSERT INTO `tb_file_attr` VALUES (1,3,'10. AOP.pptx','file_2024092823145.pptx','/ictsaeil/event/',NULL,'pptx','webmaster','2024-09-28 14:01:45.000000','webmaster','2024-09-28 17:27:21.000000','N'),(2,3,'11. 다국어처리.pptx','file_2024092823145.pptx','/ictsaeil/event/',NULL,'pptx','webmaster','2024-09-28 14:01:45.000000','webmaster','2024-09-28 17:27:21.000000','N'),(3,3,'8. REST API.pptx','file_2024092823145.pptx','/ictsaeil/event/',NULL,'pptx','webmaster','2024-09-28 14:01:45.000000','webmaster','2024-09-28 14:01:45.000000','Y');
/*!40000 ALTER TABLE `tb_file_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'eventdb'
--

--
-- Dumping routines for database 'eventdb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-29 19:21:16
