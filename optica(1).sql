-- phpMyAdmin SQL Dump
-- version 5.0.4deb2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Temps de generació: 13-10-2021 a les 13:08:52
-- Versió del servidor: 10.5.12-MariaDB-0+deb11u1
-- Versió de PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de dades: `optica`
--
CREATE DATABASE IF NOT EXISTS `optica` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `optica`;

-- --------------------------------------------------------

--
-- Estructura de la taula `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes` (
  `id-cliente` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `direccion_postal` varchar(10) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `fecha_registro` varchar(8) NOT NULL,
  `id_cliente_recomendado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Trunca la taula abans de la inserció `clientes`
--

TRUNCATE TABLE `clientes`;
--
-- Bolcament de dades per a la taula `clientes`
--

INSERT INTO `clientes` (`id-cliente`, `nombre`, `direccion_postal`, `telefono`, `email`, `fecha_registro`, `id_cliente_recomendado`) VALUES
(1, 'Manolo', '08022', '933333333', 'manolo@yahoo.com', '20201220', NULL),
(2, 'Astrid', '08023', '933333334', 'as@yahoo.com', '20210115', 1);

-- --------------------------------------------------------

--
-- Estructura de la taula `direccion`
--

DROP TABLE IF EXISTS `direccion`;
CREATE TABLE `direccion` (
  `id-direccion` int(11) NOT NULL,
  `calle` varchar(255) NOT NULL,
  `numero` int(11) NOT NULL,
  `piso` int(11) NOT NULL,
  `puerta` varchar(3) NOT NULL,
  `ciudad` varchar(30) NOT NULL,
  `codigo_postal` int(11) NOT NULL,
  `pais` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Trunca la taula abans de la inserció `direccion`
--

TRUNCATE TABLE `direccion`;
--
-- Bolcament de dades per a la taula `direccion`
--

INSERT INTO `direccion` (`id-direccion`, `calle`, `numero`, `piso`, `puerta`, `ciudad`, `codigo_postal`, `pais`) VALUES
(1, 'calle de los pro1', 100, 1, 'a', 'barcelona', 8099, '1'),
(2, 'calle de los pro2', 200, 2, 'b', 'Bilbao', 99999, '1'),
(3, 'calle de los pro3', 101, 3, 'a', 'Barcelona', 8000, '1'),
(4, 'calle de los pro4', 201, 4, 'b', 'Valencia', 89999, '1');

-- --------------------------------------------------------

--
-- Estructura de la taula `empleado`
--

DROP TABLE IF EXISTS `empleado`;
CREATE TABLE `empleado` (
  `id_empleado` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Trunca la taula abans de la inserció `empleado`
--

TRUNCATE TABLE `empleado`;
--
-- Bolcament de dades per a la taula `empleado`
--

INSERT INTO `empleado` (`id_empleado`, `Nombre`) VALUES
(1, 'Anna'),
(2, 'Pablo');

-- --------------------------------------------------------

--
-- Estructura de la taula `gafas`
--

DROP TABLE IF EXISTS `gafas`;
CREATE TABLE `gafas` (
  `id_gafas` int(11) NOT NULL,
  `ProveidorID` int(11) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `graduacion` varchar(10) NOT NULL,
  `idTipoMontura` int(11) NOT NULL,
  `colorMontura` varchar(20) NOT NULL,
  `colorVidrio` varchar(20) NOT NULL,
  `precio` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Trunca la taula abans de la inserció `gafas`
--

TRUNCATE TABLE `gafas`;
--
-- Bolcament de dades per a la taula `gafas`
--

INSERT INTO `gafas` (`id_gafas`, `ProveidorID`, `marca`, `graduacion`, `idTipoMontura`, `colorMontura`, `colorVidrio`, `precio`) VALUES
(1, 1, 'marca1', '2', 2, 'negro', 'claro', '90.00'),
(2, 2, 'marca2', '1', 3, 'marrón', 'amarillo', '80.00'),
(3, 2, 'tintin', '0.5 d.', 3, 'oro', 'claro', '190.50');

-- --------------------------------------------------------

--
-- Estructura de la taula `monturas`
--

DROP TABLE IF EXISTS `monturas`;
CREATE TABLE `monturas` (
  `idTipoMontura` int(11) NOT NULL,
  `descripcion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Trunca la taula abans de la inserció `monturas`
--

TRUNCATE TABLE `monturas`;
--
-- Bolcament de dades per a la taula `monturas`
--

INSERT INTO `monturas` (`idTipoMontura`, `descripcion`) VALUES
(1, 'flotant'),
(2, 'pasta'),
(3, 'metàl·lica');

-- --------------------------------------------------------

--
-- Estructura de la taula `proveidor`
--

DROP TABLE IF EXISTS `proveidor`;
CREATE TABLE `proveidor` (
  `ProveidorID` int(11) NOT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `fax` varchar(10) DEFAULT NULL,
  `Nif` varchar(10) DEFAULT NULL,
  `id-direccion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Trunca la taula abans de la inserció `proveidor`
--

TRUNCATE TABLE `proveidor`;
--
-- Bolcament de dades per a la taula `proveidor`
--

INSERT INTO `proveidor` (`ProveidorID`, `Nombre`, `telefono`, `fax`, `Nif`, `id-direccion`) VALUES
(1, 'Pro1', '910000001', '123000001', '12313212', 1),
(2, 'Pro2', '910000002', '123000002', '213213123', 2),
(3, 'Pro3', '910000003', '123000003', '12313222', 3),
(4, 'Pro4', '910000004', '123000004', '434342342', 4);

-- --------------------------------------------------------

--
-- Estructura de la taula `venta`
--

DROP TABLE IF EXISTS `venta`;
CREATE TABLE `venta` (
  `id_venta` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `id_gafas` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Trunca la taula abans de la inserció `venta`
--

TRUNCATE TABLE `venta`;
--
-- Bolcament de dades per a la taula `venta`
--

INSERT INTO `venta` (`id_venta`, `id_empleado`, `id_gafas`, `id_cliente`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2);

--
-- Índexs per a les taules bolcades
--

--
-- Índexs per a la taula `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id-cliente`),
  ADD KEY `id_cliente_recomendado` (`id_cliente_recomendado`);

--
-- Índexs per a la taula `direccion`
--
ALTER TABLE `direccion`
  ADD PRIMARY KEY (`id-direccion`);

--
-- Índexs per a la taula `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id_empleado`);

--
-- Índexs per a la taula `gafas`
--
ALTER TABLE `gafas`
  ADD PRIMARY KEY (`id_gafas`),
  ADD KEY `ProveidorID` (`ProveidorID`),
  ADD KEY `idTipoMontura` (`idTipoMontura`);

--
-- Índexs per a la taula `monturas`
--
ALTER TABLE `monturas`
  ADD PRIMARY KEY (`idTipoMontura`);

--
-- Índexs per a la taula `proveidor`
--
ALTER TABLE `proveidor`
  ADD PRIMARY KEY (`ProveidorID`),
  ADD KEY `id-direccion` (`id-direccion`);

--
-- Índexs per a la taula `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `id_empleado` (`id_empleado`),
  ADD KEY `id_gafas` (`id_gafas`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- AUTO_INCREMENT per les taules bolcades
--

--
-- AUTO_INCREMENT per la taula `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id-cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la taula `direccion`
--
ALTER TABLE `direccion`
  MODIFY `id-direccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT per la taula `empleado`
--
ALTER TABLE `empleado`
  MODIFY `id_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la taula `gafas`
--
ALTER TABLE `gafas`
  MODIFY `id_gafas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la taula `monturas`
--
ALTER TABLE `monturas`
  MODIFY `idTipoMontura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la taula `proveidor`
--
ALTER TABLE `proveidor`
  MODIFY `ProveidorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT per la taula `venta`
--
ALTER TABLE `venta`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restriccions per a les taules bolcades
--

--
-- Restriccions per a la taula `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`id_cliente_recomendado`) REFERENCES `clientes` (`id-cliente`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Restriccions per a la taula `gafas`
--
ALTER TABLE `gafas`
  ADD CONSTRAINT `gafas_ibfk_1` FOREIGN KEY (`ProveidorID`) REFERENCES `proveidor` (`ProveidorID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gafas_ibfk_2` FOREIGN KEY (`idTipoMontura`) REFERENCES `monturas` (`idTipoMontura`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restriccions per a la taula `proveidor`
--
ALTER TABLE `proveidor`
  ADD CONSTRAINT `proveidor_ibfk_1` FOREIGN KEY (`id-direccion`) REFERENCES `direccion` (`id-direccion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restriccions per a la taula `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id-cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `venta_ibfk_3` FOREIGN KEY (`id_gafas`) REFERENCES `gafas` (`id_gafas`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
