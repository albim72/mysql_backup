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
-- Table structure for table `pracownicy`
--

DROP TABLE IF EXISTS `pracownicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pracownicy` (
  `IDPracownika` int NOT NULL,
  `Imie` text CHARACTER SET utf8 COLLATE utf8_polish_ci,
  `Nazwisko` text CHARACTER SET utf8 COLLATE utf8_polish_ci,
  `Stanowisko` text CHARACTER SET utf8 COLLATE utf8_polish_ci,
  `Adres` text CHARACTER SET utf8 COLLATE utf8_polish_ci,
  `Miasto` text CHARACTER SET utf8 COLLATE utf8_polish_ci,
  `Stan` text CHARACTER SET utf8 COLLATE utf8_polish_ci,
  `KodPocztowy` int DEFAULT NULL,
  `TelDomowy` text CHARACTER SET utf8 COLLATE utf8_polish_ci,
  `DataUrodzenia` date DEFAULT NULL,
  `DataZatrudnienia` date DEFAULT NULL,
  PRIMARY KEY (`IDPracownika`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pracownicy`
--

LOCK TABLES `pracownicy` WRITE;
/*!40000 ALTER TABLE `pracownicy` DISABLE KEYS */;
INSERT INTO `pracownicy` VALUES (1,'Karen','Berg','Owner','765 - 20th Ave. E.Apt. 2A','Seattle','WA',88102,'(206) 555-0100','1968-12-08','1992-05-01'),(2,'Kim','Akers','Head Buyer','890 NE 87th Dr.','Seattle','WA',88125,'(206) 555-0101','1963-02-19','2009-06-01'),(3,'David J.','Osborn','Assistant','789 Moss Bay Blvd.','Kirkland','WA',88033,'(425) 555-0102','1988-08-30','2008-11-02'),(4,'Chase','Carpenter','Sales Manager','123 Leary Wy.','Seattle','WA',88117,'(206) 555-0103','1966-09-19','2001-08-14'),(5,'Kirk','DeGrasse','Gardener','432 Pike St.','Seattle','WA',88119,'(206) 555-0104','1953-03-04','1993-10-17'),(6,'Nancy','Anderson','Sales','567 - 20th Ave. E.','Seattle','WA',88102,'(206) 555-0105','1974-07-02','2003-05-01'),(7,'Michael','Emanuel','Sales','4321 Old Redmond Rd.','Redmond','WA',88052,'(425) 555-0106','1967-05-29','1999-04-01'),(8,'Karen','Furse','Buyer','4567 - 11th Ave. N.E.','Seattle','WA',88133,'(206) 555-0107','1980-01-09','2004-05-03'),(9,'Sandeep','Katyal','Gardener','876 E. Prospect','Seattle','WA',88105,'(206) 555-0108','1987-07-02','2009-11-15');
/*!40000 ALTER TABLE `pracownicy` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-04  9:12:20
