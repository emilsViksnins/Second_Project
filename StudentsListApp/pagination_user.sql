CREATE DATABASE  IF NOT EXISTS `pagination` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `pagination`;
-- MySQL dump 10.13  Distribute 8.0.34, for macos13 (x86_64)
--
-- Host: 127.0.0.1    Database: pagination
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Apt 1224','btingcomb0@omniture.com','https://randomuser.me/api/portraits/men2.jpg','Blithe Tingcomb','177-911-0187',NULL),(2,'PO Box 96487','kmcskeagan1@indiegogo.com','https://randomuser.me/api/portraits/men15.jpg','Kahaleel McSkeagan','154-252-9230','BANNED'),(3,'11th Floor','cchazier2@technorati.com','https://randomuser.me/api/portraits/men8.jpg','Celesta Chazier','940-505-6885',NULL),(4,'Suite 21','kdebrick3@freewebs.com','https://randomuser.me/api/portraits/men25.jpg','Kerrie Debrick','574-599-1902','BANNED'),(5,'PO Box 58375','crosell4@seattletimes.com','https://randomuser.me/api/portraits/men13.jpg','Cristionna Rosell','770-642-8677',NULL),(6,'Room 568','kbeart5@smugmug.com','https://randomuser.me/api/portraits/men18.jpg','Keary Beart','922-511-7674','BANNED'),(7,'Apt 1200','spoter6@auda.org.au','https://randomuser.me/api/portraits/men22.jpg','Sarge Poter','583-465-5842',NULL),(8,'Room 1027','tlambkin7@woothemes.com','https://randomuser.me/api/portraits/men25.jpg','Tobit Lambkin','400-532-5190','BANNED'),(9,'Room 821','cgrimsell8@blogs.com','https://randomuser.me/api/portraits/men2.jpg','Cissy Grimsell','510-155-1477',NULL),(10,'Suite 100','bmaccumeskey9@salon.com','https://randomuser.me/api/portraits/men25.jpg','Bonni MacCumeskey','669-460-8657','BANNED'),(11,'4th Floor','eoliffa@infoseek.co.jp','https://randomuser.me/api/portraits/men29.jpg','Elijah Oliff','185-322-1788',NULL),(12,'Suite 82','mcaffinb@privacy.gov.au','https://randomuser.me/api/portraits/men11.jpg','Mayer Caffin','804-915-7450','BANNED'),(13,'4th Floor','pastiec@harvard.edu','https://randomuser.me/api/portraits/men27.jpg','Pall Astie','167-913-2283',NULL),(14,'Suite 16','cscheffeld@infoseek.co.jp','https://randomuser.me/api/portraits/men14.jpg','Charissa Scheffel','285-287-4787','BANNED'),(15,'PO Box 11386','ftibbitse@google.com.au','https://randomuser.me/api/portraits/men20.jpg','Filberte Tibbits','713-715-7687',NULL),(16,'10th Floor','edef@facebook.com','https://randomuser.me/api/portraits/men27.jpg','Ellery De Meis','574-555-7732','BANNED'),(17,'PO Box 93418','atesoeg@huffingtonpost.com','https://randomuser.me/api/portraits/men18.jpg','Annabal Tesoe','811-717-6815',NULL),(18,'Room 159','tborkinh@answers.com','https://randomuser.me/api/portraits/men8.jpg','Tamra Borkin','892-572-1555','BANNED'),(19,'PO Box 82089','rklaesi@yahoo.co.jp','https://randomuser.me/api/portraits/men16.jpg','Rosalia Klaes','885-414-0533',NULL),(20,'Suite 45','bbottrellj@alexa.com','https://randomuser.me/api/portraits/men27.jpg','Bellanca Bottrell','260-372-0743','BANNED');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-23  9:48:49
