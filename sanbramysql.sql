-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-09-2023 a las 00:57:50
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
-- Estructura de tabla para la tabla `anticipos`
--

CREATE TABLE `anticipos` (
  `pk_N_factura` int(11) NOT NULL,
  `fk_pk_Cod_Producto` int(11) NOT NULL,
  `Cantidad_Prod` int(11) NOT NULL,
  `Valor_Prod_Cant` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `anticipos`
--

INSERT INTO `anticipos` (`pk_N_factura`, `fk_pk_Cod_Producto`, `Cantidad_Prod`, `Valor_Prod_Cant`) VALUES
(1, 1, 3, '15600'),
(1, 8, 5, '22500'),
(1, 22, 2, '13000'),
(2, 6, 6, '168000'),
(2, 19, 1, '17000'),
(3, 29, 4, '68000'),
(3, 35, 2, '400000'),
(4, 11, 7, '329000'),
(5, 6, 2, '56000'),
(5, 24, 3, '159000'),
(6, 5, 5, '37000'),
(6, 25, 9, '108000'),
(6, 28, 6, '72000'),
(7, 19, 1, '17000'),
(8, 1, 9, '46800'),
(8, 22, 4, '260000'),
(9, 5, 4, '30000'),
(9, 9, 6, '12000'),
(10, 29, 7, '119000'),
(10, 35, 3, '600000'),
(11, 23, 5, '210000'),
(11, 25, 9, '108000'),
(12, 28, 2, '24000'),
(13, 8, 4, '18000'),
(13, 24, 3, '159000'),
(14, 14, 8, '72000'),
(14, 19, 2, '3440'),
(15, 6, 3, '84000'),
(16, 20, 7, '154000'),
(16, 23, 4, '168000'),
(16, 25, 3, '36000'),
(17, 31, 9, '405000'),
(17, 32, 6, '36000'),
(18, 29, 4, '68000'),
(19, 31, 4, '180000'),
(20, 35, 7, '1400000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `Id_Cliente` int(11) NOT NULL,
  `Nombre_Empresa` varchar(50) NOT NULL,
  `Telefono` varchar(10) NOT NULL,
  `Direccion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`Id_Cliente`, `Nombre_Empresa`, `Telefono`, `Direccion`) VALUES
(1, 'Asesores de seguros Germán Prieto y Cía.', '3001234567', 'Calle 123 # 45-67, C'),
(2, 'Colegio de árbitros ODAF', '3109876543', 'Carrera 56 # 78-90, '),
(3, 'Compu Center S.A.S', '3215678901', 'Avenida 456 # 12-34,'),
(4, 'Conjunto residencial El Cedro', '3112345678', 'Calle 789 # 23-45, S'),
(5, 'Cooperativa Chiliservimos', '3223456789', 'Carrera 12 # 56-78, '),
(6, 'Droguería Cauca', '3156789012', 'Calle 34 # 56-78, Fo'),
(7, 'Droguería Gámeza', '3009876543', 'Avenida 90 # 45-67, '),
(8, 'Edificio el Pinar 102', '3102345678', 'Carrera 67 # 12-34, '),
(9, 'Global Asista', '3214567890', 'Calle 56 # 23-45, Ch'),
(10, 'Ibáñez y Construcciones', '3221234567', 'Avenida 23 # 67-89, '),
(11, 'Industrias metálicas DUGAR', '3108765432', 'Calle 45 # 56-78, Fo'),
(12, 'HV televisión', '3156543210', 'Carrera 90 # 12-34, '),
(13, 'Laboratorio óptico Siglo Visión', '3002345678', 'Calle 34 # 67-89, Su'),
(14, 'MAX Media televisión', '3216789012', 'Avenida 12 # 56-78, '),
(15, 'Mecánica automotriz Manuel Espitia', '3223456789', 'Carrera 56 # 23-45, '),
(16, 'Mórea y confecciones', '3109876543', 'Calle 78 # 45-67, Te'),
(17, 'Motos de la 33 José Varón', '3152345678', 'Avenida 567 # 12-34,'),
(18, 'Motos Rincón', '3228765432', 'Carrera 23 # 56-78, '),
(19, 'Motos el Tío de la 33', '3006543210', 'Calle 90 # 67-89, Us'),
(20, 'Óptica Amiga', '3212345678', 'Avenida 45 # 23-45, '),
(21, 'Personas naturales (seguros)', '3108765432', 'Carrera 56 # 45-67, '),
(22, 'Unidad médica biológica', '3222345678', 'Calle 12 # 67-89, Ke'),
(23, 'Taller motociclista los regalaos', '3003456789', 'Avenida 23 # 12-34, '),
(24, 'Viltec S.A.S Ingeniería', '3159876543', 'Carrera 67 # 56-78, '),
(25, 'Zona de camping Los Pinos', '3212345678', 'Calle 56 # 23-45, Fo'),
(26, 'Lito cajas', '3106543210', 'Avenida 34 # 67-89, '),
(27, 'Consorcio Acueducto PROAD', '3225678901', 'Carrera 78 # 45-67, '),
(28, 'Consorcio Acueducto Tibitoc', '3152345678', 'Calle 12 # 23-45, Ch'),
(29, 'Consorcio Acueducto Salitre', '3004567890', 'Avenida 56 # 67-89, ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dotaciones`
--

CREATE TABLE `dotaciones` (
  `Codigo` int(11) NOT NULL,
  `fk_pk_Id_Cliente` int(11) NOT NULL,
  `fk_pk_Id_Proveedor` int(11) NOT NULL,
  `Tipo_Dotacion` varchar(50) NOT NULL,
  `Talla` varchar(10) NOT NULL,
  `Color` varchar(20) NOT NULL,
  `Sexo` varchar(10) NOT NULL,
  `Especificaciones` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dotaciones`
--

INSERT INTO `dotaciones` (`Codigo`, `fk_pk_Id_Cliente`, `fk_pk_Id_Proveedor`, `Tipo_Dotacion`, `Talla`, `Color`, `Sexo`, `Especificaciones`) VALUES
(1, 2, 1, 'Conjunto', 'M', 'Azul', 'Hombre', 'Bordado en el pecho'),
(2, 9, 20, 'Camisa', 'L', 'Blanco', 'Mujer', 'Sublimación en la espalda'),
(3, 11, 11, 'Overol', 'XL', 'Verde', 'Hombre', 'Con cierre frontal'),
(4, 10, 3, 'Camiseta', 'S', 'Rojo', 'Mujer', 'Logo en el frente'),
(5, 3, 2, 'Conjunto', 'XXL', 'Negro', 'Hombre', 'Bordado en el brazo izquierdo'),
(6, 5, 8, 'Camisa', 'M', 'Gris', 'Mujer', 'Bordado en el cuello'),
(7, 12, 1, 'Overol', 'L', 'Azul', 'Mujer', 'Con bolsillos laterales'),
(8, 1, 15, 'Camiseta', 'XL', 'Blanco', 'Hombre', 'Sublimación en el frente'),
(9, 4, 8, 'Conjunto', 'S', 'Verde', 'Mujer', 'Bordado en la pierna izquierda'),
(10, 14, 5, 'Camisa', 'L', 'Azul', 'Hombre', 'Sublimación en la espalda'),
(11, 7, 13, 'Overol', 'M', 'Negro', 'Hombre', 'Con reflectores'),
(12, 13, 7, 'Camiseta', 'S', 'Rojo', 'Mujer', 'Sublimación en la manga'),
(13, 6, 15, 'Conjunto', 'XL', 'Gris', 'Hombre', 'Bordado en el bolsillo'),
(14, 8, 16, 'Camisa', 'M', 'Blanco', 'Mujer', 'Bordado en el cuello'),
(15, 15, 10, 'Overol', 'L', 'Azul', 'Mujer', 'Con cierre en la cintura');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `Id_Factura` int(11) NOT NULL,
  `fk_Id_Cliente` int(11) NOT NULL,
  `Fecha_Factura` date NOT NULL,
  `Total_Factura` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`Id_Factura`, `fk_Id_Cliente`, `Fecha_Factura`, `Total_Factura`) VALUES
(1, 1, '2023-01-01', '50500'),
(2, 12, '2023-02-01', '185000'),
(3, 8, '2023-03-01', '468000'),
(4, 23, '2023-04-01', '329000'),
(5, 5, '2023-04-01', '215000'),
(6, 26, '2023-04-01', '217000'),
(7, 3, '2023-04-01', '17000'),
(8, 7, '2023-05-01', '306000'),
(9, 10, '2023-05-10', '42000'),
(10, 19, '2023-06-03', '719000'),
(11, 14, '2023-06-05', '180000'),
(12, 11, '2023-06-10', '224000'),
(13, 20, '2023-07-17', '177000'),
(14, 1, '2023-07-22', '106400'),
(15, 18, '2023-07-25', '84000'),
(16, 4, '2023-07-27', '358000'),
(17, 16, '2023-08-02', '441000'),
(18, 25, '2023-08-23', '68000'),
(19, 15, '2023-08-26', '180000'),
(20, 2, '2023-08-29', '1400000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `Codigo_Productos` int(11) NOT NULL,
  `Categoria` varchar(20) NOT NULL,
  `Nombre_Producto` varchar(50) NOT NULL,
  `Valor_UNI` decimal(20,0) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Imagen` varchar(50) NOT NULL,
  `Stock_Maximo` int(11) NOT NULL,
  `Stock_Minimo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`Codigo_Productos`, `Categoria`, `Nombre_Producto`, `Valor_UNI`, `Cantidad`, `Imagen`, `Stock_Maximo`, `Stock_Minimo`) VALUES
(1, 'Alcohol', 'ANTISÉPTICO 250ML', '5200', 50, '', 100, 10),
(5, 'GEL ANTIBACTERIAL', 'ANTIBACTERIAL 220 ML', '7500', 30, '', 150, 20),
(6, 'KIT', 'KIT ALCOHOL 750 ML + GEL ANTIBACTERIAL 500ML', '28000', 40, '', 50, 20),
(8, 'JABÓN', 'JABÓN ANTIBACTERIAL 250 ML', '4500', 10, '', 50, 10),
(9, 'HIPOCLORITO', 'HIPOCLORITO X 1000 ML', '20000', 50, '', 150, 20),
(11, 'GUANTES', 'CAJA X 100 UNIDADES GUANTES DE NITRILO', '47000', 60, '', 100, 20),
(14, 'RESPIRADOR', 'N95 CON FILTRO', '9000', 30, '', 100, 10),
(19, 'TABABOCAS', 'TAPABOCAS NORMAL TELA ANTOFLUIDO & ANTIBACTERIAL', '17000', 70, '', 150, 20),
(20, 'TAPABOCAS', 'TAPABOCAS+ VISOR TELA ANTOFLUIDO & ANTIBACTERIAL', '22000', 20, '', 100, 10),
(22, 'TRAJES (ANTIFLUIDOS ', 'TRAJES ANTIFLUIDOS PLASTICO', '6500', 60, '', 100, 10),
(23, 'TRAJES (ANTIFLUIDOS ', 'TRAJE DE BIOSEGURIDAD DESECHABLE', '42000', 50, '', 50, 10),
(24, 'TRAJES (ANTIFLUIDOS ', 'TRAJE DE BIOSEGURIDAD LAVABLE', '53000', 50, '', 100, 20),
(25, 'GAFAS DE PROTECCION ', 'GAFAS DE PROTECCION PERSONAL', '12000', 20, '', 50, 10),
(28, 'GAFAS DE PROTECCION ', 'GAFAS DE PILICARBONTO', '12000', 50, '', 100, 10),
(29, 'CARETAS', 'DE PROTECCION FACIAL VISERA', '17000', 10, '', 50, 10),
(31, 'CASCO', 'CASCO CERTIFICADO ARMADURA TIPO 1 + 3 RESPUESTOS D', '45000', 30, '', 100, 20),
(32, 'SEÑALIZACIÓN', 'SEÑALIZACIÓN 30 CM X 15 CM', '6000', 40, '', 50, 10),
(35, 'PUNTO ECOLOGICO', 'PUNTO ECOLOGICO', '200000', 20, '', 30, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `Id_Proveedor` int(11) NOT NULL,
  `Nombre_Empresa` varchar(50) NOT NULL,
  `Telefono` varchar(10) NOT NULL,
  `Direccion` varchar(205) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`Id_Proveedor`, `Nombre_Empresa`, `Telefono`, `Direccion`) VALUES
(1, 'Iconos señalización', '3101112233', 'Carrera 45 # 67-89, Chapinero'),
(2, 'Asa editores', '3112223344', 'Calle 34 # 56-78, Teusaquillo'),
(3, 'Universal de extintores', '3123334455', 'Avenida 23 # 12-34, Usaquén'),
(4, 'Soluciones integrales Elite Colombia', '3134445566', 'Carrera 12 # 56-78, Suba'),
(5, 'Comercializadora SQ S.A.S', '3145556677', 'Calle 56 # 23-45, Kennedy'),
(6, 'Soluciones Industriales ELite', '3156667788', 'Avenida 67 # 12-34, Fontibón'),
(7, 'Extiengenerias SAS', '3167778899', 'Carrera 78 # 45-67, Bosa'),
(8, 'Proveedor portuario', '3178889900', 'Calle 90 # 67-89, Teusaquillo'),
(9, 'Distribuciónes CAMACHO', '3189990011', 'Avenida 12 # 23-45, Chapinero'),
(10, 'INDUFEL COMPANY SAS', '3190001122', 'Carrera 56 # 45-67, Usaquén'),
(11, 'Oxtisol sas', '3201112233', 'Calle 34 # 67-89, Suba'),
(12, 'Blue prints publicidad', '3212223344', 'Avenida 56 # 67-89, Kennedy'),
(13, 'DSD publicidad industrial', '3223334455', 'Carrera 45 # 23-45, Fontibón'),
(14, 'Dota fuerte', '3234445566', 'Calle 23 # 56-78, Chapinero'),
(15, 'Dota Industriales', '3245556677', 'Carrera 67 # 12-34, Teusaquillo'),
(16, 'Dotaciones V&G', '3256667788', 'Avenida 90 # 45-67, Usaquén'),
(17, 'Hipetdotaciones Safety', '3267778899', 'Calle 12 # 12-34, Suba'),
(18, 'Distrifarma', '3278889900', 'Carrera 34 # 56-78, Kennedy'),
(19, 'Distribuidora TALIBAN', '3289990011', 'Carrera 23 # 23-45, Fontibón'),
(20, 'Soluciones y servicio', '3290001122', 'Avenida 12 # 45-67, Chapinero');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `anticipos`
--
ALTER TABLE `anticipos`
  ADD PRIMARY KEY (`pk_N_factura`,`fk_pk_Cod_Producto`),
  ADD KEY `fk_pk_Cod_Producto` (`fk_pk_Cod_Producto`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`Id_Cliente`);

--
-- Indices de la tabla `dotaciones`
--
ALTER TABLE `dotaciones`
  ADD PRIMARY KEY (`Codigo`,`fk_pk_Id_Cliente`,`fk_pk_Id_Proveedor`),
  ADD KEY `fk_pk_Id_Cliente` (`fk_pk_Id_Cliente`),
  ADD KEY `fk_pk_Id_Proveedor` (`fk_pk_Id_Proveedor`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`Id_Factura`),
  ADD KEY `fk_Id_Cliente` (`fk_Id_Cliente`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`Codigo_Productos`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`Id_Proveedor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `Id_Cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `dotaciones`
--
ALTER TABLE `dotaciones`
  MODIFY `Codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
  MODIFY `Id_Factura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `Id_Proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `anticipos`
--
ALTER TABLE `anticipos`
  ADD CONSTRAINT `anticipos_ibfk_1` FOREIGN KEY (`pk_N_factura`) REFERENCES `facturas` (`Id_Factura`),
  ADD CONSTRAINT `anticipos_ibfk_2` FOREIGN KEY (`fk_pk_Cod_Producto`) REFERENCES `productos` (`Codigo_Productos`);

--
-- Filtros para la tabla `dotaciones`
--
ALTER TABLE `dotaciones`
  ADD CONSTRAINT `dotaciones_ibfk_1` FOREIGN KEY (`fk_pk_Id_Cliente`) REFERENCES `clientes` (`Id_Cliente`),
  ADD CONSTRAINT `dotaciones_ibfk_2` FOREIGN KEY (`fk_pk_Id_Proveedor`) REFERENCES `proveedores` (`Id_Proveedor`);

--
-- Filtros para la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD CONSTRAINT `facturas_ibfk_1` FOREIGN KEY (`fk_Id_Cliente`) REFERENCES `clientes` (`Id_Cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
