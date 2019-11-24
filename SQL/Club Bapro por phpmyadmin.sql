-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-11-2019 a las 17:33:09
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
-- Base de datos: `clubbapro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `amigos`
--

CREATE TABLE `amigos` (
  `id` int(11) NOT NULL,
  `id_usuarioEmisor` int(11) NOT NULL,
  `id_usuarioReceptor` int(11) NOT NULL,
  `solicitudAceptada` varchar(45) COLLATE utf8_bin NOT NULL,
  `Fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `amigos`
--

INSERT INTO `amigos` (`id`, `id_usuarioEmisor`, `id_usuarioReceptor`, `solicitudAceptada`, `Fecha`) VALUES
(1, 1, 1, 'si', '2019-01-01'),
(2, 2, 2, 'si', '2019-04-05'),
(3, 3, 3, 'si', '2019-05-03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `corazones`
--

CREATE TABLE `corazones` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_publicacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `corazones`
--

INSERT INTO `corazones` (`id`, `id_usuario`, `id_publicacion`) VALUES
(1, 1, 2),
(2, 2, 3),
(3, 3, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos`
--

CREATE TABLE `fotos` (
  `id` int(11) NOT NULL,
  `src` varchar(45) COLLATE utf8_bin NOT NULL,
  `Descripcion` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `id_usuario` int(11) NOT NULL,
  `Fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `fotos`
--

INSERT INTO `fotos` (`id`, `src`, `Descripcion`, `id_usuario`, `Fecha`) VALUES
(1, 'unapagina', 'unafoto', 1, '2019-11-23'),
(2, 'otra pagina', 'otra foto', 2, '2019-10-23'),
(3, 'maspaginas', 'tercerafoto', 3, '2019-09-23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `frases`
--

CREATE TABLE `frases` (
  `id` int(11) NOT NULL,
  `Texto` varchar(45) COLLATE utf8_bin NOT NULL,
  `Fondo` varchar(45) COLLATE utf8_bin NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `Fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `frases`
--

INSERT INTO `frases` (`id`, `Texto`, `Fondo`, `id_usuario`, `Fecha`) VALUES
(1, 'algo', 'uno', 1, '2019-01-24'),
(2, 'otra cosa', 'otro', 2, '2019-11-04'),
(3, 'una mas', 'lindo fondo', 3, '2019-08-09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`id`, `id_usuario`, `descripcion`) VALUES
(1, 1, 'una chica'),
(2, 2, 'un chico'),
(3, 3, 'otra chica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `id` int(11) NOT NULL,
  `id_perfil` int(11) NOT NULL,
  `Fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `publicaciones`
--

INSERT INTO `publicaciones` (`id`, `id_perfil`, `Fecha`) VALUES
(1, 1, '2019-11-23'),
(2, 2, '2019-10-23'),
(3, 3, '2019-09-23'),
(11, 1, '2019-08-23'),
(12, 2, '2019-07-10'),
(13, 3, '2019-04-23'),
(14, 1, '2019-01-21'),
(15, 2, '2019-02-03'),
(16, 3, '2019-03-08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones_videos`
--

CREATE TABLE `publicaciones_videos` (
  `id` int(11) NOT NULL,
  `id_video` int(11) NOT NULL,
  `id_publicacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
  `id_foto` int(11) NOT NULL,
  `id_publicacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
  `Nombre` varchar(45) COLLATE utf8_bin NOT NULL,
  `Apellido` varchar(45) COLLATE utf8_bin NOT NULL,
  `Sucursal` int(11) NOT NULL,
  `Mail` varchar(45) COLLATE utf8_bin NOT NULL,
  `Contraseña` varchar(45) COLLATE utf8_bin NOT NULL,
  `FechaDeCreacion` date NOT NULL,
  `ImagenDePerfil` varchar(45) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `Nombre`, `Apellido`, `Sucursal`, `Mail`, `Contraseña`, `FechaDeCreacion`, `ImagenDePerfil`) VALUES
(1, 'Maria', 'Lopez', 4009, 'mlopez@bpba.com.ar', '1234', '2019-01-01', NULL),
(2, 'Julian', 'Sosa', 4001, 'jsosa@bpba.com.ar', '1234', '2019-02-02', NULL),
(3, 'Teresa', 'Migueles', 1000, 'tmigueles@bpba.com.ar', '1234', '2019-03-03', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_emisor`
--

CREATE TABLE `usuario_emisor` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `usuario_emisor`
--

INSERT INTO `usuario_emisor` (`id`, `id_usuario`) VALUES
(1, 1),
(2, 1),
(3, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_receptor`
--

CREATE TABLE `usuario_receptor` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `usuario_receptor`
--

INSERT INTO `usuario_receptor` (`id`, `id_usuario`) VALUES
(1, 2),
(2, 3),
(3, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `src` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `Descripcion` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `id_usuario` int(11) NOT NULL,
  `Fecha` varchar(45) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `videos`
--

INSERT INTO `videos` (`id`, `src`, `Descripcion`, `id_usuario`, `Fecha`) VALUES
(1, 'unapagina', 'un video', 1, '2019/11/23'),
(2, 'otra pagina', 'otro video', 2, '2019/10/22'),
(3, 'otrapagina', 'mas videos', 3, '2019/09/22');

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
  ADD CONSTRAINT `fk_amigos_usuarioEmisor` FOREIGN KEY (`id_usuarioEmisor`) REFERENCES `der`.`usuario_emisor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_amigos_usuarioReceptor` FOREIGN KEY (`id_usuarioReceptor`) REFERENCES `der`.`usuario_receptor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `corazones`
--
ALTER TABLE `corazones`
  ADD CONSTRAINT `fk_corazones_publicaciones` FOREIGN KEY (`id_publicacion`) REFERENCES `der`.`publicaciones` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_corazones_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `der`.`usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD CONSTRAINT `fk_perfil_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `der`.`usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD CONSTRAINT `fk_publicaciones_perfil` FOREIGN KEY (`id_perfil`) REFERENCES `der`.`perfil` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `publicaciones_videos`
--
ALTER TABLE `publicaciones_videos`
  ADD CONSTRAINT `fk_publicaciones_videos_publicacion` FOREIGN KEY (`id_publicacion`) REFERENCES `der`.`publicaciones` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_publicaciones_videos_video` FOREIGN KEY (`id_video`) REFERENCES `der`.`videos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `publicacion_fotos`
--
ALTER TABLE `publicacion_fotos`
  ADD CONSTRAINT `fk_publicacion_fotos_foto` FOREIGN KEY (`id_foto`) REFERENCES `der`.`fotos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_publicacion_fotos_publicacion` FOREIGN KEY (`id_publicacion`) REFERENCES `der`.`publicaciones` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `publicacion_frases`
--
ALTER TABLE `publicacion_frases`
  ADD CONSTRAINT `fk_publicacion_frases_frase` FOREIGN KEY (`id_frase`) REFERENCES `der`.`frases` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_publicacion_frases_publicacion` FOREIGN KEY (`id_publicacion`) REFERENCES `der`.`publicaciones` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario_emisor`
--
ALTER TABLE `usuario_emisor`
  ADD CONSTRAINT `fk_usuario_emisor_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `der`.`usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario_receptor`
--
ALTER TABLE `usuario_receptor`
  ADD CONSTRAINT `fk_usuario_receptor_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `der`.`usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
