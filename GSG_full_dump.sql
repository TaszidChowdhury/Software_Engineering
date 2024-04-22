-- MySQL dump 10.13  Distrib 8.3.0, for macos13.6 (arm64)
--
-- Host: localhost    Database: GSG
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Current Database: `GSG`
--

/*!40000 DROP DATABASE IF EXISTS `GSG`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `GSG` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `GSG`;

--
-- Table structure for table `alembic_version`
--

DROP TABLE IF EXISTS `alembic_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL,
  PRIMARY KEY (`version_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alembic_version`
--

LOCK TABLES `alembic_version` WRITE;
/*!40000 ALTER TABLE `alembic_version` DISABLE KEYS */;
INSERT INTO `alembic_version` VALUES ('9a94f99adc25');
/*!40000 ALTER TABLE `alembic_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sender_id` int NOT NULL,
  `recipient_id` int NOT NULL,
  `content` text NOT NULL,
  `timestamp` datetime DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sender_id` (`sender_id`),
  KEY `recipient_id` (`recipient_id`),
  KEY `ix_message_timestamp` (`timestamp`),
  CONSTRAINT `message_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `user` (`id`),
  CONSTRAINT `message_ibfk_2` FOREIGN KEY (`recipient_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,3,1,'hello how are you','2024-03-04 23:52:14',0),(3,3,1,'very well thank you ','2024-03-04 23:53:06',0),(5,3,1,'testing','2024-03-04 23:54:12',0),(50,3,1,'hello\n','2024-04-02 14:37:46',0),(54,14,1,'Hello How are you its manuel ','2024-04-18 01:05:04',0),(57,15,1,'Hello Owner ','2024-04-18 03:54:58',0),(58,15,1,'How are you ','2024-04-18 06:09:09',0);
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `photos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) NOT NULL,
  `property_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `photos_ibfk_1` (`property_id`),
  CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property_listing` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (31,'image.jpg',24),(32,'image1.jpg',24),(33,'image2.jpg',24),(34,'image3.jpg',24),(35,'image4.jpg',24),(36,'image5.jpg',24),(43,'0000.jpg',25),(44,'0e66154c39f11474a478fdc95224a120-cc_ft_768.jpg',25),(45,'296ad0de57bfbf12f4152f89ebda9a42-cc_ft_768.jpg',25),(46,'3773d8a87e6f277cd270eb538dd21f72-cc_ft_768.jpg',25),(52,'00000.jpg',26),(53,'29fe1ca673e722e379f61439bc100f9c-full.jpg',26),(54,'88eb57cdd5c28f8895ecf6fdc51d4faa-full.jpg',26),(55,'762d09781b5ee068470a498108322ab5-full.jpg',26),(56,'c55b85d733178628262b64d9efaa3491-full.jpg',26),(57,'3b8a7b5d44cafa139ea4f335c6740190-full.jpg',27),(58,'4bd61a3fdfc11493e77a7b131343a6fa-full.jpg',27),(59,'48f9574eb6ae25a04886fbf7c7ad49ab-full.jpg',27),(60,'15520588c10d61734724d920cf77eea2-full.jpg',27),(61,'e1ade8829562c880c5832ae630c394ee-full.jpg',27),(62,'e6d94e316ca88a0ea802f26001f43a2c-full.jpg',27),(63,'000.jpg',28),(64,'0b02e751fd2b086d1480bad9b11dbac0-full.jpg',28),(65,'28f155b3d18398b71580013346e25a4b-full.jpg',28),(66,'72b0f949c6695d5d0cd31dd26c7d2ef7-full.jpg',28),(67,'83bb5faf55c6bf8f197dedc6eebbd59d-full.jpg',28),(68,'8546bf2552b2fb608c1c074359f18ab7-full.jpg',28),(69,'aa167fdbef7ae0a8060044041be5f3ba-full.jpg',28),(70,'aad85f1058b3b76a994e7177effb7664-full.jpg',28),(71,'af1a01f1710eda9148c6d3bbf0baf420-full.jpg',28),(79,'8e02943283d8bc44f95ab2c89409cdc3-full.jpg',30),(80,'71d9b41d02d6d199f8ee57bfbc2eb9a5-full.jpg',30),(81,'81083a98199910c986d3d78364b18a47-full.jpg',30),(82,'756126b20eca7bcfd84bc3b71328be27-full.jpg',30),(83,'a895960fed03d49606497f71740407f1-full.jpg',30),(84,'be5e67d7dd2ccddaef4d3196db8cb6e2-full.jpg',30),(85,'d6f3abbbd8a5e2bc9192a9f826ff1410-full.jpg',30);
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_listing`
--

DROP TABLE IF EXISTS `property_listing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_listing` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` int NOT NULL,
  `location` varchar(100) NOT NULL,
  `timestamp` datetime DEFAULT NULL,
  `bedrooms` int NOT NULL,
  `bathrooms` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_property_listing_timestamp` (`timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_listing`
--

LOCK TABLES `property_listing` WRITE;
/*!40000 ALTER TABLE `property_listing` DISABLE KEYS */;
INSERT INTO `property_listing` VALUES (24,'Cozy House','Nestled in a quaint neighborhood of Atlantic City, this charming two-story home offers a serene retreat amidst the vibrant city life. Boasting a classic exterior with white siding and a cozy front porch, this property is a stone\'s throw away from local amenities and the bustling boardwalk.',250,'91 E Rutherford Dr, Atlantic City ','2024-04-18 04:18:25',4,4),(25,'Small Blue house ','Step into modern comfort with this fully renovated 3-bedroom, 3-bathroom Atlantic City gem. The spacious open-plan living area is accented with contemporary wood-look flooring and a fresh, light color scheme, leading to a sleek kitchen that boasts white shaker cabinets, subway tile backsplash, and stainless steel appliances. Each bathroom exudes a clean, crisp aesthetic with stylish fixtures and finishes.',285,'19 Asbury Park, Atlantic City','2024-04-18 05:09:27',3,3),(26,'Casino Royal','Immerse yourself in the charm of coastal living in this Atlantic City haven, nestled mere moments from the iconic Ocean Casino. This home merges traditional warmth with a touch of elegance, as evidenced by its rich hardwood floors and classic furniture pieces. The living area, with its white-washed walls and abundant natural light, offers an open and airy feel, extending into a well-appointed kitchen where wooden cabinetry meets modern appliances. Step outside to a welcoming front porch, and savor the serene neighborhood, or enjoy the convenience of being a leisurely stroll from the sea\'s edge and entertainment hubs. This abode is a harmonious blend of homely comfort and the allure of beachside living.',300,'23 Sea side ave, Atlantic City ','2024-04-18 05:18:05',5,4),(27,'Seaside Serenity','Welcome to \"Seaside Serenity,\" a beautifully crafted residence located at 104 Shoreline Drive, Ventnor, NJ. Just a two-minute walk from the pristine beach, this inviting 2-story home fuses timeless design with coastal charm. Inside, you are greeted by a spacious living room adorned with elegant beams, a statement stone fireplace, and an abundance of natural light. The open-concept design leads you to a gourmet kitchen, featuring a large island, white cabinetry, and modern stainless steel appliances—ideal for entertaining or quiet family meals. ',630,' 101 Shoreline Drive, Ventnor, NJ','2024-04-18 05:30:20',4,5),(28,'Coastal Haven ','Experience the epitome of seaside living at \"Coastal Haven,\" situated at 256 Ocean Breeze Lane, Ventnor, NJ—a delightful 3-bedroom, 2-bathroom home, just a breath away from the soft sandy beaches. As you step inside, you\'re welcomed by a spacious, sunlit living area that boasts an elegant white-brick fireplace, setting the stage for cozy evenings. The open floor plan effortlessly connects to a modern kitchen, complete with granite countertops and stainless steel appliances, ideal for culinary explorations. The adjacent dining space, with its chic lighting, is perfect for intimate dinners or casual brunches',400,'256 Ocean Breeze Lane, Ventnor, NJ','2024-04-18 05:50:46',3,3),(30,'Seashell Retreat','Nestled in the serene neighborhood of Ventnor City, just a stone’s throw away from the tranquil beaches, the Seashell Retreat awaits. This enchanting 5-bedroom, 2-bathroom haven offers a quintessential blend of comfort and seaside charm, promising an idyllic escape from the everyday hustle.',500,'152 Oceanview Lane','2024-04-18 16:29:45',5,2);
/*!40000 ALTER TABLE `property_listing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `property_id` int NOT NULL,
  `user_id` int NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(100) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `reservation_ibfk_1` (`property_id`),
  CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property_listing` (`id`) ON DELETE CASCADE,
  CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (18,26,3,'2024-08-20 00:00:00','2024-08-22 00:00:00','confirmed',900.00),(19,28,4,'2024-11-20 00:00:00','2024-12-01 00:00:00','confirmed',4320.00),(20,25,14,'2025-03-20 00:00:00','2025-03-27 00:00:00','confirmed',2052.00),(21,24,16,'2024-04-19 00:00:00','2024-04-21 00:00:00','confirmed',750.00),(23,24,3,'2024-04-27 00:00:00','2024-05-01 00:00:00','pending',1250.00),(24,28,3,'2024-04-19 00:00:00','2024-04-19 00:00:00','confirmed',400.00);
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `id` int NOT NULL AUTO_INCREMENT,
  `author` varchar(100) NOT NULL,
  `text` text NOT NULL,
  `property_id` int NOT NULL,
  `timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_review_timestamp` (`timestamp`),
  KEY `review_ibfk_1` (`property_id`),
  CONSTRAINT `review_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property_listing` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (9,'Thomas','Had a great experience here!!',24,'2024-04-18 06:05:37'),(10,'Thomas','Absolutely stunning house right next to the beach and everything!',27,'2024-04-18 06:06:18'),(11,'Luke','This house has everything you need',28,'2024-04-18 06:07:20'),(12,'Marco','Peaceful neighborhood ',26,'2024-04-18 06:08:00'),(13,'Marco','Wonderful open concept would recommend to anyone ',27,'2024-04-18 06:08:49'),(14,'Luke','Spent the weekend here with friends great experience ',26,'2024-04-18 06:14:36'),(15,'TaszidChowdhury','Great house ',24,'2024-04-18 14:13:34');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Jorge','Jorgegonzales191421@gmail.com','scrypt:32768:8:1$TkOkqp1NIulLFjDh$c2e642f3a4b2fe1fae61c14bc3897cff380b4d6f8994bf2a2612855091e5dcc067805bfe37936e5a060ba0074f315399b56ed38a9001b767ed5e13e26fd33382',1),(3,'Luke','luke@gmail.com','scrypt:32768:8:1$dxvPNgl59vOlhgaX$80c013ba3f8b267fa865c20a8238190fcdde7adb6aab20dafe50ff7c2f0c9716e7ba0f3bdc9fb3a26c65f83f8c17ac822417e2bbe8d67c6551457d5c7e512cc2',0),(4,'Thomas','Thomas@Gmail.com','scrypt:32768:8:1$y5iBgePvxczNpQWR$687e1129c37f60b68307ead469f6f6b14ed39a76b5f1d1818fc52b268941f9d790c69a725cf8846b810b5059de519efea435be1c09cd3e7a797d4d35ae972545',0),(7,'pablo','pablo@gmail.com','scrypt:32768:8:1$EHQbRL0FzCb5wsC2$b3a5ec65ce38b6051241a9728f62ab5b51da265311b4d186cb4c7ed36ef65388e8ac10d7052e94d5800312b62cc027f0122b40c2f17fa57ffed0b14851d6637a',0),(9,'timmy','timmy@gmail.com','scrypt:32768:8:1$vAixyir0HZd2jWRd$eee3beb6516ebe9974506574b19f3a397d98c5918a79eb7828f2deac4740249751f08ef32733b1b6190ad13457ffa0906a0b070e561005d74fa6cf9c91f3604a',0),(10,'dan','dan@gmail.com','scrypt:32768:8:1$e6K90QFIYseLate2$57294fa05b3bd496fb440509d4f4f31151c255a5d354627547e357de29f94778a2bd4c735350b1318c38f2d4b1b51ca5346da3f900950a3590517241d1b712cf',0),(11,'tester','tester@gmail.com','scrypt:32768:8:1$dpaaxWNPIwfPkovo$7b7d464f9397d2bee3c62a652183faed0618717c7c2653b4ce2169d6a675bae8c9d3deb793e5722dc81642c32fc222d47eecf81f4d21e58863c2c75e8dae420d',0),(12,'Dylan','dyan@gmail.com','scrypt:32768:8:1$dyYfqojgJooe4fmv$cb4dc785e1c3fe438e6417749e024efb288c2d390deb2ffaca0d691d900e36c3758f30f18c79a6b015f5f8a621a4842a9bc5cb2aad021c50c45d8cab9a4b1f6d',0),(14,'Manuel ','Manuel@Gmail.com','scrypt:32768:8:1$LONg57OU3Z9Dvywe$d4ac9a2d5f399e53bcb2413f5dafa61eb3c7b24ffd79e2bdc0350fdb9264f99a3a055b8f0c7dc2c7c252aee90318280f4415466755d86946e89da31ca8eba22c',0),(15,'Marco','marco@gmail.com','scrypt:32768:8:1$rJiVXcsLM4625zTq$f14978b3c7cb049bd82b955c0b7e184dac965cf0edc8ff22ee033079857729fadc18d662dce430f9e3f944c9c9aa2f3819f9b03f353b07876517bff5b426076a',0),(16,'TaszidChowdhury','taszidc@gmail.com','scrypt:32768:8:1$y4YQqmxoKE6PQnFE$8c85d2e354ff3c45125afa157cfa9b00a3ef84370438cf41e45d362b8a0182ab24328828b64b3ec5a7e266d0efa388a35b97b62ae14cdb534ca4bb32c242700b',0),(19,'De','delete@gmail.com','scrypt:32768:8:1$u7CsZ1GnjOc2yw2x$51d4af6e3a22abb4027198a84334c4d321e5fc17edd7efb5888868c84cb08c1b8c9b5b9ecd5813ecdcc78f852c37b2a1e1a787c04ea4496d80ed0c5025f33909',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'GSG'
--

--
-- Dumping routines for database 'GSG'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-18 12:54:06
