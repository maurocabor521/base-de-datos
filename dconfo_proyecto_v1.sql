-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-03-2019 a las 13:45:08
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dconfo_proyecto_v1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad`
--

CREATE TABLE `actividad` (
  `idActividad` int(11) NOT NULL,
  `nombreActividad` varchar(45) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `actividad`
--

INSERT INTO `actividad` (`idActividad`, `nombreActividad`) VALUES
(1, 'Conciencia Fónica'),
(2, 'Conciencia Léxica'),
(3, 'Conciencia Silábica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adminstrador`
--

CREATE TABLE `adminstrador` (
  `idAdminstrador` int(11) NOT NULL,
  `nameAdminstrador` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `emailAdminstrador` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `passwork_Adminstrador` varchar(45) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `adminstrador`
--

INSERT INTO `adminstrador` (`idAdminstrador`, `nameAdminstrador`, `emailAdminstrador`, `passwork_Adminstrador`) VALUES
(111, 'Leonardo Huertas', 'lemail', '123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `idcurso` int(11) NOT NULL,
  `Instituto_idInstituto` int(11) NOT NULL,
  `namecurso` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `periodocurso` varchar(45) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`idcurso`, `Instituto_idInstituto`, `namecurso`, `periodocurso`) VALUES
(1, 999, 'Curso 1', '20191'),
(2, 999, 'Curso 2', '20191'),
(3, 999, 'Curso 3', '20191');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `iddocente` int(11) NOT NULL,
  `namedocente` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `dnidocente` int(11) NOT NULL,
  `email_docente` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `passwork_docente` varchar(45) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `docente`
--

INSERT INTO `docente` (`iddocente`, `namedocente`, `dnidocente`, `email_docente`, `passwork_docente`) VALUES
(220, 'Juan Velez', 220, 'jemail', '123'),
(221, 'Maria Lopez', 221, 'memail', '123'),
(222, 'Helena Saldarriaga', 222, 'hemail', '123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejerciciog1`
--

CREATE TABLE `ejerciciog1` (
  `idEjercicioG1` int(11) NOT NULL,
  `nameEjercicioG1` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `docente_iddocente` int(11) NOT NULL,
  `Tipo_idTipo` int(11) NOT NULL,
  `Tipo_Actividad_idActividad` int(11) NOT NULL,
  `rutaImagen_EjercicioG1` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cantidadValidaEjercicioG1` int(45) NOT NULL,
  `oracionEjercicioG1` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejerciciog2`
--

CREATE TABLE `ejerciciog2` (
  `idEjercicioG2` int(11) NOT NULL,
  `nameEjercicioG2` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `docente_iddocente` int(11) NOT NULL,
  `Tipo_idTipo` int(11) NOT NULL,
  `Tipo_Actividad_idActividad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `idestudiante` int(11) NOT NULL,
  `nameestudiante` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `dniestudiante` int(11) NOT NULL,
  `acudienteestudiante` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `emailAcudienteestudiante` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `passwork_estudiante` varchar(45) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`idestudiante`, `nameestudiante`, `dniestudiante`, `acudienteestudiante`, `emailAcudienteestudiante`, `passwork_estudiante`) VALUES
(331, 'Ana Rojas', 331, 'Patricia Diaz', 'pemail', '123'),
(332, 'Mariana Juarez', 332, 'Raquel Gomez', 'remail', '123'),
(333, 'Helen Botero', 333, 'Carlos Botero', 'cemail', '123'),
(334, 'Liliana Perez', 334, 'Catalina Velez', 'cemail', '123'),
(335, 'Juana Duarte', 335, 'Karime Torres', 'kemail', '123'),
(336, 'Andrea Jimenez', 336, 'Yolanda Muñoz', 'yemail', '123'),
(337, 'Anabelle Pabón', 337, 'Marta Palacios', 'memail', '123'),
(338, 'Melissa Cifuentes', 338, 'Teresa Alvarez', 'temail', '123'),
(339, 'Lina Restrepo', 339, 'Olga Lopez', 'oemail', '123'),
(340, 'Valeria Arias', 340, 'Georgina Otero', 'gemail', '123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante_has_deber`
--

CREATE TABLE `estudiante_has_deber` (
  `estudiante_idestudiante` int(11) NOT NULL,
  `docente_iddocente` int(11) NOT NULL,
  `EjercicioG1_idEjercicioG1` int(11) DEFAULT NULL,
  `EjercicioG2_idEjercicioG2` int(11) DEFAULT NULL,
  `fechaestudiante_has_Deber` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `tipoDeber` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `calificacionestudiante_has_Deber` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `idgrupo` int(11) NOT NULL,
  `namegrupo` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `curso_idcurso` int(11) NOT NULL,
  `curso_Instituto_idInstituto` int(11) NOT NULL,
  `docente_iddocente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`idgrupo`, `namegrupo`, `curso_idcurso`, `curso_Instituto_idInstituto`, `docente_iddocente`) VALUES
(1, 'grupo1 c1', 1, 999, 220),
(2, 'grupo2 c1', 1, 999, 222),
(3, 'grupo1 c2', 2, 999, NULL),
(4, 'grupo2 c2', 2, 999, NULL),
(5, 'grupo1 c3', 3, 999, NULL),
(6, 'grupo2 c3', 3, 999, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo_has_ejercicio`
--

CREATE TABLE `grupo_has_ejercicio` (
  `grupo_idgrupo` int(11) NOT NULL,
  `EjercicioG1_idEjercicioG1` int(11) DEFAULT NULL,
  `EjercicioG2_idEjercicioG2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo_has_estudiante`
--

CREATE TABLE `grupo_has_estudiante` (
  `grupo_idgrupo` int(11) NOT NULL,
  `estudiante_idestudiante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `grupo_has_estudiante`
--

INSERT INTO `grupo_has_estudiante` (`grupo_idgrupo`, `estudiante_idestudiante`) VALUES
(1, 331),
(1, 333),
(1, 335),
(1, 337),
(1, 339),
(2, 332),
(2, 334),
(2, 336),
(2, 338),
(2, 340),
(3, 331),
(3, 334),
(3, 337),
(3, 340),
(4, 332),
(4, 335),
(4, 338),
(4, 339),
(5, 331),
(5, 333),
(5, 334),
(5, 336),
(5, 337),
(5, 339),
(5, 340),
(6, 332),
(6, 335),
(6, 338);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen`
--

CREATE TABLE `imagen` (
  `idImagen_Ejercicio` int(11) NOT NULL,
  `name_Imagen_Ejercicio` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `ruta_Imagen_Ejercicio` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `filaImagen` int(11) NOT NULL,
  `columnaImagen` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `EjercicioGrupo2_idEjercicioGrupo2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instituto`
--

CREATE TABLE `instituto` (
  `idInstituto` int(11) NOT NULL,
  `Adminstrador_idAdminstrador` int(11) NOT NULL,
  `nameInstituto` varchar(45) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `instituto`
--

INSERT INTO `instituto` (`idInstituto`, `Adminstrador_idAdminstrador`, `nameInstituto`) VALUES
(999, 111, 'Instituto Nacional');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `idTipo` int(11) NOT NULL,
  `name_Tipo` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `Actividad_idActividad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`idTipo`, `name_Tipo`, `Actividad_idActividad`) VALUES
(1, 'tipo1', 1),
(2, 'tipo2', 1),
(3, 'tipo1', 2),
(4, 'tipo2', 2),
(5, 'tipo1', 3),
(6, 'tipo2', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD PRIMARY KEY (`idActividad`);

--
-- Indices de la tabla `adminstrador`
--
ALTER TABLE `adminstrador`
  ADD PRIMARY KEY (`idAdminstrador`,`nameAdminstrador`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`idcurso`,`Instituto_idInstituto`),
  ADD UNIQUE KEY `idcurso_UNIQUE` (`idcurso`),
  ADD KEY `fk_curso_Instituto1_idx` (`Instituto_idInstituto`);

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`iddocente`);

--
-- Indices de la tabla `ejerciciog1`
--
ALTER TABLE `ejerciciog1`
  ADD PRIMARY KEY (`idEjercicioG1`),
  ADD UNIQUE KEY `idEjercicio_UNIQUE` (`idEjercicioG1`),
  ADD KEY `fk_EjercicioG1_docente1_idx` (`docente_iddocente`),
  ADD KEY `fk_EjercicioG1_Tipo1_idx` (`Tipo_idTipo`,`Tipo_Actividad_idActividad`);

--
-- Indices de la tabla `ejerciciog2`
--
ALTER TABLE `ejerciciog2`
  ADD PRIMARY KEY (`idEjercicioG2`),
  ADD KEY `fk_EjercicioGrupo2_Tipo1_idx` (`Tipo_idTipo`,`Tipo_Actividad_idActividad`),
  ADD KEY `fk_EjercicioGrupo2_docente1_idx` (`docente_iddocente`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`idestudiante`);

--
-- Indices de la tabla `estudiante_has_deber`
--
ALTER TABLE `estudiante_has_deber`
  ADD PRIMARY KEY (`estudiante_idestudiante`,`docente_iddocente`),
  ADD KEY `fk_estudiante_has_EjercicioG1_estudiante1_idx` (`estudiante_idestudiante`),
  ADD KEY `fk_estudiante_has_EjercicioG1_EjercicioG11_idx` (`EjercicioG1_idEjercicioG1`),
  ADD KEY `fk_estudiante_has_EjercicioG1_EjercicioG21_idx` (`EjercicioG2_idEjercicioG2`),
  ADD KEY `fk_estudiante_has_EjercicioG1_docente1_idx` (`docente_iddocente`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`idgrupo`),
  ADD KEY `fk_grupo_curso1_idx` (`curso_idcurso`,`curso_Instituto_idInstituto`),
  ADD KEY `fk_grupo_docente1_idx` (`docente_iddocente`);

--
-- Indices de la tabla `grupo_has_ejercicio`
--
ALTER TABLE `grupo_has_ejercicio`
  ADD PRIMARY KEY (`grupo_idgrupo`),
  ADD KEY `fk_grupo_has_Ejercicio_grupo1_idx` (`grupo_idgrupo`),
  ADD KEY `fk_grupo_has_Ejercicio_EjercicioG11_idx` (`EjercicioG1_idEjercicioG1`),
  ADD KEY `fk_grupo_has_Ejercicio_EjercicioG21_idx` (`EjercicioG2_idEjercicioG2`);

--
-- Indices de la tabla `grupo_has_estudiante`
--
ALTER TABLE `grupo_has_estudiante`
  ADD PRIMARY KEY (`grupo_idgrupo`,`estudiante_idestudiante`),
  ADD KEY `fk_grupo_has_estudiante_estudiante1_idx` (`estudiante_idestudiante`),
  ADD KEY `fk_grupo_has_estudiante_grupo1_idx` (`grupo_idgrupo`);

--
-- Indices de la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD PRIMARY KEY (`idImagen_Ejercicio`),
  ADD KEY `fk_Imagen_EjercicioGrupo21_idx` (`EjercicioGrupo2_idEjercicioGrupo2`);

--
-- Indices de la tabla `instituto`
--
ALTER TABLE `instituto`
  ADD PRIMARY KEY (`idInstituto`,`Adminstrador_idAdminstrador`),
  ADD KEY `fk_Instituto_Adminstrador1_idx` (`Adminstrador_idAdminstrador`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`idTipo`,`Actividad_idActividad`),
  ADD KEY `fk_Tipo_Actividad1_idx` (`Actividad_idActividad`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `idcurso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `ejerciciog1`
--
ALTER TABLE `ejerciciog1`
  MODIFY `idEjercicioG1` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `grupo`
--
ALTER TABLE `grupo`
  MODIFY `idgrupo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `imagen`
--
ALTER TABLE `imagen`
  MODIFY `idImagen_Ejercicio` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `fk_curso_Instituto1` FOREIGN KEY (`Instituto_idInstituto`) REFERENCES `instituto` (`idInstituto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ejerciciog1`
--
ALTER TABLE `ejerciciog1`
  ADD CONSTRAINT `fk_EjercicioG1_Tipo1` FOREIGN KEY (`Tipo_idTipo`,`Tipo_Actividad_idActividad`) REFERENCES `tipo` (`idTipo`, `Actividad_idActividad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_EjercicioG1_docente1` FOREIGN KEY (`docente_iddocente`) REFERENCES `docente` (`iddocente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ejerciciog2`
--
ALTER TABLE `ejerciciog2`
  ADD CONSTRAINT `fk_EjercicioGrupo2_Tipo1` FOREIGN KEY (`Tipo_idTipo`,`Tipo_Actividad_idActividad`) REFERENCES `tipo` (`idTipo`, `Actividad_idActividad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_EjercicioGrupo2_docente1` FOREIGN KEY (`docente_iddocente`) REFERENCES `docente` (`iddocente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `estudiante_has_deber`
--
ALTER TABLE `estudiante_has_deber`
  ADD CONSTRAINT `fk_estudiante_has_EjercicioG1_EjercicioG11` FOREIGN KEY (`EjercicioG1_idEjercicioG1`) REFERENCES `ejerciciog1` (`idEjercicioG1`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_estudiante_has_EjercicioG1_EjercicioG21` FOREIGN KEY (`EjercicioG2_idEjercicioG2`) REFERENCES `ejerciciog2` (`idEjercicioG2`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_estudiante_has_EjercicioG1_docente1` FOREIGN KEY (`docente_iddocente`) REFERENCES `docente` (`iddocente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_estudiante_has_EjercicioG1_estudiante1` FOREIGN KEY (`estudiante_idestudiante`) REFERENCES `estudiante` (`idestudiante`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD CONSTRAINT `fk_grupo_curso1` FOREIGN KEY (`curso_idcurso`,`curso_Instituto_idInstituto`) REFERENCES `curso` (`idcurso`, `Instituto_idInstituto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_grupo_docente1` FOREIGN KEY (`docente_iddocente`) REFERENCES `docente` (`iddocente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `grupo_has_ejercicio`
--
ALTER TABLE `grupo_has_ejercicio`
  ADD CONSTRAINT `fk_grupo_has_Ejercicio_EjercicioG11` FOREIGN KEY (`EjercicioG1_idEjercicioG1`) REFERENCES `ejerciciog1` (`idEjercicioG1`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_grupo_has_Ejercicio_EjercicioG21` FOREIGN KEY (`EjercicioG2_idEjercicioG2`) REFERENCES `ejerciciog2` (`idEjercicioG2`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_grupo_has_Ejercicio_grupo1` FOREIGN KEY (`grupo_idgrupo`) REFERENCES `grupo` (`idgrupo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `grupo_has_estudiante`
--
ALTER TABLE `grupo_has_estudiante`
  ADD CONSTRAINT `fk_grupo_has_estudiante_estudiante1` FOREIGN KEY (`estudiante_idestudiante`) REFERENCES `estudiante` (`idestudiante`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_grupo_has_estudiante_grupo1` FOREIGN KEY (`grupo_idgrupo`) REFERENCES `grupo` (`idgrupo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD CONSTRAINT `fk_Imagen_EjercicioGrupo21` FOREIGN KEY (`EjercicioGrupo2_idEjercicioGrupo2`) REFERENCES `ejerciciog2` (`idEjercicioG2`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `instituto`
--
ALTER TABLE `instituto`
  ADD CONSTRAINT `fk_Instituto_Adminstrador1` FOREIGN KEY (`Adminstrador_idAdminstrador`) REFERENCES `adminstrador` (`idAdminstrador`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD CONSTRAINT `fk_Tipo_Actividad1` FOREIGN KEY (`Actividad_idActividad`) REFERENCES `actividad` (`idActividad`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
