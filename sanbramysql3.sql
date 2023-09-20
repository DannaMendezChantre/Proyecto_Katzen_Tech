-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-09-2023 a las 20:02:49
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
-- Base de datos: `sanbra11`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `Id_administrador` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Apellido` varchar(20) NOT NULL,
  `Telefono` int(11) NOT NULL,
  `Usuario` varchar(20) NOT NULL,
  `Correo` varchar(20) NOT NULL,
  `Contraseña` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`Id_administrador`, `Nombre`, `Apellido`, `Telefono`, `Usuario`, `Correo`, `Contraseña`) VALUES
(1, 'Juan', 'Pérez', 1234567890, 'juan_admin', 'juan.admin@example.c', 'contraseña123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anticipo`
--

CREATE TABLE `anticipo` (
  `Id_anticipo` int(11) NOT NULL,
  `fk_pk_Id_factura` int(11) NOT NULL,
  `Valor_abono` int(11) NOT NULL,
  `Fecha_abono` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `anticipo`
--

INSERT INTO `anticipo` (`Id_anticipo`, `fk_pk_Id_factura`, `Valor_abono`, `Fecha_abono`) VALUES
(1, 1, 25250, '2023-01-05'),
(2, 1, 25250, '2023-01-07'),
(3, 2, 92500, '2023-02-09'),
(4, 2, 92500, '2023-02-18'),
(5, 3, 234000, '2023-03-04'),
(6, 3, 234000, '2023-03-05'),
(7, 4, 164500, '2023-04-03'),
(8, 4, 164500, '2023-04-07'),
(9, 5, 107500, '2023-04-04'),
(10, 5, 107500, '2023-04-08'),
(11, 6, 108500, '2023-04-19'),
(12, 6, 108500, '2023-04-21'),
(13, 7, 8500, '2023-04-07'),
(14, 7, 8500, '2023-04-10'),
(15, 8, 153000, '2023-05-06'),
(16, 8, 153000, '2023-05-09'),
(17, 9, 21000, '2023-05-12'),
(18, 9, 21000, '2023-05-15'),
(19, 10, 359500, '2023-06-05'),
(20, 10, 359500, '2023-06-05'),
(21, 11, 90000, '2023-06-07'),
(22, 11, 90000, '2023-06-09'),
(23, 12, 112000, '2023-06-12'),
(24, 12, 112000, '2023-06-17'),
(25, 13, 88500, '2023-07-19'),
(26, 13, 88500, '2023-07-19'),
(27, 14, 53200, '2023-07-24'),
(28, 14, 53200, '2023-07-27'),
(29, 15, 42000, '2023-07-27'),
(30, 15, 42000, '2023-07-28'),
(31, 16, 179000, '2023-07-29'),
(32, 16, 179000, '2023-07-29'),
(33, 17, 220500, '2023-08-04'),
(34, 17, 220500, '2023-08-06'),
(35, 18, 34000, '2023-08-25'),
(36, 18, 34000, '2023-08-26'),
(37, 19, 90000, '2023-08-28'),
(38, 19, 90000, '2023-08-28'),
(39, 20, 700000, '2023-08-31'),
(40, 20, 700000, '2023-08-31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_producto`
--

CREATE TABLE `categoria_producto` (
  `Nombre_categoria` varchar(50) NOT NULL,
  `Descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria_producto`
--

INSERT INTO `categoria_producto` (`Nombre_categoria`, `Descripcion`) VALUES
('ALCOHOL', 'Productos relacionados con desinfectantes y antisé'),
('CARETASL', 'Caretas de protección facial con visera, para prot'),
('CASCO', 'Cascos de seguridad certificados con visor, utiliz'),
('GAFAS DE PROTECCION PERSONAL', 'Gafas diseñadas para proteger los ojos de partícul'),
('GEL ANTIBACTERIAL', 'Gel antiséptico utilizado para la higiene de manos'),
('GUANTESCAJA X 100 UNIDADES', ' Guantes de nitrilo u otros materiales vendidos en'),
('HIPOCLORITO', 'Productos desinfectantes basados en hipoclorito de'),
('JABÓN', 'Jabones antibacteriales y de limpieza en formato l'),
('KIT', 'Conjunto de productos relacionados, como un kit de'),
('PUNTO ECOLOGICO', 'Contenedores de reciclaje y puntos ecológicos para'),
('RESPIRADOR', 'Equipos de protección respiratoria, como máscaras '),
('SEÑALIZACIÓN', 'Elementos de señalización de seguridad utilizados '),
('TAPABOCAS', 'Tapabocas de tela antifluido y antibacterial para '),
('TRAJE DE BIOSEGURIDAD LAVABLE', 'Traje reutilizable para protección en entornos con'),
('TRAJES (ANTIFLUIDOS Y BIOSEFURIDAD)', 'Trajes de bioseguridad, ya sean desechables o lava');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `pk_fk_Tipo_documento` varchar(40) NOT NULL,
  `Id_cliente` int(11) NOT NULL,
  `Numero_documento` int(11) NOT NULL,
  `Nombre_empresa` varchar(30) NOT NULL,
  `Telefono` varchar(10) NOT NULL,
  `Direccion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`pk_fk_Tipo_documento`, `Id_cliente`, `Numero_documento`, `Nombre_empresa`, `Telefono`, `Direccion`) VALUES
('CÉDULA JURÍDICA', 1, 1234567890, 'Asesores de Seguros Germán Pri', '3001234567', 'Calle 123 # 45-67, Ciudad A'),
('CÉDULA JURÍDICA', 6, 2147483647, 'Droguería Cauca', '3156789012', 'Calle 34 # 56-78, Ciudad B'),
('CÉDULA JURÍDICA', 9, 2147483647, 'Global Asista', '3214567890', 'Calle 56 # 23-45, Ciudad C'),
('CÉDULA JURÍDICA', 10, 2147483647, 'Ibáñez y Construcciones', '3221234567', 'Avenida 23 # 67-89, Ciudad D'),
('CÉDULA JURÍDICA', 11, 2147483647, 'Industrias Metálicas DUGAR', '3108765432', 'Calle 45 # 56-78, Ciudad E'),
('CÉDULA JURÍDICA', 13, 2147483647, 'Laboratorio Óptico Siglo Visió', '3002345678', 'Calle 34 # 67-89, Ciudad F'),
('CÉDULA JURÍDICA', 19, 2147483647, 'Motos el Tío de la 33', '3006543210', 'Calle 90 # 67-89, Ciudad G'),
('CÉDULA JURÍDICA', 20, 2147483647, 'Óptica Amiga', '3212345678', 'Avenida 45 # 23-45, Ciudad H'),
('CÉDULA JURÍDICA', 24, 2147483647, 'Viltec S.A.S Ingeniería', '3159876543', 'Carrera 67 # 56-78, Ciudad I'),
('CÉDULA JURÍDICA', 28, 123456789, 'Consorcio Acueducto Tibitoc', '3152345678', 'Calle 12 # 23-45, Ciudad J'),
('NIT', 2, 123456789, 'Colegio de Árbitros ODAF', '3109876543', 'Carrera 56 # 78-90, Ciudad K'),
('NIT', 4, 234567890, 'Conjunto Residencial El Cedro', '3112345678', 'Calle 789 # 23-45, Ciudad L'),
('NIT', 15, 345678901, 'Mecánica Automotriz Manuel Esp', '3223456789', 'Carrera 56 # 23-45, Ciudad M'),
('NIT', 17, 456789012, 'Motos de la 33 José Varón', '3152345678', 'Avenida 567 # 12-34, Ciudad N'),
('NIT', 26, 567890123, 'Lito Cajas', '3106543210', 'Avenida 34 # 67-89, Ciudad O'),
('NIT', 27, 678901234, 'Consorcio Acueducto PROAD', '3225678901', 'Carrera 78 # 45-67, Ciudad P'),
('RUT', 3, 789012345, 'Compu Center S.A.S', '3215678901', 'Avenida 456 # 12-34, Ciudad Q'),
('RUT', 5, 890123456, 'Cooperativa Chiliservimos', '3223456789', 'Carrera 12 # 56-78, Ciudad R'),
('RUT', 7, 901234567, 'Droguería Gámeza', '3009876543', 'Avenida 90 # 45-67, Ciudad S'),
('RUT', 8, 12345678, 'Edificio El Pinar 102', '3102345678', 'Carrera 67 # 12-34, Ciudad T'),
('RUT', 12, 123456789, 'HV Televisión', '3156543210', 'Carrera 90 # 12-34, Ciudad U'),
('RUT', 14, 234567890, 'MAX Media Televisión', '3216789012', 'Avenida 12 # 56-78, Ciudad V'),
('RUT', 16, 345678901, 'Mórea y Confecciones', '3109876543', 'Calle 78 # 45-67, Ciudad W'),
('RUT', 18, 456789012, 'Motos Rincón', '3228765432', 'Carrera 23 # 56-78, Ciudad X'),
('RUT', 21, 567890123, 'Personas Naturales (Seguros)', '3108765432', 'Carrera 56 # 45-67, Ciudad Y'),
('RUT', 22, 678901234, 'Unidad Médica Biológica', '3222345678', 'Calle 12 # 67-89, Ciudad Z'),
('RUT', 23, 789012345, 'Taller Motociclista Los Regala', '3003456789', 'Avenida 23 # 12-34, Ciudad AA'),
('RUT', 25, 890123456, 'Zona de Camping Los Pinos', '3212345678', 'Calle 56 # 23-45, Ciudad BB'),
('RUT', 29, 901234567, 'Consorcio Acueducto Salitre', '3004567890', 'Avenida 56 # 67-89, Ciudad CC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_factura`
--

CREATE TABLE `detalle_factura` (
  `fk_pk_Id_Factura` int(11) NOT NULL,
  `fk_pk_Id_Producto` varchar(10) NOT NULL,
  `Cantidad_Producto` int(11) NOT NULL,
  `valor_producto_cantidad` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_factura`
--

INSERT INTO `detalle_factura` (`fk_pk_Id_Factura`, `fk_pk_Id_Producto`, `Cantidad_Producto`, `valor_producto_cantidad`) VALUES
(1, '1', 3, 15600),
(1, '22', 2, 13000),
(1, '8', 6, 22500),
(2, '19', 1, 17000),
(2, '6', 6, 168000),
(3, '29', 4, 68000),
(3, '35', 2, 400000),
(4, '11', 7, 329000),
(5, '24', 3, 159000),
(5, '6', 2, 56000),
(6, '25', 9, 108000),
(6, '28', 6, 72000),
(6, '5', 5, 37000),
(7, '19', 1, 17000),
(8, '1', 9, 46800),
(8, '22', 4, 260000),
(9, '5', 4, 30000),
(9, '9', 6, 12000),
(10, '29', 7, 119000),
(10, '35', 3, 600000),
(11, '23', 5, 210000),
(11, '25', 9, 108000),
(12, '28', 2, 24000),
(13, '24', 3, 159000),
(13, '8', 4, 18000),
(14, '14', 8, 72000),
(14, '19', 2, 3440),
(15, '6', 3, 84000),
(16, '20', 7, 154000),
(16, '23', 4, 168000),
(16, '25', 3, 36000),
(17, '31', 9, 405000),
(17, '32', 6, 36000),
(18, '29', 4, 68000),
(19, '31', 4, 180000),
(20, '35', 7, 1400000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `Id_factura` int(11) NOT NULL,
  `Administrador_id` int(11) NOT NULL,
  `Cliente_id` int(11) NOT NULL,
  `Fecha_factura` date NOT NULL,
  `Total_factura` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`Id_factura`, `Administrador_id`, `Cliente_id`, `Fecha_factura`, `Total_factura`) VALUES
(1, 1, 7, '2023-01-01', 50500),
(2, 1, 14, '2023-02-01', 185000),
(3, 1, 2, '2023-03-01', 468000),
(4, 1, 20, '2023-04-01', 329000),
(5, 1, 9, '2023-04-01', 215000),
(6, 1, 12, '2023-04-01', 217000),
(7, 1, 29, '2023-04-01', 17000),
(8, 1, 18, '2023-05-01', 306000),
(9, 1, 26, '2023-05-10', 42000),
(10, 1, 6, '2023-06-03', 719000),
(11, 1, 13, '2023-06-05', 180000),
(12, 1, 19, '2023-06-10', 224000),
(13, 1, 3, '2023-07-17', 177000),
(14, 1, 8, '2023-07-22', 106400),
(15, 1, 25, '2023-07-25', 84000),
(16, 1, 11, '2023-07-27', 358000),
(17, 1, 4, '2023-08-02', 441000),
(18, 1, 16, '2023-08-23', 68000),
(19, 1, 10, '2023-08-26', 180000),
(20, 1, 5, '2023-08-29', 1400000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingreso_producto`
--

CREATE TABLE `ingreso_producto` (
  `Id_producto` int(11) NOT NULL,
  `fk_Nombre_categoria` varchar(50) NOT NULL,
  `Nombre_producto` varchar(50) NOT NULL,
  `Valor_UNI` decimal(20,0) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Descripcion` varchar(100) NOT NULL,
  `Imagen` longblob NOT NULL,
  `Stock_Maximo` int(11) NOT NULL,
  `Stock_Minimo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ingreso_producto`
--

INSERT INTO `ingreso_producto` (`Id_producto`, `fk_Nombre_categoria`, `Nombre_producto`, `Valor_UNI`, `Cantidad`, `Descripcion`, `Imagen`, `Stock_Maximo`, `Stock_Minimo`) VALUES
(1, 'ALCOHOL', 'ANTISÉPTICO 250ML', '5200', 50, 'Un antiséptico en formato líquido de 250 ml para desinfección y limpieza de superficies y manos.', 0x696d672f616c636f2e706e67, 100, 10),
(5, 'GEL ANTIBACTERIAL', 'ANTIBACTERIAL 220 ML', '7500', 30, 'Gel antibacterial en un envase de 220 ml, ideal para la higiene de manos y prevención de enfermedade', 0x696d672f616e74692e706e67, 150, 20),
(6, 'KIT', 'KIT ALCOHOL 750 ML + GEL ANTIBACTERIAL 500ML', '28000', 40, 'Un kit que incluye una botella de alcohol de 750 ml y un gel antibacterial de 500 ml, perfecto para ', 0x696d672f6b69742e706e67, 50, 20),
(8, 'JABÓN', 'JABÓN ANTIBACTERIAL 250 M', '4500', 10, 'Jabón antibacterial en formato líquido de 250 ml, diseñado para una limpieza efectiva y protección c', 0x696d672f6a612e706e67, 50, 10),
(9, 'HIPOCLORITO', 'HIPOCLORITO X 1000 ML', '20000', 50, 'Hipoclorito de sodio en una botella de 1000 ml, un desinfectante eficaz para la limpieza y desinfecc', 0x696d672f6869706f2e706e67, 150, 20),
(11, 'GUANTESCAJA X 100 UNIDADES', 'GUANTES DE NITRILO', '47000', 60, 'Guantes de nitrilo en una caja de 100 unidades, proporcionan una barrera protectora para las manos e', 0x696d672f6775616e2e706e67, 100, 20),
(14, 'RESPIRADOR', 'N95 CON FILTRO', '9000', 30, 'Máscara respiratoria N95 con filtro, diseñada para filtrar partículas y ofrecer protección respirato', 0x696d672f7265732e706e67, 100, 10),
(19, 'TAPABOCAS', 'TAPABOCAS NORMAL TELA ANTOFLUIDO & ANTIBACTERIAL', '17000', 70, 'Tapabocas de tela antifluido y antibacterial, brinda protección y comodidad para uso diario.', 0x696d672f746170612e706e67, 150, 20),
(23, 'TRAJES (ANTIFLUIDOS Y BIOSEFURIDAD)', 'TRAJE DE BIOSEGURIDAD DESECHABLE', '42000', 70, 'Traje de bioseguridad desechable, ofrece protección completa en entornos donde se requiere control d', 0x696d672f747261312e706e67, 150, 20),
(24, 'TRAJES (ANTIFLUIDOS Y BIOSEFURIDAD)', 'TRAJE DE BIOSEGURIDAD LAVABLE', '53000', 50, 'Traje de bioseguridad lavable, proporciona protección y puede reutilizarse después de la limpieza.', 0x696d672f747261322e706e67, 100, 20),
(25, 'GAFAS DE PROTECCION PERSONAL', 'GAFAS DE PROTECCION PERSONAL', '12000', 20, 'Gafas de protección personal diseñadas para resguardar los ojos de partículas y salpicaduras.', 0x696d672f67612e706e67, 50, 10),
(29, 'CARETASL', 'DE PROTECCION FACIAL VISERA', '17000', 10, 'Careta de protección facial con visera, brinda protección contra salpicaduras y gotas en el rostro.', 0x696d672f63612e706e67, 50, 10),
(31, 'CASCO', 'CASCO CERTIFICADO ARMADURA TIPO 1 + 3 RESPUESTOS D', '45000', 30, 'Casco de seguridad certificado con visor en PET, ofrece protección en entornos industriales y de con', 0x696d672f6361732e706e67, 100, 20),
(32, 'SEÑALIZACIÓN', 'SEÑALIZACIÓN 30 CM X 15 CML', '6000', 40, 'Señalización de seguridad de 30 cm x 15 cm, utilizada para indicar advertencias o instrucciones en e', 0x696d672f73652e706e67, 50, 10),
(35, 'PUNTO ECOLOGICO', 'PUNTO ECOLOGICO', '200000', 20, 'Punto ecológico diseñado para la segregación de residuos y la promoción de prácticas sostenibles en ', 0x696d672f65636f2e706e67, 30, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documento`
--

CREATE TABLE `tipo_documento` (
  `Tipo_documento` varchar(40) NOT NULL,
  `Estado_documento` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_documento`
--

INSERT INTO `tipo_documento` (`Tipo_documento`, `Estado_documento`) VALUES
('CÉDULA JURÍDICA', 1),
('NIT', 1),
('RUT', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`Id_administrador`);

--
-- Indices de la tabla `anticipo`
--
ALTER TABLE `anticipo`
  ADD PRIMARY KEY (`Id_anticipo`,`fk_pk_Id_factura`),
  ADD KEY `fk_pk_Id_factura` (`fk_pk_Id_factura`);

--
-- Indices de la tabla `categoria_producto`
--
ALTER TABLE `categoria_producto`
  ADD PRIMARY KEY (`Nombre_categoria`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`pk_fk_Tipo_documento`,`Id_cliente`);

--
-- Indices de la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  ADD PRIMARY KEY (`fk_pk_Id_Factura`,`fk_pk_Id_Producto`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`Id_factura`),
  ADD KEY `Administrador_id` (`Administrador_id`);

--
-- Indices de la tabla `ingreso_producto`
--
ALTER TABLE `ingreso_producto`
  ADD PRIMARY KEY (`Id_producto`),
  ADD KEY `fk_Nombre_categoria` (`fk_Nombre_categoria`);

--
-- Indices de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  ADD PRIMARY KEY (`Tipo_documento`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `anticipo`
--
ALTER TABLE `anticipo`
  ADD CONSTRAINT `anticipo_ibfk_1` FOREIGN KEY (`fk_pk_Id_factura`) REFERENCES `factura` (`Id_factura`);

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`pk_fk_Tipo_documento`) REFERENCES `tipo_documento` (`Tipo_documento`);

--
-- Filtros para la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  ADD CONSTRAINT `detalle_factura_ibfk_1` FOREIGN KEY (`fk_pk_Id_Factura`) REFERENCES `factura` (`Id_factura`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`Administrador_id`) REFERENCES `administrador` (`Id_administrador`);

--
-- Filtros para la tabla `ingreso_producto`
--
ALTER TABLE `ingreso_producto`
  ADD CONSTRAINT `ingreso_producto_ibfk_1` FOREIGN KEY (`fk_Nombre_categoria`) REFERENCES `categoria_producto` (`Nombre_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
