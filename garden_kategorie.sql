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
-- Table structure for table `kategorie`
--

DROP TABLE IF EXISTS `kategorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kategorie` (
  `IDKategorii` int NOT NULL,
  `NazwaKategorii` text CHARACTER SET utf8 COLLATE utf8_polish_ci,
  `Opis` text CHARACTER SET utf8 COLLATE utf8_polish_ci,
  PRIMARY KEY (`IDKategorii`),
  UNIQUE KEY `IDKategorii_UNIQUE` (`IDKategorii`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategorie`
--

LOCK TABLES `kategorie` WRITE;
/*!40000 ALTER TABLE `kategorie` DISABLE KEYS */;
INSERT INTO `kategorie` VALUES (1,'Bulbs','Spring, summer and fall, forced'),(2,'Cacti','Indoor cactus plants'),(3,'Ground covers','Herbaceous perennials, evergreen and deciduous shrubs, ivy, vines, mosses'),(4,'Grasses','Lawn grasses for cool climates'),(5,'Flowers','A wide variety of flowers'),(6,'Wetland plants','Plants suitable for water gardens and bogs'),(7,'Soils/sand','Potting soils, peat moss, mulch, bark'),(8,'Fertilizers','A variety of fertilizers'),(13,'Trees','Evergreen and deciduous trees'),(14,'Herbs','For flavoring and fragrance'),(15,'Bonsai supplies','Bonsai supplies'),(16,'Roses','Many types of roses'),(17,'Rhododendron','Hardy cultivars'),(18,'Pest control','Non-toxic alternatives'),(19,'Carnivorous','Meat-eating plants'),(20,'Tools','Miscellaneous gardening hardware'),(21,'Berry bushes','Small bush fruits'),(22,'Shrubs/hedges','Shrubbery suitable for beds, containers, hedges, etc.');
/*!40000 ALTER TABLE `kategorie` ENABLE KEYS */;
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
