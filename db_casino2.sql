-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-06-2024 a las 05:40:31
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
-- Base de datos: `db_tiendaderopa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ropa`
--

CREATE TABLE `ropa` (
  `id_ropa` int(11) NOT NULL,
  `tipo` varchar(250) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `precio` double(10,2) NOT NULL,
  `talle` int(11) NOT NULL,
  `id_tienda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO ropa (id_ropa, tipo, descripcion, precio, talle, id_tienda) VALUES
(1, 'remera', 'roja', 250.00, 2, 1),
(2, 'jean', 'negro', 900.00, 3, 1),
(3, 'buzo', 'azul', 500.00, 2, 1),
(4, 'jogging', 'gris', 750.00, 3, 2),
(5, 'suéter', 'negro', 300.00, 1, 2),
(6, 'jean', 'celeste', 900.00, 1, 2),
(7, 'remera', 'rosa', 250.00, 3, 3),
(8, 'campera', 'marrón', 600.00, 2, 3),
(11, 'polera', 'bordó', 400.00, 3, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla tienda
--

CREATE TABLE tienda (
  id_tienda int(11) NOT NULL,
  nombre varchar(100) NOT NULL,
  direccion varchar(100) NOT NULL,
  telefono int(11) NOT NULL,
  email varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
