-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-08-2023 a las 23:11:31
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

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
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(100) NOT NULL,
  `Codigo` int(100) NOT NULL,
  `Categoria` varchar(100) NOT NULL,
  `Nombre_Producto` varchar(100) NOT NULL,
  `Valor UNI` int(50) NOT NULL,
  `Cantidad` int(50) NOT NULL,
  `Imagen` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `Codigo`, `Categoria`, `Nombre_Producto`, `Valor UNI`, `Cantidad`, `Imagen`) VALUES
(1, 14, 'RESPIRADOR', 'N95 CON FILTRO', 9, 20, ''),
(2, 13455, 'TAPABOCAS', 'APABOCAS NORMAL\r\nTELA ANTOFLUIDO & \r\nANTIBACTERIAL', 17, 50, ''),
(3, 12345, 'dcvbnm', 'dfghjk', 12, 345, ''),
(4, 12345, 'uno', 'dos', 13, 345, ''),
(5, 12345, 'unodfgh', 'dosfghj', 13, 34556, '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
