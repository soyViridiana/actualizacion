-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-06-2023 a las 04:36:36
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ejercicio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auto`
--

CREATE TABLE `auto` (
  `autoid` int(11) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL,
  `año` varchar(50) NOT NULL,
  `costo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auto`
--

INSERT INTO `auto` (`autoid`, `marca`, `modelo`, `color`, `año`, `costo`) VALUES
(6, 'Volkswagen', 'Gol', 'Morado', '2021', '127000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `clienteid` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `municipio` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`clienteid`, `nombre`, `telefono`, `municipio`) VALUES
(3, 'Alejandro', '7295510251', 'Tecamac'),
(4, 'Alfonso', '12345789', 'Tizayuca');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `contactoid` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `ap` varchar(50) NOT NULL,
  `am` varchar(50) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `correo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`contactoid`, `nombre`, `ap`, `am`, `telefono`, `correo`) VALUES
(7, 'Alejandro', 'morales', 'martinez', '7297372423', 'randall2422@gmail.com'),
(9, 'Viridiana', 'Morales', 'Martinez', '4485862238', 'viridiana@gmail.com'),
(10, 'Daniel', 'Cruz', 'Cruz', '2145789379', 'dono@gmail.com'),
(11, 'Pancho', 'Hernández', 'Taco', '1234569875', 'pancho@hmail.com'),
(12, 'Alfredo', 'Limon', 'Sanchez', '5164216451', 'alfredoSan@gmail.com'),
(13, 'Emma', 'Castañeda', 'Cuevas', '1654575658', 'emma@gmail.com'),
(14, 'Adela', 'Micha', 'Diaz', '1478523698', 'adela@gmail.com'),
(15, 'Noe', 'Diaz', 'Mondragon', '1547893596', 'noediaz@gmail.com'),
(16, 'Paquito', 'Acuña', 'Perez', '1475963258', 'paquitoooos@gmail.com'),
(17, 'Magui', 'Guadarrama', 'Villagomez', '2547896325', 'magui@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuarioid` int(11) NOT NULL,
  `correo` varchar(60) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nombre` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuarioid`, `correo`, `password`, `nombre`) VALUES
(1, 'pepo12@hotmail.com', 'cf3bfb01e6cb9d1b25e03db6c4fae4a4', 'pepo'),
(2, 'randall2422@gmail.com', 'c05de340d066f29d7fad67adeea38022', 'pepo'),
(3, 'elrandall22@hotmail.com', 'b1908ed867277ee684d8ea8804cd10ef', 'Randall'),
(4, 'pocho22@hotmail.com', 'b1908ed867277ee684d8ea8804cd10ef', 'pocholo'),
(5, 'pepoide12@hotmail.com', 'b1908ed867277ee684d8ea8804cd10ef', 'pepo'),
(6, 'queso@gmail.com', '3e11771c435f29e466364664f9d0b0c1', 'queso'),
(7, 'hola22@gmail.com', '3e11771c435f29e466364664f9d0b0c1', 'Ana'),
(8, 'viridianamm863@gmail.com', '3e11771c435f29e466364664f9d0b0c1', 'Viridiana'),
(9, 'moralesviridiana027@gmail.com', '3e11771c435f29e466364664f9d0b0c1', 'Ana'),
(10, 'prueba@gmail.com', '3b19144cdd71ac0a084135542b28aaf2', 'testing'),
(11, 'viridiana@gmail.com', '18bd731e629fee34ef6f872c6805f7a1', 'Viridiana'),
(12, 'daniel@gmail.com', 'b71004262fee819a9d042281dd799fb1', 'Daniel');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auto`
--
ALTER TABLE `auto`
  ADD PRIMARY KEY (`autoid`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`clienteid`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`contactoid`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuarioid`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auto`
--
ALTER TABLE `auto`
  MODIFY `autoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `clienteid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `contactoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usuarioid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
