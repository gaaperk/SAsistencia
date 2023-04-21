-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 09, 2023 at 01:05 AM
-- Server version: 5.6.20-log
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbregasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `cestads`
--

CREATE TABLE IF NOT EXISTS `cestads` (
  `NIDESTA` decimal(2,0) NOT NULL DEFAULT '0',
  `CNOMEST` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cestads`
--

INSERT INTO `cestads` (`NIDESTA`, `CNOMEST`) VALUES
('1', 'AGUASCALIENTES'),
('2', 'BAJA CALIFORNIA NORTE'),
('3', 'BAJA CALIFORNIA SUR'),
('9', 'CIUDAD DE MEXICO'),
('15', 'Jalisco'),
('31', 'Zacatecas'),
('33', 'EXTRANJERO'),
('4', 'Campeche'),
('5', 'Chiapas'),
('6', 'Chihuahua'),
('7', 'Coahuila'),
('8', 'Colima'),
('10', 'Durango'),
('11', 'Estado de México'),
('12', 'Guanajuato'),
('13', 'Guerrero'),
('14', 'Hidalgo'),
('16', 'Michoacán'),
('17', 'Morelos'),
('18', 'Nayarit'),
('19', 'Nuevo León'),
('20', 'Oxaca'),
('21', 'Puebla'),
('22', 'Queretaro'),
('23', 'San Luis Potosi'),
('24', 'Sinaloa'),
('25', 'Sonara'),
('26', 'Tabasco'),
('27', 'Tamaulipas'),
('28', 'Tlaxcala'),
('29', 'Veracruz'),
('30', 'Yucatan');

-- --------------------------------------------------------

--
-- Table structure for table `chorars`
--

CREATE TABLE IF NOT EXISTS `chorars` (
  `NIDHORA` decimal(5,0) NOT NULL DEFAULT '0',
  `CDESCHR` varchar(250) DEFAULT NULL,
  `CSTATUS` char(1) DEFAULT NULL,
  `CUSUINS` char(10) DEFAULT NULL,
  `DFECINS` date DEFAULT NULL,
  `CUSUMOD` char(10) DEFAULT NULL,
  `DFECMOD` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chorars`
--

INSERT INTO `chorars` (`NIDHORA`, `CDESCHR`, `CSTATUS`, `CUSUINS`, `DFECINS`, `CUSUMOD`, `DFECMOD`) VALUES
('1', 'DE 07:00 A 15:00 HORAS', 'A', NULL, NULL, NULL, NULL),
('2', 'DE 08:00 A 16:00 HORAS', 'A', NULL, NULL, NULL, NULL),
('3', 'DE 14:00 A 22:00 HORAS', 'A', NULL, NULL, NULL, NULL),
('4', 'Horario de lunes, miercoles y viernes de 12:30 a 17:30 horas', 'D', '006609', '2020-04-11', 'User', '2020-04-11'),
('6', 'el chido', 'A', '3', '2020-04-11', '3', '2020-04-11'),
('5', 'el chido', 'A', '3', '2020-04-11', '3', '2020-04-11'),
('7', 'nada', 'D', '3', '2020-04-17', '3', '2020-04-17'),
('8', 'Horario de lunes a viernes', 'A', '3', '2020-04-22', '3', '2020-04-22'),
('9', 'horario de lunes y ,martes de 12:30 a 17:30 , los jueves de 11:00\na 13:00 y los viernes de 09:00 a 15:00 hrs', 'D', '3', '2020-04-23', '3', '2020-04-23'),
('10', 'horario de lunes a viernes de 10:30 a 22 hrs', 'A', '3', '2020-04-27', '3', '2020-04-27'),
('11', 'horario de 12 a 9 pm', 'A', '3', '2020-04-27', '3', '2020-04-27'),
('12', 'horario entero de lunes a viernes', 'A', '3', '2020-05-12', '3', '2020-05-12'),
('13', 'horario de lunes a viernes de 15 hrs a 22 hrs', 'A', '3', '2020-05-12', '3', '2020-05-12'),
('14', 'horario', 'A', '3', '2020-05-12', '3', '2020-05-12'),
('15', 'horario', 'A', '3', '2020-05-12', '3', '2020-05-12'),
('16', 'Horario de de lunes a viernes hardcore', 'A', '3', '2020-06-26', '3', '2020-06-26'),
('17', 'Horario de de lunes a viernes hardcore', 'A', '3', '2020-06-26', '3', '2020-06-26'),
('18', 'Horario de de lunes a viernes hardcore', 'A', '3', '2020-06-26', '3', '2020-06-26'),
('19', 'horario de lunes a viernes de 8 am a 3 pm', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('20', 'horario de 3 pm a 9 pm', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('21', 'horario mixto', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('22', 'horario de lunes a viernes de 8 am a 3 pm', 'A', '3', '2020-07-02', '3', '2020-07-02');

-- --------------------------------------------------------

--
-- Table structure for table `cjusasi`
--

CREATE TABLE IF NOT EXISTS `cjusasi` (
  `NIDTPJU` decimal(2,0) NOT NULL DEFAULT '0',
  `CDESJUS` varchar(100) DEFAULT NULL,
  `CSTATUS` char(1) DEFAULT NULL,
  `CUSUINS` char(10) DEFAULT NULL,
  `DFECINS` date DEFAULT NULL,
  `CUSUMOD` char(10) DEFAULT NULL,
  `DFECMOD` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cjusasi`
--

INSERT INTO `cjusasi` (`NIDTPJU`, `CDESJUS`, `CSTATUS`, `CUSUINS`, `DFECINS`, `CUSUMOD`, `DFECMOD`) VALUES
('1', 'justificante medico', 'A', '3', '2020-06-15', '3', '2020-06-15'),
('2', 'justificante por siniestro en instalaciones', 'D', '3', '2020-06-15', '4', '2020-06-14'),
('3', 'día laboral', 'A', '3', '2020-06-15', '3', '2020-06-15'),
('4', 'junta en zacatenco', 'D', '3', '2020-06-15', '3', '2020-06-15'),
('5', 'permiso por seminario', 'A', '3', '2020-06-15', '3', '2020-06-15'),
('6', 'acuerdo sindical', 'D', '3', '2020-06-15', '4', '2020-06-15'),
('7', 'permizo por viaje escolar', 'D', '3', '2020-06-15', '4', '2020-06-15'),
('8', 'permizo por visita directiva', 'A', '3', '2020-06-15', '3', '2020-06-15');

-- --------------------------------------------------------

--
-- Table structure for table `cmunics`
--

CREATE TABLE IF NOT EXISTS `cmunics` (
  `NIDESTA` decimal(2,0) NOT NULL DEFAULT '0',
  `NIDMUNI` decimal(4,0) NOT NULL DEFAULT '0',
  `CNOMMUN` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cmunics`
--

INSERT INTO `cmunics` (`NIDESTA`, `NIDMUNI`, `CNOMMUN`) VALUES
('9', '1', 'ALVARO OBREGON'),
('9', '2', 'AZCAPOTZALCO'),
('9', '7', 'GUSTAVO A. MADERO'),
('9', '16', 'XOCHIMILCO'),
('15', '115', 'TLALNEPANTLA DE BAZ'),
('9', '3', 'Benito Juárez'),
('9', '4', 'Coyoacan'),
('9', '5', 'Cuajimalpa de Morelos'),
('9', '6', 'Cuauhtémoc'),
('9', '8', 'Iztacalco'),
('9', '9', 'Iztapalapa'),
('9', '10', 'La Magadalena Contreras'),
('9', '11', 'Miguel Hidalgo'),
('9', '12', 'Milpa Alta'),
('9', '13', 'Tláhuac'),
('9', '14', 'Tlalpan'),
('9', '15', 'Venustiano Carranza');

-- --------------------------------------------------------

--
-- Table structure for table `credenciales`
--

CREATE TABLE IF NOT EXISTS `credenciales` (
  `id_Credenciales` int(11) NOT NULL,
  `CCVEEMP` char(6) NOT NULL,
  `Usuario` varchar(45) NOT NULL DEFAULT '',
  `Pass` varchar(45) NOT NULL DEFAULT '',
  `Correo` varchar(45) DEFAULT NULL,
  `ModAces` varchar(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `credenciales`
--

INSERT INTO `credenciales` (`id_Credenciales`, `CCVEEMP`, `Usuario`, `Pass`, `Correo`, `ModAces`) VALUES
(1, '6609', 'User', '123', 'fff', 'Admin'),
(2, '6610', 'kevin', '123', 'BKevin@', 'NAdmin'),
(3, '6613', 'Gaaperk', '123', 'final_scribe@hotmail.com', 'Admin'),
(4, '6614', 'Brau', '123455', 'braulio@gmail.com', 'NAdmin'),
(5, '6615', 'OsPe', '123', 'ospe@correo.com', 'NAdmin'),
(6, '6616', 'Her', '123', 'Hernandez@correo.com', 'NAdmin'),
(7, '6617', 'a1', '123', 'arf', 'NAdmin'),
(8, '6618', 'a2', '123', 'arf1', 'NAdmin'),
(9, '6619', 'a3', '123', 'arf2', 'NAdmin'),
(10, '6620', 'a4', '123', 'arf3', 'NAdmin'),
(11, '6621', 'a5', '123', 'arf5', 'NAdmin'),
(12, '6622', 'ar6', '123', 'arf6', 'NAdmin'),
(14, '6623', 'ar7', '123', 'arf7', 'NAdmin'),
(15, '6624', 'ar8', '123', 'arf8', 'NAdmin'),
(16, '6625', 'ar9', '123', 'arf9', 'NAdmin'),
(17, '6626', 'ar10', '123', 'arf10', 'NAdmin'),
(27, '6625', 'ar9', '123', 'arf9', 'NAdmin'),
(29, '6625', 'ar9', '123', 'arf9', 'NAdmin'),
(28, '6626', 'ar10', '123', 'arf10', 'NAdmin'),
(18, '6627', 'ar11', '123', 'art11', 'NAdmin'),
(19, '6628', 'ar12', '123', 'arf12', 'NAdmin'),
(20, '6629', 'ar13', '123', 'arf12', 'NAdmin'),
(21, '6630', 'ar14', '123', 'arf14', 'NAdmin'),
(22, '6631', 'ar15', '123', 'arf15', 'NAdmin'),
(23, '6632', 'ar16', '123', 'arf16', 'NAdmin'),
(24, '6633', 'ar17', '123', 'arf17', 'NAdmin'),
(25, '6634', 'ar18', '123', 'arf18', 'NAdmin'),
(30, '6645', 'Luis', '123', 'luis@.com', 'NAdmin'),
(31, '6646', 'Final', 'root', 'final_scribe', 'Admin'),
(32, '6647', 'zetch', '123', 'zetch', 'Admin'),
(33, '6648', 'etezech', '123', 'zetchotmail', 'NAdmin'),
(34, '6649', 'guspo', '123', 'guspo', 'NAdmin'),
(35, '6650', 'guspo2', '123', 'guspo', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `creglas`
--

CREATE TABLE IF NOT EXISTS `creglas` (
  `NIDREGL` decimal(2,0) NOT NULL DEFAULT '0',
  `CDESREG` varchar(35) DEFAULT NULL,
  `NVALRGL` decimal(3,0) DEFAULT NULL,
  `CSTATUS` char(1) DEFAULT NULL,
  `CUSUINS` char(10) DEFAULT NULL,
  `DFECINS` date DEFAULT NULL,
  `CUSUMOD` char(10) DEFAULT NULL,
  `DFECMOD` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `creglas`
--

INSERT INTO `creglas` (`NIDREGL`, `CDESREG`, `NVALRGL`, `CSTATUS`, `CUSUINS`, `DFECINS`, `CUSUMOD`, `DFECMOD`) VALUES
('1', 'RETARDO MENOR', '11', 'A', NULL, NULL, NULL, NULL),
('2', 'RETARDO MAYOR', '21', 'A', NULL, NULL, NULL, NULL),
('3', 'FALTA POR LLEGAR TARDE', '31', 'A', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ddatemp`
--

CREATE TABLE IF NOT EXISTS `ddatemp` (
  `CCVEEMP` char(6) NOT NULL DEFAULT '',
  `CNOMBRE` varchar(35) NOT NULL,
  `CAPEUNO` varchar(35) DEFAULT NULL,
  `CAPEDOS` varchar(35) DEFAULT NULL,
  `CCURPEM` char(18) DEFAULT NULL,
  `DFECING` date DEFAULT NULL,
  `CNMCALL` varchar(35) DEFAULT NULL,
  `CNUMEXT` varchar(15) DEFAULT NULL,
  `CNUMINT` varchar(15) DEFAULT NULL,
  `CCOLONI` varchar(50) DEFAULT NULL,
  `CCODPOS` char(5) DEFAULT NULL,
  `NIDESTA` decimal(2,0) DEFAULT NULL,
  `NIDMUNI` decimal(4,0) DEFAULT NULL,
  `CSTATUS` char(1) DEFAULT NULL,
  `CUSUINS` char(10) DEFAULT NULL,
  `DFECINS` date DEFAULT NULL,
  `CUSUMOD` char(10) DEFAULT NULL,
  `DFECMOD` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ddatemp`
--

INSERT INTO `ddatemp` (`CCVEEMP`, `CNOMBRE`, `CAPEUNO`, `CAPEDOS`, `CCURPEM`, `DFECING`, `CNMCALL`, `CNUMEXT`, `CNUMINT`, `CCOLONI`, `CCODPOS`, `NIDESTA`, `NIDMUNI`, `CSTATUS`, `CUSUINS`, `DFECINS`, `CUSUMOD`, `DFECMOD`) VALUES
('6614', 'Braulio David', 'García', 'Velázquez', 'gar', '2020-04-02', 'republica', '5', '5B', 'centro', '526', '9', '11', 'A', '0', '2020-04-02', '4', '2020-07-02'),
('6613', 'Carlos Fernando', 'Balbuena', 'Torres', 'Batc', '2020-04-02', 'Yul', '5', '5', 'Lomas', '5', '9', '14', 'A', '0', '2020-04-02', '0', '2020-06-15'),
('6615', 'Oscar', 'Perez', 'Hernandez', 'OPH', '2020-04-11', 'corregidora', '8', '187', 'centro', '5812', '9', '3', 'A', '6613', '2020-04-11', '0', '2020-04-27'),
('6610', 'Brian Kevin', 'Antonio', 'Cisneros', 'ACBK', '2020-03-30', 'ajusco', '8', '50b', 'caminero', '777', '11', '14', 'A', '006609', '2020-03-30', '0', '2020-04-27'),
('6609', 'JOSE MARIO', 'RODRIGUEZ', 'APARICIO', 'ROAM680524HDFDPR02', '2019-05-16', 'TRES', '39', 'S/N', 'PROGRESO NACIONAL', '07720', '9', '7', 'A', NULL, NULL, NULL, NULL),
('6616', 'Hernandez', 'Perez', 'Jimenez', 'HPJ', '2020-04-11', 'correg', '878', '9b', 'centro', '1488', '9', '3', 'A', '3', '2020-04-11', '1', '2020-06-26'),
('6617', 'Alan', 'Rosales', 'Jimenez', 'ALRJ', '2020-06-26', 'Luz Saviñon', '0', '0', 'Anahuac', '2789', '9', '1', 'A', '1', '2020-06-26', '1', '2020-06-26'),
('6618', 'Carlos', 'Vallarta', 'Gomez', 'CAVG', '2020-06-26', 'Valle Gomez', '0', '0', 'Del Aro', '1234', '9', '3', 'A', '1', '2020-06-26', '1', '2020-06-26'),
('6619', 'Alicia', 'Villarreal', 'Xerez', 'ALVX', '2020-06-26', 'Apodaca', '0', '0', 'Misterios', '4500', '9', '1', 'A', '1', '2020-06-26', '1', '2020-06-26'),
('6620', 'Luis', 'Perez', 'Enriquez', 'LUPE', '2020-06-26', 'Ruiz Cortines', '0', '2', 'Narvarte', '5000', '9', '3', 'A', '1', '2020-06-26', '1', '2020-06-26'),
('6621', 'Angel', 'Villegas', 'Lopez', 'ANVL', '2020-06-26', 'Neza', '201', '0', 'Pantitlan', '1255', '9', '8', 'A', '1', '2020-06-26', '1', '2020-06-26'),
('6622', 'Roberto', 'Madrazo', 'Perez', 'ROMP', '2020-06-26', 'Milenio', '133', '0', 'Jalisco', '32567', '11', '8', 'A', '1', '2020-06-26', '1', '2020-06-26'),
('6623', 'Braulio', 'Martinez', 'Saavedra', 'MASB', '2020-06-26', 'Rep. Congo', '55', '0', 'Centro', '1800', '9', '6', 'A', '1', '2020-06-26', '1', '2020-06-26'),
('6624', 'Nadia', 'Del Angel', 'Ortiz', 'DEON', '2020-06-26', 'Sinaloa', '45', '0', 'Centro', '2000', '9', '6', 'A', '1', '2020-06-26', '1', '2020-06-26'),
('6625', 'Monica', 'Del Monte', 'Castillo', 'DECA', '2020-06-26', 'Honduras', '0', '0', 'Centro', '2000', '9', '6', 'A', '1', '2020-06-26', '1', '2020-06-26'),
('6626', 'Raul', 'Gutierrez', 'Montes', 'GUMOR', '2020-06-26', 'San Crispin', '20', '0', 'Guelatao', '8000', '9', '7', 'A', '1', '2020-06-26', '1', '2020-06-26'),
('6627', 'Pedro', 'Sanchez', 'Ortega', 'SAOP', '2020-06-26', 'Miguel Hidalgo', '157', '0', 'Buenavista', '3800', '9', '6', 'A', '1', '2020-06-26', '1', '2020-06-26'),
('6628', 'Estanislao', 'Valdes', 'Valdes', 'VAVE', '2020-06-26', 'Flor', '200', '0', 'Benito Juarez', '57000', '11', '6', 'A', '1', '2020-06-26', '1', '2020-06-26'),
('6629', 'Jorge', 'Ocampo', 'Perez', 'OCPJ', '2020-06-26', 'Cariño', '100', '0', 'Juarez', '57000', '11', '1', 'A', '1', '2020-06-26', '1', '2020-06-26'),
('6630', 'Miguel', 'Ruiz', 'Mendez', 'RUMM', '2020-06-26', 'Av. Del Trabajo', '310', '0', ' Maravillas', '57510', '11', '1', 'A', '1', '2020-06-26', '1', '2020-06-26'),
('6631', 'Nicte', 'Pizaño', 'Esquivel', 'PIEN', '2020-06-26', 'Calandria', '147', '0', 'Juarez', '57000', '11', '1', 'A', '1', '2020-06-26', '1', '2020-06-26'),
('6632', 'Ana', 'Hernandez', 'Cortes', 'HECA', '2020-06-26', 'Juan Escutia', '33', '0', 'Tepalcates', '4100', '9', '9', 'A', '1', '2020-06-26', '1', '2020-06-26'),
('6633', 'Sam', 'Bravo', 'Quintero', 'BRQS', '2020-06-26', 'Riva Palacio', '0', '0', 'El Barquito', '4355', '9', '9', 'A', '1', '2020-06-26', '1', '2020-06-26'),
('6634', 'Juan', 'Martinez', 'Garcia', 'MAGJ', '2020-06-26', 'Popotla', '123', '0', 'Guerrero', '9001', '9', '6', 'A', '1', '2020-06-26', '1', '2020-06-26'),
('6635', 'Luisa', 'Fernandez', 'Ortiz', 'FEOL', '2020-06-26', 'Minatitlan', '174', '0', 'Villada', '57145', '11', '1', 'A', '1', '2020-06-26', '1', '2020-06-26'),
('6636', 'Luis Carlos', 'Valladolid', 'Velez', 'VAVL', '2020-06-26', 'Queretaro', '420', '0', 'Juarez', '57000', '11', '1', 'A', '1', '2020-06-26', '1', '2020-06-26'),
('6637', 'Pablo', 'Cortes', 'Flores', 'COFP', '2020-06-26', 'Perjura', '57', '0', 'Juarez', '57000', '11', '1', 'A', '1', '2020-06-26', '1', '2020-06-26'),
('6638', 'Humberto', 'Talavar', 'Perez', 'TAPH', '2020-06-26', 'Flor', '101', '0', 'Juarez', '57000', '11', '1', 'A', '1', '2020-06-26', '1', '2020-06-26'),
('6639', 'Felipe', 'Ortega', 'Mendez', 'ORMF', '2020-06-26', 'Cocula', '215', '0', 'Juarez', '57000', '11', '1', 'A', '1', '2020-06-26', '1', '2020-06-26'),
('6640', 'Miranda', 'Salinas', 'Perez', 'SAPM', '2020-06-26', 'Milpa ', '412', '0', 'Estado de México', '57355', '11', '1', 'A', '1', '2020-06-26', '1', '2020-06-26'),
('6641', 'Ruben', 'Ortega', 'Paramo', 'ORPR', '2020-06-26', 'Texanita', '3', '0', 'Juarez', '57000', '11', '1', 'A', '1', '2020-06-26', '1', '2020-06-26'),
('6642', 'Raul', 'Palomares', 'Salinas', 'PASR', '2020-06-26', 'Organillero', '78', '0', 'Juarez', '57000', '11', '1', 'A', '1', '2020-06-26', '1', '2020-06-26'),
('6643', 'Blanca', 'Jacome', 'Garcia', 'JAGB', '2020-06-26', 'Flor', '64', '0', 'Juarez', '57000', '11', '1', 'A', '1', '2020-06-26', '1', '2020-06-26'),
('6644', 'Ana', 'Velazquez', 'Samano', 'VESA', '2020-06-27', 'Abandonado', '255', '0', 'Esperanza', '57100', '11', '1', 'A', '1', '2020-06-27', '1', '2020-06-27'),
('6645', 'Luis ', 'Hernandez', 'vazquez', 'L', '2020-07-02', 'calle1', '187', '', 'col1', '1565', '9', '6', 'A', '1', '2020-07-02', '1', '2020-07-02'),
('6646', 'Carlos F', 'Balbuena', 'Torres', 'BATC', '2020-11-28', 'yucalpeten', '187', '', 'lomas', '1424', '11', '14', 'D', '1', '2020-11-28', '1', '2020-11-28'),
('6647', 'fernando', 'balbuena', 'torres', 'batc', '2020-11-28', 'yucalpetyen', '1487', '', 'lomas', '14240', '9', '1', 'D', '31', '2020-11-28', '31', '2020-11-28'),
('6648', 'zetch', 'guspo', 'porro', 'zgp', '2020-11-28', 'chapultepec', '897', '', 'lomas', '14240', '9', '14', 'D', '1', '2020-11-28', '1', '2020-11-28'),
('6649', 'guspo', 'mendez', 'porro', 'lgp', '2020-11-28', 'cancun', '185', '', 'lomas', '14240', '9', '14', 'D', '1', '2020-11-28', '1', '2020-11-28'),
('6650', 'Gustado', 'mendez', 'guspo', 'GGG', '2020-11-28', 'chapultepec', '875', '', 'lomas', '14240', '9', '14', 'D', '1', '2020-11-28', '1', '2020-11-28');

-- --------------------------------------------------------

--
-- Table structure for table `ddethor`
--

CREATE TABLE IF NOT EXISTS `ddethor` (
  `NIDHORA` decimal(5,0) NOT NULL DEFAULT '0',
  `NDIASEM` decimal(1,0) NOT NULL DEFAULT '0',
  `CHORENT` char(5) DEFAULT NULL,
  `CHORSAL` char(5) DEFAULT NULL,
  `CSTATUS` char(1) DEFAULT NULL,
  `CUSUINS` char(10) DEFAULT NULL,
  `DFECINS` date DEFAULT NULL,
  `CUSUMOD` char(10) DEFAULT NULL,
  `DFECMOD` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ddethor`
--

INSERT INTO `ddethor` (`NIDHORA`, `NDIASEM`, `CHORENT`, `CHORSAL`, `CSTATUS`, `CUSUINS`, `DFECINS`, `CUSUMOD`, `DFECMOD`) VALUES
('1', '2', '07:00', '15:00', 'A', NULL, NULL, NULL, NULL),
('1', '3', '07:00', '15:00', 'A', NULL, NULL, NULL, NULL),
('1', '4', '07:00', '15:00', 'A', NULL, NULL, NULL, NULL),
('1', '5', '07:00', '15:00', 'A', NULL, NULL, NULL, NULL),
('1', '6', '07:00', '15:00', 'A', NULL, NULL, NULL, NULL),
('2', '2', '', '', 'D', '3', '2020-04-23', '3', '2020-04-23'),
('2', '3', '08:00', '16:00', 'A', NULL, NULL, NULL, NULL),
('2', '4', '08:00', '16:00', 'A', NULL, NULL, NULL, NULL),
('2', '5', '08:00', '16:00', 'A', NULL, NULL, NULL, NULL),
('2', '6', '08:00', '16:00', 'A', NULL, NULL, NULL, NULL),
('3', '2', '14:00', '22:00', 'A', NULL, NULL, NULL, NULL),
('3', '3', '14:00', '22:00', 'A', NULL, NULL, NULL, NULL),
('3', '4', '14:00', '22:00', 'A', NULL, NULL, NULL, NULL),
('3', '5', '14:00', '22:00', 'A', NULL, NULL, NULL, NULL),
('3', '6', '14:00', '22:00', 'A', NULL, NULL, NULL, NULL),
('8', '1', '09:00', '17:00', 'A', '3', '2020-04-22', '3', '2020-04-22'),
('5', '1', '12:30', '17:30', 'A', '3', '2020-04-11', '3', '2020-04-11'),
('5', '2', '12:30', '17:30', 'A', '3', '2020-04-11', '3', '2020-04-11'),
('5', '3', '12:30', '17:30', 'A', '3', '2020-04-11', '3', '2020-04-11'),
('5', '4', '12:30', '17:30', 'A', '3', '2020-04-11', '3', '2020-04-11'),
('5', '5', '12:30', '17:30', 'A', '3', '2020-04-11', '3', '2020-04-11'),
('6', '1', '13:30', '17:30', 'A', '3', '2020-04-11', '3', '2020-04-11'),
('6', '2', '', '', 'D', '3', '2020-04-11', '3', '2020-04-11'),
('6', '3', '12:30', '17:30', 'A', '3', '2020-04-11', '3', '2020-04-11'),
('6', '4', '', '', 'D', '3', '2020-04-11', '3', '2020-04-11'),
('6', '5', '13:00', '17:30', 'A', '3', '2020-04-11', '3', '2020-04-11'),
('7', '1', '13:30', '15:30', 'A', '3', '2020-04-17', '3', '2020-04-17'),
('7', '2', '16:30', '18:30', 'A', '3', '2020-04-17', '3', '2020-04-17'),
('7', '3', '14:30', '17:30', 'A', '3', '2020-04-17', '3', '2020-04-17'),
('7', '4', '09:30', '13:30', 'A', '3', '2020-04-17', '3', '2020-04-17'),
('7', '5', '', '', 'D', '3', '2020-04-17', '3', '2020-04-17'),
('8', '2', '10:00', '17:00', 'A', '3', '2020-04-22', '3', '2020-04-22'),
('8', '3', '09:00', '17:00', 'A', '3', '2020-04-22', '3', '2020-04-22'),
('8', '4', '09:00', '17:00', 'A', '3', '2020-04-22', '3', '2020-04-22'),
('8', '5', '10:00', '13:00', 'A', '3', '2020-04-22', '3', '2020-04-22'),
('9', '1', '', '', 'D', '3', '2020-04-23', '3', '2020-04-23'),
('9', '2', '12:30', '17:30', 'A', '3', '2020-04-23', '3', '2020-04-23'),
('9', '3', '12:30', '17:30', 'A', '3', '2020-04-23', '3', '2020-04-23'),
('9', '4', '11:00', '13:00', 'A', '3', '2020-04-23', '3', '2020-04-23'),
('9', '5', '09:00', '15:00', 'A', '3', '2020-04-23', '3', '2020-04-23'),
('10', '1', '10:30', '22:00', 'A', '3', '2020-04-27', '3', '2020-04-27'),
('10', '2', '', '', 'D', '3', '2020-04-27', '3', '2020-04-27'),
('10', '3', '10:30', '22:00', 'A', '3', '2020-04-27', '3', '2020-04-27'),
('10', '4', '10:30', '22:00', 'A', '3', '2020-04-27', '3', '2020-04-27'),
('10', '5', '10:30', '22:00', 'A', '3', '2020-04-27', '3', '2020-04-27'),
('11', '1', '12:00', '21:00', 'A', '3', '2020-04-27', '3', '2020-04-27'),
('11', '2', '12:00', '21:00', 'A', '3', '2020-04-27', '3', '2020-04-27'),
('11', '3', '12:00', '21:00', 'A', '3', '2020-04-27', '3', '2020-04-27'),
('11', '4', '12:00', '21:00', 'A', '3', '2020-04-27', '3', '2020-04-27'),
('11', '5', '12:00', '21:00', 'A', '3', '2020-04-27', '3', '2020-04-27'),
('12', '1', '11:30', '16:00', 'A', '3', '2020-05-12', '3', '2020-05-12'),
('12', '2', '11:30', '16:00', 'A', '3', '2020-05-12', '3', '2020-05-12'),
('12', '3', '11:30', '16:00', 'A', '3', '2020-05-12', '3', '2020-05-12'),
('12', '4', '11:30', '16:00', 'A', '3', '2020-05-12', '3', '2020-05-12'),
('12', '5', '11:30', '16:00', 'A', '3', '2020-05-12', '3', '2020-05-12'),
('13', '1', '15:00', '22:00', 'A', '3', '2020-05-12', '3', '2020-05-12'),
('13', '2', '15:00', '22:00', 'A', '3', '2020-05-12', '3', '2020-05-12'),
('13', '3', '15:00', '22:00', 'A', '3', '2020-05-12', '3', '2020-05-12'),
('13', '4', '15:00', '22:00', 'A', '3', '2020-05-12', '3', '2020-05-12'),
('13', '5', '15:00', '22:00', 'A', '3', '2020-05-12', '3', '2020-05-12'),
('14', '1', '09:30', '17:00', 'A', '3', '2020-05-12', '3', '2020-05-12'),
('14', '2', '09:30', '17:00', 'A', '3', '2020-05-12', '3', '2020-05-12'),
('14', '3', '09:30', '17:00', 'A', '3', '2020-05-12', '3', '2020-05-12'),
('14', '4', '09:30', '17:00', 'A', '3', '2020-05-12', '3', '2020-05-12'),
('14', '5', '09:30', '17:00', 'A', '3', '2020-05-12', '3', '2020-05-12'),
('15', '1', '12:00', '15:00', 'A', '3', '2020-05-12', '3', '2020-05-12'),
('15', '2', '12:00', '15:00', 'A', '3', '2020-05-12', '3', '2020-05-12'),
('15', '3', '12:00', '15:00', 'A', '3', '2020-05-12', '3', '2020-05-12'),
('15', '4', '12:00', '15:00', 'A', '3', '2020-05-12', '3', '2020-05-12'),
('15', '5', '', '', 'D', '3', '2020-05-12', '3', '2020-05-12'),
('16', '1', '08:00', '15:00', 'A', '3', '2020-06-26', '3', '2020-06-26'),
('16', '2', '', '', 'D', '3', '2020-06-26', '3', '2020-06-26'),
('16', '3', '08:00', '15:00', 'A', '3', '2020-06-26', '3', '2020-06-26'),
('16', '4', '08:00', '15:00', 'A', '3', '2020-06-26', '3', '2020-06-26'),
('16', '5', '08:30', '15:30', 'A', '3', '2020-06-26', '3', '2020-06-26'),
('17', '1', '08:00', '15:00', 'A', '3', '2020-06-26', '3', '2020-06-26'),
('17', '2', '', '', 'D', '3', '2020-06-26', '3', '2020-06-26'),
('17', '3', '08:00', '15:00', 'A', '3', '2020-06-26', '3', '2020-06-26'),
('17', '4', '08:00', '15:00', 'A', '3', '2020-06-26', '3', '2020-06-26'),
('17', '5', '08:30', '15:30', 'A', '3', '2020-06-26', '3', '2020-06-26'),
('18', '1', '08:00', '15:00', 'A', '3', '2020-06-26', '3', '2020-06-26'),
('18', '2', '', '', 'D', '3', '2020-06-26', '3', '2020-06-26'),
('18', '3', '08:00', '15:00', 'A', '3', '2020-06-26', '3', '2020-06-26'),
('18', '4', '08:00', '15:00', 'A', '3', '2020-06-26', '3', '2020-06-26'),
('18', '5', '08:30', '15:30', 'A', '3', '2020-06-26', '3', '2020-06-26'),
('19', '1', '08:00', '15:00', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('19', '2', '08:00', '15:00', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('19', '3', '08:00', '15:00', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('19', '4', '08:00', '15:00', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('19', '5', '08:00', '15:00', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('20', '1', '15:00', '21:00', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('20', '2', '15:00', '21:00', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('20', '3', '15:00', '21:00', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('20', '4', '15:00', '21:00', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('20', '5', '15:00', '21:00', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('21', '1', '12:30', '17:30', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('21', '2', '12:30', '17:30', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('21', '3', '13:00', '17:30', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('21', '4', '12:30', '17:30', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('21', '5', '13:00', '17:30', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('22', '1', '08:00', '15:00', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('22', '2', '08:00', '15:00', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('22', '3', '', '', 'D', '3', '2020-07-02', '3', '2020-07-02'),
('22', '4', '08:00', '15:00', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('22', '5', '08:00', '15:00', 'A', '3', '2020-07-02', '3', '2020-07-02');

-- --------------------------------------------------------

--
-- Table structure for table `dhremps`
--

CREATE TABLE IF NOT EXISTS `dhremps` (
  `NIDHORA` decimal(5,0) NOT NULL DEFAULT '0',
  `CCVEEMP` char(6) NOT NULL DEFAULT '',
  `DFECAIS` date DEFAULT NULL,
  `CSTATUS` char(1) DEFAULT NULL,
  `CUSUINS` char(10) DEFAULT NULL,
  `DFECINS` date DEFAULT NULL,
  `CUSUMOD` char(10) DEFAULT NULL,
  `DFECMOD` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dhremps`
--

INSERT INTO `dhremps` (`NIDHORA`, `CCVEEMP`, `DFECAIS`, `CSTATUS`, `CUSUINS`, `DFECINS`, `CUSUMOD`, `DFECMOD`) VALUES
('19', '6609', '2020-07-02', 'A', '3', '2020-04-21', '3', '2020-07-02'),
('21', '6613', '2020-07-02', 'A', '1', '2020-04-27', '3', '2020-07-02'),
('19', '6615', '2020-07-02', 'A', '3', '2020-04-27', '3', '2020-07-02'),
('19', '6614', '2020-07-02', 'A', '3', '2020-04-27', '3', '2020-07-02'),
('19', '6610', '2020-07-02', 'A', '3', '2020-05-20', '3', '2020-07-02'),
('19', '6616', '2020-07-02', 'A', '3', '2020-06-05', '3', '2020-07-02'),
('19', '6617', '2020-07-02', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('19', '6618', '2020-07-02', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('19', '6619', '2020-07-02', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('19', '6620', '2020-07-02', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('20', '6621', '2020-07-02', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('20', '6622', '2020-07-02', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('20', '6623', '2020-07-02', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('20', '6624', '2020-07-02', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('20', '6625', '2020-07-02', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('20', '6626', '2020-07-02', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('20', '6627', '2020-07-02', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('20', '6628', '2020-07-02', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('20', '6629', '2020-07-02', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('20', '6630', '2020-07-02', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('15', '6645', '2020-07-02', 'A', '3', '2020-07-02', '3', '2020-07-02');

-- --------------------------------------------------------

--
-- Table structure for table `mdiasnl`
--

CREATE TABLE IF NOT EXISTS `mdiasnl` (
  `DFECHNL` date NOT NULL DEFAULT '0000-00-00',
  `CMOTIVO` varchar(150) DEFAULT NULL,
  `CSTATUS` char(1) DEFAULT NULL,
  `CUSUINS` char(10) DEFAULT NULL,
  `DFECINS` date DEFAULT NULL,
  `CUSUMOD` char(10) DEFAULT NULL,
  `DFECMOD` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mdiasnl`
--

INSERT INTO `mdiasnl` (`DFECHNL`, `CMOTIVO`, `CSTATUS`, `CUSUINS`, `DFECINS`, `CUSUMOD`, `DFECMOD`) VALUES
('2020-02-03', 'DIA INHABIL', 'A', NULL, NULL, NULL, NULL),
('2020-06-12', 'día festivo ', 'D', '6609', '2020-06-12', '3', '2020-06-12'),
('2020-06-30', 'Salida anticipada', 'A', '6609', '2020-06-13', '6609', '2020-06-13'),
('2020-06-17', 'acuerdo sindical', 'D', '6609', '2020-06-13', '6609', '2020-06-13'),
('2020-11-23', 'pandemia', 'A', '6609', '2020-11-23', '6609', '2020-11-23');

-- --------------------------------------------------------

--
-- Table structure for table `pjusasi`
--

CREATE TABLE IF NOT EXISTS `pjusasi` (
  `CCVEEMP` char(6) NOT NULL DEFAULT '',
  `DFECINC` date NOT NULL DEFAULT '0000-00-00',
  `NIDTPJU` decimal(2,0) NOT NULL DEFAULT '0',
  `CSTATUS` char(1) DEFAULT NULL,
  `CUSUINS` char(10) DEFAULT NULL,
  `DFECINS` date DEFAULT NULL,
  `CUSUMOD` char(10) DEFAULT NULL,
  `DFECMOD` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pjusasi`
--

INSERT INTO `pjusasi` (`CCVEEMP`, `DFECINC`, `NIDTPJU`, `CSTATUS`, `CUSUINS`, `DFECINS`, `CUSUMOD`, `DFECMOD`) VALUES
('3', '2020-06-09', '2', 'A', '3', '2020-06-15', '3', '2020-06-15'),
('6613', '2020-06-02', '2', 'A', '3', '2020-06-15', '3', '2020-06-15'),
('6613', '2020-06-03', '1', 'A', '3', '2020-06-15', '3', '2020-06-15'),
('6613', '2020-06-02', '8', 'A', '3', '2020-06-15', '3', '2020-06-15'),
('6613', '2020-11-27', '5', 'A', '3', '2020-11-27', '3', '2020-11-27');

-- --------------------------------------------------------

--
-- Table structure for table `pregasi`
--

CREATE TABLE IF NOT EXISTS `pregasi` (
  `CCVEEMP` char(6) NOT NULL DEFAULT '',
  `DFECREG` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `CNUMBIO` decimal(2,0) DEFAULT NULL,
  `CSTATUS` char(1) DEFAULT NULL,
  `CUSUINS` char(10) DEFAULT NULL,
  `DFECINS` date DEFAULT NULL,
  `CUSUMOD` char(10) DEFAULT NULL,
  `DFECMOD` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pregasi`
--

INSERT INTO `pregasi` (`CCVEEMP`, `DFECREG`, `CNUMBIO`, `CSTATUS`, `CUSUINS`, `DFECINS`, `CUSUMOD`, `DFECMOD`) VALUES
('6610', '2020-06-24 09:52:18', '2', 'A', '6610', '2020-07-02', '6610', '2020-07-02'),
('6610', '2020-06-15 09:12:18', '2', 'A', '6610', '2020-06-27', '6610', '2020-06-27'),
('6615', '2020-06-15 17:52:59', '1', 'A', '6610', '2020-06-27', '6610', '2020-06-27'),
('6614', '2020-06-15 09:25:59', '1', 'A', '6610', '2020-06-27', '6610', '2020-06-27'),
('6614', '2020-06-15 16:50:59', '1', 'A', '6610', '2020-06-27', '6610', '2020-06-27'),
('6616', '2020-06-05 09:53:17', '1', 'A', '6610', '2020-07-02', '6610', '2020-07-02'),
('6616', '2020-06-24 09:51:16', '1', 'A', '6610', '2020-07-02', '6610', '2020-07-02'),
('6609', '2020-06-15 12:15:09', '1', 'A', '6610', '2020-06-27', '6610', '2020-06-27'),
('6609', '2020-06-15 17:15:09', '1', 'A', '6610', '2020-06-27', '6610', '2020-06-27'),
('6616', '2020-06-15 12:40:15', '1', 'A', '6610', '2020-06-27', '6610', '2020-06-27'),
('6615', '2020-06-05 07:59:59', '1', 'A', '6610', '2020-07-02', '6610', '2020-07-02'),
('6616', '2020-06-05 09:10:15', '1', 'A', '6610', '2020-07-02', '6610', '2020-07-02'),
('6615', '2020-06-15 13:52:59', '1', 'A', '6610', '2020-06-27', '6610', '2020-06-27'),
('6613', '2020-06-15 12:17:03', '2', 'A', '6610', '2020-06-27', '6610', '2020-06-27'),
('6610', '2020-06-15 17:05:00', '2', 'A', '6610', '2020-06-27', '6610', '2020-06-27'),
('6613', '2020-06-05 12:17:03', '2', 'A', '6610', '2020-07-02', '6610', '2020-07-02'),
('6614', '2020-06-05 07:59:59', '1', 'A', '6610', '2020-07-02', '6610', '2020-07-02'),
('6610', '2020-06-24 10:34:00', '2', 'A', '6610', '2020-07-02', '6610', '2020-07-02'),
('6609', '2020-06-24 22:01:00', '1', 'A', '6610', '2020-07-02', '6610', '2020-07-02');

-- --------------------------------------------------------

--
-- Table structure for table `tincemp`
--

CREATE TABLE IF NOT EXISTS `tincemp` (
  `CCVEEMP` char(6) NOT NULL DEFAULT '',
  `DFECINC` date NOT NULL DEFAULT '0000-00-00',
  `CTIPINC` char(1) NOT NULL DEFAULT '',
  `CSTATUS` char(1) DEFAULT NULL,
  `CUSUINS` char(10) DEFAULT NULL,
  `DFECINS` date DEFAULT NULL,
  `CUSUMOD` char(10) DEFAULT NULL,
  `DFECMOD` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tincemp`
--

INSERT INTO `tincemp` (`CCVEEMP`, `DFECINC`, `CTIPINC`, `CSTATUS`, `CUSUINS`, `DFECINS`, `CUSUMOD`, `DFECMOD`) VALUES
('6615', '2020-06-15', 'Y', 'A', '3', '2020-06-27', '3', '2020-06-27'),
('6616', '2020-06-15', 'T', 'A', '3', '2020-06-27', '3', '2020-06-27'),
('6613', '2020-06-15', 'O', 'A', '3', '2020-06-27', '3', '2020-06-27'),
('6614', '2020-06-15', 'Y', 'A', '3', '2020-06-27', '3', '2020-06-27'),
('6615', '2020-06-15', 'O', 'A', '3', '2020-06-27', '3', '2020-06-27'),
('6609', '2020-06-15', 'A', 'A', '3', '2020-06-27', '3', '2020-06-27'),
('6616', '2020-06-15', 'O', 'A', '3', '2020-06-27', '3', '2020-06-27'),
('6614', '2020-06-15', 'A', 'A', '3', '2020-06-27', '3', '2020-06-27'),
('6610', '2020-06-15', 'N', 'A', '3', '2020-06-27', '3', '2020-06-27'),
('6609', '2020-07-02', 'D', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6609', '2020-06-05', 'D', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6610', '2020-06-05', 'D', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6617', '2020-06-05', 'D', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6618', '2020-06-05', 'D', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6619', '2020-06-05', 'D', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6620', '2020-06-05', 'D', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6621', '2020-06-05', 'D', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6622', '2020-06-05', 'D', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6623', '2020-06-05', 'D', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6624', '2020-06-05', 'D', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6625', '2020-06-05', 'D', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6626', '2020-06-05', 'D', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6627', '2020-06-05', 'D', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6628', '2020-06-05', 'D', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6629', '2020-06-05', 'D', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6630', '2020-06-05', 'D', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6613', '2020-06-05', 'O', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6614', '2020-06-05', 'O', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6615', '2020-06-05', 'O', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6616', '2020-06-05', 'A', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6616', '2020-06-05', 'T', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6645', '2020-06-24', 'D', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6614', '2020-06-24', 'D', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6615', '2020-06-24', 'D', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6617', '2020-06-24', 'D', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6618', '2020-06-24', 'D', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6619', '2020-06-24', 'D', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6620', '2020-06-24', 'D', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6621', '2020-06-24', 'D', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6622', '2020-06-24', 'D', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6623', '2020-06-24', 'D', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6624', '2020-06-24', 'D', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6625', '2020-06-24', 'D', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6626', '2020-06-24', 'D', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6627', '2020-06-24', 'D', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6628', '2020-06-24', 'D', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6629', '2020-06-24', 'D', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6630', '2020-06-24', 'D', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6613', '2020-06-24', 'D', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6616', '2020-06-24', 'O', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6616', '2020-06-24', 'T', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6610', '2020-06-24', 'A', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6610', '2020-06-24', 'T', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6609', '2020-06-24', 'O', 'A', '3', '2020-07-02', '3', '2020-07-02'),
('6609', '2020-06-24', 'T', 'A', '3', '2020-07-02', '3', '2020-07-02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cestads`
--
ALTER TABLE `cestads`
 ADD PRIMARY KEY (`NIDESTA`);

--
-- Indexes for table `chorars`
--
ALTER TABLE `chorars`
 ADD PRIMARY KEY (`NIDHORA`);

--
-- Indexes for table `cjusasi`
--
ALTER TABLE `cjusasi`
 ADD PRIMARY KEY (`NIDTPJU`);

--
-- Indexes for table `cmunics`
--
ALTER TABLE `cmunics`
 ADD PRIMARY KEY (`NIDESTA`,`NIDMUNI`);

--
-- Indexes for table `credenciales`
--
ALTER TABLE `credenciales`
 ADD PRIMARY KEY (`id_Credenciales`), ADD KEY `FK_CRED_DDATEMP` (`CCVEEMP`);

--
-- Indexes for table `creglas`
--
ALTER TABLE `creglas`
 ADD PRIMARY KEY (`NIDREGL`);

--
-- Indexes for table `ddatemp`
--
ALTER TABLE `ddatemp`
 ADD PRIMARY KEY (`CCVEEMP`), ADD KEY `FK_DDATEMP_CMUNICS` (`NIDESTA`,`NIDMUNI`);

--
-- Indexes for table `ddethor`
--
ALTER TABLE `ddethor`
 ADD PRIMARY KEY (`NIDHORA`,`NDIASEM`);

--
-- Indexes for table `dhremps`
--
ALTER TABLE `dhremps`
 ADD PRIMARY KEY (`NIDHORA`,`CCVEEMP`), ADD KEY `FK_DHREMPS_DDATEMP` (`CCVEEMP`);

--
-- Indexes for table `mdiasnl`
--
ALTER TABLE `mdiasnl`
 ADD PRIMARY KEY (`DFECHNL`);

--
-- Indexes for table `pjusasi`
--
ALTER TABLE `pjusasi`
 ADD PRIMARY KEY (`CCVEEMP`,`DFECINC`,`NIDTPJU`), ADD KEY `FK_PJUSASI_CJUSASI` (`NIDTPJU`);

--
-- Indexes for table `pregasi`
--
ALTER TABLE `pregasi`
 ADD PRIMARY KEY (`CCVEEMP`,`DFECREG`);

--
-- Indexes for table `tincemp`
--
ALTER TABLE `tincemp`
 ADD PRIMARY KEY (`CCVEEMP`,`DFECINC`,`CTIPINC`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
