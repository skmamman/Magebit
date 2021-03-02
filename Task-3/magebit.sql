-- MariaDB dump 10.18  Distrib 10.4.17-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: magebitdb
-- ------------------------------------------------------
-- Server version	10.4.17-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` VALUES (98,'Edvin@mail.ru','2021-02-28 22:29:35'),(104,'Dasha@hotmail.com','2021-02-28 22:40:39'),(107,'skmamman@outlook.com','2021-03-01 22:18:14'),(108,'sandeep@gmail.com','2021-03-01 22:38:27'),(109,'mama@gmail.com','2021-03-01 22:38:56'),(110,'jakutanastja@gmail.com','2021-03-01 22:39:23'),(111,'nikiemor6@mail.ru','2021-03-01 22:39:53'),(112,'annajukina@inbox.lv','2021-03-01 22:40:22'),(113,'KirilKoskin@inbox.lv','2021-03-01 22:40:58'),(114,'OlavUber@hotmail.com','2021-03-01 22:41:25'),(115,'GregJonsons@gmail.com','2021-03-01 22:41:53'),(116,'HatsuneMiku@hotmail.com','2021-03-01 22:42:17'),(117,'NikkiMorgan@gmail.com','2021-03-01 22:42:47'),(118,'lianavasilevska@inbox.lv','2021-03-01 22:43:07'),(119,'lauranetre@mail.ru','2021-03-01 22:43:41'),(120,'aleksejJakuta@inbox.lv','2021-03-01 22:44:06'),(121,'alexandroshlapakov@hotmail.com','2021-03-01 22:44:31'),(122,'egordruzinin@mail.ru','2021-03-01 22:44:46'),(123,'VasjaPupkin@gmail.com','2021-03-01 22:45:06'),(124,'TanjaMalek@inbox.lv','2021-03-01 22:45:32'),(125,'martadobele@hotmail.com','2021-03-01 22:45:52'),(126,'ritajukina@gmail.com','2021-03-01 22:46:20'),(127,'BorisMoiseev@gmail.com','2021-03-01 22:46:45'),(128,'FilipKirko@mail.ru','2021-03-01 22:47:02'),(129,'Nikolaibaskov@mail.ru','2021-03-01 22:47:21'),(130,'JorikMakarov@gmail.com','2021-03-01 22:47:40'),(131,'DeniDidro@hotmail.com','2021-03-01 22:48:11'),(132,'WillTerner@hotmail.com','2021-03-01 22:48:30'),(133,'jacksonHek@hotmail.com','2021-03-01 22:48:58'),(134,'tatjanaslapakova@gmail.com','2021-03-01 22:49:20'),(135,'elenasviridenko@inbox.lv','2021-03-01 22:49:44'),(136,'dashagorbunova@gmail.com','2021-03-01 22:50:02'),(137,'katjagorovaj@mail.ru','2021-03-01 22:50:24'),(138,'KostjaKostjushkin@mail.ru','2021-03-01 22:50:46'),(139,'DimitrijJukin@hotmail.com','2021-03-01 22:51:03'),(140,'ValerijMeladze@mail.ru','2021-03-01 22:51:30'),(141,'LoraBrezneva@gmail.com','2021-03-01 22:51:50'),(142,'KiraMakarova@gmail.com','2021-03-01 22:52:09'),(143,'NikaGorovaj@gmail.com','2021-03-01 22:52:30'),(145,'jonatondurandi@hotmail.com','2021-03-01 22:53:05'),(146,'ilonadrobish@mail.ru','2021-03-01 22:53:25'),(147,'alexnufriev@gmail.com','2021-03-01 22:53:39'),(148,'nonagrishaeva@hotmail.com','2021-03-01 22:53:55'),(149,'RitaFigaro@inbox.lv','2021-03-01 22:54:20'),(150,'KristineArbakaite@gmail.com','2021-03-01 22:54:37'),(151,'papa@gmail.com','2021-03-01 22:55:00'),(152,'lehajukin@gmail.com','2021-03-01 22:55:23'),(153,'galinaRakova@mail.ru','2021-03-01 22:55:41'),(154,'leonidAgutiv@gmail.com','2021-03-01 22:56:03'),(155,'VeraBrezneva@mail.ru','2021-03-01 22:56:20'),(157,'grishadruznij@gmail.com','2021-03-01 22:57:13'),(158,'Iljalangov@gmail.com','2021-03-01 22:57:31'),(159,'nikolajhodunov@gmail.com','2021-03-01 22:57:53'),(161,'HiroshiKayo@gmail.com','2021-03-01 22:58:42'),(162,'MatsumotoDzun@gmail.com','2021-03-01 22:59:00'),(163,'MikadoRikano@hotmail.com','2021-03-01 22:59:19'),(164,'Nastjabelkova@mail.ru','2021-03-01 22:59:37'),(165,'Sasharezcov@gmail.com','2021-03-01 22:59:59'),(166,'JanisChakste@gmail.com','2021-03-01 23:00:26'),(167,'Imantskalnins@gmail.com','2021-03-01 23:00:47'),(168,'JanisPorningis@inbox.lv','2021-03-01 23:01:10'),(169,'GitaDobele@gmail.com','2021-03-01 23:01:28'),(170,'ArnoldsUpe@inbox.lv','2021-03-01 23:01:51'),(171,'SergejNuyerkov@gmail.com','2021-03-01 23:02:18'),(172,'MaijaKote@inbox.lv','2021-03-01 23:02:41'),(173,'ZinaHerkova@mail.ru','2021-03-01 23:03:10'),(174,'NonaNikutina@gmail.com','2021-03-01 23:03:35'),(175,'Narutouzumaki@gmail.com','2021-03-01 23:03:54'),(176,'JinVonSob@gmail.com','2021-03-01 23:04:13'),(177,'MasatoNikaro@gmail.com','2021-03-01 23:04:46'),(178,'sonu@yahoo.com','2021-03-01 23:20:24'),(179,'Laila@yahoo.com','2021-03-01 23:21:08'),(180,'monu@gmail.ca','2021-03-01 23:21:34'),(181,'anastasia@index.ca','2021-03-01 23:22:27'),(183,'brother@yahoo.lv','2021-03-01 23:31:54'),(190,'ananastasia@gmail.lv','2021-03-02 00:31:29'),(192,'sandeepkumarmamman@gmail.com','2021-03-02 01:38:29'),(193,'sonia@hotmail.com','2021-03-02 01:43:19'),(194,'naina@outlook.com','2021-03-02 02:01:54'),(195,'Alina@gmail.ca','2021-03-02 02:05:19'),(196,'Mera@hotmail.com','2021-03-02 02:18:05'),(197,'lailarubab@gmail.com','2021-03-02 02:22:50'),(198,'lailarubabp@gmail.com','2021-03-02 11:04:27'),(199,'Skos@Gmail.com','2021-03-02 11:10:03'),(200,'sonuk@gmail.com','2021-03-02 11:12:21');
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-02 13:38:57
