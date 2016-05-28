-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-05-2016 a las 21:53:24
-- Versión del servidor: 5.5.34
-- Versión de PHP: 5.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `esteban`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bancos`
--

CREATE TABLE IF NOT EXISTS `bancos` (
  `id` int(5) unsigned zerofill NOT NULL,
  `nombre` varchar(145) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `bancos`
--

INSERT INTO `bancos` (`id`, `nombre`) VALUES
(00005, 'ABN AMRO BANK N. V.'),
(00007, 'BANCO DE GALICIA Y BUENOS AIRES S.A.'),
(00011, 'BANCO DE LA NACION ARGENTINA'),
(00014, 'BANCO DE LA PROVINCIA DE BUENOS AIRES'),
(00015, 'STANDARD BANK ARGENTINA S.A.'),
(00016, 'CITIBANK N.A.'),
(00017, 'BBVA BANCO FRANCES S.A.'),
(00018, ' THE BANK OF TOKYO-MITSUBISHI UFJ, LTD.'),
(00020, 'BANCO DE LA PROVINCIA DE CORDOBA S.A.'),
(00027, 'BANCO SUPERVIELLE S.A.'),
(00029, 'BANCO DE LA CIUDAD DE BUENOS AIRES'),
(00034, 'BANCO PATAGONIA S.A.'),
(00044, 'BANCO HIPOTECARIO S.A.'),
(00045, 'BANCO DE SAN JUAN S.A.'),
(00046, 'BANCO DO BRASIL S.A.'),
(00060, 'BANCO DEL TUCUMAN S.A.'),
(00065, 'BANCO MUNICIPAL DE ROSARIO'),
(00072, 'BANCO SANTANDER RIO S.A.'),
(00079, 'BANCO REGIONAL DE CUYO S.A.'),
(00083, 'BANCO DEL CHUBUT S.A.'),
(00086, 'BANCO DE SANTA CRUZ S.A.'),
(00093, 'BANCO DE LA PAMPA SOCIEDAD DE ECONOMÍA M'),
(00094, 'BANCO DE CORRIENTES S.A.'),
(00097, 'BANCO PROVINCIA DEL NEUQUÉN SOCIEDAD ANÓNIMA'),
(00147, 'BANCO B.I. CREDITANSTALT SOCIEDAD ANONIMA'),
(00150, 'HSBC BANK ARGENTINA S.A.'),
(00165, 'JPMORGAN CHASE BANK, NATIONAL ASSOCIATIO'),
(00191, 'BANCO CREDICOOP COOPERATIVO LIMITADO'),
(00198, 'BANCO DE VALORES S.A.'),
(00247, 'BANCO ROELA S.A.'),
(00254, 'BANCO MARIVA S.A.'),
(00259, 'BANCO ITAU BUEN AYRE S.A.'),
(00262, 'BANK OF AMERICA, NATIONAL ASSOCIATION'),
(00266, 'BNP PARIBAS'),
(00268, 'BANCO PROVINCIA DE TIERRA DEL FUEGO'),
(00269, 'BANCO DE LA REPUBLICA ORIENTAL DEL URUGUAY'),
(00277, 'BANCO SAENZ S.A.'),
(00281, 'BANCO MERIDIAN S.A.'),
(00285, 'BANCO MACRO S.A.'),
(00293, 'BANCO MERCURIO S.A.'),
(00295, 'AMERICAN EXPRESS BANK LTD. SOCIEDAD ANON'),
(00299, 'BANCO COMAFI SOCIEDAD ANONIMA'),
(00300, 'BANCO DE INVERSION Y COMERCIO EXTERIOR S'),
(00301, 'BANCO PIANO S.A.'),
(00303, 'BANCO FINANSUR S.A.'),
(00305, 'BANCO JULIO SOCIEDAD ANONIMA'),
(00306, 'BANCO PRIVADO DE INVERSIONES SOCIEDAD ANONIMA'),
(00309, 'NUEVO BANCO DE LA RIOJA SOCIEDAD ANONIMA'),
(00310, 'BANCO DEL SOL S.A.'),
(00311, 'NUEVO BANCO DEL CHACO S. A.'),
(00312, 'MBA BANCO DE INVERSIONES S. A.'),
(00315, 'BANCO DE FORMOSA S.A.'),
(00319, 'BANCO CMF S.A.'),
(00321, 'BANCO DE SANTIAGO DEL ESTERO S.A.'),
(00322, 'NUEVO BANCO INDUSTRIAL DE AZUL S.A.'),
(00325, 'DEUTSCHE BANK S.A.'),
(00330, 'NUEVO BANCO DE SANTA FE SOCIEDAD ANONIMA'),
(00331, 'BANCO CETELEM ARGENTINA S.A.'),
(00332, 'BANCO DE SERVICIOS FINANCIEROS S.A.'),
(00335, 'BANCO COFIDIS S.A.'),
(00336, 'BANCO BRADESCO ARGENTINA S.A.'),
(00338, 'BANCO DE SERVICIOS Y TRANSACCIONES S.A.'),
(00339, 'RCI BANQUE'),
(00340, 'BACS BANCO DE CREDITO Y SECURITIZACION S'),
(00341, 'BANCO MASVENTAS S.A.'),
(00386, 'NUEVO BANCO DE ENTRE RÍOS S.A.'),
(00388, 'NUEVO BANCO BISEL S.A.'),
(00389, 'BANCO COLUMBIA S.A.'),
(00390, 'ICBC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cheques`
--

CREATE TABLE IF NOT EXISTS `cheques` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idClienteFacturaPago` int(10) unsigned DEFAULT NULL,
  `fechaEmision` date DEFAULT NULL,
  `fechaCobro` date DEFAULT NULL,
  `numero` varchar(45) DEFAULT NULL,
  `titular` varchar(100) DEFAULT NULL,
  `destinatario` varchar(100) DEFAULT NULL,
  `idBanco` int(10) unsigned DEFAULT NULL,
  `idUsuario` int(10) unsigned DEFAULT NULL,
  `importe` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `cheques`
--

INSERT INTO `cheques` (`id`, `idClienteFacturaPago`, `fechaEmision`, `fechaCobro`, `numero`, `titular`, `destinatario`, `idBanco`, `idUsuario`, `importe`) VALUES
(1, 0, '0000-00-00', '0000-00-00', '1234', 'esteban', 'aserradero', 0, 1, '100.00'),
(2, 18, '0000-00-00', '0000-00-00', '1200', 'esteban', 'aserradero', 335, 1, '1200.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idTipo` int(10) unsigned NOT NULL,
  `nombre` varchar(145) NOT NULL,
  `domicilio` text,
  `idLocalidad` varchar(100) DEFAULT NULL,
  `idProvincia` int(10) unsigned DEFAULT NULL,
  `pais` varchar(145) DEFAULT NULL,
  `cp` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `telefono2` varchar(45) DEFAULT NULL,
  `contacto` text,
  `mail` varchar(145) DEFAULT NULL,
  `web` varchar(145) DEFAULT NULL,
  `fechaCarga` date NOT NULL,
  `idUsuario` int(10) unsigned NOT NULL,
  `activo` int(10) unsigned NOT NULL,
  `observaciones` text,
  `idVendedor` int(10) unsigned DEFAULT NULL,
  `descuento` decimal(10,0) DEFAULT NULL,
  `nro_cuit` varchar(45) NOT NULL,
  `condicion_iva` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `idTipo`, `nombre`, `domicilio`, `idLocalidad`, `idProvincia`, `pais`, `cp`, `telefono`, `telefono2`, `contacto`, `mail`, `web`, `fechaCarga`, `idUsuario`, `activo`, `observaciones`, `idVendedor`, `descuento`, `nro_cuit`, `condicion_iva`) VALUES
(1, 1, 'Consumidor Final', '1231231dd', '0', 1, 'Argentina', '31321321', '', '', '', '', '', '0000-00-00', 0, 1, '', 0, '0', '123123', '0'),
(2, 1, 'lucaino', 'bello 12', '188', 1, 'Argentina', '1744', '0', '0', 'julian', '', '', '0000-00-00', 0, 1, 'prueba', 0, '5', '4324234', 'Monotributista'),
(3, 1, 'Curtiembre Paso del Rey', 'El gilgero 2085', '122', 1, 'Argentina', '1744', '4663309', '', 'Sergio', 'sbrocchini@curtiembrepasodelrey.com', '', '0000-00-00', 0, 1, 'Interno 101 (pagos Ana Maria)\r\nfax 105', 0, '0', '30-68700374-2', 'Responsable Inscripto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes_facturas`
--

CREATE TABLE IF NOT EXISTS `clientes_facturas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idCliente` int(10) unsigned NOT NULL,
  `idTipo` int(10) unsigned NOT NULL,
  `n_remito` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `n_factura` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `descuento` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `importe` decimal(10,2) NOT NULL,
  `activo` int(10) unsigned NOT NULL,
  `comision_vendedor` decimal(10,2) NOT NULL,
  `condicion_venta` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `condicion_iva` varchar(45) COLLATE latin1_general_ci NOT NULL,
  `orden_compra` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='cuenta corriente de clientes' AUTO_INCREMENT=20 ;

--
-- Volcado de datos para la tabla `clientes_facturas`
--

INSERT INTO `clientes_facturas` (`id`, `idCliente`, `idTipo`, `n_remito`, `n_factura`, `descuento`, `fecha`, `importe`, `activo`, `comision_vendedor`, `condicion_venta`, `condicion_iva`, `orden_compra`) VALUES
(1, 1, 1, '', '', '0', '2016-02-04', '1400.00', 1, '0.00', '', '', ''),
(2, 1, 1, '', '', '0', '2016-04-02', '566.05', 1, '0.00', '', '', ''),
(3, 1, 1, '', '', '0', '2016-04-23', '1300.00', 1, '0.00', '', '', ''),
(4, 1, 1, '', '', '0', '2016-04-23', '27.50', 1, '0.00', '', '', ''),
(5, 1, 1, '', '', '0', '2016-04-23', '1560.00', 1, '0.00', '', '', ''),
(6, 1, 1, '', '', '0', '2016-04-23', '1110.00', 1, '0.00', '', '', ''),
(7, 1, 1, '', '', '0', '2016-04-23', '977.50', 1, '0.00', '', '', ''),
(8, 1, 1, '', '', '0', '2016-04-23', '255.00', 1, '0.00', '', '', ''),
(9, 1, 1, '', '', '0', '2016-04-23', '255.00', 1, '0.00', '', '', ''),
(10, 1, 1, '', '', '0', '2016-04-23', '552.50', 1, '0.00', '', '', ''),
(11, 1, 1, '', '', '0', '2016-04-23', '2677.50', 1, '0.00', '', '', ''),
(12, 1, 1, '', '', '0', '2016-04-29', '2677.50', 1, '0.00', '', '', ''),
(13, 1, 1, '', '', '0', '2016-04-29', '680.00', 1, '0.00', '', '', ''),
(14, 1, 1, '', '', '0', '2016-04-29', '680.00', 1, '0.00', '', '', ''),
(15, 1, 1, '', '', '0', '2016-04-29', '680.00', 1, '0.00', '', '', ''),
(16, 1, 1, '', '', '0', '2016-04-29', '780.00', 1, '0.00', '', '', ''),
(17, 1, 1, '', '', '0', '2016-04-29', '780.00', 1, '0.00', '', '', ''),
(18, 1, 1, '', '', '0', '2016-04-29', '660.00', 1, '0.00', '', '', ''),
(19, 1, 1, '', '', '0', '2016-04-29', '850.00', 1, '0.00', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes_facturas_compras`
--

CREATE TABLE IF NOT EXISTS `clientes_facturas_compras` (
  `idFactura` int(10) unsigned NOT NULL,
  `iva21` varchar(45) NOT NULL,
  `iva10` varchar(45) NOT NULL,
  `ingresosBrutos` varchar(45) NOT NULL,
  `descuento` varchar(45) NOT NULL,
  `bonificacion` varchar(45) NOT NULL,
  `descuento_sel` int(10) NOT NULL,
  PRIMARY KEY (`idFactura`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes_facturas_pagos`
--

CREATE TABLE IF NOT EXISTS `clientes_facturas_pagos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idFactura` int(10) unsigned NOT NULL,
  `idTipoPago` int(10) unsigned NOT NULL,
  `importe` decimal(10,2) NOT NULL,
  `descripcion` text COLLATE latin1_general_ci,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='pagos de factura' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes_factura_productos`
--

CREATE TABLE IF NOT EXISTS `clientes_factura_productos` (
  `idFactura` int(10) unsigned NOT NULL,
  `idProducto` int(10) unsigned NOT NULL,
  `cantidad` varchar(45) COLLATE latin1_general_ci NOT NULL,
  `precio_unitario` varchar(45) COLLATE latin1_general_ci NOT NULL,
  `precio_total` varchar(45) COLLATE latin1_general_ci NOT NULL,
  `idColor` int(10) unsigned NOT NULL,
  `idTalle` int(10) unsigned NOT NULL,
  `activo` int(10) unsigned NOT NULL,
  `id` int(10) unsigned NOT NULL,
  `descuento` varchar(45) COLLATE latin1_general_ci NOT NULL,
  `bulto` varchar(30) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Volcado de datos para la tabla `clientes_factura_productos`
--

INSERT INTO `clientes_factura_productos` (`idFactura`, `idProducto`, `cantidad`, `precio_unitario`, `precio_total`, `idColor`, `idTalle`, `activo`, `id`, `descuento`, `bulto`) VALUES
(1, 285, '1', '155', '155', 0, 0, 1, 438, '0', '0.00'),
(1, 308, '3', '415', '1245', 0, 0, 1, 439, '0', '0.00'),
(2, 8, '5', '84.21', '421.05', 0, 0, 1, 440, '0', '0.00'),
(2, 312, '1', '65', '65', 0, 0, 1, 441, '0', '0.00'),
(2, 412, '1', '18', '18', 0, 0, 1, 442, '0', '0.00'),
(2, 412, '1', '18', '18', 0, 0, 1, 443, '0', '0.00'),
(2, 412, '1', '18', '18', 0, 0, 1, 444, '0', '0.00'),
(2, 461, '1', '26', '26', 0, 0, 1, 445, '0', '0.00'),
(3, 518, '1', '260', '1300', 0, 0, 1, 446, '', '0.00'),
(4, 522, '1', '13.75', '27.5', 0, 0, 1, 447, '', '0.99'),
(5, 518, '2', '260', '1560', 0, 0, 1, 448, '', '0.99'),
(6, 519, '2', '185', '1110', 0, 0, 1, 449, '', '0.99'),
(7, 514, '1', '170', '425', 0, 0, 1, 450, '', '0.99'),
(7, 514, '1', '170', '552.5', 0, 0, 1, 451, '', '0.99'),
(8, 514, '1', '170', '255', 0, 0, 1, 452, '', '0.99'),
(9, 514, '1', '170', '255', 0, 0, 1, 453, '', '1.5'),
(10, 514, '1', '170', '552.5', 0, 0, 1, 454, '', '3.25'),
(11, 514, '5', '170.00', '2677.50', 0, 0, 1, 455, '', '3.15'),
(12, 514, '5', '170.00', '2677.50', 0, 0, 1, 456, '', '3.15'),
(13, 514, '2', '170.00', '680.00', 0, 0, 1, 457, '0', '2'),
(14, 514, '2', '170.00', '680.00', 0, 0, 1, 458, '0', '2'),
(15, 514, '2', '170.00', '680.00', 0, 0, 1, 459, '0', '2'),
(16, 518, '1', '260.00', '780.00', 0, 0, 1, 460, '', '3'),
(17, 518, '1', '260.00', '780.00', 0, 0, 1, 461, '', '3'),
(18, 303, '1', '165.00', '660.00', 0, 0, 1, 462, '', '4'),
(19, 514, '1', '170.00', '850.00', 0, 0, 1, 463, '', '5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes_tipos`
--

CREATE TABLE IF NOT EXISTS `clientes_tipos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(145) NOT NULL,
  `activo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `clientes_tipos`
--

INSERT INTO `clientes_tipos` (`id`, `nombre`, `activo`) VALUES
(1, 'clientes', 1),
(2, 'proveedores', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidades`
--

CREATE TABLE IF NOT EXISTS `localidades` (
  `idLocalidad` int(11) NOT NULL AUTO_INCREMENT,
  `idProvincia` int(11) NOT NULL DEFAULT '0',
  `Descripcion` varchar(50) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `Activo` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idLocalidad`,`idProvincia`),
  FULLTEXT KEY `Descripcion` (`Descripcion`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=437 ;

--
-- Volcado de datos para la tabla `localidades`
--

INSERT INTO `localidades` (`idLocalidad`, `idProvincia`, `Descripcion`, `Activo`) VALUES
(1, 1, 'Capital Federal', 1),
(2, 1, 'ZARATE', 1),
(3, 1, 'VEINTICINCO DE MAYO', 1),
(4, 1, 'VERONICA', 1),
(5, 1, 'VICENTE CASARES', 1),
(6, 1, 'VICENTE LOPEZ', 1),
(7, 1, 'VICTORIA', 1),
(8, 1, 'VIDAL', 1),
(9, 1, 'VILLA ADELINA', 1),
(10, 1, 'VILLA BALLESTER', 1),
(11, 1, 'VILLA BORDEAU', 1),
(12, 1, 'VILLA BOSCH', 1),
(13, 1, 'VILLA CARAZA', 1),
(14, 1, 'VILLA CELINA', 1),
(15, 1, 'VILLA CONCEPCION', 1),
(16, 1, 'VILLA DE MAYO', 1),
(17, 1, 'VILLA DIAMANTE', 1),
(18, 1, 'VILLA DOMINICO', 1),
(19, 1, 'VILLA ELISA', 1),
(20, 1, 'VILLA GESELL', 1),
(21, 1, 'VILLA INSUPERABLE', 1),
(22, 1, 'VILLA LIBERTAD', 1),
(23, 1, 'VILLA LUZURIAGA', 1),
(24, 1, 'VILLA LYNCH', 1),
(25, 1, 'VILLA MADERO', 1),
(26, 1, 'VILLA MAIPU', 1),
(27, 1, 'VILLA MARTELLI', 1),
(28, 1, 'VILLA MAZA', 1),
(29, 1, 'VILLA TESSEI', 1),
(30, 1, 'VILLA ZAGALA', 1),
(31, 1, 'VILLALONGA', 1),
(32, 1, 'VIRREY DEL PINO', 1),
(33, 1, 'VIRREYES', 1),
(34, 1, 'WILDE', 1),
(35, 1, 'WILLIAM MORRIS', 1),
(36, 1, 'SAN NICOLAS', 1),
(37, 1, 'SAN PEDRO', 1),
(38, 1, 'SAN VICENTE', 1),
(39, 1, 'SANTA CLARA DEL MAR', 1),
(40, 1, 'SANTA TERESITA', 1),
(41, 1, 'SANTOS LUGARES', 1),
(42, 1, 'SARANDI', 1),
(43, 1, 'SIERRA DE LA VENTANA', 1),
(44, 1, 'SIERRAS BAYAS', 1),
(45, 1, 'SPEGAZZINI', 1),
(46, 1, 'SPURR', 1),
(47, 1, 'STROEDER', 1),
(48, 1, 'TABLADA', 1),
(49, 1, 'TANDIL', 1),
(50, 1, 'TAPALQUE', 1),
(51, 1, 'TAPIALES', 1),
(52, 1, 'TEMPERLEY', 1),
(53, 1, 'TENIENTE ORIGONE', 1),
(54, 1, 'TIGRE', 1),
(55, 1, 'TOLOSA', 1),
(56, 1, 'TORNQUIST', 1),
(57, 1, 'TORRES', 1),
(58, 1, 'TORTUGUITAS', 1),
(59, 1, 'TREINTA DE AGOSTO', 1),
(60, 1, 'TRENQUE LAUQUEN', 1),
(61, 1, 'TRES ALGARROBOS', 1),
(62, 1, 'TRES ARROYOS', 1),
(63, 1, 'TRES LOMAS', 1),
(64, 1, 'TRISTAN SUAREZ', 1),
(65, 1, 'TROPEZON', 1),
(66, 1, 'TURDERA', 1),
(67, 1, 'UNION FERROVIARIA', 1),
(68, 1, 'V.FLANDRIA', 1),
(69, 1, 'VALENTIN ALSINA', 1),
(70, 1, 'VALERIA DEL MAR', 1),
(71, 1, 'VEDIA', 1),
(72, 1, 'QUENUMA', 1),
(73, 1, 'QUEQUEN', 1),
(74, 1, 'QUILMES', 1),
(75, 1, 'QUIROGA', 1),
(76, 1, 'R.LUJAN', 1),
(77, 1, 'RAFAEL CALZADA', 1),
(78, 1, 'RAFAEL CASTILLO', 1),
(79, 1, 'RAMOS MEJIA', 1),
(80, 1, 'RANCHOS', 1),
(81, 1, 'RANELAGH', 1),
(82, 1, 'RAUCH', 1),
(83, 1, 'REMEDIOS DE ESCALADA', 1),
(84, 1, 'RINGUELET', 1),
(85, 1, 'RIO TALA', 1),
(86, 1, 'RIVADAVIA', 1),
(87, 1, 'ROJAS', 1),
(88, 1, 'ROQUE PEREZ', 1),
(89, 1, 'SAAVEDRA', 1),
(90, 1, 'SAENZ PEÃ?A', 1),
(91, 1, 'SALADILLO', 1),
(92, 1, 'SALIQUELLO', 1),
(93, 1, 'SALTO', 1),
(94, 1, 'SAN ANDRES', 1),
(95, 1, 'SAN ANDRES DE GILES', 1),
(96, 1, 'SAN ANTONIO DE ARECO', 1),
(97, 1, 'SAN ANTONIO DE PADUA', 1),
(98, 1, 'SAN BERNARDO', 1),
(99, 1, 'SAN CAYETANO', 1),
(100, 1, 'SAN CLEMENTE DEL TUYU', 1),
(101, 1, 'SAN FERNANDO', 1),
(102, 1, 'SAN FRANCISCO SOLANO', 1),
(103, 1, 'SAN ISIDRO', 1),
(104, 1, 'SAN JUSTO', 1),
(105, 1, 'SAN MARTIN', 1),
(106, 1, 'SAN MIGUEL', 1),
(107, 1, 'SAN MIGUEL DEL MONTE', 1),
(108, 1, 'NAPOSTA', 1),
(109, 1, 'NAVARRO', 1),
(110, 1, 'NECOCHEA', 1),
(111, 1, 'NICOLAS LEVALLE', 1),
(112, 1, 'NUEVE DE JULIO', 1),
(113, 1, 'OLAVARRIA', 1),
(114, 1, 'OLIVOS', 1),
(115, 1, 'OPENDOOR', 1),
(116, 1, 'ORENSE', 1),
(117, 1, 'ORIENTE', 1),
(118, 1, 'OSTENDE', 1),
(119, 1, 'PABLO NOGUES', 1),
(120, 1, 'PABLO PODESTA', 1),
(121, 1, 'PADILLA', 1),
(122, 1, 'PASO DEL REY', 1),
(123, 1, 'PEDRO LURO', 1),
(124, 1, 'PEHUAJO', 1),
(125, 1, 'PEHUENCO', 1),
(126, 1, 'PELLEGRINI', 1),
(127, 1, 'PERGAMINO', 1),
(128, 1, 'PIGUE', 1),
(129, 1, 'PILA', 1),
(130, 1, 'PILAR', 1),
(131, 1, 'PINAMAR', 1),
(132, 1, 'PI&Ntilde;EYRO', 1),
(133, 1, 'PI&Ntilde;EYRO', 1),
(134, 1, 'PIPINAS', 1),
(135, 1, 'PLATANOS', 1),
(136, 1, 'PONTEVEDRA', 1),
(137, 1, 'PTE.DERQUI', 1),
(138, 1, 'PUAN', 1),
(139, 1, 'PUERTO BELGRANO', 1),
(140, 1, 'PUERTO GALVAN', 1),
(141, 1, 'PUNTA ALTA', 1),
(142, 1, 'PUNTA CHICA', 1),
(143, 1, 'PUNTA MOGOTES', 1),
(144, 1, 'LOURDES', 1),
(145, 1, 'LUIS GUILLON', 1),
(146, 1, 'LUJAN', 1),
(147, 1, 'MAGDALENA', 1),
(148, 1, 'MAIPU', 1),
(149, 1, 'MALAVER', 1),
(150, 1, 'MAQUINISTA SAVIO', 1),
(151, 1, 'MAR AZUL', 1),
(152, 1, 'MAR CHIQUITA', 1),
(153, 1, 'MAR DE AJO', 1),
(154, 15, 'San Martin De Los Andes', 1),
(155, 1, 'MAR DEL PLATA', 1),
(156, 1, 'MAR DEL TUYU', 1),
(157, 1, 'MARCOS PAZ', 1),
(158, 1, 'MARIANO ACOSTA', 1),
(159, 1, 'MARTIN CORONADO', 1),
(160, 1, 'MARTINEZ', 1),
(161, 1, 'MASCOTA', 1),
(162, 1, 'MATHEU', 1),
(163, 1, 'MAXIMO PAZ', 1),
(164, 1, 'MAYOR BURATOVICH', 1),
(165, 1, 'MEDANOS', 1),
(166, 1, 'MELCHOR ROMERO', 1),
(167, 1, 'MERCEDES', 1),
(168, 1, 'MERLO', 1),
(169, 1, 'MICAELA CASCALLARES', 1),
(170, 1, 'MIGUELETES', 1),
(171, 1, 'MIRAMAR', 1),
(172, 1, 'MONTE', 1),
(173, 1, 'MONTE CHINGOLO', 1),
(174, 1, 'MONTE GRANDE', 1),
(175, 1, 'MONTE HERMOSO', 1),
(176, 1, 'MORENO', 1),
(177, 1, 'MORON', 1),
(178, 1, 'MU&Ntilde;IZ', 1),
(179, 1, 'MUNRO', 1),
(180, 1, 'JOSE LEON SUAREZ', 1),
(181, 1, 'JOSE M. GUTIERREZ', 1),
(182, 1, 'JOSE MARMOL', 1),
(183, 1, 'JUAN A.PRADERE', 1),
(184, 1, 'JUAN JOSE PASO', 1),
(185, 1, 'JUNIN', 1),
(186, 1, 'LA LUCILA', 1),
(187, 1, 'LA LUCILA DEL MAR', 1),
(188, 1, 'LA PAZ', 1),
(189, 1, 'LA PLATA', 1),
(190, 1, 'LA REJA', 1),
(191, 1, 'LA SOBERANA', 1),
(192, 1, 'LA VITICOLA', 1),
(193, 1, 'LAFERRERE', 1),
(194, 1, 'LANUS', 1),
(195, 1, 'LAPRIDA', 1),
(196, 1, 'LAS ARMAS', 1),
(197, 1, 'LAS FLORES', 1),
(198, 1, 'LAS HERAS', 1),
(199, 1, 'LAS TONINAS', 1),
(200, 1, 'LEZAMA', 1),
(201, 1, 'LIBERTAD', 1),
(202, 1, 'LIMA', 1),
(203, 1, 'LINCOLN', 1),
(204, 1, 'LLAVALLOL', 1),
(205, 1, 'LOBERIA', 1),
(206, 1, 'LOBOS', 1),
(207, 1, 'LOMA HERMOSA', 1),
(208, 1, 'LOMA NEGRA', 1),
(209, 1, 'LOMAS DE ZAMORA', 1),
(210, 1, 'LOMAS DEL MIRADOR', 1),
(211, 1, 'LONGCHAMPS', 1),
(212, 1, 'LOS CARDALES', 1),
(213, 1, 'LOS HORNOS', 1),
(214, 1, 'LOS POLVORINES', 1),
(215, 1, 'LOS TOLDOS', 1),
(216, 1, 'GENERAL PACHECO', 1),
(217, 1, 'GENERAL PINTO', 1),
(218, 1, 'GENERAL PIRAN', 1),
(219, 1, 'GENERAL RODRIGUEZ', 1),
(220, 1, 'GENERAL SARMIENTO', 1),
(221, 1, 'GENERAL VIAMONTE', 1),
(222, 1, 'GENERAL VILLEGAS', 1),
(223, 1, 'GERLI', 1),
(224, 1, 'GERMANIA', 1),
(225, 1, 'GLEW', 1),
(226, 1, 'GONNET', 1),
(227, 1, 'GONZALEZ CATAN', 1),
(228, 1, 'GONZALEZ CHAVES', 1),
(229, 1, 'GONZALEZ MORENO', 1),
(230, 1, 'GRAND BOURG', 1),
(231, 1, 'GUAMINI', 1),
(232, 1, 'GUERNICA', 1),
(233, 1, 'GUILLERMO E.HUDSON', 1),
(234, 1, 'HAEDO', 1),
(235, 1, 'HENDERSON', 1),
(236, 1, 'HILARIO ASCASUBI', 1),
(237, 1, 'HINOJO', 1),
(238, 1, 'HUANGUELEN', 1),
(239, 1, 'HURLINGHAM', 1),
(240, 1, 'INDIO RICO', 1),
(241, 1, 'INGENIERO BUDGE', 1),
(242, 1, 'INGENIERO MASCHWITZ', 1),
(243, 1, 'INGENIERO OTTAMENDI', 1),
(244, 1, 'INGENIERO WHITE', 1),
(245, 1, 'ISIDRO CASANOVA', 1),
(246, 1, 'ITUZAINGO', 1),
(247, 1, 'J.M.COBO', 1),
(248, 1, 'JAUREGUI', 1),
(249, 1, 'JOSE A.GUISASOLA', 1),
(250, 1, 'JOSE C.PAZ', 1),
(251, 1, 'JOSE INGENIEROS', 1),
(252, 1, 'DOCK SUD', 1),
(253, 1, 'DOLORES', 1),
(254, 1, 'DON BOSCO', 1),
(255, 1, 'DON TORCUATO', 1),
(256, 1, 'DUFAUR', 1),
(257, 1, 'EL JAGUEL', 1),
(258, 1, 'EL PALOMAR', 1),
(259, 1, 'EL TALAR', 1),
(260, 1, 'EMPALME LOBOS', 1),
(261, 1, 'ENSENADA', 1),
(262, 1, 'ESCOBAR', 1),
(263, 1, 'ESPARTILLAR', 1),
(264, 1, 'ESTACION RIVADAVIA', 1),
(265, 1, 'ESTEBAN ECHEVERRIA', 1),
(266, 1, 'ESTOMBA', 1),
(267, 1, 'EZEIZA', 1),
(268, 1, 'EZPELETA', 1),
(269, 1, 'FERNANDEZ MORENO', 1),
(270, 1, 'FERRE', 1),
(271, 1, 'FLORENCIO VARELA', 1),
(272, 1, 'FLORIDA', 1),
(273, 1, 'FRANCISCO ALVAREZ', 1),
(274, 1, 'FRANCISCO MADERO', 1),
(275, 1, 'GAHAN', 1),
(276, 1, 'GARCIA DEL RIO', 1),
(277, 1, 'GARIN', 1),
(278, 1, 'GARRE', 1),
(279, 1, 'GENERAL ALVEAR', 1),
(280, 1, 'GENERAL ARENALES', 1),
(281, 1, 'GENERAL BELGRANO', 1),
(282, 1, 'GENERAL CERRI', 1),
(283, 1, 'GENERAL CONESA', 1),
(284, 1, 'GENERAL GUIDO', 1),
(285, 1, 'GENERAL LAMADRID', 1),
(286, 1, 'GENERAL LAVALLE', 1),
(287, 1, 'GENERAL MADARIAGA', 1),
(288, 1, 'CARAPACHAY', 1),
(289, 1, 'CARHUE', 1),
(290, 1, 'CARILO', 1),
(291, 1, 'CARLOS CASARES', 1),
(292, 1, 'CARLOS TEJEDOR', 1),
(293, 1, 'CARMEN DE ARECO', 1),
(294, 1, 'CARMEN DE PATAGONES', 1),
(295, 1, 'CARUPA', 1),
(296, 1, 'CASBAS', 1),
(297, 1, 'CASEROS', 1),
(298, 1, 'CASTELAR', 1),
(299, 1, 'CASTELLI', 1),
(300, 1, 'CHACABUCO', 1),
(301, 1, 'CHAPADMALAL', 1),
(302, 1, 'CHASCOMUS', 1),
(303, 1, 'CHILAVERT', 1),
(304, 1, 'CHIVILCOY', 1),
(305, 1, 'CHOIQUE', 1),
(306, 1, 'CITY BELL', 1),
(307, 1, 'CIUDAD EVITA', 1),
(308, 1, 'CIUDAD GUEMES', 1),
(309, 1, 'CIUDADELA', 1),
(310, 1, 'CLAYPOLE', 1),
(311, 1, 'COLON', 1),
(312, 1, 'COMANDANTE ESPORA', 1),
(313, 1, 'COPETONAS', 1),
(314, 1, 'CORONEL BRANDSEN', 1),
(315, 1, 'CORONEL DORREGO', 1),
(316, 1, 'CORONEL GRANADA', 1),
(317, 1, 'CORONEL PRINGLES', 1),
(318, 1, 'CORONEL SUAREZ', 1),
(319, 1, 'DAIREAUX', 1),
(320, 1, 'DEL VISO', 1),
(321, 1, 'DIONISIA', 1),
(322, 1, 'AYACUCHO', 1),
(323, 1, 'AZUL', 1),
(324, 1, 'BAHIA BLANCA', 1),
(325, 1, 'BAHIA BLANCA', 1),
(326, 1, 'BAIGORRITA', 1),
(327, 1, 'BALCARCE', 1),
(328, 1, 'BALNEARIO ORIENTE', 1),
(329, 1, 'BANCALARI', 1),
(330, 1, 'BANDERALO', 1),
(331, 1, 'BANFIELD', 1),
(332, 1, 'BARADERO', 1),
(333, 1, 'BATAN', 1),
(334, 1, 'BECCAR', 1),
(335, 1, 'BELLA VISTA', 1),
(336, 1, 'BENAVIDEZ', 1),
(337, 1, 'BENITO JUAREZ', 1),
(338, 1, 'BERAZATEGUI', 1),
(339, 1, 'BERNAL', 1),
(340, 1, 'BERUTTI', 1),
(341, 1, 'BILLINGHURST', 1),
(342, 1, 'BOLIVAR', 1),
(343, 1, 'BOSQUES', 1),
(344, 1, 'BOULOGNE', 1),
(345, 1, 'BRAGADO', 1),
(346, 1, 'BURZACO', 1),
(347, 1, 'C.NICANOR OTAMENDI', 1),
(348, 1, 'CABILDO', 1),
(349, 1, 'CACHARI', 1),
(350, 1, 'CAMPANA', 1),
(351, 1, 'CAMPO DE MAYO', 1),
(352, 1, 'CANNING', 1),
(353, 1, 'CA&Ntilde;UELAS', 1),
(354, 1, 'CAPILLA DEL SEÑOR', 1),
(355, 1, 'CAPITAN SARMIENTO', 1),
(356, 1, 'ACASSUSO', 1),
(357, 1, 'ADOLFO SOURDEAUX', 1),
(358, 1, 'ADROGUE', 1),
(359, 1, 'ALBERTI', 1),
(360, 1, 'ALDO BONZI', 1),
(361, 1, 'ALEJANDRO KORN', 1),
(362, 1, 'ALMIRANTE BROWN', 1),
(363, 1, 'ALSINA', 1),
(364, 1, 'AMEGHINO', 1),
(365, 1, 'AMERICA', 1),
(366, 1, 'APARICIO', 1),
(367, 1, 'ARGERICH', 1),
(368, 1, 'ARRECIFES', 1),
(369, 1, 'ARRIBENtilde;OS', 1),
(370, 1, 'ARROYO CORTO', 1),
(371, 1, 'ASCENCION', 1),
(372, 1, 'ATUCHA', 1),
(373, 1, 'AVELLANEDA', 1),
(374, 15, '-', 1),
(375, 3, 'Capital', 1),
(376, 4, 'Capital', 1),
(377, 5, 'Capital', 1),
(378, 6, 'Capital', 1),
(379, 7, 'Capital', 1),
(380, 8, 'Capital', 1),
(381, 9, 'Capital', 1),
(382, 10, 'San Salvador de Jujuy', 1),
(383, 11, 'Santa Rosa', 1),
(384, 12, 'Capital', 1),
(385, 13, 'Capital', 1),
(386, 14, 'Capital', 1),
(387, 16, 'Capital', 1),
(388, 17, 'Capital', 1),
(389, 18, 'Capital', 1),
(390, 19, 'Capital', 1),
(391, 20, 'Capital', 1),
(392, 21, 'Capital', 1),
(393, 22, 'Capital', 1),
(394, 23, 'Capital', 1),
(395, 24, 'Capital', 1),
(396, 1, 'COSTA DEL ESTE', 1),
(397, 6, 'CURA BROCHERO', 1),
(398, 6, 'VILLA GIARDINO', 1),
(399, 1, 'PUNTA LARA', 1),
(400, 1, 'MALVINAS ARGENTINAS', 1),
(401, 1, 'RAMALLO', 1),
(402, 25, '-', 1),
(403, 19, 'Merlo', 1),
(404, 6, 'COSQU&Iacute;N', 1),
(405, 13, 'Godoy Cruz', 1),
(406, 1, 'MAR DEL SUR', 1),
(407, 1, 'CLAROMEC&Oacute;', 1),
(408, 19, 'VILLA LARCA', 1),
(409, 6, 'VILLA GENERAL BELGRANO', 1),
(410, 13, 'San Rafael', 0),
(411, 8, 'Colón', 1),
(412, 1, 'MAR DE COBO', 1),
(413, 8, 'Federaci&oacute;n', 1),
(414, 8, 'Durazno', 1),
(415, 6, 'R&iacute;o Ceballos', 1),
(416, 6, 'Altagracia', 1),
(417, 6, 'Embalse', 1),
(418, 1, 'CHASICO', 1),
(419, 8, 'Gualeguaychu', 1),
(420, 8, 'Concordia', 1),
(421, 7, 'Lavalle', 1),
(422, 6, 'Villa del dique', 1),
(423, 1, 'AGUAS VERDES', 1),
(424, 1, 'Partido de la Costa', 1),
(425, 6, 'Villa Carlos Paz', 1),
(426, 6, 'Bialet Masset', 1),
(427, 1, 'Costa Azul', 1),
(428, 13, 'SAN RAFAEL', 1),
(429, 8, 'Nogoya', 1),
(430, 19, 'Villa de Merlo', 1),
(431, 7, 'Goya', 1),
(432, 6, 'Santa Rosa de Calamuchita', 1),
(433, 6, 'Capilla del Monte', 1),
(434, 14, 'Obera', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monedas`
--

CREATE TABLE IF NOT EXISTS `monedas` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `simbolo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activo` int(10) DEFAULT NULL,
  `cotizacion` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `monedas`
--

INSERT INTO `monedas` (`id`, `nombre`, `simbolo`, `activo`, `cotizacion`) VALUES
(1, 'Peso', '$', 1, ''),
(2, 'Dolar', 'u$s', 1, '12'),
(5, 'Euro', '&#8364;', 1, '7.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE IF NOT EXISTS `productos` (
  `id` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `idMoneda` int(10) DEFAULT NULL,
  `idCategoria` int(10) DEFAULT NULL,
  `idSubCategoria` int(10) DEFAULT NULL,
  `descripcion` text,
  `fechaCarga` date NOT NULL,
  `idUsuario` int(10) unsigned DEFAULT NULL,
  `activo` int(10) unsigned NOT NULL,
  `aviso_stock` varchar(45) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `utilidad` decimal(10,2) NOT NULL,
  `iva` varchar(5) DEFAULT NULL,
  `referencia` varchar(45) NOT NULL,
  `fechaActualizacion` date NOT NULL,
  `bulto` int(10) NOT NULL,
  `espesor` decimal(10,2) NOT NULL,
  `ancho` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `referencia` (`referencia`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=555 ;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `idMoneda`, `idCategoria`, `idSubCategoria`, `descripcion`, `fechaCarga`, `idUsuario`, `activo`, `aviso_stock`, `precio`, `utilidad`, `iva`, `referencia`, `fechaActualizacion`, `bulto`, `espesor`, `ancho`) VALUES
(00001, 1, 1, 1, 'Pino Elioti 1x1x1', '2016-04-23', 1, 1, '0', '17.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '1.00'),
(00002, 1, 1, 1, 'Pino Elioti 1x2x1', '2016-04-23', 1, 1, '0', '17.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '2.00'),
(00003, 1, 1, 1, 'Pino Elioti 2x2x1', '2016-04-23', 1, 1, '0', '17.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '2.00'),
(00004, 1, 1, 2, 'Pino Elioti 1x3x1', '2016-04-23', 1, 1, '0', '17.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '3.00'),
(00005, 1, 1, 2, 'Pino Elioti 1x4x1', '2016-04-23', 1, 1, '0', '17.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '4.00'),
(00006, 1, 1, 2, 'Pino Elioti 1x5x1', '2016-04-23', 1, 1, '0', '17.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '5.00'),
(00007, 1, 1, 2, 'Pino Elioti 1x6x1', '2016-04-23', 1, 1, '0', '17.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '6.00'),
(00008, 1, 1, 3, 'Pino Elioti 1x8x1', '2016-04-23', 1, 1, '0', '22.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '8.00'),
(00009, 1, 1, 3, 'Pino Elioti 1x10x1', '2016-04-23', 1, 1, '0', '22.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '10.00'),
(00010, 1, 1, 3, 'Pino Elioti 1x12x1', '2016-04-23', 1, 1, '0', '22.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '12.00'),
(00011, 1, 1, 4, 'Pino Elioti 2x3x1', '2016-04-23', 1, 1, '0', '15.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '3.00'),
(00012, 1, 1, 4, 'Pino Elioti 2x4x1', '2016-04-23', 1, 1, '0', '15.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '4.00'),
(00013, 1, 1, 4, 'Pino Elioti 2x5x1', '2016-04-23', 1, 1, '0', '15.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '5.00'),
(00014, 1, 1, 4, 'Pino Elioti 2x6x1', '2016-04-23', 1, 1, '0', '15.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '6.00'),
(00015, 1, 1, 5, 'Pino Elioti 2x5x1', '2016-04-23', 1, 1, '0', '17.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '5.00'),
(00016, 1, 1, 5, 'Pino Elioti 2x6x1', '2016-04-23', 1, 1, '0', '17.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '6.00'),
(00017, 1, 1, 6, 'Pino Elioti 2x8x1', '2016-04-23', 1, 1, '0', '22.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '8.00'),
(00018, 1, 1, 6, 'Pino Elioti 2x10x1', '2016-04-23', 1, 1, '0', '22.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '10.00'),
(00019, 1, 1, 6, 'Pino Elioti 2x12x1', '2016-04-23', 1, 1, '0', '22.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '12.00'),
(00020, 1, 1, 7, 'Pino Elioti 3x3x1', '2016-04-23', 1, 1, '0', '25.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '3.00'),
(00021, 1, 1, 8, 'Pino Elioti 3x4x1', '2016-04-23', 1, 1, '0', '20.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '4.00'),
(00022, 1, 1, 8, 'Pino Elioti 3x5x1', '2016-04-23', 1, 1, '0', '20.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '5.00'),
(00023, 1, 1, 8, 'Pino Elioti 3x6x1', '2016-04-23', 1, 1, '0', '20.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '6.00'),
(00024, 1, 1, 8, 'Pino Elioti 3x7x1', '2016-04-23', 1, 1, '0', '20.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '7.00'),
(00025, 1, 1, 8, 'Pino Elioti 3x8x1', '2016-04-23', 1, 1, '0', '20.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '8.00'),
(00026, 1, 1, 8, 'Pino Elioti 3x9x1', '2016-04-23', 1, 1, '0', '20.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '9.00'),
(00027, 1, 1, 8, 'Pino Elioti 3x10x1', '2016-04-23', 1, 1, '0', '20.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '10.00'),
(00028, 1, 1, 8, 'Pino Elioti 3x11x1', '2016-04-23', 1, 1, '0', '20.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '11.00'),
(00029, 1, 1, 8, 'Pino Elioti 3x12x1', '2016-04-23', 1, 1, '0', '20.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '12.00'),
(00030, 1, 1, 8, 'Pino Elioti 3x13x1', '2016-04-23', 1, 1, '0', '20.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '13.00'),
(00031, 1, 1, 9, 'Pino Elioti 3x10x1', '2016-04-23', 1, 1, '0', '22.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '10.00'),
(00032, 1, 1, 9, 'Pino Elioti 3x12x1', '2016-04-23', 1, 1, '0', '22.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '12.00'),
(00033, 1, 1, 9, 'Pino Elioti 3x13x1', '2016-04-23', 1, 1, '0', '22.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '13.00'),
(00034, 1, 1, 9, 'Pino Elioti 3x14x1', '2016-04-23', 1, 1, '0', '22.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '14.00'),
(00035, 1, 1, 9, 'Pino Elioti 3x15x1', '2016-04-23', 1, 1, '0', '22.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '15.00'),
(00036, 1, 1, 9, 'Pino Elioti 3x16x1', '2016-04-23', 1, 1, '0', '22.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '16.00'),
(00037, 1, 2, 10, 'Pino Parana 1x1x1', '2016-04-23', 1, 1, '0', '30.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '1.00'),
(00038, 1, 2, 10, 'Pino Parana 1x2x1', '2016-04-23', 1, 1, '0', '30.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '2.00'),
(00039, 1, 2, 11, 'Pino Parana 1x3x1', '2016-04-23', 1, 1, '0', '30.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '3.00'),
(00040, 1, 2, 11, 'Pino Parana 1x4x1', '2016-04-23', 1, 1, '0', '30.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '4.00'),
(00041, 1, 2, 11, 'Pino Parana 1x5x1', '2016-04-23', 1, 1, '0', '30.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '5.00'),
(00042, 1, 2, 11, 'Pino Parana 1x6x1', '2016-04-23', 1, 1, '0', '30.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '6.00'),
(00043, 1, 2, 12, 'Pino Parana 2x2x1', '2016-04-23', 1, 1, '0', '29.50', '0.00', '0', '', '2016-04-23', 1, '2.00', '2.00'),
(00044, 1, 2, 12, 'Pino Parana 2x3x1', '2016-04-23', 1, 1, '0', '29.50', '0.00', '0', '', '2016-04-23', 1, '2.00', '3.00'),
(00045, 1, 2, 12, 'Pino Parana 2x4x1', '2016-04-23', 1, 1, '0', '29.50', '0.00', '0', '', '2016-04-23', 1, '2.00', '4.00'),
(00046, 1, 2, 12, 'Pino Parana 2x5x1', '2016-04-23', 1, 1, '0', '29.50', '0.00', '0', '', '2016-04-23', 1, '2.00', '5.00'),
(00047, 1, 2, 12, 'Pino Parana 2x6x1', '2016-04-23', 1, 1, '0', '29.50', '0.00', '0', '', '2016-04-23', 1, '2.00', '6.00'),
(00048, 1, 2, 13, 'Pino Parana 2x5x1', '2016-04-23', 1, 1, '0', '35.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '5.00'),
(00049, 1, 2, 13, 'Pino Parana 2x6x1', '2016-04-23', 1, 1, '0', '35.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '6.00'),
(00050, 1, 2, 14, 'Pino Parana 2x8x1', '2016-04-23', 1, 1, '0', '55.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '8.00'),
(00051, 1, 2, 14, 'Pino Parana 2x10x1', '2016-04-23', 1, 1, '0', '55.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '10.00'),
(00052, 1, 2, 14, 'Pino Parana 2x12x1', '2016-04-23', 1, 1, '0', '55.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '12.00'),
(00053, 1, 2, 15, 'Pino Parana 3x3x1', '2016-04-23', 1, 1, '0', '60.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '3.00'),
(00054, 1, 2, 16, 'Pino Parana 3x4x1', '2016-04-23', 1, 1, '0', '55.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '4.00'),
(00055, 1, 2, 16, 'Pino Parana 3x5x1', '2016-04-23', 1, 1, '0', '55.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '5.00'),
(00056, 1, 2, 16, 'Pino Parana 3x6x1', '2016-04-23', 1, 1, '0', '55.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '6.00'),
(00057, 1, 2, 16, 'Pino Parana 3x7x1', '2016-04-23', 1, 1, '0', '55.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '7.00'),
(00058, 1, 2, 16, 'Pino Parana 3x8x1', '2016-04-23', 1, 1, '0', '55.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '8.00'),
(00059, 1, 2, 16, 'Pino Parana 3x9x1', '2016-04-23', 1, 1, '0', '55.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '9.00'),
(00060, 1, 2, 16, 'Pino Parana 3x10x1', '2016-04-23', 1, 1, '0', '55.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '10.00'),
(00061, 1, 2, 16, 'Pino Parana 3x11x1', '2016-04-23', 1, 1, '0', '55.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '11.00'),
(00062, 1, 2, 16, 'Pino Parana 3x12x1', '2016-04-23', 1, 1, '0', '55.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '12.00'),
(00063, 1, 2, 16, 'Pino Parana 3x13x1', '2016-04-23', 1, 1, '0', '55.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '13.00'),
(00064, 1, 2, 17, 'Pino Parana 3x10x1', '2016-04-23', 1, 1, '0', '70.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '10.00'),
(00065, 1, 2, 17, 'Pino Parana 3x12x1', '2016-04-23', 1, 1, '0', '70.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '12.00'),
(00066, 1, 2, 17, 'Pino Parana 3x13x1', '2016-04-23', 1, 1, '0', '70.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '13.00'),
(00067, 1, 2, 17, 'Pino Parana 3x14x1', '2016-04-23', 1, 1, '0', '70.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '14.00'),
(00068, 1, 2, 17, 'Pino Parana 3x15x1', '2016-04-23', 1, 1, '0', '70.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '15.00'),
(00069, 1, 2, 17, 'Pino Parana 3x16x1', '2016-04-23', 1, 1, '0', '70.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '16.00'),
(00070, 1, 3, 0, 'Cedro 2x2x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '2.00'),
(00071, 1, 3, 0, 'Cedro 2x3x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '3.00'),
(00072, 1, 3, 0, 'Cedro 2x4x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '4.00'),
(00073, 1, 3, 0, 'Cedro 2x5x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '5.00'),
(00074, 1, 3, 0, 'Cedro 2x6x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '6.00'),
(00075, 1, 3, 0, 'Cedro 2x7x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '7.00'),
(00076, 1, 3, 0, 'Cedro 2x8x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '8.00'),
(00077, 1, 3, 0, 'Cedro 2x9x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '9.00'),
(00078, 1, 3, 0, 'Cedro 2x10x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '10.00'),
(00079, 1, 4, 18, 'Marmelero 2x5x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '5.00'),
(00080, 1, 4, 18, 'Marmelero 2x6x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '6.00'),
(00081, 1, 4, 19, 'Marmelero 3x1x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '1.00'),
(00082, 1, 4, 19, 'Marmelero 3x2x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '2.00'),
(00083, 1, 4, 20, 'Marmelero 3x3x1', '2016-04-23', 1, 1, '0', '60.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '3.00'),
(00084, 1, 4, 21, 'Marmelero 3x4x1', '2016-04-23', 1, 1, '0', '60.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '4.00'),
(00085, 1, 4, 21, 'Marmelero 3x5x1', '2016-04-23', 1, 1, '0', '60.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '5.00'),
(00086, 1, 4, 21, 'Marmelero 3x6x1', '2016-04-23', 1, 1, '0', '60.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '6.00'),
(00087, 1, 4, 21, 'Marmelero 3x7x1', '2016-04-23', 1, 1, '0', '60.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '7.00'),
(00088, 1, 4, 21, 'Marmelero 3x8x1', '2016-04-23', 1, 1, '0', '60.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '8.00'),
(00089, 1, 4, 21, 'Marmelero 3x9x1', '2016-04-23', 1, 1, '0', '60.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '9.00'),
(00090, 1, 4, 21, 'Marmelero 3x10x1', '2016-04-23', 1, 1, '0', '60.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '10.00'),
(00091, 1, 5, 23, 'Virapita 1.5x1x1', '2016-04-23', 1, 1, '0', '65.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '1.00'),
(00092, 1, 5, 23, 'Virapita 1.5x2x1', '2016-04-23', 1, 1, '0', '65.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '2.00'),
(00093, 1, 5, 23, 'Virapita 1.5x3x1', '2016-04-23', 1, 1, '0', '65.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '3.00'),
(00094, 1, 5, 23, 'Virapita 1.5x4x1', '2016-04-23', 1, 1, '0', '65.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '4.00'),
(00095, 1, 5, 24, 'Virapita 1.5x5x1', '2016-04-23', 1, 1, '0', '65.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '5.00'),
(00096, 1, 5, 24, 'Virapita 1.5x6x1', '2016-04-23', 1, 1, '0', '65.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '6.00'),
(00097, 1, 5, 24, 'Virapita 1.5x7x1', '2016-04-23', 1, 1, '0', '65.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '7.00'),
(00098, 1, 5, 24, 'Virapita 1.5x8x1', '2016-04-23', 1, 1, '0', '65.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '8.00'),
(00099, 1, 5, 24, 'Virapita 1.5x9x1', '2016-04-23', 1, 1, '0', '65.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '9.00'),
(00100, 1, 5, 24, 'Virapita 1.5x10x1', '2016-04-23', 1, 1, '0', '65.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '10.00'),
(00101, 1, 5, 24, 'Virapita 1.5x11x1', '2016-04-23', 1, 1, '0', '65.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '11.00'),
(00102, 1, 5, 24, 'Virapita 1.5x12x1', '2016-04-23', 1, 1, '0', '65.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '12.00'),
(00103, 1, 5, 23, 'Virapita 2x1x1', '2016-04-23', 1, 1, '0', '60.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '1.00'),
(00104, 1, 5, 23, 'Virapita 2x2x1', '2016-04-23', 1, 1, '0', '60.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '2.00'),
(00105, 1, 5, 25, 'Virapita 2x3x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '3.00'),
(00106, 1, 5, 25, 'Virapita 2x4x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '4.00'),
(00107, 1, 5, 25, 'Virapita 2x5x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '5.00'),
(00108, 1, 5, 25, 'Virapita 2x6x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '6.00'),
(00109, 1, 6, 26, 'Grapia 1x1x1', '2016-04-23', 1, 1, '0', '60.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '1.00'),
(00110, 1, 6, 26, 'Grapia 1x2x1', '2016-04-23', 1, 1, '0', '60.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '2.00'),
(00111, 1, 6, 26, 'Grapia 1x3x1', '2016-04-23', 1, 1, '0', '60.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '3.00'),
(00112, 1, 6, 26, 'Grapia 2x2x1', '2016-04-23', 1, 1, '0', '60.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '2.00'),
(00113, 1, 6, 27, 'Grapia 2x3x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '3.00'),
(00114, 1, 6, 27, 'Grapia 2x4x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '4.00'),
(00115, 1, 6, 27, 'Grapia 2x5x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '5.00'),
(00116, 1, 6, 27, 'Grapia 2x6x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '6.00'),
(00117, 1, 6, 28, 'Grapia 3x3x1', '2016-04-23', 1, 1, '0', '65.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '3.00'),
(00118, 1, 6, 29, 'Grapia 3x4x1', '2016-04-23', 1, 1, '0', '65.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '4.00'),
(00119, 1, 6, 29, 'Grapia 3x5x1', '2016-04-23', 1, 1, '0', '65.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '5.00'),
(00120, 1, 6, 29, 'Grapia 3x6x1', '2016-04-23', 1, 1, '0', '65.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '6.00'),
(00121, 1, 6, 29, 'Grapia 3x7x1', '2016-04-23', 1, 1, '0', '65.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '7.00'),
(00122, 1, 6, 29, 'Grapia 3x8x1', '2016-04-23', 1, 1, '0', '65.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '8.00'),
(00123, 1, 6, 29, 'Grapia 3x9x1', '2016-04-23', 1, 1, '0', '65.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '9.00'),
(00124, 1, 6, 29, 'Grapia 3x10x1', '2016-04-23', 1, 1, '0', '65.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '10.00'),
(00125, 1, 6, 29, 'Grapia 3x11x1', '2016-04-23', 1, 1, '0', '65.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '11.00'),
(00126, 1, 6, 29, 'Grapia 3x12x1', '2016-04-23', 1, 1, '0', '65.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '12.00'),
(00127, 1, 6, 29, 'Grapia 3x13x1', '2016-04-23', 1, 1, '0', '65.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '13.00'),
(00128, 1, 6, 29, 'Grapia 3x14x1', '2016-04-23', 1, 1, '0', '65.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '14.00'),
(00129, 1, 6, 30, 'Grapia 1x4x1', '2016-04-23', 1, 1, '0', '60.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '4.00'),
(00130, 1, 6, 30, 'Grapia 1x5x1', '2016-04-23', 1, 1, '0', '60.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '5.00'),
(00131, 1, 6, 30, 'Grapia 1x6x1', '2016-04-23', 1, 1, '0', '60.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '6.00'),
(00132, 1, 6, 30, 'Grapia 1x7x1', '2016-04-23', 1, 1, '0', '60.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '7.00'),
(00133, 1, 6, 30, 'Grapia 1x8x1', '2016-04-23', 1, 1, '0', '60.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '8.00'),
(00134, 1, 6, 30, 'Grapia 1x9x1', '2016-04-23', 1, 1, '0', '60.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '9.00'),
(00135, 1, 6, 30, 'Grapia 1x10x1', '2016-04-23', 1, 1, '0', '60.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '10.00'),
(00136, 1, 6, 30, 'Grapia 1x11x1', '2016-04-23', 1, 1, '0', '60.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '11.00'),
(00137, 1, 6, 30, 'Grapia 1x12x1', '2016-04-23', 1, 1, '0', '60.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '12.00'),
(00138, 1, 7, 31, 'Kiri 1x1x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '1.00'),
(00139, 1, 7, 31, 'Kiri 1x2x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '2.00'),
(00140, 1, 7, 31, 'Kiri 1x3x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '3.00'),
(00141, 1, 7, 31, 'Kiri 1x4x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '4.00'),
(00142, 1, 7, 31, 'Kiri 1x5x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '5.00'),
(00143, 1, 7, 31, 'Kiri 1x6x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '6.00'),
(00144, 1, 7, 31, 'Kiri 1x7x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '7.00'),
(00145, 1, 7, 31, 'Kiri 1x8x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '8.00'),
(00146, 1, 7, 31, 'Kiri 1x9x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '9.00'),
(00147, 1, 7, 31, 'Kiri 1x10x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '10.00'),
(00148, 1, 7, 31, 'Kiri 1x11x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '11.00'),
(00149, 1, 7, 31, 'Kiri 1x12x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '12.00'),
(00150, 1, 7, 32, 'Kiri 2x2x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '2.00'),
(00151, 1, 7, 32, 'Kiri 2x3x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '3.00'),
(00152, 1, 7, 32, 'Kiri 2x4x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '4.00'),
(00153, 1, 7, 32, 'Kiri 2x5x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '5.00'),
(00154, 1, 7, 32, 'Kiri 2x6x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '6.00'),
(00155, 1, 7, 32, 'Kiri 2x7x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '7.00'),
(00156, 1, 7, 32, 'Kiri 2x8x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '8.00'),
(00157, 1, 7, 32, 'Kiri 2x9x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '9.00'),
(00158, 1, 8, 33, 'Paraiso 1.5x1x1', '2016-04-23', 1, 1, '0', '30.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '1.00'),
(00159, 1, 8, 33, 'Paraiso 1.5x2x1', '2016-04-23', 1, 1, '0', '30.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '2.00'),
(00160, 1, 8, 33, 'Paraiso 1.5x3x1', '2016-04-23', 1, 1, '0', '30.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '3.00'),
(00161, 1, 8, 33, 'Paraiso 1.5x4x1', '2016-04-23', 1, 1, '0', '30.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '4.00'),
(00162, 1, 8, 33, 'Paraiso 1.5x5x1', '2016-04-23', 1, 1, '0', '30.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '5.00'),
(00163, 1, 8, 33, 'Paraiso 1.5x6x1', '2016-04-23', 1, 1, '0', '30.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '6.00'),
(00164, 1, 8, 34, 'Paraiso 1x2x1', '2016-04-23', 1, 1, '0', '30.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '2.00'),
(00165, 1, 8, 34, 'Paraiso 1x3x1', '2016-04-23', 1, 1, '0', '30.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '3.00'),
(00166, 1, 8, 34, 'Paraiso 2x2x1', '2016-04-23', 1, 1, '0', '30.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '2.00'),
(00167, 1, 8, 35, 'Paraiso 2x3x1', '2016-04-23', 1, 1, '0', '30.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '3.00'),
(00168, 1, 8, 35, 'Paraiso 2x4x1', '2016-04-23', 1, 1, '0', '30.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '4.00'),
(00169, 1, 8, 35, 'Paraiso 2x5x1', '2016-04-23', 1, 1, '0', '30.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '5.00'),
(00170, 1, 8, 35, 'Paraiso 2x6x1', '2016-04-23', 1, 1, '0', '30.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '6.00'),
(00171, 1, 8, 36, 'Paraiso 3x3x1', '2016-04-23', 1, 1, '0', '30.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '3.00'),
(00172, 1, 8, 37, 'Paraiso 3x4x1', '2016-04-23', 1, 1, '0', '30.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '4.00'),
(00173, 1, 8, 37, 'Paraiso 3x5x1', '2016-04-23', 1, 1, '0', '30.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '5.00'),
(00174, 1, 8, 37, 'Paraiso 3x6x1', '2016-04-23', 1, 1, '0', '30.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '6.00'),
(00175, 1, 9, 38, 'Curupay 1.5x10x1', '2016-04-23', 1, 1, '0', '90.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '10.00'),
(00176, 1, 10, 39, 'Viraro 1.5x10x1', '2016-04-23', 1, 1, '0', '150.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '10.00'),
(00177, 1, 10, 39, 'Viraro 1.5x11x1', '2016-04-23', 1, 1, '0', '150.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '11.00'),
(00178, 1, 10, 39, 'Viraro 1.5x12x1', '2016-04-23', 1, 1, '0', '150.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '12.00'),
(00179, 1, 11, 40, 'Guayuvira 1x1x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '1.00'),
(00180, 1, 11, 40, 'Guayuvira 1x2x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '2.00'),
(00181, 1, 11, 40, 'Guayuvira 1x3x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '3.00'),
(00182, 1, 11, 40, 'Guayuvira 1x4x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '4.00'),
(00183, 1, 11, 40, 'Guayuvira 1x6x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '6.00'),
(00184, 1, 11, 40, 'Guayuvira 1x8x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '8.00'),
(00185, 1, 11, 41, 'Guayuvira 1.5x1x1', '2016-04-23', 1, 1, '0', '45.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '1.00'),
(00186, 1, 11, 41, 'Guayuvira 1.5x2x1', '2016-04-23', 1, 1, '0', '45.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '2.00'),
(00187, 1, 11, 41, 'Guayuvira 1.5x3x1', '2016-04-23', 1, 1, '0', '45.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '3.00'),
(00188, 1, 11, 41, 'Guayuvira 1.5x4x1', '2016-04-23', 1, 1, '0', '45.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '4.00'),
(00189, 1, 11, 41, 'Guayuvira 1.5x5x1', '2016-04-23', 1, 1, '0', '45.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '5.00'),
(00190, 1, 11, 41, 'Guayuvira 1.5x6x1', '2016-04-23', 1, 1, '0', '45.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '6.00'),
(00191, 1, 11, 41, 'Guayuvira 1.5x7x1', '2016-04-23', 1, 1, '0', '45.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '7.00'),
(00192, 1, 11, 41, 'Guayuvira 1.5x8x1', '2016-04-23', 1, 1, '0', '45.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '8.00'),
(00193, 1, 11, 41, 'Guayuvira 1.5x9x1', '2016-04-23', 1, 1, '0', '45.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '9.00'),
(00194, 1, 11, 41, 'Guayuvira 1.5x10x1', '2016-04-23', 1, 1, '0', '45.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '10.00'),
(00195, 1, 11, 41, 'Guayuvira 1.5x11x1', '2016-04-23', 1, 1, '0', '45.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '11.00'),
(00196, 1, 11, 41, 'Guayuvira 1.5x12x1', '2016-04-23', 1, 1, '0', '45.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '12.00'),
(00197, 1, 11, 42, 'Guayuvira 2x2x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '2.00'),
(00198, 1, 11, 42, 'Guayuvira 2x3x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '3.00'),
(00199, 1, 11, 42, 'Guayuvira 2x4x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '4.00'),
(00200, 1, 11, 42, 'Guayuvira 2x5x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '5.00'),
(00201, 1, 11, 42, 'Guayuvira 2x6x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '6.00'),
(00202, 1, 11, 43, 'Guayuvira 3x3x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '3.00'),
(00203, 1, 11, 44, 'Guayuvira 3x4x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '4.00'),
(00204, 1, 11, 44, 'Guayuvira 3x5x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '5.00'),
(00205, 1, 11, 44, 'Guayuvira 3x6x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '6.00'),
(00206, 1, 12, 45, 'Lapacho 1x4x1', '2016-04-23', 1, 1, '0', '100.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '4.00'),
(00207, 1, 13, 46, 'Grabilea 1x1x1', '2016-04-23', 1, 1, '0', '60.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '1.00'),
(00208, 1, 13, 46, 'Grabilea 1x2x1', '2016-04-23', 1, 1, '0', '60.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '2.00'),
(00209, 1, 13, 46, 'Grabilea 1x3x1', '2016-04-23', 1, 1, '0', '60.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '3.00'),
(00210, 1, 13, 46, 'Grabilea 1x4x1', '2016-04-23', 1, 1, '0', '60.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '4.00'),
(00211, 1, 13, 46, 'Grabilea 1x5x1', '2016-04-23', 1, 1, '0', '60.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '5.00'),
(00212, 1, 13, 46, 'Grabilea 1x6x1', '2016-04-23', 1, 1, '0', '60.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '6.00'),
(00213, 1, 13, 46, 'Grabilea 1x7x1', '2016-04-23', 1, 1, '0', '60.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '7.00'),
(00214, 1, 13, 46, 'Grabilea 1x8x1', '2016-04-23', 1, 1, '0', '60.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '8.00'),
(00215, 1, 13, 46, 'Grabilea 1x9x1', '2016-04-23', 1, 1, '0', '60.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '9.00'),
(00216, 1, 13, 46, 'Grabilea 1x10x1', '2016-04-23', 1, 1, '0', '60.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '10.00'),
(00217, 1, 13, 46, 'Grabilea 1x11x1', '2016-04-23', 1, 1, '0', '60.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '11.00'),
(00218, 1, 13, 46, 'Grabilea 1x12x1', '2016-04-23', 1, 1, '0', '60.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '12.00'),
(00219, 1, 14, 47, 'Incienso 1.5x1x1', '2016-04-23', 1, 1, '0', '95.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '1.00'),
(00220, 1, 14, 47, 'Incienso 1.5x2x1', '2016-04-23', 1, 1, '0', '95.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '2.00'),
(00221, 1, 14, 47, 'Incienso 1.5x3x1', '2016-04-23', 1, 1, '0', '95.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '3.00'),
(00222, 1, 14, 47, 'Incienso 1.5x4x1', '2016-04-23', 1, 1, '0', '95.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '4.00'),
(00223, 1, 14, 47, 'Incienso 1.5x5x1', '2016-04-23', 1, 1, '0', '95.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '5.00'),
(00224, 1, 14, 47, 'Incienso 1.5x6x1', '2016-04-23', 1, 1, '0', '95.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '6.00'),
(00225, 1, 14, 47, 'Incienso 1.5x7x1', '2016-04-23', 1, 1, '0', '95.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '7.00'),
(00226, 1, 14, 47, 'Incienso 1.5x8x1', '2016-04-23', 1, 1, '0', '95.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '8.00'),
(00227, 1, 14, 47, 'Incienso 1.5x9x1', '2016-04-23', 1, 1, '0', '95.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '9.00'),
(00228, 1, 14, 47, 'Incienso 1.5x10x1', '2016-04-23', 1, 1, '0', '95.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '10.00'),
(00229, 1, 14, 47, 'Incienso 1.5x11x1', '2016-04-23', 1, 1, '0', '95.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '11.00'),
(00230, 1, 14, 47, 'Incienso 1.5x12x1', '2016-04-23', 1, 1, '0', '95.00', '0.00', '0', '', '2016-04-23', 1, '1.50', '12.00'),
(00231, 1, 15, 48, 'Timbo 1x1x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '1.00'),
(00232, 1, 15, 48, 'Timbo 1x2x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '2.00'),
(00233, 1, 15, 48, 'Timbo 1x3x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '3.00'),
(00234, 1, 15, 48, 'Timbo 1x4x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '4.00'),
(00235, 1, 15, 48, 'Timbo 1x5x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '5.00'),
(00236, 1, 15, 48, 'Timbo 1x6x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '6.00'),
(00237, 1, 15, 48, 'Timbo 1x7x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '7.00'),
(00238, 1, 15, 48, 'Timbo 1x8x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '8.00'),
(00239, 1, 15, 48, 'Timbo 1x9x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '9.00'),
(00240, 1, 15, 48, 'Timbo 1x10x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '10.00'),
(00241, 1, 15, 48, 'Timbo 1x11x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '11.00'),
(00242, 1, 15, 48, 'Timbo 1x12x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '12.00'),
(00243, 1, 15, 49, 'Timbo 2x2x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '2.00'),
(00244, 1, 15, 49, 'Timbo 2x3x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '3.00'),
(00245, 1, 15, 49, 'Timbo 2x4x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '4.00'),
(00246, 1, 15, 49, 'Timbo 2x5x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '5.00'),
(00247, 1, 15, 49, 'Timbo 2x6x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '6.00'),
(00248, 1, 15, 49, 'Timbo 2x7x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '7.00'),
(00249, 1, 15, 49, 'Timbo 2x8x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '8.00'),
(00250, 1, 15, 49, 'Timbo 2x9x1', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '2.00', '9.00'),
(00251, 1, 16, 50, 'Guaica 1x1x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '1.00'),
(00252, 1, 16, 50, 'Guaica 1x2x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '2.00'),
(00253, 1, 16, 50, 'Guaica 1x3x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '3.00'),
(00254, 1, 16, 50, 'Guaica 1x4x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '4.00'),
(00255, 1, 16, 50, 'Guaica 1x5x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '5.00'),
(00256, 1, 16, 50, 'Guaica 1x6x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '6.00'),
(00257, 1, 16, 50, 'Guaica 1x7x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '7.00'),
(00258, 1, 16, 50, 'Guaica 1x8x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '8.00'),
(00259, 1, 16, 50, 'Guaica 1x9x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '9.00'),
(00260, 1, 16, 50, 'Guaica 1x10x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '10.00'),
(00261, 1, 16, 50, 'Guaica 1x11x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '11.00'),
(00262, 1, 16, 50, 'Guaica 1x12x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '1.00', '12.00'),
(00263, 1, 17, 51, 'Finger / Tablero 3x10x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '10.00'),
(00264, 1, 17, 51, 'Finger / Tablero 3x11x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '11.00'),
(00265, 1, 17, 51, 'Finger / Tablero 3x12x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '12.00'),
(00266, 1, 17, 51, 'Finger / Tablero 3x13x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '13.00'),
(00267, 1, 17, 51, 'Finger / Tablero 3x14x1', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '3.00', '14.00'),
(00268, 1, 18, 52, 'veneno dharma 1 Litro', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00269, 1, 18, 52, 'veneno dharma 4 Litros', '2016-04-23', 1, 1, '0', '180.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00270, 1, 18, 52, 'veneno dharma  10 Litros', '2016-04-23', 1, 1, '0', '420.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00271, 1, 18, 52, 'veneno dharma 18 Litros', '2016-04-23', 1, 1, '0', '820.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00272, 1, 18, 53, 'veneno soltech 1 Litro', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00273, 1, 18, 53, 'veneno soltech 4 Litros', '2016-04-23', 1, 1, '0', '180.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00274, 1, 18, 53, 'veneno soltech 10 Litros', '2016-04-23', 1, 1, '0', '420.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00275, 1, 18, 53, 'veneno soltech 18 Litros', '2016-04-23', 1, 1, '0', '820.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00276, 1, 18, 54, 'veneno penta 1 Litro', '2016-04-23', 1, 1, '0', '95.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00277, 1, 18, 54, 'veneno penta 4 Litros', '2016-04-23', 1, 1, '0', '345.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00278, 1, 18, 54, 'veneno penta  10 Litros', '2016-04-23', 1, 1, '0', '800.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00279, 1, 18, 54, 'veneno penta  18 Litros', '2016-04-23', 1, 1, '0', '1350.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00280, 1, 18, 54, 'veneno penta LPU 18 Litros', '2016-04-23', 1, 1, '0', '0.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00281, 1, 19, 56, 'Kekol K 300 Comp A+B 500 gr + 500 gr', '2016-04-23', 1, 1, '0', '155.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00282, 1, 19, 56, 'Kekol K 300 Comp A+B 5kg+5kg', '2016-04-23', 1, 1, '0', '1300.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00283, 1, 19, 56, 'Kekol K 325 10 Kg', '2016-04-23', 1, 1, '0', '665.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00284, 1, 19, 56, 'Kekol K 830 Adhes Uretanico 0,700 gr', '2016-04-23', 1, 1, '0', '120.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00285, 1, 19, 56, 'Kekol K 1000 0,250 gr', '2016-04-23', 1, 1, '0', '18.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00286, 1, 19, 56, 'Kekol K 1000 0,500 gr', '2016-04-23', 1, 1, '0', '25.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00287, 1, 19, 56, 'Kekol K 1000 1 Kg', '2016-04-23', 1, 1, '0', '42.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00288, 1, 19, 56, 'Kekol K 1000 5 Kg', '2016-04-23', 1, 1, '0', '160.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00289, 1, 19, 56, 'Kekol K 1004 1 Kg', '2016-04-23', 1, 1, '0', '55.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00290, 1, 19, 56, 'Kekol K 1004 5 Kg', '2016-04-23', 1, 1, '0', '195.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00291, 1, 19, 56, 'Kekol K 1004 12 Kg', '2016-04-23', 1, 1, '0', '330.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00292, 1, 19, 56, 'Kekol K 515 0,500 gr', '2016-04-23', 1, 1, '0', '135.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00293, 1, 19, 57, 'Fana Adhesivo vinilico 0,500 gr', '2016-04-23', 1, 1, '0', '35.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00294, 1, 19, 57, 'Fana Adhesivo vinilico 1 Kg', '2016-04-23', 1, 1, '0', '60.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00295, 1, 19, 57, 'Fana Adhesivo vinilico 4 Kg', '2016-04-23', 1, 1, '0', '180.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00296, 1, 20, 58, 'barniz marino Dharma 1 Litro', '2016-04-23', 1, 1, '0', '135.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00297, 1, 20, 58, 'barniz marino Dharma 4 Litros', '2016-04-23', 1, 1, '0', '445.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00298, 1, 20, 58, 'barniz marino Dharma 18 Litros', '2016-04-23', 1, 1, '0', '2250.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00299, 1, 20, 59, 'Impregnante Penta 1 Litro', '2016-04-23', 1, 1, '0', '160.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00300, 1, 20, 59, 'Impregnante Penta 4 Litros', '2016-04-23', 1, 1, '0', '580.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00301, 1, 20, 59, 'Impregnante Penta 20 Litro', '2016-04-23', 1, 1, '0', '2679.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00302, 1, 20, 60, 'Brea / Pintura asfaltica 1 Litro', '2016-04-23', 1, 1, '0', '48.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00303, 1, 20, 60, 'Brea / Pintura asfaltica 4 Litros', '2016-04-23', 1, 1, '0', '165.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00304, 1, 20, 60, 'Brea / Pintura asfaltica 18 Litros', '2016-04-23', 1, 1, '0', '485.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00305, 1, 21, 0, 'clavos de 8" c/u', '2016-04-23', 1, 1, '0', '4.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00306, 1, 21, 0, 'clavos de 9/25 1kg', '2016-04-23', 1, 1, '0', '60.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00307, 1, 21, 0, 'clavo galvanizado 1 kg', '2016-04-23', 1, 1, '0', '135.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00308, 1, 21, 0, 'clavo cabeza de plomo 1 Kg', '2016-04-23', 1, 1, '0', '75.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00309, 1, 21, 0, 'clavos espiralados 1 Kg', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00310, 1, 21, 0, 'clavo cobre x klg 1 Kg', '2016-04-23', 1, 1, '0', '300.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00311, 1, 21, 0, 'clavos sin cabeza 1 Kg', '2016-04-23', 1, 1, '0', '60.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00312, 1, 21, 0, 'clavos comun x klg 1 Kg', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00313, 1, 21, 0, 'clavo moleteados de luca 100 unid', '2016-04-23', 1, 1, '0', '135.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00314, 1, 21, 0, 'clavo espiralado de luca 100 unid', '2016-04-23', 1, 1, '0', '135.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00315, 1, 22, 0, 'Alamabre 1 kg', '2016-04-23', 1, 1, '0', '55.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00316, 1, 23, 0, 'tornillos de 8 c/u', '2016-04-23', 1, 1, '0', '2.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00317, 1, 23, 0, 'tornillos de 6 c/u', '2016-04-23', 1, 1, '0', '2.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00318, 1, 23, 0, 'tornillos 2" cabeza redonda c/u', '2016-04-23', 1, 1, '0', '3.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00319, 1, 23, 0, 'autoper x caja por caja (200 unid.)', '2016-04-23', 1, 1, '0', '370.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00320, 1, 23, 0, 'tornillos fijaciones c/u', '2016-04-23', 1, 1, '0', '1.75', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00321, 1, 23, 0, 'fijaciones x caja por caja (200 unid.)', '2016-04-23', 1, 1, '0', '370.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00322, 1, 23, 0, 'tornillos para chapa  pqt. De 100 unidades', '2016-04-23', 1, 1, '0', '250.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00323, 1, 23, 0, 'tornillos para chapa  c/u', '2016-04-23', 1, 1, '0', '2.50', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00324, 1, 23, 0, 'tarugos de 8 de plastico c/u', '2016-04-23', 1, 1, '0', '1.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00325, 1, 23, 0, 'tarugos de 6 de plastico c/u', '2016-04-23', 1, 1, '0', '1.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00326, 1, 23, 0, 'Tarugo de 8mm de madera c/u', '2016-04-23', 1, 1, '0', '8.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00327, 1, 23, 0, 'Tarugo de 10mm de madera c/u', '2016-04-23', 1, 1, '0', '10.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00328, 1, 24, 0, 'columnas de 4x4 mad. Dura ', '2016-04-23', 1, 1, '0', '750.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00329, 1, 24, 0, 'columna mar/anch 5x5 ', '2016-04-23', 1, 1, '0', '1450.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00330, 1, 24, 0, 'columna mar/anch 6x6 ', '2016-04-23', 1, 1, '0', '2150.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00331, 1, 25, 0, 'fenolico film x18mm 1,22 x 2,44', '2016-04-23', 1, 1, '0', '820.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00332, 1, 25, 0, 'fenolico 6mm  1,22 x 2,44', '2016-04-23', 1, 1, '0', '300.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00333, 1, 25, 0, 'fenolico 10mm 1,22 x 2,44', '2016-04-23', 1, 1, '0', '420.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00334, 1, 25, 0, 'fenolico 18mm 1,22 x 2,44', '2016-04-23', 1, 1, '0', '640.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00335, 1, 25, 0, 'fenolico 18mm 1,60 x 2,10', '2016-04-23', 1, 1, '0', '720.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00336, 1, 25, 0, 'OSB 15mm 1,22 x 2,44', '2016-04-23', 1, 1, '0', '530.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00337, 1, 25, 0, 'Chapadur 1,22 x 3,00', '2016-04-23', 1, 1, '0', '205.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00338, 1, 25, 0, 'terciado guatambu 3mm 1,60 x 2,10', '2016-04-23', 1, 1, '0', '215.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00339, 1, 26, 0, 'polifoid AX 2 30 Mt2', '2016-04-23', 1, 1, '0', '620.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00340, 1, 26, 0, 'polifoid AX 2 15 Mt2', '2016-04-23', 1, 1, '0', '320.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00341, 1, 26, 0, 'polifoid  AX 1 30 Mt2', '2016-04-23', 1, 1, '0', '610.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00342, 1, 26, 0, 'polifoid  AX 1 15 Mt2', '2016-04-23', 1, 1, '0', '310.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00343, 1, 26, 0, 'hizoespuma 5 mm 20 Mt2', '2016-04-23', 1, 1, '0', '480.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00344, 1, 26, 0, 'hizoespuma 10 mm 20 Mt2', '2016-04-23', 1, 1, '0', '840.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00345, 1, 26, 0, 'Lana de vidrio 21,28 Mt2', '2016-04-23', 1, 1, '0', '1450.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00346, 1, 26, 0, 'ruberoid 5 Mt2', '2016-04-23', 1, 1, '0', '0.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00347, 1, 26, 0, 'ruberoid 10 Mt2', '2016-04-23', 1, 1, '0', '90.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00348, 1, 26, 0, 'ruberoid 20 Mt2', '2016-04-23', 1, 1, '0', '180.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00349, 1, 26, 0, 'ruberoid 40 Mt2', '2016-04-23', 1, 1, '0', '320.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00350, 1, 26, 0, 'coritec  30 Mt2', '2016-04-23', 1, 1, '0', '510.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00351, 1, 26, 0, 'wichi 30 Mt2', '2016-04-23', 1, 1, '0', '510.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00352, 1, 26, 0, 'membrana Metropolis en pasta 4 Kg', '2016-04-23', 1, 1, '0', '400.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00353, 1, 26, 0, 'membrana SecoPlus 10 Kg', '2016-04-23', 1, 1, '0', '720.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00354, 1, 26, 0, 'membrana Metropolis en pasta 20 Kg', '2016-04-23', 1, 1, '0', '1250.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00355, 1, 26, 0, 'membrana rollo nÂ°4 10 Mt2', '2016-04-23', 1, 1, '0', '460.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00356, 1, 26, 0, 'tergopol 2cm 1 Mt2', '2016-04-23', 1, 1, '0', '25.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00357, 1, 26, 0, 'telgopor 4cm 1 Mt2', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00358, 1, 27, 0, 'Tinta para madera 0,70 mm', '2016-04-23', 1, 1, '0', '42.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00359, 1, 27, 0, 'Tinta para madera 0,250 mm', '2016-04-23', 1, 1, '0', '85.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00360, 1, 28, 0, 'Masilla para madera 0,200 Gr (aprox)', '2016-04-23', 1, 1, '0', '45.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00361, 1, 28, 0, 'Masilla para madera 0,300 Gr', '2016-04-23', 1, 1, '0', '45.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00362, 1, 29, 0, 'Pincel N. 40 ', '2016-04-23', 1, 1, '0', '128.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00363, 1, 29, 0, 'Pincel N. 42 ', '2016-04-23', 1, 1, '0', '110.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00364, 1, 29, 0, 'Pincel N. 30 ', '2016-04-23', 1, 1, '0', '90.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00365, 1, 29, 0, 'Pincel N. 25 ', '2016-04-23', 1, 1, '0', '65.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00366, 1, 29, 0, 'Pincel N. 20 ', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00367, 1, 29, 0, 'Pincel N. 15 ', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00368, 1, 29, 0, 'Pincel N. 10 ', '2016-04-23', 1, 1, '0', '33.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00369, 1, 29, 0, 'Pincel N. 7 ', '2016-04-23', 1, 1, '0', '28.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00370, 1, 29, 0, 'Pincel N, 5 ', '2016-04-23', 1, 1, '0', '24.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00371, 1, 31, 0, 'Metros de madera x 1mt ', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00372, 1, 31, 0, 'Metros de madera x 2mt ', '2016-04-23', 1, 1, '0', '75.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00373, 1, 31, 0, 'Cinta metrica de 3mt ', '2016-04-23', 1, 1, '0', '25.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00374, 1, 31, 0, 'Cinta metrica de 5mt ', '2016-04-23', 1, 1, '0', '65.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00375, 1, 31, 0, 'Cinta metrica de 7mt ', '2016-04-23', 1, 1, '0', '75.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00376, 1, 32, 0, 'Barbijos  ', '2016-04-23', 1, 1, '0', '4.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00377, 1, 32, 0, 'Guantes  ', '2016-04-23', 1, 1, '0', '14.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00378, 1, 32, 0, ' Fajas ', '2016-04-23', 1, 1, '0', '115.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00379, 1, 33, 0, 'Mecha Plana 10 mm', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00380, 1, 33, 0, 'Mecha Plana 12 mm', '2016-04-23', 1, 1, '0', '45.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00381, 1, 33, 0, 'Mecha Plana 16 mm', '2016-04-23', 1, 1, '0', '48.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00382, 1, 33, 0, 'Mecha Plana 18 mm', '2016-04-23', 1, 1, '0', '52.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00383, 1, 33, 0, 'Mecha Plana 20 mm', '2016-04-23', 1, 1, '0', '55.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00384, 1, 33, 0, 'Mecha Plana 25 mm', '2016-04-23', 1, 1, '0', '60.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00385, 1, 34, 61, 'Martillo galponero mango de madera ', '2016-04-23', 1, 1, '0', '150.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00386, 1, 34, 61, 'Martillo carpintero mango de madera ', '2016-04-23', 1, 1, '0', '100.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00387, 1, 34, 61, 'Martillo mango de fibra ', '2016-04-23', 1, 1, '0', '130.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00388, 1, 34, 61, 'Tenaza armador de 11" c/aislacion ', '2016-04-23', 1, 1, '0', '180.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00389, 1, 30, 77, 'Esscalon Pino Elioti 1,5" de espesor', '2016-04-23', 1, 1, '0', '125.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00390, 1, 30, 77, 'Escalon Pino Parana 1,5" de espesor', '2016-04-23', 1, 1, '0', '225.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00391, 1, 30, 77, 'Escalon Paraizo 1,5" de espesor', '2016-04-23', 1, 1, '0', '275.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00392, 1, 30, 77, 'Escalon Virapita 1,5" de espesor', '2016-04-23', 1, 1, '0', '350.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00393, 1, 30, 77, 'Escalon Guayuvira  1,5" de espesor', '2016-04-23', 1, 1, '0', '325.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00394, 1, 30, 77, 'Escalon Viraro 1,5" de espesor', '2016-04-23', 1, 1, '0', '650.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00395, 1, 30, 78, 'Pasamano Pino Elioti Mtl de 2"x3"', '2016-04-23', 1, 1, '0', '50.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00396, 1, 30, 78, 'Pasamano Pino Parana Mtl de 2"x3"', '2016-04-23', 1, 1, '0', '98.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00397, 1, 30, 78, 'Pasamano Paraizo Mtl de 2"x3"', '2016-04-23', 1, 1, '0', '110.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00398, 1, 30, 78, 'Pasamano Virapita Mtl de 2"x3"', '2016-04-23', 1, 1, '0', '130.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00399, 1, 30, 78, 'Pasamano Guayuvira  Mtl de 2"x3"', '2016-04-23', 1, 1, '0', '110.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00400, 1, 30, 78, 'Pasamano Viraro Mtl de 2"x3"', '2016-04-23', 1, 1, '0', '0.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00401, 1, 30, 79, 'Balustro Pino Elioti 2" x 2"', '2016-04-23', 1, 1, '0', '30.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00402, 1, 30, 79, 'Balustro Pino Parana 2" x 2"', '2016-04-23', 1, 1, '0', '60.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00403, 1, 30, 79, 'Balustro Paraizo 2" x 2"', '2016-04-23', 1, 1, '0', '70.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00');
INSERT INTO `productos` (`id`, `idMoneda`, `idCategoria`, `idSubCategoria`, `descripcion`, `fechaCarga`, `idUsuario`, `activo`, `aviso_stock`, `precio`, `utilidad`, `iva`, `referencia`, `fechaActualizacion`, `bulto`, `espesor`, `ancho`) VALUES
(00404, 1, 30, 79, 'Balustro Virapita 2" x 2"', '2016-04-23', 1, 1, '0', '100.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00405, 1, 30, 79, 'Balustro Guayuvira  2" x 2"', '2016-04-23', 1, 1, '0', '90.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00406, 1, 30, 79, 'Balustro Viraro 2" x 2"', '2016-04-23', 1, 1, '0', '0.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00407, 1, 30, 81, 'Columna Pino Elioti 3" x 3" x Mtl', '2016-04-23', 1, 1, '0', '61.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00408, 1, 30, 81, 'Columna Pino Parana 3" x 3" x Mtl', '2016-04-23', 1, 1, '0', '135.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00409, 1, 30, 81, 'Columna Paraizo 3" x 3" x Mtl', '2016-04-23', 1, 1, '0', '147.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00410, 1, 30, 81, 'Columna Virapita 3" x 3" x Mtl', '2016-04-23', 1, 1, '0', '170.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00411, 1, 30, 81, 'Columna Guayuvira  3" x 3" x Mtl', '2016-04-23', 1, 1, '0', '147.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00412, 1, 30, 81, 'Columna Viraro 3" x 3"', '2016-04-23', 1, 1, '0', '0.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00413, 1, 30, 80, 'Frentin Pino Elioti 3/4" de espesor', '2016-04-23', 1, 1, '0', '60.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00414, 1, 30, 80, 'Frentin Pino Parana 3/4" de espesor', '2016-04-23', 1, 1, '0', '120.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00415, 1, 30, 80, 'Frentin Paraizo 3/4" de espesor', '2016-04-23', 1, 1, '0', '140.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00416, 1, 30, 80, 'Frentin Virapita 3/4" de espesor', '2016-04-23', 1, 1, '0', '200.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00417, 1, 30, 80, 'Frentin Guayuvira  3/4" de espesor', '2016-04-23', 1, 1, '0', '180.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00418, 1, 30, 80, 'Frentin Viraro 3/4" de espesor', '2016-04-23', 1, 1, '0', '270.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00419, 1, 35, 0, '3082 70x55x55', '2016-04-23', 1, 1, '0', '10.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00420, 1, 35, 0, '3138 110x35x35', '2016-04-23', 1, 1, '0', '10.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00421, 1, 35, 0, '3139 220x35x35', '2016-04-23', 1, 1, '0', '17.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00422, 1, 35, 0, '3106 70x220', '2016-04-23', 1, 1, '0', '16.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00423, 1, 35, 0, '3175 70x110x110', '2016-04-23', 1, 1, '0', '17.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00424, 1, 35, 0, '3176 70x60x160', '2016-04-23', 1, 1, '0', '17.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00425, 1, 35, 0, '3097 45x70x70', '2016-04-23', 1, 1, '0', '13.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00426, 1, 35, 0, '3098 45x55x85', '2016-04-23', 1, 1, '0', '12.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00427, 1, 35, 0, '3171 45x70x70', '2016-04-23', 1, 1, '0', '10.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00428, 1, 35, 0, '3105 45x140', '2016-04-23', 1, 1, '0', '9.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00429, 1, 35, 0, '3083 35x110x110', '2016-04-23', 1, 1, '0', '10.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00430, 1, 35, 0, '3109 35x55x55', '2016-04-23', 1, 1, '0', '8.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00431, 1, 35, 0, '3131 45x30x30', '2016-04-23', 1, 1, '0', '8.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00432, 1, 35, 0, '3132 70x30x30', '2016-04-23', 1, 1, '0', '8.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00433, 1, 35, 0, '3133 90x30x30', '2016-04-23', 1, 1, '0', '8.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00434, 1, 35, 0, '3134 120x30x30', '2016-04-23', 1, 1, '0', '10.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00435, 1, 35, 0, '3135 140x30x30', '2016-04-23', 1, 1, '0', '11.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00436, 1, 35, 0, '3136 170x30x30', '2016-04-23', 1, 1, '0', '12.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00437, 1, 35, 0, '3137 220x30x30', '2016-04-23', 1, 1, '0', '13.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00438, 1, 35, 0, '3124 2x4', '2016-04-23', 1, 1, '0', '22.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00439, 1, 35, 0, '3127 2x5', '2016-04-23', 1, 1, '0', '26.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00440, 1, 35, 0, '3128 2x6', '2016-04-23', 1, 1, '0', '29.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00441, 1, 35, 0, '3144 2x4', '2016-04-23', 1, 1, '0', '22.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00442, 1, 35, 0, '3147 2x5', '2016-04-23', 1, 1, '0', '26.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00443, 1, 35, 0, '3148 2x6', '2016-04-23', 1, 1, '0', '29.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00444, 1, 35, 0, '3154 2x4 - 33Â°', '2016-04-23', 1, 1, '0', '29.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00445, 1, 35, 0, '3157 2x5 - 33Â°', '2016-04-23', 1, 1, '0', '34.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00446, 1, 35, 0, '3158 2x6 - 33Â°', '2016-04-23', 1, 1, '0', '36.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00447, 1, 35, 0, '3125 A 3x6', '2016-04-23', 1, 1, '0', '33.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00448, 1, 35, 0, '3316 placa de empatillar 500x140', '2016-04-23', 1, 1, '0', '70.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00449, 1, 35, 0, '3186 4x4 solo tapa', '2016-04-23', 1, 1, '0', '43.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00450, 1, 35, 0, '3187 4x4 con caÃ±o', '2016-04-23', 1, 1, '0', '150.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00451, 1, 35, 0, '3188 5x5 solo tapa', '2016-04-23', 1, 1, '0', '79.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00452, 1, 35, 0, '3189 5x5 con caÃ±o', '2016-04-23', 1, 1, '0', '214.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00453, 1, 35, 0, '3190 6x6 solo tapa ', '2016-04-23', 1, 1, '0', '110.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00454, 1, 35, 0, '3191 6x6 con caÃ±o', '2016-04-23', 1, 1, '0', '252.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00455, 1, 35, 0, 'Soporte Alero 50x30', '2016-04-23', 1, 1, '0', '136.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00456, 1, 35, 0, 'Soporte Alero 70x30', '2016-04-23', 1, 1, '0', '162.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00457, 1, 35, 0, 'Soporte Alero 100x30', '2016-04-23', 1, 1, '0', '287.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00458, 1, 35, 0, 'Escuadra 40x40', '2016-04-23', 1, 1, '0', '94.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00459, 1, 35, 0, 'Escuadra 30x30', '2016-04-23', 1, 1, '0', '69.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00460, 1, 35, 0, 'Escuadra 25x25', '2016-04-23', 1, 1, '0', '48.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00461, 1, 35, 0, 'Escuadra 20x20', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00462, 1, 35, 0, 'Escuadra  15x15', '2016-04-23', 1, 1, '0', '32.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00463, 1, 35, 0, 'Soporte P/maseta/bici/escalera ', '2016-04-23', 1, 1, '0', '37.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00464, 1, 36, 0, 'R 32  Rinconero', '2016-04-23', 1, 1, '0', '11.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00465, 1, 36, 0, 'R 33 Rinconero', '2016-04-23', 1, 1, '0', '12.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00466, 1, 36, 0, 'R 34 Rinconero', '2016-04-23', 1, 1, '0', '11.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00467, 1, 36, 0, 'R34m Rinconero', '2016-04-23', 1, 1, '0', '11.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00468, 1, 36, 0, 'R 34b Rinconero', '2016-04-23', 1, 1, '0', '16.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00469, 1, 36, 0, 'R 35 Rinconero', '2016-04-23', 1, 1, '0', '26.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00470, 1, 36, 0, 'R 35m Rinconero', '2016-04-23', 1, 1, '0', '26.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00471, 1, 36, 0, 'R 80 Contravidrio', '2016-04-23', 1, 1, '0', '8.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00472, 1, 36, 0, 'R 81 Contravidrio', '2016-04-23', 1, 1, '0', '10.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00473, 1, 36, 0, 'R 81m Contravidrio', '2016-04-23', 1, 1, '0', '10.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00474, 1, 36, 0, 'T 30 Tapajunta', '2016-04-23', 1, 1, '0', '11.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00475, 1, 36, 0, 'T36m Tapajunta', '2016-04-23', 1, 1, '0', '12.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00476, 1, 36, 0, 'T37m Tapajunta', '2016-04-23', 1, 1, '0', '9.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00477, 1, 36, 0, 'T 38 Tapajunta', '2016-04-23', 1, 1, '0', '12.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00478, 1, 36, 0, 'T 39 Tapajunta', '2016-04-23', 1, 1, '0', '16.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00479, 1, 36, 0, 'C 72m Contramarco', '2016-04-23', 1, 1, '0', '13.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00480, 1, 36, 0, 'C 73m Contramarco', '2016-04-23', 1, 1, '0', '20.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00481, 1, 36, 0, 'C 74m Contramarco', '2016-04-23', 1, 1, '0', '26.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00482, 1, 36, 0, 'Z 309 Zocalo', '2016-04-23', 1, 1, '0', '14.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00483, 1, 36, 0, 'Z 310 Zocalo', '2016-04-23', 1, 1, '0', '18.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00484, 1, 36, 0, 'Z 310m Zocalo', '2016-04-23', 1, 1, '0', '18.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00485, 1, 36, 0, 'Z 310ma Zocalo', '2016-04-23', 1, 1, '0', '16.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00486, 1, 36, 0, 'Z 311/311 ma Zocalo', '2016-04-23', 1, 1, '0', '17.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00487, 1, 36, 0, 'Z 312 Zocalo', '2016-04-23', 1, 1, '0', '26.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00488, 1, 36, 0, 'Z 312 m Zocalo', '2016-04-23', 1, 1, '0', '26.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00489, 1, 36, 0, 'Z 313 Zocalo', '2016-04-23', 1, 1, '0', '35.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00490, 1, 36, 0, 'Z 313mb Zocalo', '2016-04-23', 1, 1, '0', '35.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00491, 1, 36, 0, 'L 322 Terminacion L', '2016-04-23', 1, 1, '0', '12.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00492, 1, 36, 0, 'L 322m Terminacion L', '2016-04-23', 1, 1, '0', '12.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00493, 1, 36, 0, 'L 323 Terminacion L', '2016-04-23', 1, 1, '0', '17.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00494, 1, 36, 0, 'L 323m Terminacion L', '2016-04-23', 1, 1, '0', '20.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00495, 1, 36, 0, 'L 327 Terminacion L', '2016-04-23', 1, 1, '0', '28.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00496, 1, 36, 0, 'Bt 1015 Bombe-Cuadros', '2016-04-23', 1, 1, '0', '12.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00497, 1, 36, 0, 'Bt 2045 c Bombe-Cuadros', '2016-04-23', 1, 1, '0', '29.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00498, 1, 36, 0, 'Bt 1520 Batea-Cuadros', '2016-04-23', 1, 1, '0', '12.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00499, 1, 36, 0, 'Bt 2570 Batea-Cuadros', '2016-04-23', 1, 1, '0', '0.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00500, 1, 36, 0, 'G 3128 m Guardasilla', '2016-04-23', 1, 1, '0', '36.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00501, 1, 36, 0, 'G 3129 m Guardasilla', '2016-04-23', 1, 1, '0', '46.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00502, 1, 36, 0, 'G 3127 m Guardasilla', '2016-04-23', 1, 1, '0', '14.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00503, 1, 36, 0, 'Mc 0620 Media CaÃ±a', '2016-04-23', 1, 1, '0', '5.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00504, 1, 40, 0, 'Deck Guayubira Por Mt2 ', '2016-04-23', 1, 1, '0', '480.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00505, 1, 40, 0, 'Deck Grapia Por Mt2 ', '2016-04-23', 1, 1, '0', '650.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00506, 1, 40, 0, 'Deck Saligna Por Mt2 ', '2016-04-23', 1, 1, '0', '185.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00507, 1, 40, 0, 'Deck Lapacho Por Mt2 ', '2016-04-23', 1, 1, '0', '1100.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00508, 1, 40, 0, 'Deck Grandis Por Mt2 ', '2016-04-23', 1, 1, '0', '320.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00509, 1, 40, 0, 'Piso de grandis de 1x4x0.90 Por Mt2 ', '2016-04-23', 1, 1, '0', '320.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00510, 1, 40, 0, 'Deck Incienso Por Mt2 ', '2016-04-23', 1, 1, '0', '1100.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00511, 1, 40, 0, 'Pisos tipo parquet Grandis Por Mt2 ', '2016-04-23', 1, 1, '0', '320.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00512, 1, 40, 0, 'Pisos tipo parquet Lapacho Por Mt2 ', '2016-04-23', 1, 1, '0', '1050.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00513, 1, 41, 0, 'Machimbre Pino 1 Por Mt2 ', '2016-04-23', 1, 1, '0', '155.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00514, 1, 41, 0, 'Machimbre Para cabania Por Mt2 ', '2016-04-23', 1, 1, '0', '170.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00515, 1, 41, 0, 'Machimbre Pino 1/2x3 Por Mt2 ', '2016-04-23', 1, 1, '0', '65.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00516, 1, 41, 0, 'Machimbre Pino 1/2x4, 5 Por Mt2 ', '2016-04-23', 1, 1, '0', '70.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00517, 1, 41, 0, 'Machimbre Pino 1/2x6 Por Mt2 ', '2016-04-23', 1, 1, '0', '85.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00518, 1, 41, 0, 'Machimbre Paraiso 1/2 Por Mt2 ', '2016-04-23', 1, 1, '0', '260.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00519, 1, 41, 0, 'Machimbre Pino Parana sin nudo 1/2x5 Por Mt2 ', '2016-04-23', 1, 1, '0', '185.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00520, 1, 37, 64, 'Saligna Tabla 1 x 4 Bruto Por Mtl', '2016-04-23', 1, 1, '0', '11.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00521, 1, 37, 64, 'Saligna Tabla 1 x 4 Cepillado Por Mtl', '2016-04-23', 1, 1, '0', '14.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00522, 1, 37, 64, ' Saligna Tabla 1 x 5 Bruto Por Mtl', '2016-04-23', 1, 1, '0', '13.75', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00523, 1, 37, 64, 'Saligna Tabla de 1 x 5 Cepillado Por Mtl', '2016-04-23', 1, 1, '0', '17.50', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00524, 1, 37, 64, 'Saligna Tabla 1 x 6 Bruto Por Mtl', '2016-04-23', 1, 1, '0', '16.50', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00525, 1, 37, 64, 'Saligna Tabla de 1 x 6 Cepillado Por Mtl', '2016-04-23', 1, 1, '0', '21.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00526, 1, 37, 64, 'Saligna Tabla de 1" Bruto Por Mt2', '2016-04-23', 1, 1, '0', '110.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00527, 1, 37, 64, 'Saligna Tabla de 1" Cepillado Por Mt2', '2016-04-23', 1, 1, '0', '140.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00528, 1, 37, 65, 'Saligna Entablonado 1/2 Bruto Por Mt2', '2016-04-23', 1, 1, '0', '55.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00529, 1, 37, 65, 'Saligna Entablonado 1/2 Cepillado Por Mt2', '2016-04-23', 1, 1, '0', '60.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00530, 1, 37, 66, 'Saligna Tirante de 2 x 6 Bruto Por Mtl', '2016-04-23', 1, 1, '0', '36.25', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00531, 1, 37, 66, 'Saligna Tirante de 2 x 6 Cepillado Por Mtl', '2016-04-23', 1, 1, '0', '40.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00532, 1, 37, 67, 'Saligna Liston de 1 x 1 Bruto Por Mtl', '2016-04-23', 1, 1, '0', '4.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00533, 1, 37, 67, 'Saligna Liston de 1 x 1 Cepillado Por Mtl', '2016-04-23', 1, 1, '0', '6.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00534, 1, 37, 67, 'Saligna Liston de 2 x 1 Bruto Por Mtl', '2016-04-23', 1, 1, '0', '7.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00535, 1, 37, 67, 'Saligna Liston de 2 x 1 Cepillado Por Mtl', '2016-04-23', 1, 1, '0', '9.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00536, 1, 37, 67, 'Saligna Liston de 2 x 2 Bruto Por Mtl', '2016-04-23', 1, 1, '0', '12.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00537, 1, 37, 67, 'Saligna Liston de 2 x 2 Cepillado Por Mtl', '2016-04-23', 1, 1, '0', '15.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00538, 1, 37, 66, 'Saligna Tirante de 3 x 3 Bruto Por Mtl', '2016-04-23', 1, 1, '0', '25.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00539, 1, 37, 66, 'Saligna Tirante de 3 x 3 Cepillado Por Mtl', '2016-04-23', 1, 1, '0', '30.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00540, 1, 37, 67, 'Saligna Liston Chanfel de 1" Bruto Por Mtl', '2016-04-23', 1, 1, '0', '3.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00541, 1, 37, 67, 'Saligna Liston Chanfel de 1" Cepillado Por Mtl', '2016-04-23', 1, 1, '0', '5.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00542, 1, 37, 66, 'Saligna Tirante 1 1/2 x 3 Bruto Por Mtl', '2016-04-23', 1, 1, '0', '15.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00543, 1, 37, 66, 'Saligna Tirante 1 1/2 x 3 Cepillado Por Mtl', '2016-04-23', 1, 1, '0', '18.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00544, 1, 38, 0, 'flejes de pino Cada uno', '2016-04-23', 1, 1, '0', '20.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00545, 1, 38, 0, 'flejes de grapia Cada uno', '2016-04-23', 1, 1, '0', '30.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00546, 1, 38, 0, 'taparrollo c/machimbre Por Mtl', '2016-04-23', 1, 1, '0', '150.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00547, 1, 38, 0, 'taparrollo c/terciado Por Mtl', '2016-04-23', 1, 1, '0', '150.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00548, 1, 38, 0, 'caballete  Cada uno', '2016-04-23', 1, 1, '0', '80.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00549, 1, 38, 0, 'estacas 1 x 1 Cada uno', '2016-04-23', 1, 1, '0', '7.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00550, 1, 38, 0, 'estacas 1,1/2 x 1,1/2 Cada uno', '2016-04-23', 1, 1, '0', '9.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00551, 1, 38, 0, 'cuÃ±as El par', '2016-04-23', 1, 1, '0', '2.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00552, 1, 38, 0, 'Bulin Yesero Por Mtl', '2016-04-23', 1, 1, '0', '2.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00553, 1, 17, 75, 'Pino Finger Tab 30mm x 1,20 x 3,00 pino Cada uno', '2016-04-23', 1, 1, '0', '2800.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00'),
(00554, 1, 17, 76, 'Grandis Finger Tab 30mm x 0,60 x 3,00  Cada uno', '2016-04-23', 1, 1, '0', '1624.00', '0.00', '0', '', '2016-04-23', 1, '0.00', '0.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_categorias`
--

CREATE TABLE IF NOT EXISTS `productos_categorias` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_unicode_ci NOT NULL,
  `activo` int(10) DEFAULT NULL,
  `dolar` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `fechaActualizacion` date NOT NULL,
  `calcular_precio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=42 ;

--
-- Volcado de datos para la tabla `productos_categorias`
--

INSERT INTO `productos_categorias` (`id`, `nombre`, `descripcion`, `activo`, `dolar`, `fechaActualizacion`, `calcular_precio`) VALUES
(1, 'Pino Elioti', 'Pino Elioti', 1, '', '2016-02-01', 1),
(2, 'Pino Parana', 'Vigas Largas', 1, '', '2016-02-01', 1),
(3, 'Cedro', 'Cedro', 1, '', '2016-02-01', 0),
(4, 'Marmelero', 'Marmelero', 1, '', '2016-02-01', 0),
(5, 'Virapita', 'Virapita', 0, '', '2016-02-01', 0),
(6, 'Grapia', 'Grapia', 1, '', '2016-02-01', 0),
(7, 'Kiri', 'Kiri', 1, '', '2016-02-01', 0),
(8, 'Paraiso', 'Paraiso', 1, '', '2016-02-01', 0),
(9, 'Curupay', 'Curupay', 1, '', '2016-02-01', 0),
(10, 'Viraro', 'Viraro', 1, '', '2016-02-01', 0),
(11, 'Guayuvira', 'Guayuvira', 1, '', '2016-02-01', 0),
(12, 'Lapacho', 'Lapacho', 1, '', '2016-02-01', 0),
(13, 'Grabilea', 'Grabilea', 1, '', '2016-02-01', 0),
(14, 'Incienso', 'Incienso', 1, '', '2016-02-01', 0),
(15, 'Timbo', 'Timbo', 0, '', '2016-02-01', 0),
(16, 'Guaica', 'Guaica', 1, '', '2016-02-01', 0),
(17, 'Finger / Tablero', 'Finger /  Tablero', 1, '', '2016-02-01', 0),
(18, 'Venenos', 'Venenos', 1, '', '2016-02-01', 0),
(19, 'Pegamentos', 'Pegamentos', 1, '', '2016-02-01', 0),
(20, 'Pinturas', 'Pinturas', 1, '', '2016-02-01', 0),
(21, 'Clavos', 'Clavos', 1, '', '2016-02-01', 0),
(22, 'Alambres', 'Alambres', 1, '', '2016-02-01', 0),
(23, 'Tornillos', '', 1, '', '2016-02-01', 0),
(24, 'Columnas', 'Columnas', 1, '', '2016-02-01', 0),
(25, 'Placas', 'Placas', 1, '', '2016-02-01', 0),
(26, 'Aislacion', 'Aislacion', 1, '', '2016-02-01', 0),
(27, 'Tintas', 'Tintas', 1, '', '2016-02-01', 0),
(28, 'Masillas', 'Masillas', 1, '', '2016-02-01', 0),
(29, 'Pinceles', 'Pinceles', 1, '', '2016-02-01', 0),
(30, 'Tarugos', 'tarugos', 1, '', '2016-02-04', 0),
(31, 'Cintas Metricas', 'metros cintas metricas', 1, '', '2016-02-04', 0),
(32, 'Proteccion', '', 1, '', '2016-02-04', 0),
(33, 'Mechas', '', 1, '', '2016-02-04', 0),
(34, 'Herramientas', 'Herramientas', 1, '', '2016-02-04', 0),
(35, 'Herrajes', '', 1, '', '2016-02-04', 0),
(36, 'Molduras', '', 1, '', '2016-02-04', 0),
(37, 'Saligna', '', 1, '', '2016-02-04', 0),
(38, 'Fabricacion', '', 1, '', '2016-02-04', 0),
(39, 'Machimbre', 'Machimbres en general', 1, '', '2016-03-14', 0),
(40, 'Deck', '', 1, '', '2016-04-23', 0),
(41, 'Machimbre', '', 1, '', '2016-04-23', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_categorias_calculo`
--

CREATE TABLE IF NOT EXISTS `productos_categorias_calculo` (
  `idCalculo` int(11) NOT NULL AUTO_INCREMENT,
  `medida` varchar(45) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `iva` decimal(10,2) NOT NULL,
  `ingresosBrutos` decimal(10,2) NOT NULL,
  `flete` decimal(10,2) NOT NULL,
  `fechaModificacion` varchar(45) NOT NULL,
  `idCategoria` int(11) NOT NULL,
  `precio_pie` decimal(10,2) NOT NULL,
  PRIMARY KEY (`idCalculo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `productos_categorias_calculo`
--

INSERT INTO `productos_categorias_calculo` (`idCalculo`, `medida`, `cantidad`, `precio`, `iva`, `ingresosBrutos`, `flete`, `fechaModificacion`, `idCategoria`, `precio_pie`) VALUES
(1, 'pies', 0, '0.00', '0.00', '0.00', '0.00', '2016-03-15', 1, '15.00'),
(2, 'pies', 1000, '12.00', '10.00', '0.00', '0.00', '2016-02-10', 2, '0.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_movimientos`
--

CREATE TABLE IF NOT EXISTS `productos_movimientos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `movimiento` varchar(145) NOT NULL,
  `descripcion` text NOT NULL,
  `activo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `productos_movimientos`
--

INSERT INTO `productos_movimientos` (`id`, `movimiento`, `descripcion`, `activo`) VALUES
(1, 'Alta Producto', 'alta de stock del producto', 1),
(2, 'Baja Stock', 'baja de stock por factura', 1),
(3, 'Utilidad', 'Utilidad', 1),
(4, 'Descuento 1', 'Modificacion Descuento 1', 1),
(5, 'Descuento 2', 'Modificacion Descuento 2', 1),
(6, 'Descuento 3', 'Modificacion Descuento 3', 1),
(7, 'Precio', 'Modificacion Precio', 1),
(8, 'iva', 'modificacion iva', 1),
(9, 'PRODUCTO', 'producto modificado ', 1),
(10, 'excel', 'actualizado via excel', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_movimientos_log`
--

CREATE TABLE IF NOT EXISTS `productos_movimientos_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idProductoMovimiento` int(10) unsigned NOT NULL,
  `descripcion` text NOT NULL,
  `idUsuario` int(10) unsigned NOT NULL,
  `idCategoria` int(10) unsigned DEFAULT NULL,
  `idSubCategoria` int(10) unsigned DEFAULT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `MovimientoTipo` int(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='almacena movimientos realizados masivamente sobre los productos' AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `productos_movimientos_log`
--

INSERT INTO `productos_movimientos_log` (`id`, `idProductoMovimiento`, `descripcion`, `idUsuario`, `idCategoria`, `idSubCategoria`, `fecha`, `hora`, `MovimientoTipo`) VALUES
(1, 10, 'Modificacion via excel', 1, 30, 630, '2016-02-04', '18:20:00', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_stock`
--

CREATE TABLE IF NOT EXISTS `productos_stock` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idProducto` int(10) unsigned NOT NULL,
  `comentario` text,
  `idMovimiento` int(10) unsigned NOT NULL,
  `cantidad` decimal(10,0) NOT NULL,
  `fechaCarga` date NOT NULL,
  `idUsuario` int(10) unsigned NOT NULL,
  `precio` varchar(43) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=464 ;

--
-- Volcado de datos para la tabla `productos_stock`
--

INSERT INTO `productos_stock` (`id`, `idProducto`, `comentario`, `idMovimiento`, `cantidad`, `fechaCarga`, `idUsuario`, `precio`) VALUES
(1, 66, 'este es el primer stock', 1, '103', '0000-00-00', 0, '10.20'),
(2, 67, '', 1, '600', '0000-00-00', 0, '30.00'),
(3, 67, 'segunda alta', 1, '860', '0000-00-00', 0, '35.00'),
(7, 67, '', 1, '2000', '0000-00-00', 0, '10.56'),
(15, 66, 'PROCESO DE FACTURA', 2, '-100', '2011-04-08', 0, '259.00'),
(14, 67, 'PROCESO DE FACTURA', 2, '-100', '2011-04-08', 0, '100.00'),
(16, 66, 'PROCESO DE FACTURA', 2, '-23', '2011-04-08', 0, '74.415'),
(17, 67, 'PROCESO DE FACTURA', 2, '-95', '2011-04-08', 0, '99.946'),
(18, 73, 'PROCESO DE FACTURA', 2, '-30', '2011-04-08', 0, '55.055'),
(19, 71, 'PROCESO DE FACTURA', 2, '-2', '2011-04-08', 0, '118.58'),
(24, 73, 'PROCESO DE FACTURA', 2, '-56', '2011-04-15', 0, '55.055'),
(53, 2222, 'ALTA DEBO', 1, '100', '0000-00-00', 0, '11.22'),
(131, 16607, 'PROCESO DE FACTURA', 2, '-1', '2012-08-04', 0, '16.4'),
(132, 12233, 'PROCESO DE FACTURA', 2, '-2', '2012-08-04', 0, '32.68'),
(136, 192, 'PROCESO DE FACTURA', 2, '-1', '2012-09-20', 0, '214.23'),
(135, 12231, 'PROCESO DE FACTURA', 2, '-1', '2012-09-20', 0, '28.2'),
(134, 13636, 'PROCESO DE FACTURA', 2, '-1', '2012-09-20', 0, '45.28'),
(133, 13459, 'PROCESO DE FACTURA', 2, '-1', '2012-08-04', 0, '2835'),
(77, 25, 'PROCESO DE FACTURA', 2, '-2', '2011-12-14', 0, '5471.04'),
(145, 12240, 'PROCESO DE FACTURA', 2, '-2', '2013-04-01', 0, '91.75'),
(144, 12236, 'PROCESO DE FACTURA', 2, '-1', '2013-04-01', 0, '16.69'),
(94, 5308, 'PROCESO DE FACTURA', 2, '-12', '2012-03-27', 0, '11.72'),
(95, 5362, 'PROCESO DE FACTURA', 2, '-3', '2012-03-27', 0, '103.45'),
(96, 5298, 'PROCESO DE FACTURA', 2, '-4', '2012-03-27', 0, '101.52'),
(97, 5309, 'PROCESO DE FACTURA', 2, '-5', '2012-03-27', 0, '17.5'),
(98, 5347, 'PROCESO DE FACTURA', 2, '-1', '2012-03-27', 0, '21.43'),
(99, 5299, 'PROCESO DE FACTURA', 2, '-2', '2012-03-27', 0, '154.78'),
(100, 5340, 'PROCESO DE FACTURA', 2, '-1', '2012-03-27', 0, '26.12'),
(101, 5183, 'PROCESO DE FACTURA', 2, '-1', '2012-03-27', 0, '7.19'),
(102, 5325, 'PROCESO DE FACTURA', 2, '-3', '2012-03-27', 0, '22.74'),
(103, 5339, 'PROCESO DE FACTURA', 2, '-3', '2012-03-27', 0, '28.48'),
(104, 5338, 'PROCESO DE FACTURA', 2, '-1', '2012-03-27', 0, '21.84'),
(105, 5182, 'PROCESO DE FACTURA', 2, '-3', '2012-03-27', 0, '5.79'),
(106, 5185, 'PROCESO DE FACTURA', 2, '-1', '2012-03-27', 0, '14.35'),
(319, 1543, 'PROCESO DE FACTURA', 2, '-1', '2014-10-16', 0, '1091.24'),
(320, 1544, 'PROCESO DE FACTURA', 2, '-1', '2014-10-16', 0, '1179.85'),
(321, 1542, 'PROCESO DE FACTURA', 2, '-1', '2014-10-16', 0, '1438.17'),
(432, 108, 'PROCESO DE FACTURA', 2, '-33', '2015-12-12', 0, '25'),
(431, 206, 'PROCESO DE FACTURA', 2, '-101', '2015-12-12', 0, '285'),
(430, 28, 'PROCESO DE FACTURA', 2, '-5', '2015-12-12', 0, '1.5'),
(410, 15292, 'PROCESO DE FACTURA', 2, '-2', '2015-04-22', 0, '222.69'),
(411, 4773, 'PROCESO DE FACTURA', 2, '-1', '2015-04-22', 0, '104.77'),
(433, 206, 'PROCESO DE FACTURA', 2, '-33', '2015-12-12', 0, '285'),
(434, 45, 'PROCESO DE FACTURA', 2, '-9', '2015-12-12', 0, '584.43'),
(435, 206, 'PROCESO DE FACTURA', 2, '-100', '2015-12-12', 0, '285'),
(436, 46, 'PROCESO DE FACTURA', 2, '-100', '2015-12-12', 0, '0'),
(437, 47, 'PROCESO DE FACTURA', 2, '-1', '2016-01-06', 0, '420'),
(438, 285, 'PROCESO DE FACTURA', 2, '-1', '2016-02-04', 0, '155'),
(439, 308, 'PROCESO DE FACTURA', 2, '-3', '2016-02-04', 0, '415'),
(440, 8, 'PROCESO DE FACTURA', 2, '-5', '2016-04-02', 0, '84.21'),
(441, 312, 'PROCESO DE FACTURA', 2, '-1', '2016-04-02', 0, '65'),
(442, 412, 'PROCESO DE FACTURA', 2, '-1', '2016-04-02', 0, '18'),
(443, 412, 'PROCESO DE FACTURA', 2, '-1', '2016-04-02', 0, '18'),
(444, 412, 'PROCESO DE FACTURA', 2, '-1', '2016-04-02', 0, '18'),
(445, 461, 'PROCESO DE FACTURA', 2, '-1', '2016-04-02', 0, '26'),
(446, 518, 'PROCESO DE FACTURA', 2, '-1', '2016-04-23', 0, '260'),
(447, 522, 'PROCESO DE FACTURA', 2, '-1', '2016-04-23', 0, '13.75'),
(448, 518, 'PROCESO DE FACTURA', 2, '-2', '2016-04-23', 0, '260'),
(449, 519, 'PROCESO DE FACTURA', 2, '-2', '2016-04-23', 0, '185'),
(450, 514, 'PROCESO DE FACTURA', 2, '-1', '2016-04-23', 0, '170'),
(451, 514, 'PROCESO DE FACTURA', 2, '-1', '2016-04-23', 0, '170'),
(452, 514, 'PROCESO DE FACTURA', 2, '-1', '2016-04-23', 0, '170'),
(453, 514, 'PROCESO DE FACTURA', 2, '-1', '2016-04-23', 0, '170'),
(454, 514, 'PROCESO DE FACTURA', 2, '-1', '2016-04-23', 0, '170'),
(455, 514, 'PROCESO DE FACTURA', 2, '-5', '2016-04-23', 0, '170.00'),
(456, 514, 'PROCESO DE FACTURA', 2, '-5', '2016-04-29', 0, '170.00'),
(457, 514, 'PROCESO DE FACTURA', 2, '-2', '2016-04-29', 0, '170.00'),
(458, 514, 'PROCESO DE FACTURA', 2, '-2', '2016-04-29', 0, '170.00'),
(459, 514, 'PROCESO DE FACTURA', 2, '-2', '2016-04-29', 0, '170.00'),
(460, 518, 'PROCESO DE FACTURA', 2, '-1', '2016-04-29', 0, '260.00'),
(461, 518, 'PROCESO DE FACTURA', 2, '-1', '2016-04-29', 0, '260.00'),
(462, 303, 'PROCESO DE FACTURA', 2, '-1', '2016-04-29', 0, '165.00'),
(463, 514, 'PROCESO DE FACTURA', 2, '-1', '2016-04-29', 0, '170.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_subcategorias`
--

CREATE TABLE IF NOT EXISTS `productos_subcategorias` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `idCategoria` int(3) DEFAULT NULL,
  `nombre` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_unicode_ci NOT NULL,
  `activo` int(3) DEFAULT NULL,
  `dolar` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fechaActualizacion` date NOT NULL,
  `precio_pie` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=82 ;

--
-- Volcado de datos para la tabla `productos_subcategorias`
--

INSERT INTO `productos_subcategorias` (`id`, `idCategoria`, `nombre`, `descripcion`, `activo`, `dolar`, `fechaActualizacion`, `precio_pie`) VALUES
(1, 1, 'Listones', 'Listones', 1, '', '2016-02-01', '16.00'),
(2, 1, 'Tabla Angosta', 'Tabla Angosta', 1, '', '2016-02-01', '16.00'),
(3, 1, 'Tabla Ancha', 'Tabla Ancha', 1, '', '2016-02-01', '22.00'),
(4, 1, 'Cabios', 'Cabios', 1, '', '2016-02-01', '15.00'),
(5, 1, 'Cabios Largos', 'Cabios Largos', 1, '', '2016-02-01', '17.00'),
(6, 1, 'Tablones', 'Tablones', 1, '', '2016-02-01', '22.00'),
(7, 1, 'Columnas', 'Columnas', 1, '', '2016-02-01', '22.00'),
(8, 1, 'Vigas', 'Vigas', 1, '', '2016-02-01', '22.00'),
(9, 1, 'Vigas Largas', 'Vigas Largas', 1, '', '2016-02-01', '24.00'),
(10, 2, 'Listones', 'Listones', 1, '', '2016-02-01', '0.00'),
(11, 2, 'Tabla Angosta', 'Tabla Angosta', 1, '', '2016-02-01', '0.00'),
(12, 2, 'Cabios', 'Cabios', 1, '', '2016-02-01', '0.00'),
(13, 2, 'Cabios Largos', 'Cabios Largos', 1, '', '2016-02-01', '0.00'),
(14, 2, 'Tablones', 'Tablones', 1, '', '2016-02-01', '0.00'),
(15, 2, 'Columnas', 'Columnas', 1, '', '2016-02-01', '0.00'),
(16, 2, 'Vigas', 'Vigas', 1, '', '2016-02-01', '0.00'),
(17, 2, 'Vigas Largas', 'Vigas Largas', 1, '', '2016-02-01', '0.00'),
(18, 4, 'Cabios', 'Cabios', 1, '', '2016-02-01', '0.00'),
(19, 4, 'Listones', 'Listones', 1, '', '2016-02-01', '0.00'),
(20, 4, 'Columnas', 'Columnas', 1, '', '2016-02-01', '0.00'),
(21, 4, 'Vigas', 'Vigas', 1, '', '2016-02-01', '0.00'),
(23, 5, 'Listones', 'Listones', 1, '', '2016-02-01', '0.00'),
(24, 5, 'Tablones', '', 1, '', '2016-02-01', '0.00'),
(25, 5, 'Cabios', '', 0, '', '2016-02-01', '0.00'),
(26, 6, 'Listones', 'Listones', 1, '', '2016-02-01', '0.00'),
(27, 6, 'Cabios', 'Cabios', 1, '', '2016-02-01', '0.00'),
(28, 6, 'Columnas', '', 1, '', '2016-02-01', '0.00'),
(29, 6, 'Vigas', '', 1, '', '2016-02-01', '0.00'),
(30, 6, 'Tablas', '', 1, '', '2016-02-01', '0.00'),
(31, 7, 'Tablas', '', 1, '', '2016-02-01', '0.00'),
(32, 7, 'Tablones', '', 1, '', '2016-02-01', '0.00'),
(33, 8, 'Tablas', '', 1, '', '2016-02-01', '0.00'),
(34, 8, 'Listones', '', 1, '', '2016-02-01', '0.00'),
(35, 8, 'Cabios', '', 1, '', '2016-02-01', '0.00'),
(36, 8, 'Columnas', '', 1, '', '2016-02-01', '0.00'),
(37, 8, 'Vigas', '', 1, '', '2016-02-01', '0.00'),
(38, 9, 'Tablones', '', 1, '', '2016-02-01', '0.00'),
(39, 10, 'Tablones', '', 1, '', '2016-02-01', '0.00'),
(40, 11, 'Tablas', '', 1, '', '2016-02-01', '0.00'),
(41, 11, 'Tablones', '', 1, '', '2016-02-01', '0.00'),
(42, 11, 'Cabios', '', 1, '', '2016-02-01', '0.00'),
(43, 11, 'Columnas', '', 1, '', '2016-02-01', '0.00'),
(44, 11, 'Vigas', '', 0, '', '2016-02-01', '0.00'),
(45, 12, 'Tablas', '', 1, '', '2016-02-01', '0.00'),
(46, 13, 'Tablas', '', 1, '', '2016-02-01', '0.00'),
(47, 14, 'Tablones', '', 1, '', '2016-02-01', '0.00'),
(48, 15, 'Tablas', '', 0, '', '2016-02-01', '0.00'),
(49, 15, 'Tablones', '', 1, '', '2016-02-01', '0.00'),
(50, 16, 'Tablas', '', 1, '', '2016-02-01', '0.00'),
(51, 17, 'Vigas', '', 1, '', '2016-02-01', '55.00'),
(52, 18, 'Dharma', 'Dharma', 1, '', '2016-02-01', '0.00'),
(53, 18, 'Soltech', 'Soltech', 1, '', '2016-02-01', '0.00'),
(54, 18, 'Kekol', '', 1, '', '2016-02-01', '0.00'),
(55, 18, 'Penta', 'Penta', 1, '', '2016-02-01', '0.00'),
(56, 19, 'Kekol', '', 1, '', '2016-02-01', '0.00'),
(57, 19, 'Fana', 'Fana', 1, '', '2016-02-01', '0.00'),
(58, 20, 'Dharma', '', 1, '', '2016-02-01', '0.00'),
(59, 20, 'Penta', 'Penta', 1, '', '2016-02-01', '0.00'),
(60, 20, 'Brea', '', 1, '', '2016-02-01', '0.00'),
(61, 34, 'Martillos', '', 1, '', '2016-02-04', '0.00'),
(62, 34, 'Tenazas', '', 1, '', '2016-02-04', '0.00'),
(63, 35, 'Mensulas', '', 1, '', '2016-02-04', '0.00'),
(64, 37, 'Tablas', '', 1, '', '2016-02-04', '0.00'),
(65, 37, 'Entablonados', '', 1, '', '2016-02-04', '0.00'),
(66, 37, 'Tirantes', '', 1, '', '2016-02-04', '0.00'),
(67, 37, 'Listones', 'a', 0, '', '2016-02-04', '0.00'),
(69, 39, 'Pino Ellioti', '1/2 x 4 - 5', 1, '', '2016-03-14', '65.00'),
(70, 39, 'Pino Ellioti', '1" x 6"', 1, '', '2016-03-14', '140.00'),
(71, 39, 'Pino Ellioti', 'Tipo cabaña \r\n', 1, '', '2016-03-14', '155.00'),
(72, 39, 'Pino Ellioti', '1/2x6 \r\n', 1, '', '2016-03-14', '80.00'),
(73, 39, 'Paraiso', '1/2 x 4', 1, '', '2016-03-14', '260.00'),
(74, 39, 'Pino Parana', '1/2 x 4 - 5', 1, '', '2016-03-14', '185.00'),
(75, 17, 'Pino finger', '30 mm x 1.20 x 3.00', 1, '', '2016-03-14', '3350.00'),
(76, 17, 'Grandis Finger', '30mm x 60cm x 3.05', 1, '', '2016-03-14', '1624.00'),
(77, 30, 'Escalon', '', 1, '', '2016-04-23', '0.00'),
(78, 30, 'Pasamano', '', 1, '', '2016-04-23', '0.00'),
(79, 30, 'Balustro', '', 1, '', '2016-04-23', '0.00'),
(80, 30, 'Frentin', '', 1, '', '2016-04-23', '0.00'),
(81, 30, 'Columna', '', 1, '', '2016-04-23', '0.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores_categorias`
--

CREATE TABLE IF NOT EXISTS `proveedores_categorias` (
  `idProveedor` int(10) NOT NULL DEFAULT '0',
  `idCategoria` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idProveedor`,`idCategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedores_categorias`
--

INSERT INTO `proveedores_categorias` (`idProveedor`, `idCategoria`) VALUES
(0, 1),
(0, 2),
(0, 3),
(0, 5),
(0, 6),
(0, 7),
(0, 8),
(0, 12),
(0, 13),
(0, 16),
(0, 17),
(0, 18),
(0, 19),
(0, 20),
(0, 21),
(0, 22),
(0, 23),
(0, 24),
(0, 28),
(0, 29),
(0, 31),
(0, 32),
(0, 34),
(0, 35),
(115, 48),
(137, 15),
(137, 40),
(157, 37),
(162, 45),
(162, 47),
(164, 46);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores_subcategorias`
--

CREATE TABLE IF NOT EXISTS `proveedores_subcategorias` (
  `idProveedor` int(10) NOT NULL DEFAULT '0',
  `idSubCategoria` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idProveedor`,`idSubCategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedores_subcategorias`
--

INSERT INTO `proveedores_subcategorias` (`idProveedor`, `idSubCategoria`) VALUES
(0, 1),
(0, 2),
(0, 3),
(0, 4),
(0, 5),
(0, 6),
(0, 7),
(0, 8),
(0, 9),
(0, 12),
(0, 13),
(0, 18),
(0, 19),
(0, 21),
(0, 25),
(0, 32),
(0, 35),
(0, 51),
(0, 58),
(0, 87),
(0, 105),
(0, 107),
(0, 119),
(0, 131),
(0, 152),
(0, 153),
(0, 154),
(0, 255),
(0, 267),
(0, 281),
(0, 292),
(0, 297),
(0, 488),
(0, 504),
(0, 669),
(0, 683),
(0, 688),
(0, 689),
(0, 696),
(0, 701),
(0, 708),
(0, 709),
(0, 720),
(0, 724),
(137, 120),
(137, 151),
(137, 635),
(137, 694),
(149, 704),
(156, 663),
(158, 679),
(160, 702),
(161, 649),
(161, 650),
(161, 685);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincias`
--

CREATE TABLE IF NOT EXISTS `provincias` (
  `idProvincia` int(11) NOT NULL DEFAULT '0',
  `Descripcion` varchar(50) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `Activo` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idProvincia`),
  FULLTEXT KEY `Descripcion` (`Descripcion`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `provincias`
--

INSERT INTO `provincias` (`idProvincia`, `Descripcion`, `Activo`) VALUES
(23, 'Tierra del Fuego', 1),
(0, '-', 1),
(22, 'Santiago del Estero', 1),
(21, 'Santa Fe', 1),
(20, 'Santa Cruz', 1),
(19, 'San Luis', 1),
(18, 'San Juan', 1),
(17, 'Salta', 1),
(16, 'Rio Negro', 1),
(15, 'Neuqu&eacute;n', 1),
(14, 'Misiones', 1),
(13, 'Mendoza', 1),
(12, 'La Rioja', 1),
(11, 'La Pampa', 1),
(10, 'Jujuy', 1),
(9, 'Formosa', 1),
(8, 'Entre R&iacute;os', 1),
(7, 'Corrientes', 1),
(6, 'C&oacute;rdoba', 1),
(5, 'Chubut', 1),
(4, 'Chaco', 1),
(3, 'Catamarca', 1),
(2, 'Capital Federal', 1),
(1, 'Bs. As.', 1),
(24, 'Tucuman', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjetas_credito`
--

CREATE TABLE IF NOT EXISTS `tarjetas_credito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `cuotas` varchar(20) NOT NULL,
  `recargo` varchar(20) NOT NULL,
  `activo` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_facturas`
--

CREATE TABLE IF NOT EXISTS `tipos_facturas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(150) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='movimientos' AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `tipos_facturas`
--

INSERT INTO `tipos_facturas` (`id`, `descripcion`) VALUES
(1, 'Presupuesto'),
(2, 'pago'),
(3, 'agregado'),
(4, 'devolucion'),
(5, 'Factura'),
(6, 'Compra Factura'),
(7, 'Compra Remito');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_pagos`
--

CREATE TABLE IF NOT EXISTS `tipos_pagos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(145) COLLATE latin1_general_ci NOT NULL,
  `descripcion` text COLLATE latin1_general_ci,
  `activo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='tipos_pagos' AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `tipos_pagos`
--

INSERT INTO `tipos_pagos` (`id`, `nombre`, `descripcion`, `activo`) VALUES
(1, 'Efectivo', 'Efectivo', 1),
(2, 'Cheque', 'Cheque', 1),
(3, 'Tarjeta Credito', 'Tarjeta de credito', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `idUsuario` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `user` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `gerarquia` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `nombre`, `apellido`, `telefono`, `email`, `user`, `password`, `gerarquia`) VALUES
(1, 'luciano', 'verni', '46059608', 'lucianotv12@gmail.com', 'lucho', '123', 1),
(18, 'vendedores', 'vendedores', '', '', 'vendedores', 'casaalanis', 0),
(20, 'Cristian', 'Esteban', '011231246546', 'CRISTIAN@gmail.com', 'cristian', '112233', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
