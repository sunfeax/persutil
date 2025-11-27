-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Servidor: database:3306
-- Tiempo de generación: 10-11-2025 a las 11:28:03
-- Versión del servidor: 8.4.5
-- Versión de PHP: 8.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de datos: `persutildb`
--

-- --------------------------------------------------------

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
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `blog`
--
ALTER TABLE `blog`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;


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
