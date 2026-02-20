-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: database:3306
-- Generation Time: Dec 01, 2025 at 06:41 PM
-- Server version: 8.1.0
-- PHP Version: 8.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `persutildb`
--

-- --------------------------------------------------------

--
-- Table structure for table `uski_libro_visita`
--

CREATE TABLE `uski_libro_visita` (
  `id` bigint NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `comentario` varchar(1024) NOT NULL,
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_modificacion` timestamp NULL DEFAULT NULL,
  `esta_publicado` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Indexes for table `uski_libro_visita`
--
ALTER TABLE `uski_libro_visita`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for table `uski_libro_visita`
--
ALTER TABLE `uski_libro_visita`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;
