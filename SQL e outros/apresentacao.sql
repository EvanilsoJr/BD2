-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: apresentacao
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Eletronicos'),(2,'Roupas'),(3,'Alimentos');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) NOT NULL,
  `email` varchar(120) DEFAULT NULL,
  `telefone` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Cliente 1','cliente1@email.com','11999990001'),(2,'Cliente 2','cliente2@email.com','11999990002'),(3,'Cliente 3','cliente3@email.com','11999990003'),(4,'Cliente 4','cliente4@email.com','11999990004'),(5,'Cliente 5','cliente5@email.com','11999990005'),(6,'Cliente 6','cliente6@email.com','11999990006'),(7,'Cliente 7','cliente7@email.com','11999990007'),(8,'Cliente 8','cliente8@email.com','11999990008'),(9,'Cliente 9','cliente9@email.com','11999990009'),(10,'Cliente 10','cliente10@email.com','11999990010'),(11,'Cliente 11','cliente11@email.com','11999990011'),(12,'Cliente 12','cliente12@email.com','11999990012'),(13,'Cliente 13','cliente13@email.com','11999990013'),(14,'Cliente 14','cliente14@email.com','11999990014'),(15,'Cliente 15','cliente15@email.com','11999990015'),(16,'Cliente 16','cliente16@email.com','11999990016'),(17,'Cliente 17','cliente17@email.com','11999990017'),(18,'Cliente 18','cliente18@email.com','11999990018'),(19,'Cliente 19','cliente19@email.com','11999990019'),(20,'Cliente 20','cliente20@email.com','11999990020'),(21,'Cliente 21','cliente21@email.com','11999990021'),(22,'Cliente 22','cliente22@email.com','11999990022'),(23,'Cliente 23','cliente23@email.com','11999990023'),(24,'Cliente 24','cliente24@email.com','11999990024'),(25,'Cliente 25','cliente25@email.com','11999990025'),(26,'Cliente 26','cliente26@email.com','11999990026'),(27,'Cliente 27','cliente27@email.com','11999990027'),(28,'Cliente 28','cliente28@email.com','11999990028'),(29,'Cliente 29','cliente29@email.com','11999990029'),(30,'Cliente 30','cliente30@email.com','11999990030'),(31,'Cliente 31','cliente31@email.com','11999990031'),(32,'Cliente 32','cliente32@email.com','11999990032'),(33,'Cliente 33','cliente33@email.com','11999990033'),(34,'Cliente 34','cliente34@email.com','11999990034'),(35,'Cliente 35','cliente35@email.com','11999990035'),(36,'Cliente 36','cliente36@email.com','11999990036'),(37,'Cliente 37','cliente37@email.com','11999990037'),(38,'Cliente 38','cliente38@email.com','11999990038'),(39,'Cliente 39','cliente39@email.com','11999990039'),(40,'Cliente 40','cliente40@email.com','11999990040'),(41,'Cliente 41','cliente41@email.com','11999990041'),(42,'Cliente 42','cliente42@email.com','11999990042'),(43,'Cliente 43','cliente43@email.com','11999990043'),(44,'Cliente 44','cliente44@email.com','11999990044'),(45,'Cliente 45','cliente45@email.com','11999990045'),(46,'Cliente 46','cliente46@email.com','11999990046'),(47,'Cliente 47','cliente47@email.com','11999990047'),(48,'Cliente 48','cliente48@email.com','11999990048'),(49,'Cliente 49','cliente49@email.com','11999990049'),(50,'Cliente 50','cliente50@email.com','11999990050');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes_perfil`
--

DROP TABLE IF EXISTS `clientes_perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes_perfil` (
  `id_cliente` int NOT NULL,
  `preferencias` varchar(30) DEFAULT NULL,
  `renda` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`),
  CONSTRAINT `clientes_perfil_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes_perfil`
--

LOCK TABLES `clientes_perfil` WRITE;
/*!40000 ALTER TABLE `clientes_perfil` DISABLE KEYS */;
INSERT INTO `clientes_perfil` VALUES (1,'Preferencia A',3000.00),(2,'Preferencia B',3200.00),(3,'Preferencia C',2800.00),(4,'Preferencia A',3500.00),(5,'Preferencia B',4000.00),(6,'Preferencia C',2700.00),(7,'Preferencia A',2900.00),(8,'Preferencia B',3100.00),(9,'Preferencia C',3300.00),(10,'Preferencia A',3600.00),(11,'Preferencia B',3000.00),(12,'Preferencia C',2900.00),(13,'Preferencia A',3100.00),(14,'Preferencia B',3200.00),(15,'Preferencia C',3300.00),(16,'Preferencia A',3400.00),(17,'Preferencia B',3500.00),(18,'Preferencia C',3600.00),(19,'Preferencia A',3700.00),(20,'Preferencia B',3800.00),(21,'Preferencia C',3900.00),(22,'Preferencia A',4000.00),(23,'Preferencia B',4100.00),(24,'Preferencia C',4200.00),(25,'Preferencia A',4300.00),(26,'Preferencia B',4400.00),(27,'Preferencia C',4500.00),(28,'Preferencia A',4600.00),(29,'Preferencia B',4700.00),(30,'Preferencia C',4800.00),(31,'Preferencia A',4900.00),(32,'Preferencia B',5000.00),(33,'Preferencia C',5100.00),(34,'Preferencia A',5200.00),(35,'Preferencia B',5300.00),(36,'Preferencia C',5400.00),(37,'Preferencia A',5500.00),(38,'Preferencia B',5600.00),(39,'Preferencia C',5700.00),(40,'Preferencia A',5800.00),(41,'Preferencia B',5900.00),(42,'Preferencia C',6000.00),(43,'Preferencia A',6100.00),(44,'Preferencia B',6200.00),(45,'Preferencia C',6300.00),(46,'Preferencia A',6400.00),(47,'Preferencia B',6500.00),(48,'Preferencia C',6600.00),(49,'Preferencia A',6700.00),(50,'Preferencia B',6800.00);
/*!40000 ALTER TABLE `clientes_perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formas_pagamento`
--

DROP TABLE IF EXISTS `formas_pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formas_pagamento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formas_pagamento`
--

LOCK TABLES `formas_pagamento` WRITE;
/*!40000 ALTER TABLE `formas_pagamento` DISABLE KEYS */;
INSERT INTO `formas_pagamento` VALUES (1,'Dinheiro'),(2,'Cartao'),(3,'Pix');
/*!40000 ALTER TABLE `formas_pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedores`
--

DROP TABLE IF EXISTS `fornecedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) NOT NULL,
  `contato` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedores`
--

LOCK TABLES `fornecedores` WRITE;
/*!40000 ALTER TABLE `fornecedores` DISABLE KEYS */;
INSERT INTO `fornecedores` VALUES (1,'Fornecedor A','11988889999'),(2,'Fornecedor B','11977778888'),(3,'Fornecedor C','11966667777'),(4,'Fornecedor D','11955556666');
/*!40000 ALTER TABLE `fornecedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_loja` int NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_loja` (`id_loja`),
  CONSTRAINT `funcionarios_ibfk_1` FOREIGN KEY (`id_loja`) REFERENCES `lojas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` VALUES (1,1,'Funcionario 1A','Cargo A',2000.00),(2,1,'Funcionario 1B','Cargo B',2100.00),(3,1,'Funcionario 1C','Cargo C',2200.00),(4,1,'Funcionario 1D','Cargo D',2300.00),(5,2,'Funcionario 2A','Cargo A',2000.00),(6,2,'Funcionario 2B','Cargo B',2100.00),(7,2,'Funcionario 2C','Cargo C',2200.00),(8,2,'Funcionario 2D','Cargo D',2300.00),(9,3,'Funcionario 3A','Cargo A',2000.00),(10,3,'Funcionario 3B','Cargo B',2100.00),(11,3,'Funcionario 3C','Cargo C',2200.00),(12,3,'Funcionario 3D','Cargo D',2300.00),(13,4,'Funcionario 4A','Cargo A',2000.00),(14,4,'Funcionario 4B','Cargo B',2100.00),(15,4,'Funcionario 4C','Cargo C',2200.00),(16,4,'Funcionario 4D','Cargo D',2300.00),(17,5,'Funcionario 5A','Cargo A',2000.00),(18,5,'Funcionario 5B','Cargo B',2100.00),(19,5,'Funcionario 5C','Cargo C',2200.00),(20,5,'Funcionario 5D','Cargo D',2300.00),(21,6,'Funcionario 6A','Cargo A',2000.00),(22,6,'Funcionario 6B','Cargo B',2100.00),(23,6,'Funcionario 6C','Cargo C',2200.00),(24,6,'Funcionario 6D','Cargo D',2300.00),(25,7,'Funcionario 7A','Cargo A',2000.00),(26,7,'Funcionario 7B','Cargo B',2100.00),(27,7,'Funcionario 7C','Cargo C',2200.00),(28,7,'Funcionario 7D','Cargo D',2300.00),(29,8,'Funcionario 8A','Cargo A',2000.00),(30,8,'Funcionario 8B','Cargo B',2100.00),(31,8,'Funcionario 8C','Cargo C',2200.00),(32,8,'Funcionario 8D','Cargo D',2300.00),(33,9,'Funcionario 9A','Cargo A',2000.00),(34,9,'Funcionario 9B','Cargo B',2100.00),(35,9,'Funcionario 9C','Cargo C',2200.00),(36,9,'Funcionario 9D','Cargo D',2300.00),(37,10,'Funcionario 10A','Cargo A',2000.00),(38,10,'Funcionario 10B','Cargo B',2100.00),(39,10,'Funcionario 10C','Cargo C',2200.00),(40,10,'Funcionario 10D','Cargo D',2300.00),(41,11,'Funcionario 11A','Cargo A',2000.00),(42,11,'Funcionario 11B','Cargo B',2100.00),(43,11,'Funcionario 11C','Cargo C',2200.00),(44,11,'Funcionario 11D','Cargo D',2300.00),(45,12,'Funcionario 12A','Cargo A',2000.00),(46,12,'Funcionario 12B','Cargo B',2100.00),(47,12,'Funcionario 12C','Cargo C',2200.00),(48,12,'Funcionario 12D','Cargo D',2300.00),(49,13,'Funcionario 13A','Cargo A',2000.00),(50,13,'Funcionario 13B','Cargo B',2100.00),(51,13,'Funcionario 13C','Cargo C',2200.00),(52,13,'Funcionario 13D','Cargo D',2300.00),(53,14,'Funcionario 14A','Cargo A',2000.00),(54,14,'Funcionario 14B','Cargo B',2100.00),(55,14,'Funcionario 14C','Cargo C',2200.00),(56,14,'Funcionario 14D','Cargo D',2300.00),(57,15,'Funcionario 15A','Cargo A',2000.00),(58,15,'Funcionario 15B','Cargo B',2100.00),(59,15,'Funcionario 15C','Cargo C',2200.00),(60,15,'Funcionario 15D','Cargo D',2300.00),(61,16,'Funcionario 16A','Cargo A',2000.00),(62,16,'Funcionario 16B','Cargo B',2100.00),(63,16,'Funcionario 16C','Cargo C',2200.00),(64,16,'Funcionario 16D','Cargo D',2300.00),(65,17,'Funcionario 17A','Cargo A',2000.00),(66,17,'Funcionario 17B','Cargo B',2100.00),(67,17,'Funcionario 17C','Cargo C',2200.00),(68,17,'Funcionario 17D','Cargo D',2300.00),(69,18,'Funcionario 18A','Cargo A',2000.00),(70,18,'Funcionario 18B','Cargo B',2100.00),(71,18,'Funcionario 18C','Cargo C',2200.00),(72,18,'Funcionario 18D','Cargo D',2300.00),(73,19,'Funcionario 19A','Cargo A',2000.00),(74,19,'Funcionario 19B','Cargo B',2100.00),(75,19,'Funcionario 19C','Cargo C',2200.00),(76,19,'Funcionario 19D','Cargo D',2300.00),(77,20,'Funcionario 20A','Cargo A',2000.00),(78,20,'Funcionario 20B','Cargo B',2100.00),(79,20,'Funcionario 20C','Cargo C',2200.00),(80,20,'Funcionario 20D','Cargo D',2300.00);
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itens_venda`
--

DROP TABLE IF EXISTS `itens_venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itens_venda` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_venda` int NOT NULL,
  `id_produto` int NOT NULL,
  `quantidade` int NOT NULL,
  `preco_unitario` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_venda` (`id_venda`),
  KEY `id_produto` (`id_produto`),
  CONSTRAINT `itens_venda_ibfk_1` FOREIGN KEY (`id_venda`) REFERENCES `vendas` (`id`) ON DELETE CASCADE,
  CONSTRAINT `itens_venda_ibfk_2` FOREIGN KEY (`id_produto`) REFERENCES `produtos` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itens_venda`
--

LOCK TABLES `itens_venda` WRITE;
/*!40000 ALTER TABLE `itens_venda` DISABLE KEYS */;
INSERT INTO `itens_venda` VALUES (1,1,2,1,150.00),(2,2,3,1,200.00),(3,3,3,1,200.00),(4,4,10,1,300.00),(5,5,10,1,300.00),(6,6,10,1,300.00),(7,7,13,2,220.00),(8,8,10,1,300.00),(9,9,13,2,220.00),(10,10,10,2,300.00),(11,11,3,1,200.00),(12,12,3,1,200.00),(13,13,3,1,200.00),(14,14,3,1,200.00),(15,15,10,1,300.00),(16,16,13,1,220.00),(17,17,13,1,220.00),(18,18,13,2,220.00),(19,19,2,2,150.00),(20,20,10,1,300.00),(21,21,10,1,300.00),(22,22,10,1,300.00),(23,23,13,2,220.00),(24,24,10,1,300.00),(25,25,10,2,300.00),(26,26,13,2,220.00),(27,27,10,2,300.00),(28,28,10,2,300.00),(29,29,10,2,300.00),(30,30,10,2,300.00),(31,31,10,2,300.00),(32,32,13,2,220.00),(33,33,10,2,300.00),(34,34,10,2,300.00),(35,35,10,2,300.00),(36,36,10,2,300.00),(37,37,13,3,220.00),(38,38,10,2,300.00),(39,39,13,3,220.00),(40,40,10,2,300.00),(41,41,10,3,300.00),(42,42,10,3,300.00),(43,43,13,3,220.00),(44,44,10,3,300.00),(45,45,10,3,300.00),(46,46,13,3,220.00),(47,47,10,3,300.00),(48,48,10,3,300.00),(49,49,13,4,220.00),(50,50,10,4,300.00),(51,51,13,4,220.00),(52,52,10,4,300.00),(53,53,13,4,220.00),(54,54,10,4,300.00),(55,55,10,4,300.00),(56,56,13,4,220.00),(57,57,13,4,220.00),(58,58,10,4,300.00),(59,59,13,5,220.00),(60,60,10,5,300.00),(61,61,13,5,220.00),(62,62,10,5,300.00),(63,63,13,5,220.00),(64,64,10,5,300.00),(65,65,10,5,300.00),(66,66,13,5,220.00),(67,67,13,5,220.00),(68,68,10,5,300.00),(69,69,13,5,220.00),(70,70,10,6,300.00),(71,71,13,6,220.00),(72,72,10,6,300.00),(73,73,13,6,220.00),(74,74,10,6,300.00),(75,75,10,6,300.00),(76,76,13,6,220.00),(77,77,13,6,220.00),(78,78,10,6,300.00),(79,79,13,7,220.00),(80,80,10,7,300.00),(81,81,13,7,220.00),(82,82,10,7,300.00),(83,83,13,7,220.00),(84,84,10,7,300.00),(85,85,10,7,300.00),(86,86,13,7,220.00),(87,87,13,8,220.00),(88,88,10,8,300.00),(89,89,13,8,220.00),(90,90,10,8,300.00),(91,91,7,9,20.00),(92,92,10,1,300.00),(93,93,10,1,300.00),(94,94,2,1,150.00),(95,95,5,3,120.00),(96,96,6,3,90.00),(97,97,10,1,300.00),(98,98,8,7,30.00),(99,99,7,12,20.00),(100,100,15,18,15.00);
/*!40000 ALTER TABLE `itens_venda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lojas`
--

DROP TABLE IF EXISTS `lojas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lojas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `data_criacao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lojas`
--

LOCK TABLES `lojas` WRITE;
/*!40000 ALTER TABLE `lojas` DISABLE KEYS */;
INSERT INTO `lojas` VALUES (1,'Loja 1','2025-11-26 11:46:42'),(2,'Loja 2','2025-11-26 11:46:42'),(3,'Loja 3','2025-11-26 11:46:42'),(4,'Loja 4','2025-11-26 11:46:42'),(5,'Loja 5','2025-11-26 11:46:42'),(6,'Loja 6','2025-11-26 11:46:42'),(7,'Loja 7','2025-11-26 11:46:42'),(8,'Loja 8','2025-11-26 11:46:42'),(9,'Loja 9','2025-11-26 11:46:42'),(10,'Loja 10','2025-11-26 11:46:42'),(11,'Loja 11','2025-11-26 11:46:42'),(12,'Loja 12','2025-11-26 11:46:42'),(13,'Loja 13','2025-11-26 11:46:42'),(14,'Loja 14','2025-11-26 11:46:42'),(15,'Loja 15','2025-11-26 11:46:42'),(16,'Loja 16','2025-11-26 11:46:42'),(17,'Loja 17','2025-11-26 11:46:42'),(18,'Loja 18','2025-11-26 11:46:42'),(19,'Loja 19','2025-11-26 11:46:42'),(20,'Loja 20','2025-11-26 11:46:42');
/*!40000 ALTER TABLE `lojas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lojas_detalhes`
--

DROP TABLE IF EXISTS `lojas_detalhes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lojas_detalhes` (
  `id_loja` int NOT NULL,
  `telefone` varchar(30) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_loja`),
  CONSTRAINT `lojas_detalhes_ibfk_1` FOREIGN KEY (`id_loja`) REFERENCES `lojas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lojas_detalhes`
--

LOCK TABLES `lojas_detalhes` WRITE;
/*!40000 ALTER TABLE `lojas_detalhes` DISABLE KEYS */;
INSERT INTO `lojas_detalhes` VALUES (1,'11900000001','Rua 1'),(2,'11900000002','Rua 2'),(3,'11900000003','Rua 3'),(4,'11900000004','Rua 4'),(5,'11900000005','Rua 5'),(6,'11900000006','Rua 6'),(7,'11900000007','Rua 7'),(8,'11900000008','Rua 8'),(9,'11900000009','Rua 9'),(10,'11900000010','Rua 10'),(11,'11900000011','Rua 11'),(12,'11900000012','Rua 12'),(13,'11900000013','Rua 13'),(14,'11900000014','Rua 14'),(15,'11900000015','Rua 15'),(16,'11900000016','Rua 16'),(17,'11900000017','Rua 17'),(18,'11900000018','Rua 18'),(19,'11900000019','Rua 19'),(20,'11900000020','Rua 20');
/*!40000 ALTER TABLE `lojas_detalhes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagamentos`
--

DROP TABLE IF EXISTS `pagamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagamentos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_venda` int NOT NULL,
  `id_forma_pagamento` int NOT NULL,
  `valor` decimal(12,2) NOT NULL,
  `data_pagamento` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `id_venda` (`id_venda`),
  KEY `id_forma_pagamento` (`id_forma_pagamento`),
  CONSTRAINT `pagamentos_ibfk_1` FOREIGN KEY (`id_venda`) REFERENCES `vendas` (`id`) ON DELETE CASCADE,
  CONSTRAINT `pagamentos_ibfk_2` FOREIGN KEY (`id_forma_pagamento`) REFERENCES `formas_pagamento` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamentos`
--

LOCK TABLES `pagamentos` WRITE;
/*!40000 ALTER TABLE `pagamentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_categoria` int DEFAULT NULL,
  `nome` varchar(150) DEFAULT NULL,
  `preco` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_categoria` (`id_categoria`),
  CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,1,'Mouse USB',100.00),(2,1,'Teclado',150.00),(3,1,'Pente RAM 8GB',200.00),(4,2,'Camisa Polo',80.00),(5,2,'Calca Jeans',120.00),(6,2,'Sueter',90.00),(7,3,'Frango',20.00),(8,3,'Carne de Boi',30.00),(9,3,'Queijo Coalho',25.00),(10,1,'Monitor',300.00),(11,2,'Jaqueta',140.00),(12,3,'Bacon',18.00),(13,1,'Mouse Bluetooth',220.00),(14,2,'Vestido',95.00),(15,3,'Mussarela',15.00);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos_fornecedores`
--

DROP TABLE IF EXISTS `produtos_fornecedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos_fornecedores` (
  `id_produto` int NOT NULL,
  `id_fornecedor` int NOT NULL,
  `codigo_fornecimento` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id_produto`,`id_fornecedor`),
  KEY `id_fornecedor` (`id_fornecedor`),
  CONSTRAINT `produtos_fornecedores_ibfk_1` FOREIGN KEY (`id_produto`) REFERENCES `produtos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `produtos_fornecedores_ibfk_2` FOREIGN KEY (`id_fornecedor`) REFERENCES `fornecedores` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos_fornecedores`
--

LOCK TABLES `produtos_fornecedores` WRITE;
/*!40000 ALTER TABLE `produtos_fornecedores` DISABLE KEYS */;
/*!40000 ALTER TABLE `produtos_fornecedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promocoes`
--

DROP TABLE IF EXISTS `promocoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promocoes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `codigo` varchar(50) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `desconto_percentual` decimal(5,2) DEFAULT NULL,
  `valido_de` date DEFAULT NULL,
  `valido_ate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `codigo` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promocoes`
--

LOCK TABLES `promocoes` WRITE;
/*!40000 ALTER TABLE `promocoes` DISABLE KEYS */;
/*!40000 ALTER TABLE `promocoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendas`
--

DROP TABLE IF EXISTS `vendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_loja` int NOT NULL,
  `id_cliente` int DEFAULT NULL,
  `id_forma_pagamento` int DEFAULT NULL,
  `data_venda` date NOT NULL,
  `valor_total` decimal(12,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_loja` (`id_loja`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_forma_pagamento` (`id_forma_pagamento`),
  CONSTRAINT `vendas_ibfk_1` FOREIGN KEY (`id_loja`) REFERENCES `lojas` (`id`) ON DELETE CASCADE,
  CONSTRAINT `vendas_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`) ON DELETE SET NULL,
  CONSTRAINT `vendas_ibfk_3` FOREIGN KEY (`id_forma_pagamento`) REFERENCES `formas_pagamento` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendas`
--

LOCK TABLES `vendas` WRITE;
/*!40000 ALTER TABLE `vendas` DISABLE KEYS */;
INSERT INTO `vendas` VALUES (1,1,1,1,'2025-01-05',150.00),(2,2,2,2,'2025-01-06',200.00),(3,3,3,3,'2025-01-07',250.00),(4,4,4,1,'2025-01-08',300.00),(5,5,5,2,'2025-01-09',350.00),(6,6,6,3,'2025-01-10',400.00),(7,7,7,1,'2025-01-11',450.00),(8,8,8,2,'2025-01-12',500.00),(9,9,9,3,'2025-01-13',550.00),(10,10,10,1,'2025-01-14',600.00),(11,11,11,2,'2025-02-01',220.00),(12,12,12,3,'2025-02-02',240.00),(13,13,13,1,'2025-02-03',260.00),(14,14,14,2,'2025-02-04',280.00),(15,15,15,3,'2025-02-05',300.00),(16,16,16,1,'2025-02-06',320.00),(17,17,17,2,'2025-02-07',340.00),(18,18,18,3,'2025-02-08',360.00),(19,19,19,1,'2025-02-09',380.00),(20,20,20,2,'2025-02-10',400.00),(21,1,21,3,'2025-03-01',420.00),(22,2,22,1,'2025-03-02',440.00),(23,3,23,2,'2025-03-03',460.00),(24,4,24,3,'2025-03-04',480.00),(25,5,25,1,'2025-03-05',500.00),(26,6,26,2,'2025-03-06',520.00),(27,7,27,3,'2025-03-07',540.00),(28,8,28,1,'2025-03-08',560.00),(29,9,29,2,'2025-03-09',580.00),(30,10,30,3,'2025-03-10',600.00),(31,11,31,1,'2025-04-01',610.00),(32,12,32,2,'2025-04-02',620.00),(33,13,33,3,'2025-04-03',630.00),(34,14,34,1,'2025-04-04',640.00),(35,15,35,2,'2025-04-05',650.00),(36,16,36,3,'2025-04-06',660.00),(37,17,37,1,'2025-04-07',670.00),(38,18,38,2,'2025-04-08',680.00),(39,19,39,3,'2025-04-09',690.00),(40,20,40,1,'2025-04-10',700.00),(41,1,41,2,'2025-05-01',710.00),(42,2,42,3,'2025-05-02',720.00),(43,3,43,1,'2025-05-03',730.00),(44,4,44,2,'2025-05-04',740.00),(45,5,45,3,'2025-05-05',750.00),(46,6,46,1,'2025-05-06',760.00),(47,7,47,2,'2025-05-07',770.00),(48,8,48,3,'2025-05-08',780.00),(49,9,49,1,'2025-05-09',790.00),(50,10,50,2,'2025-05-10',800.00),(51,11,1,3,'2025-06-01',810.00),(52,12,2,1,'2025-06-02',820.00),(53,13,3,2,'2025-06-03',830.00),(54,14,4,3,'2025-06-04',840.00),(55,15,5,1,'2025-06-05',850.00),(56,16,6,2,'2025-06-06',860.00),(57,17,7,3,'2025-06-07',870.00),(58,18,8,1,'2025-06-08',880.00),(59,19,9,2,'2025-06-09',890.00),(60,20,10,3,'2025-06-10',900.00),(61,1,11,1,'2025-07-01',910.00),(62,2,12,2,'2025-07-02',920.00),(63,3,13,3,'2025-07-03',930.00),(64,4,14,1,'2025-07-04',940.00),(65,5,15,2,'2025-07-05',950.00),(66,6,16,3,'2025-07-06',960.00),(67,7,17,1,'2025-07-07',970.00),(68,8,18,2,'2025-07-08',980.00),(69,9,19,3,'2025-07-09',990.00),(70,10,20,1,'2025-07-10',1000.00),(71,11,21,2,'2025-08-01',1010.00),(72,12,22,3,'2025-08-02',1020.00),(73,13,23,1,'2025-08-03',1030.00),(74,14,24,2,'2025-08-04',1040.00),(75,15,25,3,'2025-08-05',1050.00),(76,16,26,1,'2025-08-06',1060.00),(77,17,27,2,'2025-08-07',1070.00),(78,18,28,3,'2025-08-08',1080.00),(79,19,29,1,'2025-08-09',1090.00),(80,20,30,2,'2025-08-10',1100.00),(81,1,31,3,'2025-09-01',1110.00),(82,2,32,1,'2025-09-02',1120.00),(83,3,33,2,'2025-09-03',1130.00),(84,4,34,3,'2025-09-04',1140.00),(85,5,35,1,'2025-09-05',1150.00),(86,6,36,2,'2025-09-06',1160.00),(87,7,37,3,'2025-09-07',1170.00),(88,8,38,1,'2025-09-08',1180.00),(89,9,39,2,'2025-09-09',1190.00),(90,10,40,3,'2025-09-10',1200.00),(91,11,41,1,'2024-10-05',180.00),(92,12,42,2,'2024-10-17',265.00),(93,13,43,3,'2024-11-06',410.00),(94,14,44,1,'2024-11-15',150.00),(95,15,45,2,'2024-11-19',320.00),(96,16,46,3,'2024-12-20',280.00),(97,17,47,1,'2024-12-21',495.00),(98,18,48,2,'2024-12-23',230.00),(99,19,49,3,'2024-12-23',360.00),(100,20,50,1,'2024-12-24',275.00);
/*!40000 ALTER TABLE `vendas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-26 15:02:56
