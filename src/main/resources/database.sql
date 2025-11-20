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
(1, 'Ana García', 'Excelente страница. Información es muy clara y el diseño es intuitivo. Es uno de los mejores sitios que he visitado últimamente. Me gustaría felicitar al equipo de desarrollo por el excelente trabajo que han realizado con la usabilidad y la presentación del contenido. ¡Sigan así!', '2025-11-20 10:31:29', NULL, 1),
(2, 'Luis Pérez', 'Me gustaría ver más contenido sobre la sección de noticias. Muy buen trabajo.', '2025-11-20 10:31:29', NULL, 1),
(3, 'María Lopez', 'El formulario de contacto no funciona en mi móvil.', '2025-11-20 10:31:29', NULL, 0),
(4, 'Javier Ruiz', 'Simplemente genial. Volveré pronto.', '2025-11-20 10:31:29', NULL, 1),
(5, 'Elena Soto', 'La carga es un poco lenta, pero el contenido vale la pena. He notado que las imágenes tardan en aparecer, especialmente en conexiones más lentas, lo que podría ser un área de mejora. A pesar de esto, el valor de la información compensa la espera.', '2025-11-20 10:31:29', NULL, 0),
(6, 'Carlos Castro', 'Muy útil para mi proyecto de investigación. Gracias por el recurso.', '2025-11-20 10:31:29', NULL, 1),
(7, 'Andrea Mora', '¿Cuándo agregarán la función de búsqueda avanzada? Sería de gran ayuda para filtrar los resultados de forma más eficiente y encontrar exactamente lo que necesito en menos tiempo.', '2025-11-20 10:31:29', NULL, 1),
(8, 'Ricardo Vidal', 'No entendí el apartado 3. Podrían explicarlo con un ejemplo?', '2025-11-20 10:31:29', NULL, 0),
(9, 'Sofía Torres', 'Todo en orden. Me gustó mucho la galería de imágenes.', '2025-11-20 10:31:29', NULL, 1),
(10, 'Pablo Herrera', 'Una experiencia de usuario fantástica. Seguid así.', '2025-11-20 10:31:29', NULL, 1),
(11, 'Laura Gil', 'El enlace a la página de recursos está roto. Por favor, revisen la URL. Me fue imposible acceder a los archivos que se mencionan en el artículo. Este es un problema crítico que necesita atención inmediata.', '2025-11-20 10:31:29', NULL, 0),
(12, 'Diego Núñez', 'He encontrado exactamente lo que estaba buscando.', '2025-11-20 10:31:29', NULL, 1),
(13, 'Isabel Ramos', 'Demasiados anuncios pop-up. Hace difícil la navegación. Realmente interrumpe la lectura y la experiencia general.', '2025-11-20 10:31:29', NULL, 0),
(14, 'Sergio Martín', 'Felicidades al equipo de desarrollo por la web.', '2025-11-20 10:31:29', NULL, 1),
(15, 'Marta Navarro', 'Podrían mejorar la tipografía, es un poco pequeña. Leer el texto durante mucho tiempo resulta fatigoso para los ojos. Consideren aumentar el tamaño base de la fuente o proporcionar una opción de accesibilidad para esto.', '2025-11-20 10:31:29', NULL, 0),
(16, 'Jorge Jiménez', 'Un sitio web muy profesional y bien organizado.', '2025-11-20 10:31:29', NULL, 1),
(17, 'Lucía Cano', 'He compartido el contenido con mis colegas. Muy valioso.', '2025-11-20 10:31:29', NULL, 1),
(18, 'Héctor Díaz', '¿Necesito una cuenta para dejar un comentario? No lo veo claro.', '2025-11-20 10:31:29', NULL, 0),
(19, 'Nuria Flores', 'Los tutoriales son de lo mejor que he visto en internet. La calidad de la producción y la claridad de la explicación superan mis expectativas.', '2025-11-20 10:31:29', NULL, 1),
(20, 'Víctor Gómez', 'El menú de navegación es confuso.', '2025-11-20 10:31:29', NULL, 0),
(21, 'Rosa Sánchez', 'Me encanta la paleta de colores.', '2025-11-20 10:31:29', NULL, 1),
(22, 'Manuel Reyes', 'La información está un poco desactualizada en el tema X. Sugiero revisar las fuentes y los datos más recientes para mantener la relevancia.', '2025-11-20 10:31:29', NULL, 0),
(23, 'Claudia Vega', 'Una fuente de información confiable. Excelente!', '2025-11-20 10:31:29', NULL, 1),
(24, 'Francisco Luna', 'El chat de soporte no responde. Dejé un mensaje hace varias horas y sigo esperando. La atención al cliente necesita mejorar seriamente si quieren retener usuarios.', '2025-11-20 10:31:29', NULL, 0),
(25, 'Carmen Aguilar', 'Me ha salvado el día esta información. Mil gracias.', '2025-11-20 10:31:29', NULL, 1),
(26, 'Pedro Bravo', 'El diseño es moderno y limpio. Excelente.', '2025-11-20 10:31:29', NULL, 1),
(27, 'Esther Cruz', 'Sigo teniendo problemas para descargar el PDF. Cada vez que hago clic, la descarga falla. Podrían verificar la configuración del servidor o el enlace directo al archivo?', '2025-11-20 10:31:29', NULL, 0),
(28, 'Álvaro Prieto', 'Sugiero añadir una sección de preguntas frecuentes.', '2025-11-20 10:31:29', NULL, 1),
(29, 'Silvia Marín', 'Registro exitoso. Espero mucho de este sitio.', '2025-11-20 10:31:29', NULL, 1),
(30, 'Adrián Salas', 'No me gusta la nueva actualización del diseño. Prefería la versión anterior por su simplicidad. Este nuevo estilo me parece un poco recargado y menos funcional.', '2025-11-20 10:31:29', NULL, 0),
(31, 'Paula Peña', 'Fácil de usar y muy rápido. Perfecto.', '2025-11-20 10:31:29', NULL, 1),
(32, 'Roberto Vivas', 'He dejado una donación. Sigan con el buen trabajo.', '2025-11-20 10:31:29', NULL, 1),
(33, 'Juana Romero', 'No encontré la opción de idioma español.', '2025-11-20 10:31:29', NULL, 0),
(34, 'Miguel Bosch', 'El mejor sitio web del nicho, sin duda.', '2025-11-20 10:31:29', NULL, 1),
(35, 'Teresa Moya', 'El formulario de registro es demasiado largo. Requiere demasiada información personal para un simple registro. Recomendaría simplificar el proceso para mejorar la tasa de conversión.', '2025-11-20 10:31:29', NULL, 0),
(36, 'Daniel Rubio', 'Contenido fresco y relevante. Gracias!', '2025-11-20 10:31:29', NULL, 1),
(37, 'Eva Cortés', 'Me gustaría un modo oscuro para la navegación nocturna. Sería mucho más cómodo para leer en ambientes con poca luz.', '2025-11-20 10:31:29', NULL, 1),
(38, 'Ramón Otero', 'Un error 404 en el pie de página. El enlace a la política de privacidad parece estar roto. Esto es un detalle importante a corregir.', '2025-11-20 10:31:29', NULL, 0),
(39, 'Beatriz Soto', 'Simplemente perfecto, sin quejas.', '2025-11-20 10:31:29', NULL, 1),
(40, 'Felipe Vilar', 'Los videos incrustados no se reproducen en mi navegador Firefox.', '2025-11-20 10:31:29', NULL, 0),
(41, 'Gema Ortiz', 'Muy buen sitio, muy intuitivo para el usuario.', '2025-11-20 10:31:29', NULL, 1),
(42, 'Óscar Rivas', 'La velocidad de carga en móvil es inmejorable. Realmente se nota el esfuerzo de optimización que se ha realizado. ¡Felicidades!', '2025-11-20 10:31:29', NULL, 1),
(43, 'Yolanda Soria', 'Tuve que refrescar la página varias veces para que cargara por completo. La experiencia inicial fue frustrante.', '2025-11-20 10:31:29', NULL, 0),
(44, 'Alfredo Pons', 'Muy bien explicado, incluso para principiantes. El lenguaje es accesible y los conceptos están bien desarrollados.', '2025-11-20 10:31:29', NULL, 1),
(45, 'Natalia Cuenca', 'No me permite subir mi foto de perfil. El sistema da un error de formato a pesar de usar un archivo JPG válido. Por favor, revisen el validador de archivos.', '2025-11-20 10:31:29', NULL, 0),
(46, 'Alejandro Polo', 'Todo correcto y funcional.', '2025-11-20 10:31:29', NULL, 1),
(47, 'Celia Moya', 'El motor de búsqueda interno es muy potente.', '2025-11-20 10:31:29', NULL, 1),
(48, 'Guillermo Soler', 'Un diseño que realmente funciona y es atractivo.', '2025-11-20 10:31:29', NULL, 1),
(49, 'Marina Blasco', 'El contenido está muy bien curado. Se nota el esfuerzo.', '2025-11-20 10:31:29', NULL, 1),
(50, 'Antonio Ferrer', 'Necesitan revisar la seguridad de las contraseñas. El indicador de fortaleza es muy básico, y no exige caracteres especiales. Se deben implementar políticas de seguridad más estrictas para proteger las cuentas de usuario.', '2025-11-20 10:31:29', NULL, 0),
(51, 'Benito Juárez', 'La navegación es muy fluida y rápida. Me ha impresionado la optimización. Es un placer usar la web en cualquier dispositivo, la respuesta es inmediata.', '2025-11-20 10:32:32', NULL, 1),
(52, 'Valentina Solís', 'Falta información sobre el horario de atención al cliente en el pie de página.', '2025-11-20 10:32:32', NULL, 0),
(53, 'Omar Cárdenas', 'Excelente recurso para estudiantes. Todo muy bien documentado.', '2025-11-20 10:32:32', NULL, 1),
(54, 'Natalia Jiménez', 'Tuve un error al intentar crear mi cuenta. Código de error 500.', '2025-11-20 10:32:32', NULL, 0),
(55, 'Emilio Vega', 'El diseño es un poco anticuado, pero la funcionalidad es perfecta.', '2025-11-20 10:32:32', NULL, 0),
(56, 'Rebeca Ríos', 'Me encanta que los artículos estén categorizados de forma tan clara.', '2025-11-20 10:32:32', NULL, 1),
(57, 'Andrés Guzmán', 'Un sitio web de referencia. Lo recomiendo ampliamente.', '2025-11-20 10:32:32', NULL, 1),
(58, 'Patricia Larios', 'No pude encontrar el botón de \"Me gusta\" en los comentarios. Sería una función social muy útil para interactuar con otros usuarios y saber qué opiniones son las más populares.', '2025-11-20 10:32:32', NULL, 0),
(59, 'Salvador Mora', 'El contenido de la sección \"Acerca de nosotros\" es muy inspirador.', '2025-11-20 10:32:32', NULL, 1),
(60, 'Verónica Ruiz', 'Demasiado texto en la página principal. Necesita más imágenes.', '2025-11-20 10:32:32', NULL, 0),
(61, 'Jaime Torres', 'Muy satisfecho con la calidad de la información proporcionada.', '2025-11-20 10:32:32', NULL, 1),
(62, 'Estela Díaz', 'El mapa de sitio me ayudó mucho a encontrar lo que necesitaba.', '2025-11-20 10:32:32', NULL, 1),
(63, 'Fabián Soto', 'La versión para tablets tiene problemas de alineación. Las columnas se superponen en modo horizontal, lo que hace que el texto sea ilegible.', '2025-11-20 10:32:32', NULL, 0),
(64, 'Lorena Ramos', 'Una de las mejores experiencias de usuario que he tenido últimamente.', '2025-11-20 10:32:32', NULL, 1),
(65, 'Humberto Gil', 'El tiempo de respuesta del servidor es lento en las horas pico. En la tarde es casi imposible navegar. Se debería considerar optimizar la base de datos o mejorar el plan de hosting para manejar el tráfico.', '2025-11-20 10:32:32', NULL, 0),
(66, 'Gisela Pérez', 'Los colores son muy agradables a la vista. Diseño muy cuidado.', '2025-11-20 10:32:32', NULL, 1),
(67, 'Arturo Núñez', 'Sugiero un foro de preguntas y respuestas para la comunidad.', '2025-11-20 10:32:32', NULL, 1),
(68, 'Claudia Vega', 'Mi comentario anterior fue ignorado. ¿Dónde puedo contactar al soporte?', '2025-11-20 10:32:32', NULL, 0),
(69, 'Rodolfo Reyes', 'Una fuente inagotable de conocimiento. Gracias!', '2025-11-20 10:32:32', NULL, 1),
(70, 'Diana Castro', 'No me gusta que la barra de búsqueda esté tan oculta.', '2025-11-20 10:32:32', NULL, 0),
(71, 'Camilo Marín', 'Todo funciona perfectamente en mi navegador Chrome.', '2025-11-20 10:32:32', NULL, 1),
(72, 'Ximena Flores', 'Me gustaría poder guardar artículos como favoritos.', '2025-11-20 10:32:32', NULL, 1),
(73, 'René León', 'Hay un error de ortografía en el título de la sección principal.', '2025-11-20 10:32:32', NULL, 0),
(74, 'Elisa Ponce', 'Un gran trabajo. La página es muy accesible para todos. Los estándares de usabilidad están bien implementados, lo que facilita el uso a personas con diversas necesidades.', '2025-11-20 10:32:32', NULL, 1),
(75, 'Raúl Bravo', 'El video de introducción es demasiado largo y no se puede saltar.', '2025-11-20 10:32:32', NULL, 0);

ALTER TABLE `uski_libro_visita`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `uski_libro_visita`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
COMMIT;