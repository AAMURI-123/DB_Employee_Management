-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: employee-management
-- ------------------------------------------------------
-- Server version	5.7.33-log

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `street` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `zip_code` int(20) DEFAULT NULL,
  `employee_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_empId` (`employee_id`),
  CONSTRAINT `fk_empId` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'43th','Blaine','Minnessota',55342,1),(2,'67 aven','Brooklyn center','Minnessota ',55234,2),(3,'64 th ln ','New brighton','Minnesota',55134,3),(4,'78th ave','Minneapolis','Minnesota',55231,4),(5,'54th ne','Fridley','Minnesota',55231,5),(6,'78 ave','Rosviell','Minnesota',55178,6),(7,'76 ave','anoka','Minnesota',55333,7),(8,'10th ','Saint Pual','Minnesota',55190,8),(9,'53th','Blaine','Minneapolis',55745,9);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `id` bigint(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Full-Stack Developer'),(2,'Front-end Developer'),(3,'Back-end Developer'),(4,'UI/UX Designer');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `identification_number` varchar(20) DEFAULT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `dept_id` bigint(20) DEFAULT NULL,
  `salary` int(20) DEFAULT NULL,
  `experience_years` int(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `image_url` varchar(100) DEFAULT NULL,
  `started_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_dept` (`dept_id`),
  CONSTRAINT `fk-dept` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'6371e','Umer','Abubeker',1,78000,0,'umer@gmail.com','7642992092','assets/images/products/placeholder.png','2023-02-10','2023-02-10'),(2,'e703b','Akil','Ahmed',1,80000,1,'akil@gmail.com','7888987008','assets/images/products/placeholder.png','2023-02-10','2023-02-10'),(3,'65986','Nelson','Amigo',1,200000,10,'nelson@gmail.com','6324323455','assets/images/products/placeholder.png','2023-02-10','2023-02-10'),(4,'7e4ee','Jack','Mike',3,90000,2,'jack@gmail.com','5438299059','assets/images/products/placeholder.png','2023-02-10','2023-02-10'),(5,'9b61a','Sarah','James',4,180000,4,'sarah@gmail.com','8778998087','assets/images/products/placeholder.png','2023-02-10','2023-02-10'),(6,'cc856','Tom','Leo',2,82000,2,'tom@gmali.com','7828923948','assets/images/products/placeholder.png','2023-02-10','2023-02-10'),(7,'f8422','Fati','Buruk',3,120000,5,'fati@gmail.com','3256118901','assets/images/products/placeholder.png','2023-02-10','2023-02-10'),(8,'cebef','Amir','Ali',1,79000,1,'amir@gmail.com','4229481910','assets/images/products/placeholder.png','2023-02-10','2023-02-10'),(9,'e1da9','Jack','Welson',4,92000,2,'jackwel@gmail.com','4567895235','assets/images/products/placeholder.png','2023-02-15','2023-02-15');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-16 19:07:45
