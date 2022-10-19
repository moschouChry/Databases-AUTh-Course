-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hiketheday
-- ------------------------------------------------------
-- Server version	5.5.57-MariaDB

DROP SCHEMA IF EXISTS hiketheday;
CREATE SCHEMA hiketheday;
USE hiketheday;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `a`
--

DROP TABLE IF EXISTS `a`;
/*!50001 DROP VIEW IF EXISTS `a`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `a` AS SELECT 
 1 AS `ReservationID`,
 1 AS `Date`,
 1 AS `RouteName`,
 1 AS `AreaName`,
 1 AS `AreaState`,
 1 AS `HikerName`,
 1 AS `HikerID`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area` (
  `State` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Geology` text NOT NULL,
  `Range` int(11) unsigned NOT NULL,
  PRIMARY KEY (`Name`,`State`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES ('Lasithi','Dikti','Dikti is a mountain range on the east of the island of Crete...',27),('Fokida','Giona','Giona is the highest mountain of Central Greece...',20),('Thessaloniki','Hortiatis','Hortiatis is a mountain in Central Macedonia...',5),('Katerini','Olympus','Olympus is the highest mountain of...',150),('Pella','Paiko','Paiko is located in the central Macedonia ...',40),('Evros','Samothraki','Samothraki is an island...',15),('Thessaloniki','Seikh Su','Seikh Su is a hilltop forest just to the north ... ',7),('Ioannina','Zagori','Zagori is an area in the mountains of Pindos...',40);
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `b`
--

DROP TABLE IF EXISTS `b`;
/*!50001 DROP VIEW IF EXISTS `b`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `b` AS SELECT 
 1 AS `GuideName`,
 1 AS `Telephone`,
 1 AS `DaysLeft`,
 1 AS `RouteName`,
 1 AS `ReservationID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `c`
--

DROP TABLE IF EXISTS `c`;
/*!50001 DROP VIEW IF EXISTS `c`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `c` AS SELECT 
 1 AS `SightName`,
 1 AS `Type`,
 1 AS `RouteName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `d`
--

DROP TABLE IF EXISTS `d`;
/*!50001 DROP VIEW IF EXISTS `d`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `d` AS SELECT 
 1 AS `ProductCode`,
 1 AS `Brand`,
 1 AS `Type`,
 1 AS `Price`,
 1 AS `Difficulty`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `e`
--

DROP TABLE IF EXISTS `e`;
/*!50001 DROP VIEW IF EXISTS `e`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `e` AS SELECT 
 1 AS `TotalComments`,
 1 AS `Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `equipment`
--

DROP TABLE IF EXISTS `equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipment` (
  `ProductCode` varchar(15) NOT NULL,
  `Brand` varchar(50) NOT NULL,
  `Type` enum('Clothes','Shoes','Backpack','Helmet','Tent','Baton','Gloves','Accessories') NOT NULL,
  `Price` decimal(5,2) unsigned NOT NULL,
  PRIMARY KEY (`ProductCode`,`Brand`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment`
--

LOCK TABLES `equipment` WRITE;
/*!40000 ALTER TABLE `equipment` DISABLE KEYS */;
INSERT INTO `equipment` VALUES ('10242 Brown','Grisport','Shoes',48.00),('1405','Magnum','Baton',20.00),('443532','Karrimor','Clothes',109.90),('9320119','Polo','Accessories',22.00),('Active 8106111','Campus','Backpack',24.90),('BD 620213','Black Diamond','Helmet',45.00),('ED9288','Adidas','Clothes',34.96),('EM0055-010','Columbia','Clothes',76.60),('Hammer EF801','Elite Force Tactical','Accessories',48.00),('Heat Gear','Under Armour','Clothes',27.98),('MH500 40L','Quechua','Backpack',70.00),('NRS-25036.02_1','NRS','Gloves',60.00),('Santiago 40L','Maori','Backpack',22.70),('Shelter CS','Salomon','Shoes',90.99),('T7','Roberns Conistion','Baton',37.46),('Talos 3','High Peak','Tent',129.85),('Wayfer','Salomon','Clothes',70.00);
/*!40000 ALTER TABLE `equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guide`
--

DROP TABLE IF EXISTS `guide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guide` (
  `GuideID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Telephone` char(10) NOT NULL,
  `E-mail` varchar(50) NOT NULL,
  `CV` text NOT NULL,
  PRIMARY KEY (`GuideID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guide`
--

LOCK TABLES `guide` WRITE;
/*!40000 ALTER TABLE `guide` DISABLE KEYS */;
INSERT INTO `guide` VALUES (1,'Jim Papadopoulos','6958585858','jimpap@hotmail.com','Since he was young, he...'),(2,'Anna Kassi','6945411635','annak@gmail.com','Born in Litochoro, she learnt ...'),(3,'Ioannis Petridis','6956780893','giannpet@gmail.com','Ioannis Petridis has a degree in physical education...'),(4,'Panorea Arvaniti','6912131415','arva71@yahoo.com','Panorea has been hiking her whole life and decided to...'),(5,'Maria Tanimanidi','6999999999','tanimanmar@hotmail.com','One of the first female Greek that...'),(6,'Thomas Dovas','6987302615','dovas86@hotmail.com','He began as an amateur to offer help...'),(7,'Christina Fonta','6955826969','fontochris@hotmail.com ','Christina was born in Epirus'),(8,'Dimitris Aggelopoulos','6912345678','dagg@yahoo.com','Dimitris was born...'),(9,'Foteini Papadopoulou','2310585858','papfot@gmail.gr','From a young age...');
/*!40000 ALTER TABLE `guide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hiker`
--

DROP TABLE IF EXISTS `hiker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hiker` (
  `HikerID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `E-mail` varchar(50) NOT NULL,
  `DateOfBirth` date NOT NULL,
  PRIMARY KEY (`HikerID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hiker`
--

LOCK TABLES `hiker` WRITE;
/*!40000 ALTER TABLE `hiker` DISABLE KEYS */;
INSERT INTO `hiker` VALUES (1,'Sofoklis Eustathiou','sofo@gmail.com','1990-10-25'),(2,'Christina Sakka','christinathebest@hotmail.com','1998-06-15'),(3,'Nikos Oikonomopoulos','baltoterma@gmail.gr','1984-06-30'),(4,'Aliki Anastasopoulou','alikana@gmail.com','1980-04-25'),(5,'Zoe Bontsiou','zobo@gmail.com','1998-09-23'),(6,'Akis Petretzikis','kichenlab@yahoo.com','1984-03-04'),(7,'Anna Vissi','agapiuperboliki@hotmail.com','1957-02-22'),(8,'George Pridezis','prideziz@hotmail.com','1985-02-22'),(9,'Antonis Sykaris','thelegend@antonissykaris.gr','1962-05-14'),(10,'Moschou Chrysoula','mos@gmail.com','1997-05-12'),(11,'Sophia Tasopoulou','softas@gmail.com','1998-03-06'),(12,'Mairi Chronopoulou','chromai@gapps.auth.gr','1995-02-04'),(13,'John Wick','johnwick@gmail.com','1981-05-25'),(14,'Ken Smith','smithken@yahoo.gr','1975-03-01');
/*!40000 ALTER TABLE `hiker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rating` (
  `HikerID` int(11) NOT NULL,
  `RouteName` varchar(50) NOT NULL,
  `AreaName` varchar(50) NOT NULL,
  `AreaState` varchar(50) NOT NULL,
  `Comment` tinytext,
  `Stars` int(11) NOT NULL,
  PRIMARY KEY (`HikerID`,`RouteName`,`AreaName`,`AreaState`),
  KEY `fk_Hiker_has_Route_Route1_idx` (`RouteName`,`AreaName`,`AreaState`),
  KEY `fk_Hiker_has_Route_Hiker1_idx` (`HikerID`),
  CONSTRAINT `fk_Hiker_has_Route_Hiker1` FOREIGN KEY (`HikerID`) REFERENCES `hiker` (`HikerID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Hiker_has_Route_Route1` FOREIGN KEY (`RouteName`, `AreaName`, `AreaState`) REFERENCES `route` (`Name`, `AreaName`, `AreaState`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` VALUES (1,'Drakolimni of Tymphi','Zagori','Ioannina','During winter the lake is wonderful...',4),(1,'Gortsia-Petrostrouga-Muses Plateau','Olympus','Katerini','One of the best routes in Olympus...',4),(1,'Round trip in Seikh Su','Seikh Su','Thessaloniki','The best choice near ...',4),(2,'Drakolimni of Tymphi','Zagori','Ioannina','Unique route, wonderfull experience',5),(2,'Muses Plateau - Stefani','Olympus','Katerini','I would not advise an amateur to ...',4),(2,'Spilios Agapitos - Louki - Mitikas','Olympus','Katerini','The route to the highest place in...',5),(3,'Muses Plateau - Stefani','Olympus','Katerini','Very dangerous with poor...',1),(3,'Round trip in Seikh Su','Seikh Su','Thessaloniki','NULL',2),(5,'Skra Waterfalls','Paiko','Pella','NULL',4),(6,'Muses Plateau - Stefani','Olympus','Katerini','NULL',4),(6,'Round trip in Seikh Su','Seikh Su','Thessaloniki','Good choice, near city!',3),(6,'Skra Waterfalls','Paiko','Pella','NULL',3),(7,'Round trip in Seikh Su','Seikh Su','Thessaloniki','I would definately recommend...',4),(7,'Skra Waterfalls','Paiko','Pella','So close to the city center and yet...',4),(10,'Muses Plateau - Stefani','Olympus','Katerini','Tough but the ending spot will reward...',5);
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservation` (
  `ReservationID` int(11) NOT NULL AUTO_INCREMENT,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `HikerID` int(11) NOT NULL,
  `RouteName` varchar(50) NOT NULL,
  `AreaName` varchar(50) NOT NULL,
  `AreaState` varchar(50) NOT NULL,
  `GuideID` int(11) NOT NULL,
  PRIMARY KEY (`ReservationID`),
  KEY `fk_Reservation_Hiker1_idx` (`HikerID`),
  KEY `fk_Reservation_Route1_idx` (`RouteName`,`AreaName`,`AreaState`),
  KEY `fk_Reservation_Guide1_idx` (`GuideID`),
  CONSTRAINT `fk_Reservation_Guide1` FOREIGN KEY (`GuideID`) REFERENCES `guide` (`GuideID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Reservation_Hiker1` FOREIGN KEY (`HikerID`) REFERENCES `hiker` (`HikerID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Reservation_Route1` FOREIGN KEY (`RouteName`, `AreaName`, `AreaState`) REFERENCES `route` (`Name`, `AreaName`, `AreaState`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (1,'2021-01-19 07:30:00',2,'Gortsia-Petrostrouga-Muses Plateau','Olympus','Katerini',2),(4,'2021-02-15 07:00:00',7,'Skra Waterfalls','Paiko','Pella',4),(5,'2021-01-10 06:30:00',4,'Plateau - Havgas Gorge','Dikti','Lasithi',3),(6,'2021-02-01 07:30:00',4,'Muses Plateau - Stefani','Olympus','Katerini',7),(7,'2020-12-28 07:30:00',3,'Round trip in Seikh Su','Seikh Su','Thessaloniki',2),(8,'2020-12-29 05:30:00',5,'Round trip in Seikh Su','Seikh Su','Thessaloniki',2),(9,'2020-12-01 06:30:00',10,'Drakolimni of Tymphi','Zagori','Ioannina',1),(10,'2021-02-25 09:00:00',1,'Lefkaditi - Giona Makrilakos','Giona','Fokida',1),(11,'2020-11-01 06:30:00',6,'Therma - Feggari Summit','Samothraki','Evros',8),(12,'2021-02-21 08:30:00',8,'Therma - Piges Fonia','Samothraki','Evros',9),(13,'2020-10-08 05:30:00',10,'Spathi Dikti','Dikti','Lasithi',3),(14,'2021-03-08 06:30:00',2,'Plateau - Havgas Gorge','Dikti','Lasithi',3);
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `route`
--

DROP TABLE IF EXISTS `route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `route` (
  `Name` varchar(50) NOT NULL,
  `Description` text NOT NULL,
  `Duration` time NOT NULL,
  `Difficulty` enum('1','2','3','4','5') NOT NULL,
  `Length` int(11) NOT NULL,
  `AltitudinalDifference` int(11) NOT NULL,
  `AreaName` varchar(50) NOT NULL,
  `AreaState` varchar(50) NOT NULL,
  PRIMARY KEY (`Name`,`AreaName`,`AreaState`),
  KEY `fk_Route_Area_idx` (`AreaName`,`AreaState`),
  CONSTRAINT `fk_Route_Area` FOREIGN KEY (`AreaName`, `AreaState`) REFERENCES `area` (`Name`, `State`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route`
--

LOCK TABLES `route` WRITE;
/*!40000 ALTER TABLE `route` DISABLE KEYS */;
INSERT INTO `route` VALUES ('Drakolimni of Tymphi','As we begin from Papigo village','08:30:00','4',2300,440,'Zagori','Ioannina'),('Gortsia-Petrostrouga-Muses Plateau','In the route Litochor-Prionia...','06:00:00','3',13400,1600,'Olympus','Katerini'),('Hortiatis - Refugee','Just outside the village Hortiatis ...','01:35:00','1',4530,397,'Hortiatis','Thessaloniki'),('Lefkaditi - Giona Makrilakos','A rather relative...','01:50:00','3',2060,1100,'Giona','Fokida'),('Muses Plateau - Stefani','Stefani summit or as it is called Zeus ...','01:00:00','5',1500,268,'Olympus','Katerini'),('Plateau - Havgas Gorge','An exceptional route especially in...','05:49:00','3',10700,1168,'Dikti','Lasithi'),('Prionia - Spilios Agapitos','The route begins from Prionia (1000m)...','03:00:00','3',4500,1000,'Olympus','Katerini'),('Round trip in Seikh Su','In the city of Thessaloniki ...','04:00:00','1',22000,312,'Seikh Su','Thessaloniki'),('Skra Waterfalls','The route begins at ...','03:00:00','2',15695,1449,'Paiko','Pella'),('Spathi Dikti','This route can be combined with ...','09:00:00','4',20000,1300,'Dikti','Lasithi'),('Spilios Agapitos - Louki - Mitikas','It is one of the most ...','03:00:00','4',2900,818,'Olympus','Katerini'),('Therma - Feggari Summit','It is a long route that begins...','08:00:00','5',13140,1300,'Samothraki','Evros'),('Therma - Piges Fonia','The most popular route...','03:00:00','2',10000,700,'Samothraki','Evros');
/*!40000 ALTER TABLE `route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `route_equipment`
--

DROP TABLE IF EXISTS `route_equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `route_equipment` (
  `RouteName` varchar(50) NOT NULL,
  `AreaName` varchar(50) NOT NULL,
  `AreaState` varchar(50) NOT NULL,
  `ProductCode` varchar(15) NOT NULL,
  `Brand` varchar(50) NOT NULL,
  PRIMARY KEY (`RouteName`,`AreaName`,`AreaState`,`ProductCode`,`Brand`),
  KEY `fk_Route_has_Equipment_Equipment1_idx` (`ProductCode`,`Brand`),
  KEY `fk_Route_has_Equipment_Route1_idx` (`RouteName`,`AreaName`,`AreaState`),
  CONSTRAINT `fk_Route_has_Equipment_Equipment1` FOREIGN KEY (`ProductCode`, `Brand`) REFERENCES `equipment` (`ProductCode`, `Brand`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Route_has_Equipment_Route1` FOREIGN KEY (`RouteName`, `AreaName`, `AreaState`) REFERENCES `route` (`Name`, `AreaName`, `AreaState`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route_equipment`
--

LOCK TABLES `route_equipment` WRITE;
/*!40000 ALTER TABLE `route_equipment` DISABLE KEYS */;
INSERT INTO `route_equipment` VALUES ('Drakolimni of Tymphi','Zagori','Ioannina','1405','Magnum'),('Gortsia-Petrostrouga-Muses Plateau','Olympus','Katerini','ED9288','Adidas'),('Gortsia-Petrostrouga-Muses Plateau','Olympus','Katerini','Shelter CS','Salomon'),('Gortsia-Petrostrouga-Muses Plateau','Olympus','Katerini','T7','Roberns Conistion'),('Lefkaditi - Giona Makrilakos','Giona','Fokida','EM0055-010','Columbia'),('Plateau - Havgas Gorge','Dikti','Lasithi','443532','Karrimor'),('Plateau - Havgas Gorge','Dikti','Lasithi','Heat Gear','Under Armour'),('Prionia - Spilios Agapitos','Olympus','Katerini','Wayfer','Salomon'),('Skra Waterfalls','Paiko','Pella','MH500 40L','Quechua'),('Spilios Agapitos - Louki - Mitikas','Olympus','Katerini','BD 620213','Black Diamond');
/*!40000 ALTER TABLE `route_equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `route_guide`
--

DROP TABLE IF EXISTS `route_guide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `route_guide` (
  `RouteName` varchar(50) NOT NULL,
  `AreaName` varchar(50) NOT NULL,
  `AreaState` varchar(50) NOT NULL,
  `GuideID` int(11) NOT NULL,
  PRIMARY KEY (`RouteName`,`AreaName`,`AreaState`,`GuideID`),
  KEY `fk_Route_has_Guide_Guide1_idx` (`GuideID`),
  CONSTRAINT `fk_Route_has_Guide_Guide1` FOREIGN KEY (`GuideID`) REFERENCES `guide` (`GuideID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Route_has_Guide_Route1` FOREIGN KEY (`RouteName`, `AreaName`, `AreaState`) REFERENCES `route` (`Name`, `AreaName`, `AreaState`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route_guide`
--

LOCK TABLES `route_guide` WRITE;
/*!40000 ALTER TABLE `route_guide` DISABLE KEYS */;
INSERT INTO `route_guide` VALUES ('Drakolimni of Tymphi','Zagori','Ioannina',1),('Gortsia-Petrostrouga-Muses Plateau','Olympus','Katerini',2),('Gortsia-Petrostrouga-Muses Plateau','Olympus','Katerini',4),('Hortiatis - Refugee','Hortiatis','Thessaloniki',6),('Lefkaditi - Giona Makrilakos','Giona','Fokida',1),('Lefkaditi - Giona Makrilakos','Giona','Fokida',2),('Muses Plateau - Stefani','Olympus','Katerini',2),('Muses Plateau - Stefani','Olympus','Katerini',5),('Muses Plateau - Stefani','Olympus','Katerini',7),('Plateau - Havgas Gorge','Dikti','Lasithi',3),('Plateau - Havgas Gorge','Dikti','Lasithi',5),('Round trip in Seikh Su','Seikh Su','Thessaloniki',2),('Round trip in Seikh Su','Seikh Su','Thessaloniki',4),('Skra Waterfalls','Paiko','Pella',4),('Skra Waterfalls','Paiko','Pella',7),('Spathi Dikti','Dikti','Lasithi',3),('Therma - Feggari Summit','Samothraki','Evros',8),('Therma - Feggari Summit','Samothraki','Evros',9),('Therma - Piges Fonia','Samothraki','Evros',6),('Therma - Piges Fonia','Samothraki','Evros',8),('Therma - Piges Fonia','Samothraki','Evros',9);
/*!40000 ALTER TABLE `route_guide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `route_sights`
--

DROP TABLE IF EXISTS `route_sights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `route_sights` (
  `RouteName` varchar(50) NOT NULL,
  `AreaName` varchar(50) NOT NULL,
  `AreaState` varchar(50) NOT NULL,
  `SightID` int(11) NOT NULL,
  PRIMARY KEY (`RouteName`,`AreaName`,`AreaState`,`SightID`),
  KEY `fk_Route_has_Sightseeing_Sightseeing1_idx` (`SightID`),
  KEY `fk_Route_has_Sightseeing_Route1_idx` (`RouteName`,`AreaName`,`AreaState`),
  CONSTRAINT `fk_Route_has_Sightseeing_Route1` FOREIGN KEY (`RouteName`, `AreaName`, `AreaState`) REFERENCES `route` (`Name`, `AreaName`, `AreaState`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Route_has_Sightseeing_Sightseeing1` FOREIGN KEY (`SightID`) REFERENCES `sightseeing` (`SightID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route_sights`
--

LOCK TABLES `route_sights` WRITE;
/*!40000 ALTER TABLE `route_sights` DISABLE KEYS */;
INSERT INTO `route_sights` VALUES ('Drakolimni of Tymphi','Zagori','Ioannina',3),('Drakolimni of Tymphi','Zagori','Ioannina',4),('Drakolimni of Tymphi','Zagori','Ioannina',5),('Drakolimni of Tymphi','Zagori','Ioannina',8),('Gortsia-Petrostrouga-Muses Plateau','Olympus','Katerini',2),('Gortsia-Petrostrouga-Muses Plateau','Olympus','Katerini',10),('Gortsia-Petrostrouga-Muses Plateau','Olympus','Katerini',11),('Hortiatis - Refugee','Hortiatis','Thessaloniki',4),('Muses Plateau - Stefani','Olympus','Katerini',2),('Prionia - Spilios Agapitos','Olympus','Katerini',1);
/*!40000 ALTER TABLE `route_sights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sightseeing`
--

DROP TABLE IF EXISTS `sightseeing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sightseeing` (
  `SightID` int(11) NOT NULL AUTO_INCREMENT,
  `Latitude` decimal(8,6) NOT NULL,
  `Longitude` decimal(9,6) NOT NULL,
  `Description` text NOT NULL,
  `Type` enum('Museum','Refugee','Potable Spring','Church','Other','Archeological Monument') NOT NULL,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`SightID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sightseeing`
--

LOCK TABLES `sightseeing` WRITE;
/*!40000 ALTER TABLE `sightseeing` DISABLE KEYS */;
INSERT INTO `sightseeing` VALUES (1,22.385870,40.077180,'The refugee is a beautiful stone …','Refugee','Spilios Agapitos'),(2,22.361230,40.095720,'The refugee was build in the summer of …','Refugee','Giosos Apostolidis'),(3,20.772989,39.983271,'Natural water source with potable…','Potable Spring','Antalki'),(4,20.774179,39.983193,'The water sourse was build in …','Potable Spring','Trafos'),(5,20.780574,39.987862,'It is the last water …','Potable Spring','Krouna'),(6,22.202090,38.871670,'The administration of forest protection of…','Museum','Museum of natural History of Oiti'),(7,23.125380,40.587780,'Located at 1000m high, it is accessible','Refugee','Hortiatis Refugee'),(8,20.768721,39.979308,'Astraka refugee is located at 1950m…','Refugee','Astraka Refugee'),(9,21.385100,38.483810,'South of the mountain …','Church','Saint Nicolas'),(10,22.413140,40.109180,'At the middle of the route...','Refugee','Petrostrouga'),(11,22.366510,40.092830,'With a view to Stefani summit...','Refugee','Kakalos');
/*!40000 ALTER TABLE `sightseeing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `a`
--

/*!50001 DROP VIEW IF EXISTS `a`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `a` AS select `reservation`.`ReservationID` AS `ReservationID`,`reservation`.`Date` AS `Date`,`reservation`.`RouteName` AS `RouteName`,`reservation`.`AreaName` AS `AreaName`,`reservation`.`AreaState` AS `AreaState`,`hiker`.`Name` AS `HikerName`,`hiker`.`HikerID` AS `HikerID` from (`hiker` join `reservation` on((`hiker`.`HikerID` = `reservation`.`HikerID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `b`
--

/*!50001 DROP VIEW IF EXISTS `b`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `b` AS select `guide`.`Name` AS `GuideName`,`guide`.`Telephone` AS `Telephone`,(to_days(`reservation`.`Date`) - to_days(curdate())) AS `DaysLeft`,`route`.`Name` AS `RouteName`,`reservation`.`ReservationID` AS `ReservationID` from ((`guide` join `reservation` on((`guide`.`GuideID` = `reservation`.`GuideID`))) join `route` on(((`route`.`AreaName` = `reservation`.`AreaName`) and (`route`.`AreaState` = `reservation`.`AreaState`) and (`route`.`Name` = `reservation`.`RouteName`)))) where (cast(`reservation`.`Date` as date) > curdate()) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `c`
--

/*!50001 DROP VIEW IF EXISTS `c`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `c` AS select `sightseeing`.`Name` AS `SightName`,`sightseeing`.`Type` AS `Type`,`route`.`Name` AS `RouteName` from ((`sightseeing` join `route_sights` on((`sightseeing`.`SightID` = `route_sights`.`SightID`))) join `route` on(((`route_sights`.`RouteName` = `route`.`Name`) and (`route_sights`.`AreaName` = `route`.`AreaName`) and (`route_sights`.`AreaState` = `route`.`AreaState`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `d`
--

/*!50001 DROP VIEW IF EXISTS `d`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `d` AS select `equipment`.`ProductCode` AS `ProductCode`,`equipment`.`Brand` AS `Brand`,`equipment`.`Type` AS `Type`,`equipment`.`Price` AS `Price`,`route`.`Difficulty` AS `Difficulty` from ((`equipment` join `route_equipment` on(((`equipment`.`ProductCode` = `route_equipment`.`ProductCode`) and (`equipment`.`Brand` = `route_equipment`.`Brand`)))) join `route` on(((`route_equipment`.`RouteName` = `route`.`Name`) and (`route_equipment`.`AreaName` = `route`.`AreaName`) and (`route_equipment`.`AreaState` = `route`.`AreaState`)))) order by `route`.`Difficulty` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `e`
--

/*!50001 DROP VIEW IF EXISTS `e`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `e` AS select count(`rating`.`HikerID`) AS `TotalComments`,`hiker`.`Name` AS `Name` from (`rating` join `hiker` on((`rating`.`HikerID` = `hiker`.`HikerID`))) where (`rating`.`Comment` is not null) group by `rating`.`HikerID` order by count(`rating`.`HikerID`) desc */;
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

-- Dump completed on 2020-12-19 16:54:07
