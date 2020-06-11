-- MySQL dump 10.13  Distrib 5.6.25, for Win32 (x86)
--
-- Host: localhost    Database: bank
-- ------------------------------------------------------
-- Server version	5.6.25

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `sn` int(11) NOT NULL AUTO_INCREMENT,
  `accountId` varchar(5) NOT NULL,
  `clientId` varchar(5) NOT NULL,
  `branchId` varchar(5) NOT NULL,
  `accountType` varchar(50) NOT NULL,
  `balance` double(10,2) NOT NULL,
  PRIMARY KEY (`accountId`),
  UNIQUE KEY `sn` (`sn`),
  KEY `clientId` (`clientId`),
  KEY `branchId` (`branchId`),
  CONSTRAINT `account_ibfk_1` FOREIGN KEY (`clientId`) REFERENCES `client` (`clientId`),
  CONSTRAINT `account_ibfk_2` FOREIGN KEY (`branchId`) REFERENCES `branchdetails` (`branchId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'ACC01','CID01','BID01','Saving',50000.00),(2,'ACC02','CID02','BID02','Current',10000.00),(3,'ACC03','CID03','BID03','Other',10000.00),(4,'ACC04','CID04','BID04','Other',20000.00),(5,'ACC05','CID05','BID05','Saving',100000.00);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branchdetails`
--

DROP TABLE IF EXISTS `branchdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branchdetails` (
  `sn` int(11) NOT NULL AUTO_INCREMENT,
  `branchId` varchar(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  PRIMARY KEY (`branchId`),
  UNIQUE KEY `sn` (`sn`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branchdetails`
--

LOCK TABLES `branchdetails` WRITE;
/*!40000 ALTER TABLE `branchdetails` DISABLE KEYS */;
INSERT INTO `branchdetails` VALUES (1,'BID01','Prime Bank Pvt. Ltd.','Sundhara','primeBankSundhara@gmail.com','+977-9861946587'),(2,'BID02','Prime Bank Pvt. Ltd.','Balaju','primeBankBalaju@gmail.com','+977-9861946588'),(3,'BID03','Prime Bank Pvt. Ltd.','Baipass','primeBankBaipass@gmail.com','+977-9861946589'),(4,'BID04','Prime Bank Pvt. Ltd.','Gongabu','primeBankGongabu@gmail.com','+977-9861946590'),(5,'BID05','Prime Bank Pvt. Ltd.','Samakhusi','primeBankSamakhusi@gmail.com','+977-9861946591');
/*!40000 ALTER TABLE `branchdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `sn` int(11) NOT NULL AUTO_INCREMENT,
  `clientId` varchar(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  PRIMARY KEY (`clientId`),
  UNIQUE KEY `sn` (`sn`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'CID01','Jagaran Maharjan','Manamaiju','jagaranmah@gmail.com','+977-9823075376'),(2,'CID02','Suraj Lal Shrestha','Sorakhutte','surajShrestha@gmail.com','+977-9823075377'),(3,'CID03','Romika Chaudhari','Sankhamul','romikaChaudhari@gmail.com','+977-9823075378'),(4,'CID04','Shreeza Shrestha','Nardevi','shreezaShrestha@gmail.com','+977-9823075379'),(5,'CID05','Anzee Shrestha','Nardevi','anzeeShrestha@gmail.com','+977-9823075380');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `departmentId` varchar(5) NOT NULL,
  `departmentName` varchar(50) NOT NULL,
  PRIMARY KEY (`departmentId`),
  UNIQUE KEY `departmentId` (`departmentId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES ('DPI01','Helper'),('DPI02','Cashier'),('DPI03','Loan'),('DPI04','Money Transaction'),('DPI05','IT');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `employeeId` varchar(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phoneNo` varchar(15) NOT NULL,
  `branchId` varchar(5) NOT NULL,
  `departmentId` varchar(5) NOT NULL,
  PRIMARY KEY (`employeeId`),
  UNIQUE KEY `employeeId` (`employeeId`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phoneNo` (`phoneNo`),
  KEY `branchId` (`branchId`),
  KEY `departmentId` (`departmentId`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`branchId`) REFERENCES `branchdetails` (`branchId`),
  CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('EID01','Aayush Pandey','Baneshwor','aayushpandey@gmail.com','+977-9741002082','BID01','DPI03'),('EID02','Shashwot Mainali','Baneshwor','shashwotmainali@gmail.com','+977-9741002083','BID01','DPI04'),('EID03','Samyog Shrestha','Samakhusi','samyogshrestha@gmail.com','+977-9741002084','BID02','DPI01'),('EID04','Sijan Shrestha','Samakhusi','sijanshrestha@gmail.com','+977-9741002085','BID03','DPI02'),('EID05','Sanzay Shrestha','Samakhusi','sanzayshrestha@gmail.com','+977-9741002086','BID04','DPI05'),('EID06','Jebina Maharjan','Samakhusi','jebinamaharjan@gmail.com','+977-9741002087','BID05','DPI01');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeeposition`
--

DROP TABLE IF EXISTS `employeeposition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employeeposition` (
  `positionId` varchar(5) NOT NULL,
  `employeeId` varchar(5) NOT NULL,
  `positionName` varchar(50) DEFAULT NULL,
  `salary` double(10,2) NOT NULL,
  `joiningDate` date NOT NULL,
  PRIMARY KEY (`positionId`),
  UNIQUE KEY `positionId` (`positionId`),
  KEY `employeeId` (`employeeId`),
  CONSTRAINT `employeeposition_ibfk_1` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeeposition`
--

LOCK TABLES `employeeposition` WRITE;
/*!40000 ALTER TABLE `employeeposition` DISABLE KEYS */;
INSERT INTO `employeeposition` VALUES ('EPI01','EID01','Loan Manager',50000.00,'2018-01-12'),('EPI02','EID02','Fianance Manager',50000.00,'2018-01-01'),('EPI03','EID03','Front Desk Officier',30000.00,'2017-01-01'),('EPI04','EID04','Cashier',35000.00,'2018-01-01'),('EPI05','EID05','IT Officier',75000.00,'2019-01-01'),('EPI06','EID06','Front Desk Officier',35000.00,'2018-01-01');
/*!40000 ALTER TABLE `employeeposition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loantransactiontreaty`
--

DROP TABLE IF EXISTS `loantransactiontreaty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loantransactiontreaty` (
  `sn` int(11) NOT NULL AUTO_INCREMENT,
  `treatyId` varchar(5) NOT NULL,
  `employeeId` varchar(5) NOT NULL,
  `accountId` varchar(5) NOT NULL,
  `loanAmount` double(10,2) NOT NULL,
  `materialsKept` varchar(100) NOT NULL,
  `treatyStartedDate` date NOT NULL,
  `treatyEndDate` date NOT NULL,
  PRIMARY KEY (`treatyId`),
  UNIQUE KEY `sn` (`sn`),
  UNIQUE KEY `treatyId` (`treatyId`),
  KEY `employeeId` (`employeeId`),
  KEY `accountId` (`accountId`),
  CONSTRAINT `loantransactiontreaty_ibfk_1` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`),
  CONSTRAINT `loantransactiontreaty_ibfk_2` FOREIGN KEY (`accountId`) REFERENCES `account` (`accountId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loantransactiontreaty`
--

LOCK TABLES `loantransactiontreaty` WRITE;
/*!40000 ALTER TABLE `loantransactiontreaty` DISABLE KEYS */;
INSERT INTO `loantransactiontreaty` VALUES (1,'TRI01','EID01','ACC01',150000.00,'Bike','2019-03-14','2020-03-14'),(2,'TRI02','EID01','ACC02',500000.00,'Land','2019-03-14','2021-03-14'),(3,'TRI03','EID01','ACC03',100000.00,'Land','2019-03-14','2020-03-14'),(4,'TRI04','EID01','ACC04',100000.00,'Bike','2019-03-14','2020-03-14'),(5,'TRI05','EID01','ACC05',200000.00,'Bike','2019-03-14','2021-03-14');
/*!40000 ALTER TABLE `loantransactiontreaty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `sn` int(11) NOT NULL AUTO_INCREMENT,
  `transactionId` varchar(5) NOT NULL,
  `accountId` varchar(5) NOT NULL,
  `transactionTypeId` varchar(5) NOT NULL,
  `employeeId` varchar(5) NOT NULL,
  `transactionDate` date NOT NULL,
  `amount` double(10,2) NOT NULL,
  PRIMARY KEY (`transactionId`),
  UNIQUE KEY `sn` (`sn`),
  UNIQUE KEY `transactionId` (`transactionId`),
  KEY `accountId` (`accountId`),
  KEY `transactionTypeId` (`transactionTypeId`),
  KEY `employeeId` (`employeeId`),
  CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`accountId`) REFERENCES `account` (`accountId`),
  CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`transactionTypeId`) REFERENCES `transactiontype` (`transactionTypeId`),
  CONSTRAINT `transaction_ibfk_3` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (1,'TID01','ACC01','TTID2','EID02','2019-03-14',100000.00),(2,'TID02','ACC02','TTID1','EID02','2019-03-14',10000.00),(3,'TID03','ACC03','TTID2','EID02','2019-03-15',20000.00),(4,'TID04','ACC04','TTID1','EID02','2018-03-15',30000.00),(5,'TID05','ACC05','TTID2','EID02','2018-03-15',30000.00);
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactiontype`
--

DROP TABLE IF EXISTS `transactiontype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactiontype` (
  `transactionTypeId` varchar(5) NOT NULL,
  `transactionTypeName` varchar(50) NOT NULL,
  PRIMARY KEY (`transactionTypeId`),
  UNIQUE KEY `transactionTypeId` (`transactionTypeId`),
  UNIQUE KEY `transactionTypeName` (`transactionTypeName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactiontype`
--

LOCK TABLES `transactiontype` WRITE;
/*!40000 ALTER TABLE `transactiontype` DISABLE KEYS */;
INSERT INTO `transactiontype` VALUES ('TTID2','Deposit'),('TTID1','Withdraw');
/*!40000 ALTER TABLE `transactiontype` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-21  8:04:06
