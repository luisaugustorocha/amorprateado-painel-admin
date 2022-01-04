-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: amorprateado
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'Anéis'),(2,'Alianças');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `sub` int DEFAULT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,2,'Alianças'),(2,NULL,'Anéis'),(3,2,'Anéis Aparadores'),(4,2,'Coração'),(5,2,'Solitários'),(6,NULL,'Teste');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupons` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `coupon_type` int NOT NULL,
  `coupon_value` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `options` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `options`
--

LOCK TABLES `options` WRITE;
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
INSERT INTO `options` VALUES (1,'Cor'),(2,'Tamanho'),(3,'Memória RAM'),(4,'Polegadas');
/*!40000 ALTER TABLE `options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_category` int NOT NULL,
  `id_brand` int NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` text,
  `stock` int NOT NULL,
  `price` float NOT NULL,
  `price_from` float NOT NULL,
  `rating` float NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `sale` tinyint(1) NOT NULL,
  `bestseller` tinyint(1) NOT NULL,
  `new_product` tinyint(1) NOT NULL,
  `options` varchar(200) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `width` float DEFAULT NULL,
  `height` float DEFAULT NULL,
  `length` float DEFAULT NULL,
  `diameter` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,1,1,'Aliança 3 Milímetros em Prata 925','Alguma descrição',10,66,70,2,1,1,1,1,'1',0.6,20,15,20,15),(2,1,1,'Aliança 3 Milímetros em Prata 925','Alguma descrição',10,70,80,5,0,0,0,0,'1',0.5,20,15,20,15),(4,1,2,'Aliança 3 Milímetros em Prata 925','Alguma descrição',10,80,90,0,0,0,0,0,'2',0.4,20,15,20,15),(5,1,1,'Aliança 3 Milímetros em Prata 925','Alguma descrição',10,90,0,1,0,0,0,0,'2',0.3,20,15,20,15),(6,1,2,'Teste','Teste',10,1000,0,5,0,0,0,0,'2',0.2,20,15,20,15);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_images`
--

DROP TABLE IF EXISTS `products_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_images` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int NOT NULL,
  `url` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_images`
--

LOCK TABLES `products_images` WRITE;
/*!40000 ALTER TABLE `products_images` DISABLE KEYS */;
INSERT INTO `products_images` VALUES (1,1,'1.jpg'),(2,2,'2.jpg'),(3,4,'3.jpg'),(4,5,'4.jpg');
/*!40000 ALTER TABLE `products_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_options`
--

DROP TABLE IF EXISTS `products_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_options` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int NOT NULL,
  `id_option` int NOT NULL,
  `p_value` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_options`
--

LOCK TABLES `products_options` WRITE;
/*!40000 ALTER TABLE `products_options` DISABLE KEYS */;
INSERT INTO `products_options` VALUES (1,1,2,'19cm'),(2,2,2,'19cm'),(3,4,1,'Azul'),(4,5,1,'Vermelho'),(5,6,2,'100cm');
/*!40000 ALTER TABLE `products_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_transactions`
--

DROP TABLE IF EXISTS `purchase_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_transactions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_purchase` int NOT NULL,
  `amount` float NOT NULL,
  `transaction_code` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_transactions`
--

LOCK TABLES `purchase_transactions` WRITE;
/*!40000 ALTER TABLE `purchase_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchases`
--

DROP TABLE IF EXISTS `purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchases` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `id_coupon` int DEFAULT NULL,
  `total_amount` float NOT NULL,
  `payment_type` varchar(100) DEFAULT NULL,
  `payment_status` int NOT NULL,
  `billet_link` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchases`
--

LOCK TABLES `purchases` WRITE;
/*!40000 ALTER TABLE `purchases` DISABLE KEYS */;
INSERT INTO `purchases` VALUES (1,2,NULL,155.4,'psckttransparente',1,NULL),(2,2,NULL,155.4,'psckttransparente',1,NULL),(3,2,NULL,155.4,'psckttransparente',1,NULL),(4,2,NULL,155.4,'psckttransparente',1,NULL),(5,2,NULL,155.4,'psckttransparente',1,NULL),(6,2,NULL,155.4,'psckttransparente',1,NULL),(7,2,NULL,155.4,'psckttransparente',1,NULL),(8,2,NULL,155.4,'psckttransparente',1,NULL),(9,2,NULL,155.4,'psckttransparente',1,NULL),(10,2,NULL,155.4,'psckttransparente',1,NULL),(11,2,NULL,155.4,'psckttransparente',1,NULL),(12,2,NULL,132,'psckttransparente',1,NULL),(13,2,NULL,132,'psckttransparente',1,NULL),(14,2,NULL,132,'psckttransparente',1,NULL),(15,2,NULL,132,'psckttransparente',1,NULL),(16,2,NULL,164.88,'psckttransparente',1,NULL),(17,2,NULL,164.88,'psckttransparente',1,NULL),(18,2,NULL,164.88,'psckttransparente',1,NULL),(19,2,NULL,90.88,'psckttransparente',1,NULL),(20,3,NULL,90.88,'mp',1,NULL),(21,3,NULL,90.88,'mp',1,NULL),(22,3,NULL,90.88,'mp',1,NULL),(23,3,NULL,90.88,'mp',1,NULL),(24,3,NULL,90.88,'mp',1,NULL),(25,3,NULL,90.88,'mp',1,NULL),(26,3,NULL,90.88,'mp',1,NULL),(27,3,NULL,90.88,'mp',1,NULL),(28,3,NULL,90.88,'mp',1,NULL),(29,3,NULL,90.88,'mp',1,NULL),(30,3,NULL,90.88,'mp',1,NULL),(31,3,NULL,90.88,'mp',1,NULL),(32,3,NULL,90.88,'mp',1,NULL),(33,3,NULL,90.88,'mp',1,NULL),(34,3,NULL,90.88,'mp',1,NULL),(35,3,NULL,90.88,'mp',1,NULL),(36,3,NULL,90.88,'mp',1,NULL),(37,3,NULL,90.88,'mp',1,NULL),(38,3,NULL,90.88,'mp',1,NULL),(39,3,NULL,90.88,'mp',1,NULL),(40,3,NULL,90.88,'mp',1,NULL),(41,3,NULL,90.88,'mp',1,NULL),(42,3,NULL,354.88,'mp',1,NULL),(43,3,NULL,354.88,'mp',1,NULL),(44,3,NULL,354.88,'mp',1,NULL),(45,3,NULL,93.48,'mp',1,NULL),(46,3,NULL,93.48,'mp',1,NULL);
/*!40000 ALTER TABLE `purchases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchases_products`
--

DROP TABLE IF EXISTS `purchases_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchases_products` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_purchase` int NOT NULL,
  `id_product` int NOT NULL,
  `quantity` int NOT NULL,
  `product_price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchases_products`
--

LOCK TABLES `purchases_products` WRITE;
/*!40000 ALTER TABLE `purchases_products` DISABLE KEYS */;
INSERT INTO `purchases_products` VALUES (1,1,1,2,66),(2,2,1,2,66),(3,3,1,2,66),(4,4,1,2,66),(5,5,1,2,66),(6,6,1,2,66),(7,7,1,2,66),(8,8,1,2,66),(9,9,1,2,66),(10,10,1,2,66),(11,11,1,2,66),(12,12,1,2,66),(13,13,1,2,66),(14,14,1,2,66),(15,15,1,2,66),(16,16,2,2,70),(17,17,2,2,70),(18,18,2,2,70),(19,19,1,1,66),(20,20,1,1,66),(21,21,1,1,66),(22,22,1,1,66),(23,23,1,1,66),(24,24,1,1,66),(25,25,1,1,66),(26,26,1,1,66),(27,27,1,1,66),(28,28,1,1,66),(29,29,1,1,66),(30,30,1,1,66),(31,31,1,1,66),(32,32,1,1,66),(33,33,1,1,66),(34,34,1,1,66),(35,35,1,1,66),(36,36,1,1,66),(37,37,1,1,66),(38,38,1,1,66),(39,39,1,1,66),(40,40,1,1,66),(41,41,1,1,66),(42,42,1,5,66),(43,43,1,5,66),(44,44,1,5,66),(45,45,2,1,70),(46,46,2,1,70);
/*!40000 ALTER TABLE `purchases_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rates`
--

DROP TABLE IF EXISTS `rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rates` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int NOT NULL,
  `id_user` int NOT NULL,
  `date_rated` datetime NOT NULL,
  `points` int NOT NULL,
  `comment` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rates`
--

LOCK TABLES `rates` WRITE;
/*!40000 ALTER TABLE `rates` DISABLE KEYS */;
INSERT INTO `rates` VALUES (1,2,1,'2021-10-11 00:00:00',2,'Teste de produto.'),(2,2,1,'2021-10-11 00:00:00',5,'Esse produto é bom.');
/*!40000 ALTER TABLE `rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheduling`
--

DROP TABLE IF EXISTS `scheduling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scheduling` (
  `id` int NOT NULL,
  `id_user` int NOT NULL,
  `date` date NOT NULL,
  `hour` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduling`
--

LOCK TABLES `scheduling` WRITE;
/*!40000 ALTER TABLE `scheduling` DISABLE KEYS */;
/*!40000 ALTER TABLE `scheduling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `address` varchar(100) NOT NULL,
  `telephone` varchar(14) NOT NULL,
  `name` varchar(100) DEFAULT '',
  `admin` tinyint(1) DEFAULT '0',
  `token` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'teste@teste.com.br','698dc19d489c4e4db73e28a713eab07b','Rua 01','6199999999','Luis',1,NULL),(2,'c82002142135886499430@sandbox.pagseguro.com.br','xPHfWM5luDWlvUp0','Rua 10','6191919292','Sandbox',0,NULL),(3,'teste@teste.com.br','123','Rua 17','8199999999','Fulano de tal',1,'');
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

-- Dump completed on 2022-01-04 13:02:41
