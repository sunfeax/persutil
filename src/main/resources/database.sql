SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `blog` (
  `id` bigint NOT NULL,
  `titulo` varchar(1024) NOT NULL,
  `contenido` longtext NOT NULL,
  `etiquetas` varchar(1024) NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `blog`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;
COMMIT;
