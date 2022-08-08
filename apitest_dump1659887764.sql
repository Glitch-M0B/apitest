-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: apitest
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `name` varchar(30) NOT NULL,
  `token` varchar(200) NOT NULL,
  `abilities` varchar(30) NOT NULL,
  `tokenable_id` int(10) unsigned DEFAULT NULL,
  `tokenable_type` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES ('MyApp','757d31636b5fa965f2feaadb2aee1edd2fbea75e984daf5d4616be3649d95144','[\"*\"]',9,'App\\Models\\User','2022-07-30 06:12:17','2022-07-30 07:12:17'),('MyApp','d0b8f456d264d1fbdcb647e12fe25efbf8c4695006a9bf4f3cc643b978c3cb24','[\"*\"]',NULL,'App\\Models\\User','2022-07-30 06:14:01','2022-07-30 07:14:01');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `title` varchar(20) NOT NULL,
  `content` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES ('new post','new content','2022-07-30 09:48:12','2022-07-30 10:48:12'),('new post','new content','2022-07-30 09:50:00','2022-07-30 10:50:00'),('new post','new content','2022-07-30 09:51:00','2022-07-30 10:51:00'),('new post','new content','2022-07-30 09:52:00','2022-07-30 10:52:00'),('new post','new content','2022-07-30 09:53:00','2022-07-30 10:53:00'),('new post','new content','2022-07-30 09:54:00','2022-07-30 10:54:00'),('new post','new content','2022-07-30 09:55:00','2022-07-30 10:55:00'),('new post','new content','2022-07-30 10:26:01','2022-07-30 11:26:01'),('new post','new content','2022-07-30 10:27:00','2022-07-30 11:27:00'),('new post','new content','2022-07-30 10:28:00','2022-07-30 11:28:00'),('new post','new content','2022-07-30 10:29:01','2022-07-30 11:29:01'),('new post','new content','2022-07-30 10:30:00','2022-07-30 11:30:00'),('new post','new content','2022-07-30 10:40:00','2022-07-30 11:40:00'),('new post','new content','2022-07-30 10:50:00','2022-07-30 11:50:00'),('new post','new content','2022-07-30 11:00:00','2022-07-30 12:00:00'),('new post','new content','2022-07-30 11:10:00','2022-07-30 12:10:00'),('new post','new content','2022-07-30 11:20:00','2022-07-30 12:20:00'),('new post','new content','2022-07-30 11:30:00','2022-07-30 12:30:00'),('new post','new content','2022-07-30 11:40:00','2022-07-30 12:40:00');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `password` varchar(2000) NOT NULL,
  `email` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (8,'oussama','$2y$10$kKl1fCdYVOg5pE3G884C3.XM.3WUzsNdyfeNdjC/GT9AjKbFcxLuW','test@test.come','2022-07-30 05:42:15','2022-07-30 06:42:15'),(9,'oussama','$2y$10$GIVbjZSq.6xJCITJKvM6gOt.Zll57f6RmtTUQwxpRY1eQWZhE8DUq','test@test.come','2022-07-30 06:12:17','2022-07-30 07:12:17');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-07 16:56:04
