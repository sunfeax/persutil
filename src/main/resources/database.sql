-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Servidor: database:3306
-- Tiempo de generación: 25-11-2025 a las 08:54:48
-- Versión del servidor: 8.4.6
-- Versión de PHP: 8.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de datos: `persutildb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sempertegui_pelicula`
--

CREATE TABLE `sempertegui_pelicula` (
  `id` BIGINT NOT NULL AUTO_INCREMENT , 
  `nombre` VARCHAR(255) NOT NULL , 
  `genero` VARCHAR(255) NOT NULL , 
  `director` VARCHAR(255) NOT NULL , 
  `puntuacion` INT NOT NULL , 
  `anyo` YEAR NOT NULL , 
  `fecha_creacion` DATETIME NOT NULL , 
  `fecha_modificacion` DATETIME DEFAULT NULL , 
  PRIMARY KEY (`id`), 
  UNIQUE `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Estructura de tabla para la tabla `blog`
--

CREATE TABLE `blog` (
  `id` bigint NOT NULL,
  `titulo` varchar(1024) COLLATE utf32_unicode_ci NOT NULL,
  `contenido` longtext COLLATE utf32_unicode_ci NOT NULL,
  `etiquetas` varchar(1024) COLLATE utf32_unicode_ci NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;



--
-- Estructura tabla pallas(notas)
--

CREATE TABLE `pallas` (
  `id` bigint NOT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `contenido` longtext,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  `publicado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Índices de la tabla `pallas`

ALTER TABLE `pallas`
  ADD PRIMARY KEY (`id`);

-- AUTO_INCREMENT de la tabla `pallas`
ALTER TABLE `pallas`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;
COMMIT;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alfonso_respuesta`
--

CREATE TABLE `alfonso_respuesta` (
  `id` bigint NOT NULL,
  `autor` varchar(128) COLLATE utf32_unicode_ci NOT NULL,
  `contenido` longtext COLLATE utf32_unicode_ci NOT NULL,
  `publicado` tinyint(1) NOT NULL DEFAULT '1',
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `alfonso_respuesta`
--
ALTER TABLE `alfonso_respuesta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `blog`
--
ALTER TABLE `blog`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;



-- --------------Ronald------------------------------------------

--
-- Estructura de tabla para la tabla `frasesmotivacionales`
--



  CREATE TABLE `calinesculistacompra` (
  `id` bigint NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `contenido` longtext NOT NULL,
  `fecha_compra_esperada` datetime DEFAULT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  `publicado` tinyint(1) NOT NULL DEFAULT '1',
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `calinesculistacompra`
--

INSERT INTO `calinesculistacompra` (`id`, `nombre`, `contenido`, `fecha_compra_esperada`, `fecha_creacion`, `fecha_modificacion`, `publicado`, `precio`, `cantidad`) VALUES
(195, 'David', 'dasdfsaass', NULL, '2025-11-27 23:39:02', NULL, 1, 100.00, 3),
(196, 'Producto0', 'contenido1contenido2contenido3contenido4contenido5contenido6contenido7contenido8contenido9contenido10', NULL, '2025-11-27 23:39:04', NULL, 1, 0.00, 1),
(197, 'Producto1', 'contenido1contenido2contenido3contenido4contenido5contenido6contenido7contenido8contenido9contenido10', NULL, '2025-11-27 23:39:04', NULL, 1, 0.00, 1),
(198, 'Producto2', 'contenido1contenido2contenido3contenido4contenido5contenido6contenido7contenido8contenido9contenido10', NULL, '2025-11-27 23:39:04', NULL, 1, 0.00, 1),
(199, 'Producto3', 'contenido1contenido2contenido3contenido4contenido5contenido6contenido7contenido8contenido9contenido10', NULL, '2025-11-27 23:39:04', '2025-11-27 23:39:19', 0, 1000.00, 5),
(200, 'Producto4', 'contenido1contenido2contenido3contenido4contenido5contenido6contenido7contenido8contenido9contenido10', NULL, '2025-11-27 23:39:04', NULL, 1, 0.00, 1),
(201, 'Producto5', 'contenido1contenido2contenido3contenido4contenido5contenido6contenido7contenido8contenido9contenido10', NULL, '2025-11-27 23:39:04', NULL, 1, 0.00, 1),
(202, 'Producto6', 'contenido1contenido2contenido3contenido4contenido5contenido6contenido7contenido8contenido9contenido10', NULL, '2025-11-27 23:39:04', NULL, 1, 0.00, 1),
(203, 'Producto7', 'contenido1contenido2contenido3contenido4contenido5contenido6contenido7contenido8contenido9contenido10', NULL, '2025-11-27 23:39:04', NULL, 1, 0.00, 1),
(204, 'Producto8', 'contenido1contenido2contenido3contenido4contenido5contenido6contenido7contenido8contenido9contenido10', NULL, '2025-11-27 23:39:04', NULL, 1, 0.00, 1),
(205, 'Producto9', 'contenido1contenido2contenido3contenido4contenido5contenido6contenido7contenido8contenido9contenido10', NULL, '2025-11-27 23:39:04', NULL, 1, 0.00, 1);
-- --------------------------------------Alejandro Pavón Martínez-------------------------------------------------
--
-- Estructura de tabla para la tabla `recurso`
--

CREATE TABLE `recurso` (
  `id` bigint NOT NULL,
  `nombre` varchar(1024) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf32_unicode_ci NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  `publico` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Volcado de datos para la tabla `recurso`
--

INSERT INTO `recurso` (`id`, `nombre`, `url`, `fecha_creacion`, `fecha_modificacion`, `publico`) VALUES
(1, 'Wikipedia', 'https://wikipedia.org', '2025-11-24 11:25:21', NULL, 1),
(2, 'ChatGPT', 'https://chatgpt.com/', '2025-11-24 11:25:21', NULL, 1),
(3, 'GitHub', 'https://github.com/', '2025-11-24 12:47:50', NULL, 1),
(6, 'WikiRafa', 'https://wikirafa.ausiasmarch.net/', '2025-11-25 09:43:04', '2025-11-25 09:43:08', 1),
(7, 'Stack Overflow', 'https://stackoverflow.com/', '2025-11-25 09:45:27', NULL, 1),
(8, 'Regex Builder', 'https://regex101.com/', '2025-11-25 09:45:53', NULL, 1);
--
-- Estructura de tabla para la tabla `tarea`
--

CREATE TABLE `tarea` (
  `id` bigint NOT NULL,
  `titulo` varchar(255) COLLATE utf32_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf32_unicode_ci,
  `categoria` varchar(100) COLLATE utf32_unicode_ci DEFAULT NULL,
  `completada` tinyint(1) NOT NULL DEFAULT '0',
  `publicado` tinyint(1) NOT NULL DEFAULT '1',
  `fecha_creacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_modificacion` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Volcado de datos para la tabla `tarea`
--

INSERT INTO `tarea` (`id`, `titulo`, `descripcion`, `categoria`, `completada`, `publicado`, `fecha_creacion`, `fecha_modificacion`) VALUES
(1, 'Hacer ejercicio en base de datos #1', 'Tarea programada para completar durante esta semana. Generada automáticamente el 2025-11-27T09:53:50', 'Viajes', 0, 1, '2025-11-27 09:53:50', '2025-11-27 09:53:50'),
(2, 'Practicar entrenamiento #2', 'Actividad opcional pero recomendable para el desarrollo personal. Generada automáticamente el 2025-11-27T09:53:50', 'Compras', 0, 1, '2025-11-27 09:53:50', '2025-11-27 09:53:50'),
(3, 'Leer sobre equipo #3', 'Proyecto individual que requiere concentración y dedicación. Generada automáticamente el 2025-11-27T09:53:50', 'Estudios', 1, 1, '2025-11-27 09:53:50', '2025-11-27 09:53:50'),
(4, 'Leer sobre equipo #4', 'Actividad opcional pero recomendable para el desarrollo personal. Generada automáticamente el 2025-11-27T09:53:50', 'Deporte', 0, 1, '2025-11-27 09:53:51', '2025-11-27 09:53:51'),
(5, 'Preparar casa #5', 'Esta es una tarea importante que requiere atención inmediata. Generada automáticamente el 2025-11-27T09:53:50', 'Salud', 1, 1, '2025-11-27 09:53:51', '2025-11-27 09:53:51'),
(6, 'Configurar reunión #6', 'Actividad opcional pero recomendable para el desarrollo personal. Generada automáticamente el 2025-11-27T09:53:50', 'Viajes', 0, 1, '2025-11-27 09:53:51', '2025-11-27 09:53:51'),
(7, 'Estudiar cita médica #7', 'Actividad de seguimiento que debe realizarse periódicamente. Generada automáticamente el 2025-11-27T09:53:50', 'Estudios', 0, 1, '2025-11-27 09:53:51', '2025-11-27 09:53:51'),
(8, 'Planificar reunión #8', 'Proyecto individual que requiere concentración y dedicación. Generada automáticamente el 2025-11-27T09:53:50', 'Deporte', 0, 1, '2025-11-27 09:53:51', '2025-11-27 09:53:51'),
(9, 'Planificar curso #9', 'Proyecto individual que requiere concentración y dedicación. Generada automáticamente el 2025-11-27T09:53:50', 'Deporte', 1, 1, '2025-11-27 09:53:51', '2025-11-27 09:53:51'),
(10, 'Organizar presentación #10', 'Proyecto a largo plazo que necesita planificación detallada. Generada automáticamente el 2025-11-27T09:53:51', 'Familia', 1, 1, '2025-11-27 09:53:51', '2025-11-27 09:53:51'),
(11, 'Leer sobre calendario #11', 'Tarea urgente con alta prioridad de ejecución. Generada automáticamente el 2025-11-27T09:53:51', 'Trabajo', 1, 1, '2025-11-27 09:53:51', '2025-11-27 09:53:51'),
(12, 'Actualizar presupuesto #12', 'Actividad de seguimiento que debe realizarse periódicamente. Generada automáticamente el 2025-11-27T09:53:51', 'Casa', 0, 1, '2025-11-27 09:53:51', '2025-11-27 09:53:51'),
(13, 'Practicar entrenamiento #13', 'Tarea urgente con alta prioridad de ejecución. Generada automáticamente el 2025-11-27T09:53:51', 'Casa', 0, 1, '2025-11-27 09:53:51', '2025-11-27 09:53:51'),
(14, 'Aprender servidor #14', 'Esta es una tarea importante que requiere atención inmediata. Generada automáticamente el 2025-11-27T09:53:51', 'Viajes', 0, 1, '2025-11-27 09:53:51', '2025-11-27 09:53:51'),
(15, 'Revisar portfolio #15', 'Proyecto a largo plazo que necesita planificación detallada. Generada automáticamente el 2025-11-27T09:53:51', 'Casa', 0, 1, '2025-11-27 09:53:52', '2025-11-27 09:53:52'),
(16, 'Planificar entrenamiento #16', 'Actividad opcional pero recomendable para el desarrollo personal. Generada automáticamente el 2025-11-27T09:53:51', 'Familia', 1, 1, '2025-11-27 09:53:52', '2025-11-27 09:53:52'),
(17, 'Leer sobre curriculum #17', 'Proyecto individual que requiere concentración y dedicación. Generada automáticamente el 2025-11-27T09:53:51', 'Estudios', 1, 1, '2025-11-27 09:53:52', '2025-11-27 09:53:52'),
(18, 'Planificar presupuesto #18', 'Esta es una tarea importante que requiere atención inmediata. Generada automáticamente el 2025-11-27T09:53:51', 'Casa', 0, 1, '2025-11-27 09:53:52', '2025-11-27 09:53:52'),
(19, 'Leer sobre entrenamiento #19', 'Actividad opcional pero recomendable para el desarrollo personal. Generada automáticamente el 2025-11-27T09:53:51', 'Salud', 1, 1, '2025-11-27 09:53:52', '2025-11-27 09:53:52'),
(20, 'Hacer ejercicio en el GIMNASIO #20', 'Proyecto individual que requiere concentración y dedicación. Generada automáticamente el 2025-11-27T09:53:51', 'Viajes.', 0, 1, '2025-11-27 09:53:52', '2025-11-27 09:15:50'),
(21, 'Llamar a portfolio #1', 'Tarea urgente con alta prioridad de ejecución. Generada automáticamente el 2025-11-27T10:21:19', 'Trabajo', 0, 1, '2025-11-27 10:21:20', '2025-11-27 10:21:20'),
(22, 'Estudiar calendario #2', 'Proyecto individual que requiere concentración y dedicación. Generada automáticamente el 2025-11-27T10:21:20', 'Tecnología', 1, 1, '2025-11-27 10:21:20', '2025-11-27 10:21:20'),
(23, 'Llamar a base de datos #3', 'Actividad de seguimiento que debe realizarse periódicamente. Generada automáticamente el 2025-11-27T10:21:20', 'Deporte', 0, 1, '2025-11-27 10:21:20', '2025-11-27 10:21:20'),
(24, 'Llamar a documentación #4', 'Tarea programada para completar durante esta semana. Generada automáticamente el 2025-11-27T10:21:20', 'Viajes', 0, 1, '2025-11-27 10:21:20', '2025-11-27 10:21:20'),
(25, 'Estudiar informe #5', 'Proyecto a largo plazo que necesita planificación detallada. Generada automáticamente el 2025-11-27T10:21:20', 'Deporte', 1, 1, '2025-11-27 10:21:20', '2025-11-27 10:21:20'),
(26, 'Planificar base de datos #6', 'Esta es una tarea importante que requiere atención inmediata. Generada automáticamente el 2025-11-27T10:21:20', 'Familia', 0, 1, '2025-11-27 10:21:20', '2025-11-27 10:21:20'),
(27, 'Planificar aplicación #7', 'Tarea programada para completar durante esta semana. Generada automáticamente el 2025-11-27T10:21:20', 'Estudios', 0, 1, '2025-11-27 10:21:21', '2025-11-27 10:21:21'),
(28, 'Limpiar curso #8', 'Actividad de seguimiento que debe realizarse periódicamente. Generada automáticamente el 2025-11-27T10:21:20', 'Familia', 0, 1, '2025-11-27 10:21:21', '2025-11-27 10:21:21'),
(29, 'Terminar proyecto de examen #9', 'Tarea colaborativa que involucra a varios miembros del equipo. Generada automáticamente el 2025-11-27T10:21:21', 'Familia', 0, 1, '2025-11-27 10:21:21', '2025-11-27 10:21:21'),
(30, 'Aprender sistema #10', 'Proyecto a largo plazo que necesita planificación detallada. Generada automáticamente el 2025-11-27T10:21:21', 'Casa', 0, 1, '2025-11-27 10:21:21', '2025-11-27 10:21:21'),
(31, 'Limpiar presupuesto #11', 'Tarea urgente con alta prioridad de ejecución. Generada automáticamente el 2025-11-27T10:21:21', 'Viajes', 0, 1, '2025-11-27 10:21:21', '2025-11-27 10:21:21'),
(32, 'Estudiar curriculum #12', 'Actividad de seguimiento que debe realizarse periódicamente. Generada automáticamente el 2025-11-27T10:21:21', 'Compras', 0, 1, '2025-11-27 10:21:21', '2025-11-27 10:21:21'),
(33, 'Configurar presupuesto #13', 'Tarea urgente con alta prioridad de ejecución. Generada automáticamente el 2025-11-27T10:21:21', 'Deporte', 0, 1, '2025-11-27 10:21:21', '2025-11-27 10:21:21'),
(34, 'Terminar proyecto de examen #14', 'Tarea colaborativa que involucra a varios miembros del equipo. Generada automáticamente el 2025-11-27T10:21:21', 'Hobby', 0, 1, '2025-11-27 10:21:21', '2025-11-27 10:21:21'),
(35, 'Organizar examen #15', 'Tarea urgente con alta prioridad de ejecución. Generada automáticamente el 2025-11-27T10:21:21', 'Hobby', 0, 1, '2025-11-27 10:21:22', '2025-11-27 10:21:22'),
(36, 'Comprar presupuesto para el Erasmus #16', 'Actividad opcional pero recomendable para el desarrollo personal. Generada automáticamente el 2025-11-27T10:21:21', 'Familia', 0, 1, '2025-11-27 10:21:22', '2025-11-27 09:22:06'),
(37, 'Llamar a examen #17', 'Actividad opcional pero recomendable para el desarrollo personal. Generada automáticamente el 2025-11-27T10:21:21', 'Deporte', 0, 1, '2025-11-27 10:21:22', '2025-11-27 10:21:22'),
(38, 'Estudiar calendario #18', 'Tarea colaborativa que involucra a varios miembros del equipo. Generada automáticamente el 2025-11-27T10:21:21', 'Trabajo', 0, 1, '2025-11-27 10:21:22', '2025-11-27 10:21:22'),
(39, 'Hacer ejercicio en documentación #19', 'Tarea programada para completar durante esta semana. Generada automáticamente el 2025-11-27T10:21:22', 'Viajes', 0, 1, '2025-11-27 10:21:22', '2025-11-27 10:21:22'),
(40, 'Llamar a aplicación #20', 'Actividad de seguimiento que debe realizarse periódicamente. Generada automáticamente el 2025-11-27T10:21:22', 'Tecnología', 0, 1, '2025-11-27 10:21:22', '2025-11-27 10:21:22'),
(41, 'Organizar sistema #21', 'Tarea urgente con alta prioridad de ejecución. Generada automáticamente el 2025-11-27T10:21:22', 'Salud', 0, 1, '2025-11-27 10:21:22', '2025-11-27 10:21:22'),
(42, 'Llamar a calendario #22', 'Tarea colaborativa que involucra a varios miembros del equipo. Generada automáticamente el 2025-11-27T10:21:22', 'Salud', 0, 1, '2025-11-27 10:21:22', '2025-11-27 10:21:22'),
(43, 'Limpiar curriculum #23', 'Tarea programada para completar durante esta semana. Generada automáticamente el 2025-11-27T10:21:22', 'Deporte', 0, 1, '2025-11-27 10:21:22', '2025-11-27 10:21:22'),
(44, 'Aprender portfolio #24', 'Proyecto individual que requiere concentración y dedicación. Generada automáticamente el 2025-11-27T10:21:22', 'Familia', 0, 1, '2025-11-27 10:21:23', '2025-11-27 10:21:23'),
(45, 'Llamar a informe #25', 'Actividad opcional pero recomendable para el desarrollo personal. Generada automáticamente el 2025-11-27T10:21:22', 'Trabajo', 0, 1, '2025-11-27 10:21:23', '2025-11-27 10:21:23'),
(46, 'Llamar a cita médica #26', 'Actividad de seguimiento que debe realizarse periódicamente. Generada automáticamente el 2025-11-27T10:21:22', 'Estudios', 0, 1, '2025-11-27 10:21:23', '2025-11-27 10:21:23'),
(47, 'Comprar presentación #27', 'Esta es una tarea importante que requiere atención inmediata. Generada automáticamente el 2025-11-27T10:21:22', 'Tecnología', 0, 1, '2025-11-27 10:21:23', '2025-11-27 10:21:23'),
(48, 'Revisar sistema #28', 'Actividad de seguimiento que debe realizarse periódicamente. Generada automáticamente el 2025-11-27T10:21:22', 'Compras', 0, 1, '2025-11-27 10:21:23', '2025-11-27 10:21:23'),
(49, 'Planificar documentación #29', 'Proyecto individual que requiere concentración y dedicación. Generada automáticamente el 2025-11-27T10:21:22', 'Estudios', 0, 1, '2025-11-27 10:21:23', '2025-11-27 10:21:23'),
(50, 'Practicar calendario #30', 'Actividad de seguimiento que debe realizarse periódicamente. Generada automáticamente el 2025-11-27T10:21:23', 'Familia', 1, 1, '2025-11-27 10:21:23', '2025-11-27 10:21:23'),
(51, 'Hacer ejercicio en presentación #31', 'Esta es una tarea importante que requiere atención inmediata. Generada automáticamente el 2025-11-27T10:21:23', 'Trabajo', 0, 1, '2025-11-27 10:21:23', '2025-11-27 10:21:23'),
(52, 'Hacer ejercicio en entrenamiento #32', 'Tarea urgente con alta prioridad de ejecución. Generada automáticamente el 2025-11-27T10:21:23', 'Familia', 0, 1, '2025-11-27 10:21:23', '2025-11-27 10:21:23'),
(53, 'Llamar a examen #33', 'Esta es una tarea importante que requiere atención inmediata. Generada automáticamente el 2025-11-27T10:21:23', 'Salud', 0, 1, '2025-11-27 10:21:23', '2025-11-27 10:21:23'),
(54, 'Llamar a presentación #34', 'Tarea urgente con alta prioridad de ejecución. Generada automáticamente el 2025-11-27T10:21:23', 'Compras', 0, 1, '2025-11-27 10:21:23', '2025-11-27 10:21:23'),
(55, 'Aprender presupuesto #35', 'Proyecto individual que requiere concentración y dedicación. Generada automáticamente el 2025-11-27T10:21:23', 'Tecnología', 0, 1, '2025-11-27 10:21:24', '2025-11-27 10:21:24'),
(56, 'Leer sobre examen #36', 'Tarea colaborativa que involucra a varios miembros del equipo. Generada automáticamente el 2025-11-27T10:21:23', 'Viajes', 0, 1, '2025-11-27 10:21:24', '2025-11-27 10:21:24'),
(57, 'Planificar presupuesto #37', 'Tarea programada para completar durante esta semana. Generada automáticamente el 2025-11-27T10:21:23', 'Casa', 0, 1, '2025-11-27 10:21:24', '2025-11-27 10:21:24'),
(58, 'Estudiar aplicación #38', 'Actividad opcional pero recomendable para el desarrollo personal. Generada automáticamente el 2025-11-27T10:21:23', 'Hobby', 1, 1, '2025-11-27 10:21:24', '2025-11-27 10:21:24'),
(59, 'Estudiar servidor #39', 'Actividad de seguimiento que debe realizarse periódicamente. Generada automáticamente el 2025-11-27T10:21:23', 'Casa', 0, 1, '2025-11-27 10:21:24', '2025-11-27 10:21:24'),
(60, 'Llamar a examen #40', 'Proyecto a largo plazo que necesita planificación detallada. Generada automáticamente el 2025-11-27T10:21:24', 'Compras', 0, 1, '2025-11-27 10:21:24', '2025-11-27 10:21:24'),
(61, 'Planificar cita médica #41', 'Tarea colaborativa que involucra a varios miembros del equipo. Generada automáticamente el 2025-11-27T10:21:24', 'Estudios', 0, 1, '2025-11-27 10:21:24', '2025-11-27 10:21:24'),
(62, 'Leer sobre portfolio #42', 'Tarea colaborativa que involucra a varios miembros del equipo. Generada automáticamente el 2025-11-27T10:21:24', 'Familia', 1, 1, '2025-11-27 10:21:25', '2025-11-27 10:21:25'),
(63, 'Organizar proyecto #43', 'Actividad de seguimiento que debe realizarse periódicamente. Generada automáticamente el 2025-11-27T10:21:24', 'Hobby', 1, 1, '2025-11-27 10:21:25', '2025-11-27 10:21:25'),
(64, 'Llamar a equipo #44', 'Tarea urgente con alta prioridad de ejecución. Generada automáticamente el 2025-11-27T10:21:24', 'Estudios', 0, 1, '2025-11-27 10:21:25', '2025-11-27 10:21:25'),
(65, 'Limpiar oficina #45', 'Tarea urgente con alta prioridad de ejecución. Generada automáticamente el 2025-11-27T10:21:24', 'Casa', 0, 1, '2025-11-27 10:21:25', '2025-11-27 10:21:25'),
(66, 'Preparar curriculum #46', 'Tarea colaborativa que involucra a varios miembros del equipo. Generada automáticamente el 2025-11-27T10:21:24', 'Deporte', 0, 1, '2025-11-27 10:21:25', '2025-11-27 10:21:25'),
(67, 'Revisar examen #47', 'Proyecto a largo plazo que necesita planificación detallada. Generada automáticamente el 2025-11-27T10:21:24', 'Compras', 0, 1, '2025-11-27 10:21:25', '2025-11-27 10:21:25'),
(68, 'Practicar entrenamiento #48', 'Tarea urgente con alta prioridad de ejecución. Generada automáticamente el 2025-11-27T10:21:25', 'Trabajo', 0, 1, '2025-11-27 10:21:25', '2025-11-27 10:21:25'),
(69, 'Revisar documentación #49', 'Proyecto individual que requiere concentración y dedicación. Generada automáticamente el 2025-11-27T10:21:25', 'Tecnología', 0, 1, '2025-11-27 10:21:25', '2025-11-27 10:21:25'),
(70, 'Leer sobre calendario #50', 'Proyecto individual que requiere concentración y dedicación. Generada automáticamente el 2025-11-27T10:21:25', 'Casa', 1, 1, '2025-11-27 10:21:25', '2025-11-27 10:21:25'),
(71, 'Terminar proyectos de equipo #1', 'Tarea colaborativa que involucra a varios miembros del equipo. Generada automáticamente el 2025-11-27T10:33:00', 'Deporte', 0, 1, '2025-11-27 09:33:00', '2025-11-27 09:35:15'),
(72, 'Revisar entrenamiento #2', 'Tarea colaborativa que involucra a varios miembros del equipo. Generada automáticamente el 2025-11-27T10:33:00', 'Tecnología', 0, 1, '2025-11-27 09:33:00', NULL);
-- --------------Joan Salinas------------------------------------------

--
-- Estructura de tabla para la tabla `receta`
--

CREATE TABLE `receta` (
  `id` bigint NOT NULL,
  `nombre` varchar(1024) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `ingredientes` longtext CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `preparacion` longtext CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `calinesculistacompra`
--
ALTER TABLE `calinesculistacompra`
    ADD PRIMARY KEY (`id`);
-- Indices de la tabla `receta`
--
ALTER TABLE `receta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `calinesculistacompra`
--
ALTER TABLE `calinesculistacompra`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

-- AUTO_INCREMENT de la tabla `receta`
--
ALTER TABLE `receta`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;


CREATE TABLE `alcalde` (
  `id` bigint NOT NULL,
  `titulo` varchar(255) COLLATE utf32_unicode_ci NOT NULL,
  `autor` varchar(255) COLLATE utf32_unicode_ci NOT NULL,
  `genero` varchar(100) COLLATE utf32_unicode_ci NOT NULL,
  `reseña` longtext COLLATE utf32_unicode_ci NOT NULL,
  `valoracion` int NOT NULL,
  `publicado` tinyint(1) NOT NULL DEFAULT '1',
  `destacado` tinyint(1) NOT NULL DEFAULT '0',
  `fecha_lectura` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

ALTER TABLE `alcalde`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `alcalde`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `alfonso_respuesta`
--
ALTER TABLE `alfonso_respuesta`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;
COMMIT;


-- Pollyanna --


CREATE TABLE `soares` (
  `id` bigint NOT NULL,
  `preguntas` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  `publicacion` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `recurso`
--
ALTER TABLE `recurso`
ADD PRIMARY KEY (`id`);
-- Indices de la tabla `tarea`
--
ALTER TABLE `tarea`
ADD PRIMARY KEY (`id`);
-- Indices de la tabla `soares`
--
ALTER TABLE `soares`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `recurso`
--
ALTER TABLE `recurso`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;  
-- AUTO_INCREMENT de la tabla `tarea`
--
ALTER TABLE `tarea`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

-- AUTO_INCREMENT de la tabla `soares`
--
ALTER TABLE `soares`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3137;
COMMIT;

--
-- Estructura de tabla para la tabla `garcia`
--

CREATE TABLE `garcia` (
  `id` bigint(20) NOT NULL,
  `titulo` varchar(1000) NOT NULL,
  `objetivo` varchar(1000) NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_final` datetime NOT NULL,
  `progreso` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Volcado de datos para la tabla `garcia`
--

INSERT INTO `garcia` (`id`, `titulo`, `objetivo`, `fecha_inicio`, `fecha_final`, `progreso`) VALUES
(6, 'GameDay', 'Intentamos llegar a la final :(', '2025-11-27 21:23:31', '2025-11-27 00:00:00', 'No llegamos al final...'),
(7, 'Visitar Japón', 'Quiero visitar Japón', '2025-11-27 21:24:15', '2025-11-30 00:00:00', 'No iniciado');
-- --------------------------------------------------------

-- Estructura de tabla para la tabla `ideas`

CREATE TABLE `ideas` (
  `id` bigint NOT NULL,
  `titulo` varchar(255) COLLATE utf32_unicode_ci NOT NULL,
  `comentario` text COLLATE utf32_unicode_ci NOT NULL,
  `categoria` enum('IDEA','MEJORA','BUG') COLLATE utf32_unicode_ci NOT NULL,
  `publico` tinyint(1) NOT NULL DEFAULT '1',
  `fecha_creacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_modificacion` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- Índices para tablas volcadas

-- Indices de la tabla `ideas`
ALTER TABLE `ideas`
  ADD PRIMARY KEY (`id`);

-- AUTO_INCREMENT de las tablas volcadas

-- AUTO_INCREMENT de la tabla `ideas`
ALTER TABLE `ideas`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;
COMMIT;


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `castanyera`
--

CREATE TABLE `castanyera` (
  `id` bigint NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `contenido` longtext CHARACTER SET utf32 NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime NOT NULL,
  `publico` tinyint(1) NOT NULL,
  `etiquetas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `garcia`
--
ALTER TABLE `garcia`
  ADD PRIMARY KEY (`id`);
-- Indices de la tabla `castanyera`
--

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `garcia`
--
ALTER TABLE `garcia`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;
-- AUTO_INCREMENT de la tabla `castanyera`
--
-- /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
-- /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
-- /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;




-- --------------Ronald------------------------------------------

--
-- Estructura de tabla para la tabla `frasesmotivacionales`
--

CREATE TABLE `frasesmotivacionales` (
  `id` bigint NOT NULL,
  `frase` varchar(1024) COLLATE utf32_unicode_ci NOT NULL,
  `autor` varchar(255) COLLATE utf32_unicode_ci NOT NULL DEFAULT 'Anónimo',
  `es_publica` tinyint(1) NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Volcado de datos para la tabla `frasesmotivacionales`
--

INSERT INTO `frasesmotivacionales` (`id`, `frase`, `autor`, `es_publica`, `fecha_creacion`, `fecha_modificacion`) VALUES
(1, 'Hola', 'Anónimo', 1, '2025-11-26 11:24:55', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `frasesmotivacionales`
--
ALTER TABLE `frasesmotivacionales`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `frasesmotivacionales`
--
ALTER TABLE `frasesmotivacionales`

  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;




--
-- Estructura de tabla para la tabla `gallery_image`
--

CREATE TABLE `gallery_image` (
  `id` bigint NOT NULL,
  `titulo` varchar(1024) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `descripcion` longtext CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `url_imagen` varchar(2048) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `publicado` tinyint(1) NOT NULL DEFAULT '0',
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Volcado de datos para la tabla `gallery_image`
--

INSERT INTO `gallery_image` (`id`, `titulo`, `descripcion`, `url_imagen`, `publicado`, `fecha_creacion`, `fecha_modificacion`) VALUES
(126, 'Atardecer en la montaña', 'Composición minimalista.', 'https://cdn.pixabay.com/photo/2015/04/23/22/01/mountains-736886_1280.jpg', 0, '2025-11-25 10:07:35', NULL),
(127, 'Noche estrellada', 'Perspectiva aérea.', 'https://cdn.pixabay.com/photo/2020/09/19/19/37/landscape-5585247_1280.jpg', 1, '2025-11-25 10:07:35', NULL),
(128, 'Valle verde', 'Contraste entre luz y sombra.', 'https://cdn.pixabay.com/photo/2018/04/26/12/14/travel-3351825_1280.jpg', 0, '2025-11-25 10:07:35', NULL),
(129, 'Sendero solitario', 'Detalle de la flora local.', 'https://cdn.pixabay.com/photo/2024/04/08/11/42/doggy-8683291_1280.jpg', 1, '2025-11-25 10:07:35', NULL),
(130, 'Sendero solitario', 'Lugar aislado, poca luz.', 'https://cdn.pixabay.com/photo/2013/03/01/18/40/crispus-87928_1280.jpg', 1, '2025-11-25 10:07:35', NULL),
(131, 'Río cristalino', 'Texturas y contrastes.', 'https://cdn.pixabay.com/photo/2020/03/31/10/48/park-4987155_1280.jpg', 0, '2025-11-25 10:07:35', NULL),
(132, 'Luz entre árboles', 'Efecto de luz natural.', 'https://cdn.pixabay.com/photo/2018/04/26/12/14/travel-3351825_1280.jpg', 0, '2025-11-25 10:07:36', NULL),
(133, 'Cascada escondida', 'Ambiente sereno y pacífico.', 'https://cdn.pixabay.com/photo/2013/03/01/18/40/crispus-87928_1280.jpg', 1, '2025-11-25 10:25:54', NULL),
(134, 'Paisaje otoñal', 'Escena capturada al amanecer.', 'https://cdn.pixabay.com/photo/2020/09/19/19/37/landscape-5585247_1280.jpg', 1, '2025-11-25 10:25:54', NULL),
(135, 'Atardecer en la montaña', 'Imagen tomada en primavera.', 'https://cdn.pixabay.com/photo/2013/02/01/18/14/url-77169_1280.jpg', 0, '2025-11-25 10:25:54', NULL),
(136, 'Sendero solitario', 'Efecto de luz natural.', 'https://cdn.pixabay.com/photo/2018/04/26/16/39/beach-3352363_1280.jpg', 0, '2025-11-25 10:25:54', NULL),
(137, 'Vista panorámica', 'Texturas y contrastes.', 'https://cdn.pixabay.com/photo/2018/05/18/12/43/rose-3411110_1280.jpg', 0, '2025-11-25 10:25:54', NULL),
(138, 'Luz entre árboles', 'Lugar aislado, poca luz.', 'https://cdn.pixabay.com/photo/2020/09/19/19/37/landscape-5585247_1280.jpg', 0, '2025-11-25 10:33:42', NULL),
(139, 'Flores silvestres', 'Imagen tomada en primavera.', 'https://cdn.pixabay.com/photo/2020/09/19/19/37/landscape-5585247_1280.jpg', 1, '2025-11-25 10:33:43', NULL),
(140, 'Noche estrellada', 'Paisaje natural sin retoques.', 'https://cdn.pixabay.com/photo/2021/03/12/08/51/shorturl-6089108_1280.jpg', 0, '2025-11-25 10:33:43', NULL),
(141, 'Bruma matutina', 'Composición minimalista.', 'https://cdn.pixabay.com/photo/2015/04/23/22/01/mountains-736886_1280.jpg', 1, '2025-11-25 10:33:43', NULL),
(142, 'Atardecer en la montaña', 'Imagen tomada en primavera.', 'https://cdn.pixabay.com/photo/2018/02/09/16/33/hanger-3141936_1280.jpg', 0, '2025-11-25 10:33:43', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `gallery_image`
--
ALTER TABLE `gallery_image`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de la tabla `gallery_image`
--
ALTER TABLE `gallery_image`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;
COMMIT;





/* --------------------- VLADISLAV USKI --------------------- */
CREATE TABLE `uski_libro_visita` (
  `id` bigint NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `comentario` varchar(1024) NOT NULL,
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_modificacion` timestamp NULL DEFAULT NULL,
  `esta_publicado` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `uski_libro_visita` (`id`, `nombre`, `comentario`, `fecha_creacion`, `fecha_modificacion`, `esta_publicado`) VALUES
(1, 'Ana García', 'Información clara, navegación estable y diseño muy equilibrado. Da gusto usar una página donde todo está organizado con lógica y sin sobrecargar la vista. Se nota que detrás hay un trabajo constante y un enfoque profesional.', '2025-11-20 10:31:29', NULL, 1),
(2, 'Luis Pérez', 'Buen sitio, aunque echo de menos una sección de novedades más dinámica.', '2025-11-20 10:31:29', NULL, 1),
(3, 'María Lopez', 'No logro enviar el formulario desde mi móvil. Tal vez sea un problema de compatibilidad.', '2025-11-20 10:31:29', NULL, 0),
(4, 'Javier Ruiz', 'Muy buena experiencia general. Fácil, rápida y sin distracciones.', '2025-11-20 10:31:29', NULL, 1),
(5, 'Elena Soto', 'El contenido es muy útil, pero noto que algunas imágenes tardan bastante en cargar incluso con buena conexión. Quizás optimizarlas podría mejorar mucho la experiencia en dispositivos menos potentes o redes más lentas.', '2025-11-20 10:31:29', NULL, 0),
(6, 'Carlos Castro', 'Encontré justo lo que necesitaba para mi proyecto. Gracias por mantener el contenido actualizado.', '2025-11-20 10:31:29', NULL, 1),
(7, 'Andrea Mora', 'Una búsqueda avanzada sería ideal para navegar entre tantos recursos. Facilitaría mucho filtrar por fecha, categoría o tipo de material.', '2025-11-20 10:31:29', NULL, 1),
(8, 'Ricardo Vidal', 'La sección 3 se me hizo confusa. Un ejemplo práctico ayudaría bastante.', '2025-11-20 10:31:29', NULL, 0),
(9, 'Sofía Torres', 'Me encantó la galería visual, muy bien cuidada y agradable de consultar.', '2025-11-20 10:31:29', NULL, 1),
(10, 'Pablo Herrera', 'Una web muy cuidada y pensada para el usuario. Gran trabajo.', '2025-11-20 10:31:29', NULL, 1),
(11, 'Laura Gil', 'El enlace principal a recursos da error. Intenté varias veces desde distintos dispositivos y no carga. Sería bueno revisarlo cuanto antes porque afecta a parte importante del contenido.', '2025-11-20 10:31:29', NULL, 0),
(12, 'Diego Núñez', 'Sitio útil y directo. Encontré lo que buscaba en minutos.', '2025-11-20 10:31:29', NULL, 1),
(13, 'Isabel Ramos', 'Los pop-up son demasiados y cortan mucho la lectura. Ojalá reduzcan la frecuencia.', '2025-11-20 10:31:29', NULL, 0),
(14, 'Sergio Martín', 'Buen diseño, buena estructura. Da gusto navegar por aquí.', '2025-11-20 10:31:29', NULL, 1),
(15, 'Marta Navarro', 'La tipografía es algo pequeña para lecturas largas. Una opción de aumentar tamaño o un ligero ajuste mejoraría bastante la comodidad.', '2025-11-20 10:31:29', NULL, 0),
(16, 'Jorge Jiménez', 'Página ordenada, limpia y con buen nivel de detalle. Muy profesional.', '2025-11-20 10:31:29', NULL, 1),
(17, 'Lucía Cano', 'Ya compartí algunos artículos con mis compañeros. Muy buen contenido.', '2025-11-20 10:31:29', NULL, 1),
(18, 'Héctor Díaz', 'No entiendo si hace falta crear cuenta para comentar. No queda totalmente claro.', '2025-11-20 10:31:29', NULL, 0),
(19, 'Nuria Flores', 'Los tutoriales son excelentes: explicaciones claras, buen ritmo y ejemplos útiles. Realmente destacan entre otros recursos en Internet.', '2025-11-20 10:31:29', NULL, 1),
(20, 'Víctor Gómez', 'La navegación podría ser más intuitiva. Me costó encontrar algunas secciones.', '2025-11-20 10:31:29', NULL, 0),
(21, 'Rosa Sánchez', 'Colores muy bien elegidos, transmiten calma y orden.', '2025-11-20 10:31:29', NULL, 1),
(22, 'Manuel Reyes', 'Algunas partes de la información parecen no estar actualizadas. Sería bueno revisar las fechas o añadir notas cuando haya contenido antiguo.', '2025-11-20 10:31:29', NULL, 0),
(23, 'Claudia Vega', 'Un recurso fiable y muy bien estructurado. Lo recomiendo.', '2025-11-20 10:31:29', NULL, 1),
(24, 'Francisco Luna', 'Intenté contactar por el chat varias veces, pero no obtuve respuesta. La atención debería ser más ágil, sobre todo cuando se ofrecen recursos en tiempo real.', '2025-11-20 10:31:29', NULL, 0),
(25, 'Carmen Aguilar', 'Me ayudó muchísimo la información publicada. Gracias por el esfuerzo.', '2025-11-20 10:31:29', NULL, 1),
(26, 'Pedro Bravo', 'Diseño limpio y moderno, justo lo que esperaba.', '2025-11-20 10:31:29', NULL, 1),
(27, 'Esther Cruz', 'No puedo descargar el PDF: la descarga se corta cada vez. Quizás el archivo o el servidor tengan algún fallo.', '2025-11-20 10:31:29', NULL, 0),
(28, 'Álvaro Prieto', 'Una sección de preguntas frecuentes sería perfecta para quienes llegan por primera vez.', '2025-11-20 10:31:29', NULL, 1),
(29, 'Silvia Marín', 'Registro rápido y sin complicaciones. A ver qué más ofrece el sitio.', '2025-11-20 10:31:29', NULL, 1),
(30, 'Adrián Salas', 'La última actualización no me convence. El diseño ahora parece más pesado y menos intuitivo. Prefería la versión anterior.', '2025-11-20 10:31:29', NULL, 0),
(31, 'Paula Peña', 'Todo funciona muy rápido. Muy buena experiencia.', '2025-11-20 10:31:29', NULL, 1),
(32, 'Roberto Vivas', 'Hice una pequeña donación. Ojalá sigan creciendo.', '2025-11-20 10:31:29', NULL, 1),
(33, 'Juana Romero', 'No encuentro la opción para cambiar el idioma al español. ¿Está disponible?', '2025-11-20 10:31:29', NULL, 0),
(34, 'Miguel Bosch', 'Probablemente el mejor sitio del sector. Realmente bien hecho.', '2025-11-20 10:31:29', NULL, 1),
(35, 'Teresa Moya', 'El formulario de registro pide demasiados datos. Eso puede disuadir a usuarios nuevos. Sería ideal simplificarlo o dividirlo en pasos.', '2025-11-20 10:31:29', NULL, 0),
(36, 'Daniel Rubio', 'Contenido reciente, útil y muy bien redactado.', '2025-11-20 10:31:29', NULL, 1),
(37, 'Eva Cortés', 'Un modo oscuro sería muy útil para leer por la noche sin forzar la vista.', '2025-11-20 10:31:29', NULL, 1),
(38, 'Ramón Otero', 'Hay un enlace roto a la política de privacidad. Aparece un error 404. Sería bueno corregirlo pronto.', '2025-11-20 10:31:29', NULL, 0),
(39, 'Beatriz Soto', 'Todo impecable. Muy buena experiencia.', '2025-11-20 10:31:29', NULL, 1),
(40, 'Felipe Vilar', 'Los videos embebidos no se reproducen en Firefox. Tal vez sea un problema de compatibilidad.', '2025-11-20 10:31:29', NULL, 0),
(41, 'Gema Ortiz', 'Página intuitiva y muy cómoda para el usuario.', '2025-11-20 10:31:29', NULL, 1),
(42, 'Óscar Rivas', 'La carga en móvil es rapidísima. Excelente optimización.', '2025-11-20 10:31:29', NULL, 1),
(43, 'Yolanda Soria', 'Para que cargue bien tuve que refrescar varias veces. Al inicio fue frustrante.', '2025-11-20 10:31:29', NULL, 0),
(44, 'Alfredo Pons', 'Explicaciones claras y accesibles. Ideal para quienes empiezan.', '2025-11-20 10:31:29', NULL, 1),
(45, 'Natalia Cuenca', 'No puedo subir mi foto de perfil, da error de formato incluso siendo JPG. Revisen el validador.', '2025-11-20 10:31:29', NULL, 0),
(46, 'Alejandro Polo', 'Todo está bien implementado y funciona sin problemas.', '2025-11-20 10:31:29', NULL, 1),
(47, 'Celia Moya', 'El buscador interno funciona sorprendentemente bien.', '2025-11-20 10:31:29', NULL, 1),
(48, 'Guillermo Soler', 'Diseño atractivo y funcional, una combinación difícil de lograr.', '2025-11-20 10:31:29', NULL, 1),
(49, 'Marina Blasco', 'Contenido muy bien seleccionado y presentado. Se agradece.', '2025-11-20 10:31:29', NULL, 1),
(50, 'Antonio Ferrer', 'Las contraseñas deberían tener requisitos más estrictos. El medidor es muy básico y no garantiza seguridad real.', '2025-11-20 10:31:29', NULL, 0),
(51, 'Benito Juárez', 'La navegación es fluida, rápida y sin fallos. Realmente agradable de usar y bien optimizada.', '2025-11-20 10:32:32', NULL, 1),
(52, 'Valentina Solís', 'Falta información sobre los horarios de soporte en el pie de página.', '2025-11-20 10:32:32', NULL, 0),
(53, 'Omar Cárdenas', 'Muy buen recurso para estudiantes, bien explicado y organizado.', '2025-11-20 10:32:32', NULL, 1),
(54, 'Natalia Jiménez', 'Al intentar crear mi cuenta apareció un error 500. No pude continuar.', '2025-11-20 10:32:32', NULL, 0),
(55, 'Emilio Vega', 'El diseño está algo anticuado, pero funciona correctamente.', '2025-11-20 10:32:32', NULL, 0),
(56, 'Rebeca Ríos', 'Me encanta cómo están clasificadas las categorías. Muy cómodo.', '2025-11-20 10:32:32', NULL, 1),
(57, 'Andrés Guzmán', 'Sitio de referencia en su tema. Lo recomendaré seguro.', '2025-11-20 10:32:32', NULL, 1),
(58, 'Patricia Larios', 'Sería útil tener un botón de “Me gusta” en los comentarios para ver cuáles aportan más.', '2025-11-20 10:32:32', NULL, 0),
(59, 'Salvador Mora', 'La sección “Acerca de nosotros” es muy motivadora. Buen toque personal.', '2025-11-20 10:32:32', NULL, 1),
(60, 'Verónica Ruiz', 'Demasiado texto en la portada. Le vendría bien más contenido visual.', '2025-11-20 10:32:32', NULL, 0),
(61, 'Jaime Torres', 'Muy satisfecho con toda la información que encontré.', '2025-11-20 10:32:32', NULL, 1),
(62, 'Estela Díaz', 'El mapa del sitio me ayudó a ubicarme rápidamente. Muy útil.', '2025-11-20 10:32:32', NULL, 1),
(63, 'Fabián Soto', 'En tablets hay problemas de alineación: las columnas se cruzan en horizontal. Hacerlo más responsivo sería ideal.', '2025-11-20 10:32:32', NULL, 0),
(64, 'Lorena Ramos', 'De las mejores experiencias de usuario que he tenido últimamente.', '2025-11-20 10:32:32', NULL, 1),
(65, 'Humberto Gil', 'En horas pico la página va muy lenta. Quizás sea necesario optimizar consultas o ampliar recursos del hosting.', '2025-11-20 10:32:32', NULL, 0),
(66, 'Gisela Pérez', 'Colores suaves y diseño cuidado. Agradable de usar.', '2025-11-20 10:32:32', NULL, 1),
(67, 'Arturo Núñez', 'Un foro comunitario sería una gran adición para interactuar entre usuarios.', '2025-11-20 10:32:32', NULL, 1),
(68, 'Claudia Vega', 'Dejé un comentario hace días y no he recibido respuesta. ¿Cómo contacto con soporte?', '2025-11-20 10:32:32', NULL, 0),
(69, 'Rodolfo Reyes', 'Gran fuente de conocimiento. Gracias por compartirlo de forma tan accesible.', '2025-11-20 10:32:32', NULL, 1),
(70, 'Diana Castro', 'La barra de búsqueda está demasiado escondida. Debería estar más visible.', '2025-11-20 10:32:32', NULL, 0),
(71, 'Camilo Marín', 'Todo funciona perfecto en Chrome. Muy estable.', '2025-11-20 10:32:32', NULL, 1),
(72, 'Ximena Flores', 'Me gustaría poder guardar artículos como favoritos para leerlos después.', '2025-11-20 10:32:32', NULL, 1),
(73, 'René León', 'Hay un error ortográfico en el título principal. Sería bueno corregirlo.', '2025-11-20 10:32:32', NULL, 0),
(74, 'Elisa Ponce', 'Página accesible, clara y fácil de usar para distintos perfiles. Muy bien pensado.', '2025-11-20 10:32:32', NULL, 1),
(75, 'Raúl Bravo', 'El video inicial es demasiado largo y no se puede adelantar. Se vuelve incómodo para quien ya ha visitado la página varias veces.', '2025-11-20 10:32:32', NULL, 0);

ALTER TABLE `uski_libro_visita`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `uski_libro_visita`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
COMMIT;