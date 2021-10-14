-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-10-2021 a las 19:02:48
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pizzeria`
--
CREATE DATABASE IF NOT EXISTS `pizzeria` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pizzeria`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_pizza`
--

CREATE TABLE `categoria_pizza` (
  `id_categoria` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria_pizza`
--

INSERT INTO `categoria_pizza` (`id_categoria`, `descripcion`) VALUES
(2, 'barbacoa'),
(3, 'carbonara'),
(4, 'hawaiana'),
(5, 'Carbonara cebolla'),
(6, 'Pepe Peperoni'),
(7, '4 quesos'),
(8, 'Florentina');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellidos` varchar(40) NOT NULL,
  `direccion` varchar(40) NOT NULL,
  `codigo_postal` decimal(5,0) NOT NULL,
  `localidad_id` int(11) NOT NULL,
  `provincia_id` int(11) NOT NULL,
  `telefono` decimal(9,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `id_empleado` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `nif` varchar(9) NOT NULL,
  `telefono` decimal(9,0) NOT NULL,
  `opcion_trabajo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidad`
--

CREATE TABLE `localidad` (
  `id_localidad` int(11) NOT NULL,
  `descripcion` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `localidad`
--

INSERT INTO `localidad` (`id_localidad`, `descripcion`) VALUES
(1, 'Barcelona'),
(2, 'Hospitalet de LLobregat'),
(3, 'Santa Coloma de Gramanet');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opcion_reparto`
--

CREATE TABLE `opcion_reparto` (
  `id_opcion_reparto` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `opcion_reparto`
--

INSERT INTO `opcion_reparto` (`id_opcion_reparto`, `descripcion`) VALUES
(1, 'reparto a domicilio'),
(2, 'recoger en tienda');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opcion_trabajo`
--

CREATE TABLE `opcion_trabajo` (
  `id_opcion_trabajo` int(11) NOT NULL,
  `descripcion` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `opcion_trabajo`
--

INSERT INTO `opcion_trabajo` (`id_opcion_trabajo`, `descripcion`) VALUES
(1, 'cocinero'),
(2, 'repartidor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id_pedidos` int(11) NOT NULL,
  `fecha/hora` varchar(40) NOT NULL,
  `opcion_reparto_id` int(11) NOT NULL,
  `cantidad` decimal(4,0) NOT NULL,
  `precio_total` int(11) NOT NULL,
  `tienda_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `nombre` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE `provincia` (
  `id_provincia` int(11) NOT NULL,
  `descripcion` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `provincia`
--

INSERT INTO `provincia` (`id_provincia`, `descripcion`) VALUES
(1, 'ALAVA'),
(2, 'ALBACETE'),
(3, 'ALICANTE'),
(4, 'ALMERIA'),
(5, 'AVILA'),
(6, 'BADAJOZ'),
(7, 'I. BALEARS '),
(8, 'BARCELONA'),
(9, 'BURGOS'),
(10, 'CACERES'),
(11, 'CADIZ'),
(12, 'CASTELLON'),
(13, 'CIUDAD REAL'),
(14, 'CORDOBA'),
(15, 'A CORUÑA'),
(16, 'CUENCA'),
(17, 'GIRONA'),
(18, 'GRANADA'),
(19, 'GUADALAJARA'),
(20, 'GUIPUZKOA'),
(21, 'HUELVA'),
(22, 'HUESCA'),
(23, 'JAEN'),
(24, 'LEON'),
(25, 'LLEIDA'),
(26, 'LA RIOJA'),
(27, 'LUGO'),
(28, 'MADRID'),
(29, 'MALAGA'),
(30, 'MURCIA'),
(31, 'NAVARRA'),
(32, 'OURENSE'),
(33, 'ASTURIAS'),
(34, 'PALENCIA'),
(35, 'LAS PALMAS'),
(36, 'PONTEVEDRA'),
(37, 'SALAMANCA'),
(38, 'S.C.TENERIFE'),
(39, 'CANTABRIA'),
(40, 'SEGOVIA'),
(41, 'SEVILLA'),
(42, 'SORIA'),
(43, 'TARRAGONA'),
(44, 'TERUEL'),
(45, 'TODELO'),
(46, 'VALENCIA'),
(47, 'VALLADOLID'),
(48, 'BIZKAIA'),
(49, 'ZAMORA'),
(50, 'ZARAGOZA'),
(51, 'CEUTA'),
(52, 'MELILLA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tienda`
--

CREATE TABLE `tienda` (
  `id_tienda` int(11) NOT NULL,
  `direccion` int(11) NOT NULL,
  `codigo_postal` int(11) NOT NULL,
  `localidad_id` int(11) NOT NULL,
  `provincia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria_pizza`
--
ALTER TABLE `categoria_pizza`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `localidad_id` (`localidad_id`),
  ADD KEY `provincia_id` (`provincia_id`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD KEY `opcion_trabajo_id` (`opcion_trabajo_id`);

--
-- Indices de la tabla `localidad`
--
ALTER TABLE `localidad`
  ADD PRIMARY KEY (`id_localidad`);

--
-- Indices de la tabla `opcion_reparto`
--
ALTER TABLE `opcion_reparto`
  ADD PRIMARY KEY (`id_opcion_reparto`);

--
-- Indices de la tabla `opcion_trabajo`
--
ALTER TABLE `opcion_trabajo`
  ADD PRIMARY KEY (`id_opcion_trabajo`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id_pedidos`),
  ADD KEY `opcion_reparto_id` (`opcion_reparto_id`),
  ADD KEY `tienda_id` (`tienda_id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`id_provincia`);

--
-- Indices de la tabla `tienda`
--
ALTER TABLE `tienda`
  ADD PRIMARY KEY (`id_tienda`),
  ADD KEY `localidad_id` (`localidad_id`),
  ADD KEY `provincia_id` (`provincia_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria_pizza`
--
ALTER TABLE `categoria_pizza`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `localidad`
--
ALTER TABLE `localidad`
  MODIFY `id_localidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `opcion_reparto`
--
ALTER TABLE `opcion_reparto`
  MODIFY `id_opcion_reparto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `opcion_trabajo`
--
ALTER TABLE `opcion_trabajo`
  MODIFY `id_opcion_trabajo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id_pedidos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `provincia`
--
ALTER TABLE `provincia`
  MODIFY `id_provincia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `tienda`
--
ALTER TABLE `tienda`
  MODIFY `id_tienda` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`provincia_id`) REFERENCES `provincia` (`id_provincia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `cliente_ibfk_2` FOREIGN KEY (`localidad_id`) REFERENCES `localidad` (`id_localidad`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`opcion_trabajo_id`) REFERENCES `opcion_trabajo` (`id_opcion_trabajo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`opcion_reparto_id`) REFERENCES `opcion_reparto` (`id_opcion_reparto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`tienda_id`) REFERENCES `tienda` (`id_tienda`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tienda`
--
ALTER TABLE `tienda`
  ADD CONSTRAINT `tienda_ibfk_1` FOREIGN KEY (`provincia_id`) REFERENCES `provincia` (`id_provincia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tienda_ibfk_2` FOREIGN KEY (`localidad_id`) REFERENCES `localidad` (`id_localidad`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
