-- MySQL dump 10.13  Distrib 5.7.36, for Win64 (x86_64)
--
-- Host: localhost    Database: iwp
-- ------------------------------------------------------
-- Server version	5.7.36

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `adminid` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `empid` varchar(20) NOT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('chetan','chetan1234','chetan');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `balance`
--

DROP TABLE IF EXISTS `balance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `balance` (
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `balance`
--

LOCK TABLES `balance` WRITE;
/*!40000 ALTER TABLE `balance` DISABLE KEYS */;
INSERT INTO `balance` VALUES (68650);
/*!40000 ALTER TABLE `balance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_id`
--

DROP TABLE IF EXISTS `book_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_id` (
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_id`
--

LOCK TABLES `book_id` WRITE;
/*!40000 ALTER TABLE `book_id` DISABLE KEYS */;
INSERT INTO `book_id` VALUES (10024);
/*!40000 ALTER TABLE `book_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booked_hist`
--

DROP TABLE IF EXISTS `booked_hist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booked_hist` (
  `phone` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `idproof` varchar(20) NOT NULL,
  `room_type` varchar(20) NOT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  `days` int(11) NOT NULL,
  `ac` varchar(5) NOT NULL,
  `breakfast` varchar(5) NOT NULL,
  `lunch` varchar(5) NOT NULL,
  `snacks` varchar(5) NOT NULL,
  `dinner` varchar(5) NOT NULL,
  `swimming` varchar(5) NOT NULL,
  `price` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booked_hist`
--

LOCK TABLES `booked_hist` WRITE;
/*!40000 ALTER TABLE `booked_hist` DISABLE KEYS */;
INSERT INTO `booked_hist` VALUES (123,'abc','123','Single bed','2019-10-09','2019-10-17',8,'false','false','false','false','false','false',1000,10013),(123,'abc','123','Single bed','2019-10-09','2019-10-12',3,'false','true','true','false','false','false',2350,10014),(123,'abc','123','Single bed','2019-10-17','2019-10-19',2,'false','false','false','false','false','false',1000,10016),(1234,'Vaibhav','1234','Single bed','2019-11-08','2019-11-10',2,'false','true','true','false','false','false',2900,10019),(1234567890,'chetan','123441222334','Single bed','2022-03-11','2022-03-21',10,'true','true','true','false','false','false',20500,10021),(1234567890,'chetan','123441222334','Single bed','2022-03-22','2022-03-02',20,'true','true','false','false','false','false',35000,10022);
/*!40000 ALTER TABLE `booked_hist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `confirmed_booking`
--

DROP TABLE IF EXISTS `confirmed_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `confirmed_booking` (
  `phone` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `idproof` varchar(20) NOT NULL,
  `room_type` varchar(20) NOT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  `days` int(11) NOT NULL,
  `ac` varchar(5) NOT NULL,
  `breakfast` varchar(5) NOT NULL,
  `lunch` varchar(5) NOT NULL,
  `snacks` varchar(5) NOT NULL,
  `dinner` varchar(5) NOT NULL,
  `swimming` varchar(5) NOT NULL,
  `price` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `confirmed_booking`
--

LOCK TABLES `confirmed_booking` WRITE;
/*!40000 ALTER TABLE `confirmed_booking` DISABLE KEYS */;
INSERT INTO `confirmed_booking` VALUES (123,'abc','123','Double bed','2019-10-09','2019-10-19',10,'false','false','true','false','false','false',20400,10017),(123,'abc','123','Single bed','2019-10-02','2019-10-04',2,'false','false','false','false','false','false',2000,10018),(123,'abc','123','Single bed','2022-03-16','2022-03-15',1,'true','true','false','false','false','true',2050,10020);
/*!40000 ALTER TABLE `confirmed_booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms_count`
--

DROP TABLE IF EXISTS `rooms_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rooms_count` (
  `room_type` varchar(20) NOT NULL,
  `available_rooms` int(11) NOT NULL,
  `occupied_rooms` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms_count`
--

LOCK TABLES `rooms_count` WRITE;
/*!40000 ALTER TABLE `rooms_count` DISABLE KEYS */;
INSERT INTO `rooms_count` VALUES ('Single bed',5,2,1000),('Double bed',2,1,1800),('Four bed',5,0,3000);
/*!40000 ALTER TABLE `rooms_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp`
--

DROP TABLE IF EXISTS `temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp` (
  `pwd` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp`
--

LOCK TABLES `temp` WRITE;
/*!40000 ALTER TABLE `temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp_book_id_`
--

DROP TABLE IF EXISTS `temp_book_id_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_book_id_` (
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_book_id_`
--

LOCK TABLES `temp_book_id_` WRITE;
/*!40000 ALTER TABLE `temp_book_id_` DISABLE KEYS */;
/*!40000 ALTER TABLE `temp_book_id_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp_room`
--

DROP TABLE IF EXISTS `temp_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_room` (
  `phone` int(11) NOT NULL,
  `idproof` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_room`
--

LOCK TABLES `temp_room` WRITE;
/*!40000 ALTER TABLE `temp_room` DISABLE KEYS */;
/*!40000 ALTER TABLE `temp_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp_session`
--

DROP TABLE IF EXISTS `temp_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_session` (
  `phone` int(11) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `idproof` varchar(20) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_session`
--

LOCK TABLES `temp_session` WRITE;
/*!40000 ALTER TABLE `temp_session` DISABLE KEYS */;
INSERT INTO `temp_session` VALUES (1234567890,'12345678','chetan','csp@gmail.com','123441222334','2003-01-01');
/*!40000 ALTER TABLE `temp_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_login`
--

DROP TABLE IF EXISTS `user_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_login` (
  `phone` int(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `idproof` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  PRIMARY KEY (`phone`),
  UNIQUE KEY `idproof` (`idproof`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_login`
--

LOCK TABLES `user_login` WRITE;
/*!40000 ALTER TABLE `user_login` DISABLE KEYS */;
INSERT INTO `user_login` VALUES (1234567890,'12345678','chetan','csp@gmail.com','123441222334','2003-01-01');
/*!40000 ALTER TABLE `user_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_room_book`
--

DROP TABLE IF EXISTS `user_room_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_room_book` (
  `phone` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `idproof` varchar(20) NOT NULL,
  `room_type` varchar(20) NOT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  `days` int(11) NOT NULL,
  `ac` varchar(5) NOT NULL,
  `breakfast` varchar(5) NOT NULL,
  `lunch` varchar(5) NOT NULL,
  `snacks` varchar(5) NOT NULL,
  `dinner` varchar(5) NOT NULL,
  `swimming` varchar(5) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Waiting',
  `price` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_room_book`
--

LOCK TABLES `user_room_book` WRITE;
/*!40000 ALTER TABLE `user_room_book` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_room_book` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-04 21:52:52
