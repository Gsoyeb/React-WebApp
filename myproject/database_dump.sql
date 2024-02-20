-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: reactproject
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `livejobs`
--

DROP TABLE IF EXISTS `livejobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livejobs` (
  `ID` int NOT NULL,
  `MasterJobID` int DEFAULT NULL,
  `PriorityID` int DEFAULT NULL,
  `IsWatchListed` tinyint DEFAULT NULL,
  `IsFlagged` tinyint DEFAULT NULL,
  `CustomerID` int DEFAULT NULL,
  `AccountCode` varchar(50) DEFAULT NULL,
  `AccountName` varchar(100) DEFAULT NULL,
  `VehicleTypeCode` varchar(50) DEFAULT NULL,
  `JourneyShort` varchar(255) DEFAULT NULL,
  `ExceptionDetail` text,
  `ReadyAt` datetime DEFAULT NULL,
  `ETA` datetime DEFAULT NULL,
  `NoLaterThan` datetime DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `VanFill` int DEFAULT NULL,
  `CompletionPercentage` decimal(5,2) DEFAULT NULL,
  `DriverVehicleTypeCode` varchar(50) DEFAULT NULL,
  `DriverVanFill` int DEFAULT NULL,
  `CustomerPrice` decimal(10,2) DEFAULT NULL,
  `DriverPrice` decimal(10,2) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `JobItemStatus` varchar(50) DEFAULT NULL,
  `CallSign` varchar(50) DEFAULT NULL,
  `Action` varchar(100) DEFAULT NULL,
  `IsOutstandingPOB` tinyint DEFAULT NULL,
  `IsOutstandingPOD` tinyint DEFAULT NULL,
  `IsCompleted` tinyint DEFAULT NULL,
  `IsTomorrows` tinyint DEFAULT NULL,
  `DriverMessages` text,
  `IsAllocated` tinyint DEFAULT NULL,
  `IsUnAllocated` tinyint DEFAULT NULL,
  `IsLiveJob` tinyint DEFAULT NULL,
  `IsStandBy` tinyint DEFAULT NULL,
  `IsException` tinyint DEFAULT NULL,
  `IsExternal` tinyint DEFAULT NULL,
  `Performance` int DEFAULT NULL,
  `CountDown` int DEFAULT NULL,
  `Margin` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livejobs`
--

LOCK TABLES `livejobs` WRITE;
/*!40000 ALTER TABLE `livejobs` DISABLE KEYS */;
INSERT INTO `livejobs` VALUES (4023635,NULL,-1,0,0,1330,'Traro01','Training Route','SWB','LE12 9WL -> LE12 9WL','Unallocated','2023-11-23 10:17:56','2023-12-13 14:11:04','2023-11-23 10:17:56','2023-11-23 00:00:00',57,0.00,'XLWB',0,0.00,0.00,'Booked','','CP-KON1','',0,0,0,1,'',1,1,1,0,1,1,-96795,0,0.00),(5010954,NULL,-1,0,0,1329,'Traad01','Training Adhoc','SV','DE72 3HJ -> DE72 3HJ','Unallocated','2024-01-10 08:45:28',NULL,'2024-01-10 08:45:28','2024-01-10 00:00:00',51,0.00,NULL,NULL,22.00,10.00,'Booked','','','',0,0,0,1,'',0,1,1,1,1,1,-27767,0,0.55);
/*!40000 ALTER TABLE `livejobs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-20  0:29:55
