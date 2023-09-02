-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 31-08-2023 a las 14:59:11
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sanbra`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dotaciones`
--

DROP TABLE IF EXISTS `dotaciones`;
CREATE TABLE IF NOT EXISTS `dotaciones` (
  `Dotacion` varchar(10) NOT NULL,
  `Talla` int NOT NULL,
  `Color` varchar(10) NOT NULL,
  `Sexo` varchar(10) NOT NULL,
  `Especificaciones` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE IF NOT EXISTS `productos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Codigo` int NOT NULL,
  `Categoria` varchar(100) NOT NULL,
  `Nombre_Producto` varchar(100) NOT NULL,
  `Valor UNI` int NOT NULL,
  `Cantidad` int NOT NULL,
  `Imagen` varchar(2) NOT NULL,
  `Stock_Maximo` int NOT NULL,
  `Stock_Minimo` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
