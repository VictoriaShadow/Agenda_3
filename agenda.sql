-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-09-2026 a las 02:59:11
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `agenda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agenda`
--

CREATE TABLE `agenda` (
  `Dni` varchar(9) NOT NULL,
  `Apellido` varchar(25) NOT NULL,
  `Nombre` varchar(25) NOT NULL,
  `Calle` varchar(100) NOT NULL,
  `Depto` varchar(4) NOT NULL,
  `Piso` int(2) NOT NULL,
  `Ciudad` varchar(45) NOT NULL,
  `Telefono` int(14) NOT NULL,
  `Email` varchar(125) NOT NULL,
  `CuilCuit` varchar(12) NOT NULL,
  `FechaDeAlta` varchar(12) DEFAULT NULL,
  `Estado_Civil` varchar(14) NOT NULL,
  `Nacionalidad` varchar(10) NOT NULL,
  `Provincia` varchar(54) NOT NULL,
  `Codigo_Postal` int(5) NOT NULL,
  `Barrio` varchar(25) NOT NULL,
  `Telefono_Alternativo` int(14) NOT NULL,
  `RedSocial_IG` varchar(125) NOT NULL,
  `ProfesionOcupacion` varchar(30) NOT NULL,
  `Lugar_Trabajo` varchar(35) NOT NULL,
  `Nivel_Estudios` varchar(12) NOT NULL,
  `Estado` varchar(10) NOT NULL,
  `MetodoPago_Preferido` varchar(15) NOT NULL,
  `ObservacionesNotas` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `agenda`
--

INSERT INTO `agenda` (`Dni`, `Apellido`, `Nombre`, `Calle`, `Depto`, `Piso`, `Ciudad`, `Telefono`, `Email`, `CuilCuit`, `FechaDeAlta`, `Estado_Civil`, `Nacionalidad`, `Provincia`, `Codigo_Postal`, `Barrio`, `Telefono_Alternativo`, `RedSocial_IG`, `ProfesionOcupacion`, `Lugar_Trabajo`, `Nivel_Estudios`, `Estado`, `MetodoPago_Preferido`, `ObservacionesNotas`) VALUES
('234568765', '55', 'Killer', 'mkih', 'h2', 2, 'Valencia', 23451865, 'killercreeper55@gmail.com', '23567834552', '12/09/2026', 'Casado', 'Español', '?', 1234, 'qwdeas', 12348765, 'KillerCreeper55', 'Profesor', 'Nose', 'Treciario', 'Activo', 'Tarjeta', 'no'),
('2381765', 'Rodriguex', 'Marta', 'misje', 's2', 2, 'CABA', 12561278, 'wrnofninqx@gmail.com', '2723817652', '12/07/2023', 'Casada', 'Argentina', 'Buenos Aires', 1256, 'Caballito', 12602837, 'Martaaaaaa', 'Profesora', 'ISRN', 'Terciario', 'Activo', 'Credito', 'no'),
('24345098', 'Shadow', 'Elizabeth', 'Benito Juarez', 'A3', 3, 'Buenos Aires', 1123096512, 'elishadow@gmail.com', '0', NULL, '', '', '', 0, '', 0, '', '', '', '', '0', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentacte`
--

CREATE TABLE `cuentacte` (
  `Id_CuentaCte` int(11) NOT NULL,
  `Persona` varchar(9) NOT NULL,
  `FechaApertura` varchar(12) NOT NULL,
  `LimiteCredito` decimal(10,0) NOT NULL,
  `EstadoCredito` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cuentacte`
--

INSERT INTO `cuentacte` (`Id_CuentaCte`, `Persona`, `FechaApertura`, `LimiteCredito`, `EstadoCredito`) VALUES
(1, '234568765', '12/10/2026', 1200000, 'Suspendido');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`Dni`);

--
-- Indices de la tabla `cuentacte`
--
ALTER TABLE `cuentacte`
  ADD PRIMARY KEY (`Id_CuentaCte`),
  ADD KEY `Persona` (`Persona`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cuentacte`
--
ALTER TABLE `cuentacte`
  MODIFY `Id_CuentaCte` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cuentacte`
--
ALTER TABLE `cuentacte`
  ADD CONSTRAINT `cuentacte_ibfk_1` FOREIGN KEY (`Persona`) REFERENCES `agenda` (`Dni`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
