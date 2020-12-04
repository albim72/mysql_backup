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
-- Table structure for table `szczegoly_zamowienia`
--

DROP TABLE IF EXISTS `szczegoly_zamowienia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `szczegoly_zamowienia` (
  `IDZamowienia` int NOT NULL,
  `IDProduktu` int NOT NULL,
  `CenaJednostkowa` double DEFAULT NULL,
  `Ilosc` int DEFAULT NULL,
  PRIMARY KEY (`IDZamowienia`,`IDProduktu`),
  KEY `fk_prod_idx` (`IDProduktu`),
  CONSTRAINT `fk_prod` FOREIGN KEY (`IDProduktu`) REFERENCES `produkty` (`IDProduktu`),
  CONSTRAINT `fk_zm` FOREIGN KEY (`IDZamowienia`) REFERENCES `zamowienia` (`IDZamowienia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `szczegoly_zamowienia`
--

LOCK TABLES `szczegoly_zamowienia` WRITE;
/*!40000 ALTER TABLE `szczegoly_zamowienia` DISABLE KEYS */;
INSERT INTO `szczegoly_zamowienia` VALUES (11079,3,58,1),(11080,42,24,2),(11081,38,27,1),(11081,83,85,1),(11083,3,58,1),(11083,26,18,1),(11087,70,24,3),(11088,81,40,1),(11089,195,6,1),(11090,18,21,2),(11091,69,28,3),(11092,30,24,1),(11092,81,40,2),(11095,213,75,1),(11096,129,7,3),(11096,132,7,2),(11097,71,38,1),(11098,168,32,1),(11099,82,54,1),(11100,42,24,1),(11100,44,20,1),(11101,86,14,1),(11103,38,27,1),(11106,84,70,1),(11109,138,12,1),(11111,18,21,3),(11112,39,12,6),(11113,138,12,1),(11114,5,18,3),(11118,81,40,1),(11119,73,32,2),(11121,123,3,2),(11128,30,24,1),(11132,119,125,1),(11132,123,3,1),(11133,63,30,2),(11134,69,28,1),(11135,44,20,1),(11135,77,53,1),(11138,3,58,1),(11139,32,10,1),(11139,132,7,2),(11140,216,50,1);
/*!40000 ALTER TABLE `szczegoly_zamowienia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-04  9:12:19
