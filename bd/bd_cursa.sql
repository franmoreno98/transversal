-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-11-2020 a las 17:18:27
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_cursa`
--
CREATE DATABASE IF NOT EXISTS `bd_cursa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bd_cursa`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_categoria`
--

CREATE TABLE `tbl_categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre_categoria` varchar(40) NOT NULL,
  `sexo_categoria` enum('Home','Dona') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_categoria`
--

INSERT INTO `tbl_categoria` (`id_categoria`, `nombre_categoria`, `sexo_categoria`) VALUES
(1, 'Alevin(6-10 Anys)', 'Home'),
(2, 'Infantil(11-14 Anys)', 'Home'),
(3, 'Cadete(15-16 Anys)', 'Home'),
(4, 'Juvenil(17-18 Anys)', 'Home'),
(5, 'Alevin(6-10 Anys)', 'Dona'),
(6, 'Infantil(11-14 Anys)', 'Dona'),
(7, 'Cadete(15-16 Anys)', 'Dona'),
(8, 'Juvenil(17-18 Anys)', 'Dona'),
(9, 'Senior (+18)', 'Home'),
(10, 'Senior (+18)', 'Dona');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cursa`
--

CREATE TABLE `tbl_cursa` (
  `id_cursa` int(11) NOT NULL,
  `nombre_cursa` varchar(40) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_cursa`
--

INSERT INTO `tbl_cursa` (`id_cursa`, `nombre_cursa`, `fecha`) VALUES
(1, 'Primera Cursa', '2020-12-24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_inscripcio`
--

CREATE TABLE `tbl_inscripcio` (
  `id_inscripcio` int(11) NOT NULL,
  `dorsal` int(4) NOT NULL,
  `id_participant` int(11) NOT NULL,
  `id_cursa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_inscripcio`
--

INSERT INTO `tbl_inscripcio` (`id_inscripcio`, `dorsal`, `id_participant`, `id_cursa`) VALUES
(1, 1, 1, 1),
(30, 2, 126, 1),
(31, 3, 134, 1),
(32, 4, 135, 1),
(33, 5, 136, 1),
(34, 6, 137, 1),
(35, 7, 138, 1),
(36, 8, 139, 1),
(37, 9, 140, 1),
(38, 10, 141, 1),
(39, 11, 142, 1),
(40, 12, 143, 1),
(41, 13, 144, 1),
(42, 14, 145, 1),
(43, 15, 146, 1),
(44, 16, 147, 1),
(45, 17, 148, 1),
(46, 18, 149, 1),
(47, 19, 150, 1),
(48, 20, 151, 1),
(49, 21, 152, 1),
(50, 22, 153, 1),
(51, 23, 154, 1),
(52, 24, 155, 1),
(53, 25, 156, 1),
(54, 26, 157, 1),
(55, 27, 158, 1),
(56, 28, 159, 1),
(57, 29, 160, 1),
(58, 30, 161, 1),
(59, 31, 162, 1),
(60, 32, 163, 1),
(61, 33, 164, 1),
(62, 34, 165, 1),
(63, 35, 166, 1),
(64, 36, 167, 1),
(65, 37, 168, 1),
(66, 38, 169, 1),
(67, 39, 170, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_participant`
--

CREATE TABLE `tbl_participant` (
  `id_participant` int(11) NOT NULL,
  `dni_part` varchar(9) NOT NULL,
  `nom_part` varchar(50) NOT NULL,
  `primer` varchar(50) NOT NULL,
  `segon` varchar(50) NOT NULL,
  `fecha_naci` date NOT NULL,
  `email_part` varchar(100) NOT NULL,
  `sexe` varchar(10) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_participant`
--

INSERT INTO `tbl_participant` (`id_participant`, `dni_part`, `nom_part`, `primer`, `segon`, `fecha_naci`, `email_part`, `sexe`, `id_categoria`) VALUES
(1, '21784584L', 'Fran', 'Moreno', 'Cazadilla', '1998-04-09', 'fran@fran.com', 'home', 9),
(126, '21784584L', 'Juana', 'Garcia', 'Alvarez', '2020-11-15', 'prueba@prueba.com', 'dona', 3),
(127, '21784584L', '', '', '', '0000-00-00', '', 'home', 3),
(128, '21784584L', '', '', '', '0000-00-00', '', 'home', 3),
(129, '21784584L', '', '', '', '0000-00-00', '', 'home', 3),
(130, '', '', '', '', '0000-00-00', '', 'home', 3),
(131, '', '', '', '', '0000-00-00', '', 'home', 3),
(132, '21784584L', 'dsfsf', 'rgtr', 'gdfg', '2020-11-13', 'fdgdf', 'home', 3),
(133, '21784584L', 'jon', 'irirartre', 'prueba1', '2020-11-01', 'prueba@prueba.com', 'home', 3),
(134, '21784584L', 'Jon', 'Iriarte', 'Vasco', '2020-06-11', 'prueba@prueba.com', 'dona', 3),
(135, '12345678', 'prueba', 'sdfds', 'zvzxv', '2020-11-08', 'dfds', 'home', 3),
(136, '12345678', 'prueba', 'sdfds', 'zvzxv', '2020-11-08', 'dfds', 'home', 3),
(137, '12345678', 'prueba', 'sdfds', 'zvzxv', '2020-11-08', 'dfds', 'home', 3),
(138, '12345678', 'prueba', 'sdfds', 'zvzxv', '2020-11-08', 'dfds', 'home', 3),
(139, '21784584L', 'antonio', 'sdfds', 'zvzxv', '2020-11-07', 'dfds', 'home', 3),
(140, 'asafadsf', '', '', '', '0000-00-00', '', 'home', 3),
(141, 'asafadsf', '', '', '', '0000-00-00', '', 'home', 3),
(142, '21784584L', '', '', '', '0000-00-00', '', 'home', 3),
(143, '21784584L', '', '', '', '0000-00-00', '', 'home', 3),
(144, '21784584', 'prueba', 'sdfds', 'algo', '2020-11-01', 'prueba@prueba.com', 'home', 3),
(145, '21784584L', '', '', '', '0000-00-00', '', 'home', 3),
(146, '21784584L', '', '', '', '0000-00-00', '', 'home', 3),
(147, '21784584L', '', '', '', '0000-00-00', '', 'home', 3),
(148, '', '', '', '', '0000-00-00', '', 'home', 3),
(149, '', '', '', '', '0000-00-00', '', 'home', 3),
(150, '', '', '', '', '0000-00-00', '', 'home', 3),
(151, 'dasdas', '', '', '', '0000-00-00', '', 'home', 3),
(152, '', '', '', '', '0000-00-00', '', 'home', 3),
(153, '', '', '', '', '0000-00-00', '', 'home', 3),
(154, '', '', '', '', '0000-00-00', '', 'home', 3),
(155, 'dfs', '', '', '', '0000-00-00', '', 'home', 3),
(156, '21784584L', '', '', '', '0000-00-00', '', 'home', 3),
(157, '', '', '', '', '0000-00-00', '', 'home', 3),
(158, '', '', '', '', '0000-00-00', '', 'home', 3),
(159, '', '', '', '', '0000-00-00', '', 'home', 3),
(160, '', '', '', '', '0000-00-00', '', 'home', 3),
(161, '', '', '', '', '0000-00-00', '', 'home', 3),
(162, '', '', '', '', '0000-00-00', '', 'home', 3),
(163, '', '', '', '', '0000-00-00', '', 'home', 3),
(164, '', '', '', '', '0000-00-00', '', 'home', 3),
(165, '', '', '', '', '0000-00-00', '', 'home', 3),
(166, '', '', '', '', '0000-00-00', '', 'home', 3),
(167, '', '', '', '', '0000-00-00', '', 'home', 3),
(168, '21784584L', '', '', '', '0000-00-00', '', 'home', 3),
(169, '21784584L', 'prueba', 'prueba1', 'prueba1', '2020-11-06', 'prueba@prueba.com', 'home', 3),
(170, '21784584L', 'prueba', 'cdcz', 'zvzxv', '1777-03-19', 'xzvcx', 'dona', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_categoria`
--
ALTER TABLE `tbl_categoria`
  ADD PRIMARY KEY (`id_categoria`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `tbl_cursa`
--
ALTER TABLE `tbl_cursa`
  ADD PRIMARY KEY (`id_cursa`),
  ADD KEY `id_cursa` (`id_cursa`);

--
-- Indices de la tabla `tbl_inscripcio`
--
ALTER TABLE `tbl_inscripcio`
  ADD PRIMARY KEY (`id_inscripcio`),
  ADD KEY `id_inscripcio` (`id_inscripcio`,`id_participant`,`id_cursa`),
  ADD KEY `FK_INSCRIPCIO_CURSA` (`id_cursa`),
  ADD KEY `FK_INSCRIPCIO_PARTICIPANT` (`id_participant`);

--
-- Indices de la tabla `tbl_participant`
--
ALTER TABLE `tbl_participant`
  ADD PRIMARY KEY (`id_participant`),
  ADD KEY `id_participant` (`id_participant`,`id_categoria`),
  ADD KEY `FK_PARTICIPANT_CATEGORIA` (`id_categoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_categoria`
--
ALTER TABLE `tbl_categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tbl_cursa`
--
ALTER TABLE `tbl_cursa`
  MODIFY `id_cursa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_inscripcio`
--
ALTER TABLE `tbl_inscripcio`
  MODIFY `id_inscripcio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT de la tabla `tbl_participant`
--
ALTER TABLE `tbl_participant`
  MODIFY `id_participant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_inscripcio`
--
ALTER TABLE `tbl_inscripcio`
  ADD CONSTRAINT `FK_INSCRIPCIO_CURSA` FOREIGN KEY (`id_cursa`) REFERENCES `tbl_cursa` (`id_cursa`),
  ADD CONSTRAINT `FK_INSCRIPCIO_PARTICIPANT` FOREIGN KEY (`id_participant`) REFERENCES `tbl_participant` (`id_participant`);

--
-- Filtros para la tabla `tbl_participant`
--
ALTER TABLE `tbl_participant`
  ADD CONSTRAINT `FK_PARTICIPANT_CATEGORIA` FOREIGN KEY (`id_categoria`) REFERENCES `tbl_categoria` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
