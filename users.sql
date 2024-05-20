-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-05-2024 a las 08:45:58
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `users`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadores`
--

CREATE TABLE `jugadores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `edad` int(11) NOT NULL,
  `altura` int(11) NOT NULL,
  `posicion` varchar(20) NOT NULL,
  `dorsal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jugadores`
--

INSERT INTO `jugadores` (`id`, `nombre`, `apellidos`, `edad`, `altura`, `posicion`, `dorsal`) VALUES
(1, 'Jrue', 'Holiday', 33, 191, 'Base', 4),
(2, 'Payton', 'Pritchard', 26, 188, 'Base', 11),
(3, 'J.D', 'Davison', 21, 191, 'Base', 20),
(4, 'Derrick', 'White', 29, 193, 'Escolta', 9),
(5, 'Jaden', 'Springer', 21, 193, 'Escolta', 44),
(6, 'Jaylen', 'Brown', 27, 198, 'Alero', 7),
(7, 'Sam', 'Hauser', 26, 203, 'Alero', 30),
(8, 'Jordan', 'Walsh', 20, 201, 'Alero', 27),
(9, 'Jayson', 'Tatum', 26, 203, 'Ala-Pivots', 0),
(10, 'Al', 'Horford', 37, 206, 'Ala-Pivots', 42),
(11, 'Oshae', 'Brissett', 25, 201, 'Ala-Pivots', 12),
(12, 'Drew', 'Peterson', 24, 206, 'Ala-Pivots', 13),
(13, 'Kristaps', 'Porzingis', 28, 221, 'Pivots', 8),
(14, 'Xavier', 'Tillman', 25, 203, 'Pivots', 26),
(15, 'Luke', 'Kornet', 28, 218, 'Pivots', 40),
(16, 'Neemias', 'Queta', 24, 211, 'Pivots', 88);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `username`, `password`) VALUES
(12, 'p', 'p', 'hola', '1234'),
(13, 'Carlos', 'Gil', 'Cartu', '1234'),
(14, 'Pablo', 'Camibo', 'pablito', '1234'),
(15, 'Maria', 'Vazquez Fontalba', 'meripirs', '1234');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
