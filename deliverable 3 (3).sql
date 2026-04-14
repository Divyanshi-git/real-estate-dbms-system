-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: realestate
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `agent`
--

DROP TABLE IF EXISTS `agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agent` (
  `agent_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `experience_years` int DEFAULT NULL,
  PRIMARY KEY (`agent_id`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `email` (`email`),
  CONSTRAINT `agent_chk_1` CHECK ((`experience_years` >= 0)),
  CONSTRAINT `agent_chk_2` CHECK ((length(`phone`) = 10)),
  CONSTRAINT `agent_chk_3` CHECK ((`email` like _utf8mb4'%@%.%'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent`
--

LOCK TABLES `agent` WRITE;
/*!40000 ALTER TABLE `agent` DISABLE KEYS */;
INSERT INTO `agent` VALUES (201,'Rakesh Das','9876500001','rakesh.das@estate.com',8),(202,'Megha Sharma','9876500002','megha.sharma@estate.com',5),(203,'Arjun Kalita','9876500003','arjun.kalita@estate.com',6),(204,'Neha Roy','9876500004','neha.roy@estate.com',4),(205,'Sanjay Gupta','9876500005','sanjay.gupta@estate.com',10),(206,'Rahul Jain','9876500006','rahul.jain@estate.com',7),(207,'Vikas Singh','9876500007','vikas.singh@estate.com',6),(208,'Pooja Sen','9876500008','pooja.sen@estate.com',4),(209,'Amit Verma','9876500009','amit.verma@estate.com',9),(210,'Karan Mehta','9876500010','karan.mehta@estate.com',6),(211,'Sunita Rao','9876500011','sunita.rao@estate.com',3),(212,'Deepak Nair','9876500012','deepak.nair@estate.com',12),(213,'Priya Menon','9876500013','priya.menon@estate.com',7),(214,'Rohit Bose','9876500014','rohit.bose@estate.com',5),(215,'Kavya Pillai','9876500015','kavya.pillai@estate.com',2),(216,'Rahul Verma','9876500017','rahul.verma@estate.com',2);
/*!40000 ALTER TABLE `agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `client_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`client_id`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `email` (`email`),
  CONSTRAINT `client_chk_1` CHECK ((length(`phone`) = 10)),
  CONSTRAINT `client_chk_2` CHECK ((`email` like _utf8mb4'%@%.%'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (301,'Aman Sharma','9000000001','aman.sharma@gmail.com'),(302,'Riya Agarwal','9000000002','riya.agarwal@gmail.com'),(303,'Kunal Shah','9000000003','kunal.shah@gmail.com'),(304,'Sneha Dutta','9000000004','sneha.dutta@gmail.com'),(305,'Rahul Mehta','9000000005','rahul.mehta@gmail.com'),(306,'Ankit Jain','9000000006','ankit.jain@gmail.com'),(307,'Neha Kapoor','9000000007','neha.kapoor@gmail.com'),(308,'Vikas Roy','9000000008','vikas.roy@gmail.com'),(309,'Pooja Sharma','9000000009','pooja.sharma@gmail.com'),(310,'Kriti Singh','9000000010','kriti.singh@gmail.com'),(311,'Aryan Kapoor','9000000011','aryan.kapoor@gmail.com'),(312,'Simran Gill','9000000012','simran.gill@gmail.com'),(313,'Rohan Das','9000000013','rohan.das@gmail.com'),(314,'Meera Iyer','9000000014','meera.iyer@gmail.com'),(315,'Tarun Saxena','9000000015','tarun.saxena@gmail.com'),(316,'Anjali Tiwari','9000000016','anjali.tiwari@gmail.com'),(317,'Siddharth Rao','9000000017','siddharth.rao@gmail.com'),(318,'Divya Nair','9000000018','divya.nair@gmail.com'),(319,'Karan Chopra','9000000019','karan.chopra@gmail.com'),(320,'Aisha Patel','9000000020','aisha.patel@gmail.com');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locality`
--

DROP TABLE IF EXISTS `locality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locality` (
  `locality_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  PRIMARY KEY (`locality_id`),
  UNIQUE KEY `name` (`name`,`city`),
  CONSTRAINT `locality_chk_1` CHECK (((`name` <> _utf8mb4'') and (`city` <> _utf8mb4'')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locality`
--

LOCK TABLES `locality` WRITE;
/*!40000 ALTER TABLE `locality` DISABLE KEYS */;
INSERT INTO `locality` VALUES (106,'Andheri','Mumbai'),(115,'Anna Nagar','Chennai'),(105,'Bandra','Mumbai'),(112,'Banjara Hills','Hyderabad'),(102,'Beltola','Guwahati'),(107,'Connaught Place','Delhi'),(101,'GS Road','Guwahati'),(109,'Indiranagar','Bangalore'),(111,'Jubilee Hills','Hyderabad'),(113,'Koregaon Park','Pune'),(116,'Noida','Uttar Pradesh'),(104,'Park Street','Kolkata'),(108,'Saket','Delhi'),(103,'Salt Lake','Kolkata'),(114,'Viman Nagar','Pune'),(110,'Whitefield','Bangalore');
/*!40000 ALTER TABLE `locality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participates`
--

DROP TABLE IF EXISTS `participates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participates` (
  `transaction_id` int NOT NULL,
  `client_id` int NOT NULL,
  `role` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`,`client_id`),
  UNIQUE KEY `transaction_id` (`transaction_id`,`role`),
  KEY `client_id` (`client_id`),
  CONSTRAINT `participates_ibfk_1` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`transaction_id`),
  CONSTRAINT `participates_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `client` (`client_id`),
  CONSTRAINT `participates_chk_1` CHECK ((`role` in (_utf8mb4'buyer',_utf8mb4'seller',_utf8mb4'tenant',_utf8mb4'owner')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participates`
--

LOCK TABLES `participates` WRITE;
/*!40000 ALTER TABLE `participates` DISABLE KEYS */;
INSERT INTO `participates` VALUES (501,301,'buyer'),(501,302,'seller'),(502,303,'buyer'),(502,304,'seller'),(503,305,'buyer'),(503,306,'seller'),(504,307,'buyer'),(504,308,'seller'),(505,309,'buyer'),(505,310,'seller'),(506,309,'buyer'),(506,310,'seller'),(507,311,'buyer'),(507,312,'seller'),(508,313,'buyer'),(508,314,'seller'),(509,315,'buyer'),(509,316,'seller'),(510,317,'buyer'),(510,318,'seller'),(511,302,'owner'),(511,301,'tenant'),(512,304,'owner'),(512,303,'tenant'),(513,306,'owner'),(513,305,'tenant'),(514,308,'owner'),(514,307,'tenant'),(515,311,'buyer'),(515,312,'seller'),(516,313,'buyer'),(516,314,'seller'),(517,315,'buyer'),(517,316,'seller'),(518,317,'buyer'),(518,318,'seller'),(519,319,'buyer'),(519,320,'seller'),(520,311,'buyer'),(520,313,'seller'),(521,312,'buyer'),(521,314,'seller'),(522,315,'buyer'),(522,316,'seller'),(523,317,'buyer'),(523,318,'seller'),(524,319,'buyer'),(524,320,'seller'),(525,301,'buyer'),(525,311,'seller'),(526,303,'buyer'),(526,312,'seller'),(527,305,'buyer'),(527,313,'seller'),(528,307,'buyer'),(528,314,'seller'),(529,309,'buyer'),(529,315,'seller'),(530,301,'owner'),(530,302,'tenant'),(531,303,'owner'),(531,304,'tenant'),(532,311,'owner'),(532,306,'tenant'),(533,311,'owner'),(533,308,'tenant'),(534,312,'owner'),(534,310,'tenant'),(535,317,'owner'),(535,312,'tenant'),(536,313,'owner'),(536,314,'tenant'),(537,315,'owner'),(537,316,'tenant'),(550,315,'buyer'),(550,309,'seller'),(601,301,'buyer'),(601,305,'seller');
/*!40000 ALTER TABLE `participates` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `role_check` BEFORE INSERT ON `participates` FOR EACH ROW BEGIN
    DECLARE t VARCHAR(10);

    SELECT transaction_type INTO t
    FROM transactions
    WHERE transaction_id = NEW.transaction_id;

    IF t='sale' AND NEW.role NOT IN ('buyer','seller') THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT='Invalid role for sale';
    END IF;

    IF t='rent' AND NEW.role NOT IN ('tenant','owner') THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT='Invalid role for rent';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property` (
  `property_id` int NOT NULL,
  `locality_id` int NOT NULL,
  `agent_id` int NOT NULL,
  `address` varchar(255) NOT NULL,
  `size_sqft` int DEFAULT NULL,
  `bedrooms` int DEFAULT NULL,
  `bathrooms` int DEFAULT NULL,
  `years_of_construction` int DEFAULT NULL,
  `listing_price` decimal(12,2) DEFAULT NULL,
  `monthly_rent` decimal(10,2) DEFAULT NULL,
  `furnished_status` varchar(20) DEFAULT NULL,
  `property_type` varchar(20) DEFAULT NULL,
  `listing_date` date DEFAULT NULL,
  PRIMARY KEY (`property_id`),
  KEY `locality_id` (`locality_id`),
  KEY `agent_id` (`agent_id`),
  CONSTRAINT `property_ibfk_1` FOREIGN KEY (`locality_id`) REFERENCES `locality` (`locality_id`),
  CONSTRAINT `property_ibfk_2` FOREIGN KEY (`agent_id`) REFERENCES `agent` (`agent_id`),
  CONSTRAINT `property_chk_1` CHECK ((`size_sqft` > 0)),
  CONSTRAINT `property_chk_2` CHECK ((`bedrooms` >= 0)),
  CONSTRAINT `property_chk_3` CHECK ((`bathrooms` >= 0)),
  CONSTRAINT `property_chk_4` CHECK ((`years_of_construction` >= 1800)),
  CONSTRAINT `property_chk_5` CHECK (((`listing_price` is null) or (`listing_price` > 0))),
  CONSTRAINT `property_chk_6` CHECK (((`monthly_rent` is null) or (`monthly_rent` > 0))),
  CONSTRAINT `property_chk_7` CHECK ((`furnished_status` in (_utf8mb4'furnished',_utf8mb4'semi-furnished',_utf8mb4'unfurnished'))),
  CONSTRAINT `property_chk_8` CHECK ((`property_type` in (_utf8mb4'flat',_utf8mb4'villa',_utf8mb4'bungalow',_utf8mb4'penthouse')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` VALUES (401,101,201,'3BHK GS Road',1500,3,2,2020,5500000.00,22000.00,'furnished','flat','2023-01-10'),(402,103,202,'2BHK Salt Lake',1100,2,2,2021,3200000.00,15000.00,'semi-furnished','flat','2023-02-15'),(403,105,203,'Villa Bandra',3000,5,4,2020,12000000.00,50000.00,'furnished','villa','2023-03-01'),(404,107,204,'Studio CP Delhi',600,1,1,2022,1800000.00,10000.00,'unfurnished','flat','2023-04-01'),(405,109,205,'Bungalow Indiranagar',2000,4,3,2021,7500000.00,30000.00,'semi-furnished','bungalow','2023-05-10'),(406,102,206,'2BHK Beltola',1200,2,2,2022,3500000.00,17000.00,'semi-furnished','flat','2023-06-01'),(407,104,207,'3BHK Park Street',1800,3,3,2021,6000000.00,25000.00,'furnished','flat','2023-07-01'),(408,106,208,'1BHK Andheri',700,1,1,2023,2000000.00,12000.00,'unfurnished','flat','2023-08-01'),(409,108,209,'4BHK Saket',2500,4,3,2020,9000000.00,35000.00,'furnished','villa','2023-09-01'),(410,110,210,'3BHK Whitefield',1600,3,2,2022,5800000.00,23000.00,'semi-furnished','flat','2023-10-01'),(411,101,201,'2BHK GS Road New',1300,2,2,2024,4200000.00,13000.00,'semi-furnished','flat','2024-01-05'),(412,101,211,'3BHK GS Road Budget',1400,3,2,2018,3800000.00,14000.00,'unfurnished','flat','2018-06-10'),(413,102,212,'Penthouse Beltola',2200,3,3,2024,8500000.00,40000.00,'furnished','penthouse','2024-02-01'),(414,111,213,'3BHK Jubilee Hills',1700,3,2,2018,5200000.00,21000.00,'semi-furnished','flat','2018-03-20'),(415,112,214,'Villa Banjara Hills',3500,5,4,2018,15000000.00,60000.00,'furnished','villa','2018-07-15'),(416,113,215,'2BHK Koregaon Park',1050,2,1,2019,2900000.00,14500.00,'semi-furnished','flat','2019-04-01'),(417,114,201,'Studio Viman Nagar',550,1,1,2023,1600000.00,9000.00,'unfurnished','flat','2023-11-01'),(418,115,202,'3BHK Anna Nagar',1650,3,2,2020,5100000.00,20000.00,'furnished','flat','2023-12-01'),(419,109,203,'2BHK Indiranagar',1000,2,1,2018,3000000.00,12000.00,'semi-furnished','flat','2018-05-10'),(420,110,204,'Penthouse Whitefield',2800,4,3,2021,11000000.00,45000.00,'furnished','penthouse','2022-01-15'),(421,103,205,'4BHK Salt Lake',2100,4,3,2019,7200000.00,28000.00,'furnished','flat','2022-03-10'),(422,104,206,'1BHK Park Street',650,1,1,2022,2200000.00,11000.00,'unfurnished','flat','2022-05-20'),(423,107,207,'2BHK CP Delhi',1100,2,2,2018,4100000.00,17000.00,'semi-furnished','flat','2018-08-01'),(424,108,208,'Bungalow Saket',2600,4,4,2019,9800000.00,38000.00,'furnished','bungalow','2022-07-01'),(425,105,209,'1BHK Bandra',680,1,1,2023,2400000.00,13500.00,'unfurnished','flat','2023-06-15'),(426,116,216,'2bhk flat',680,2,3,2023,250000.00,13500.00,'unfurnished','flat','2023-05-17');
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_image`
--

DROP TABLE IF EXISTS `property_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_image` (
  `property_id` int NOT NULL,
  `image_no` int NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`property_id`,`image_no`),
  CONSTRAINT `property_image_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property` (`property_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_image`
--

LOCK TABLES `property_image` WRITE;
/*!40000 ALTER TABLE `property_image` DISABLE KEYS */;
INSERT INTO `property_image` VALUES (401,1,'img1.jpg','living room'),(402,1,'img2.jpg','kitchen'),(403,1,'img3.jpg','garden'),(404,1,'img4.jpg','studio'),(405,1,'img5.jpg','front view'),(406,1,'img6.jpg','hall'),(407,1,'img7.jpg','balcony'),(408,1,'img8.jpg','bedroom'),(409,1,'img9.jpg','pool'),(410,1,'img10.jpg','interior'),(411,1,'img11.jpg','living room'),(412,1,'img12.jpg','bedroom'),(413,1,'img13.jpg','terrace'),(414,1,'img14.jpg','kitchen'),(415,1,'img15.jpg','garden'),(416,1,'img16.jpg','hall'),(417,1,'img17.jpg','studio view'),(418,1,'img18.jpg','balcony'),(419,1,'img19.jpg','bedroom'),(420,1,'img20.jpg','pool'),(421,1,'img21.jpg','dining'),(422,1,'img22.jpg','bedroom'),(423,1,'img23.jpg','living room'),(424,1,'img24.jpg','garden'),(425,1,'img25.jpg','sea view');
/*!40000 ALTER TABLE `property_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `transaction_id` int NOT NULL,
  `property_id` int NOT NULL,
  `agent_id` int NOT NULL,
  `transaction_type` enum('sale','rent') NOT NULL,
  `transaction_amount` decimal(12,2) NOT NULL,
  `transaction_date` date NOT NULL,
  `rent_start_date` date DEFAULT NULL,
  `rent_end_date` date DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `property_id` (`property_id`),
  KEY `agent_id` (`agent_id`),
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property` (`property_id`),
  CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`agent_id`) REFERENCES `agent` (`agent_id`),
  CONSTRAINT `transactions_chk_1` CHECK ((`transaction_amount` > 0)),
  CONSTRAINT `transactions_chk_2` CHECK ((((`transaction_type` = _utf8mb4'sale') and (`rent_start_date` is null) and (`rent_end_date` is null)) or ((`transaction_type` = _utf8mb4'rent') and (`rent_start_date` is not null) and (`rent_end_date` is not null) and (`rent_end_date` > `rent_start_date`))))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (501,401,201,'sale',5600000.00,'2023-01-15',NULL,NULL),(502,402,202,'sale',3300000.00,'2023-02-20',NULL,NULL),(503,403,203,'sale',12500000.00,'2023-03-10',NULL,NULL),(504,404,204,'sale',1900000.00,'2023-04-10',NULL,NULL),(505,405,205,'sale',7700000.00,'2023-05-15',NULL,NULL),(506,406,206,'sale',3600000.00,'2023-06-10',NULL,NULL),(507,407,207,'sale',6100000.00,'2023-07-10',NULL,NULL),(508,408,208,'sale',2100000.00,'2023-08-10',NULL,NULL),(509,409,209,'sale',9200000.00,'2023-09-10',NULL,NULL),(510,410,210,'sale',5900000.00,'2023-10-10',NULL,NULL),(511,401,201,'rent',22000.00,'2023-02-01','2023-02-01','2023-08-01'),(512,402,202,'rent',15000.00,'2023-03-01','2023-03-01','2023-09-01'),(513,406,206,'rent',17000.00,'2023-07-01','2023-07-01','2024-01-01'),(514,408,208,'rent',12000.00,'2023-09-01','2023-09-01','2024-03-01'),(515,412,211,'sale',3900000.00,'2018-07-01',NULL,NULL),(516,414,213,'sale',5300000.00,'2018-04-15',NULL,NULL),(517,415,214,'sale',15500000.00,'2018-08-20',NULL,NULL),(518,419,203,'sale',3100000.00,'2018-06-05',NULL,NULL),(519,423,207,'sale',4200000.00,'2018-09-10',NULL,NULL),(520,416,215,'sale',3000000.00,'2019-05-01',NULL,NULL),(521,421,205,'sale',7400000.00,'2022-04-15',NULL,NULL),(522,422,206,'sale',2300000.00,'2022-06-10',NULL,NULL),(523,420,204,'sale',11200000.00,'2022-02-20',NULL,NULL),(524,424,208,'sale',10000000.00,'2022-08-05',NULL,NULL),(525,411,201,'sale',4300000.00,'2024-01-20',NULL,NULL),(526,413,212,'sale',8700000.00,'2024-02-15',NULL,NULL),(527,417,201,'sale',1650000.00,'2023-11-15',NULL,NULL),(528,418,202,'sale',5200000.00,'2023-12-20',NULL,NULL),(529,425,209,'sale',2500000.00,'2023-07-01',NULL,NULL),(530,411,201,'rent',13000.00,'2024-02-01','2024-02-01','2024-08-01'),(531,413,212,'rent',40000.00,'2024-03-01','2024-03-01','2024-09-01'),(532,412,211,'rent',14000.00,'2018-08-01','2018-08-01','2019-02-01'),(533,416,215,'rent',14500.00,'2019-06-01','2019-06-01','2020-06-01'),(534,421,205,'rent',28000.00,'2022-05-01','2022-05-01','2022-11-01'),(535,419,203,'rent',12000.00,'2018-07-01','2018-07-01','2019-01-01'),(536,417,201,'rent',9000.00,'2023-12-01','2023-12-01','2024-06-01'),(537,425,209,'rent',13500.00,'2023-08-01','2023-08-01','2024-02-01'),(550,426,216,'sale',250000.00,'2024-01-01',NULL,NULL),(601,403,203,'sale',13000000.00,'2024-01-10',NULL,NULL);
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `transaction_guard` BEFORE INSERT ON `transactions` FOR EACH ROW BEGIN

    -- RENT LOGIC
    IF NEW.transaction_type = 'rent' THEN

        -- sync transaction_date
        SET NEW.transaction_date = NEW.rent_start_date;

        -- ensure rent is after latest sale
        IF NOT EXISTS (
            SELECT 1 FROM transactions
            WHERE property_id = NEW.property_id
              AND transaction_type = 'sale'
        ) THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Rent requires at least one prior sale';
        END IF;

        IF NEW.rent_start_date <= (
            SELECT MAX(transaction_date)
            FROM transactions
            WHERE property_id = NEW.property_id
              AND transaction_type = 'sale'
        ) THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Rent must occur after latest sale';
        END IF;

        -- prevent rent overlap
        IF EXISTS (
            SELECT 1 FROM transactions
            WHERE property_id = NEW.property_id
              AND transaction_type = 'rent'
              AND NEW.rent_start_date <= rent_end_date
              AND NEW.rent_end_date >= rent_start_date
        ) THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Rent overlap not allowed';
        END IF;

    END IF;


    -- SALE LOGIC
    IF NEW.transaction_type = 'sale' THEN

        -- block sale during active rent
        IF EXISTS (
            SELECT 1 FROM transactions
            WHERE property_id = NEW.property_id
              AND transaction_type = 'rent'
              AND NEW.transaction_date BETWEEN rent_start_date AND rent_end_date
        ) THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Cannot sell during active rent';
        END IF;

    END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `agent_match_check` BEFORE INSERT ON `transactions` FOR EACH ROW BEGIN
    DECLARE prop_agent INT;

    SELECT agent_id INTO prop_agent
    FROM property
    WHERE property_id = NEW.property_id;

    IF prop_agent != NEW.agent_id THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Agent must match property agent';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'realestate'
--

--
-- Dumping routines for database 'realestate'
--
/*!50003 DROP FUNCTION IF EXISTS `days_on_market` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `days_on_market`(p_id INT) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE days INT;

    SELECT DATEDIFF(t.transaction_date, p.listing_date)
    INTO days
    FROM property p
    JOIN transactions t ON p.property_id = t.property_id
    WHERE p.property_id = p_id
      AND t.transaction_type = 'sale'
    ORDER BY t.transaction_date DESC
    LIMIT 1;

    RETURN days;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `is_available_for_rent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `is_available_for_rent`(p_id INT) RETURNS tinyint(1)
    DETERMINISTIC
BEGIN
    DECLARE has_sale INT;
    DECLARE active_rent INT;

    SELECT COUNT(*) INTO has_sale
    FROM transactions
    WHERE property_id = p_id
      AND transaction_type = 'sale';

    SELECT COUNT(*) INTO active_rent
    FROM transactions
    WHERE property_id = p_id
      AND transaction_type = 'rent'
      AND CURDATE() BETWEEN rent_start_date AND rent_end_date;

    RETURN (has_sale > 0 AND active_rent = 0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `is_available_for_sale` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `is_available_for_sale`(p_id INT) RETURNS tinyint(1)
    DETERMINISTIC
BEGIN
    DECLARE active_rent INT;

    SELECT COUNT(*) INTO active_rent
    FROM transactions
    WHERE property_id = p_id
      AND transaction_type = 'rent'
      AND CURDATE() BETWEEN rent_start_date AND rent_end_date;

    RETURN active_rent = 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `is_currently_rented` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `is_currently_rented`(p_id INT) RETURNS tinyint(1)
    DETERMINISTIC
BEGIN
    DECLARE cnt INT;

    SELECT COUNT(*) INTO cnt
    FROM transactions
    WHERE property_id = p_id
      AND transaction_type = 'rent'
      AND CURDATE() BETWEEN rent_start_date AND rent_end_date;

    RETURN cnt > 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `latest_transaction_type` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `latest_transaction_type`(p_id INT) RETURNS varchar(10) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE t_type VARCHAR(10);

    SELECT transaction_type INTO t_type
    FROM transactions
    WHERE property_id = p_id
    ORDER BY transaction_date DESC
    LIMIT 1;

    RETURN t_type;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-08 12:43:20
