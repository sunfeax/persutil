-- Base de datos alternativa para PERSUTIL
-- Fecha de actualización: 2026-02-20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `persutil_alt_db`
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

USE `persutil_alt_db`;

CREATE TABLE IF NOT EXISTS `uski_libro_visita` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(255) NOT NULL,
  `comentario` VARCHAR(1024) NOT NULL,
  `fecha_creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_modificacion` TIMESTAMP NULL DEFAULT NULL,
  `esta_publicado` TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  CONSTRAINT `chk_uski_nombre_len` CHECK (CHAR_LENGTH(`nombre`) BETWEEN 3 AND 255),
  CONSTRAINT `chk_uski_comentario_len` CHECK (CHAR_LENGTH(`comentario`) BETWEEN 25 AND 1024),
  CONSTRAINT `chk_uski_esta_publicado` CHECK (`esta_publicado` IN (0, 1))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE INDEX `idx_uski_publicado` ON `uski_libro_visita` (`esta_publicado`);
CREATE INDEX `idx_uski_fecha_creacion` ON `uski_libro_visita` (`fecha_creacion`);

INSERT INTO `uski_libro_visita`
  (`nombre`, `comentario`, `fecha_creacion`, `fecha_modificacion`, `esta_publicado`)
VALUES
  (
    'Ana Garcia',
    'Aplicacion clara y estable, encontre lo que necesitaba sin problemas.',
    NOW(),
    NULL,
    1
  ),
  (
    'Luis Perez',
    'Interfaz sencilla y util. Seria ideal anadir mas ejemplos practicos para nuevos usuarios.',
    NOW(),
    NULL,
    0
  ),
  (
    'Maria Lopez',
    'Buen rendimiento general y contenido actualizado, me ayudo a resolver una duda tecnica.',
    NOW(),
    NULL,
    1
  );

COMMIT;
