CREATE DATABASE  IF NOT EXISTS `videocentro` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `videocentro`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: videocentro
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `clientes` (
  `numCredencial` varchar(10) NOT NULL,
  `nombre` varchar(35) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`numCredencial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES ('165732','Eduardo Ramírez','Pitágoras 2464','6671336024');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventariovideojuegos`
--

DROP TABLE IF EXISTS `inventariovideojuegos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `inventariovideojuegos` (
  `numCatalogo` varchar(10) NOT NULL,
  `existencia` int(10) NOT NULL,
  `disponibilidad` int(10) NOT NULL,
  PRIMARY KEY (`numCatalogo`),
  KEY `fk_inventariovideojuegos_videojuegos_idx` (`numCatalogo`),
  CONSTRAINT `fk_inventariovideojuegos_videojuegos` FOREIGN KEY (`numCatalogo`) REFERENCES `videojuegos` (`numcatalogo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventariovideojuegos`
--

LOCK TABLES `inventariovideojuegos` WRITE;
/*!40000 ALTER TABLE `inventariovideojuegos` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventariovideojuegos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rentasvideojuegos`
--

DROP TABLE IF EXISTS `rentasvideojuegos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `rentasvideojuegos` (
  `numCredencial` varchar(10) NOT NULL,
  `numCatalogo` varchar(10) NOT NULL,
  `fechaRenta` date NOT NULL,
  `tiempoRenta` int(10) NOT NULL,
  PRIMARY KEY (`numCredencial`,`numCatalogo`),
  KEY `fk_rentasVideojuegos_videojuegos1_idx` (`numCatalogo`),
  CONSTRAINT `fk_rentasVideojuegos_clientes1` FOREIGN KEY (`numCredencial`) REFERENCES `clientes` (`numcredencial`),
  CONSTRAINT `fk_rentasVideojuegos_videojuegos1` FOREIGN KEY (`numCatalogo`) REFERENCES `videojuegos` (`numcatalogo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rentasvideojuegos`
--

LOCK TABLES `rentasvideojuegos` WRITE;
/*!40000 ALTER TABLE `rentasvideojuegos` DISABLE KEYS */;
/*!40000 ALTER TABLE `rentasvideojuegos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videojuegos`
--

DROP TABLE IF EXISTS `videojuegos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `videojuegos` (
  `numCatalogo` varchar(10) NOT NULL,
  `titulo` varchar(35) NOT NULL,
  `genero` varchar(20) NOT NULL,
  `clasificacion` varchar(20) NOT NULL,
  `consola` varchar(20) NOT NULL,
  `fabricante` varchar(35) NOT NULL,
  `version` int(10) NOT NULL,
  PRIMARY KEY (`numCatalogo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videojuegos`
--

LOCK TABLES `videojuegos` WRITE;
/*!40000 ALTER TABLE `videojuegos` DISABLE KEYS */;
/*!40000 ALTER TABLE `videojuegos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-11 18:42:38
