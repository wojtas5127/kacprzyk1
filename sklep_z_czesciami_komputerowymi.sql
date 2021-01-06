-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: sklep
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `klienci`
--

DROP TABLE IF EXISTS `klienci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `klienci` (
  `ID_klienta` int NOT NULL AUTO_INCREMENT,
  `Imie` varchar(20) DEFAULT NULL,
  `Nazwisko` varchar(40) DEFAULT NULL,
  `PESEL` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`ID_klienta`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `klienci`
--

LOCK TABLES `klienci` WRITE;
/*!40000 ALTER TABLE `klienci` DISABLE KEYS */;
INSERT INTO `klienci` VALUES (1,'Jan','Kowalski','43567845345'),(2,'Marek','Nowak','29537434478'),(3,'Jacek','Martyniuk','56723467890'),(4,'Mateusz','Szczypczuk','65467243567'),(5,'Marcin','Jakubiak','87572348974'),(6,'Michał','Majkut','73654837473'),(7,'Mikołaj','Szczypczuk','24356987457'),(8,'Piotrek','Stoch','97863458672'),(9,'Paweł','Rozenek','6731245645'),(10,'Wojciech','Skrzypczak','00876342345'),(11,'Patryk','Mateczak','99232348683');
/*!40000 ALTER TABLE `klienci` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kurierzy`
--

DROP TABLE IF EXISTS `kurierzy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kurierzy` (
  `ID_kuriera` int NOT NULL AUTO_INCREMENT,
  `Nazwa` varchar(80) DEFAULT NULL,
  `Cena` int DEFAULT NULL,
  PRIMARY KEY (`ID_kuriera`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kurierzy`
--

LOCK TABLES `kurierzy` WRITE;
/*!40000 ALTER TABLE `kurierzy` DISABLE KEYS */;
INSERT INTO `kurierzy` VALUES (1,'UPS',24),(2,'DHL',22),(3,'InPost',19),(4,'Pocztex',23),(5,'DHL Parcel',22),(6,'TNT',27),(7,'FedEx',22);
/*!40000 ALTER TABLE `kurierzy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pracownicy`
--

DROP TABLE IF EXISTS `pracownicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pracownicy` (
  `ID_pracownika` int NOT NULL AUTO_INCREMENT,
  `Imie` varchar(40) DEFAULT NULL,
  `Nazwisko` varchar(40) DEFAULT NULL,
  `numer_pracownika` int DEFAULT NULL,
  PRIMARY KEY (`ID_pracownika`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pracownicy`
--

LOCK TABLES `pracownicy` WRITE;
/*!40000 ALTER TABLE `pracownicy` DISABLE KEYS */;
INSERT INTO `pracownicy` VALUES (1,'Adam','Spychalski',43562),(2,'Bartek','Milewski',63217),(3,'Andrzej','Wrocławski',95643),(4,'Mariusz','Poznański',14598),(5,'Dariusz','Obuchowski',43278),(6,'Kamil','Suchodolski',99876),(7,'Damian','Garczewski',37846),(8,'Adrian','Barczewski',76543),(9,'Oliwier','Patecki',42136);
/*!40000 ALTER TABLE `pracownicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produkty`
--

DROP TABLE IF EXISTS `produkty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produkty` (
  `ID_produktu` int NOT NULL AUTO_INCREMENT,
  `Nazwa` varchar(80) DEFAULT NULL,
  `Typ` varchar(20) DEFAULT NULL,
  `Cena` int DEFAULT NULL,
  `Producent` varchar(30) DEFAULT NULL,
  `data_aktualizacji` date DEFAULT NULL,
  PRIMARY KEY (`ID_produktu`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produkty`
--

LOCK TABLES `produkty` WRITE;
/*!40000 ALTER TABLE `produkty` DISABLE KEYS */;
INSERT INTO `produkty` VALUES (1,'Procesor Intel Core i5-10400F','Procesor',699,'Intel',NULL),(2,'Procesor AMD Ryzen 5 3600','Procesor',1099,'AMD',NULL),(3,'Karta graficzna Gigabyte GeForce GTX 1050Ti Windforce OC 4GB','Karta graficzna',760,'Gigabyte','2021-01-06'),(4,'Karta graficzna Gigabyte Radeon RX 570 Gaming 8GB','Karta garficzna',1199,'Gigabyte',NULL),(5,'Płyta główna MSI B450M PRO-VDH MAX','Płyta główna',355,'MSI',NULL),(6,'Płyta główna Gigabyte X570 GAMING X','Płyta główna',769,'Gigabyte',NULL),(7,'Pamięć Corsair Vengeance RGB PRO, DDR4, 16 GB, 3200MHz, CL16','Pamięć RAM',404,'Corsair',NULL),(8,'Pamięć HyperX Fury RGB, DDR4, 16 GB, 3200MHz, CL16','Pamięć RAM',369,'HyperX',NULL),(9,'Zasilacz SilentiumPC Vero L3 500W','Zasilacz',207,'SilentiumPC',NULL),(10,'Zasilacz be quiet! SYSTEM POWER 9 500W','Zasilacz',249,'be quiet!',NULL),(11,'Obudowa Genesis Irid 400 ARGB','Obudowa',308,'Genesis',NULL);
/*!40000 ALTER TABLE `produkty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zamowienia`
--

DROP TABLE IF EXISTS `zamowienia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zamowienia` (
  `ID_zamowienia` int NOT NULL AUTO_INCREMENT,
  `ID_klienta` int DEFAULT NULL,
  `ID_produktu` int DEFAULT NULL,
  `ID_kuriera` int DEFAULT NULL,
  `ID_pracownika` int DEFAULT NULL,
  `data_zamowienia` date DEFAULT NULL,
  PRIMARY KEY (`ID_zamowienia`),
  KEY `fk_ID_klient` (`ID_klienta`),
  KEY `fk_ID_produkt` (`ID_produktu`),
  KEY `fk_ID_kurier` (`ID_kuriera`),
  KEY `fk_ID_pracownik` (`ID_pracownika`),
  CONSTRAINT `fk_ID_klient` FOREIGN KEY (`ID_klienta`) REFERENCES `klienci` (`ID_klienta`),
  CONSTRAINT `fk_ID_kurier` FOREIGN KEY (`ID_kuriera`) REFERENCES `kurierzy` (`ID_kuriera`),
  CONSTRAINT `fk_ID_pracownik` FOREIGN KEY (`ID_pracownika`) REFERENCES `pracownicy` (`ID_pracownika`),
  CONSTRAINT `fk_ID_produkt` FOREIGN KEY (`ID_produktu`) REFERENCES `produkty` (`ID_produktu`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zamowienia`
--

LOCK TABLES `zamowienia` WRITE;
/*!40000 ALTER TABLE `zamowienia` DISABLE KEYS */;
INSERT INTO `zamowienia` VALUES (1,3,6,1,4,'2019-01-18'),(2,1,7,1,2,'2019-09-26'),(3,2,1,3,3,'2019-09-29'),(4,3,11,7,4,'1019-08-16'),(5,5,5,6,5,'2020-03-19'),(6,7,8,3,5,'2020-01-23'),(7,11,9,2,8,'2019-05-05'),(8,10,10,1,8,'2019-07-14'),(9,1,5,2,9,'2019-12-19'),(10,3,6,5,5,'2020-09-14'),(11,4,7,2,7,'2018-03-02'),(13,11,10,7,8,'2018-12-01');
/*!40000 ALTER TABLE `zamowienia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `zapytanie1`
--

DROP TABLE IF EXISTS `zapytanie1`;
/*!50001 DROP VIEW IF EXISTS `zapytanie1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `zapytanie1` AS SELECT 
 1 AS `data_zamowienia`,
 1 AS `nazwisko`,
 1 AS `imie`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `zapytanie10`
--

DROP TABLE IF EXISTS `zapytanie10`;
/*!50001 DROP VIEW IF EXISTS `zapytanie10`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `zapytanie10` AS SELECT 
 1 AS `ID_klienta`,
 1 AS `Imie`,
 1 AS `Nazwisko`,
 1 AS `PESEL`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `zapytanie2`
--

DROP TABLE IF EXISTS `zapytanie2`;
/*!50001 DROP VIEW IF EXISTS `zapytanie2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `zapytanie2` AS SELECT 
 1 AS `ID_zamowienia`,
 1 AS `ID_produktu`,
 1 AS `data_zamowienia`,
 1 AS `Nazwa`,
 1 AS `Typ`,
 1 AS `cena`,
 1 AS `Producent`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `zapytanie3`
--

DROP TABLE IF EXISTS `zapytanie3`;
/*!50001 DROP VIEW IF EXISTS `zapytanie3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `zapytanie3` AS SELECT 
 1 AS `ID_produktu`,
 1 AS `Nazwa`,
 1 AS `Typ`,
 1 AS `Cena`,
 1 AS `Producent`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `zapytanie4`
--

DROP TABLE IF EXISTS `zapytanie4`;
/*!50001 DROP VIEW IF EXISTS `zapytanie4`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `zapytanie4` AS SELECT 
 1 AS `ID_produktu`,
 1 AS `Nazwa`,
 1 AS `Typ`,
 1 AS `Cena`,
 1 AS `Producent`,
 1 AS `data_aktualizacji`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `zapytanie5`
--

DROP TABLE IF EXISTS `zapytanie5`;
/*!50001 DROP VIEW IF EXISTS `zapytanie5`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `zapytanie5` AS SELECT 
 1 AS `ID_klienta`,
 1 AS `Imie`,
 1 AS `Nazwisko`,
 1 AS `id_zamowienia`,
 1 AS `data_zamowienia`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `zapytanie6`
--

DROP TABLE IF EXISTS `zapytanie6`;
/*!50001 DROP VIEW IF EXISTS `zapytanie6`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `zapytanie6` AS SELECT 
 1 AS `COUNT(ID_kuriera)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `zapytanie7`
--

DROP TABLE IF EXISTS `zapytanie7`;
/*!50001 DROP VIEW IF EXISTS `zapytanie7`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `zapytanie7` AS SELECT 
 1 AS `ID_kuriera`,
 1 AS `Nazwa`,
 1 AS `Cena`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `zapytanie8`
--

DROP TABLE IF EXISTS `zapytanie8`;
/*!50001 DROP VIEW IF EXISTS `zapytanie8`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `zapytanie8` AS SELECT 
 1 AS `COUNT(producent)`,
 1 AS `typ`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `zapytanie9`
--

DROP TABLE IF EXISTS `zapytanie9`;
/*!50001 DROP VIEW IF EXISTS `zapytanie9`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `zapytanie9` AS SELECT 
 1 AS `ID_zamowienia`,
 1 AS `ID_pracownika`,
 1 AS `data_zamowienia`,
 1 AS `numer_pracownika`,
 1 AS `imie`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `zapytanie1`
--

/*!50001 DROP VIEW IF EXISTS `zapytanie1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `zapytanie1` AS select `zamowienia`.`data_zamowienia` AS `data_zamowienia`,`klienci`.`Nazwisko` AS `nazwisko`,`klienci`.`Imie` AS `imie` from (`klienci` join `zamowienia` on((`klienci`.`ID_klienta` = `zamowienia`.`ID_klienta`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `zapytanie10`
--

/*!50001 DROP VIEW IF EXISTS `zapytanie10`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `zapytanie10` AS select `klienci`.`ID_klienta` AS `ID_klienta`,`klienci`.`Imie` AS `Imie`,`klienci`.`Nazwisko` AS `Nazwisko`,`klienci`.`PESEL` AS `PESEL` from `klienci` where (`klienci`.`Imie` like 'M%') group by `klienci`.`ID_klienta` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `zapytanie2`
--

/*!50001 DROP VIEW IF EXISTS `zapytanie2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `zapytanie2` AS select `zamowienia`.`ID_zamowienia` AS `ID_zamowienia`,`zamowienia`.`ID_produktu` AS `ID_produktu`,`zamowienia`.`data_zamowienia` AS `data_zamowienia`,`produkty`.`Nazwa` AS `Nazwa`,`produkty`.`Typ` AS `Typ`,`produkty`.`Cena` AS `cena`,`produkty`.`Producent` AS `Producent` from (`zamowienia` left join `produkty` on((`zamowienia`.`ID_produktu` = `produkty`.`ID_produktu`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `zapytanie3`
--

/*!50001 DROP VIEW IF EXISTS `zapytanie3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `zapytanie3` AS select `produkty`.`ID_produktu` AS `ID_produktu`,`produkty`.`Nazwa` AS `Nazwa`,`produkty`.`Typ` AS `Typ`,`produkty`.`Cena` AS `Cena`,`produkty`.`Producent` AS `Producent` from `produkty` where (`produkty`.`Cena` > (select avg(`produkty`.`Cena`) from `produkty`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `zapytanie4`
--

/*!50001 DROP VIEW IF EXISTS `zapytanie4`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `zapytanie4` AS select `produkty`.`ID_produktu` AS `ID_produktu`,`produkty`.`Nazwa` AS `Nazwa`,`produkty`.`Typ` AS `Typ`,`produkty`.`Cena` AS `Cena`,`produkty`.`Producent` AS `Producent`,`produkty`.`data_aktualizacji` AS `data_aktualizacji` from `produkty` order by `produkty`.`Cena` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `zapytanie5`
--

/*!50001 DROP VIEW IF EXISTS `zapytanie5`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `zapytanie5` AS select `klienci`.`ID_klienta` AS `ID_klienta`,`klienci`.`Imie` AS `Imie`,`klienci`.`Nazwisko` AS `Nazwisko`,`zamowienia`.`ID_zamowienia` AS `id_zamowienia`,`zamowienia`.`data_zamowienia` AS `data_zamowienia` from (`zamowienia` left join `klienci` on((`klienci`.`ID_klienta` = `zamowienia`.`ID_klienta`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `zapytanie6`
--

/*!50001 DROP VIEW IF EXISTS `zapytanie6`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `zapytanie6` AS select count(`zamowienia`.`ID_kuriera`) AS `COUNT(ID_kuriera)` from `zamowienia` where (`zamowienia`.`ID_kuriera` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `zapytanie7`
--

/*!50001 DROP VIEW IF EXISTS `zapytanie7`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `zapytanie7` AS select `kurierzy`.`ID_kuriera` AS `ID_kuriera`,`kurierzy`.`Nazwa` AS `Nazwa`,`kurierzy`.`Cena` AS `Cena` from `kurierzy` where (`kurierzy`.`Cena` = (select min(`kurierzy`.`Cena`) from `kurierzy`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `zapytanie8`
--

/*!50001 DROP VIEW IF EXISTS `zapytanie8`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `zapytanie8` AS select count(`produkty`.`Producent`) AS `COUNT(producent)`,`produkty`.`Typ` AS `typ` from `produkty` group by `produkty`.`Typ` order by count(`produkty`.`Producent`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `zapytanie9`
--

/*!50001 DROP VIEW IF EXISTS `zapytanie9`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `zapytanie9` AS select distinct `zamowienia`.`ID_zamowienia` AS `ID_zamowienia`,`zamowienia`.`ID_pracownika` AS `ID_pracownika`,`zamowienia`.`data_zamowienia` AS `data_zamowienia`,`pracownicy`.`numer_pracownika` AS `numer_pracownika`,`pracownicy`.`Imie` AS `imie` from (`zamowienia` join `pracownicy` on((`zamowienia`.`ID_pracownika` = `pracownicy`.`ID_pracownika`))) */;
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

-- Dump completed on 2021-01-06 19:41:22
