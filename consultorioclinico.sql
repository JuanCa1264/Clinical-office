-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-06-2019 a las 17:24:15
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `consultorioclinico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cita`
--

CREATE TABLE `cita` (
  `Id_Cita` int(11) NOT NULL,
  `Id_Paciente` int(11) NOT NULL,
  `Id_Doctor` int(11) NOT NULL,
  `Fecha_Cita` date NOT NULL,
  `Hora` time NOT NULL,
  `Estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cita`
--

INSERT INTO `cita` (`Id_Cita`, `Id_Paciente`, `Id_Doctor`, `Fecha_Cita`, `Hora`, `Estado`) VALUES
(10, 31, 3, '2019-05-14', '03:54:00', 'Cancelada'),
(12, 32, 2, '2019-06-08', '04:20:00', 'Abierta'),
(13, 34, 2, '2019-05-07', '09:05:00', 'Finalizada'),
(64, 32, 3, '2019-05-29', '16:13:00', 'Finalizada'),
(66, 35, 3, '2019-05-26', '17:14:00', 'Finalizada'),
(67, 34, 3, '2019-05-24', '17:16:00', 'Finalizada'),
(68, 31, 2, '2019-06-08', '03:40:00', 'Pendiente'),
(69, 58, 3, '2019-05-31', '10:15:00', 'Finalizada'),
(70, 34, 3, '2019-06-03', '01:58:00', 'Finalizada'),
(75, 35, 3, '2019-06-03', '06:05:00', 'Finalizada'),
(78, 34, 2, '2019-07-09', '08:02:00', 'Pendiente'),
(81, 35, 2, '2019-06-03', '13:12:00', 'Pendiente'),
(82, 35, 2, '2019-06-03', '13:12:00', 'Pendiente'),
(83, 35, 2, '2019-06-03', '13:12:00', 'Pendiente'),
(84, 57, 2, '2019-06-03', '09:08:00', 'Pendiente'),
(86, 34, 2, '2019-06-03', '05:45:00', 'Pendiente'),
(87, 34, 2, '2019-06-03', '05:45:00', 'Pendiente'),
(88, 34, 2, '2019-06-03', '05:45:00', 'Pendiente'),
(89, 34, 2, '2019-06-03', '05:45:00', 'Pendiente'),
(90, 34, 2, '2019-06-03', '09:12:00', 'Pendiente'),
(91, 34, 2, '2019-06-03', '09:12:00', 'Pendiente'),
(92, 57, 2, '2019-06-03', '09:04:00', 'Pendiente'),
(93, 57, 2, '2019-06-03', '09:04:00', 'Pendiente'),
(94, 35, 2, '2019-06-03', '12:00:00', 'Pendiente'),
(95, 35, 2, '2019-06-03', '10:00:00', 'Pendiente'),
(96, 32, 2, '2019-06-03', '14:05:00', 'Pendiente'),
(97, 35, 2, '2019-06-03', '13:55:00', 'Pendiente'),
(98, 32, 2, '2019-06-03', '12:00:00', 'Pendiente'),
(99, 57, 2, '2019-06-03', '11:20:00', 'Pendiente'),
(100, 32, 2, '2019-06-03', '12:00:00', 'Pendiente'),
(101, 57, 2, '2019-06-04', '06:00:00', 'Pendiente'),
(102, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(103, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(104, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(105, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(106, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(108, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(109, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(110, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(112, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(113, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(114, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(115, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(116, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(119, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(120, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(121, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(122, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(123, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(124, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(125, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(126, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(127, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(128, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(129, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(130, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(131, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(132, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(133, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(134, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(135, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(136, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(137, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(138, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(139, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(140, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(141, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(142, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(143, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(144, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(145, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(146, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(147, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(148, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(149, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(154, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(155, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(156, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(157, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(158, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(159, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(160, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(161, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(162, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(163, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(164, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(165, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(166, 58, 2, '2019-06-05', '20:00:00', 'Pendiente'),
(167, 58, 2, '2019-07-03', '21:00:00', 'Pendiente'),
(168, 35, 2, '2019-07-03', '21:50:00', 'Pendiente'),
(169, 35, 2, '2019-07-02', '06:23:00', 'Pendiente'),
(170, 35, 2, '2019-06-08', '03:03:00', 'Pendiente'),
(171, 31, 2, '2019-06-05', '21:00:00', 'Pendiente'),
(172, 57, 2, '2019-06-05', '21:00:00', 'Pendiente'),
(173, 31, 2, '2019-06-05', '21:00:00', 'Pendiente'),
(174, 31, 2, '2019-06-08', '03:00:00', 'Pendiente'),
(185, 31, 2, '2019-06-08', '03:00:00', 'Pendiente'),
(187, 31, 2, '2019-06-08', '06:00:00', 'Pendiente'),
(188, 31, 3, '2019-06-03', '09:30:00', 'Finalizada'),
(189, 31, 3, '2019-06-06', '11:00:00', 'Finalizada'),
(190, 31, 2, '2019-06-07', '14:05:00', 'Pendiente'),
(191, 31, 2, '2019-06-07', '14:01:00', 'Pendiente'),
(192, 31, 2, '2019-06-07', '15:00:00', 'Pendiente'),
(193, 31, 2, '2019-06-06', '05:01:00', 'Pendiente'),
(194, 31, 2, '2019-06-06', '07:01:00', 'Pendiente'),
(195, 32, 3, '2019-06-06', '09:12:00', 'Finalizada'),
(196, 164, 3, '2019-06-28', '09:15:00', 'Finalizada'),
(197, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(198, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(199, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(200, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(201, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(202, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(203, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(204, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(205, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(206, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(207, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(208, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(209, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(210, 178, 2, '0000-00-00', '00:00:00', 'Finalizada'),
(211, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(212, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(213, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(214, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(215, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(216, 31, 2, '2019-09-01', '14:04:00', 'Pendiente'),
(217, 31, 2, '2019-09-01', '14:04:00', 'Pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consulta`
--

CREATE TABLE `consulta` (
  `Id_Consulta` int(11) NOT NULL,
  `Id_Cita` int(11) NOT NULL,
  `Motivo_Consulta` varchar(250) NOT NULL,
  `Sintomas` varchar(250) NOT NULL,
  `Padecimiento` varchar(250) NOT NULL,
  `Examenes` varchar(250) NOT NULL,
  `Fecha_Consulta` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `consulta`
--

INSERT INTO `consulta` (`Id_Consulta`, `Id_Cita`, `Motivo_Consulta`, `Sintomas`, `Padecimiento`, `Examenes`, `Fecha_Consulta`) VALUES
(6, 10, '', 'Ninguno', 'Ninguno', 'Ninguno', '0000-00-00'),
(7, 10, '', 'N/A', 'N/A', 'N/A', '0000-00-00'),
(8, 12, '', 'Ninguno', 'Ninguno', 'Ninguno', '0000-00-00'),
(9, 12, '', 'Fiebre', 'Gripe de pollo :v', 'Terapia', '0000-00-00'),
(10, 12, '', 'Sanita :3', 'Ninguno', 'Ninguno', '0000-00-00'),
(11, 10, 'Gripe', 'Ninguno', 'Nada', 'Terapia', '0000-00-00'),
(12, 10, 'N/A', 'N/A', 'N/A', 'N/A', '0000-00-00'),
(13, 10, 'N/A', 'N/A', 'N/A', 'N/A', '0000-00-00'),
(22, 13, 'N/A', 'Fiebre', 'Hoy', 'MaÃ±ana', '2019-05-24'),
(25, 66, 'Nuevo', 'Nuevo', 'Nuevo', 'Nuevo', '2019-05-26'),
(26, 13, 'Nuevo', 'Nuevo', 'Nuevo', 'Nuevo', '2019-05-26'),
(27, 13, 'Nuevo', 'Nuevo', 'Nuevo', 'Nuevo', '2019-05-26'),
(28, 13, 'Nuevo1', 'Nuevo1', 'Nuevo1', 'Nuevo1', '2019-05-26'),
(35, 12, 'N/A', 'N/A', 'N/A', 'N/A', '2019-02-01'),
(36, 12, 'N/A', 'N/A', 'N/A', 'N/A', '2019-02-01'),
(37, 12, 'N/A', 'N/A', 'N/A', 'N/A', '2019-02-01'),
(38, 12, 'N/A', 'N/A', 'N/A', 'N/A', '2019-02-01'),
(39, 12, 'N/A', 'N/A', 'N/A', 'N/A', '2019-02-01'),
(40, 12, 'N/A', 'N/A', 'N/A', 'N/A', '2019-02-01'),
(41, 12, 'N/A', 'N/A', 'N/A', 'N/A', '2019-02-01'),
(42, 12, 'N/A', 'N/A', 'N/A', 'N/A', '2019-02-01'),
(43, 12, 'N/A', 'N/A', 'N/A', 'N/A', '2019-02-01'),
(44, 12, 'N/A', 'N/A', 'N/A', 'N/A', '2019-02-01'),
(45, 12, 'N/A', 'N/A', 'N/A', 'N/A', '2019-02-01'),
(46, 12, 'N/A', 'N/A', 'N/A', 'N/A', '2019-02-01'),
(47, 12, 'N/A', 'N/A', 'N/A', 'N/A', '2019-02-01'),
(48, 12, 'N/A', 'N/A', 'N/A', 'N/A', '2019-02-01'),
(49, 12, 'N/A', 'N/A', 'N/A', 'N/A', '2019-02-01'),
(50, 12, 'N/A', 'N/A', 'N/A', 'N/A', '2019-02-01'),
(51, 12, 'N/A', 'N/A', 'N/A', 'N/A', '2019-02-01'),
(52, 12, 'N/A', 'N/A', 'N/A', 'N/A', '2019-02-01'),
(61, 70, 'N/A', 'N/A', 'N/A', 'N/A', '2019-06-02'),
(62, 75, 'N/A', 'N/A', 'EstÃ¡ es la prueba ', 'N/A', '2019-06-02'),
(63, 188, 'N/A', 'Prueba', 'Gripe de pollo :v', 'Prueba :v', '2019-06-03'),
(64, 196, 'gripe', 'fiebre', 'N/A', 'ADN', '2019-06-03'),
(65, 189, 'Fiebre', '-Fiebre\r\n-Dolor De estomago\r\n-Vomito', 'Gastritis', '-General De Orina', '2019-06-03'),
(66, 189, 'Fiebre', '-Fiebre\r\n-Dolor De estomago\r\n-Vomito', 'Gastritis', '-General De Orina', '2019-06-03'),
(67, 12, 'N/A', 'N/A', 'N/A', 'N/A', '2019-02-01'),
(68, 12, 'N/A', 'N/A', 'N/A', 'N/A', '2019-02-01'),
(69, 12, 'N/A', 'N/A', 'N/A', 'N/A', '2019-02-01'),
(70, 12, 'N/A', 'N/A', 'N/A', 'N/A', '2019-02-01'),
(71, 12, 'N/A', 'N/A', 'N/A', 'N/A', '2019-02-01'),
(72, 12, 'N/A', 'N/A', 'N/A', 'N/A', '2019-02-01'),
(73, 12, 'N/A', 'N/A', 'N/A', 'N/A', '2019-02-01'),
(74, 12, 'N/A', 'N/A', 'N/A', 'N/A', '2019-02-01'),
(75, 12, 'N/A', 'N/A', 'N/A', 'N/A', '2019-02-01'),
(76, 12, 'N/A', 'N/A', 'N/A', 'N/A', '2019-02-01'),
(77, 12, 'N/A', 'N/A', 'N/A', 'N/A', '2019-02-01'),
(78, 12, 'N/A', 'N/A', 'N/A', 'N/A', '2019-02-01'),
(79, 12, 'N/A', 'N/A', 'N/A', 'N/A', '2019-02-01'),
(80, 210, 'gripe', 'tos', 'N/A', 'ninguno', '2019-06-03'),
(81, 12, 'N/A', 'N/A', 'N/A', 'N/A', '2019-02-01'),
(82, 12, 'N/A', 'N/A', 'N/A', 'N/A', '2019-02-01'),
(83, 12, 'N/A', 'N/A', 'N/A', 'N/A', '2019-02-01'),
(84, 12, 'N/A', 'N/A', 'N/A', 'N/A', '2019-02-01'),
(85, 12, 'N/A', 'N/A', 'N/A', 'N/A', '2019-02-01'),
(86, 12, 'N/A', 'N/A', 'N/A', 'N/A', '2019-02-01'),
(87, 12, 'N/A', 'N/A', 'N/A', 'N/A', '2019-02-01'),
(88, 195, 'Update', 'N/A', 'N/A', 'N/A', '2019-06-06');

--
-- Disparadores `consulta`
--
DELIMITER $$
CREATE TRIGGER `modificarEstadoCita` AFTER INSERT ON `consulta` FOR EACH ROW update cita set Estado = 'Abierta' where Id_Cita = 12
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctor`
--

CREATE TABLE `doctor` (
  `Id_Doctor` int(11) NOT NULL,
  `Nombre_Doctor` varchar(1000) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Apellido_Doctor` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Especialidad` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_swedish_ci;

--
-- Volcado de datos para la tabla `doctor`
--

INSERT INTO `doctor` (`Id_Doctor`, `Nombre_Doctor`, `Apellido_Doctor`, `Especialidad`) VALUES
(2, 'Estela Marisol', 'Bonilla Menjivar', 'Odontóloga'),
(3, 'Juan Jose', 'Estrada Portillo', 'Odontologo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expediente`
--

CREATE TABLE `expediente` (
  `Id_Expediente` int(11) NOT NULL,
  `Id_Paciente` int(11) NOT NULL,
  `Antecedentes_Medicos` varchar(250) NOT NULL,
  `Alergias` varchar(200) NOT NULL,
  `Peso` varchar(7) NOT NULL,
  `Estatura` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `expediente`
--

INSERT INTO `expediente` (`Id_Expediente`, `Id_Paciente`, `Antecedentes_Medicos`, `Alergias`, `Peso`, `Estatura`) VALUES
(17, 34, 'Ninguno.', 'Ninguno', '1.50kg.', '1.60m'),
(18, 35, 'Moqueria', 'Gripe', '21Kg', '3.90m'),
(22, 57, 'ninguna', 'ninguna', '90', '170'),
(23, 58, 'N/A', 'N/A', '1.68Kg', '1.70m'),
(31, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(58, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(60, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(62, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(63, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(64, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(65, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(66, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(68, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(69, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(70, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(71, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(72, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(73, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(74, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(75, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(76, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(77, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(78, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(79, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(80, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(81, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(82, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(83, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(84, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(85, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(86, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(87, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(88, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(89, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(90, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(91, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(92, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(93, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(94, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(95, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(96, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(97, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(98, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(99, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(100, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(101, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(102, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(103, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(104, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(105, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(106, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(107, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(108, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(109, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(110, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(111, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(112, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(114, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(115, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(116, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(117, 31, 'Desde consulta', 'N/A', 'Desde c', 'N/A'),
(118, 37, 'N/A', 'N/A', '1.68Kg', '1.40m'),
(119, 32, 'N/A', 'N/A', '1.68Kg', '1.40m'),
(120, 164, 'no tiene', 'notiene', '1.70Kg', '1.70m'),
(121, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(122, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(123, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(124, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(125, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(126, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(127, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(128, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(129, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(130, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(131, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(132, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(133, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(134, 178, 'no', 'no', '1.25K', '1.70m'),
(135, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(136, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(137, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(138, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(139, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(140, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(141, 31, 'N/A', 'N/A', 'N/A', 'N/A'),
(142, 154, '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `Id_Horario` int(11) NOT NULL,
  `Id_Doctor` int(11) NOT NULL,
  `Dia` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Hora_Ini` time NOT NULL,
  `Hora_Fin` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `horario`
--

INSERT INTO `horario` (`Id_Horario`, `Id_Doctor`, `Dia`, `Hora_Ini`, `Hora_Fin`) VALUES
(1, 2, 'Lunes', '11:00:00', '14:00:00'),
(2, 2, 'Martes', '05:00:00', '07:00:00'),
(3, 2, 'Lunes', '09:03:00', '10:00:00'),
(4, 2, 'Jueves', '07:00:00', '17:00:00'),
(5, 2, 'Viernes', '14:00:00', '15:00:00'),
(6, 2, 'Sábado', '02:00:00', '06:00:00'),
(8, 2, 'Domingo', '04:00:00', '22:00:00'),
(10, 3, 'Martes', '09:09:00', '10:00:00'),
(12, 3, 'Jueves', '09:00:00', '12:00:00'),
(13, 3, 'Viernes', '09:09:00', '12:07:00'),
(14, 2, '', '00:00:00', '00:00:00'),
(15, 2, 'Miércoles', '05:05:00', '14:06:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE `paciente` (
  `Id_Paciente` int(11) NOT NULL,
  `Nombre` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Apellido` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Direccion` varchar(200) CHARACTER SET utf8 NOT NULL,
  `DUI` varchar(10) CHARACTER SET utf8 NOT NULL,
  `Telefono` varchar(9) CHARACTER SET utf8 NOT NULL,
  `Edad` int(3) NOT NULL,
  `Sexo` varchar(9) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `paciente`
--

INSERT INTO `paciente` (`Id_Paciente`, `Nombre`, `Apellido`, `Direccion`, `DUI`, `Telefono`, `Edad`, `Sexo`) VALUES
(31, 'Juan', 'Estrada', 'Santa Ana', '09405045-0', '78567656', 12, 'Mas'),
(32, 'Maria Estela', 'Alvarado Sanchez', 'San JuliÃ¡n', '0967980-9', '7898-0987', 23, 'Femenino'),
(34, 'Daniel Argueta.', 'Ramirez Hurtado.', 'Santa Tecla.', '0967980-63', '8999-6888', 22, 'Masculino'),
(35, 'Emene Jose', 'Estrada Portillo', 'San Julian', '05998506-7', '2254-6444', 2, 'Masculino'),
(37, 'Alirio JosÃ©', 'Diaz Alvarado', 'Ahuachapan', '235543434-', '7834-3433', 9, 'Masculino'),
(57, 'Esau', 'Diaz', 'Las palmas', '1223333444', '79529151', 24, 'Hombre'),
(58, 'Alirio Esau', 'Diaz Sosa', 'Las palmas Quezaltepeque ', '0512-12039', '79529151', 24, 'Hombre'),
(77, 'Juan XD', 'Estrada XD XD', 'SJ', '0967676-7', '7876868', 12, 'M'),
(78, 'Juan XD aqui :v', 'Estrada XD', 'SJ', '0967676-7', '7876868', 12, 'M'),
(94, 'Juan', 'Estrada', 'SJ', '0967676-7', '7876868', 12, 'M'),
(110, 'Juan', 'Estrada', 'SJ', '0967676-7', '7876868', 12, 'M'),
(124, 'Juan', 'Estrada', 'SJ', '0967676-7', '7876868', 12, 'M'),
(131, 'Juan', 'Estrada', 'SJ', '0967676-7', '7876868', 12, 'M'),
(139, 'Juan', 'Estrada', 'SJ', '0967676-7', '7876868', 12, 'M'),
(149, 'Juan', 'Estrada', 'SJ', '0967676-7', '7876868', 12, 'M'),
(150, 'Juan', 'Estrada', 'SJ', '0967676-7', '7876868', 12, 'M'),
(151, 'Juan', 'Estrada', 'SJ', '0967676-7', '7876868', 12, 'M'),
(152, 'Juan', 'Estrada', 'SJ', '0967676-7', '7876868', 12, 'M'),
(153, 'Juan', 'Estrada', 'SJ', '0967676-7', '7876868', 12, 'M'),
(154, 'Juan', 'Estrada', 'SJ', '0967676-7', '7876868', 12, 'M'),
(155, 'Juan', 'Estrada', 'SJ', '0967676-7', '7876868', 12, 'M'),
(157, 'Juan', 'Estrada', 'SJ', '0967676-7', '7876868', 12, 'M'),
(158, 'Juan', 'Estrada', 'SJ', '0967676-7', '7876868', 12, 'M'),
(162, 'Nuevo', 'Nuevo', 'San Julian', '0512-12039', '7834-3432', 20, 'Masculino'),
(163, 'N/A', 'N/A', 'san pedro', '7898909090', '79529151', 19, 'Masculino'),
(164, 'lirio', 'rene ryena', 'las palmas', '0512-12039', '7834-3432', 19, 'Masculino'),
(165, 'Juan', 'Estrada', 'SJ', '0967676-7', '7876868', 12, 'M'),
(166, 'Juan', 'Estrada', 'SJ', '0967676-7', '7876868', 12, 'M'),
(167, 'Juan', 'Estrada', 'SJ', '0967676-7', '7876868', 12, 'M'),
(168, 'Juan', 'Estrada', 'SJ', '0967676-7', '7876868', 12, 'M'),
(169, 'Juan', 'Estrada', 'SJ', '0967676-7', '7876868', 12, 'M'),
(170, 'Juan', 'Estrada', 'SJ', '0967676-7', '7876868', 12, 'M'),
(171, 'Juan', 'Estrada', 'SJ', '0967676-7', '7876868', 12, 'M'),
(172, 'Juan', 'Estrada', 'SJ', '0967676-7', '7876868', 12, 'M'),
(173, 'Juan', 'Estrada', 'SJ', '0967676-7', '7876868', 12, 'M'),
(174, 'Juan', 'Estrada', 'SJ', '0967676-7', '7876868', 12, 'M'),
(175, 'Juan', 'Estrada', 'SJ', '0967676-7', '7876868', 12, 'M'),
(176, 'Juan', 'Estrada', 'SJ', '0967676-7', '7876868', 12, 'M'),
(177, 'Juan', 'Estrada', 'SJ', '0967676-7', '7876868', 12, 'M'),
(178, 'Comelona', 'diaz', 'San Julian', '1223333444', '7834-3432', 12, ''),
(179, '79879', '68787', '32423432424', '2423543253', '687687687', 0, 'Masculino'),
(180, 'Juan', 'Estrada', 'SJ', '0967676-7', '7876868', 12, 'M'),
(181, 'Juan', 'Estrada', 'SJ', '0967676-7', '7876868', 12, 'M'),
(182, 'Juan', 'Estrada', 'SJ', '0967676-7', '7876868', 12, 'M'),
(183, 'Juan', 'Estrada', 'SJ', '0967676-7', '7876868', 12, 'M'),
(184, 'Juan', 'Estrada', 'SJ', '0967676-7', '7876868', 12, 'M'),
(185, 'Juan', 'Estrada', 'SJ', '0967676-7', '7876868', 12, 'M'),
(186, 'Juan', 'Estrada', 'SJ', '0967676-7', '7876868', 12, 'M');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `receta`
--

CREATE TABLE `receta` (
  `Id_Receta` int(11) NOT NULL,
  `Titulo` varchar(200) NOT NULL,
  `Medicamentos` varchar(250) NOT NULL,
  `Dosis` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `receta`
--

INSERT INTO `receta` (`Id_Receta`, `Titulo`, `Medicamentos`, `Dosis`) VALUES
(1, 'Dolor', 'AcetaminofÃ©n ', '3 cada 8 horas'),
(3, 'HipertensiÃ³n.', 'Panadol.', '2 Tabletas al dÃ­a.'),
(9, 'N/A', 'N/A', 'N/A'),
(11, 'N/A', 'N/A', 'N/A'),
(13, 'N/A', 'N/A', 'N/A'),
(14, 'N/A', 'N/A', 'N/A'),
(15, 'N/A', 'N/A', 'N/A'),
(16, 'N/A', 'N/A', 'N/A'),
(17, 'N/A', 'N/A', 'N/A'),
(18, 'N/A', 'N/A', 'N/A'),
(19, 'N/A', 'N/A', 'N/A'),
(20, 'N/A', 'N/A', 'N/A'),
(21, 'N/A', 'N/A', 'N/A'),
(22, 'N/A', 'N/A', 'N/A'),
(23, 'N/A', 'N/A', 'N/A'),
(24, 'N/A', 'N/A', 'N/A'),
(25, 'N/A', 'N/A', 'N/A'),
(26, 'N/A', 'N/A', 'N/A'),
(27, 'N/A', 'N/A', 'N/A'),
(28, 'N/A', 'N/A', 'N/A'),
(30, 'N/A', 'N/A', 'N/A'),
(31, 'N/A', 'N/A', 'N/A'),
(32, 'N/A', 'N/A', 'N/A'),
(33, 'N/A', 'N/A', 'N/A'),
(34, 'N/A', 'N/A', 'N/A'),
(35, 'N/A', 'N/A', 'N/A'),
(36, 'N/A', 'N/A', 'N/A'),
(37, 'N/A', 'N/A', 'N/A'),
(38, 'N/A', 'N/A', 'N/A'),
(39, 'N/A', 'N/A', 'N/A'),
(40, 'N/A', 'N/A', 'N/A'),
(41, 'N/A', 'N/A', 'N/A'),
(42, 'N/A', 'N/A', 'N/A'),
(43, 'N/A', 'N/A', 'N/A'),
(44, 'N/A', 'N/A', 'N/A'),
(45, 'erererer', 'erererer', 'ererererer'),
(46, 'sdfsdfs', 'sdfsdfsdf', 'sdfsd'),
(47, 'ergerg', 'ergergerge', 'ergergergerg'),
(48, 'rhtyhty', 'tyhthtyhtyh', 'tyhtyhthtyh'),
(49, 'hi', 'N/A', 'N/A'),
(50, 'Fiebre', 'acetaminofen', 'cada 2 tabletas cada 8 horas'),
(51, '', '', ''),
(52, 'Dolor De Estomago', '-Tylenon\r\n-Tabcin\r\n-Valpakine', '-2 cada 8 horas por 4 dias\r\n-7 cada 4 horas por 2 semnas\r\n-1 cada 6 horas por 3 semnas'),
(53, 'Alexis David', '-Acetaminofen\r\n-Tylex\r\n-Ibesartan', '- 2 Cada Dia\r\n-1 Cada 6 Horas\r\n-2 Cada 24 horas'),
(54, 'N/A', 'N/A', 'N/A'),
(55, 'N/A', 'N/A', 'N/A'),
(56, 'N/A', 'N/A', 'N/A'),
(57, 'N/A', 'N/A', 'N/A'),
(58, 'N/A', 'N/A', 'N/A'),
(59, 'N/A', 'N/A', 'N/A'),
(60, 'N/A', 'N/A', 'N/A'),
(61, 'N/A', 'N/A', 'N/A'),
(62, 'N/A', 'N/A', 'N/A'),
(63, 'N/A', 'N/A', 'N/A'),
(64, 'N/A', 'N/A', 'N/A'),
(65, 'N/A', 'N/A', 'N/A'),
(66, 'N/A', 'N/A', 'N/A'),
(67, '', '', ''),
(68, 'N/A', 'N/A', 'N/A'),
(69, 'N/A', 'N/A', 'N/A'),
(70, 'N/A', 'N/A', 'N/A'),
(71, 'N/A', 'N/A', 'N/A'),
(72, 'N/A', 'N/A', 'N/A'),
(73, 'N/A', 'N/A', 'N/A'),
(74, 'N/A', 'N/A', 'N/A'),
(75, '', '', ''),
(76, '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Id_Usuario` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(250) NOT NULL,
  `Rol` varchar(50) NOT NULL,
  `NombreUsuario` varchar(50) NOT NULL,
  `Password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Id_Usuario`, `Nombre`, `Apellido`, `Rol`, `NombreUsuario`, `Password`) VALUES
(3, 'Juan Carlos', '', 'Administrador', 'JuanC123', '99800b85d3383e3a2fb45eb7d0066a4879a9dad0'),
(4, 'Maria Elizabeth', '', 'Secretaria', 'Maris12345', '8cb2237d0679ca88db6464eac60da96345513964'),
(7, 'JosÃ© Manuel', '', 'Usuario', 'JoseM', '8cb2237d0679ca88db6464eac60da96345513964'),
(16, 'hola', '', 'Doctor', 'hola123', 'e516f979536994a14d9b0500bca3a1287b9ea9fe'),
(17, 'Daniel Antonio', '', 'Doctor', 'Dani1234', '4893d60339da3cb323976a3dbc3ad61d34f0093c'),
(22, 'Juan Jose', 'Estrada Portillo', 'Doctor', 'JuanJo', '8cb2237d0679ca88db6464eac60da96345513964'),
(23, 'Estela Marisol', 'Bonilla Menjivar', 'Doctor', 'Estela123', '8cb2237d0679ca88db6464eac60da96345513964'),
(24, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(25, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(26, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(27, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(28, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(29, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(30, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(31, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(32, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(33, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(34, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(35, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(36, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(37, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(38, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(39, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(40, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(41, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(42, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(43, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(44, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(45, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(46, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(47, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(48, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(49, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(50, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(51, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(52, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(53, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(54, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(55, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(56, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(57, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(58, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(59, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(60, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(61, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(62, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(63, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(64, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(65, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(66, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(67, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(68, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(69, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(70, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(71, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(72, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(73, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(74, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(75, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(76, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(77, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(78, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(79, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(80, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(81, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(82, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(83, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(84, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(85, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(86, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(87, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(88, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(89, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(90, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(91, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(92, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(93, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(94, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(95, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(96, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(97, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(98, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(99, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(100, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(101, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(102, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(103, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(104, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(105, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(106, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(107, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(108, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(109, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(110, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(111, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(112, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(113, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(114, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(115, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(116, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(117, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(118, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(119, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(120, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(121, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(122, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(123, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(124, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(125, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(126, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(127, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(128, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(129, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(130, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(131, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(132, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(133, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(134, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(135, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(136, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(137, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(138, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(139, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(140, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(141, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(142, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(143, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(144, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(145, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(146, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(147, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(148, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(149, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(150, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(151, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(152, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(153, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(154, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(155, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(156, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(157, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(158, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(159, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(160, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(161, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(162, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(163, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(164, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(165, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(166, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(167, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(168, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(169, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(170, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(171, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(172, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(173, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(174, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(175, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(176, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(177, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(178, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(179, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(180, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(181, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(182, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(183, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(184, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(185, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(186, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(187, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(188, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(189, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(190, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(191, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(192, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(193, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(194, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(195, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(196, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(197, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(198, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(199, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(200, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(201, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(202, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(203, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(204, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(205, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(206, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(207, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(208, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(209, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(210, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(211, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(212, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(213, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(214, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(215, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(216, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(217, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(218, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(219, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(220, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(221, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(222, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(223, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(224, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(225, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(226, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(227, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(228, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(229, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(230, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(231, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(232, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(233, 'Juan', 'Estrada', 'Administrador', 'JC123', '12345'),
(234, 'Pepe Aguilar', 'Buendia Solorzano', 'Doctor', 'hola', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(235, 'Alirio Diaz', 'Chicas Fortis', 'Administrador', 'ali123', '40bd001563085fc35165329ea1ff5c5ecbdbbeef');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cita`
--
ALTER TABLE `cita`
  ADD PRIMARY KEY (`Id_Cita`),
  ADD KEY `Id_Paciente` (`Id_Paciente`),
  ADD KEY `Id_Doctor` (`Id_Doctor`);

--
-- Indices de la tabla `consulta`
--
ALTER TABLE `consulta`
  ADD PRIMARY KEY (`Id_Consulta`),
  ADD KEY `Id_Cita` (`Id_Cita`);

--
-- Indices de la tabla `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`Id_Doctor`);

--
-- Indices de la tabla `expediente`
--
ALTER TABLE `expediente`
  ADD PRIMARY KEY (`Id_Expediente`),
  ADD KEY `Id_Paciente` (`Id_Paciente`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`Id_Horario`),
  ADD KEY `Id_Doctor` (`Id_Doctor`);

--
-- Indices de la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`Id_Paciente`);

--
-- Indices de la tabla `receta`
--
ALTER TABLE `receta`
  ADD PRIMARY KEY (`Id_Receta`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id_Usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cita`
--
ALTER TABLE `cita`
  MODIFY `Id_Cita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT de la tabla `consulta`
--
ALTER TABLE `consulta`
  MODIFY `Id_Consulta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT de la tabla `doctor`
--
ALTER TABLE `doctor`
  MODIFY `Id_Doctor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `expediente`
--
ALTER TABLE `expediente`
  MODIFY `Id_Expediente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT de la tabla `horario`
--
ALTER TABLE `horario`
  MODIFY `Id_Horario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `paciente`
--
ALTER TABLE `paciente`
  MODIFY `Id_Paciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT de la tabla `receta`
--
ALTER TABLE `receta`
  MODIFY `Id_Receta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Id_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cita`
--
ALTER TABLE `cita`
  ADD CONSTRAINT `cita_ibfk_1` FOREIGN KEY (`Id_Paciente`) REFERENCES `paciente` (`Id_Paciente`),
  ADD CONSTRAINT `cita_ibfk_2` FOREIGN KEY (`Id_Doctor`) REFERENCES `doctor` (`Id_Doctor`);

--
-- Filtros para la tabla `consulta`
--
ALTER TABLE `consulta`
  ADD CONSTRAINT `consulta_ibfk_1` FOREIGN KEY (`Id_Cita`) REFERENCES `cita` (`Id_Cita`);

--
-- Filtros para la tabla `expediente`
--
ALTER TABLE `expediente`
  ADD CONSTRAINT `expediente_ibfk_1` FOREIGN KEY (`Id_Paciente`) REFERENCES `paciente` (`Id_Paciente`);

--
-- Filtros para la tabla `horario`
--
ALTER TABLE `horario`
  ADD CONSTRAINT `horario_ibfk_1` FOREIGN KEY (`Id_Doctor`) REFERENCES `doctor` (`Id_Doctor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
