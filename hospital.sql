-- MySQL dump 10.16  Distrib 10.1.19-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: localhost
-- ------------------------------------------------------
-- Server version	10.1.19-MariaDB

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
-- Table structure for table `apotek`
--

DROP TABLE IF EXISTS `apotek`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apotek` (
  `No_Reg_Infra` varchar(10) NOT NULL,
  `Nama` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`No_Reg_Infra`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apotek`
--

LOCK TABLES `apotek` WRITE;
/*!40000 ALTER TABLE `apotek` DISABLE KEYS */;
INSERT INTO `apotek` VALUES ('1001','Apotek Sumber Sehat'),('1002','Apotek Sumber Waras'),('1003','Apotek Jaya');
/*!40000 ALTER TABLE `apotek` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `berobat`
--

DROP TABLE IF EXISTS `berobat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `berobat` (
  `ID_Pasien` varchar(5) NOT NULL,
  `ID_Perawat` varchar(3) NOT NULL,
  `No_Apotek` varchar(50) NOT NULL,
  `ID_Dokter` varchar(5) NOT NULL,
  PRIMARY KEY (`ID_Pasien`,`ID_Perawat`,`No_Apotek`,`ID_Dokter`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `berobat`
--

LOCK TABLES `berobat` WRITE;
/*!40000 ALTER TABLE `berobat` DISABLE KEYS */;
INSERT INTO `berobat` VALUES ('10','191','1001','39'),('100','5','1002','104'),('107','8','1003','150'),('108','199','1001','167'),('11','100','1002','148'),('11','20','1003','158'),('113','156','1003','8'),('114','84','1001','35'),('116','168','1003','68'),('116','199','1003','165'),('119','35','1002','119'),('120','164','1003','58'),('123','50','1002','131'),('123','53','1003','93'),('124','195','1001','27'),('126','120','1001','161'),('127','17','1002','63'),('127','195','1002','178'),('129','24','1003','40'),('130','42','1002','50'),('131','43','1001','3'),('136','43','1003','52'),('137','14','1003','34'),('140','170','1002','36'),('140','199','1003','177'),('142','30','1001','132'),('151','155','1001','129'),('153','69','1001','157'),('155','51','1001','78'),('158','24','1001','49'),('162','10','1003','148'),('165','112','1003','69'),('165','184','1003','168'),('168','137','1001','47'),('170','66','1002','96'),('174','115','1003','102'),('175','144','1003','21'),('175','175','1002','65'),('176','67','1003','83'),('179','118','1002','33'),('179','51','1003','80'),('183','170','1002','27'),('189','150','1001','4'),('190','104','1003','103'),('191','18','1003','164'),('191','65','1001','152'),('191','98','1001','82'),('192','70','1003','166'),('193','194','1002','147'),('193','23','1003','129'),('195','176','1003','119'),('196','51','1003','101'),('196','52','1003','76'),('197','180','1003','129'),('23','190','1001','165'),('23','62','1003','147'),('3','142','1002','172'),('31','1','1003','114'),('32','97','1003','84'),('33','10','1003','172'),('34','135','1003','130'),('34','156','1003','45'),('35','13','1002','174'),('35','57','1003','28'),('40','27','1003','5'),('43','97','1001','69'),('45','6','1001','39'),('46','122','1001','168'),('46','58','1003','46'),('48','52','1003','72'),('49','99','1002','165'),('5','194','1002','9'),('52','186','1003','104'),('53','158','1002','118'),('55','127','1003','123'),('60','139','1001','51'),('63','135','1002','117'),('64','109','1003','11'),('65','176','1003','47'),('65','87','1002','59'),('66','119','1003','41'),('68','184','1001','41'),('69','77','1003','40'),('70','197','1003','10'),('71','162','1001','147'),('76','114','1001','63'),('79','200','1003','194'),('79','62','1001','44'),('83','15','1001','164'),('83','22','1001','78'),('87','83','1002','117'),('9','174','1003','164'),('9','197','1003','50'),('91','127','1003','186'),('93','176','1003','58'),('94','123','1003','46'),('94','181','1002','84'),('95','150','1002','63'),('98','10','1002','164'),('99','180','1003','91');
/*!40000 ALTER TABLE `berobat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departemen`
--

DROP TABLE IF EXISTS `departemen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departemen` (
  `Nama` varchar(50) NOT NULL,
  PRIMARY KEY (`Nama`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departemen`
--

LOCK TABLES `departemen` WRITE;
/*!40000 ALTER TABLE `departemen` DISABLE KEYS */;
INSERT INTO `departemen` VALUES ('Ilmu Kesehatan Anak'),('Ilmu Kesehatan Mata'),('Ilmu Penyakit Dalam'),('Kebidanan dan Kandungan'),('Telinga Hidung Tenggorok');
/*!40000 ALTER TABLE `departemen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dokter`
--

DROP TABLE IF EXISTS `dokter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dokter` (
  `ID_Dokter` int(20) NOT NULL AUTO_INCREMENT,
  `Nama_Dokter` varchar(30) DEFAULT NULL,
  `Alamat_Dokter` varchar(100) DEFAULT NULL,
  `Spesialisasi` varchar(30) DEFAULT NULL,
  `Nama_Departemen` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_Dokter`),
  KEY `FK_dokter_departemen` (`Nama_Departemen`),
  CONSTRAINT `FK_dokter_departemen` FOREIGN KEY (`Nama_Departemen`) REFERENCES `departemen` (`Nama`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dokter`
--

LOCK TABLES `dokter` WRITE;
/*!40000 ALTER TABLE `dokter` DISABLE KEYS */;
INSERT INTO `dokter` VALUES (1,'Mary Johnson','6017 Linden Plaza','Radiologi','Ilmu Kesehatan Anak'),(2,'John Long','65598 Sutteridge Trail','Glaukoma','Ilmu Kesehatan Mata'),(3,'Brenda Mitchell','0 Hallows Way','Geriatri','Ilmu Penyakit Dalam'),(4,'Steven Carroll','24 Schmedeman Plaza','Onkologi Ginekologi','Kebidanan dan Kandungan'),(5,'Andrea Griffin','84 Judy Circle','Radiologi','Ilmu Kesehatan Anak'),(6,'Adam Evans','53 Donald Street','Glaukoma','Ilmu Kesehatan Mata'),(7,'Melissa Johnson','0366 Randy Place','Geriatri','Ilmu Penyakit Dalam'),(8,'Jessica Jacobs','56 Golf Course Park','Onkologi Ginekologi','Kebidanan dan Kandungan'),(9,'Ernest Gutierrez','6536 Monterey Terrace','Kardiologi','Ilmu Kesehatan Anak'),(10,'Michelle Larson','7315 Utah Plaza','Geriatri','Ilmu Penyakit Dalam'),(11,'Diane Lane','17025 Schmedeman Court','Glaukoma','Ilmu Kesehatan Mata'),(12,'Donna Nelson','9 Onsgard Court','Perinatologi','Ilmu Kesehatan Anak'),(13,'Howard Bell','818 Gerald Trail','Onkologi Ginekologi','Kebidanan dan Kandungan'),(14,'Susan Little','0975 Oak Park','Alergi Immunologi','Ilmu Kesehatan Anak'),(15,'Frank Howard','6 Porter Terrace','Otologi','Telinga Hidung Tenggorok'),(16,'Joseph Roberts','546 Sycamore Crossing','Onkologi Ginekologi','Kebidanan dan Kandungan'),(17,'Patrick Burns','22 Harbort Alley','Nefrologi','Ilmu Kesehatan Anak'),(18,'Terry Hunter','56326 Forest Dale Lane','Glaukoma','Ilmu Kesehatan Mata'),(19,'Kimberly Garrett','32 Express Street','Onkologi Ginekologi','Kebidanan dan Kandungan'),(20,'Jack Clark','50742 Dahle Court','Geriatri','Ilmu Penyakit Dalam'),(21,'Victor Jacobs','557 Elgar Hill','Onkologi Ginekologi','Kebidanan dan Kandungan'),(22,'Ronald Smith','7 Dovetail Parkway','Glaukoma','Ilmu Kesehatan Mata'),(23,'Thomas Wheeler','58743 Hoard Court','Otologi','Telinga Hidung Tenggorok'),(24,'Jonathan Williamson','0 Raven Alley','Hemato Ongkologi','Ilmu Kesehatan Anak'),(25,'Kenneth Simpson','345 Spenser Hill','Refraksi','Ilmu Kesehatan Mata'),(26,'Kathryn Spencer','8 Sage Trail','Otologi','Telinga Hidung Tenggorok'),(27,'Carlos Kelley','873 Raven Terrace','Onkologi Ginekologi','Kebidanan dan Kandungan'),(28,'Kimberly Thompson','405 Cordelia Parkway','Geriatri','Ilmu Penyakit Dalam'),(29,'Wanda Arnold','01 Russell Street','Nutrisi dan Penyakit Metabolik','Ilmu Kesehatan Anak'),(30,'Carl Johnson','1 Basil Drive','Otologi','Telinga Hidung Tenggorok'),(31,'Jacqueline Graham','8 Cody Parkway','Psikosomatik','Ilmu Penyakit Dalam'),(32,'Adam Ellis','0 Sunfield Trail','Otologi','Telinga Hidung Tenggorok'),(33,'Jose Perkins','7109 Ridge Oak Way','Endokrinologi','Ilmu Kesehatan Anak'),(34,'Todd Smith','67 Talmadge Lane','Onkologi Ginekologi','Kebidanan dan Kandungan'),(35,'Victor Ferguson','50737 Lukken Street','Rinologi','Telinga Hidung Tenggorok'),(36,'Victor Clark','86 Lien Junction','Rinologi','Telinga Hidung Tenggorok'),(37,'Anna Gray','17 Valley Edge Circle','Kardiologi','Ilmu Kesehatan Anak'),(38,'Carol Barnes','78 Vahlen Drive','Kardiologi','Ilmu Kesehatan Anak'),(39,'Ruby Bradley','4534 Helena Drive','Rinologi','Telinga Hidung Tenggorok'),(40,'Louise Holmes','3 Burrows Hill','Refraksi','Ilmu Kesehatan Mata'),(41,'Benjamin Arnold','07 Spaight Way','Onkologi Ginekologi','Kebidanan dan Kandungan'),(42,'Angela Stanley','859 Ridge Oak Park','Kardiologi','Ilmu Kesehatan Anak'),(43,'Wanda Clark','1 Grasskamp Trail','Psikosomatik','Ilmu Penyakit Dalam'),(44,'Jack Harris','476 Cherokee Junction','Refraksi','Ilmu Kesehatan Mata'),(45,'Judith Morgan','06865 Dennis Crossing','Neurologi','Ilmu Kesehatan Anak'),(46,'Emily West','58650 Reinke Drive','Rinologi','Telinga Hidung Tenggorok'),(47,'Paul Allen','8 Mcguire Parkway','Onkologi Ginekologi','Kebidanan dan Kandungan'),(48,'Sara Roberts','99053 Carberry Hill','Refraksi','Ilmu Kesehatan Mata'),(49,'Peter Bailey','1 Burning Wood Junction','Fetomaternal','Kebidanan dan Kandungan'),(50,'Kathleen Medina','9618 Johnson Junction','Refraksi','Ilmu Kesehatan Mata'),(51,'Jean Griffin','18 Riverside Avenue','Rinologi','Telinga Hidung Tenggorok'),(52,'Virginia Lopez','4 Judy Center','Neurologi','Ilmu Kesehatan Anak'),(53,'Kevin Matthews','21531 Emmet Hill','Fetomaternal','Kebidanan dan Kandungan'),(54,'Marie Flores','1321 Bultman Pass','Psikosomatik','Ilmu Penyakit Dalam'),(55,'David Montgomery','68 Independence Terrace','Neurologi','Ilmu Kesehatan Anak'),(56,'Anne Washington','254 Jenifer Lane','Laring-Faring','Telinga Hidung Tenggorok'),(57,'Ruby Gomez','478 Caliangt Point','Psikosomatik','Ilmu Penyakit Dalam'),(58,'Katherine Wilson','6 Arizona Court','Onkologi mata','Ilmu Kesehatan Mata'),(59,'Harold Martinez','1 Dexter Trail','Fetomaternal','Kebidanan dan Kandungan'),(60,'Samuel Arnold','56964 Nova Avenue','Laring-Faring','Telinga Hidung Tenggorok'),(61,'Benjamin Garrett','4 Truax Trail','Fetomaternal','Kebidanan dan Kandungan'),(62,'Jean Cole','88196 Mcguire Place','Radiologi','Ilmu Kesehatan Anak'),(63,'Evelyn Rogers','6370 Del Sol Avenue','Fetomaternal','Kebidanan dan Kandungan'),(64,'Debra Ryan','58 Fairview Place','Fetomaternal','Kebidanan dan Kandungan'),(65,'Philip Moore','7206 Summer Ridge Street','Fetomaternal','Kebidanan dan Kandungan'),(66,'Rebecca Walker','74 Elgar Park','Radiologi','Ilmu Kesehatan Anak'),(67,'Julie Sims','84 Reindahl Place','Laring-Faring','Telinga Hidung Tenggorok'),(68,'Philip Johnston','9 Arrowood Plaza','Laring-Faring','Telinga Hidung Tenggorok'),(69,'Billy Thomas','2 Carioca Place','Radiologi','Ilmu Kesehatan Anak'),(70,'Jacqueline Gray','742 Logan Court','Fetomaternal','Kebidanan dan Kandungan'),(71,'Nicole Scott','2 Becker Place','Nutrisi dan Penyakit Metabolik','Ilmu Kesehatan Anak'),(72,'Lois Sanders','083 Butternut Alley','Fetomaternal','Kebidanan dan Kandungan'),(73,'Jane Tucker','9230 Hudson Place','Psikosomatik','Ilmu Penyakit Dalam'),(74,'Gregory Reid','9447 Dwight Alley','Onkologi mata','Ilmu Kesehatan Mata'),(75,'Kenneth Hall','0772 Trailsway Way','Laring-Faring','Telinga Hidung Tenggorok'),(76,'Joyce Green','4936 American Ash Center','Reumatologi','Ilmu Penyakit Dalam'),(77,'Jacqueline Harper','1365 Fremont Pass','Nutrisi dan Penyakit Metabolik','Ilmu Kesehatan Anak'),(78,'Rebecca Carr','875 Farwell Park','Laring-Faring','Telinga Hidung Tenggorok'),(79,'George Hunt','14 South Circle','Rinologi','Telinga Hidung Tenggorok'),(80,'Rebecca Watkins','04713 Jay Trail','Reumatologi','Ilmu Penyakit Dalam'),(81,'Betty Ramirez','744 Red Cloud Circle','Onkologi mata','Ilmu Kesehatan Mata'),(82,'Jean Freeman','3081 Sullivan Drive','Fetomaternal','Kebidanan dan Kandungan'),(83,'Patricia Armstrong','357 Blaine Lane','Reumatologi','Ilmu Penyakit Dalam'),(84,'Brandon Ferguson','825 Jackson Terrace','Onkologi mata','Ilmu Kesehatan Mata'),(85,'Christine Young','86 Roth Lane','Rinologi','Telinga Hidung Tenggorok'),(86,'Lois Burke','09 Grasskamp Trail','Nutrisi dan Penyakit Metabolik','Ilmu Kesehatan Anak'),(87,'Heather Crawford','24 Westend Plaza','Rinologi','Telinga Hidung Tenggorok'),(88,'Doris Kelly','0261 Lien Way','Kesehatan Reproduksi','Kebidanan dan Kandungan'),(89,'Scott Weaver','65 Bluejay Court','Reumatologi','Ilmu Penyakit Dalam'),(90,'Michelle Davis','0689 Buell Circle','Reumatologi','Ilmu Penyakit Dalam'),(91,'George Thompson','150 Eagle Crest Parkway','Onkologi mata','Ilmu Kesehatan Mata'),(92,'Larry Chapman','0 Di Loreto Alley','Kesehatan Reproduksi','Kebidanan dan Kandungan'),(93,'Theresa Howell','6575 Brentwood Center','Rinologi','Telinga Hidung Tenggorok'),(94,'David Burton','64 Columbus Crossing','Nutrisi dan Penyakit Metabolik','Ilmu Kesehatan Anak'),(95,'Jerry Riley','107 Upham Center','Kesehatan Reproduksi','Kebidanan dan Kandungan'),(96,'Randy Flores','9 Chive Hill','Rinologi','Telinga Hidung Tenggorok'),(97,'Sharon Burke','1 Bluestem Street','Ginjal Hipertensi','Ilmu Penyakit Dalam'),(98,'Linda Walker','069 Hooker Court','Rinologi','Telinga Hidung Tenggorok'),(99,'Carl Shaw','03 Forest Run Drive','Perinatologi','Ilmu Kesehatan Anak'),(100,'Shawn Payne','17 Basil Point','Neurotologi','Telinga Hidung Tenggorok'),(101,'Kelly Bowman','23488 Summerview Parkway','Perinatologi','Ilmu Kesehatan Anak'),(102,'Pamela Banks','1254 Knutson Pass','Neurotologi','Telinga Hidung Tenggorok'),(103,'Justin Harper','8532 Arizona Crossing','Kesehatan Reproduksi','Kebidanan dan Kandungan'),(104,'Tammy Ward','10 Main Plaza','Perinatologi','Ilmu Kesehatan Anak'),(105,'Gerald Barnes','5100 1st Road','Ginjal Hipertensi','Ilmu Penyakit Dalam'),(106,'Judy Price','0003 Grayhawk Avenue','Neurotologi','Telinga Hidung Tenggorok'),(107,'Ernest Gray','666 2nd Way','Kesehatan Reproduksi','Kebidanan dan Kandungan'),(108,'Alice Fuller','1379 La Follette Place','Ginjal Hipertensi','Ilmu Penyakit Dalam'),(109,'Stephen Franklin','5 Spaight Trail','Perinatologi','Ilmu Kesehatan Anak'),(110,'Willie Gilbert','5 Monterey Street','Neurotologi','Telinga Hidung Tenggorok'),(111,'George Hunt','8 Montana Trail','Neurotologi','Telinga Hidung Tenggorok'),(112,'Steven Martin','1926 Kropf Hill','Vitreo-Retina','Ilmu Kesehatan Mata'),(113,'Ralph Bryant','99 Sachs Point','Perinatologi','Ilmu Kesehatan Anak'),(114,'Gloria Stephens','352 Welch Lane','Kesehatan Reproduksi','Kebidanan dan Kandungan'),(115,'Douglas Kim','8816 Maryland Junction','Neurotologi','Telinga Hidung Tenggorok'),(116,'Johnny Williamson','27452 Reinke Crossing','Ginjal Hipertensi','Ilmu Penyakit Dalam'),(117,'Todd Hudson','57 Dwight Circle','Alergi Immunologi','Ilmu Kesehatan Anak'),(118,'Harold Jackson','93 Hayes Lane','Kesehatan Reproduksi','Kebidanan dan Kandungan'),(119,'Cynthia Hughes','37 Doe Crossing Street','Ginjal Hipertensi','Ilmu Penyakit Dalam'),(120,'Martha Porter','0166 Nova Lane','Alergi Immunologi','Telinga Hidung Tenggorok'),(121,'Daniel Riley','674 Fremont Hill','Alergi Immunologi','Ilmu Kesehatan Anak'),(122,'Jeremy Fields','036 John Wall Road','Alergi Immunologi','Telinga Hidung Tenggorok'),(123,'Christopher Richardson','28701 Lunder Junction','Kesehatan Reproduksi','Kebidanan dan Kandungan'),(124,'Mary Welch','7 Dakota Plaza','Alergi Immunologi','Ilmu Kesehatan Anak'),(125,'Judith Sullivan','51133 Bashford Parkway','Alergi Immunologi','Telinga Hidung Tenggorok'),(126,'George Hamilton','46466 Autumn Leaf Hill','Ginjal Hipertensi','Ilmu Penyakit Dalam'),(127,'Gary Ross','5433 Service Park','Hemato Ongkologi','Ilmu Kesehatan Anak'),(128,'Nicole Alvarez','5 Grim Junction','Alergi Immunologi','Telinga Hidung Tenggorok'),(129,'Ralph Brown','7 Pond Avenue','Ginjal Hipertensi','Ilmu Penyakit Dalam'),(130,'Anna Mitchell','56 Upham Alley','Hemato Ongkologi','Ilmu Kesehatan Anak'),(131,'Nicole Sanders','0 Oakridge Circle','Alergi Immunologi','Telinga Hidung Tenggorok'),(132,'Kimberly Montgomery','75 Lakeland Trail','Kesehatan Reproduksi','Kebidanan dan Kandungan'),(133,'Jeremy Roberts','80479 Rockefeller Parkway','Hemato Ongkologi','Ilmu Kesehatan Anak'),(134,'Larry Rivera','15478 Fuller Lane','Plastik Rekonstruksi','Telinga Hidung Tenggorok'),(135,'Evelyn Green','782 Fordem Drive','Vitreo-Retina','Ilmu Kesehatan Mata'),(136,'Emily Simpson','412 Melrose Terrace','Plastik Rekonstruksi','Telinga Hidung Tenggorok'),(137,'Marilyn Ray','79 American Ash Place','Hemato Ongkologi','Ilmu Kesehatan Anak'),(138,'Anne Hunt','223 Pankratz Parkway','Plastik Rekonstruksi','Telinga Hidung Tenggorok'),(139,'Betty Collins','53 Hansons Point','Hepatologi','Ilmu Penyakit Dalam'),(140,'James Gibson','37549 Stone Corner Street','Hemato Ongkologi','Ilmu Kesehatan Anak'),(141,'Teresa Henry','18258 Packers Terrace','Plastik Rekonstruksi','Telinga Hidung Tenggorok'),(142,'Arthur Tucker','2441 Corben Terrace','Hepatologi','Ilmu Penyakit Dalam'),(143,'Ruth Pierce','7 Dryden Court','Infeksi dan Pediatrik Tropis','Ilmu Kesehatan Anak'),(144,'Louis Myers','95263 Butternut Pass','Plastik Rekonstruksi','Telinga Hidung Tenggorok'),(145,'Clarence Hall','0 John Wall Circle','Plastik Rekonstruksi','Telinga Hidung Tenggorok'),(146,'Sean Foster','600 Hallows Center','Infeksi dan Pediatrik Tropis','Ilmu Kesehatan Anak'),(147,'Victor Coleman','13117 Jenna Way','Kesehatan Reproduksi','Kebidanan dan Kandungan'),(148,'Johnny Garcia','278 Meadow Valley Trail','Laring-Faring','Telinga Hidung Tenggorok'),(149,'Judy Hayes','695 Loftsgordon Court','Infeksi dan Pediatrik Tropis','Ilmu Kesehatan Anak'),(150,'Christopher Ford','0261 Sunbrook Lane','Hepatologi','Ilmu Penyakit Dalam'),(151,'Gary Henry','4 Blue Bill Park Park','Laring-Faring','Telinga Hidung Tenggorok'),(152,'Arthur Cole','2253 Commercial Hill','Kesehatan Reproduksi','Kebidanan dan Kandungan'),(153,'Ann Gilbert','0378 Fisk Trail','Vitreo-Retina','Ilmu Kesehatan Mata'),(154,'Jane Chavez','7903 Basil Parkway','Obstetri Ginekologi','Kebidanan dan Kandungan'),(155,'Edward Bradley','4 Forster Place','Hepatologi','Ilmu Penyakit Dalam'),(156,'Sarah Castillo','707 Walton Circle','Obstetri Ginekologi','Kebidanan dan Kandungan'),(157,'Annie Fields','24151 Kinsman Street','Infeksi dan Pediatrik Tropis','Ilmu Kesehatan Anak'),(158,'Stephen Hansen','46 Esch Terrace','Hepatologi','Ilmu Penyakit Dalam'),(159,'Martin West','8 Warner Alley','Laring-Faring','Telinga Hidung Tenggorok'),(160,'Robin Bishop','6514 Dorton Center','Obstetri Ginekologi','Kebidanan dan Kandungan'),(161,'Christine Cunningham','28505 Pierstorff Plaza','Hepatologi','Ilmu Penyakit Dalam'),(162,'Howard Wilson','0211 Old Shore Alley','Vitreo-Retina','Ilmu Kesehatan Mata'),(163,'Louise Grant','4 Pepper Wood Circle','Laring-Faring','Telinga Hidung Tenggorok'),(164,'Larry Olson','95182 Talmadge Junction','Infeksi dan Pediatrik Tropis','Ilmu Kesehatan Anak'),(165,'Adam Lawrence','5496 Novick Junction','Laring-Faring','Telinga Hidung Tenggorok'),(166,'Sean Peters','6592 Warner Place','Obstetri Ginekologi','Kebidanan dan Kandungan'),(167,'Cheryl Stephens','861 Larry Junction','Laring-Faring','Telinga Hidung Tenggorok'),(168,'Jerry Gibson','822 Hagan Road','Infeksi dan Pediatrik Tropis','Ilmu Kesehatan Anak'),(169,'Evelyn Warren','9904 1st Way','Neurotologi','Telinga Hidung Tenggorok'),(170,'Justin Palmer','8040 Corry Junction','Metabolik Endokrin','Ilmu Penyakit Dalam'),(171,'Douglas Nguyen','9 Graedel Alley','Obstetri Ginekologi','Kebidanan dan Kandungan'),(172,'Randy Foster','43257 Muir Center','Obstetri Ginekologi','Kebidanan dan Kandungan'),(173,'Amy Richards','85 4th Place','Nefrologi','Ilmu Kesehatan Anak'),(174,'Justin Burke','8590 Towne Trail','Neurotologi','Telinga Hidung Tenggorok'),(175,'Deborah Andrews','432 Pankratz Crossing','Obstetri Ginekologi','Kebidanan dan Kandungan'),(176,'Lori Jackson','797 Schlimgen Point','Obstetri Ginekologi','Kebidanan dan Kandungan'),(177,'Kenneth Jackson','226 Hoffman Street','Neurotologi','Telinga Hidung Tenggorok'),(178,'Jane Kelly','5472 Charing Cross Crossing','Nefrologi','Ilmu Kesehatan Anak'),(179,'Cynthia Harvey','4767 Transport Center','Obstetri Ginekologi','Kebidanan dan Kandungan'),(180,'Maria Howard','014 Center Place','Metabolik Endokrin','Ilmu Penyakit Dalam'),(181,'Phyllis Gardner','29 Nancy Parkway','Neurotologi','Telinga Hidung Tenggorok'),(182,'Lawrence Rodriguez','958 Northview Drive','Vitreo-Retina','Ilmu Kesehatan Mata'),(183,'Ruth Washington','4 Schlimgen Road','Neurotologi','Telinga Hidung Tenggorok'),(184,'Angela Lane','37919 Merrick Alley','Nefrologi','Ilmu Kesehatan Anak'),(185,'Frank Cox','8108 Mayfield Drive','Neurotologi','Telinga Hidung Tenggorok'),(186,'Joyce Daniels','4324 Main Circle','Obstetri Ginekologi','Kebidanan dan Kandungan'),(187,'Gloria Willis','003 Pearson Point','Neurotologi','Telinga Hidung Tenggorok'),(188,'David Wells','52622 Grayhawk Drive','Nefrologi','Ilmu Kesehatan Anak'),(189,'Robin Bowman','3 Corben Circle','Uroginekologi Rekonstruksi','Kebidanan dan Kandungan'),(190,'Raymond Rice','6481 Mifflin Lane','Uroginekologi Rekonstruksi','Kebidanan dan Kandungan'),(191,'Ralph Coleman','993 Buena Vista Road','Metabolik Endokrin','Ilmu Penyakit Dalam'),(192,'Adam Berry','026 Ramsey Way','Uroginekologi Rekonstruksi','Kebidanan dan Kandungan'),(193,'Raymond Patterson','6 Bellgrove Crossing','Nefrologi','Ilmu Kesehatan Anak'),(194,'Barbara Rice','92 Bonner Plaza','Neurotologi','Telinga Hidung Tenggorok'),(195,'Gregory Hall','17 Service Drive','Uroginekologi Rekonstruksi','Kebidanan dan Kandungan'),(196,'Ronald Sullivan','40246 Gale Avenue','Uroginekologi Rekonstruksi','Kebidanan dan Kandungan'),(197,'Michelle Thomas','614 Vermont Junction','Neuro Oftalmologi','Ilmu Kesehatan Mata'),(198,'Janice Allen','35 Dennis Center','Neuro Oftalmologi','Ilmu Kesehatan Mata'),(199,'Patrick Meyer','67367 Forest Alley','Neuro Oftalmologi','Ilmu Kesehatan Mata'),(200,'Donna Jackson','7716 Birchwood Avenue','Perinatologi','Ilmu Kesehatan Anak');
/*!40000 ALTER TABLE `dokter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grup_penanganan`
--

DROP TABLE IF EXISTS `grup_penanganan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grup_penanganan` (
  `ID_Perawat` varchar(3) NOT NULL,
  `ID_Dokter` varchar(5) NOT NULL,
  PRIMARY KEY (`ID_Perawat`,`ID_Dokter`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grup_penanganan`
--

LOCK TABLES `grup_penanganan` WRITE;
/*!40000 ALTER TABLE `grup_penanganan` DISABLE KEYS */;
INSERT INTO `grup_penanganan` VALUES ('1','17'),('1','35'),('101','80'),('102','31'),('102','38'),('103','135'),('107','26'),('110','35'),('111','184'),('112','59'),('115','13'),('116','162'),('118','83'),('126','30'),('127','159'),('136','45'),('137','51'),('138','18'),('138','198'),('139','17'),('139','178'),('14','65'),('14','9'),('142','124'),('144','102'),('149','102'),('150','59'),('151','146'),('151','41'),('152','184'),('154','200'),('154','46'),('155','18'),('155','184'),('155','51'),('160','182'),('161','92'),('170','196'),('174','42'),('175','93'),('177','173'),('178','99'),('185','153'),('187','101'),('189','181'),('19','143'),('19','147'),('193','13'),('193','3'),('194','176'),('23','17'),('23','170'),('24','54'),('28','5'),('3','78'),('31','55'),('33','137'),('33','139'),('34','68'),('34','77'),('35','104'),('37','32'),('38','170'),('38','194'),('39','132'),('41','157'),('41','90'),('43','156'),('44','72'),('45','40'),('46','195'),('47','102'),('47','4'),('58','36'),('6','187'),('6','84'),('61','51'),('62','193'),('63','150'),('63','72'),('64','178'),('7','119'),('70','154'),('71','57'),('71','86'),('72','17'),('75','14'),('75','184'),('77','30'),('79','155'),('85','83'),('87','161'),('88','35'),('88','39'),('93','98'),('94','105'),('95','20'),('95','89'),('97','81'),('99','118');
/*!40000 ALTER TABLE `grup_penanganan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inap`
--

DROP TABLE IF EXISTS `inap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inap` (
  `No_Kamar` int(20) NOT NULL,
  `ID_Pasien` int(20) NOT NULL,
  `No_Apotek` varchar(10) NOT NULL,
  PRIMARY KEY (`No_Kamar`,`ID_Pasien`,`No_Apotek`),
  KEY `FK_Inap_Pasien` (`ID_Pasien`),
  KEY `FK_Inap_Apotek` (`No_Apotek`),
  CONSTRAINT `FK_Inap_Apotek` FOREIGN KEY (`No_Apotek`) REFERENCES `apotek` (`No_Reg_Infra`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Inap_Kamar` FOREIGN KEY (`No_Kamar`) REFERENCES `kamar` (`No_Reg_Inf_Ap`),
  CONSTRAINT `FK_Inap_Pasien` FOREIGN KEY (`ID_Pasien`) REFERENCES `pasien` (`ID_Pasien`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inap`
--

LOCK TABLES `inap` WRITE;
/*!40000 ALTER TABLE `inap` DISABLE KEYS */;
INSERT INTO `inap` VALUES (1004,42,'1001'),(1004,193,'1003'),(1005,37,'1003'),(1005,43,'1001'),(1005,53,'1003'),(1005,144,'1001'),(1006,51,'1001'),(1006,121,'1001'),(1007,19,'1001'),(1007,108,'1002'),(1007,122,'1001'),(1007,155,'1002'),(1009,9,'1003'),(1009,69,'1003'),(1010,22,'1002'),(1011,25,'1001'),(1011,43,'1003'),(1011,60,'1001'),(1011,76,'1003'),(1011,163,'1001'),(1012,3,'1002'),(1012,123,'1001'),(1012,171,'1003'),(1014,96,'1003'),(1015,34,'1001'),(1016,131,'1003'),(1017,21,'1002'),(1017,65,'1003'),(1017,125,'1003'),(1017,132,'1003'),(1017,191,'1002'),(1018,186,'1002'),(1020,25,'1001'),(1020,56,'1002'),(1021,159,'1001'),(1022,114,'1002'),(1022,139,'1001'),(1024,94,'1001'),(1024,98,'1003'),(1024,158,'1001'),(1024,167,'1003'),(1025,4,'1003'),(1025,78,'1003'),(1025,79,'1003'),(1025,87,'1001'),(1025,137,'1002'),(1025,189,'1003'),(1026,152,'1003'),(1026,162,'1003'),(1027,3,'1001'),(1027,6,'1002'),(1027,10,'1001'),(1027,86,'1002'),(1028,46,'1003'),(1030,127,'1002'),(1030,195,'1002'),(1031,101,'1001'),(1031,150,'1003'),(1032,126,'1002'),(1032,184,'1001'),(1032,190,'1002'),(1033,100,'1002'),(1034,8,'1002'),(1034,80,'1003'),(1035,121,'1001'),(1035,144,'1002'),(1036,6,'1002'),(1036,98,'1003'),(1036,127,'1001'),(1037,130,'1002'),(1037,148,'1002'),(1037,189,'1002'),(1038,60,'1002'),(1038,150,'1002'),(1039,73,'1002'),(1040,40,'1001'),(1041,48,'1001'),(1041,189,'1002'),(1041,198,'1001'),(1042,77,'1002'),(1043,102,'1002'),(1043,137,'1001'),(1044,42,'1003'),(1045,148,'1002'),(1045,160,'1001'),(1046,12,'1001'),(1047,70,'1002'),(1049,70,'1003'),(1050,76,'1003'),(1050,158,'1003'),(1051,67,'1003'),(1051,76,'1002'),(1051,135,'1003'),(1052,95,'1003'),(1052,104,'1002'),(1053,49,'1003'),(1056,177,'1003'),(1057,117,'1003'),(1058,64,'1001'),(1058,154,'1001'),(1059,34,'1003'),(1059,88,'1002'),(1060,22,'1002'),(1061,124,'1001'),(1062,197,'1002'),(1063,134,'1003'),(1063,157,'1002'),(1064,19,'1002'),(1064,177,'1003'),(1064,197,'1001'),(1065,107,'1002'),(1065,141,'1001'),(1065,178,'1002'),(1066,87,'1002'),(1067,91,'1001'),(1067,168,'1001'),(1068,80,'1001'),(1068,129,'1001'),(1068,180,'1002'),(1068,194,'1001'),(1069,18,'1003'),(1069,133,'1003'),(1069,136,'1003'),(1069,158,'1002'),(1069,196,'1003'),(1070,77,'1002'),(1071,29,'1003'),(1071,124,'1003'),(1072,103,'1001'),(1073,33,'1002'),(1073,104,'1001'),(1074,30,'1002'),(1074,43,'1001'),(1074,140,'1003'),(1075,95,'1002'),(1076,3,'1001'),(1076,90,'1002'),(1077,46,'1001'),(1077,75,'1002'),(1077,180,'1001'),(1078,73,'1002'),(1078,129,'1003'),(1079,24,'1002'),(1079,175,'1002'),(1080,47,'1002'),(1080,120,'1002'),(1080,189,'1002'),(1081,97,'1003'),(1081,112,'1003');
/*!40000 ALTER TABLE `inap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infrastruktur`
--

DROP TABLE IF EXISTS `infrastruktur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infrastruktur` (
  `No_Reg` int(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`No_Reg`)
) ENGINE=InnoDB AUTO_INCREMENT=1101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infrastruktur`
--

LOCK TABLES `infrastruktur` WRITE;
/*!40000 ALTER TABLE `infrastruktur` DISABLE KEYS */;
INSERT INTO `infrastruktur` VALUES (1001),(1002),(1003),(1004),(1005),(1006),(1007),(1008),(1009),(1010),(1011),(1012),(1013),(1014),(1015),(1016),(1017),(1018),(1019),(1020),(1021),(1022),(1023),(1024),(1025),(1026),(1027),(1028),(1029),(1030),(1031),(1032),(1033),(1034),(1035),(1036),(1037),(1038),(1039),(1040),(1041),(1042),(1043),(1044),(1045),(1046),(1047),(1048),(1049),(1050),(1051),(1052),(1053),(1054),(1055),(1056),(1057),(1058),(1059),(1060),(1061),(1062),(1063),(1064),(1065),(1066),(1067),(1068),(1069),(1070),(1071),(1072),(1073),(1074),(1075),(1076),(1077),(1078),(1079),(1080),(1081),(1082),(1083),(1084),(1085),(1086),(1087),(1088),(1089),(1090),(1091),(1092),(1093),(1094),(1095),(1096),(1097),(1098),(1099),(1100);
/*!40000 ALTER TABLE `infrastruktur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kamar`
--

DROP TABLE IF EXISTS `kamar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kamar` (
  `No_Reg_Inf_Ap` int(20) NOT NULL,
  `Nomor_Kamar` int(20) DEFAULT NULL,
  PRIMARY KEY (`No_Reg_Inf_Ap`),
  UNIQUE KEY `Nomor_Kamar` (`Nomor_Kamar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kamar`
--

LOCK TABLES `kamar` WRITE;
/*!40000 ALTER TABLE `kamar` DISABLE KEYS */;
INSERT INTO `kamar` VALUES (1004,1),(1005,2),(1006,3),(1007,4),(1008,5),(1009,6),(1010,7),(1011,8),(1012,9),(1013,10),(1014,11),(1015,12),(1016,13),(1017,14),(1018,15),(1019,16),(1020,17),(1021,18),(1022,19),(1023,20),(1024,21),(1025,22),(1026,23),(1027,24),(1028,25),(1029,26),(1030,27),(1031,28),(1032,29),(1033,30),(1034,31),(1035,32),(1036,33),(1037,34),(1038,35),(1039,36),(1040,37),(1041,38),(1042,39),(1043,40),(1044,41),(1045,42),(1046,43),(1047,44),(1048,45),(1049,46),(1050,47),(1051,48),(1052,49),(1053,50),(1054,51),(1055,52),(1056,53),(1057,54),(1058,55),(1059,56),(1060,57),(1061,58),(1062,59),(1063,60),(1064,61),(1065,62),(1066,63),(1067,64),(1068,65),(1069,66),(1070,67),(1071,68),(1072,69),(1073,70),(1074,71),(1075,72),(1076,73),(1077,74),(1078,75),(1079,76),(1080,77),(1081,78),(1082,79),(1083,80),(1084,81);
/*!40000 ALTER TABLE `kamar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kebersihan`
--

DROP TABLE IF EXISTS `kebersihan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kebersihan` (
  `ID_Staff` int(11) NOT NULL,
  `No_Reg_Inf` int(11) NOT NULL,
  PRIMARY KEY (`ID_Staff`,`No_Reg_Inf`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kebersihan`
--

LOCK TABLES `kebersihan` WRITE;
/*!40000 ALTER TABLE `kebersihan` DISABLE KEYS */;
INSERT INTO `kebersihan` VALUES (1,1001),(2,1002),(3,1003),(4,1004),(5,1005),(6,1006),(7,1007),(8,1008),(9,1009),(10,1010),(11,1011),(12,1012),(13,1013),(14,1014),(15,1015),(16,1016),(17,1017),(18,1018),(19,1019),(20,1020),(21,1021),(22,1022),(23,1023),(24,1024),(25,1025),(26,1026),(27,1027),(28,1028),(29,1029),(30,1030),(31,1031),(32,1032),(33,1033),(34,1034),(35,1035),(36,1036),(37,1037),(38,1038),(39,1039),(40,1040),(41,1041),(42,1042),(43,1043),(44,1044),(45,1045),(46,1046),(47,1047),(48,1048),(49,1049),(50,1050),(51,1051),(52,1052),(53,1053),(54,1054),(55,1055),(56,1056),(57,1057),(58,1058),(59,1059),(60,1060),(61,1061),(62,1062),(63,1063),(64,1064),(65,1065),(66,1066),(67,1067),(68,1068),(69,1069),(70,1070),(71,1071),(72,1072),(73,1073),(74,1074),(75,1075),(76,1076),(77,1077),(78,1078),(79,1079),(80,1080),(81,1081),(82,1082),(83,1083),(84,1084),(85,1085),(86,1086),(87,1087),(88,1088),(89,1089),(90,1090),(91,1091),(92,1092),(93,1093),(94,1094),(95,1095),(96,1096),(97,1097),(98,1098),(99,1099),(100,1100);
/*!40000 ALTER TABLE `kebersihan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laboratorium`
--

DROP TABLE IF EXISTS `laboratorium`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laboratorium` (
  `No_Reg_Inf_Lb` int(20) NOT NULL,
  `Kode_Lab` int(20) NOT NULL,
  `Nama_Lab` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`No_Reg_Inf_Lb`,`Kode_Lab`),
  CONSTRAINT `laboratorium_ibfk_1` FOREIGN KEY (`No_Reg_Inf_Lb`) REFERENCES `non_apotek` (`No_Reg_Infra`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laboratorium`
--

LOCK TABLES `laboratorium` WRITE;
/*!40000 ALTER TABLE `laboratorium` DISABLE KEYS */;
INSERT INTO `laboratorium` VALUES (1085,1,'Parasitology'),(1086,2,'Microbiology'),(1087,3,'Hematology'),(1088,4,'Virology'),(1089,5,'Clinical Biochemistry'),(1090,6,'Coagulation'),(1091,7,'Serology'),(1092,8,'Toxicology'),(1093,9,'Immunohaematology'),(1094,10,'Urinalysis'),(1095,11,'Cytopathology'),(1096,12,'Histopathology'),(1097,13,'Electron microscopy'),(1098,14,'Genetics'),(1099,15,'Surgical pathology'),(1100,16,'Cytogenetics');
/*!40000 ALTER TABLE `laboratorium` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `no_telpon_perawat`
--

DROP TABLE IF EXISTS `no_telpon_perawat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `no_telpon_perawat` (
  `ID_Perawat` varchar(3) DEFAULT NULL,
  `No_Telp_Perawat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `no_telpon_perawat`
--

LOCK TABLES `no_telpon_perawat` WRITE;
/*!40000 ALTER TABLE `no_telpon_perawat` DISABLE KEYS */;
INSERT INTO `no_telpon_perawat` VALUES ('1','54-(142)324-2867'),('2','351-(911)605-7576'),('3','46-(481)846-0872'),('4','254-(830)462-7705'),('5','55-(372)162-3908'),('6','355-(830)644-1245'),('7','62-(717)205-6131'),('8','62-(183)967-5864'),('9','60-(566)608-7869'),('10','1-(240)351-8673'),('11','7-(249)184-8445'),('12','98-(209)456-6280'),('13','86-(571)718-7182'),('14','48-(504)310-9888'),('15','86-(638)652-4752'),('16','381-(957)912-0404'),('17','62-(485)531-5092'),('18','86-(228)497-8113'),('19','977-(104)973-2830'),('20','57-(171)646-8049'),('21','62-(614)980-4291'),('22','36-(783)549-6566'),('23','48-(885)980-5046'),('24','86-(367)298-6868'),('25','63-(509)630-6790'),('26','86-(198)312-9886'),('27','47-(549)337-5731'),('28','55-(561)883-0289'),('29','86-(475)980-2680'),('30','57-(165)645-7838'),('31','420-(580)885-9025'),('32','86-(109)311-0334'),('33','33-(282)159-9464'),('34','54-(174)119-1750'),('35','86-(915)538-6682'),('36','7-(194)692-4839'),('37','86-(660)255-3472'),('38','504-(196)947-9439'),('39','63-(867)645-9420'),('40','57-(548)676-4643'),('41','62-(931)446-2359'),('42','81-(233)421-5526'),('43','62-(227)331-4392'),('44','371-(662)638-1727'),('45','92-(109)657-1430'),('46','51-(221)775-4971'),('47','98-(956)121-4307'),('48','62-(308)451-1170'),('49','224-(275)682-6571'),('50','63-(393)340-7885'),('51','374-(191)697-6771'),('52','998-(321)901-0001'),('53','228-(158)969-5148'),('54','420-(640)764-9262'),('55','86-(816)755-3512'),('56','62-(168)926-3245'),('57','62-(191)474-5843'),('58','385-(664)815-5879'),('59','62-(913)200-6124'),('60','351-(829)327-8885'),('61','375-(317)561-2975'),('62','1-(816)838-0012'),('63','351-(644)720-2067'),('64','63-(403)825-1334'),('65','62-(529)501-4070'),('66','86-(932)970-0426'),('67','39-(835)679-1412'),('68','86-(792)654-4819'),('69','86-(643)126-9342'),('70','1-(916)703-9634'),('71','373-(915)983-9326'),('72','34-(371)131-5834'),('73','48-(689)638-0413'),('74','63-(985)165-9874'),('75','385-(715)461-1468'),('76','34-(677)168-6843'),('77','351-(703)369-2630'),('78','60-(395)424-3266'),('79','62-(356)617-9011'),('80','351-(716)381-8214'),('81','420-(804)430-4693'),('82','62-(718)149-1310'),('83','359-(965)699-2243'),('84','81-(773)984-9219'),('85','62-(772)335-7599'),('86','33-(650)422-6455'),('87','55-(161)289-7901'),('88','1-(107)781-8955'),('89','965-(179)150-8965'),('90','63-(775)568-7366'),('91','86-(929)717-2777'),('92','62-(174)411-3468'),('93','86-(500)165-1827'),('94','84-(847)218-5801'),('95','7-(831)198-9749'),('96','223-(482)700-0429'),('97','86-(344)897-8527'),('98','591-(946)180-0743'),('99','86-(202)841-7867'),('100','86-(413)709-9232'),('101','7-(471)236-2918'),('102','86-(847)263-6017'),('103','678-(696)284-2187'),('104','86-(965)611-8152'),('105','55-(765)538-1700'),('106','48-(855)503-1384'),('107','81-(985)728-5122'),('108','33-(313)608-4137'),('109','63-(781)703-9548'),('110','62-(566)503-7333'),('111','66-(301)466-8583'),('112','880-(137)634-2841'),('113','380-(217)546-3760'),('114','63-(263)528-3916'),('115','46-(121)909-4566'),('116','7-(144)495-9811'),('117','976-(904)574-5732'),('118','420-(120)727-9228'),('119','86-(422)415-2975'),('120','30-(992)551-4700'),('121','55-(896)156-7252'),('122','234-(159)895-4163'),('123','63-(871)375-3756'),('124','48-(481)836-3269'),('125','62-(499)304-5073'),('126','387-(692)641-5046'),('127','505-(242)910-9611'),('128','7-(450)131-2713'),('129','52-(235)467-7298'),('130','968-(742)235-7818'),('131','351-(658)421-7276'),('132','63-(700)488-0295'),('133','46-(572)506-1301'),('134','389-(561)538-4724'),('135','7-(520)733-6935'),('136','93-(551)807-5251'),('137','31-(337)400-2854'),('138','48-(618)230-1338'),('139','55-(113)601-8665'),('140','593-(980)790-9269'),('141','385-(661)311-1220'),('142','7-(384)498-9905'),('143','255-(554)853-4329'),('144','86-(684)712-2183'),('145','86-(333)890-3744'),('146','52-(285)790-5540'),('147','351-(139)143-1081'),('148','55-(826)973-6691'),('149','81-(498)791-4292'),('150','255-(152)459-6060'),('151','63-(811)250-6725'),('152','48-(805)827-0631'),('153','380-(111)896-7357'),('154','7-(892)662-1400'),('155','351-(201)351-8566'),('156','62-(355)804-0259'),('157','30-(691)469-4261'),('158','49-(347)463-4934'),('159','86-(444)673-9133'),('160','86-(329)223-6704'),('161','62-(185)283-1242'),('162','86-(670)853-3152'),('163','86-(647)823-2027'),('164','84-(922)666-3447'),('165','81-(442)524-2213'),('166','86-(418)252-3537'),('167','7-(979)631-9649'),('168','82-(784)722-0962'),('169','55-(634)288-5087'),('170','371-(998)912-9733'),('171','62-(629)928-7373'),('172','46-(248)653-8603'),('173','84-(186)904-9558'),('174','86-(849)601-3039'),('175','63-(362)717-5259'),('176','218-(835)599-0581'),('177','351-(113)110-6424'),('178','51-(157)596-0734'),('179','51-(233)396-9493'),('180','7-(689)372-9898'),('181','63-(477)699-4605'),('182','92-(374)406-0413'),('183','86-(629)127-1719'),('184','7-(766)452-2100'),('185','48-(712)846-3818'),('186','63-(235)315-9374'),('187','351-(763)248-6623'),('188','64-(564)764-1912'),('189','66-(718)443-1162'),('190','51-(860)849-5079'),('191','31-(910)304-5260'),('192','375-(856)476-5894'),('193','52-(148)581-6353'),('194','57-(408)653-7163'),('195','212-(791)395-4797'),('196','7-(489)264-9866'),('197','86-(183)105-8439'),('198','57-(587)999-2306'),('199','86-(607)299-7202'),('200','86-(385)969-6612');
/*!40000 ALTER TABLE `no_telpon_perawat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `no_telpon_staff`
--

DROP TABLE IF EXISTS `no_telpon_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `no_telpon_staff` (
  `ID_Staff` int(20) NOT NULL,
  `No_Telp_Staff` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`ID_Staff`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `no_telpon_staff`
--

LOCK TABLES `no_telpon_staff` WRITE;
/*!40000 ALTER TABLE `no_telpon_staff` DISABLE KEYS */;
INSERT INTO `no_telpon_staff` VALUES (1,'30-(283)606-0268'),(2,'86-(260)689-0462'),(3,'54-(968)942-0251'),(4,'33-(235)952-1128'),(5,'86-(754)575-2915'),(6,'55-(305)855-1320'),(7,'54-(294)623-0051'),(8,'255-(218)208-4717'),(9,'86-(923)395-3188'),(10,'63-(215)521-5193'),(11,'596-(844)988-6612'),(12,'62-(379)520-6066'),(13,'1-(813)158-0424'),(14,'63-(278)984-5705'),(15,'48-(847)242-4373'),(16,'7-(525)340-8509'),(17,'58-(639)361-6278'),(18,'86-(930)457-1911'),(19,'970-(678)616-4284'),(20,'86-(499)316-6766'),(21,'86-(984)776-8031'),(22,'86-(274)787-1769'),(23,'93-(200)329-4249'),(24,'86-(152)638-9395'),(25,'86-(477)562-9338'),(26,'86-(879)582-7917'),(27,'86-(186)232-9693'),(28,'86-(452)703-3460'),(29,'31-(756)567-3338'),(30,'62-(410)702-2944'),(31,'965-(753)290-4473'),(32,'62-(435)326-6819'),(33,'351-(821)718-3189'),(34,'62-(905)620-2868'),(35,'86-(699)273-6882'),(36,'251-(590)537-0152'),(37,'55-(889)974-8844'),(38,'33-(928)814-1037'),(39,'46-(539)532-1830'),(40,'66-(474)349-8991'),(41,'86-(608)309-8045'),(42,'62-(667)693-6868'),(43,'252-(245)914-4276'),(44,'1-(915)962-0460'),(45,'62-(126)690-1552'),(46,'7-(973)293-0701'),(47,'372-(144)652-2673'),(48,'254-(810)315-0788'),(49,'591-(359)545-8932'),(50,'86-(304)634-6950'),(51,'1-(850)508-5690'),(52,'55-(151)235-8360'),(53,'1-(407)661-4408'),(54,'84-(186)141-7217'),(55,'45-(356)332-6860'),(56,'86-(283)660-7971'),(57,'380-(678)524-5483'),(58,'63-(832)522-8003'),(59,'351-(968)425-4064'),(60,'46-(870)656-0024'),(61,'86-(448)933-4986'),(62,'7-(795)655-4514'),(63,'86-(554)471-5353'),(64,'33-(672)315-5123'),(65,'66-(272)688-6042'),(66,'269-(954)115-8523'),(67,'51-(587)792-6636'),(68,'82-(649)973-7997'),(69,'7-(386)421-1534'),(70,'48-(941)151-6931'),(71,'86-(168)464-6884'),(72,'66-(583)184-5946'),(73,'66-(114)508-4342'),(74,'86-(590)245-3468'),(75,'62-(381)287-4968'),(76,'62-(730)659-5663'),(77,'86-(847)630-1433'),(78,'86-(267)705-3896'),(79,'86-(581)705-2719'),(80,'373-(529)999-2796'),(81,'86-(271)440-0439'),(82,'48-(948)806-4954'),(83,'55-(614)765-5930'),(84,'994-(507)358-8388'),(85,'86-(622)348-0771'),(86,'47-(723)620-0719'),(87,'53-(534)141-6114'),(88,'66-(526)973-8487'),(89,'355-(150)153-1943'),(90,'372-(798)168-6493'),(91,'255-(164)779-4160'),(92,'62-(641)113-2528'),(93,'992-(420)187-1457'),(94,'58-(717)526-6252'),(95,'63-(206)543-8480'),(96,'86-(310)330-0153'),(97,'385-(762)751-1699'),(98,'48-(385)360-3796'),(99,'598-(663)897-0908'),(100,'62-(956)861-8666');
/*!40000 ALTER TABLE `no_telpon_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `non_apotek`
--

DROP TABLE IF EXISTS `non_apotek`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `non_apotek` (
  `No_Reg_Infra` int(20) NOT NULL,
  `Nama_Dep` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`No_Reg_Infra`),
  KEY `Nama_Dep` (`Nama_Dep`),
  CONSTRAINT `non_apotek_ibfk_1` FOREIGN KEY (`No_Reg_Infra`) REFERENCES `infrastruktur` (`No_Reg`),
  CONSTRAINT `non_apotek_ibfk_2` FOREIGN KEY (`Nama_Dep`) REFERENCES `departemen` (`Nama`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `non_apotek`
--

LOCK TABLES `non_apotek` WRITE;
/*!40000 ALTER TABLE `non_apotek` DISABLE KEYS */;
INSERT INTO `non_apotek` VALUES (1006,'Ilmu Kesehatan Anak'),(1009,'Ilmu Kesehatan Anak'),(1010,'Ilmu Kesehatan Anak'),(1018,'Ilmu Kesehatan Anak'),(1019,'Ilmu Kesehatan Anak'),(1021,'Ilmu Kesehatan Anak'),(1027,'Ilmu Kesehatan Anak'),(1032,'Ilmu Kesehatan Anak'),(1034,'Ilmu Kesehatan Anak'),(1035,'Ilmu Kesehatan Anak'),(1037,'Ilmu Kesehatan Anak'),(1040,'Ilmu Kesehatan Anak'),(1042,'Ilmu Kesehatan Anak'),(1047,'Ilmu Kesehatan Anak'),(1051,'Ilmu Kesehatan Anak'),(1053,'Ilmu Kesehatan Anak'),(1054,'Ilmu Kesehatan Anak'),(1075,'Ilmu Kesehatan Anak'),(1076,'Ilmu Kesehatan Anak'),(1079,'Ilmu Kesehatan Anak'),(1086,'Ilmu Kesehatan Anak'),(1096,'Ilmu Kesehatan Anak'),(1099,'Ilmu Kesehatan Anak'),(1005,'Ilmu Kesehatan Mata'),(1014,'Ilmu Kesehatan Mata'),(1015,'Ilmu Kesehatan Mata'),(1016,'Ilmu Kesehatan Mata'),(1030,'Ilmu Kesehatan Mata'),(1036,'Ilmu Kesehatan Mata'),(1038,'Ilmu Kesehatan Mata'),(1060,'Ilmu Kesehatan Mata'),(1061,'Ilmu Kesehatan Mata'),(1063,'Ilmu Kesehatan Mata'),(1065,'Ilmu Kesehatan Mata'),(1073,'Ilmu Kesehatan Mata'),(1081,'Ilmu Kesehatan Mata'),(1085,'Ilmu Kesehatan Mata'),(1091,'Ilmu Kesehatan Mata'),(1093,'Ilmu Kesehatan Mata'),(1098,'Ilmu Kesehatan Mata'),(1011,'Ilmu Penyakit Dalam'),(1017,'Ilmu Penyakit Dalam'),(1022,'Ilmu Penyakit Dalam'),(1024,'Ilmu Penyakit Dalam'),(1025,'Ilmu Penyakit Dalam'),(1031,'Ilmu Penyakit Dalam'),(1039,'Ilmu Penyakit Dalam'),(1041,'Ilmu Penyakit Dalam'),(1044,'Ilmu Penyakit Dalam'),(1057,'Ilmu Penyakit Dalam'),(1058,'Ilmu Penyakit Dalam'),(1062,'Ilmu Penyakit Dalam'),(1067,'Ilmu Penyakit Dalam'),(1069,'Ilmu Penyakit Dalam'),(1070,'Ilmu Penyakit Dalam'),(1071,'Ilmu Penyakit Dalam'),(1072,'Ilmu Penyakit Dalam'),(1074,'Ilmu Penyakit Dalam'),(1080,'Ilmu Penyakit Dalam'),(1082,'Ilmu Penyakit Dalam'),(1088,'Ilmu Penyakit Dalam'),(1090,'Ilmu Penyakit Dalam'),(1097,'Ilmu Penyakit Dalam'),(1007,'Kebidanan dan Kandungan'),(1008,'Kebidanan dan Kandungan'),(1013,'Kebidanan dan Kandungan'),(1023,'Kebidanan dan Kandungan'),(1026,'Kebidanan dan Kandungan'),(1043,'Kebidanan dan Kandungan'),(1046,'Kebidanan dan Kandungan'),(1048,'Kebidanan dan Kandungan'),(1050,'Kebidanan dan Kandungan'),(1055,'Kebidanan dan Kandungan'),(1056,'Kebidanan dan Kandungan'),(1059,'Kebidanan dan Kandungan'),(1066,'Kebidanan dan Kandungan'),(1089,'Kebidanan dan Kandungan'),(1094,'Kebidanan dan Kandungan'),(1100,'Kebidanan dan Kandungan'),(1004,'Telinga Hidung Tenggorok'),(1012,'Telinga Hidung Tenggorok'),(1020,'Telinga Hidung Tenggorok'),(1028,'Telinga Hidung Tenggorok'),(1029,'Telinga Hidung Tenggorok'),(1033,'Telinga Hidung Tenggorok'),(1045,'Telinga Hidung Tenggorok'),(1049,'Telinga Hidung Tenggorok'),(1052,'Telinga Hidung Tenggorok'),(1064,'Telinga Hidung Tenggorok'),(1068,'Telinga Hidung Tenggorok'),(1077,'Telinga Hidung Tenggorok'),(1078,'Telinga Hidung Tenggorok'),(1083,'Telinga Hidung Tenggorok'),(1084,'Telinga Hidung Tenggorok'),(1087,'Telinga Hidung Tenggorok'),(1092,'Telinga Hidung Tenggorok'),(1095,'Telinga Hidung Tenggorok');
/*!40000 ALTER TABLE `non_apotek` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pasien`
--

DROP TABLE IF EXISTS `pasien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pasien` (
  `ID_Pasien` int(20) NOT NULL AUTO_INCREMENT,
  `Nama_Pasien` varchar(30) DEFAULT NULL,
  `Alamat_Pasien` varchar(100) DEFAULT NULL,
  `Kode_Rawat` varchar(20) DEFAULT NULL,
  `Penyakit` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID_Pasien`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pasien`
--

LOCK TABLES `pasien` WRITE;
/*!40000 ALTER TABLE `pasien` DISABLE KEYS */;
INSERT INTO `pasien` VALUES (1,'Brian Kelley','5219 Kingsford Avenue','1833','Adv eff smooth musc '),(2,'Denise Stewart','64513 Vermont Park','1553','Sebrrheic dermatitis'),(3,'Lori Gardner','265 Weeping Birch Parkway','1815','Anomalies of uterus '),(4,'Patrick Johnson','56211 Shelley Circle','1245','NB feeding problems'),(5,'Todd Arnold','38964 Randy Avenue','1149','Neutropenia d/t infe'),(6,'Jonathan Lawson','2080 2nd Place','1900','2nd deg burn lower l'),(7,'Joshua Harper','7055 5th Place','1427','Sacroiliitis NEC'),(8,'Teresa Long','6945 Westport Parkway','1312','Contracept surveill '),(9,'Nancy Tucker','9117 East Avenue','1616','Candidal otitis exte'),(10,'Scott Washington','545 Fulton Drive','1615','Hernia NEC'),(11,'Ruby Meyer','6 Portage Street','1391','Mod hypox-ischem enc'),(12,'Barbara Garcia','8 Loeprich Lane','1567','Fetal malnutrition <'),(13,'Jane Moreno','91 Bartelt Place','1425','Ant horn cell dis NO'),(14,'Edward Gardner','635 Ludington Circle','1194','Poisoning-chloral hy'),(15,'Mary Chapman','86 Lawn Center','1382','Dsct of aorta unsp s'),(16,'Gerald Williamson','021 Sutteridge Trail','1805','Other quadriplegia'),(17,'Jimmy Montgomery','2 Holy Cross Pass','1827','Malignant neo spleen'),(18,'Willie Bailey','149 Mitchell Terrace','1805','Nasal sinus polyp NE'),(19,'Kenneth Boyd','58099 Prairie Rose Court','1187','Blood donor NEC'),(20,'Barbara Smith','2236 Roth Road','1790','Venous insufficiency'),(21,'Anna Graham','94964 Hanson Circle','1262','BMI 45.0-49.9, adult'),(22,'Robert Sanders','7 Crescent Oaks Place','1783','Cyst pharynx/nasopha'),(23,'Joan Graham','1751 Northridge Court','1342','Clothing fire-priv d'),(24,'Justin Bennett','44 Bay Alley','1597','1st deg burn palm'),(25,'Albert Young','8 Hudson Drive','1390','Miliary TB NEC-exam '),(26,'Steve Berry','09 Main Place','1793','Anal sphincter tear '),(27,'Roy Greene','6 Erie Pass','1278','TB of kidney-oth tes'),(28,'Judith Martin','2 Express Drive','1535','TB lung nodular-no e'),(29,'Beverly Gray','69 Steensland Terrace','1413','Infect NOS-delivered'),(30,'Earl Burns','84 Orin Drive','1751','Cerebrovasc disease '),(31,'Nicole Anderson','31527 Warrior Lane','1264','Superf inj forearm N'),(32,'Kathryn Rose','72 West Way','1430','Del w 2 deg lacerat-'),(33,'Gary Carpenter','142 Dovetail Pass','1159','Adv eff mineral salt'),(34,'Samuel Vasquez','8689 Magdeline Place','1449','Screen-rheumatoid ar'),(35,'Susan Ruiz','42388 Blackbird Center','1833','Reactive confusion'),(36,'Michelle Fowler','410 Armistice Drive','1547','Oth varn unsp xtrndl'),(37,'Harry Gutierrez','8174 Havey Pass','1570','Pulmon circulat dis '),(38,'Annie Lynch','644 Reindahl Lane','1749','Person in resident i'),(39,'Cynthia Howard','76191 Mariners Cove Drive','1857','Injury-extreme cold'),(40,'Billy Kelley','01 Old Gate Road','1645','Nodular cornea degen'),(41,'Mildred Clark','1555 Transport Avenue','1558','RR acc NOS-pedestria'),(42,'Roy Greene','622 Hintze Parkway','1375','Spon ab w ren fail-c'),(43,'Patricia Green','67 Kennedy Plaza','1603','Nerve/musculskel sym'),(44,'Edward Roberts','12650 Forest Place','1307','Acquire absnce intes'),(45,'Jonathan Howell','04141 Blaine Road','1897','Premature ejaculatio'),(46,'Betty Carroll','70 Dunning Avenue','1439','Mononeuritis leg NOS'),(47,'Carl Russell','35 Troy Point','1248','Pericardial disease '),(48,'Carl Gonzalez','482 Eggendart Point','1342','Sulph amino-acid met'),(49,'Teresa Bailey','84 Blue Bill Park Trail','1430','Del w 1 deg lac-post'),(50,'Juan Morgan','94 American Ash Road','1703','Tietze\'s disease'),(51,'Ronald Carr','58 Heffernan Lane','1207','Crushing injury elbo'),(52,'Paula Rice','55533 Canary Trail','1653','Breast dis NEC-antep'),(53,'Todd Alexander','6015 Morning Road','1542','Mitral insuf/aort st'),(54,'Todd Morales','25 Grim Crossing','1329','Amino-acid transport'),(55,'Dorothy Mason','7091 Kennedy Circle','1838','Peripheral vertigo N'),(56,'William Rogers','3990 Crest Line Lane','1787','Hpt B chrn wo cm wo '),(57,'Louis Holmes','6 Porter Street','1443','Hypoglossal nerve di'),(58,'Anthony Cox','9 Rutledge Place','1488','Ventricular fibrilla'),(59,'Antonio Moore','1 Morrow Trail','1111','Postphlbtc synd w/o '),(60,'Samuel Walker','5 Namekagon Road','1550','Schizophrenic dis-su'),(61,'Harry Oliver','5022 Vernon Park','1470','Long QT syndrome'),(62,'Shirley White','5 Crest Line Avenue','1589','Stg II nec enterocol'),(63,'Henry Taylor','7 Hollow Ridge Plaza','1894','Hx drug therapy NEC'),(64,'John Burke','1 Coolidge Center','1750','Chagas dis of oth or'),(65,'Irene Burton','8 Village Place','1895','Bungee jumping'),(66,'Teresa Bradley','4905 Lukken Court','1540','Opn brain lacer-mod '),(67,'Johnny Andrews','6 Morrow Avenue','1289','Disl interphalan foo'),(68,'Nicholas Turner','67 Garrison Center','1141','Breech presentat-uns'),(69,'Howard Bailey','3 Surrey Drive','1558','80-89% bdy brn/10-19'),(70,'Brenda Gonzales','651 Onsgard Park','1894','Tox eff chlor hydroc'),(71,'Katherine Medina','2081 Eagan Circle','1328','Full-thicknes lac ey'),(72,'Craig Peters','37 Hanson Hill','1891','Benign neo skin face'),(73,'Robin Franklin','60 Shopko Hill','1522','Fx trapezoid bone-op'),(74,'Tammy Mason','05 Northridge Circle','1594','Open wound of neck N'),(75,'Ashley Austin','761 Westridge Point','1334','Poisoning-chloral hy'),(76,'Anne Fuller','3792 Grover Trail','1417','3rd deg burn trunk N'),(77,'Rebecca Welch','43507 Westend Trail','1379','Fx capitate bone-clo'),(78,'Keith Gomez','513 Mosinee Place','1144','Secundum atrial sept'),(79,'Virginia Oliver','64 Hollow Ridge Drive','1622','Cellulitis/abscess m'),(80,'Craig Ray','535 Manley Junction','1843','Abo isoimmunization-'),(81,'Jean Moreno','27600 Red Cloud Point','1665','Secundum atrial sept'),(82,'Denise Allen','5303 Sachtjen Park','1696','Swelling in head & n'),(83,'Clarence Mcdonald','49 Mifflin Avenue','1793','Volume depletion NOS'),(84,'Virginia Powell','818 Blaine Road','1225','Meth res pneu d/t St'),(85,'Louis Bowman','399 Sycamore Place','1295','Opn wound extern ear'),(86,'Janice Olson','95 Moland Park','1126','70-79% bdy brn/3 deg'),(87,'Sean Thompson','0 Porter Drive','1148','Atony of bladder'),(88,'Daniel Hart','614 American Ash Point','1390','Fundus coloboma'),(89,'Anne Cunningham','71 Welch Court','1166','Mal histiocytosis he'),(90,'Norma Chavez','65994 Spohn Place','1123','Attn/concentrate def'),(91,'Eugene Weaver','63 Hagan Parkway','1702','Basal cell ca skin l'),(92,'Virginia Howell','1 Debra Park','1465','Endos dentl imp fail'),(93,'Randy Perry','85 Grim Alley','1288','Selective IgM immuno'),(94,'Carlos Moreno','764 Ramsey Point','1276','Periprosthetc osteol'),(95,'Lillian Lewis','731 Nevada Plaza','1537','Foreign bdy ext eye '),(96,'Rebecca Scott','32705 Boyd Lane','1809','Diastasis of muscle'),(97,'Carlos Berry','903 Mayfield Street','1882','Fx distal phal, hand'),(98,'Maria Roberts','6 Autumn Leaf Hill','1872','TB bronchiect-exam u'),(99,'Mary Allen','7 American Ash Pass','1264','Fetal cns malform-un'),(100,'Paula Banks','018 Towne Terrace','1770','Mlg mast unsp xtrndl'),(101,'Pamela Long','439 Birchwood Alley','1121','Black eye NOS'),(102,'Janice Fernandez','186 Gina Road','1278','Chronic petrositis'),(103,'Sharon Washington','84344 Shelley Court','1432','Anesth compl-antepar'),(104,'Adam Young','2689 Graedel Point','1325','Skin sensation distu'),(105,'Julia Lynch','53 Meadow Valley Trail','1882','Nausea with vomiting'),(106,'Douglas Owens','4920 Center Street','1173','Ac DVT/embl up ext'),(107,'Eric Greene','285 Maple Pass','1875','Joint sympt NEC-mult'),(108,'Alice Welch','76640 Red Cloud Court','1308','Thromb postpar-del w'),(109,'Daniel Parker','907 Sutherland Point','1708','1st deg burn leg-mul'),(110,'Antonio Robertson','178 Namekagon Road','1259','Gonococcal synovitis'),(111,'Carlos Murray','999 Hoepker Trail','1487','Hyperestrogenism'),(112,'Ruby Hansen','87 Judy Circle','1757','Histoplasm capsul re'),(113,'Marie Ford','3770 Dorton Street','1458','Arthropathy NOS-oth '),(114,'Sean Harper','410 Hanson Road','1738','Cocaine depend-unspe'),(115,'Ruth Kelley','3 North Crossing','1492','Ac polio NOS-type 3'),(116,'Brian Hayes','67567 Anthes Alley','1547','Pois-analges/antipyr'),(117,'Phillip Wagner','4415 Center Circle','1669','DMI renl nt st uncnt'),(118,'Fred Hill','607 Farwell Road','1406','70-79% bdy brn/20-29'),(119,'Bruce Daniels','2843 Ridgeway Street','1722','Cl skul base fx-mod '),(120,'William Fisher','78785 Alpine Crossing','1662','Erosion/ectropion ce'),(121,'Aaron Allen','05 International Road','1425','AMI NOS, initial'),(122,'Lawrence Adams','59009 Shoshone Point','1627','Liver/bil trct disr-'),(123,'Anthony Cook','04 Orin Pass','1146','Fitting urinary devi'),(124,'John Wallace','315 Miller Terrace','1182','Nonvenomous snake bi'),(125,'Paula Roberts','071 Leroy Terrace','1828','Adv eff barbiturates'),(126,'Adam Torres','6613 Porter Trail','1451','Cryst arthrop NEC-mu'),(127,'Amanda Kim','3728 Katie Circle','1550','Disproportn reconst '),(128,'Mark Richards','68990 Carpenter Junction','1873','FB in lacrimal punct'),(129,'Patricia Cook','84 Gale Court','1635','Mixed lymphosarc pel'),(130,'Cynthia Lane','43 Birchwood Street','1853','Myasthenia in oth di'),(131,'Sharon Turner','780 West Road','1104','Injury-shotgun'),(132,'Lisa Lane','50867 High Crossing Point','1563','Accident d/t floods'),(133,'Todd Welch','96 Tomscot Point','1852','Deep 3rd deg burn ba'),(134,'Bruce Andrews','20 Stang Crossing','1530','Meconium staining'),(135,'Christina Jacobs','1086 Declaration Lane','1641','Aftercare joint repl'),(136,'Steven Freeman','02 Morningstar Way','1620','Disorders of uterus '),(137,'Joyce Pierce','05 Miller Junction','1650','Grand multiparity'),(138,'Roy Franklin','8 Southridge Park','1431','Toxic cataract'),(139,'Helen Ross','277 Dexter Place','1788','Spleen disruption-cl'),(140,'Anthony Hernandez','28363 Superior Crossing','1823','Fx arm mult/NOS-open'),(141,'Beverly Fisher','78902 Packers Terrace','1788','Curvature of spine N'),(142,'Julie Perez','3 John Wall Circle','1735','Multiple fx hand-ope'),(143,'Alan Lawson','18603 High Crossing Plaza','1414','Hx musculoskletl dis'),(144,'Russell Harvey','78 Ridgeway Plaza','1398','Exhibitionism'),(145,'Ernest Collins','19574 Corry Avenue','1683','Traum myositis ossif'),(146,'Douglas Ellis','6346 Clarendon Junction','1196','Benign neo skin arm'),(147,'Billy Marshall','99337 Bartillon Plaza','1879','BMI 26.0-26.9,adult'),(148,'Christine Morales','53 Blue Bill Park Alley','1720','Locked twins-deliver'),(149,'Andrea Smith','6297 Blackbird Park','1620','Burn NOS axilla'),(150,'Stephanie Bishop','43506 Messerschmidt Circle','1424','Fall from skis'),(151,'Harry Martinez','0 Pine View Pass','1301','Struck by falling ob'),(152,'Nicholas Ruiz','128 Russell Pass','1275','Chr peptic ulc perf-'),(153,'Brian Stevens','249 Hooker Park','1696','Tick-borne ricketts '),(154,'Amy Gomez','16 Charing Cross Street','1440','Hgb E-beta thalassem'),(155,'Kimberly Robertson','9671 Vidon Parkway','1190','Yatapoxvirus infectn'),(156,'Katherine Anderson','4916 Burning Wood Plaza','1193','Miliary TB NEC-oth t'),(157,'Gloria Morgan','0 Lighthouse Bay Junction','1107','Other viral intes in'),(158,'Russell Fuller','3 Memorial Street','1326','T7-t12 fx-op/ant crd'),(159,'Carl Nichols','83 Debs Lane','1724','Fetal-maternal hem-d'),(160,'Jose Duncan','50 Killdeer Trail','1139','Benign carcinoid jej'),(161,'Anthony Ferguson','853 Steensland Center','1563','Burn NOS upper arm'),(162,'Angela Peters','42564 Oneill Trail','1397','Abn pelv tis obstr-d'),(163,'Amy Gutierrez','99829 Kinsman Way','1295','Sec DM hprosmlr uncn'),(164,'Philip Stephens','83672 Forest Dale Court','1573','TB peritonitis-exam '),(165,'Ryan Allen','343 Vermont Court','1285','Secondary malig neo '),(166,'Earl Hart','83227 Fieldstone Street','1555','Assault-cutting inst'),(167,'Diana Morrison','140 Memorial Junction','1213','Delirium d/t other c'),(168,'Eric Richards','1770 Cottonwood Street','1441','Syndactyl toe-no fus'),(169,'Denise Fisher','88173 Dakota Park','1358','Vacuuming'),(170,'Justin Jacobs','06864 Killdeer Parkway','1766','Perforat tympan memb'),(171,'Joyce Miller','2634 Green Ridge Alley','1842','Protan defect'),(172,'Benjamin Fowler','050 Hudson Alley','1851','2nd deg burn leg NOS'),(173,'Nicholas Kelly','2 Trailsway Drive','1486','Visceral leishmanias'),(174,'Jose Thomas','16 Killdeer Lane','1875','2nd deg burn trunk N'),(175,'Adam Ross','09657 Debs Drive','1282','Precipitate labor-de'),(176,'Jacqueline Hart','5470 Ludington Crossing','1294','Extradur hem-brief c'),(177,'Keith Butler','63 Sunfield Drive','1335','Nodular lymphoma axi'),(178,'Lisa Jacobs','39 Texas Parkway','1199','Injury to nerve NOS'),(179,'Doris Gibson','94042 Bunker Hill Trail','1648','Heartburn'),(180,'Donald King','43 Macpherson Trail','1197','Mal neo occipital lo'),(181,'Patricia Garza','9 Claremont Lane','1366','Cong aorta valv insu'),(182,'Scott Jacobs','0879 Dennis Parkway','1721','Acc-cutting instrum '),(183,'Helen Diaz','1231 Red Cloud Terrace','1305','Amblyopia NOS'),(184,'Amanda Perez','4696 Continental Park','1526','Ben crcnoid hindgut '),(185,'William Morgan','0 Butterfield Trail','1838','T1-t6 fx-op/ant cord'),(186,'Debra Bennett','33776 Derek Park','1694','DMI wo cmp uncntrld'),(187,'Gary Cruz','0049 Fisk Avenue','1151','50-59% bdy brn/40-49'),(188,'Stephanie Fisher','7 Porter Terrace','1868','Coxa vara'),(189,'Sarah Harper','48 Russell Parkway','1290','Polio osteopathy-uns'),(190,'Barbara Butler','8 Utah Parkway','1662','Open wound of trache'),(191,'Bonnie Greene','190 Green Ridge Parkway','1581','Sup glenoid labrm le'),(192,'Emily Fisher','90 Mifflin Lane','1162','Hodgkins granulom sp'),(193,'Michelle Ramirez','79187 Old Gate Pass','1745','Fracture three ribs-'),(194,'James Little','28732 Ridge Oak Way','1197','Primary cyst pars pl'),(195,'Charles Morris','30 Northland Plaza','1173','Necrotizing fasciiti'),(196,'Norma Larson','80 Randy Circle','1527','Undetermin circ-hang'),(197,'Eric Wilson','2878 Marquette Hill','1304','Cystostomy status NE'),(198,'Donna Lane','78120 Randy Junction','1299','Cl skull fx NEC-coma'),(199,'Julia Fields','9708 Lakeland Junction','1819','TB of vertebra-cult '),(200,'Catherine Gonzalez','02 Prairieview Pass','1109','Infect NOS-delivered');
/*!40000 ALTER TABLE `pasien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pembayaran`
--

DROP TABLE IF EXISTS `pembayaran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pembayaran` (
  `ID_Pasien` int(20) NOT NULL AUTO_INCREMENT,
  `Kode_Transaksi` varchar(25) NOT NULL,
  `Tanggal` varchar(20) DEFAULT NULL,
  `Biaya_Obat` int(20) DEFAULT NULL,
  `Biaya_Tindakan` int(20) DEFAULT NULL,
  `Biaya_Lab` int(20) DEFAULT NULL,
  PRIMARY KEY (`ID_Pasien`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pembayaran`
--

LOCK TABLES `pembayaran` WRITE;
/*!40000 ALTER TABLE `pembayaran` DISABLE KEYS */;
INSERT INTO `pembayaran` VALUES (1,'882-780-2503','5/18/2016',820000,9290000,919000),(2,'015-957-9426','3/15/2017',880000,8620000,938000),(3,'879-099-5748','5/15/2016',646000,4530000,816000),(4,'506-651-9529','10/6/2016',926000,8380000,995000),(5,'198-004-5752','4/13/2016',956000,7700000,632000),(6,'510-089-0857','5/31/2016',947000,8490000,934000),(7,'235-298-1583','3/19/2017',820000,9670000,972000),(8,'813-147-5676','1/28/2017',766000,8780000,419000),(9,'504-591-6707','10/4/2016',825000,9470000,508000),(10,'627-780-0548','6/8/2016',812000,4520000,962000),(11,'234-802-2298','7/21/2016',938000,7160000,991000),(12,'784-094-4337','7/24/2016',935000,8720000,885000),(13,'600-277-6816','1/27/2017',796000,9790000,853000),(14,'237-626-3130','12/9/2016',949000,9370000,720000),(15,'650-382-8544','5/21/2016',987000,9530000,802000),(16,'418-147-3059','11/16/2016',361000,8950000,819000),(17,'192-130-4950','11/11/2016',971000,7600000,788000),(18,'179-715-8221','8/17/2016',604000,8780000,616000),(19,'974-165-1502','5/24/2016',983000,6140000,911000),(20,'412-130-8913','11/10/2016',805000,9160000,972000),(21,'861-088-1385','1/27/2017',573000,9060000,858000),(22,'400-402-5457','5/15/2016',962000,5680000,986000),(23,'693-008-5277','12/21/2016',442000,7250000,677000),(24,'024-580-7059','9/10/2016',845000,9060000,991000),(25,'670-215-5370','9/18/2016',982000,8300000,716000),(26,'736-055-5165','6/6/2016',965000,9080000,945000),(27,'143-337-3421','4/19/2016',936000,9800000,865000),(28,'484-772-3864','3/1/2017',839000,9550000,965000),(29,'573-577-7567','9/20/2016',826000,9140000,748000),(30,'178-680-2798','5/1/2016',877000,9920000,809000),(31,'383-786-7759','4/8/2017',931000,8610000,180000),(32,'288-331-3907','4/25/2016',840000,9780000,977000),(33,'930-448-2357','3/3/2017',801000,9380000,906000),(34,'005-492-3965','9/21/2016',958000,6510000,909000),(35,'296-311-2804','8/27/2016',783000,7070000,937000),(36,'018-317-5107','12/7/2016',981000,9380000,929000),(37,'936-247-3444','1/21/2017',993000,9330000,982000),(38,'397-527-9535','1/5/2017',960000,6360000,904000),(39,'905-894-6062','10/18/2016',703000,9510000,925000),(40,'453-732-6807','10/12/2016',934000,9270000,977000),(41,'362-960-7848','10/18/2016',995000,7440000,985000),(42,'436-271-7640','7/28/2016',834000,9870000,899000),(43,'153-563-4037','3/3/2017',573000,9750000,955000),(44,'374-714-8007','2/5/2017',696000,7850000,848000),(45,'782-926-8108','8/17/2016',870000,9890000,718000),(46,'121-464-8545','9/29/2016',986000,5440000,998000),(47,'356-586-8531','10/9/2016',960000,8700000,935000),(48,'591-942-7716','5/16/2016',811000,7150000,968000),(49,'305-495-3411','2/15/2017',835000,7840000,955000),(50,'206-279-9164','1/9/2017',890000,5440000,931000),(51,'349-876-2755','6/13/2016',938000,8460000,739000),(52,'703-930-2796','1/20/2017',975000,8290000,711000),(53,'560-105-0922','3/1/2017',995000,9520000,825000),(54,'103-841-0268','4/21/2016',951000,9690000,531000),(55,'869-781-3747','1/18/2017',980000,9230000,784000),(56,'597-793-5758','1/21/2017',779000,8350000,873000),(57,'303-262-0581','11/13/2016',974000,9240000,981000),(58,'365-528-4977','3/25/2017',974000,9390000,630000),(59,'322-467-2884','10/29/2016',925000,6630000,881000),(60,'063-329-3852','2/7/2017',746000,8930000,708000),(61,'453-559-4881','2/18/2017',746000,8880000,813000),(62,'280-500-5554','12/31/2016',918000,9790000,955000),(63,'629-664-6748','2/25/2017',911000,9520000,939000),(64,'386-016-7898','5/30/2016',965000,9900000,767000),(65,'538-613-5905','6/13/2016',312000,9400000,841000),(66,'717-077-4373','4/1/2017',972000,9240000,980000),(67,'869-413-2942','6/22/2016',918000,9760000,778000),(68,'145-307-1606','3/3/2017',989000,6990000,943000),(69,'509-918-4900','11/7/2016',791000,7650000,914000),(70,'664-713-9434','9/15/2016',934000,9790000,776000),(71,'277-638-0498','3/9/2017',121000,9790000,869000),(72,'275-514-1959','1/10/2017',992000,9200000,634000),(73,'777-976-9627','10/19/2016',701000,9590000,461000),(74,'271-484-0964','6/14/2016',931000,9820000,837000),(75,'095-212-1607','9/27/2016',806000,9270000,961000),(76,'406-881-7921','10/20/2016',996000,7710000,305000),(77,'042-854-4420','11/5/2016',867000,9340000,977000),(78,'842-649-8086','10/3/2016',890000,3420000,753000),(79,'316-310-2557','2/25/2017',972000,9280000,994000),(80,'996-773-6767','8/12/2016',851000,7150000,909000),(81,'197-889-0383','2/16/2017',945000,6260000,806000),(82,'852-782-1542','2/5/2017',982000,9290000,945000),(83,'947-809-4876','1/25/2017',986000,8470000,936000),(84,'822-585-6773','3/24/2017',882000,7790000,895000),(85,'845-524-5065','5/31/2016',632000,8480000,867000),(86,'663-893-1395','7/19/2016',986000,7660000,955000),(87,'150-280-9637','12/9/2016',730000,9530000,951000),(88,'959-450-4585','9/12/2016',950000,8770000,699000),(89,'001-199-3915','8/2/2016',907000,8940000,935000),(90,'904-482-8621','7/22/2016',965000,7200000,889000),(91,'739-095-9624','1/9/2017',854000,8880000,713000),(92,'854-874-4500','1/18/2017',446000,6830000,833000),(93,'230-714-8416','5/20/2016',879000,6720000,646000),(94,'209-524-3984','1/15/2017',983000,7590000,799000),(95,'518-627-5882','5/24/2016',901000,9140000,829000),(96,'371-797-2025','6/5/2016',816000,9930000,721000),(97,'164-325-3971','12/31/2016',705000,6270000,931000),(98,'054-336-1743','6/27/2016',900000,8870000,936000),(99,'826-261-9219','11/25/2016',916000,7800000,989000),(100,'785-888-4073','6/30/2016',810000,9320000,668000),(101,'809-470-1249','2/28/2017',935000,8910000,977000),(102,'072-296-5925','5/31/2016',720000,7520000,912000),(103,'047-672-5927','12/18/2016',951000,8020000,901000),(104,'906-801-8740','2/6/2017',809000,9650000,931000),(105,'250-216-8782','11/28/2016',874000,9430000,462000),(106,'452-459-3228','7/9/2016',639000,9730000,930000),(107,'232-614-4287','11/26/2016',988000,9280000,710000),(108,'943-712-4566','8/27/2016',966000,3730000,952000),(109,'468-381-9212','5/16/2016',889000,8400000,965000),(110,'537-576-8753','12/2/2016',927000,9620000,442000),(111,'524-101-0257','10/30/2016',944000,8530000,849000),(112,'983-628-2698','7/6/2016',934000,9660000,836000),(113,'032-790-7253','5/5/2016',704000,9320000,974000),(114,'145-890-6786','10/24/2016',998000,9990000,731000),(115,'469-943-7304','8/7/2016',920000,9310000,828000),(116,'474-529-5117','9/14/2016',889000,7100000,948000),(117,'547-413-5464','9/10/2016',953000,5760000,828000),(118,'972-251-2373','12/15/2016',967000,6610000,948000),(119,'624-698-0999','1/30/2017',944000,7770000,936000),(120,'290-468-9606','11/29/2016',986000,8440000,773000),(121,'882-494-9729','3/8/2017',908000,9990000,972000),(122,'936-084-1881','6/16/2016',802000,1100000,919000),(123,'978-977-4604','11/30/2016',823000,8090000,930000),(124,'911-937-4512','3/17/2017',831000,3620000,997000),(125,'689-455-8449','7/18/2016',957000,8010000,925000),(126,'330-220-7639','9/15/2016',944000,9980000,952000),(127,'504-495-1574','9/9/2016',511000,6380000,728000),(128,'049-291-1886','2/1/2017',938000,5190000,911000),(129,'925-780-3431','2/9/2017',503000,7460000,524000),(130,'722-068-2226','2/18/2017',957000,9930000,987000),(131,'460-093-3743','12/19/2016',979000,9920000,974000),(132,'369-560-7011','7/22/2016',824000,4490000,642000),(133,'603-582-2606','6/19/2016',645000,9120000,961000),(134,'699-857-7883','11/3/2016',961000,9840000,962000),(135,'647-720-4708','4/2/2017',728000,9000000,886000),(136,'751-380-1103','10/24/2016',936000,8280000,704000),(137,'208-060-7712','10/10/2016',864000,8940000,817000),(138,'439-634-7990','1/25/2017',975000,7320000,792000),(139,'962-487-5193','5/24/2016',908000,8810000,848000),(140,'025-273-5325','7/31/2016',827000,9110000,916000),(141,'837-359-3919','9/23/2016',991000,9870000,902000),(142,'547-421-3168','2/28/2017',915000,8360000,986000),(143,'128-626-6592','1/31/2017',981000,8510000,935000),(144,'678-862-3373','5/3/2016',986000,8300000,971000),(145,'407-399-2561','9/27/2016',905000,9700000,931000),(146,'304-552-0601','10/9/2016',765000,9560000,764000),(147,'070-829-1310','7/12/2016',918000,9380000,749000),(148,'866-177-5131','7/29/2016',889000,8460000,829000),(149,'758-831-3777','3/28/2017',901000,7530000,997000),(150,'597-857-7329','5/11/2016',900000,9440000,962000),(151,'163-191-0930','5/23/2016',906000,4280000,991000),(152,'079-570-0050','8/5/2016',891000,9620000,917000),(153,'966-807-0722','6/22/2016',668000,9280000,692000),(154,'377-078-0545','1/4/2017',903000,8850000,993000),(155,'736-546-7405','5/4/2016',920000,1420000,805000),(156,'351-604-7853','2/12/2017',902000,9960000,945000),(157,'591-941-1693','2/7/2017',869000,8750000,675000),(158,'828-789-9163','2/12/2017',719000,9050000,864000),(159,'849-661-1398','11/11/2016',760000,9490000,830000),(160,'296-931-7833','10/18/2016',878000,7320000,515000),(161,'741-268-4624','1/15/2017',967000,8320000,844000),(162,'120-008-7656','8/18/2016',950000,9590000,753000),(163,'753-029-1175','12/4/2016',937000,9090000,938000),(164,'693-786-3999','11/20/2016',695000,4740000,889000),(165,'459-911-6346','4/28/2016',969000,9200000,992000),(166,'507-602-5610','6/10/2016',798000,6430000,942000),(167,'441-976-5447','7/13/2016',981000,9550000,999000),(168,'865-563-4482','12/7/2016',912000,9770000,814000),(169,'886-204-9951','12/7/2016',634000,9560000,918000),(170,'136-626-4556','10/12/2016',617000,8120000,895000),(171,'075-854-5009','12/18/2016',835000,6570000,546000),(172,'448-787-8447','7/16/2016',471000,9210000,809000),(173,'518-249-4090','6/11/2016',837000,9030000,870000),(174,'072-423-9424','11/11/2016',818000,7980000,925000),(175,'671-011-6971','12/28/2016',942000,8480000,718000),(176,'611-566-7791','1/5/2017',655000,8560000,978000),(177,'372-986-9397','4/2/2017',921000,8930000,926000),(178,'970-133-7281','7/21/2016',972000,9750000,943000),(179,'609-355-2503','5/16/2016',944000,7140000,930000),(180,'264-405-8204','8/13/2016',877000,9950000,937000),(181,'697-863-5938','10/22/2016',952000,9810000,936000),(182,'757-182-5059','8/18/2016',968000,9650000,551000),(183,'222-272-0281','7/8/2016',935000,8170000,747000),(184,'718-429-4532','4/20/2016',918000,9030000,824000),(185,'135-970-4023','12/23/2016',495000,9140000,800000),(186,'967-765-6361','6/5/2016',852000,5490000,828000),(187,'049-794-0404','7/17/2016',845000,9710000,866000),(188,'749-791-6161','3/27/2017',788000,9160000,756000),(189,'080-488-0877','5/5/2016',982000,9530000,902000),(190,'256-694-0741','5/28/2016',932000,9070000,813000),(191,'020-942-8381','11/12/2016',808000,9590000,927000),(192,'715-404-3638','10/21/2016',846000,9860000,717000),(193,'086-112-3988','3/3/2017',913000,9070000,782000),(194,'309-255-8678','4/19/2016',807000,5850000,948000),(195,'294-090-3638','10/9/2016',981000,8730000,927000),(196,'836-416-6800','3/30/2017',742000,9910000,818000),(197,'225-872-7765','1/15/2017',941000,9770000,952000),(198,'250-921-8759','10/29/2016',886000,9280000,842000),(199,'586-264-9918','4/4/2017',767000,9680000,716000),(200,'912-014-2378','10/13/2016',793000,9890000,943000);
/*!40000 ALTER TABLE `pembayaran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perawat`
--

DROP TABLE IF EXISTS `perawat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perawat` (
  `ID_Perawat` int(20) NOT NULL AUTO_INCREMENT,
  `Nama_Perawat` varchar(30) DEFAULT NULL,
  `Alamat_Perawat` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_Perawat`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perawat`
--

LOCK TABLES `perawat` WRITE;
/*!40000 ALTER TABLE `perawat` DISABLE KEYS */;
INSERT INTO `perawat` VALUES (1,'Wayne Nguyen','6 Bartelt Drive'),(2,'Joshua Dean','03 Pawling Circle'),(3,'Laura Torres','93 Morning Terrace'),(4,'Laura Hansen','0 Nobel Road'),(5,'Diana Gray','64 Ohio Road'),(6,'Adam Ramos','1 Claremont Parkway'),(7,'Jacqueline Carr','699 Delladonna Pass'),(8,'Kenneth Peterson','68 Birchwood Parkway'),(9,'Sean Ramos','1 Fallview Drive'),(10,'Steven Mitchell','87 Tennessee Plaza'),(11,'Bruce Porter','91495 Crownhardt Center'),(12,'Norma Martinez','3 Mallard Parkway'),(13,'Kelly Harper','489 Butterfield Park'),(14,'Sandra Scott','05 Melby Drive'),(15,'Ralph Ramirez','1175 Swallow Pass'),(16,'Jeffrey Gilbert','550 Dapin Lane'),(17,'Johnny White','5 Sunbrook Plaza'),(18,'Tammy Thomas','6590 1st Hill'),(19,'Ann Meyer','29 Victoria Way'),(20,'Gloria Bowman','0364 Schurz Road'),(21,'Juan Burns','622 Troy Parkway'),(22,'Victor Hayes','2024 Ridgeview Parkway'),(23,'Diane Daniels','69393 Lake View Junction'),(24,'Justin Smith','58 Kenwood Court'),(25,'Juan Ryan','917 Prentice Crossing'),(26,'Juan Little','7 Stang Trail'),(27,'Theresa Butler','96133 Clemons Circle'),(28,'Joe Hernandez','6 Fairview Pass'),(29,'Carol Johnson','58393 Village Green Trail'),(30,'Wanda Thomas','3299 5th Point'),(31,'Debra Mcdonald','8952 Hoepker Place'),(32,'Thomas Jackson','89633 Hayes Plaza'),(33,'Keith Meyer','1677 Nobel Parkway'),(34,'Janice Fox','97 Sherman Park'),(35,'Diane Adams','64220 Prairieview Alley'),(36,'Nicole Walker','820 Utah Parkway'),(37,'Larry Collins','152 Marcy Alley'),(38,'Antonio Gonzalez','991 Hansons Center'),(39,'Aaron Hawkins','296 Barby Trail'),(40,'Kelly Hill','72091 Fordem Place'),(41,'Harold Perez','266 Forest Run Road'),(42,'Jean Wood','2 Holmberg Alley'),(43,'Carl Fowler','55 Canary Place'),(44,'Carolyn Mendoza','3 Holmberg Crossing'),(45,'Daniel Butler','66034 Hollow Ridge Park'),(46,'Carlos Dixon','17670 Vidon Place'),(47,'Joe Lawrence','9 Huxley Crossing'),(48,'Rebecca Nelson','4 Melody Point'),(49,'Jesse Peters','439 Vernon Court'),(50,'Bobby Morales','93 Lakewood Plaza'),(51,'Kathryn Sullivan','7340 Pawling Way'),(52,'Ralph Chapman','12 Linden Plaza'),(53,'Richard Richards','364 Monica Road'),(54,'Kathryn Phillips','307 Duke Center'),(55,'Ashley Thompson','705 Morrow Lane'),(56,'Lois Ramos','4623 Bartelt Crossing'),(57,'Judy Daniels','814 Clarendon Point'),(58,'Steven Garrett','411 Chinook Center'),(59,'Terry Hill','21659 Fairview Plaza'),(60,'Alice Stevens','454 Donald Point'),(61,'Steven Peters','2973 Eastwood Point'),(62,'Brian Nichols','67 Thackeray Lane'),(63,'Amanda Owens','47 Emmet Hill'),(64,'Tammy Elliott','3 Rowland Avenue'),(65,'Wanda Carr','2501 Loftsgordon Terrace'),(66,'Jeffrey Cole','7186 Clyde Gallagher Lane'),(67,'Janet Walker','13 Redwing Alley'),(68,'Julie Powell','745 Nevada Point'),(69,'Marilyn Fuller','03700 Vera Junction'),(70,'Wayne Cox','73433 Gerald Street'),(71,'Cynthia Warren','55 Hazelcrest Park'),(72,'Brian Peterson','8 Graceland Avenue'),(73,'Joan Gilbert','6 Packers Way'),(74,'Denise Medina','7176 Packers Alley'),(75,'Joseph Harvey','50004 Susan Junction'),(76,'Justin Simmons','03062 Tony Plaza'),(77,'Samuel Ortiz','213 Dottie Crossing'),(78,'Margaret Davis','65511 Golf Lane'),(79,'Angela Wells','2 Blaine Avenue'),(80,'Jeffrey Hicks','4280 Sherman Terrace'),(81,'Ruby Dixon','71 Macpherson Trail'),(82,'John Harrison','02 Mayer Terrace'),(83,'Henry Greene','800 Charing Cross Plaza'),(84,'Chris Black','51 Upham Hill'),(85,'Margaret Crawford','3305 Jenna Plaza'),(86,'Russell Sullivan','2 Clemons Place'),(87,'Patrick Owens','7202 Loftsgordon Court'),(88,'Ronald Rivera','6 Oriole Drive'),(89,'Terry Nelson','25 Del Mar Park'),(90,'Eugene Harvey','76307 Gale Parkway'),(91,'Jose Jones','25659 Meadow Valley Alley'),(92,'Brian Stevens','17 Kings Street'),(93,'Jose Scott','36 Autumn Leaf Parkway'),(94,'Paul Carroll','3 Sunbrook Parkway'),(95,'Patrick Burke','75 Corben Park'),(96,'Rose Fuller','5976 Novick Center'),(97,'Diane Hall','68997 Riverside Park'),(98,'Doris Bradley','0638 Hanover Drive'),(99,'Karen Knight','59072 Crescent Oaks Avenue'),(100,'Amanda Hughes','55615 Becker Street'),(101,'Steven Price','42529 Fremont Trail'),(102,'Jimmy Robertson','2 Northview Pass'),(103,'Edward Alexander','08641 Kipling Place'),(104,'Keith Flores','0162 Larry Parkway'),(105,'Phyllis Johnston','69 Kipling Center'),(106,'Steve Ford','1704 Sundown Road'),(107,'Frank Dixon','465 Glacier Hill Hill'),(108,'Julie Jones','1 Talisman Alley'),(109,'Nancy Alvarez','53135 Miller Hill'),(110,'Cynthia Ellis','417 Havey Circle'),(111,'Mark Hamilton','5447 Basil Avenue'),(112,'Jason Peterson','8 Scofield Plaza'),(113,'Timothy Lewis','110 Gateway Circle'),(114,'Roger Turner','23 Cambridge Street'),(115,'Kelly Schmidt','94262 New Castle Lane'),(116,'Randy Hanson','062 Pleasure Center'),(117,'Wayne Marshall','22008 Commercial Hill'),(118,'Earl Hawkins','493 Shoshone Place'),(119,'Sara Sanchez','57 Sycamore Point'),(120,'Judith Wood','0680 Petterle Pass'),(121,'Angela Ferguson','03737 Myrtle Trail'),(122,'Dennis Hicks','57831 School Point'),(123,'Daniel Berry','91668 Waywood Place'),(124,'Patrick Peters','3 Bonner Center'),(125,'Diane Jordan','687 Fallview Point'),(126,'Jose Gray','89 Maple Point'),(127,'Robert Reed','4 Forest Dale Lane'),(128,'Angela Knight','57936 Golf View Hill'),(129,'Rebecca Marshall','176 Hazelcrest Avenue'),(130,'Ronald Lane','24354 Debra Pass'),(131,'Judy Lawrence','7 Declaration Court'),(132,'Keith Burke','71 Hazelcrest Plaza'),(133,'Roy Murray','5 Esker Junction'),(134,'Jacqueline Myers','3499 Sutherland Circle'),(135,'Jeremy Payne','786 La Follette Trail'),(136,'Kevin Vasquez','237 Sommers Park'),(137,'Janet Armstrong','9 Hanover Pass'),(138,'Jack White','88 Weeping Birch Hill'),(139,'John Anderson','19627 Haas Avenue'),(140,'John Moore','599 Hoffman Road'),(141,'Charles Lawrence','153 Spenser Drive'),(142,'Charles Murray','55 Moland Hill'),(143,'Ralph Wells','653 Novick Terrace'),(144,'Annie Jones','65709 Lotheville Trail'),(145,'Catherine Ross','52725 Hazelcrest Alley'),(146,'Harold Arnold','266 Gerald Way'),(147,'Gloria Mitchell','619 Boyd Crossing'),(148,'Phyllis Alvarez','99 Old Gate Avenue'),(149,'Patricia Garza','21 Farmco Crossing'),(150,'Katherine Alexander','17 Rusk Parkway'),(151,'Bobby Harper','17968 Golf Course Alley'),(152,'William Collins','8128 Gerald Lane'),(153,'Theresa Gutierrez','5807 Springview Court'),(154,'Jason Simpson','5 Victoria Avenue'),(155,'Craig Hunter','44734 Anzinger Circle'),(156,'Carolyn Chapman','2311 Fuller Park'),(157,'Harold Anderson','6550 East Junction'),(158,'Mary Meyer','4 Superior Alley'),(159,'Kathryn Stevens','223 Calypso Crossing'),(160,'Janet Martinez','96314 Bayside Parkway'),(161,'Ernest Nguyen','12065 Sundown Way'),(162,'Andrew Robinson','33401 Cardinal Crossing'),(163,'Karen Arnold','9 Larry Hill'),(164,'Charles Dunn','13 Westend Lane'),(165,'Stephanie Alexander','1374 Kennedy Place'),(166,'Kathy Gilbert','5 Iowa Trail'),(167,'Debra Gonzalez','4884 Alpine Junction'),(168,'Patricia Simmons','2233 Hoepker Crossing'),(169,'Carlos Hudson','208 Messerschmidt Park'),(170,'Randy Day','767 Mayer Drive'),(171,'Kathryn Hansen','0 Lindbergh Alley'),(172,'Joe Garcia','81 Mendota Trail'),(173,'Benjamin Bell','78 Red Cloud Park'),(174,'Earl Gilbert','55570 Westerfield Hill'),(175,'Billy Reed','04628 Rieder Terrace'),(176,'Thomas Miller','79318 Garrison Hill'),(177,'Carlos West','06 Orin Crossing'),(178,'Randy Torres','67 Glacier Hill Drive'),(179,'Albert Washington','912 Mallory Drive'),(180,'Bobby Cruz','358 Cody Plaza'),(181,'Jean Kim','808 5th Place'),(182,'Judith Hall','805 Pennsylvania Center'),(183,'Philip Carter','1108 Cottonwood Crossing'),(184,'Helen Lynch','39284 Melby Terrace'),(185,'Virginia Anderson','312 Forest Run Park'),(186,'Matthew Cunningham','32610 Chinook Junction'),(187,'Doris Lawrence','71824 Dryden Crossing'),(188,'Joe Sanders','162 Hansons Place'),(189,'Howard Riley','72818 Lighthouse Bay Place'),(190,'Louise Murphy','5189 Carpenter Street'),(191,'Joan Brown','3 Stuart Alley'),(192,'Ann Morrison','03729 Corscot Terrace'),(193,'Aaron Fowler','9 Elmside Junction'),(194,'Carolyn Rivera','74 Canary Way'),(195,'Larry Romero','660 Center Drive'),(196,'Matthew King','205 Leroy Plaza'),(197,'Susan Edwards','915 Golf Course Crossing'),(198,'Daniel Mccoy','0 Fuller Crossing'),(199,'Lori Armstrong','830 Reindahl Circle'),(200,'Virginia Rice','3 Pawling Park');
/*!40000 ALTER TABLE `perawat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perlengkapan`
--

DROP TABLE IF EXISTS `perlengkapan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perlengkapan` (
  `ID_perlengkapan` int(20) NOT NULL,
  PRIMARY KEY (`ID_perlengkapan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perlengkapan`
--

LOCK TABLES `perlengkapan` WRITE;
/*!40000 ALTER TABLE `perlengkapan` DISABLE KEYS */;
INSERT INTO `perlengkapan` VALUES (101),(102),(103),(104),(105),(106),(107),(108),(109),(110),(111),(112),(113),(114),(115),(116),(117),(118),(119),(120),(121),(122),(123),(124),(125),(126),(127),(128),(129),(130),(131),(132),(133),(134),(135),(136),(137),(138),(139),(140),(141),(142),(143),(144),(145),(146),(147),(148),(149),(150),(151),(152),(153),(154),(155),(156),(157),(158),(159),(160),(161),(162),(163),(164),(165),(166),(167),(168),(169),(170),(171),(172),(173),(174),(175),(176),(177),(178),(179),(180),(181),(182),(183),(184),(185),(186),(187),(188),(189),(190),(191),(192),(193),(194),(195),(196),(197),(198),(199),(200);
/*!40000 ALTER TABLE `perlengkapan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `ID_Staff` int(11) NOT NULL,
  `Nama` varchar(50) DEFAULT NULL,
  `Supplier` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_Staff`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Carlos Jacobs','PD-Rx Pharmaceuticals, Inc.'),(2,'Jennifer Hansen','Teva Pharmaceuticals USA Inc'),(3,'Heather Washington','West-ward Pharmaceutical Corp'),(4,'Ruby Wallace','Unifirst First Aid Corporation'),(5,'Ashley Morris','Hyland\'s'),(6,'Carl Scott','Aidarex Pharmaceuticals LLC'),(7,'Gary Austin','Zhuhai Jenny\'s Choice Manufacturing Limited'),(8,'Deborah Rogers','Uriel Pharmacy Inc.'),(9,'Jacqueline Chavez','Bryant Ranch Prepack'),(10,'Julia Howard','Gemini Laboratories, LLC'),(11,'Louise Phillips','REMEDYREPACK INC.'),(12,'Alan Olson','DOLGENCORP, LLC'),(13,'Roy Hill','State of Florida DOH Central Pharmacy'),(14,'Larry Chapman','Shopko Stores Operating Co., LLC'),(15,'Justin Morrison','Contract Pharmacy Services-PA'),(16,'Daniel Ellis','International Wholesale, Inc.'),(17,'Doris Hunter','ConvaTec Inc'),(18,'Fred Flores','Bryant Ranch Prepack'),(19,'Raymond Reid','Hikma Pharmaceutical'),(20,'Charles Diaz','REMEDYREPACK INC.'),(21,'Albert Jenkins','American Sales Company'),(22,'Shawn Carroll','DZA Brands LLC'),(23,'Eric Anderson','TGone Remedies Ltd'),(24,'Joshua Mills','American Health Packaging'),(25,'William Murray','Your Military Exchanges'),(26,'David Peters','American Health Packaging'),(27,'Heather Carroll','Kinray, Inc'),(28,'Brandon Hall','St Marys Medical Park Pharmacy'),(29,'Jack Kelley','Parke-Davis Div of Pfizer Inc'),(30,'Deborah Wells','Reckitt Benckiser LLC'),(31,'Theresa Collins','Novartis Pharmaceuticals Corporation'),(32,'Ann Washington','Hospira, Inc.'),(33,'Justin Hawkins','Topco Associates LLC'),(34,'Robert Cook','Unifirst First Aid Corporation'),(35,'Howard Ramos','Unit Dose Services'),(36,'John Walker','Peaceful Mountain, Inc.'),(37,'Betty Lane','Unit Dose Services'),(38,'Douglas Lee','APP Pharmaceuticals, LLC'),(39,'Emily Collins','Ballay Pharmaceuticals, Inc.'),(40,'Gloria Fields','Physicians Total Care, Inc.'),(41,'Norma Grant','Target Corporation'),(42,'Michelle Foster','Legacy Pharmaceutical Packaging'),(43,'Sharon Wells','Nelco Laboratories, Inc.'),(44,'Melissa Howell','Natural Health Supply'),(45,'Joseph Peters','B. Braun Medical Inc.'),(46,'Kathleen Jordan','BioComp Pharma, Inc.'),(47,'Joan Austin','Nelco Laboratories, Inc.'),(48,'Brian Hart','Safeway Inc.'),(49,'Dennis Williams','Home Sweet Homeopathics'),(50,'Ernest Harper','Nelco Laboratories, Inc.'),(51,'Jeremy Hamilton','Antigen Laboratories, Inc.'),(52,'Kathryn George','AvKARE, Inc.'),(53,'Barbara Reynolds','Claris Lifesciences Inc.'),(54,'Patricia Rose','Meijer Distribution Inc'),(55,'Justin Thompson','Uriel Pharmacy Inc'),(56,'Julie Anderson','BioActive Nutrional, Inc.'),(57,'Gloria Meyer','GUILIN TIANHE PHARMACEUTICAL CO LTD'),(58,'Matthew Romero','Aptalis Pharma US, Inc.'),(59,'Nicole Ray','Ningbo Correway Cosmetics Co., Ltd.'),(60,'Virginia Gonzalez','Kmart Corp'),(61,'Stephanie Kim','Centurion Labs, LLC'),(62,'Jason Willis','Mylan Institutional Inc.'),(63,'Heather Williamson','Physicians Total Care, Inc.'),(64,'Chris Green','Shire US Manufacturing Inc.'),(65,'Raymond Burton','Actavis Pharma, Inc.'),(66,'Cheryl Bowman','Gulf State Chemical and Welding Supply Inc.'),(67,'Michelle Armstrong','Deseret Biologicals, Inc.'),(68,'Kelly Sullivan','General Injectables & Vaccines, Inc'),(69,'Lawrence Bennett','Meijer Distribution, Inc.'),(70,'Mildred Gonzalez','Citron Pharma LLC'),(71,'Judy Lawson','Novartis Pharmaceuticals Corporation'),(72,'Jessica Reid','NCS HealthCare of KY, Inc dba Vangard Labs'),(73,'Debra Jones','Actavis Elizabeth LLC'),(74,'Lillian Russell','CHANEL PARFUMS BEAUTE'),(75,'Janice Brown','REMEDYREPACK INC.'),(76,'Johnny Hamilton','Johnson & Johnson Healthcare Products, Division of'),(77,'Timothy Bradley','Procter & Gamble Manufacturing Company'),(78,'Samuel Wells','MSD Consumer Care, Inc.'),(79,'Justin Peterson','Apotex Corp.'),(80,'Lois Parker','Teva Pharmaceuticals USA Inc'),(81,'Willie Butler','A-S Medication Solutions LLC'),(82,'Brenda Rogers','Poly Pharmaceuticals, Inc.'),(83,'Marilyn Banks','Nelco Laboratories, Inc.'),(84,'Roger Cunningham','WALGREEN CO.'),(85,'Amy Howell','Winning Solutions'),(86,'Eugene Smith','ALK-Abello, Inc.'),(87,'Jerry Stephens','Glenmark Generics Inc. USA'),(88,'Ronald Robertson','Qualitest Pharmaceuticals'),(89,'Henry Spencer','Teva Pharmaceuticals USA Inc'),(90,'Anthony Brooks','Chain Drug Marketing Association'),(91,'Irene Martinez','Washington Homeopathic Products'),(92,'Clarence Alexander','Lessors, Incorporated'),(93,'Stephen Hernandez','Inspire Pharmaceuticals, Inc.'),(94,'Janice Kennedy','Nelco Laboratories, Inc.'),(95,'Kenneth Thompson','Lake Erie Medical & Surgical Supply DBA Quality Ca'),(96,'Harry Scott','Nelson Bach USA, Ltd.'),(97,'Joe Simpson','WOONSOCKET PRESCRIPTION CENTER,INCORPORATED'),(98,'Aaron Alexander','J. A. Cosmetics U.S. INC'),(99,'Anthony Harris','Watson Laboratories, Inc.'),(100,'Karen Garza','Pfizer Laboratories Div Pfizer Inc'),(101,'Sara Gonzalez','Greenstone LLC'),(102,'Antonio Fowler','H E B'),(103,'Walter Elliott','Antigen Laboratories, Inc.'),(104,'Eugene Graham','DAVA Pharmaceuticals, Inc.'),(105,'Deborah Cole','Aetna Felt Corp'),(106,'Ruth Cruz','LLC Federal Solutions'),(107,'Juan Henderson','LG Household and Healthcare, Inc.'),(108,'Ashley Hamilton','Kosan Kozmetik Sanayi ve Ticaret A.S.'),(109,'Raymond Shaw','State of Florida DOH Central Pharmacy'),(110,'Alan Gomez','Richmond Pharmaceuticals, Inc.'),(111,'Peter Dunn','AAA Pharmaceutical, Inc.'),(112,'Gary Crawford','Apotheca Company'),(113,'Betty Turner','Aphena Pharma Solutions - Tennessee, LLC'),(114,'Ann Torres','Mondelez Global LLC'),(115,'Maria Perry','Boca Pharmacal, LLC'),(116,'Pamela Lee','Pfizer Consumer Healthcare'),(117,'Jimmy Campbell','Apotheca Company'),(118,'Evelyn Wright','Bel-Art Products'),(119,'Robin Reynolds','REMEDYREPACK INC.'),(120,'Steve Reid','AbbVie Inc.'),(121,'Ashley Fisher','Wise Consumer Products'),(122,'Brenda Henderson','Conopco Inc. d/b/a Unilever'),(123,'Earl Torres','Homeostasis Laboratories, Inc.'),(124,'Joan Howard','L. Perrigo Company'),(125,'Jennifer Fields','LG Household and Healthcare, Inc.'),(126,'Arthur Willis','Apotheca Company'),(127,'Wanda Ramos','Golden State Medical Supply, Inc.'),(128,'Laura Willis','Greenstone LLC'),(129,'Robin Harvey','Janssen Pharmaceuticals, Inc.'),(130,'Anne Price','ALK-Abello, Inc.'),(131,'Juan Spencer','West-ward Pharmaceutical Corp.'),(132,'Laura Cox','Meijer Distribution Inc'),(133,'Norma Harris','Legacy Pharmaceutical Packaging'),(134,'Frances Diaz','St Marys Medical Park Pharmacy'),(135,'Amanda Foster','Apotex Corp.'),(136,'Carl Lynch','Newton Laboratories, Inc.'),(137,'Samuel Ramos','SJ Creations, Inc.'),(138,'Eric Morris','Homeocare Laboratories'),(139,'Deborah Stone','L\'Oreal USA Products Inc'),(140,'Stephen Shaw','Genesan Systems'),(141,'Frances Hunt','ALK-Abello, Inc.'),(142,'Craig Martin','Dr.Reddy\'s Laboratories Ltd'),(143,'Angela Ruiz','Integria Healthcare Ballina'),(144,'Mary Bailey','ProStat First Aid'),(145,'Raymond Holmes','TYA Pharmaceuticals'),(146,'Jacqueline Stone','HYVEE INC'),(147,'Joe Flores','Bare Escentuals Beauty Inc.'),(148,'Paul Morrison','Amarin Pharma Inc.'),(149,'Roy Baker','State of Florida DOH Central Pharmacy'),(150,'Andrea Bailey','Rebel Distributors Corp'),(151,'Sandra Banks','AMOREPACIFIC'),(152,'Pamela Green','Golden State Medical Supply, Inc'),(153,'Mildred Hunter','Elizabeth Arden, Inc'),(154,'Judith Perkins','Coty US LLC'),(155,'Louise Gutierrez','Target Corporation'),(156,'Teresa Hall','Nelco Laboratories, Inc.'),(157,'Dennis Matthews','Superior Welding Supply Co'),(158,'Edward Walker','Raining Rose, Inc.'),(159,'Timothy Stephens','Greenstone LLC'),(160,'Howard Morgan','Lake Erie Medical DBA Quality Care Products LLC'),(161,'Jesse Patterson','Lake Erie Medical DBA Quality Care Products LLC'),(162,'Jonathan Marshall','Heritage Pharmaceuticals Inc.'),(163,'Joyce Grant','Jubilant HollisterStier LLC'),(164,'Rebecca Richardson','Patriot Pharmaceuticals LLC'),(165,'Mary West','Kmart Corporation'),(166,'Donna Watkins','Purdue Pharma LP'),(167,'Michael Wagner','Lake Erie Medical DBA Quality Care Products LLC'),(168,'Donna Hamilton','Contract Pharmacy Services-PA'),(169,'Lawrence Ryan','Rhodes Pharmaceuticals L.P.'),(170,'Jason Ross','REMEDYREPACK INC.'),(171,'Ernest Murray','SYOXSA, Inc.'),(172,'Joshua Kim','Gurwitch Products, L.L.C.'),(173,'Marie Simpson','Bayer HealthCare Pharmaceuticals Inc.'),(174,'Steve Scott','Zenith Medicosm SL'),(175,'Terry Morris','Energique, Inc.'),(176,'Diane Alexander','Blenheim Pharmacal, Inc.'),(177,'Jane Mason','Triax Pharmaceuticals, LLC'),(178,'Donna Crawford','Nichiban Company Limited'),(179,'Samuel Palmer','BioActive Nutritional, Inc.'),(180,'Christine Sims','Cardinal Health'),(181,'Evelyn Stevens','PD-Rx Pharmaceuticals, Inc.'),(182,'David Hart','Beutlich LP, Pharmaceuticals'),(183,'Randy Schmidt','King Bio Inc.'),(184,'Anne Burke','Bare Escentuals Beauty, Inc.'),(185,'Ruby Evans','Major Pharmaceuticals'),(186,'Christopher West','Advanced Generic Corporation'),(187,'Louis Gilbert','Chain Drug Consortium'),(188,'Donald Mitchell','DAVA Pharmaceuticals, Inc.'),(189,'Mark Lawrence','STERIS Corporation'),(190,'Martin Morales','NCS HealthCare of KY, Inc dba Vangard Labs'),(191,'Ashley Sims','CARROLL COMPANY'),(192,'Ruth Garza','Procter & Gamble Manufacturing Company'),(193,'Tina Carr','Solazyme, Inc.'),(194,'Brian Sanchez','REMEDYREPACK INC.'),(195,'Carlos Jenkins','Baxter Healthcare Corporation'),(196,'Carl Alexander','Cadila Healthcare Limited'),(197,'Harold Fuller','SHISEIDO AMERICAS CORPORATION'),(198,'Betty Willis','Topco Associates LLC'),(199,'Tammy Porter','Mylan Pharmaceuticals Inc.'),(200,'Jose Evans','ANIP Acquisition Company');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplies`
--

DROP TABLE IF EXISTS `supplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplies` (
  `Kode_Transaksi` varchar(25) NOT NULL,
  `Nama_Supplies` varchar(30) DEFAULT NULL,
  `Supplier` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Kode_Transaksi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplies`
--

LOCK TABLES `supplies` WRITE;
/*!40000 ALTER TABLE `supplies` DISABLE KEYS */;
INSERT INTO `supplies` VALUES ('00-237-3792','DOLORACIN','Dibbert-Murphy'),('00-989-4153','GABAPENTIN','Bauch, Stiedemann and Russel'),('01-220-8972','Allopurinol','Ankunding-West'),('01-487-6391','Oxygen','Pollich, Pfeffer and Lindgren'),('03-481-8365','SPF30 SUPER SENSITIVE SUNSCREE','Hintz-Keeling'),('03-658-2446','Up and Up Migraine Relief','Torphy-Osinski'),('04-367-3608','Amlodipine Besylate','Fadel-O\'Hara'),('04-537-1905','Viread','Hammes, Batz and Dietrich'),('04-638-1389','Desmopressin Acetate','Collins-Daugherty'),('04-827-7443','MANUGEL 85','Mueller-O\'Connell'),('05-200-0077','Dexamethasone','Schiller-Emmerich'),('05-372-9752','Senokot-S','Parker-Abshire'),('06-743-3925','Elliotts B','Monahan, Marquardt and Dach'),('06-755-2420','7 Select Childrens Ibuprofen','Kirlin LLC'),('06-778-6443','Voltaren','Marks Group'),('06-967-3912','Curly Dock','Lesch, McCullough and Turner'),('08-176-6812','ESIKA','Stokes and Sons'),('09-430-8238','Diazepam','Mayert-Blick'),('10-130-0081','Clobetasol Propionate','Kohler, Greenholt and Wilkinso'),('12-983-0110','Hydralazine Hydrochloride','Hayes, Predovic and Hammes'),('13-990-2865','Advanced Healing','Kuvalis LLC'),('14-487-8912','Instant Hand Sanitizer - Vanil','McGlynn and Sons'),('15-394-9067','Benztropine Mesylate','Bauch-Langosh'),('17-204-6907','Standardized Grass Pollen, Tim','Sanford and Sons'),('18-810-1112','La Roche Posay Laboratoire Der','Mante, Leuschke and Ryan'),('19-369-5651','ALTERNARIA TENUIS','Terry, Buckridge and Feil'),('20-395-4238','La Flecha Japonesa','Stark-Boyle'),('22-333-7790','Venlafaxine','Beahan-Legros'),('23-474-9670','Losartan potassium','Shanahan-Wolf'),('23-990-2060','Levetiracetam','McGlynn-Conroy'),('25-502-6462','Nectarine','Sauer-Kohler'),('25-517-0902','Ketorolac Tromethamine','Homenick Inc'),('27-799-3315','KROGER','Emmerich LLC'),('29-342-8006','ERY-TAB','Smitham, Stamm and Dietrich'),('29-752-4872','Borrelia Babesia Remedy','Sporer, Collins and Bahringer'),('30-221-6769','NARS ALL DAY LUMINOUS FOUNDATI','Kris-Rohan'),('31-856-9260','Fondaparinux Sodium','Eichmann LLC'),('31-864-6105','Metronidazole','Yundt-Walter'),('32-207-9605','Pioglitazone and Metformin Hyd','Lind-Bins'),('34-926-8426','Levothyroxine sodium','McGlynn, Kub and Bartoletti'),('35-532-4912','CITALOPRAM HYDROBROMIDE','Larkin, Ryan and Zemlak'),('36-271-8271','Alprazolam','Turcotte-Collins'),('36-472-3582','Demeclocycline Hydrochloride','Smith and Sons'),('36-552-4959','Nighttime','Rutherford-O\'Keefe'),('37-637-9444','Fexofenodine Hydrochloride','Kertzmann-Mraz'),('39-638-0076','Selenium Sulfide','Tillman-Zulauf'),('39-959-4630','Softlips','McDermott and Sons'),('44-308-2681','Enalapril Maleate and Hydrochl','Yundt-Boyle'),('44-311-4493','Penicillin V Potassium','Purdy, Hansen and Tremblay'),('44-685-6184','wal hist','Schmeler, Kuvalis and Beier'),('46-436-4172','Sulfamethoxazole and Trimethop','Lindgren Inc'),('47-498-3247','Quetiapine fumarate','Turner LLC'),('47-612-1434','9-1-1 Burnout','Cummerata Group'),('47-675-2790','Epirubicin Hydrochloride','Christiansen, Hand and O\'Hara'),('47-830-6977','LBEL NATURAL FINISH MOISTURIZI','Schroeder, Olson and Labadie'),('49-550-1535','Hydroxyzine Hydrochloride','Farrell Group'),('50-872-9309','Soft and Silky/Health Guard An','Auer-Bins'),('51-088-9940','Gabapentin','Will, Ziemann and Krajcik'),('51-217-2063','Penicillin V Potassium','Spencer, Abshire and Hickle'),('54-521-3033','Trazodone Hydrochloride','Hamill, Upton and Russel'),('54-545-4071','Painful Urination','Lehner-Mann'),('54-628-8290','Gabapentin','Mraz Inc'),('54-958-3886','Acid Reducer','Mann-Nienow'),('55-635-5977','Diltiazem Hydrochloride','Armstrong and Sons'),('56-841-3253','Amlodipine and Benazepril Hydr','Farrell-Kovacek'),('57-199-3901','Tizanidine','Adams-Kris'),('58-512-4111','Fluphenazine Hydrochloride','Jaskolski-Cassin'),('59-843-7052','Allergy Relief','Harvey, Larson and Marquardt'),('61-628-1874','Purmist','Sauer-Emmerich'),('62-832-5396','bareMinerals Prime Time BB Pri','Gutkowski and Sons'),('63-107-0883','Phenytoin Sodium','Monahan, Buckridge and Barton'),('65-037-3229','ShopRite Nasal Decongestant','Goldner-Hegmann'),('66-201-0506','TOPIRAMATE','Spinka LLC'),('66-824-7550','ENALAPRIL MALEATE','Jerde LLC'),('66-949-1919','RORIS SHINY CC','Ward LLC'),('67-383-7611','Fluconazole','Smith, Sawayn and Ryan'),('67-418-3628','Tretinoin','West-Brown'),('69-087-7735','risperidone','Boehm Group'),('69-229-6948','Menopause','Von, Vandervort and Buckridge'),('70-473-4457','Sun Mark allergy relief','Littel-Turner'),('71-368-3804','Mucus Relief DM MAX','Rolfson, Ruecker and Schultz'),('72-130-1514','NiteTime','Kassulke LLC'),('75-257-2128','CARE ONE','Walsh, O\'Connell and Harber'),('75-634-0648','Amlodipine Besylate and Benaze','Murphy LLC'),('77-186-5884','Valproic Acid','Kirlin, Ryan and Denesik'),('77-515-7193','Anticavity Fluoride Rinse','Fritsch LLC'),('80-628-4032','Sprayology Stress Relief','Greenholt Group'),('82-378-6187','Fenofibrate','Weber Group'),('82-493-7772','Lemon Zest Antibacterial Foami','Block, Fadel and Bernhard'),('82-559-6297','Chlordiazepoxide Hydrochloride','Ondricka, Fisher and Conroy'),('87-295-6874','Carvedilol','Kutch Inc'),('87-746-9439','Hydroxyzine','Erdman, Hermann and Jast'),('88-014-5341','Cheratussin DAC','Cummerata, Reynolds and Cruick'),('88-319-1478','Tacrolimus','Terry Group'),('88-992-6959','EVOXAC','Barrows-Fisher'),('91-882-0444','Arthritis HP','Conroy-Abshire'),('91-948-4373','Flucytosine','Wehner LLC'),('94-173-7105','Eye Itch Relief','Vandervort and Sons'),('95-563-9902','Mucus Relief','Bosco and Sons'),('96-169-2490','Ammonium Lactate','Schaden-MacGyver');
/*!40000 ALTER TABLE `supplies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `ID_Dokter` int(20) NOT NULL,
  `ID_Pasien` int(20) NOT NULL,
  `No_Reg_Inf_Lb` int(20) NOT NULL,
  PRIMARY KEY (`ID_Dokter`,`ID_Pasien`,`No_Reg_Inf_Lb`),
  KEY `FK_Test_Pasien` (`ID_Pasien`),
  KEY `FK_Test_Laboratorium` (`No_Reg_Inf_Lb`),
  CONSTRAINT `FK_Test_Dokter` FOREIGN KEY (`ID_Dokter`) REFERENCES `dokter` (`ID_Dokter`),
  CONSTRAINT `FK_Test_Laboratorium` FOREIGN KEY (`No_Reg_Inf_Lb`) REFERENCES `laboratorium` (`No_Reg_Inf_Lb`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Test_Pasien` FOREIGN KEY (`ID_Pasien`) REFERENCES `pasien` (`ID_Pasien`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES (3,43,1091),(3,109,1092),(4,23,1092),(5,125,1100),(5,153,1089),(6,23,1098),(6,164,1087),(6,168,1094),(8,62,1092),(9,71,1097),(9,157,1095),(10,120,1099),(13,38,1091),(15,43,1088),(16,14,1091),(16,151,1097),(17,73,1086),(19,36,1099),(22,7,1092),(27,164,1097),(29,120,1096),(30,182,1089),(31,26,1094),(31,170,1091),(33,41,1090),(34,85,1090),(34,154,1098),(35,31,1094),(36,17,1092),(36,169,1097),(37,31,1097),(38,144,1086),(39,57,1093),(39,165,1088),(40,134,1087),(44,61,1097),(44,117,1092),(45,98,1093),(47,99,1089),(50,20,1095),(51,5,1092),(51,70,1094),(55,5,1100),(55,192,1092),(56,35,1090),(56,95,1099),(57,153,1096),(60,179,1092),(62,37,1091),(62,104,1096),(65,32,1095),(65,55,1095),(65,108,1097),(66,120,1099),(67,74,1097),(67,100,1096),(69,100,1087),(70,36,1095),(72,113,1095),(81,29,1096),(82,54,1096),(82,198,1096),(84,36,1086),(88,53,1095),(89,3,1090),(89,43,1086),(92,198,1096),(93,173,1099),(94,49,1094),(97,114,1097),(101,100,1089),(101,140,1094),(103,2,1090),(104,80,1091),(104,109,1093),(108,50,1097),(108,86,1094),(109,200,1097),(111,32,1090),(111,76,1087),(112,145,1099),(116,95,1092),(116,183,1092),(119,114,1097),(120,86,1097),(120,125,1096),(120,159,1086),(122,128,1098),(126,167,1089),(127,3,1087),(127,90,1095),(128,31,1093),(128,69,1088),(128,91,1099),(129,168,1093),(131,161,1088),(131,174,1087),(134,127,1098),(135,167,1096),(136,127,1090),(136,169,1091),(137,138,1093),(140,127,1097),(142,171,1089),(143,15,1091),(145,80,1100),(147,150,1100),(149,103,1087),(150,17,1097),(151,96,1093),(154,9,1091),(155,99,1087),(155,156,1097),(156,194,1094),(162,70,1092),(164,16,1097),(164,168,1091),(166,135,1091),(166,172,1097),(167,97,1090),(169,61,1100),(170,48,1088),(171,104,1092),(172,130,1096),(172,195,1089),(174,76,1093),(176,34,1094),(177,83,1089),(177,103,1090),(177,123,1088),(178,116,1088),(179,116,1096),(180,7,1098),(183,33,1098),(183,43,1096),(183,108,1090),(185,10,1091),(188,52,1089),(188,110,1094),(189,48,1087),(191,4,1095),(191,123,1097),(192,167,1097),(193,182,1093),(196,45,1093),(196,140,1098),(196,170,1087),(197,153,1086),(198,154,1086),(199,113,1098);
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-18 16:58:16
