-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-10-2023 a las 23:48:23
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
-- Base de datos: `computer_advance`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart`
--

CREATE TABLE `cart` (
  `idv` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `idprod` int(11) NOT NULL,
  `name` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart_purchase`
--

CREATE TABLE `cart_purchase` (
  `idcpr` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `idprod` int(11) NOT NULL,
  `name` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idcate` int(11) NOT NULL,
  `nocate` varchar(100) NOT NULL,
  `state` char(1) NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcate`, `nocate`, `state`, `fere`) VALUES
(2, 'Alcohol', '1', '2023-10-02 19:16:13'),
(3, 'Gel antibacterial', '1', '2023-10-02 19:17:18'),
(4, 'Hipoclorito', '1', '2023-10-02 19:17:46'),
(5, 'Kit', '1', '2023-10-02 19:17:59'),
(6, 'Jabón', '1', '2023-10-02 19:18:23'),
(7, 'Guantes caja x 100 unidades', '1', '2023-10-02 19:19:06'),
(8, 'Respirador', '1', '2023-10-02 19:19:21'),
(9, 'Tapabocas', '1', '2023-10-02 19:19:34'),
(10, 'Trajes (Antifluidos y Bioseguridad)', '1', '2023-10-02 19:20:44'),
(11, 'Gafas de protección personal', '1', '2023-10-02 19:21:36'),
(12, 'Caretas', '1', '2023-10-02 19:21:47'),
(13, 'Casco', '1', '2023-10-02 19:22:06'),
(14, 'Señalización', '1', '2023-10-02 19:22:26'),
(15, 'Punto ecológico', '1', '2023-10-02 19:22:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idcli` int(11) NOT NULL,
  `idusu` int(11) NOT NULL,
  `tipd` varchar(25) NOT NULL,
  `nudoc` char(8) NOT NULL,
  `nocl` varchar(35) NOT NULL,
  `apcl` varchar(35) NOT NULL,
  `telfcl` char(9) NOT NULL,
  `state` char(1) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rol` char(1) NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idcli`, `idusu`, `tipd`, `nudoc`, `nocl`, `apcl`, `telfcl`, `state`, `username`, `password`, `rol`, `fere`) VALUES
(0, 1, 'certificado_existencia_re', '11111111', 'Laboratorio óptico Siglo Visión', '', '987633456', '1', '', '', '', '2023-10-02 20:49:36'),
(0, 1, 'cuentas_bancarias', '12312312', 'Ingeniería Coiba S.A.S', '', '873456789', '1', '', '', '', '2023-10-02 20:48:07'),
(0, 1, 'registros_contables_libro', '12341234', 'HV televisión', '', '234566976', '1', '', '', '', '2023-10-02 20:49:06'),
(0, 1, 'registro_unico_de_propone', '12345678', 'Edificio el Pinar 102', '', '345679876', '1', '', '', '', '2023-10-02 20:45:12'),
(0, 1, 'registros_contables_libro', '1234569', 'Ibáñez y Construcciones', '', '876543234', '1', '', '', '', '2023-10-02 20:46:45'),
(0, 1, 'camara_de_comercio', '23487654', 'industrias metálicas DUGAR', '', '556566565', '1', '', '', '', '2023-10-02 20:48:43'),
(0, 1, 'certificado_existencia_re', '34567898', 'Droguería Cauca', '', '597654334', '1', '', '', '', '2023-10-02 20:44:14'),
(0, 1, 'registro_mercantil', '43981759', 'Conjunto residencial El Cedro', '', '9359179', '1', '', '', '', '2023-10-02 20:42:37'),
(0, 1, 'licencias_permisos_especi', '52367423', 'Droguería Gámeza', '', '456789987', '1', '', '', '', '2023-10-02 20:44:41'),
(0, 1, 'cedula_juridica', '63276387', 'Asesores de seguros Germán Prieto y', '', '236545438', '1', '', '', '', '2023-10-02 20:40:43'),
(0, 1, 'rut', '67326588', 'Colegio de árbitros ODAF', '', '345678976', '1', '', '', '', '2023-10-02 20:41:44'),
(0, 1, 'dni', '76543246', 'Compu Center S.A.S', '', '345670987', '1', '', '', '', '2023-10-02 20:42:13'),
(0, 1, 'cedula_juridica', '87654321', 'Global Asista', '', '78362237', '1', '', '', '', '2023-10-02 20:45:45'),
(0, 1, 'camara_de_comercio', '87947893', 'Cooperativa Chiliservimos', '', '530976974', '1', '', '', '', '2023-10-02 20:43:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `idmar` int(11) NOT NULL,
  `nomarc` text NOT NULL,
  `state` char(1) NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`idmar`, `nomarc`, `state`, `fere`) VALUES
(2, 'JGB', '1', '2023-10-02 19:26:39'),
(3, 'MK', '1', '2023-10-02 19:26:54'),
(4, 'Cloralex', '1', '2023-10-02 19:34:44'),
(5, 'PQP', '1', '2023-10-02 19:41:55'),
(6, 'Protexion', '1', '2023-10-02 19:44:57'),
(7, '3M', '1', '2023-10-02 19:49:19'),
(8, 'Royal', '1', '2023-10-02 20:10:54'),
(9, 'Quios', '1', '2023-10-02 20:13:38'),
(10, 'Coraza', '1', '2023-10-02 20:15:44'),
(11, 'Workseg', '1', '2023-10-02 20:18:26'),
(12, 'Mundo industrial', '1', '2023-10-02 20:21:14'),
(13, 'Prilsol', '1', '2023-10-02 20:23:48'),
(14, 'Ecoreciclaje', '1', '2023-10-02 20:27:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `idord` int(11) NOT NULL,
  `clien_numdoc` char(8) NOT NULL,
  `nomcl` text NOT NULL,
  `method` varchar(50) NOT NULL,
  `total_products` text NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `placed_on` varchar(15) NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `tipc` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`idord`, `clien_numdoc`, `nomcl`, `method`, `total_products`, `total_price`, `placed_on`, `payment_status`, `tipc`) VALUES
(11, '12345678', 'Laboratorio óptico Siglo Visión', 'Tarjeta', ', Antiséptico 250ML ( 10 ), Casco certificado armadura, tipo 1 + 3 repuestos de visor en pet, calibre 18 individual ( 5 )', '277000.00', '02-Oct-2023', 'Aceptado', 'Boleta'),
(14, '11111111', 'Laboratorio óptico Siglo Visión', 'Contado', ', Punto ecológico ( 1 ), Señalización 30 CM x 15 CM ( 1 )', '206000.00', '02-Oct-2023', 'Aceptado', 'Boleta'),
(15, '12345678', 'Edificio el Pinar 102', 'Tarjeta', ', Señalización 30 CM x 15 CM ( 6 ), Traje de bioseguridad desechable ( 4 ), Tapabocas normal tela antifluido & antibacterial ( 8 ), N95 con filtro ( 1 ), Jabón antibacterial 250 ML ( 5 )', '373500.00', '02-Oct-2023', 'Aceptado', 'Boleta'),
(16, '67326588', 'Colegio de árbitros ODAF', 'Contado', ', Antiséptico 250ML ( 1 ), N95 con filtro ( 5 ), Antibacterial 220 ML ( 7 ), Guantes de nitrilo ( 10 ), Kit alcohol 750 ML + gel antibacterial 500ML ( 1 ), Jabón antibacterial 250 ML ( 4 ), Hipoclorito X 1000 ML ( 2 ), Gafas de protección personal ( 10 )', '778700.00', '02-Oct-2023', 'Aceptado', 'Boleta'),
(17, '67326588', 'Colegio de árbitros ODAF', 'Contado', ', Antibacterial 220 ML ( 5 ), Jabón antibacterial 250 ML ( 1 ), Punto ecológico ( 2 ), Guantes de nitrilo ( 1 )', '489000.00', '02-Oct-2023', 'Aceptado', 'Boleta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders_purchase`
--

CREATE TABLE `orders_purchase` (
  `idordpur` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `idprov` int(11) NOT NULL,
  `method` varchar(50) NOT NULL,
  `total_products` text NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `placed_on` varchar(15) NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `tipc` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `orders_purchase`
--

INSERT INTO `orders_purchase` (`idordpur`, `user_id`, `idprov`, `method`, `total_products`, `total_price`, `placed_on`, `payment_status`, `tipc`) VALUES
(4, 1, 6, 'Contado', ', Gafas de protección personal ( 10 ), Antibacterial 220 ML ( 20 )', '270000.00', '02-Oct-2023', 'Aceptado', 'Boleta'),
(5, 1, 9, 'Tarjeta', ', N95 con filtro ( 20 ), Guantes de nitrilo ( 30 )', '1590000.00', '02-Oct-2023', 'Aceptado', 'Boleta'),
(6, 1, 8, 'Tarjeta', ', Jabón antibacterial 250 ML ( 10 ), Antiséptico 250ML ( 40 ), Kit alcohol 750 ML + gel antibacterial 500ML ( 30 ), Hipoclorito X 1000 ML ( 20 )', '1493000.00', '02-Oct-2023', 'Aceptado', 'Boleta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idprod` int(11) NOT NULL,
  `codpro` char(14) NOT NULL,
  `nomprd` text NOT NULL,
  `desprd` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` char(3) NOT NULL,
  `idmar` int(11) NOT NULL,
  `idcate` int(11) NOT NULL,
  `modelo` text NOT NULL,
  `peso` text NOT NULL,
  `state` char(1) NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idprod`, `codpro`, `nomprd`, `desprd`, `foto`, `precio`, `stock`, `idmar`, `idcate`, `modelo`, `peso`, `state`, `fere`) VALUES
(5, '1', 'Antiséptico 250ML', 'Un antiséptico en formato líquido de 250 ml para desinfección y limpieza de superficies y manos.', '719904.png', '5200.00', '50', 2, 2, '', '', '1', '2023-10-02 19:30:21'),
(6, '5', 'Antibacterial 220 ML', 'Gel antibacterial en un envase de 220 ml, ideal para la higiene de manos y prevención de enfermedades.', '480366.png', '7500.00', '30', 3, 3, '', '', '1', '2023-10-02 19:33:35'),
(7, '9', 'Hipoclorito X 1000 ML', 'Hipoclorito X en envase de 1000 ML, una solución confiable y efectiva para la desinfección y limpieza de superficies.', '815453.png', '20000.00', '50', 4, 4, '', '', '1', '2023-10-02 19:37:21'),
(8, '6', 'Kit alcohol 750 ML + gel antibacterial 500ML', 'Un kit indispensable: 750 ML de alcohol líquido y 500 ML de gel antibacterial, ideal para mantener una higiene óptima en todo momento.', '511606.png', '28000.00', '40', 2, 5, '', '', '1', '2023-10-02 19:40:19'),
(9, '8', 'Jabón antibacterial 250 ML', 'Un jabón antibacterial de 250 ML que proporciona una limpieza profunda y protección contra gérmenes y bacterias.', '71510.png', '4500.00', '10', 5, 6, '', '', '1', '2023-10-02 20:36:57'),
(10, '11', 'Guantes de nitrilo', '\r\nGuantes de nitrilo: una barrera resistente y cómoda para proteger las manos en diversas aplicaciones, desde limpieza hasta cuidado de la salud.', '97289.png', '47000.00', '60', 6, 7, '', '', '1', '2023-10-02 19:46:08'),
(11, '14', 'N95 con filtro', 'Mascarilla N95 con filtro, una defensa eficaz contra partículas y contaminantes del aire.', '753589.png', '9000.00', '10', 7, 8, '', '', '1', '2023-10-02 19:51:02'),
(12, '19', 'Tapabocas normal tela antifluido & antibacterial', 'Tapabocas de tela antifluido y antibacterial, brindando comodidad y protección adicional en situaciones cotidianas.', '59240.png', '17000.00', '70', 8, 9, '', '', '1', '2023-10-02 20:11:53'),
(13, '23', 'Traje de bioseguridad desechable', '\r\nTraje de bioseguridad desechable: una solución práctica y segura para la protección completa en entornos médicos y laboratorios.', '750460.png', '42500.00', '20', 9, 10, '', '', '1', '2023-10-02 20:14:43'),
(14, '25', 'Gafas de protección personal', 'Gafas de protección personal, una defensa esencial para tus ojos en entornos laborales o de riesgo.', '425643.png', '12000.00', '50', 10, 11, '', '', '1', '2023-10-02 20:16:55'),
(15, '29', 'Careta de protección facial visera', 'Careta de protección facial visera, un escudo confiable para proteger el rostro en situaciones de riesgo.', '860475.png', '17000.00', '15', 11, 12, '', '', '1', '2023-10-02 20:19:34'),
(16, '31', 'Casco certificado armadura, tipo 1 + 3 repuestos de visor en pet, calibre 18 individual', 'Casco certificado tipo 1 con 3 repuestos de visor en pet, calibre 18 individual, una solución de protección sólida y completa.', '278754.png', '45000.00', '10', 12, 13, '', '', '1', '2023-10-02 20:26:32'),
(17, '32', 'Señalización 30 CM x 15 CM', 'Señalización de 30 CM x 15 CM, una herramienta efectiva para comunicar información importante de manera clara y visible.', '814092.png', '6000.00', '35', 13, 14, '', '', '1', '2023-10-02 20:25:29'),
(18, '35', 'Punto ecológico', 'Un punto ecológico es una ubicación designada para el reciclaje y la separación adecuada de residuos, promoviendo prácticas sostenibles de manejo de desechos.', '256988.png', '200000.00', '30', 14, 15, '', '', '1', '2023-10-02 20:29:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `idprov` int(11) NOT NULL,
  `idusu` int(11) NOT NULL,
  `rucprv` char(11) NOT NULL,
  `nomprv` text NOT NULL,
  `corrprv` varchar(35) NOT NULL,
  `state` char(1) NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`idprov`, `idusu`, `rucprv`, `nomprv`, `corrprv`, `state`, `fere`) VALUES
(3, 1, '52378328753', 'Iconos señalización', 'Iconosseñalización@gmail.com', '1', '2023-10-02 20:51:07'),
(4, 1, '12345678901', 'Asa editores', 'Asaeditores@gmail.com', '1', '2023-10-02 20:51:38'),
(5, 1, '09876543210', 'Universal de extintores', 'Universaldeextintores@gmail.com', '1', '2023-10-02 20:52:18'),
(6, 1, '34598765432', 'Soluciones integrales Elite Colombia', 'SolucionesintegralesEliteColombia@g', '1', '2023-10-02 20:52:46'),
(7, 1, '12341234123', 'Comercializadora SQ S.A.S', 'ComercializadoraSQS.A.S@gmail.com', '1', '2023-10-02 20:53:22'),
(8, 1, '09876098766', 'Soluciones Industriales ELite', 'SolucionesIndustrialesELite@gmail.c', '1', '2023-10-02 20:54:19'),
(9, 1, '34546787651', 'Extiengenerias SAS', 'ExtiengeneriasSAS@gmail.com', '1', '2023-10-02 20:55:37'),
(10, 1, '87654678987', 'Proveedor portuario', 'Proveedorportuario@gmail.com', '1', '2023-10-02 20:56:08'),
(11, 1, '12121212121', 'Distribuciónes CAMACHO', 'DistribuciónesCAMACHO@gmail.com', '1', '2023-10-02 20:56:41'),
(12, 1, '09809809809', 'INDUFEL COMPANY SAS', 'INDUFELCOMPANYSAS@gmail.com', '1', '2023-10-02 20:57:29'),
(13, 1, '34567865434', 'Oxtisol sas', 'Oxtisolsas@gmail.com', '1', '2023-10-02 20:57:58'),
(14, 1, '83566653645', 'Blue prints publicidad', 'Blueprintspublicidad@gmail.com', '1', '2023-10-02 20:58:28'),
(16, 1, '63256457833', 'DSD publicidad industrial', 'DSDpublicidadindustrial@gmail.com', '1', '2023-10-02 20:59:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `correo` varchar(35) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rol` char(1) NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `state` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `username`, `correo`, `password`, `rol`, `fere`, `state`) VALUES
(1, 'Administrador1', 'admin01', 'admin01@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '2023-09-30 17:50:51', '1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`idv`),
  ADD KEY `idprod` (`idprod`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `cart_purchase`
--
ALTER TABLE `cart_purchase`
  ADD PRIMARY KEY (`idcpr`),
  ADD KEY `idprod` (`idprod`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcate`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`nudoc`),
  ADD KEY `idusu` (`idusu`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`idmar`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`idord`),
  ADD KEY `clien_numdoc` (`clien_numdoc`);

--
-- Indices de la tabla `orders_purchase`
--
ALTER TABLE `orders_purchase`
  ADD PRIMARY KEY (`idordpur`),
  ADD KEY `idprov` (`idprov`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idprod`),
  ADD KEY `idcate` (`idcate`),
  ADD KEY `idmar` (`idmar`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`idprov`),
  ADD KEY `idusu` (`idusu`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cart`
--
ALTER TABLE `cart`
  MODIFY `idv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `cart_purchase`
--
ALTER TABLE `cart_purchase`
  MODIFY `idcpr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `idmar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `idord` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `orders_purchase`
--
ALTER TABLE `orders_purchase`
  MODIFY `idordpur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idprod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `idprov` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`idprod`) REFERENCES `productos` (`idprod`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `cart_purchase`
--
ALTER TABLE `cart_purchase`
  ADD CONSTRAINT `cart_purchase_ibfk_1` FOREIGN KEY (`idprod`) REFERENCES `productos` (`idprod`),
  ADD CONSTRAINT `cart_purchase_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`idusu`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`clien_numdoc`) REFERENCES `clientes` (`nudoc`);

--
-- Filtros para la tabla `orders_purchase`
--
ALTER TABLE `orders_purchase`
  ADD CONSTRAINT `orders_purchase_ibfk_1` FOREIGN KEY (`idprov`) REFERENCES `proveedores` (`idprov`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`idcate`) REFERENCES `categoria` (`idcate`),
  ADD CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`idmar`) REFERENCES `marca` (`idmar`);

--
-- Filtros para la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD CONSTRAINT `proveedores_ibfk_1` FOREIGN KEY (`idusu`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
