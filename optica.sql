-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-10-2021 a las 18:51:59
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
-- Base de datos: `optica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id-cliente` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `direccion_postal` varchar(10) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `fecha_registro` varchar(8) NOT NULL,
  `id_cliente_recomendado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE `direccion` (
  `id-direccion` int(11) NOT NULL,
  `calle` varchar(255) NOT NULL,
  `numero` int(11) NOT NULL,
  `piso` int(11) NOT NULL,
  `puerta` varchar(3) NOT NULL,
  `ciudad` varchar(30) NOT NULL,
  `codigo_postal` int(11) NOT NULL,
  `pais` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `direccion`
--

INSERT INTO `direccion` (`id-direccion`, `calle`, `numero`, `piso`, `puerta`, `ciudad`, `codigo_postal`, `pais`) VALUES
(1, 'calle de los pro1', 100, 1, 'a', 'barcelona', 8099, 1),
(2, 'calle de los pro2', 200, 2, 'b', 'Bilbao', 99999, 1),
(3, 'calle de los pro3', 101, 3, 'a', 'Barcelona', 8000, 1),
(4, 'calle de los pro4', 201, 4, 'b', 'Valencia', 89999, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `id_empleado` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id_empleado`, `Nombre`) VALUES
(1, 'Anna'),
(2, 'Pablo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gafas`
--

CREATE TABLE `gafas` (
  `id_gafas` int(11) NOT NULL,
  `ProveidorID` int(11) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `graduacion` varchar(10) NOT NULL,
  `idTipoMontura` int(11) NOT NULL,
  `colorMontura` varchar(20) NOT NULL,
  `colorVidrio` varchar(20) NOT NULL,
  `precio` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monturas`
--

CREATE TABLE `monturas` (
  `idTipoMontura` int(11) NOT NULL,
  `descripcion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `monturas`
--

INSERT INTO `monturas` (`idTipoMontura`, `descripcion`) VALUES
(1, 'flotant'),
(2, 'pasta'),
(3, 'metàl·lica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveidor`
--

CREATE TABLE `proveidor` (
  `ProveidorID` int(11) NOT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `fax` varchar(10) DEFAULT NULL,
  `Nif` varchar(10) DEFAULT NULL,
  `id-direccion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveidor`
--

INSERT INTO `proveidor` (`ProveidorID`, `Nombre`, `telefono`, `fax`, `Nif`, `id-direccion`) VALUES
(1, 'Pro1', '910000001', '123000001', '12313212', 1),
(2, 'Pro2', '910000002', '123000002', '213213123', 2),
(3, 'Pro3', '910000003', '123000003', '12313222', 3),
(4, 'Pro4', '910000004', '123000004', '434342342', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id_venta` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `id_gafas` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id-cliente`);

--
-- Indices de la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD PRIMARY KEY (`id-direccion`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id_empleado`);

--
-- Indices de la tabla `gafas`
--
ALTER TABLE `gafas`
  ADD PRIMARY KEY (`id_gafas`);

--
-- Indices de la tabla `monturas`
--
ALTER TABLE `monturas`
  ADD PRIMARY KEY (`idTipoMontura`);

--
-- Indices de la tabla `proveidor`
--
ALTER TABLE `proveidor`
  ADD PRIMARY KEY (`ProveidorID`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id_venta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `direccion`
--
ALTER TABLE `direccion`
  MODIFY `id-direccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `id_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `gafas`
--
ALTER TABLE `gafas`
  MODIFY `id_gafas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `monturas`
--
ALTER TABLE `monturas`
  MODIFY `idTipoMontura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `proveidor`
--
ALTER TABLE `proveidor`
  MODIFY `ProveidorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
