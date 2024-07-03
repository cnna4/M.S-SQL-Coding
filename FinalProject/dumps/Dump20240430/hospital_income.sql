-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `income`
--

DROP TABLE IF EXISTS `income`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `income` (
  `Job` text,
  `Salary` text,
  `Item` text,
  `DescriptionItem` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `income`
--

LOCK TABLES `income` WRITE;
/*!40000 ALTER TABLE `income` DISABLE KEYS */;
INSERT INTO `income` VALUES ('Technician & Specialist','$80,000 ','GR_PT_REV','Gross Routine Patient '),('Management & Supervision','$120,000 ','DED_REV_PLUS_DSH','Deductions from\nRevenue'),('Licensed Vocational Nurse','$60,000 ','TOT_CAP_REV','Total Capitation Revenue'),('Aides & Orderlies','$40,000 ','NET_REV_LESS_DSH','Net Patient\nRevenue '),('Clerical & Other Administrative','$60,000 ','TOT_OP_EXP','Total Operating Expense'),('Environmental & Food Services','$40,000 ','NET_OP_LESS_DSH','Net from\nOperation'),('Education Cost Centers','NA','NONOP_REV','Non-operating Revenue'),('Administrative Services Cost Centers','$100,000 ','INC_TAX','Income Tax'),('Fiscal Services Cost Center','NA','NET_INC_LESS_DSH','Net Income'),('General Services Cost Centers','NA','OPERATING_MARGIN','Operating Margin'),('Education Cost Centers','NA','NONOP_EXP',' Non-operating Expense'),('Ancillary Cost Centers','NA','',''),('Ambulatory Cost Centers','NA','',''),('Daily Cost Centers','NA','',''),('Contracted Registry Nursing','$100,000 ','',''),('\nContracted Other','NA','','');
/*!40000 ALTER TABLE `income` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-30 21:25:58
