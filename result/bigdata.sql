

CREATE DATABASE  IF NOT EXISTS `dbsensors` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `dbsensors`;
-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: dbsensors
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
-- Table structure for table `contador`
--

DROP TABLE IF EXISTS `contador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contador` (
  `activity` text,
  `quantidade` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contador`
--

LOCK TABLES `contador` WRITE;
/*!40000 ALTER TABLE `contador` DISABLE KEYS */;
INSERT INTO `contador` VALUES ('Breakfast',988),('Toileting',540),('Snack',654),('Showering',1468),('activity',7),('Lunch',746),('Sleeping',721),('Spare_Time_TV',505),('Dinner',898),('Leaving',1223),('Grooming',1067);
/*!40000 ALTER TABLE `contador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sensores`
--

DROP TABLE IF EXISTS `sensores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sensores` (
  `firstName` text,
  `sensor` text,
  `quantidade` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensores`
--

LOCK TABLES `sensores` WRITE;
/*!40000 ALTER TABLE `sensores` DISABLE KEYS */;
INSERT INTO `sensores` VALUES ('Fleur','Flush',278),('Jamie','Electric',310),('Zelda','Flush',64),('Everett','PIR',46),('Ellette','Pressure',205),('Alejandro','Electric',200),('Alejandro','Magnetic',216),('Zelda','Pressure',381),('Rosemary','Flush',163),('Osbourne','Flush',151),('Lorilee','Electric',265),('Osbourne','Pressure',311),('Lorilee','PIR',192),('Jamie','Flush',423),('Nichole','Electric',74),('Nichole','Flush',250),('Everett','Pressure',417),('Ellette','PIR',169),('Nichole','Magnetic',83),('Zelda','Electric',191),('Fleur','PIR',97),('Lorilee','Pressure',29),('Rosemary','Electric',145),('Fleur','Electric',279),('Ellette','Electric',143),('Nichole','PIR',293),('Alejandro','PIR',52),('Fleur','Pressure',63),('Nichole','Pressure',155),('Osbourne','Electric',380),('Jamie','Pressure',148),('Zelda','Magnetic',114),('Rosemary','PIR',57),('Lorilee','Magnetic',46),('Everett','Magnetic',380),('Ellette','Magnetic',97),('Alejandro','Pressure',22),('Alejandro','Flush',407),('Everett','Flush',39),('Lorilee','Flush',304),('firstName','sensor',7),('Rosemary','Magnetic',503),('Fleur','Magnetic',243),('Ellette','Flush',256),('Zelda','PIR',169);
/*!40000 ALTER TABLE `sensores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `firstName` text,
  `location` text,
  `sensor` text,
  `latitude` text,
  `longitude` text,
  `quantidade` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES ('Zelda','Seat','Magnetic','5.5248242','79.74261204',114),('Zelda','Door_Bathroom','PIR','-10.36249898','-89.56365253',100),('Ellette','Cooktop','Magnetic','22.84118111','-109.58134031',32),('Ellette','Shower','Pressure','15.19851962','-161.00886704',110),('Zelda','Toaster','Pressure','-12.94689122','149.30352753',99),('Rosemary','Door_Kitchen','PIR','-48.64647755','169.62852436',57),('Zelda','Door_Bathroom','Pressure','-48.81338872','14.86022935',101),('Alejandro','Toaster','Flush','-13.10928486','154.67759448',25),('Jamie','Microwave','Electric','-16.10910686','-145.4592354',142),('Rosemary','Basin','Electric','-31.49188929','-4.2176329',73),('Lorilee','Door_Bathroom','Magnetic','3.27722027','-82.64986844',23),('Alejandro','Microwave','Magnetic','40.8845411','162.06399611',160),('Ellette','Microwave','Magnetic','-51.6858781','-125.18787143',35),('Zelda','Microwave','Electric','-31.01473797','13.50261031',73),('Fleur','Door_Bedroom','Magnetic','29.84713003','-151.00810888',36),('Lorilee','Door_Kitchen','Flush','-58.46822363','102.15319559',29),('Ellette','Shower','Flush','11.26911055','118.56767099',32),('Lorilee','Seat','Electric','-61.06863682','80.89877618',84),('Alejandro','Maindoor','Flush','1.88393614','108.89103046',23),('Osbourne','Basin','Pressure','-52.66942534','-1.66748953',155),('Zelda','Cooktop','Electric','78.49088521','-152.75858481',118),('Ellette','Cupboard','PIR','-35.0844991','-19.45578742',110),('Rosemary','Seat','Magnetic','41.44622455','-137.13833578',65),('Jamie','Basin','Electric','-29.25429429','147.84982939',168),('Everett','Seat','PIR','-45.30608213','-80.05336207',46),('Fleur','Seat','Magnetic','-79.17491381','-83.63730635',74),('Nichole','Door_Bathroom','Electric','8.13593835','-74.23794864',74),('Everett','Door_Kitchen','Pressure','-75.27704971','37.11307432',28),('Fleur','Microwave','Electric','-33.05946364','157.01568059',34),('Alejandro','Bed','PIR','61.36365799','99.42307253',22),('Alejandro','Toaster','Pressure','-40.46221405','-149.67124545',22),('Ellette','Bed','PIR','-29.84404448','-5.25274886',25),('Ellette','Cupboard','Flush','16.20538745','107.61659078',93),('Alejandro','Toilet','Electric','-32.013198','77.50315671',176),('Fleur','Cabinet','Flush','-28.59573617','-157.17678317',80),('Nichole','Door_Bathroom','Flush','-29.09892363','-143.39134099',80),('Rosemary','Cupboard','Flush','36.8140147','163.97066005',163),('Nichole','Door_Bedroom','PIR','-27.88251912','-68.73779694',77),('Osbourne','Toaster','Pressure','-49.65318231','-173.41826617',156),('Nichole','Cabinet','Pressure','27.51538552','-111.85785094',80),('Fleur','Cupboard','PIR','3.12053817','163.37413861',97),('Lorilee','Cooktop','Electric','-18.06300549','-88.5974263',71),('Zelda','Cooktop','Pressure','38.34439931','-173.86290577',106),('Alejandro','Seat','Flush','-1.10300543','173.23881003',20),('Everett','Cupboard','Pressure','6.6895261','-165.4681363',50),('Ellette','Cabinet','Electric','51.21508331','33.65458236',106),('Everett','Microwave','Magnetic','14.00278979','75.24401656',340),('Rosemary','Toilet','Magnetic','-66.80435907','-28.74678694',143),('Alejandro','Cupboard','Flush','52.82335865','120.92978051',150),('Fleur','Shower','Electric','25.69105101','129.54620664',85),('Lorilee','Fridge','Flush','-16.07953264','140.63292472',30),('Everett','Door_Bathroom','Pressure','67.89030034','25.9401232',39),('Nichole','Cooktop','Flush','-62.75778052','102.54271905',88),('Fleur','Microwave','Magnetic','-22.90468479','7.12372645',44),('Lorilee','Door_Bedroom','PIR','-16.09656372','-53.49478553',20),('Fleur','Shower','Flush','-20.89872534','-15.17788126',81),('Ellette','Shower','Flush','-49.65166943','86.11263726',100),('Nichole','Bed','PIR','-30.68607638','162.37667407',66),('Ellette','Basin','Flush','-31.89513399','-94.96264269',31),('Fleur','Door_Bedroom','Electric','2.72163629','165.08243594',38),('Jamie','Fridge','Flush','-13.84668585','-102.74017024',270),('Ellette','Fridge','PIR','44.13762966','66.03010444',34),('Alejandro','Door_Kitchen','Electric','-8.36967876','56.24723897',24),('Lorilee','Microwave','PIR','78.58213432','-132.76132701',69),('Lorilee','Cooktop','Magnetic','5.03750493','177.29071029',23),('Fleur','Door_Bathroom','Magnetic','-32.34791158','-82.97355494',89),('Osbourne','Door_Kitchen','Flush','28.43437067','-15.24775459',151),('Rosemary','Fridge','Magnetic','-38.47461533','-83.92195589',146),('Lorilee','Bed','Flush','-35.15057826','-161.71420893',77),('Zelda','Toilet','PIR','-6.63592026','83.43630005',69),('Zelda','Door_Kitchen','Pressure','-66.21360724','96.57669692',75),('Lorilee','Door_Kitchen','Electric','-20.58941895','53.13433194',21),('Jamie','Cabinet','Flush','-29.65908261','-138.85625659',153),('Fleur','Door_Kitchen','Flush','-42.19560502','98.52313249',88),('Nichole','Basin','PIR','0.73644871','-67.96208359',79),('Osbourne','Shower','Electric','-7.75808931','176.91643614',136),('firstName','location','sensor','latitude','longitude',7),('Nichole','Seat','Magnetic','-30.53892977','-95.47657665',83),('Fleur','Cabinet','Pressure','-44.66156695','-63.30087742',31),('Rosemary','Toilet','Magnetic','52.18559288','-69.30401521',149),('Everett','Cooktop','Pressure','57.49101395','-104.17273624',300),('Lorilee','Shower','Electric','10.73810411','-20.65245826',63),('Rosemary','Door_Bedroom','Electric','31.3865847','-139.15324166',72),('Fleur','Microwave','Flush','57.12578504','-95.06771777',29),('Ellette','Microwave','Pressure','17.63716366','110.18018673',95),('Lorilee','Bed','PIR','20.26747289','-53.22248804',79),('Alejandro','Door_Bedroom','Flush','77.52375824','-162.11422435',162),('Everett','Cooktop','Magnetic','42.49314891','70.61939495',40),('Nichole','Shower','PIR','60.01489167','-11.09676096',71),('Jamie','Basin','Pressure','6.77735593','-16.0651936',148),('Ellette','Toaster','Magnetic','42.88212722','-128.86823015',30),('Lorilee','Door_Kitchen','Flush','-74.94813897','-44.35830832',73),('Ellette','Maindoor','Electric','27.14136774','24.85515446',37),('Alejandro','Seat','Flush','4.64314188','39.28093251',27),('Alejandro','Cooktop','Magnetic','31.94850883','-15.49304353',27),('Zelda','Door_Bathroom','Flush','-41.32372475','119.42398068',64),('Lorilee','Cooktop','PIR','38.82070316','149.68769412',24),('Alejandro','Bed','PIR','16.36088832','-83.41719758',30),('Lorilee','Maindoor','Electric','58.82306077','152.8718524',26),('Osbourne','Cabinet','Electric','-54.38525135','96.43005489',244),('Lorilee','Door_Kitchen','Flush','39.65180284','107.29308319',26),('Lorilee','Cooktop','Pressure','-42.89264167','67.83777323',29),('Lorilee','Basin','Flush','-6.13814245','-144.03710757',69),('Everett','Toaster','Flush','-60.70679245','23.25025214',39),('Nichole','Cooktop','Flush','-38.63904569','-138.51169845',82),('Fleur','Door_Kitchen','Electric','-41.27349912','-89.52523855',27),('Nichole','Basin','Pressure','-26.26005934','-19.47321596',75),('Fleur','Cooktop','Pressure','-55.4413522','64.4741846',32),('Fleur','Toaster','Electric','-2.65094384','-24.34219757',95),('Alejandro','Bed','Magnetic','-9.02690022','115.31186882',29);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-21 17:26:19
