-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-09-2023 a las 03:41:45
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
-- Base de datos: `san`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anticipos`
--

CREATE TABLE `anticipos` (
  `fk_pk_n_factura` int(11) NOT NULL,
  `fk_pk_cod_producto` int(11) NOT NULL,
  `cantidad_prod` int(11) NOT NULL,
  `valor_prod_cant` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `anticipos`
--

INSERT INTO `anticipos` (`fk_pk_n_factura`, `fk_pk_cod_producto`, `cantidad_prod`, `valor_prod_cant`) VALUES
(1, 1, 5, 5200),
(1, 9, 3, 20000),
(1, 25, 3, 12000),
(2, 6, 2, 28000),
(2, 11, 3, 47000),
(2, 14, 2, 9000),
(2, 32, 1, 6000),
(3, 5, 2, 7500),
(3, 8, 2, 4500),
(3, 23, 1, 42000),
(4, 1, 5, 5200),
(4, 25, 3, 12000),
(4, 35, 1, 200000),
(5, 6, 2, 28000),
(5, 14, 2, 9000),
(5, 24, 1, 53000),
(5, 29, 3, 17000),
(6, 5, 2, 7500),
(6, 9, 2, 20000),
(6, 19, 1, 17000),
(7, 8, 2, 4500),
(7, 11, 2, 47000),
(7, 25, 2, 12000),
(8, 1, 5, 5200),
(8, 6, 2, 28000),
(8, 32, 1, 6000),
(1, 1, 5, 5200),
(1, 9, 3, 20000),
(1, 25, 3, 12000),
(2, 6, 2, 28000),
(2, 11, 3, 47000),
(2, 14, 2, 9000),
(2, 32, 1, 6000),
(3, 5, 2, 7500),
(3, 8, 2, 4500),
(3, 23, 1, 42000),
(4, 1, 5, 5200),
(4, 25, 3, 12000),
(4, 35, 1, 200000),
(5, 6, 2, 28000),
(5, 14, 2, 9000),
(5, 24, 1, 53000),
(5, 29, 3, 17000),
(6, 5, 2, 7500),
(6, 9, 2, 20000),
(6, 19, 1, 17000),
(7, 8, 2, 4500),
(7, 11, 2, 47000),
(7, 25, 2, 12000),
(8, 1, 5, 5200),
(8, 6, 2, 28000),
(8, 32, 1, 6000),
(9, 9, 1, 20000),
(9, 14, 1, 9000),
(9, 29, 1, 17000),
(10, 5, 1, 7500),
(10, 24, 1, 53000),
(10, 31, 1, 45000),
(11, 6, 1, 28000),
(11, 19, 1, 17000),
(11, 25, 1, 12000),
(11, 35, 1, 200000),
(12, 8, 1, 4500),
(12, 14, 1, 9000),
(12, 32, 1, 6000),
(13, 1, 5, 5200),
(13, 9, 1, 20000),
(13, 29, 1, 17000),
(14, 5, 1, 7500),
(14, 23, 1, 42000),
(14, 35, 1, 200000),
(15, 6, 1, 28000),
(15, 11, 1, 47000),
(15, 19, 1, 17000),
(15, 25, 1, 12000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dotaciones`
--

CREATE TABLE `dotaciones` (
  `Codigo` int(11) NOT NULL,
  `Dotacion` varchar(10) NOT NULL,
  `Talla` varchar(10) NOT NULL,
  `Color` varchar(10) NOT NULL,
  `Sexo` varchar(10) NOT NULL,
  `Especificaciones` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dotaciones`
--

INSERT INTO `dotaciones` (`Codigo`, `Dotacion`, `Talla`, `Color`, `Sexo`, `Especificaciones`) VALUES
(1, 'Conjunto', 'M', 'Azul', 'Hombre', 'Bordado en el pecho'),
(2, 'Camisa', 'L', 'Blanco', 'Mujer', 'Sublimación en la espalda'),
(3, 'Overol', 'XL', 'Verde', 'Hombre', 'Con cierre frontal'),
(4, 'Camiseta', 'S', 'Rojo', 'Mujer', 'Logo en el frente'),
(5, 'Conjunto', 'XXL', 'Negro', 'Hombre', 'Bordado en el brazo izquierdo'),
(6, 'Camisa', 'M', 'Gris', 'Mujer', 'Bordado en el cuello'),
(7, 'Overol', 'L', 'Azul', 'Mujer', 'Con bolsillos laterales'),
(8, 'Camiseta', 'XL', 'Blanco', 'Hombre', 'Sublimación en el frente'),
(9, 'Conjunto', 'S', 'Verde', 'Mujer', 'Bordado en la pierna izquierda'),
(10, 'Camisa', 'L', 'Azul', 'Hombre', 'Sublimación en la espalda'),
(11, 'Overol', 'M', 'Negro', 'Hombre', 'Con reflectores'),
(12, 'Camiseta', 'S', 'Rojo', 'Mujer', 'Sublimación en la manga'),
(13, 'Conjunto', 'XL', 'Gris', 'Hombre', 'Bordado en el bolsillo'),
(14, 'Camisa', 'M', 'Blanco', 'Mujer', 'Bordado en el cuello'),
(15, 'Overol', 'L', 'Azul', 'Mujer', 'Con cierre en la cintura');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `N_Factura` int(11) NOT NULL,
  `Fecha_Factura` date NOT NULL,
  `Total_Factura` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`N_Factura`, `Fecha_Factura`, `Total_Factura`) VALUES
(1, '2023-01-01', 37200),
(2, '2023-02-01', 90000),
(3, '2023-03-01', 54000),
(4, '2023-04-01', 217200),
(5, '2023-04-01', 107000),
(6, '2023-04-01', 44500),
(7, '2023-04-01', 63500),
(8, '2023-05-01', 39200),
(9, '2023-05-10', 46000),
(10, '2023-06-03', 105500),
(11, '2023-06-05', 247000),
(12, '2023-07-26', 19500),
(13, '2023-07-27', 42200),
(14, '2023-08-20', 254500),
(15, '2023-08-29', 104000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `Codigo` int(11) NOT NULL,
  `Categoria` varchar(100) NOT NULL,
  `Nombre_Producto` varchar(100) NOT NULL,
  `Valor_UNI` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Imagen` varchar(2) NOT NULL,
  `Stock_Maximo` int(11) NOT NULL,
  `Stock_Minimo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`Codigo`, `Categoria`, `Nombre_Producto`, `Valor_UNI`, `Cantidad`, `Imagen`, `Stock_Maximo`, `Stock_Minimo`) VALUES
(1, 'Alcohol', 'ANTISÉPTICO 250ML', 5200, 50, '', 100, 10),
(5, 'GEL ANTIBBACTERIAL', 'ANTIBACTERIAL 220 ML', 7500, 30, '', 150, 20),
(6, 'KIT', 'KIT ALCOHOL 750 ML + GEL ANTIBACTERIAL 500ML', 28000, 40, '', 50, 20),
(8, 'JABÓN', 'JABÓN ANTIBACTERIAL 250 ML', 4500, 10, '', 50, 10),
(9, 'HIPOCLORITO', 'HIPOCLORITO X 1000 ML', 20000, 50, '', 150, 20),
(11, 'GUANTES', 'CAJA X 100 UNIDADES GUANTES DE NITRILO', 47000, 60, '', 100, 20),
(14, 'RESPIRADOR', 'N95 CON FILTRO', 9000, 30, '', 100, 10),
(19, 'TABABOCAS', 'TAPABOCAS NORMAL TELA ANTOFLUIDO & ANTIBACTERIAL', 17000, 70, '', 150, 20),
(20, 'TAPABOCAS', 'TAPABOCAS+ VISOR TELA ANTOFLUIDO & ANTIBACTERIAL', 22000, 20, '', 100, 10),
(22, 'TRAJES (ANTIFLUIDOS Y BIOSEFURIDAD)', 'TRAJES ANTIFLUIDOS PLASTICO', 6500, 60, '', 100, 10),
(23, 'TRAJES \r\n(ANTIFLUIDOS Y \r\nBIOSEFURIDAD)', 'TRAJE DE BIOSEGURIDAD DESECHABLE', 42000, 50, '', 50, 10),
(24, 'TRAJES (ANTIFLUIDOS Y BIOSEFURIDAD)', 'TRAJE DE BIOSEGURIDAD LAVABLE', 53000, 50, '', 100, 20),
(25, 'GAFAS DE PROTECCION PERSONAL', 'GAFAS DE PROTECCION PERSONAL', 12000, 20, '', 50, 10),
(28, 'GAFAS DE PROTECCION PERSONAL', 'GAFAS DE PILICARBONTO', 12000, 50, '', 100, 10),
(29, 'CARETAS', 'DE PROTECCION FACIAL VISERA', 17000, 10, '', 50, 10),
(31, 'CASCO', 'CASCO CERTIFICADO ARMADURA TIPO 1 + 3 RESPUESTOS DE VISOR EN PET CALIBRE 18 INDIVIDUAL', 45000, 30, '', 100, 20),
(32, 'SEÑALIZACIÓN', 'SEÑALIZACIÓN 30 CM X 15 CM', 6000, 40, '', 50, 10),
(35, 'PUNTO ECOLOGICO', 'PUNTO ECOLOGICO', 200000, 20, '', 30, 10);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `anticipos`
--
ALTER TABLE `anticipos`
  ADD KEY `fk_pk_n_factura` (`fk_pk_n_factura`),
  ADD KEY `fk_pk_cod_producto` (`fk_pk_cod_producto`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`N_Factura`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`Codigo`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `anticipos`
--
ALTER TABLE `anticipos`
  ADD CONSTRAINT `anticipos_ibfk_1` FOREIGN KEY (`fk_pk_n_factura`) REFERENCES `facturas` (`N_Factura`),
  ADD CONSTRAINT `anticipos_ibfk_2` FOREIGN KEY (`fk_pk_cod_producto`) REFERENCES `productos` (`Codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
