-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-11-2019 a las 23:13:23
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `der`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `amigos`
--

CREATE TABLE `amigos` (
  `id` int(11) NOT NULL,
  `id_usuarioEmisor` int(11) DEFAULT NULL,
  `id_usuarioReceptor` int(11) NOT NULL,
  `solicitudAceptada` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Fecha` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `amigos`
--

INSERT INTO `amigos` (`id`, `id_usuarioEmisor`, `id_usuarioReceptor`, `solicitudAceptada`, `Fecha`) VALUES
(1, 1, 2, 'si', '11/09/2010'),
(2, 2, 3, 'si', '02/04/2010'),
(3, 3, 1, 'si', '01/01/2010');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `corazones`
--

CREATE TABLE `corazones` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_publicacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `corazones`
--

INSERT INTO `corazones` (`id`, `id_usuario`, `id_publicacion`) VALUES
(1, 1, 3),
(2, 2, 1),
(3, 3, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos`
--

CREATE TABLE `fotos` (
  `id` int(11) NOT NULL,
  `src` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Descripcion` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_usuario` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Fecha` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `fotos`
--

INSERT INTO `fotos` (`id`, `src`, `Descripcion`, `id_usuario`, `Fecha`) VALUES
(1, 'web', 'unafoto', '1', '03/12/2014'),
(2, 'web', 'otra foto', '2', '04/12/2018'),
(3, 'web', 'otra foto', '3', '02/05/2015');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `frases`
--

CREATE TABLE `frases` (
  `id` int(11) NOT NULL,
  `Texto` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Fondo` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_usuario` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Fecha` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `frases`
--

INSERT INTO `frases` (`id`, `Texto`, `Fondo`, `id_usuario`, `Fecha`) VALUES
(1, 'Linda frase', NULL, '1', '04/10/2019'),
(2, 'Triste frase', NULL, '2', '07/11/2019'),
(3, 'alegre frase', NULL, '3', '06/08/2018');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `descripcion` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`id`, `id_usuario`, `descripcion`) VALUES
(1, 1, 'Una chica'),
(2, 2, 'Un chico'),
(3, 3, 'Otra chica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `id` int(11) NOT NULL,
  `id_perfil` int(11) DEFAULT NULL,
  `Fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `publicaciones`
--

INSERT INTO `publicaciones` (`id`, `id_perfil`, `Fecha`) VALUES
(1, 1, '0000-00-00'),
(2, 2, '0000-00-00'),
(3, 3, '0000-00-00'),
(4, 1, NULL),
(5, 2, NULL),
(6, 3, NULL),
(7, 1, NULL),
(8, 2, NULL),
(9, 3, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones_videos`
--

CREATE TABLE `publicaciones_videos` (
  `id` int(11) NOT NULL,
  `id_video` int(11) DEFAULT NULL,
  `id_publicacion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `publicaciones_videos`
--

INSERT INTO `publicaciones_videos` (`id`, `id_video`, `id_publicacion`) VALUES
(1, 1, 4),
(2, 2, 5),
(3, 3, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicacion_fotos`
--

CREATE TABLE `publicacion_fotos` (
  `id` int(11) NOT NULL,
  `id_foto` int(11) DEFAULT NULL,
  `id_publicacion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `publicacion_fotos`
--

INSERT INTO `publicacion_fotos` (`id`, `id_foto`, `id_publicacion`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicacion_frases`
--

CREATE TABLE `publicacion_frases` (
  `id` int(11) NOT NULL,
  `id_frase` int(11) NOT NULL,
  `id_publicacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `publicacion_frases`
--

INSERT INTO `publicacion_frases` (`id`, `id_frase`, `id_publicacion`) VALUES
(1, 1, 7),
(2, 2, 8),
(3, 3, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Apellido` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Sucursal` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Mail` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Contraseña` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `FechaDeCreacion` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ImagenDePerfil` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `Nombre`, `Apellido`, `Sucursal`, `Mail`, `Contraseña`, `FechaDeCreacion`, `ImagenDePerfil`) VALUES
(1, 'Maria', 'Perez', '4009', 'mperez@bpba.com.ar', 'contraseña1', '22/11/2019', NULL),
(2, 'Juan', 'Lopez', '4001', 'jlopz@bpba.com.ar', 'contraseña2', '10/10/2010', NULL),
(3, 'Tamara', 'Sanchez', '4014', 'tsanchez@bpba.com.ar', 'contraseña2', '11/03/1991', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_emisor`
--

CREATE TABLE `usuario_emisor` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario_emisor`
--

INSERT INTO `usuario_emisor` (`id`, `id_usuario`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_receptor`
--

CREATE TABLE `usuario_receptor` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario_receptor`
--

INSERT INTO `usuario_receptor` (`id`, `id_usuario`) VALUES
(3, 1),
(2, 2),
(1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `src` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Descripcion` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_usuario` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Fecha` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `videos`
--

INSERT INTO `videos` (`id`, `src`, `Descripcion`, `id_usuario`, `Fecha`) VALUES
(1, 'web', 'un video', '1', '01/01/2001'),
(2, 'web', 'otro video', '2', '17/10/1999'),
(3, 'web', 'otro video', '3', '09/03/1991');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `amigos`
--
ALTER TABLE `amigos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuarioEmisor_idx` (`id_usuarioEmisor`),
  ADD KEY `id_usuarioReceptor_idx` (`id_usuarioReceptor`);

--
-- Indices de la tabla `corazones`
--
ALTER TABLE `corazones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario_idx` (`id_usuario`),
  ADD KEY `id_publicaciones_idx` (`id_publicacion`);

--
-- Indices de la tabla `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `frases`
--
ALTER TABLE `frases`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario_idx` (`id_usuario`);

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `id_perfil_idx` (`id_perfil`);

--
-- Indices de la tabla `publicaciones_videos`
--
ALTER TABLE `publicaciones_videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_video_idx` (`id_video`),
  ADD KEY `id_publicacion_idx` (`id_publicacion`);

--
-- Indices de la tabla `publicacion_fotos`
--
ALTER TABLE `publicacion_fotos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `id_foto_idx` (`id_foto`),
  ADD KEY `id_publicacion_idx` (`id_publicacion`);

--
-- Indices de la tabla `publicacion_frases`
--
ALTER TABLE `publicacion_frases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_publicaciones_idx` (`id_publicacion`),
  ADD KEY `id_frases_idx` (`id_frase`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario_emisor`
--
ALTER TABLE `usuario_emisor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario_idx` (`id_usuario`);

--
-- Indices de la tabla `usuario_receptor`
--
ALTER TABLE `usuario_receptor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario_idx` (`id_usuario`);

--
-- Indices de la tabla `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `amigos`
--
ALTER TABLE `amigos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `corazones`
--
ALTER TABLE `corazones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `fotos`
--
ALTER TABLE `fotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `frases`
--
ALTER TABLE `frases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `publicaciones_videos`
--
ALTER TABLE `publicaciones_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `publicacion_fotos`
--
ALTER TABLE `publicacion_fotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `publicacion_frases`
--
ALTER TABLE `publicacion_frases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario_emisor`
--
ALTER TABLE `usuario_emisor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario_receptor`
--
ALTER TABLE `usuario_receptor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `amigos`
--
ALTER TABLE `amigos`
  ADD CONSTRAINT `FK_AMIGOS_USUARIOEMISOR` FOREIGN KEY (`id_usuarioEmisor`) REFERENCES `usuario_emisor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_AMIGOS_USUARIORECEPTOR` FOREIGN KEY (`id_usuarioReceptor`) REFERENCES `usuario_receptor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `corazones`
--
ALTER TABLE `corazones`
  ADD CONSTRAINT `FK_CORAZONES_PUBLICACION` FOREIGN KEY (`id_publicacion`) REFERENCES `publicaciones` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_CORAZONES_USUARIO` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD CONSTRAINT `FK_PERFIL_USUARIO` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD CONSTRAINT `FK_PUBLICACIONES_PERFIL` FOREIGN KEY (`id_perfil`) REFERENCES `perfil` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `publicaciones_videos`
--
ALTER TABLE `publicaciones_videos`
  ADD CONSTRAINT `FK_PUBLICACIONES_VIDEO_PUBLICACION` FOREIGN KEY (`id_publicacion`) REFERENCES `publicaciones` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_PUBLICACIONES_VIDEO_VIDEO` FOREIGN KEY (`id_video`) REFERENCES `videos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `publicacion_fotos`
--
ALTER TABLE `publicacion_fotos`
  ADD CONSTRAINT `FK_PUBLICACION_FOTOS_FOTO` FOREIGN KEY (`id_foto`) REFERENCES `fotos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_PUBLICACION_FOTOS_PUBLICACION` FOREIGN KEY (`id_publicacion`) REFERENCES `publicaciones` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `publicacion_frases`
--
ALTER TABLE `publicacion_frases`
  ADD CONSTRAINT `FK_PUBLICACION_FRASES_FRASE` FOREIGN KEY (`id_frase`) REFERENCES `frases` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_PUBLICACION_FRASES_PUBLICACION` FOREIGN KEY (`id_publicacion`) REFERENCES `publicaciones` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario_emisor`
--
ALTER TABLE `usuario_emisor`
  ADD CONSTRAINT `FK_USUARIO_EMISOR_USUARIO` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario_receptor`
--
ALTER TABLE `usuario_receptor`
  ADD CONSTRAINT `FK_usuario_receptor_USUARIOS` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
