CREATE DATABASE  IF NOT EXISTS `garden` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `garden`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: garden
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `przewoznik`
--

DROP TABLE IF EXISTS `przewoznik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `przewoznik` (
  `IDPrzewoznika` int NOT NULL,
  `Firma` text CHARACTER SET utf8 COLLATE utf8_polish_ci,
  `Kontakt` text CHARACTER SET utf8 COLLATE utf8_polish_ci,
  `Ulica` text CHARACTER SET utf8 COLLATE utf8_polish_ci,
  `Miasto` text CHARACTER SET utf8 COLLATE utf8_polish_ci,
  `Stan` text CHARACTER SET utf8 COLLATE utf8_polish_ci,
  `KodPocztowy` int DEFAULT NULL,
  `Telefon` text CHARACTER SET utf8 COLLATE utf8_polish_ci,
  PRIMARY KEY (`IDPrzewoznika`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `przewoznik`
--

LOCK TABLES `przewoznik` WRITE;
/*!40000 ALTER TABLE `przewoznik` DISABLE KEYS */;
INSERT INTO `przewoznik` VALUES (1,'Fast Freddie\'s Freightline','Jim Hance','7654 Baxter Blvd.','Gunnison','CO',71230,'(303) 555-0100'),(2,'Zippy\'s Express','Adam Barr','89 Washington Dr.','Clovis','NM',78101,'(505) 555-0101'),(3,'Triple P Delivery','Jessica Arnold','12-A N. 126th St.','Vermillion','KS',56544,'(913) 555-0102'),(4,'EZ Does It','Frank Lee','10987 S.E. 35th Pl.','Redmond','WA',88052,'(425) 555-0104'),(5,'Big Things Freight','John Woods','345 S. 34th St.','Ventura','CA',83003,'(805) 555-0154');
/*!40000 ALTER TABLE `przewoznik` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-04  9:12:21
