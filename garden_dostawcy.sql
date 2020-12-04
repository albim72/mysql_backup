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
-- Table structure for table `dostawcy`
--

DROP TABLE IF EXISTS `dostawcy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dostawcy` (
  `IDDostawcy` int NOT NULL,
  `NazwaDostawcy` text CHARACTER SET utf8 COLLATE utf8_polish_ci,
  `NazwaKontaktu` text CHARACTER SET utf8 COLLATE utf8_polish_ci,
  `StanowiskoKontaktu` text CHARACTER SET utf8 COLLATE utf8_polish_ci,
  `Adres` text CHARACTER SET utf8 COLLATE utf8_polish_ci,
  `Miasto` text CHARACTER SET utf8 COLLATE utf8_polish_ci,
  `Stan` text CHARACTER SET utf8 COLLATE utf8_polish_ci,
  `KodPocztowy` text CHARACTER SET utf8 COLLATE utf8_polish_ci,
  `NrTelefonu` text CHARACTER SET utf8 COLLATE utf8_polish_ci,
  `NrFaksu` text CHARACTER SET utf8 COLLATE utf8_polish_ci,
  PRIMARY KEY (`IDDostawcy`),
  UNIQUE KEY `IDDostawcy_UNIQUE` (`IDDostawcy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dostawcy`
--

LOCK TABLES `dostawcy` WRITE;
/*!40000 ALTER TABLE `dostawcy` DISABLE KEYS */;
INSERT INTO `dostawcy` VALUES (1,'Garden Hardware Mfg.','Don Richardson','Purchasing Manager','45 Tandy St.','Washington','DC','10008','(202) 555-0120','(202) 555-0140'),(2,'The Shrub Club','Jonathan Mollerup','Order Administrator','1234 Lapis Ave.','Chevy Chase','MD','10815','(301) 555-0121','(301) 555-0141'),(3,'NoTox Pest Control','Brad Sutton','Sales Representative','P.O. Box 555','Lander','WY','72520','(307) 555-0123','(307) 555-0142'),(4,'Cover Up Stuff','Stuart Munson','Marketing Manager','4567 Grand Army Plaza','Brooklyn','NY','91235','(718) 555-0124','(718) 555-0143'),(5,'Rosie\'s Roses','Heather Murchison','Export Administrator','76543 Bayou Dr.','Plaquemine','LA','60764','(225) 555-0125','(225) 555-0144'),(6,'Soil and Sand Supplier','Robert O?Hara','Marketing Representative','321 E. Houston St. #6','New York','NY','90012','(212) 555-0126','(212) 555-0145'),(7,'Wholesale Rock & Gravel','Josh Barnhill','Marketing Manager','43 Magnolia Way','Plains','GA','21780','(912) 555-0127','(912) 555-0146'),(8,'The Herb House','Douglas Groncki','Sales Representative','987 Colman Dr.','San Luis Obispo','CA','83401','(805) 555-0128','(805) 555-0147'),(9,'Green Things Galore','Jason Carlson','Sales Agent','12 Orchestra Terrace','Walla Walla','WA','89362','(509) 555-0129','(509) 555-0148'),(10,'The Grass Factory','Scott Seely','Marketing Manager','1098 Asbury St.','Carmel Valley','CA','83924','(408) 555-0130','(408) 555-0149'),(11,'Green Thumb Fertilizers','Richard Carey','Sales Manager','5432 Mockingbird Ln.','Louisburg','NC','27549','(919) 555-0131','(919) 555-0150'),(12,'The Complete Garden Supplier','Paul West','International Marketing Mgr.','9876 Angeles Ave.','Los Angeles','CA','80019','(213) 555-0132','(213) 555-0151'),(13,'Evergreen Emporium','John Y. Chen','Coordinator Foreign Markets','567 Bartlett Blvd.','Baltimore','MD','11218','(301) 555-0133','(301) 555-0152'),(14,'The Carnivorous Connection','Robert Lyon','Sales Representative','21098 Baker Dr.','Eugene','OR','87403','(503) 555-0134','(503) 555-0153'),(15,'The Bulb Basket','Brian Perry','Marketing Manager','456 Breezewood Ave.','San Diego','CA','92111','(619) 555-0135','(619) 555-0154'),(16,'Itty Bitty Bonsai','Mindy Martin','Regional Account Rep.','234 Green Grass Hills St.','Greenville','TN','27743','(615) 555-0136','(615) 555-0155'),(17,'Flower Heaven','Ben Smith','Sales Representative','2345 N.W. 99th St.','Seattle','WA','88117','(206) 555-0137','(206) 555-0156'),(18,'The Tree Farm','Jim Kim','Sales Manager','7654 SW Clinton Ave.','Lewiston','ID','73501','(208) 555-0138','(208) 555-0157'),(19,'The Berry Bush Barn','TiAnna Jones','Wholesale Account Agent','432 Bryn Mawr Ave.','Cedar Rapids','IA','42403','(319) 555-0139','(319) 555-0158'),(20,'Liven Right Rhodies','Cat Francis','Owner','89 Maple Dr.','Carlisle','PA','97013','(717) 555-0140','(717) 555-0159'),(111,'Dostawca 22','Dos','Owner','','Warszawa','Mazowsze','','','');
/*!40000 ALTER TABLE `dostawcy` ENABLE KEYS */;
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
