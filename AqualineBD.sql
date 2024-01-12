-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: aq432234
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','admin'),(2,'tima','tima09123');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `ID_клиента` int NOT NULL AUTO_INCREMENT,
  `Имя` varchar(45) NOT NULL,
  `Фамилия` varchar(45) NOT NULL,
  `Адрес` varchar(70) NOT NULL,
  `Номер_телефона` int NOT NULL,
  `Email` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_клиента`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Анатолий','Евреев','Садовая 6',1,'br@mail.ru'),(2,'Сергей','Братов','Удальцова 5',23,'sr@mail.ru'),(3,'Иван','Черников','ВДНХ 32',12345,'sq@mail.com'),(4,'Даниил ','Малых','Пушикна 12',123456,'er.@mail.com'),(5,'Дмитрий','Сериков','Пулково 5',123456,'qw@mail.com'),(6,'Алексей','Аниськин','Афигеево 23',123456,'nn@mail.com'),(7,'Иван','Иванов','Ленина 4',123456,'yy@mail.ru'),(8,'Леонид','Каганский','Аристархово 5',123456,'ii@mail.ru'),(9,'Дамир','Ионов','Афигеево',23456,'po@mail.ru'),(10,'Фатима','Тлисова','Базарная 9',123456,'ii@list.ru'),(11,'Кучук','Братов','Пушкина 8',123456,'pp@mail.ru'),(12,'Игорь','Юсков','МТУСИ 1',1234567,'mf@mail.ru'),(13,'Сергей','Гуриков','Малафеево 32',123456,'lo@mail.ru'),(14,'Леон','Ананин','Андреевская 500',123456,'mam@mail.ru'),(15,'Пудж','Алхимик','2 кэмп эншей',123456,'dota@mail.ru'),(16,'Роман','Савицкий','пипец',123456,'123');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postavki`
--

DROP TABLE IF EXISTS `postavki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `postavki` (
  `ID_Поставки` int NOT NULL AUTO_INCREMENT,
  `ID_Поставщика` int NOT NULL,
  `ID_Продукта` int NOT NULL,
  `Дата_поставки` datetime NOT NULL,
  `Кол_во_едениц_продукта` int NOT NULL,
  `Скмма_поставки` int NOT NULL,
  PRIMARY KEY (`ID_Поставки`),
  KEY `Postavka_idx` (`ID_Поставщика`),
  KEY `Possss_idx` (`ID_Продукта`),
  CONSTRAINT `Possss` FOREIGN KEY (`ID_Продукта`) REFERENCES `products` (`ID_Продутка`),
  CONSTRAINT `Postavka` FOREIGN KEY (`ID_Поставщика`) REFERENCES `postavshiki` (`ID_поставщика`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postavki`
--

LOCK TABLES `postavki` WRITE;
/*!40000 ALTER TABLE `postavki` DISABLE KEYS */;
INSERT INTO `postavki` VALUES (1,1,1,'2021-01-04 00:00:00',1,1),(2,2,4,'2023-11-12 18:01:11',31,10),(3,3,3,'2023-09-12 18:02:04',76,12),(4,2,5,'2023-11-12 18:02:04',123,321);
/*!40000 ALTER TABLE `postavki` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postavshiki`
--

DROP TABLE IF EXISTS `postavshiki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `postavshiki` (
  `ID_поставщика` int NOT NULL AUTO_INCREMENT,
  `Наименование_компании` varchar(45) NOT NULL,
  `Контактное_лицо` varchar(45) NOT NULL,
  `Номер_телефона_поставщика` int NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_поставщика`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postavshiki`
--

LOCK TABLES `postavshiki` WRITE;
/*!40000 ALTER TABLE `postavshiki` DISABLE KEYS */;
INSERT INTO `postavshiki` VALUES (1,'WAterLink','nastya',1456456,'fa@list.ru'),(2,'WaterBall','sergei',123123123,'sq@mail.ru'),(3,'waterMark','anatolii',3212321,'sq@list.ru');
/*!40000 ALTER TABLE `postavshiki` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `ID_Продутка` int NOT NULL AUTO_INCREMENT,
  `Наименование_продукта` varchar(45) NOT NULL,
  `Тип_воды` varchar(45) NOT NULL,
  `Объем_упаковки` decimal(12,0) NOT NULL,
  `Цен_за_еденицу` int NOT NULL,
  PRIMARY KEY (`ID_Продутка`),
  CONSTRAINT `Products` FOREIGN KEY (`ID_Продутка`) REFERENCES `zakazy` (`ID_заказа`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Горная Вершина','Питьевая',1,45),(2,'Эльбрусинка','Сладкая',1,75),(3,'Легенда гор','минеральная',1,35),(4,'Архыз','газированная',1,60),(5,'Для Ляль','детская',1,35),(6,'AQUAGRACIO','Питьевая',1,80),(7,'ЖЕМЧУЖИНА КАВКАЗА','Питьевая',15,300);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sclad`
--

DROP TABLE IF EXISTS `sclad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sclad` (
  `ID_Товара` int NOT NULL,
  `Количесвто_елениц_товара_на_складе` int NOT NULL,
  PRIMARY KEY (`ID_Товара`),
  CONSTRAINT `Sclad` FOREIGN KEY (`ID_Товара`) REFERENCES `products` (`ID_Продутка`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sclad`
--

LOCK TABLES `sclad` WRITE;
/*!40000 ALTER TABLE `sclad` DISABLE KEYS */;
INSERT INTO `sclad` VALUES (1,2),(2,33),(3,32),(4,75),(5,1455),(6,324),(7,123);
/*!40000 ALTER TABLE `sclad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table1`
--

DROP TABLE IF EXISTS `table1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `table1` (
  `ID_Доставки` int NOT NULL AUTO_INCREMENT,
  `ID_Заказа` int NOT NULL,
  `Дата_Доставки` datetime NOT NULL,
  `Статус_Доставки` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_Доставки`),
  KEY `Dst_idx` (`ID_Заказа`),
  CONSTRAINT `Dst` FOREIGN KEY (`ID_Заказа`) REFERENCES `zakazy` (`ID_заказа`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table1`
--

LOCK TABLES `table1` WRITE;
/*!40000 ALTER TABLE `table1` DISABLE KEYS */;
INSERT INTO `table1` VALUES (1,1,'2022-10-05 00:00:00','В пути'),(2,3,'2023-11-12 18:03:51','В дороге'),(3,2,'2023-11-12 18:03:51','проходит упаковку'),(4,3,'2023-11-12 18:03:51','В дороге'),(5,5,'2023-11-12 18:03:51','проходит упаковку'),(6,3,'2023-11-12 18:03:51','В дороге'),(7,1,'2023-11-12 18:03:51','проходит упаковку'),(8,2,'2023-11-12 18:03:51','В пути'),(9,4,'2023-11-12 18:03:51','проходит упаковку'),(10,6,'2023-11-12 18:03:51','В дороге');
/*!40000 ALTER TABLE `table1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int unsigned DEFAULT NULL,
  `login` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `pass` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (NULL,'asdasd','asdasd','asdasd'),(NULL,'serj09','Sergei','123123'),(NULL,'loh123123','loh123','123123'),(NULL,'admin','aslan','c8e90c9356edae2c10d51f6bc8ca24e7'),(NULL,'aqer123','Sergei','c8e90c9356edae2c10d51f6bc8ca24e7'),(NULL,'123123','123123','c8e90c9356edae2c10d51f6bc8ca24e7'),(NULL,'321321','321321','4c1465d9b1f450c24c610e51aac0270c'),(NULL,'1232222','321123','ab43e9cf4939a24634654559dfc0c3db'),(NULL,'admin','asdasd','c8e90c9356edae2c10d51f6bc8ca24e7');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_product_stock`
--

DROP TABLE IF EXISTS `view_product_stock`;
/*!50001 DROP VIEW IF EXISTS `view_product_stock`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_product_stock` AS SELECT 
 1 AS `ID_продутка`,
 1 AS `Наименование_продукта`,
 1 AS `Тип_воды`,
 1 AS `Количесвто_елениц_товара_на_складе`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_supplier_total_cost`
--

DROP TABLE IF EXISTS `view_supplier_total_cost`;
/*!50001 DROP VIEW IF EXISTS `view_supplier_total_cost`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_supplier_total_cost` AS SELECT 
 1 AS `ID_поставщика`,
 1 AS `Наименование_компании`,
 1 AS `Суммарная_стоимость_поставок`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `zakazy`
--

DROP TABLE IF EXISTS `zakazy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zakazy` (
  `ID_заказа` int NOT NULL AUTO_INCREMENT,
  `ID_клиента` int NOT NULL,
  `Дата_заказа` datetime NOT NULL,
  `Статус_заказа` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_заказа`),
  KEY `Clients_idx` (`ID_клиента`),
  CONSTRAINT `Clients` FOREIGN KEY (`ID_клиента`) REFERENCES `clients` (`ID_клиента`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zakazy`
--

LOCK TABLES `zakazy` WRITE;
/*!40000 ALTER TABLE `zakazy` DISABLE KEYS */;
INSERT INTO `zakazy` VALUES (1,1,'2022-02-01 00:00:00','в пути'),(2,2,'2022-02-01 00:00:00','в обработке'),(3,2,'2022-02-02 00:00:00','в обработке'),(4,15,'2023-12-12 17:43:18','в пути'),(5,15,'2023-10-12 17:43:18','в пути'),(6,3,'2023-11-14 19:13:16','в обработке'),(7,4,'2023-11-14 19:13:16','в обработке'),(8,3,'2023-11-14 19:13:16','выполнен'),(9,3,'2023-11-14 19:13:16','выполнен'),(10,1,'2023-11-14 19:13:16','выполнен'),(11,9,'2023-11-14 19:13:16','в пути'),(12,2,'2023-11-14 19:13:16','в обработке'),(13,5,'2023-11-14 19:13:16','в пути'),(14,6,'2023-11-14 19:13:16','в обработке'),(15,7,'2023-11-14 19:13:16','в пути'),(16,8,'2023-11-14 19:13:16','в обработке'),(17,9,'2023-11-14 19:13:16','в пути'),(19,10,'2023-11-14 19:13:16','в обработке'),(20,11,'2023-11-14 19:13:16','в пути'),(21,12,'2023-11-14 19:13:16','в обработке'),(22,13,'2023-11-14 19:13:16','в пути'),(23,14,'2023-11-14 19:13:16','в обработке'),(24,16,'2023-11-14 19:13:16','в пути'),(25,12,'2023-11-14 19:13:16','в обработке');
/*!40000 ALTER TABLE `zakazy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'aq432234'
--

--
-- Dumping routines for database 'aq432234'
--

--
-- Final view structure for view `view_product_stock`
--

/*!50001 DROP VIEW IF EXISTS `view_product_stock`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_product_stock` AS select `products`.`ID_Продутка` AS `ID_продутка`,`products`.`Наименование_продукта` AS `Наименование_продукта`,`products`.`Тип_воды` AS `Тип_воды`,`sclad`.`Количесвто_елениц_товара_на_складе` AS `Количесвто_елениц_товара_на_складе` from (`products` join `sclad` on((`products`.`ID_Продутка` = `sclad`.`ID_Товара`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_supplier_total_cost`
--

/*!50001 DROP VIEW IF EXISTS `view_supplier_total_cost`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_supplier_total_cost` AS select `postavshiki`.`ID_поставщика` AS `ID_поставщика`,`postavshiki`.`Наименование_компании` AS `Наименование_компании`,sum(`postavki`.`ID_Поставки`) AS `Суммарная_стоимость_поставок` from (`postavshiki` join `postavki` on((`postavshiki`.`ID_поставщика` = `postavshiki`.`ID_поставщика`))) group by `postavshiki`.`ID_поставщика`,`postavshiki`.`Наименование_компании` */;
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

-- Dump completed on 2024-01-12 18:32:03
