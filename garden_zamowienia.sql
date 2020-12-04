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
-- Table structure for table `zamowienia`
--

DROP TABLE IF EXISTS `zamowienia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zamowienia` (
  `IDZamowienia` int NOT NULL,
  `IDKlienta` int DEFAULT NULL,
  `PrzedstKonta` int DEFAULT NULL,
  `DataZamowienia` text CHARACTER SET utf8 COLLATE utf8_polish_ci,
  `DataWysylki` text CHARACTER SET utf8 COLLATE utf8_polish_ci,
  `WyslanePrzez` int DEFAULT NULL,
  `KosztWysylki` text CHARACTER SET utf8 COLLATE utf8_polish_ci,
  `NazwaWysylki` text CHARACTER SET utf8 COLLATE utf8_polish_ci,
  `AdresWysylki` text CHARACTER SET utf8 COLLATE utf8_polish_ci,
  `MiastoWysylki` text CHARACTER SET utf8 COLLATE utf8_polish_ci,
  `RegionWysylki` text CHARACTER SET utf8 COLLATE utf8_polish_ci,
  `KodPocztowyWysylki` int DEFAULT NULL,
  `KrajWysylki` text CHARACTER SET utf8 COLLATE utf8_polish_ci,
  `DataWymagana` text CHARACTER SET utf8 COLLATE utf8_polish_ci,
  PRIMARY KEY (`IDZamowienia`),
  KEY `fk_prac_idx` (`PrzedstKonta`),
  KEY `fk_przew_idx` (`WyslanePrzez`),
  KEY `fk_klient_idx` (`IDKlienta`),
  CONSTRAINT `fk_klient` FOREIGN KEY (`IDKlienta`) REFERENCES `klienci` (`IDKlienta`),
  CONSTRAINT `fk_prac` FOREIGN KEY (`PrzedstKonta`) REFERENCES `pracownicy` (`IDPracownika`),
  CONSTRAINT `fk_przew` FOREIGN KEY (`WyslanePrzez`) REFERENCES `przewoznik` (`IDPrzewoznika`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zamowienia`
--

LOCK TABLES `zamowienia` WRITE;
/*!40000 ALTER TABLE `zamowienia` DISABLE KEYS */;
INSERT INTO `zamowienia` VALUES (11079,1,4,'2010-01-05 00:00:00.000','2010-01-07 00:00:00.000',5,'18','Eric Lang','991 S. Mississippi Rd.','St. Louis','MO',89203,'USA',NULL),(11080,2,4,'2010-01-05 00:00:00.000','2010-01-06 00:00:00.000',4,'13,25','Pilar Ackerman','8808 Backbay St.','Boston','MA',88337,'USA',NULL),(11081,3,6,'2010-01-06 00:00:00.000','2010-01-07 00:00:00.000',4,'8,95','Kevin Browne','666 Fords Landing','Westover','WV',66954,'USA',NULL),(11082,4,6,'2010-01-06 00:00:00.000','2010-01-08 00:00:00.000',3,'5,5','Karan Khanna','401 Rodeo Dr.','Auburn','WA',34923,'USA','2010-01-12 00:00:00.000'),(11083,5,4,'2010-01-08 00:00:00.000','2010-01-09 00:00:00.000',3,'28','Mary Anne Kobylka','4568 Spaulding Ave. N.','Seattle','WA',12345,'USA','2010-01-12 00:00:00.000'),(11084,6,6,'2010-01-12 00:00:00.000','2010-01-14 00:00:00.000',3,'8,5','Arlette Cox','14 S. Elm Dr.','Moscow','ID',2912,'USA',NULL),(11085,7,7,'2010-01-12 00:00:00.000','2010-01-13 00:00:00.000',4,'3','Luciana Ramos','12 Juanita Ln.','Helena','MT',42665,'USA',NULL),(11086,8,5,'2010-01-12 00:00:00.000','2010-01-13 00:00:00.000',3,'6,95','Lani Ota','78 Miller St.','Seattle','WA',81233,'USA',NULL),(11087,9,4,'2010-01-12 00:00:00.000','2010-01-13 00:00:00.000',5,'20','John Thorson','27 Christopher St.','Seattle','WA',67645,'USA',NULL),(11088,10,7,'2010-01-13 00:00:00.000','2010-01-14 00:00:00.000',3,'7,95','Geof Miller','18 Elm St.','Tulalip','WA',77483,'USA',NULL),(11089,11,6,'2010-01-14 00:00:00.000','2010-01-16 00:00:00.000',4,'7,5','Modesto Estrada','511 Lincoln Ave.','Burns','OR',27182,'USA','2010-01-19 00:00:00.000'),(11090,12,7,'2010-01-14 00:00:00.000','2010-01-16 00:00:00.000',5,'14,5','Roland Hofmann','42 El Camino Dr.','Seattle','WA',11299,'USA',NULL),(11091,13,4,'2010-01-15 00:00:00.000','2010-01-19 00:00:00.000',4,'24,5','Michael Holm','4220 Main St.','Bellevue','WA',39200,'USA','2010-01-20 00:00:00.000'),(11092,14,7,'2010-01-16 00:00:00.000','2010-01-19 00:00:00.000',3,'17','Teresa Atkinson','89 Cedar Way','Redmond','WA',30293,'USA',NULL),(11093,15,6,'2010-01-19 00:00:00.000','2010-01-21 00:00:00.000',5,'0','Paula Bento','6778 Cypress Pkwy.','Oak Harbor','WA',30291,'USA',NULL),(11094,16,4,'2010-01-22 00:00:00.000','2010-01-23 00:00:00.000',1,'4,35','Martin BankovAmie Baldwin','78 Riverside Dr.','Woodinville','WA',27283,'USA',NULL),(11095,17,7,'2010-01-22 00:00:00.000','2010-01-24 00:00:00.000',5,'18,95','Jon Ganio','45 Winding Wood Blvd.','Seattle','WA',38293,'USA',NULL),(11096,18,6,'2010-01-22 00:00:00.000','2010-01-23 00:00:00.000',NULL,'14,4','Cecilia Cornejo','778 Ancient Rd.','Bellevue','WA',54930,'USA',NULL),(11097,19,6,'2010-01-22 00:00:00.000','2010-01-23 00:00:00.000',4,'30','Judy Kaethler','4110 Old Redmond Rd.','Redmond','WA',77382,'USA','2010-01-27 00:00:00.000'),(11098,20,4,'2010-01-22 00:00:00.000','2010-01-23 00:00:00.000',NULL,'18,5','Kim Hightower','72 West St.','Portland','OR',67823,'USA','2010-01-27 00:00:00.000'),(11099,21,4,'2010-01-22 00:00:00.000','2010-01-23 00:00:00.000',5,'9,95','Bob Kelly','6 Cranbrook Hollow','Duvall','WA',33782,'USA','2010-01-27 00:00:00.000'),(11100,22,7,'2010-01-23 00:00:00.000','2010-01-24 00:00:00.000',2,'16,5','Erik Gavriluk','79 S. Wyatt St.','Clinton','WA',36728,'USA','2010-01-28 00:00:00.000'),(11101,23,6,'2010-01-23 00:00:00.000','2010-01-24 00:00:00.000',3,'3,25','Steven Levy','507 20th Ave. E.','Seattle','WA',73293,'USA',NULL),(11102,24,7,'2010-01-23 00:00:00.000','2010-01-24 00:00:00.000',3,'12,45','Kevin Kennedy','566 Queen Anne Way','Redmond','WA',55548,'USA','2010-01-28 00:00:00.000'),(11103,25,4,'2010-01-23 00:00:00.000','2010-01-24 00:00:00.000',1,'21,5','Randall Boseman','55 Grizzly Peak Rd.','Butte','MT',39201,'USA','2010-01-28 00:00:00.000'),(11104,26,7,'2010-01-23 00:00:00.000','2010-01-25 00:00:00.000',3,'8,5','Deanna Meyer','722 DaVinci Blvd.','Kirkland','WA',44892,'USA','2010-01-28 00:00:00.000'),(11105,27,7,'2010-01-23 00:00:00.000','2010-01-25 00:00:00.000',3,'2,95','Ted Bremer','311 87th Pl.','Beaverton','OR',77293,'USA',NULL),(11106,28,6,'2010-01-24 00:00:00.000','2010-01-25 00:00:00.000',3,'14,5','Dale Washburn','98 Forrest Way','Redmond','WA',53203,'USA',NULL),(11107,29,4,'2010-01-24 00:00:00.000','2010-01-25 00:00:00.000',2,'4,5','Jeff Price','87 Prince St.','Seattle','WA',32992,'USA',NULL),(11108,30,6,'2010-01-24 00:00:00.000','2010-01-25 00:00:00.000',4,'2,95','Michael Matey','12 Pike St.','Everett','WA',39203,'USA','2010-01-30 00:00:00.000'),(11109,31,6,'2010-01-25 00:00:00.000','2010-01-26 00:00:00.000',1,'2,95','James Wilson','99 18th St. N.','Seattle','WA',11283,'USA',NULL),(11110,32,6,'2010-01-24 00:00:00.000','2010-01-25 00:00:00.000',4,'14,5','Jo Berry','407 Sunny Way','Kirkland','WA',20192,'USA',NULL),(11111,33,7,'2010-01-24 00:00:00.000','2010-01-25 00:00:00.000',5,'25','David Pelton','193 Upper Mountain Ave.','Monroe','WA',73822,'USA',NULL),(11112,34,4,'2010-01-25 00:00:00.000','2010-01-26 00:00:00.000',2,'12,95','Prasanna Samarawickrama','17331 Fairhaven St.','Seattle','WA',81733,'USA','2010-01-30 00:00:00.000'),(11113,35,6,'2010-01-25 00:00:00.000','2010-01-26 00:00:00.000',2,'21,95','Meng Phua','2222 Montrose Ct.','Snohomish','WA',72233,'USA','2010-01-30 00:00:00.000'),(11114,36,4,'2010-01-25 00:00:00.000','2010-01-26 00:00:00.000',2,'10,95','Achim Hepp','115 Leary Wy.','Seattle','WA',85637,'USA','2010-01-30 00:00:00.000'),(11115,37,4,'2010-01-25 00:00:00.000','2010-01-26 00:00:00.000',3,'11,95','Roger Van Houten','6565 Bentwood Circle','Redmond','WA',66382,'USA','2010-01-30 00:00:00.000'),(11116,38,4,'2010-01-26 00:00:00.000','2010-01-29 00:00:00.000',4,'4,75','Mike Tiano','5540 Rosebud Place','Victoria','BC',5435435,'Canada',NULL),(11117,39,6,'2010-01-26 00:00:00.000','2010-01-29 00:00:00.000',4,'3,5','Kate Dresen','1630 Hillcrest Way','Carmel Valley','CA',68492,'USA',NULL),(11118,40,4,'2010-01-26 00:00:00.000','2010-01-29 00:00:00.000',1,'8,4','Don Funk','1815 Yolo St.','Seattle','WA',48721,'USA',NULL),(11119,41,6,'2010-01-26 00:00:00.000','2010-01-29 00:00:00.000',4,'18,5','Andrew Gray','48 Aurora Hwy.','Seattle','WA',37622,'USA','2010-01-31 00:00:00.000'),(11120,42,6,'2010-01-26 00:00:00.000','2010-01-29 00:00:00.000',1,'2,95','Ann Hellung-Larser','City Center Plaza, 516 Main St.','Elgin','OR',48293,'USA','2010-01-31 00:00:00.000'),(11121,43,6,'2010-01-29 00:00:00.000','2010-01-30 00:00:00.000',4,'2,95','Garth Fort','23 W. 48th St. #2','Redmond','WA',26372,'USA',NULL),(11122,44,4,'2010-01-29 00:00:00.000','2010-01-30 00:00:00.000',2,'12,95','William Hollands','18 Canyon Rd.','Newcastle','WA',42933,'USA',NULL),(11123,45,4,'2010-01-29 00:00:00.000','2010-01-30 00:00:00.000',1,'6,95','Robin Hjellen','89 Jefferson Way, Suite 2','Portland','OR',66172,'USA',NULL),(11124,46,6,'2010-01-29 00:00:00.000','2010-01-30 00:00:00.000',3,'4,95','Kathie Flood','8887 Western Ave.','Glendale','CA',32891,'USA','2010-02-03 00:00:00.000'),(11125,47,4,'2010-01-29 00:00:00.000','2010-01-30 00:00:00.000',3,'12,95','David Campbell','22 Market St.','San Francisco','CA',41102,'USA','2010-02-03 00:00:00.000'),(11126,48,7,'2010-01-29 00:00:00.000','2010-01-30 00:00:00.000',1,'4,25','Fukiko Ogisu','978 Carnegie Ave.','Seattle','WA',12893,'USA','2010-02-03 00:00:00.000'),(11127,49,6,'2010-01-29 00:00:00.000','2010-01-30 00:00:00.000',3,'3,25','Sandra Martinez','780 West Blvd.','Arlington','WA',28394,'USA','2010-02-03 00:00:00.000'),(11128,50,6,'2010-01-29 00:00:00.000','2010-01-31 00:00:00.000',1,'6,95','Yoshi Tannamuri','1900 Oak St.','Vancouver','BC',45355,'Canada','2010-02-03 00:00:00.000'),(11129,51,4,'2010-01-30 00:00:00.000','2010-01-31 00:00:00.000',4,'4,25','Chris Cannoy','89 W. Hilltop Dr.','Palo Alto','CA',43201,'USA',NULL),(11130,52,6,'2010-01-30 00:00:00.000','2010-01-31 00:00:00.000',2,'5,25','Gail A. Erickson','908 W. Capital Way','Tacoma','WA',30293,'USA',NULL),(11131,53,6,'2010-01-30 00:00:00.000','2010-01-31 00:00:00.000',3,'4,95','Scott Culp','14 E. University Way','Seattle','WA',11923,'USA',NULL),(11132,54,4,'2010-01-30 00:00:00.000','2010-01-31 00:00:00.000',4,'21,5','Mike Danseglio','55 Newton','Seattle','WA',12938,'USA',NULL),(11133,55,7,'2010-01-30 00:00:00.000','2010-01-31 00:00:00.000',5,'29,95','Jack Gode','612 E. 2nd','Pocatello','ID',38271,'USA',NULL),(11134,56,4,'2010-01-30 00:00:00.000','2010-01-31 00:00:00.000',2,'22','Helge Hoeing','431 Freemont St.','Bellevue','WA',33200,'USA',NULL),(11135,57,7,'2010-01-30 00:00:00.000','2010-01-31 00:00:00.000',3,'14,95','Stephen Yuan','7316 Taylor Landing Rd.','Duvall','WA',77238,'USA',NULL),(11136,58,4,'2010-01-31 00:00:00.000','2010-02-01 00:00:00.000',3,'2,95','Sergey Klimov','333 Baseline Ave.','Kenmore','WA',56789,'USA','2010-02-03 00:00:00.000'),(11137,59,6,'2010-01-31 00:00:00.000','2010-02-01 00:00:00.000',3,'19,95','Adam Tratt','46 E. Orange St.','Bellevue','WA',88973,'USA','2010-02-05 00:00:00.000'),(11138,60,6,'2010-01-31 00:00:00.000','2010-02-01 00:00:00.000',1,'12,95','Peter Houston','11 Skyline Blvd.','Kirkland','WA',19203,'USA','2010-02-05 00:00:00.000'),(11139,61,4,'2010-01-31 00:00:00.000','2010-02-01 00:00:00.000',2,'3,75','Karen Berg','PO Box 69','Yakima','WA',11203,'USA',NULL),(11140,62,4,'2010-02-01 00:00:00.000','2010-02-02 00:00:00.000',3,'12,25','Terry Adams','1932 52nd Ave.','Vancouver','BC',4534,'Canada',NULL),(11141,63,6,'2010-02-01 00:00:00.000','2010-02-02 00:00:00.000',3,'2,95','Mark Wistrom','722 Prospect Blvd.','Seattle','WA',32893,'USA',NULL),(11142,64,6,'2010-02-01 00:00:00.000','2010-02-02 00:00:00.000',3,'3,95','Jose Lugo','23 Tsawassen Blvd.','Tsawassen','BC',4534,'Canada',NULL);
/*!40000 ALTER TABLE `zamowienia` ENABLE KEYS */;
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
