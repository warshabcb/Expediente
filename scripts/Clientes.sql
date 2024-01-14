-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 13-01-2024 a las 19:48:25
-- Versión del servidor: 8.0.35-0ubuntu0.20.04.1
-- Versión de PHP: 7.4.3-4ubuntu2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Clientes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `EstadosCivil`
--

CREATE TABLE `EstadosCivil` (
  `Id` int NOT NULL,
  `Estado_Civil` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `EstadosCivil`
--

INSERT INTO `EstadosCivil` (`Id`, `Estado_Civil`) VALUES
(2, 'Casado'),
(4, 'Divorciado'),
(1, 'Soltero'),
(3, 'Union Libre'),
(5, 'Viudo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Fisicos`
--

CREATE TABLE `Fisicos` (
  `Id` int NOT NULL,
  `Tipo_Identificacion` varchar(100) NOT NULL DEFAULT 'Cedula Identificacion',
  `Identificacion` varchar(20) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `PrimerApellido` varchar(100) NOT NULL,
  `SegundoApellido` varchar(100) DEFAULT NULL,
  `FechaNacimiento` date DEFAULT NULL,
  `Sexo` varchar(50) DEFAULT NULL,
  `Nacionalidad` varchar(100) DEFAULT NULL,
  `EstadoCivil` varchar(100) DEFAULT NULL,
  `Ocupacion` varchar(100) NOT NULL DEFAULT 'No especificado',
  `CasadoVeces` int NOT NULL DEFAULT '0',
  `FechaCreacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `Audit` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `Fisicos`
--

INSERT INTO `Fisicos` (`Id`, `Tipo_Identificacion`, `Identificacion`, `Nombre`, `PrimerApellido`, `SegundoApellido`, `FechaNacimiento`, `Sexo`, `Nacionalidad`, `EstadoCivil`, `Ocupacion`, `CasadoVeces`, `FechaCreacion`, `Audit`) VALUES
(1, 'Cedula Identificacion', '503450338', 'Warshab', 'Contreras', 'Bustos', '1985-04-09', 'Masculino', 'Costa Rica', 'Soltero', 'Ingeniero', 1, '2023-12-17 21:51:37', NULL),
(2, 'Cedula Identificacion', '503400985', 'Melissa', 'Zuniga', 'Pizarro', '1984-08-30', 'Femenino', 'Costa Rica', 'Soltero', 'Farmaceutica', 2, '2023-12-18 16:58:30', NULL),
(3, 'Cedula Identificacion', '503450333', 'Luis', 'Rodríguez', 'Hernández', '1983-07-11', 'Masculino', 'Guatemala', 'Soltero', 'No especificado', 0, '2023-12-18 17:19:45', NULL),
(4, 'Cedula Identificacion', '503320923', 'Ana', 'Vásquez', 'Martínez', '1962-05-30', 'Masculino', 'Argentina', 'Soltero', 'No especificado', 0, '2023-12-18 17:20:26', NULL),
(5, 'Cedula Identificacion', '603260472', 'Carlos', 'Díaz', 'Díaz', '1997-02-11', 'Masculino', 'Nueva Zelanda', 'Soltero', 'No especificado', 0, '2023-12-18 17:21:10', NULL),
(6, 'Cedula Identificacion', '501310399', 'Odilie', 'Contreras', 'Bustos', '1985-09-04', 'Femenino', 'Afganistan', 'Casado', 'No especificado', 0, '2023-12-23 20:03:29', NULL),
(7, 'Cedula Identificacion', '502750812', 'Wary', 'Contreras', 'Bustos', '1975-12-03', 'Masculino', 'Costa Rica', 'Soltero', 'No especificado', 0, '2023-12-25 15:44:10', NULL),
(8, 'Cedula Identificacion', '120810638', 'Matias', 'Gutierrez', 'Zuniga', '2010-03-10', 'Masculino', 'Costa Rica', 'Soltero', 'No especificado', 1, '2023-12-25 15:47:20', NULL),
(9, 'Cedula Identificacion', '403070739', 'Samantha Vanessa', 'Contreras', 'Ramirez', '2014-06-18', 'Femenino', 'Costa Rica', 'Soltero', 'No especificado', 0, '2023-12-25 15:57:14', NULL),
(10, 'Cedula Identificacion', '402050583', 'Kimberly Vanessa', 'Ramirez', 'Cordoba', '1990-03-05', 'Femenino', 'Costa Rica', 'Soltero', 'No especificado', 1, '2023-12-25 16:00:22', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Generos`
--

CREATE TABLE `Generos` (
  `Id` int NOT NULL,
  `Sexo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `Generos`
--

INSERT INTO `Generos` (`Id`, `Sexo`) VALUES
(2, 'Femenino'),
(1, 'Masculino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Nacionalidades`
--

CREATE TABLE `Nacionalidades` (
  `Id` int NOT NULL,
  `Nombre_Spanish` varchar(60) NOT NULL,
  `Nombre_English` varchar(60) NOT NULL,
  `ISO2` varchar(10) NOT NULL,
  `ISO3` varchar(10) NOT NULL,
  `Phone_Code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `Nacionalidades`
--

INSERT INTO `Nacionalidades` (`Id`, `Nombre_Spanish`, `Nombre_English`, `ISO2`, `ISO3`, `Phone_Code`) VALUES
(1, 'Afganistan', 'Afghanistan', 'AF', 'AFG', '93'),
(2, 'Albania', 'Albania', 'AL', 'ALB', '355'),
(3, 'Alemania', 'Germany', 'DE', 'DEU', '49'),
(4, 'Algeria', 'Algeria', 'DZ', 'DZA', '213'),
(5, 'Andorra', 'Andorra', 'AD', 'AND', '376'),
(6, 'Angola', 'Angola', 'AO', 'AGO', '244'),
(7, 'Anguila', 'Anguilla', 'AI', 'AIA', '1 264'),
(8, 'Antartida', 'Antarctica', 'AQ', 'ATA', '672'),
(9, 'Antigua y Barbuda', 'Antigua and Barbuda', 'AG', 'ATG', '1 268'),
(10, 'Antillas Neerlandesas', 'Netherlands Antilles', 'AN', 'ANT', '599'),
(11, 'Arabia Saudita', 'Saudi Arabia', 'SA', 'SAU', '966'),
(12, 'Argentina', 'Argentina', 'AR', 'ARG', '54'),
(13, 'Armenia', 'Armenia', 'AM', 'ARM', '374'),
(14, 'Aruba', 'Aruba', 'AW', 'ABW', '297'),
(15, 'Australia', 'Australia', 'AU', 'AUS', '61'),
(16, 'Austria', 'Austria', 'AT', 'AUT', '43'),
(17, 'Azerbayan', 'Azerbaijan', 'AZ', 'AZE', '994'),
(18, 'Bahamas', 'Bahamas', 'BS', 'BHS', '1 242'),
(19, 'Bahrein', 'Bahrain', 'BH', 'BHR', '973'),
(20, 'Bangladesh', 'Bangladesh', 'BD', 'BGD', '880'),
(21, 'Barbados', 'Barbados', 'BB', 'BRB', '1 246'),
(22, 'Belgica', 'Belgium', 'BE', 'BEL', '32'),
(23, 'Belice', 'Belize', 'BZ', 'BLZ', '501'),
(24, 'Benin', 'Benin', 'BJ', 'BEN', '229'),
(25, 'Bhutan', 'Bhutan', 'BT', 'BTN', '975'),
(26, 'Bielorrusia', 'Belarus', 'BY', 'BLR', '375'),
(27, 'Birmania', 'Myanmar', 'MM', 'MMR', '95'),
(28, 'Bolivia', 'Bolivia', 'BO', 'BOL', '591'),
(29, 'Bosnia y Herzegovina', 'Bosnia and Herzegovina', 'BA', 'BIH', '387'),
(30, 'Botsuana', 'Botswana', 'BW', 'BWA', '267'),
(31, 'Brasil', 'Brazil', 'BR', 'BRA', '55'),
(32, 'Brunei', 'Brunei', 'BN', 'BRN', '673'),
(33, 'Bulgaria', 'Bulgaria', 'BG', 'BGR', '359'),
(34, 'Burkina Faso', 'Burkina Faso', 'BF', 'BFA', '226'),
(35, 'Burundi', 'Burundi', 'BI', 'BDI', '257'),
(36, 'Cabo Verde', 'Cape Verde', 'CV', 'CPV', '238'),
(37, 'Camboya', 'Cambodia', 'KH', 'KHM', '855'),
(38, 'CamerÃºn', 'Cameroon', 'CM', 'CMR', '237'),
(39, 'Canada', 'Canada', 'CA', 'CAN', '1'),
(40, 'Chad', 'Chad', 'TD', 'TCD', '235'),
(41, 'Chile', 'Chile', 'CL', 'CHL', '56'),
(42, 'China', 'China', 'CN', 'CHN', '86'),
(43, 'Chipre', 'Cyprus', 'CY', 'CYP', '357'),
(44, 'Ciudad del Vaticano', 'Vatican City State', 'VA', 'VAT', '39'),
(45, 'Colombia', 'Colombia', 'CO', 'COL', '57'),
(46, 'Comoras', 'Comoros', 'KM', 'COM', '269'),
(47, 'Congo', 'Congo', 'CG', 'COG', '242'),
(49, 'Corea del Norte', 'North Korea', 'KP', 'PRK', '850'),
(50, 'Corea del Sur', 'South Korea', 'KR', 'KOR', '82'),
(51, 'Costa de Marfil', 'Ivory Coast', 'CI', 'CIV', '225'),
(52, 'Costa Rica', 'Costa Rica', 'CR', 'CRI', '506'),
(53, 'Croacia', 'Croatia', 'HR', 'HRV', '385'),
(54, 'Cuba', 'Cuba', 'CU', 'CUB', '53'),
(55, 'Dinamarca', 'Denmark', 'DK', 'DNK', '45'),
(56, 'Dominica', 'Dominica', 'DM', 'DMA', '1 767'),
(57, 'Ecuador', 'Ecuador', 'EC', 'ECU', '593'),
(58, 'Egipto', 'Egypt', 'EG', 'EGY', '20'),
(59, 'El Salvador', 'El Salvador', 'SV', 'SLV', '503'),
(60, 'Emiratos arabes Unidos', 'United Arab Emirates', 'AE', 'ARE', '971'),
(61, 'Eritrea', 'Eritrea', 'ER', 'ERI', '291'),
(62, 'Escocia', 'Scotland', 'GB', '', '44'),
(63, 'Eslovaquia', 'Slovakia', 'SK', 'SVK', '421'),
(64, 'Eslovenia', 'Slovenia', 'SI', 'SVN', '386'),
(65, 'EspaÃ±a', 'Spain', 'ES', 'ESP', '34'),
(67, 'Estonia', 'Estonia', 'EE', 'EST', '372'),
(68, 'Etiopia', 'Ethiopia', 'ET', 'ETH', '251'),
(69, 'Filipinas', 'Philippines', 'PH', 'PHL', '63'),
(70, 'Finlandia', 'Finland', 'FI', 'FIN', '358'),
(71, 'Fiyi', 'Fiji', 'FJ', 'FJI', '679'),
(72, 'Francia', 'France', 'FR', 'FRA', '33'),
(73, 'GabÃ³n', 'Gabon', 'GA', 'GAB', '241'),
(75, 'Gambia', 'Gambia', 'GM', 'GMB', '220'),
(76, 'Georgia', 'Georgia', 'GE', 'GEO', '995'),
(77, 'Ghana', 'Ghana', 'GH', 'GHA', '233'),
(78, 'Gibraltar', 'Gibraltar', 'GI', 'GIB', '350'),
(79, 'Granada', 'Grenada', 'GD', 'GRD', '1 473'),
(80, 'Grecia', 'Greece', 'GR', 'GRC', '30'),
(81, 'Groenlandia', 'Greenland', 'GL', 'GRL', '299'),
(82, 'Guadalupe', 'Guadeloupe', 'GP', 'GLP', ''),
(83, 'Guam', 'Guam', 'GU', 'GUM', '1 671'),
(84, 'Guatemala', 'Guatemala', 'GT', 'GTM', '502'),
(87, 'Guinea', 'Guinea', 'GN', 'GIN', '224'),
(88, 'Guinea Ecuatorial', 'Equatorial Guinea', 'GQ', 'GNQ', '240'),
(89, 'Guinea-Bissau', 'Guinea-Bissau', 'GW', 'GNB', '245'),
(90, 'Guyana', 'Guyana', 'GY', 'GUY', '592'),
(91, 'Haiti', 'Haiti', 'HT', 'HTI', '509'),
(92, 'Honduras', 'Honduras', 'HN', 'HND', '504'),
(93, 'Hong kong', 'Hong Kong', 'HK', 'HKG', '852'),
(94, 'Hungria', 'Hungary', 'HU', 'HUN', '36'),
(95, 'India', 'India', 'IN', 'IND', '91'),
(96, 'Indonesia', 'Indonesia', 'ID', 'IDN', '62'),
(98, 'Irak', 'Iraq', 'IQ', 'IRQ', '964'),
(99, 'Iran', 'Iran', 'IR', 'IRN', '98'),
(100, 'Irlanda', 'Ireland', 'IE', 'IRL', '353'),
(106, 'Islandia', 'Iceland', 'IS', 'ISL', '354'),
(107, 'Islas Bermudas', 'Bermuda Islands', 'BM', 'BMU', '1 441'),
(108, 'Islas Caiman', 'Cayman Islands', 'KY', 'CYM', '1 345'),
(110, 'Islas Cook', 'Cook Islands', 'CK', 'COK', '682'),
(112, 'Islas Feroe', 'Faroe Islands', 'FO', 'FRO', '298'),
(115, 'Islas Maldivas', 'Maldives', 'MV', 'MDV', '960'),
(116, 'Islas Malvinas', 'Falkland Islands (Malvinas)', 'FK', 'FLK', '500'),
(117, 'Islas Marianas del Norte', 'Northern Mariana Islands', 'MP', 'MNP', '1 670'),
(118, 'Islas Marshall', 'Marshall Islands', 'MH', 'MHL', '692'),
(119, 'Islas Pitcairn', 'Pitcairn Islands', 'PN', 'PCN', '870'),
(120, 'Islas SalomÃ³n', 'Solomon Islands', 'SB', 'SLB', '677'),
(121, 'Islas Turcas y Caicos', 'Turks and Caicos Islands', 'TC', 'TCA', '1 649'),
(123, 'Islas Virgenes Britanicas', 'Virgin Islands', 'VG', 'VG', '1 284'),
(124, 'Islas Virgenes de los Estados Unidos', 'United States Virgin Islands', 'VI', 'VIR', '1 340'),
(125, 'Israel', 'Israel', 'IL', 'ISR', '972'),
(127, 'Jamaica', 'Jamaica', 'JM', 'JAM', '1 876'),
(128, 'JapÃ³n', 'Japan', 'JP', 'JPN', '81'),
(130, 'Jordania', 'Jordan', 'JO', 'JOR', '962'),
(131, 'Kazajistan', 'Kazakhstan', 'KZ', 'KAZ', '7'),
(132, 'Kenia', 'Kenya', 'KE', 'KEN', '254'),
(133, 'Kirgizstan', 'Kyrgyzstan', 'KG', 'KGZ', '996'),
(134, 'Kiribati', 'Kiribati', 'KI', 'KIR', '686'),
(135, 'Kuwait', 'Kuwait', 'KW', 'KWT', '965'),
(136, 'Laos', 'Laos', 'LA', 'LAO', '856'),
(137, 'Lesoto', 'Lesotho', 'LS', 'LSO', '266'),
(138, 'Letonia', 'Latvia', 'LV', 'LVA', '371'),
(139, 'Libano', 'Lebanon', 'LB', 'LBN', '961'),
(140, 'Liberia', 'Liberia', 'LR', 'LBR', '231'),
(141, 'Libia', 'Libya', 'LY', 'LBY', '218'),
(142, 'Liechtenstein', 'Liechtenstein', 'LI', 'LIE', '423'),
(143, 'Lituania', 'Lithuania', 'LT', 'LTU', '370'),
(144, 'Luxemburgo', 'Luxembourg', 'LU', 'LUX', '352'),
(145, 'Macao', 'Macao', 'MO', 'MAC', '853'),
(146, 'MacedÃ´nia', 'Macedonia', 'MK', 'MKD', '389'),
(147, 'Madagascar', 'Madagascar', 'MG', 'MDG', '261'),
(148, 'Malasia', 'Malaysia', 'MY', 'MYS', '60'),
(149, 'Malawi', 'Malawi', 'MW', 'MWI', '265'),
(150, 'Mali', 'Mali', 'ML', 'MLI', '223'),
(151, 'Malta', 'Malta', 'MT', 'MLT', '356'),
(152, 'Marruecos', 'Morocco', 'MA', 'MAR', '212'),
(154, 'Mauricio', 'Mauritius', 'MU', 'MUS', '230'),
(155, 'Mauritania', 'Mauritania', 'MR', 'MRT', '222'),
(156, 'Mayotte', 'Mayotte', 'YT', 'MYT', '262'),
(157, 'Mexico', 'Mexico', 'MX', 'MEX', '52'),
(158, 'Micronesia', 'Estados Federados de', 'FM', 'FSM', '691'),
(159, 'Moldavia', 'Moldova', 'MD', 'MDA', '373'),
(160, 'MÃ³naco', 'Monaco', 'MC', 'MCO', '377'),
(161, 'Mongolia', 'Mongolia', 'MN', 'MNG', '976'),
(162, 'Montenegro', 'Montenegro', 'ME', 'MNE', '382'),
(163, 'Montserrat', 'Montserrat', 'MS', 'MSR', '1 664'),
(164, 'Mozambique', 'Mozambique', 'MZ', 'MOZ', '258'),
(165, 'Namibia', 'Namibia', 'NA', 'NAM', '264'),
(166, 'Nauru', 'Nauru', 'NR', 'NRU', '674'),
(167, 'Nepal', 'Nepal', 'NP', 'NPL', '977'),
(168, 'Nicaragua', 'Nicaragua', 'NI', 'NIC', '505'),
(169, 'Niger', 'Niger', 'NE', 'NER', '227'),
(170, 'Nigeria', 'Nigeria', 'NG', 'NGA', '234'),
(171, 'Niue', 'Niue', 'NU', 'NIU', '683'),
(172, 'Noruega', 'Norway', 'NO', 'NOR', '47'),
(173, 'Nueva Caledonia', 'New Caledonia', 'NC', 'NCL', '687'),
(174, 'Nueva Zelanda', 'New Zealand', 'NZ', 'NZL', '64'),
(175, 'Oman', 'Oman', 'OM', 'OMN', '968'),
(176, 'Paises Bajos', 'Netherlands', 'NL', 'NLD', '31'),
(177, 'Pakistan', 'Pakistan', 'PK', 'PAK', '92'),
(178, 'Palau', 'Palau', 'PW', 'PLW', '680'),
(180, 'Panama', 'Panama', 'PA', 'PAN', '507'),
(181, 'PapÃºa Nueva Guinea', 'Papua New Guinea', 'PG', 'PNG', '675'),
(182, 'Paraguay', 'Paraguay', 'PY', 'PRY', '595'),
(183, 'PerÃº', 'Peru', 'PE', 'PER', '51'),
(184, 'Polinesia Francesa', 'French Polynesia', 'PF', 'PYF', '689'),
(185, 'Polonia', 'Poland', 'PL', 'POL', '48'),
(186, 'Portugal', 'Portugal', 'PT', 'PRT', '351'),
(188, 'Qatar', 'Qatar', 'QA', 'QAT', '974'),
(190, 'RepÃºblica Centroafricana', 'Central African Republic', 'CF', 'CAF', '236'),
(191, 'RepÃºblica Checa', 'Czech Republic', 'CZ', 'CZE', '420'),
(192, 'RepÃºblica Dominicana', 'Dominican Republic', 'DO', 'DOM', '1 809'),
(194, 'Ruanda', 'Rwanda', 'RW', 'RWA', '250'),
(195, 'Rumania', 'Romania', 'RO', 'ROU', '40'),
(198, 'Samoa', 'Samoa', 'WS', 'WSM', '685'),
(199, 'Samoa Americana', 'American Samoa', 'AS', 'ASM', '1 684'),
(200, 'San Bartolome', 'Saint Barthelemy', 'BL', 'BLM', '590'),
(201, 'San CristÃ³bal y Nieves', 'Saint Kitts and Nevis', 'KN', 'KNA', '1 869'),
(202, 'San Marino', 'San Marino', 'SM', 'SMR', '378'),
(203, 'San Martin (Francia)', 'Saint Martin (French part)', 'MF', 'MAF', '1 599'),
(204, 'San Pedro y MiquelÃ³n', 'Saint Pierre and Miquelon', 'PM', 'SPM', '508'),
(205, 'San Vicente y las Granadinas', 'Saint Vincent and the Grenadines', 'VC', 'VCT', '1 784'),
(206, 'Santa Elena', 'AscensiÃ³n y Tristan de AcuÃ±a', 'SH', 'SHN', '290'),
(207, 'Santa Lucia', 'Saint Lucia', 'LC', 'LCA', '1 758'),
(208, 'Santo Tome y Principe', 'Sao Tome and Principe', 'ST', 'STP', '239'),
(209, 'Senegal', 'Senegal', 'SN', 'SEN', '221'),
(210, 'Serbia', 'Serbia', 'RS', 'SRB', '381'),
(211, 'Seychelles', 'Seychelles', 'SC', 'SYC', '248'),
(212, 'Sierra Leona', 'Sierra Leone', 'SL', 'SLE', '232'),
(213, 'Singapur', 'Singapore', 'SG', 'SGP', '65'),
(214, 'Siria', 'Syria', 'SY', 'SYR', '963'),
(215, 'Somalia', 'Somalia', 'SO', 'SOM', '252'),
(216, 'Sri lanka', 'Sri Lanka', 'LK', 'LKA', '94'),
(217, 'Sudafrica', 'South Africa', 'ZA', 'ZAF', '27'),
(218, 'Sudan', 'Sudan', 'SD', 'SDN', '249'),
(219, 'Suecia', 'Sweden', 'SE', 'SWE', '46'),
(220, 'Suiza', 'Switzerland', 'CH', 'CHE', '41'),
(221, 'Surinam', 'Suriname', 'SR', 'SUR', '597'),
(223, 'Swazilandia', 'Swaziland', 'SZ', 'SWZ', '268'),
(224, 'Tadjikistan', 'Tajikistan', 'TJ', 'TJK', '992'),
(225, 'Tailandia', 'Thailand', 'TH', 'THA', '66'),
(226, 'Taiwan', 'Taiwan', 'TW', 'TWN', '886'),
(227, 'Tanzania', 'Tanzania', 'TZ', 'TZA', '255'),
(230, 'Timor Oriental', 'East Timor', 'TL', 'TLS', '670'),
(231, 'Togo', 'Togo', 'TG', 'TGO', '228'),
(232, 'Tokelau', 'Tokelau', 'TK', 'TKL', '690'),
(233, 'Tonga', 'Tonga', 'TO', 'TON', '676'),
(234, 'Trinidad y Tobago', 'Trinidad and Tobago', 'TT', 'TTO', '1 868'),
(235, 'Tunez', 'Tunisia', 'TN', 'TUN', '216'),
(236, 'Turkmenistan', 'Turkmenistan', 'TM', 'TKM', '993'),
(237, 'Turquia', 'Turkey', 'TR', 'TUR', '90'),
(238, 'Tuvalu', 'Tuvalu', 'TV', 'TUV', '688'),
(239, 'Ucrania', 'Ukraine', 'UA', 'UKR', '380'),
(240, 'Uganda', 'Uganda', 'UG', 'UGA', '256'),
(241, 'Uruguay', 'Uruguay', 'UY', 'URY', '598'),
(242, 'Uzbekistan', 'Uzbekistan', 'UZ', 'UZB', '998'),
(243, 'Vanuatu', 'Vanuatu', 'VU', 'VUT', '678'),
(244, 'Venezuela', 'Venezuela', 'VE', 'VEN', '58'),
(245, 'Vietnam', 'Vietnam', 'VN', 'VNM', '84'),
(246, 'Wallis y Futuna', 'Wallis and Futuna', 'WF', 'WLF', '681'),
(247, 'Yemen', 'Yemen', 'YE', 'YEM', '967'),
(248, 'Yibuti', 'Djibouti', 'DJ', 'DJI', '253'),
(249, 'Zambia', 'Zambia', 'ZM', 'ZMB', '260'),
(250, 'Zimbabue', 'Zimbabwe', 'ZW', 'ZWE', '263');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Telefonos`
--

CREATE TABLE `Telefonos` (
  `Id` int NOT NULL,
  `Identificacion` varchar(20) NOT NULL,
  `Tipo` enum('Trabajo','Personal','Celular','Oficina','Otro','Casa') NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `FechaCreacion` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `Telefonos`
--

INSERT INTO `Telefonos` (`Id`, `Identificacion`, `Tipo`, `Phone`, `FechaCreacion`) VALUES
(1, '503450338', 'Celular', '87187484', '2024-01-07 10:53:18'),
(3, '503450338', 'Casa', '26750057', '2024-01-07 10:53:18'),
(4, '503450338', 'Trabajo', '22111111', '2024-01-07 10:53:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Tipos_ID`
--

CREATE TABLE `Tipos_ID` (
  `Id` int NOT NULL,
  `Tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `Tipos_ID`
--

INSERT INTO `Tipos_ID` (`Id`, `Tipo`) VALUES
(1, 'Cedula Identificacion'),
(2, 'Pasaporte'),
(3, 'Cedula Residente Permanente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Users`
--

CREATE TABLE `Users` (
  `Id` int NOT NULL,
  `Cedula` varchar(24) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `PasswordHash` varchar(255) NOT NULL,
  `Role` varchar(50) NOT NULL,
  `FailedLoginAttempts` int NOT NULL DEFAULT '0',
  `LockoutEndTime` datetime DEFAULT NULL,
  `CreationDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LastAccessDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `Users`
--

INSERT INTO `Users` (`Id`, `Cedula`, `Nombre`, `Email`, `PasswordHash`, `Role`, `FailedLoginAttempts`, `LockoutEndTime`, `CreationDate`, `LastAccessDate`) VALUES
(1, '503450338', 'Warshab Contreras Bustos', 'warshab.contreras@gmail.com', 'c1a5ef24de5a642666086836c5c9c6a18f7ff1f89fff58617d260f73f6cf1fef', 'Admin', 0, NULL, '2024-01-10 20:15:03', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int NOT NULL,
  `identificacion` varchar(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `passwd` varchar(255) NOT NULL,
  `correo_electronico` varchar(100) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `ultimo_acceso` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `identificacion`, `nombre`, `passwd`, `correo_electronico`, `fecha_creacion`, `ultimo_acceso`) VALUES
(1, '503450338', 'Warshab Contreras Bustos', '090485', 'warshab.contreras@gmail.com', '2023-12-17 04:54:07', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `EstadosCivil`
--
ALTER TABLE `EstadosCivil`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Estado_Civil` (`Estado_Civil`);

--
-- Indices de la tabla `Fisicos`
--
ALTER TABLE `Fisicos`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Identificacion_UNIQUE` (`Identificacion`);

--
-- Indices de la tabla `Generos`
--
ALTER TABLE `Generos`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Sexo` (`Sexo`);

--
-- Indices de la tabla `Nacionalidades`
--
ALTER TABLE `Nacionalidades`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Nombre_Spanish` (`Nombre_Spanish`),
  ADD UNIQUE KEY `Nombre_English` (`Nombre_English`),
  ADD UNIQUE KEY `Phone_Code` (`Phone_Code`);

--
-- Indices de la tabla `Telefonos`
--
ALTER TABLE `Telefonos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_FisicoIdentificacion` (`Identificacion`);

--
-- Indices de la tabla `Tipos_ID`
--
ALTER TABLE `Tipos_ID`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Cedula_UNIQUE` (`Cedula`),
  ADD UNIQUE KEY `Email_UNIQUE` (`Email`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `identificacion` (`identificacion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `EstadosCivil`
--
ALTER TABLE `EstadosCivil`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `Fisicos`
--
ALTER TABLE `Fisicos`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `Generos`
--
ALTER TABLE `Generos`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `Nacionalidades`
--
ALTER TABLE `Nacionalidades`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT de la tabla `Telefonos`
--
ALTER TABLE `Telefonos`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `Tipos_ID`
--
ALTER TABLE `Tipos_ID`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `Users`
--
ALTER TABLE `Users`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Telefonos`
--
ALTER TABLE `Telefonos`
  ADD CONSTRAINT `fk_FisicoIdentificacion` FOREIGN KEY (`Identificacion`) REFERENCES `Fisicos` (`Identificacion`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
