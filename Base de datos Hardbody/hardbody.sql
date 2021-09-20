-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-09-2021 a las 06:00:18
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hardbody`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `afiliado`
--

CREATE TABLE `afiliado` (
  `numero` bigint(20) UNSIGNED NOT NULL,
  `Id afiliado` varchar(11) COLLATE latin1_spanish_ci NOT NULL,
  `Nombres` varchar(45) COLLATE latin1_spanish_ci NOT NULL DEFAULT 'NOT NULL',
  `Apellidos` varchar(45) COLLATE latin1_spanish_ci NOT NULL DEFAULT 'NOT NULL',
  `Barrio` varchar(20) COLLATE latin1_spanish_ci NOT NULL DEFAULT 'NOT NULL',
  `Direccion` varchar(30) COLLATE latin1_spanish_ci NOT NULL DEFAULT 'NOT NULL',
  `Telefono` varchar(10) COLLATE latin1_spanish_ci NOT NULL DEFAULT 'NOT NULL',
  `Año matricula` year(4) NOT NULL,
  `Entrenador` int(11) NOT NULL,
  `Usser afiliado` varchar(13) COLLATE latin1_spanish_ci NOT NULL,
  `password` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrenador`
--

CREATE TABLE `entrenador` (
  `Id entrenador` varchar(11) COLLATE latin1_spanish_ci NOT NULL DEFAULT 'NOT NULL',
  `Nombres` varchar(45) COLLATE latin1_spanish_ci NOT NULL DEFAULT 'NOT NULL',
  `Apellidos` varchar(45) COLLATE latin1_spanish_ci NOT NULL DEFAULT 'NOT NULL',
  `Titulo entrenador` int(11) NOT NULL,
  `Año nacimiento` date NOT NULL,
  `Telefono` varchar(10) COLLATE latin1_spanish_ci NOT NULL,
  `Barrio` varchar(20) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ID usuario` varchar(11) COLLATE latin1_spanish_ci NOT NULL,
  `Rol usuario` varchar(25) COLLATE latin1_spanish_ci NOT NULL DEFAULT 'NOT NULL',
  `nick` varchar(12) COLLATE latin1_spanish_ci NOT NULL,
  `password` varchar(25) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `afiliado`
--
ALTER TABLE `afiliado`
  ADD PRIMARY KEY (`Id afiliado`),
  ADD UNIQUE KEY `numero` (`numero`);

--
-- Indices de la tabla `entrenador`
--
ALTER TABLE `entrenador`
  ADD UNIQUE KEY `num entrenador` (`Id entrenador`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `afiliado`
--
ALTER TABLE `afiliado`
  MODIFY `numero` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
