-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 14-04-2025 a las 06:38:59
-- Versión del servidor: 8.0.41-0ubuntu0.24.04.1
-- Versión de PHP: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `asistencia2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `id_area` int NOT NULL,
  `area` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`id_area`, `area`) VALUES
(1, 'Almacén'),
(2, 'Garantías'),
(3, 'Marketing'),
(4, 'Producción'),
(5, 'Recursos Humanos'),
(6, 'Sistemas'),
(7, 'Ventas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int NOT NULL,
  `nombres` char(250) NOT NULL,
  `apellidos` char(250) NOT NULL,
  `id_genero` int NOT NULL,
  `nacimiento` date NOT NULL,
  `Fecha_de_inicio` date NOT NULL,
  `id_area` int NOT NULL,
  `pais` char(100) NOT NULL,
  `email` char(250) NOT NULL,
  `celular` int NOT NULL,
  `dni` char(8) NOT NULL,
  `codigo_empleado` int NOT NULL,
  `token_empleado` varchar(5) NOT NULL,
  `hora_ingreso` time NOT NULL,
  `hora_salida` time NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombres`, `apellidos`, `id_genero`, `nacimiento`, `Fecha_de_inicio`, `id_area`, `pais`, `email`, `celular`, `dni`, `codigo_empleado`, `token_empleado`, `hora_ingreso`, `hora_salida`, `estado`) VALUES
(1, 'Edelmiro', 'Exposito Colomer', 2, '1989-09-20', '2018-04-04', 4, 'Perú', 'Edelmiro.Colomer@miempresa.com', 966268530, '49000055', 781645, '10001', '08:00:00', '17:00:00', 1),
(2, 'Encarnacion', 'Calderon Olmedo', 2, '1998-06-05', '2020-05-21', 4, 'Perú', 'Encarnacion.Calderon-Olmedo@miempresa.com', 958671187, '48604947', 609904, '10002', '08:00:00', '17:00:00', 1),
(3, 'Toribio', 'Aller Parra', 2, '1988-12-04', '2017-09-28', 5, 'Perú', 'Toribio.Parra@miempresa.com', 981618071, '42478987', 930236, '10003', '08:00:00', '17:00:00', 1),
(4, 'Hugo', 'Tamarit Hoz', 2, '1990-05-01', '2018-08-14', 2, 'Perú', 'Hugo.Hoz@miempresa.com', 945372313, '49479470', 910135, '10004', '08:00:00', '17:00:00', 1),
(5, 'Renata', 'Del Alberola', 1, '1995-12-13', '2020-03-11', 2, 'Perú', 'Renata.Alberola@miempresa.com', 963638581, '43263229', 746421, '10005', '08:00:00', '17:00:00', 1),
(6, 'Prudencio', 'Carreras Cobo', 2, '1987-07-02', '2016-02-02', 3, 'Perú', 'Prudencio.Cobo@miempresa.com', 981333795, '43699159', 775428, '10006', '08:00:00', '17:00:00', 1),
(7, 'Fabio', 'De Arrieta', 2, '1978-12-24', '2020-05-08', 1, 'Perú', 'Fabio.Arrieta@miempresa.com', 951454654, '45125571', 680175, '10007', '08:00:00', '17:00:00', 1),
(8, 'Ciro Hernando', 'Puga Patino', 2, '1999-06-10', '2018-02-10', 7, 'Perú', 'Ciro.Patino@miempresa.com', 952114718, '43477581', 651696, '10008', '08:00:00', '17:00:00', 1),
(9, 'Efrain', 'Anguita Torres', 2, '1973-07-26', '2018-03-11', 5, 'Perú', 'Efrain.Torres@miempresa.com', 985253931, '44033511', 660765, '10009', '08:00:00', '17:00:00', 1),
(10, 'Claudia', 'Clemente Bertran', 1, '1993-08-30', '2020-01-03', 7, 'Perú', 'Claudia.Bertran@miempresa.com', 942663679, '45563062', 917182, '10010', '08:00:00', '17:00:00', 1),
(11, 'Brunilda', 'Paredes Fajardo', 1, '1970-12-08', '2018-01-16', 2, 'Perú', 'Brunilda.Paredes-Fajardo@miempresa.com', 967656664, '48445913', 677710, '10011', '08:00:00', '17:00:00', 1),
(12, 'Nicolas', 'Moles Colomer', 2, '1988-08-07', '2018-07-19', 6, 'Perú', 'Nicolas.Colomer@miempresa.com', 945834152, '44658549', 708096, '10012', '08:00:00', '17:00:00', 1),
(13, 'Fatima', 'Alemany Puerta', 1, '1974-04-14', '2018-11-11', 4, 'Perú', 'Fatima.Puerta@miempresa.com', 958308837, '42511180', 785210, '10013', '08:00:00', '17:00:00', 1),
(14, 'Gabriela', 'Gonzalez Robles', 1, '1972-03-17', '2016-03-01', 4, 'Perú', 'Gabriela.Robles@miempresa.com', 993055359, '45641840', 837892, '10014', '08:00:00', '17:00:00', 1),
(15, 'Norberto', 'Cerda Fernandez', 2, '1998-10-21', '2018-12-04', 3, 'Perú', 'Norberto.Cerda-Fernandez@miempresa.com', 986064889, '47484126', 724120, '10015', '08:00:00', '17:00:00', 1),
(16, 'Monica', 'Colom Larrea', 1, '1984-08-25', '2019-10-07', 1, 'Perú', 'Monica.Larrea@miempresa.com', 957139414, '49832534', 803507, '10016', '08:00:00', '17:00:00', 1),
(17, 'Eusebio', 'Gonzalez Figuerola', 2, '1974-01-13', '2016-05-27', 7, 'Perú', 'Eusebio.Figuerola@miempresa.com', 954301470, '44357879', 764947, '10017', '08:00:00', '17:00:00', 1),
(18, 'Isaac', 'Del Amaya', 2, '1979-11-30', '2018-05-12', 4, 'Perú', 'Isaac.Amaya@miempresa.com', 974226635, '43612786', 593247, '10018', '08:00:00', '17:00:00', 1),
(19, 'Victor', 'Gisbert', 2, '1972-12-22', '2018-04-24', 4, 'Perú', 'Victor.Gisbert@miempresa.com', 934019112, '42105680', 924334, '10019', '08:00:00', '17:00:00', 1),
(20, 'Paca', 'Castell Viana', 1, '1982-03-08', '2019-10-02', 3, 'Perú', 'Paca.Viana@miempresa.com', 937399354, '47808977', 793246, '10020', '08:00:00', '17:00:00', 1),
(21, 'Belen Zoraida', 'Baro Lozano', 2, '1975-06-20', '2020-12-03', 7, 'Perú', 'Belen.Lozano@miempresa.com', 998797967, '45019069', 630778, '10021', '08:00:00', '17:00:00', 1),
(22, 'Pastor', 'Fuente Arenas', 2, '1995-09-07', '2019-01-08', 5, 'Perú', 'Pastor.Arenas@miempresa.com', 992732504, '41727491', 938082, '10022', '08:00:00', '17:00:00', 1),
(23, 'Amaro', 'Quero Paredes', 2, '1980-04-12', '2019-11-14', 1, 'Perú', 'Amaro.Paredes@miempresa.com', 981526041, '45817621', 786649, '10023', '08:00:00', '17:00:00', 1),
(24, 'Margarita', 'Del Coronado', 1, '1995-07-17', '2019-10-17', 4, 'Perú', 'Margarita.Coronado@miempresa.com', 973783479, '49891976', 777297, '10024', '08:00:00', '17:00:00', 1),
(25, 'Calixto', 'Espana Jove', 2, '1995-11-25', '2020-12-13', 6, 'Perú', 'Calixto.Jove@miempresa.com', 970322803, '46883480', 519456, '10025', '08:00:00', '17:00:00', 1),
(26, 'Sofia', 'Mulet Benet', 1, '1987-05-05', '2020-08-02', 3, 'Perú', 'Sofia.Benet@miempresa.com', 966281558, '42305465', 747528, '10026', '08:00:00', '17:00:00', 1),
(27, 'Melania Ariadna', 'Barcelo Garces', 1, '1980-03-30', '2018-12-03', 4, 'Perú', 'Melania.Garces@miempresa.com', 960935226, '45306057', 622324, '10027', '08:00:00', '17:00:00', 1),
(28, 'Albina Dulce', 'Nieto Ferrandiz', 1, '1997-04-29', '2019-03-06', 2, 'Perú', 'Albina.Ferrandiz@miempresa.com', 986358493, '43194303', 929618, '10028', '08:00:00', '17:00:00', 1),
(29, 'Pepita', 'Roig', 1, '1983-08-10', '2019-12-16', 4, 'Perú', 'Pepita.Roig@miempresa.com', 937398330, '43270192', 573036, '10029', '08:00:00', '17:00:00', 1),
(30, 'Marcela', 'Leal Montes', 1, '1985-12-26', '2019-08-13', 3, 'Perú', 'Marcela.Montes@miempresa.com', 974050620, '46215602', 855786, '10030', '08:00:00', '17:00:00', 1),
(31, 'Paloma', 'Salva Carvajal', 1, '1975-03-26', '2020-06-09', 4, 'Perú', 'Paloma.Carvajal@miempresa.com', 948267587, '46133894', 528681, '10031', '08:00:00', '17:00:00', 1),
(32, 'Adelia', 'Marti Bello', 1, '1990-10-18', '2019-05-19', 4, 'Perú', 'Adelia.Bello@miempresa.com', 980882033, '47518608', 873274, '10032', '08:00:00', '17:00:00', 1),
(33, 'Atilio', 'Batalla Rios', 2, '1988-01-31', '2017-05-03', 4, 'Perú', 'Atilio.Rios@miempresa.com', 964301058, '47782486', 744621, '10033', '08:00:00', '17:00:00', 1),
(34, 'Felicia', 'Novoa Cozar', 1, '1993-05-03', '2017-06-21', 3, 'Perú', 'Felicia.Cozar@miempresa.com', 986867469, '48824366', 764539, '10034', '08:00:00', '17:00:00', 1),
(35, 'Petrona', 'Guardia Cespedes', 1, '1993-05-24', '2017-02-01', 1, 'Perú', 'Petrona.Cespedes@miempresa.com', 979097437, '41269183', 930818, '10035', '08:00:00', '17:00:00', 1),
(36, 'Tito', 'Oliveras Marmol', 2, '1981-09-30', '2019-09-23', 2, 'Perú', 'Tito.Oliveras-Marmol@miempresa.com', 953660162, '43872748', 919098, '10036', '08:00:00', '17:00:00', 1),
(37, 'Urbano', 'Plana Cornejo', 2, '1987-04-04', '2016-01-27', 4, 'Perú', 'Urbano.Cornejo@miempresa.com', 967654989, '48244183', 673973, '10037', '08:00:00', '17:00:00', 1),
(38, 'Anselma', 'Rodriguez Bernad', 1, '1984-07-28', '2020-11-29', 4, 'Perú', 'Anselma.Bernad@miempresa.com', 940151360, '44104125', 842208, '10038', '08:00:00', '17:00:00', 1),
(39, 'Adrian', 'Fabra Vina', 2, '1996-03-04', '2018-06-17', 4, 'Perú', 'Adrian.Vina@miempresa.com', 996635851, '48768326', 855711, '10039', '08:00:00', '17:00:00', 1),
(40, 'Nicolasa', 'Becerra Sanchez', 1, '1984-07-02', '2019-09-14', 3, 'Perú', 'Nicolasa.Sanchez@miempresa.com', 971617034, '41994798', 668698, '10040', '08:00:00', '17:00:00', 1),
(41, 'Agata', 'Carbajo Calvo', 1, '1982-06-02', '2019-04-26', 2, 'Perú', 'Agata.Calvo@miempresa.com', 933421374, '46139758', 924519, '10041', '08:00:00', '17:00:00', 1),
(42, 'Pepita Laura', 'Llado Franch', 1, '1992-07-12', '2020-12-10', 4, 'Perú', 'Pepita.Franch@miempresa.com', 951080267, '47563968', 626836, '10042', '08:00:00', '17:00:00', 1),
(43, 'Noemi', 'Carpio Seco', 1, '1973-03-08', '2017-06-30', 7, 'Perú', 'Noemi.Seco@miempresa.com', 933421986, '45586088', 564402, '10043', '08:00:00', '17:00:00', 1),
(44, 'Edelmira', 'Mosquera Recio', 1, '1993-03-13', '2020-05-03', 4, 'Perú', 'Edelmira.Recio@miempresa.com', 953226518, '49519820', 845407, '10044', '08:00:00', '17:00:00', 1),
(45, 'Petrona', 'Fonseca Martinez', 1, '1977-05-03', '2016-11-27', 4, 'Perú', 'Petrona.Martinez@miempresa.com', 954509731, '48483130', 759538, '10045', '08:00:00', '17:00:00', 1),
(46, 'Fernando', 'Peralta Arevalo', 2, '1983-05-29', '2019-12-18', 3, 'Perú', 'Fernando.Arevalo@miempresa.com', 970994391, '44744894', 790648, '10046', '08:00:00', '17:00:00', 1),
(47, 'Ariel Florencio', 'Davila Aramburu', 2, '1975-02-23', '2019-04-17', 7, 'Perú', 'Ariel.Aramburu@miempresa.com', 972119303, '47324834', 753979, '10047', '08:00:00', '17:00:00', 1),
(48, 'Magdalena', 'Almansa Bayona', 1, '1983-11-11', '2016-03-09', 2, 'Perú', 'Magdalena.Bayona@miempresa.com', 995573915, '43053566', 599906, '10048', '08:00:00', '17:00:00', 1),
(49, 'Amancio Chuy', 'Canas Garcia', 2, '1974-05-01', '2020-05-06', 2, 'Perú', 'Amancio.Garcia@miempresa.com', 980242626, '47068120', 848085, '10049', '08:00:00', '17:00:00', 1),
(50, 'Xiomara', 'Albero Palomares', 1, '1971-11-05', '2019-10-21', 4, 'Perú', 'Xiomara.Palomares@miempresa.com', 944355948, '44785676', 645886, '10050', '08:00:00', '17:00:00', 1),
(51, 'Moreno', 'Del Armas', 2, '1976-06-14', '2018-10-30', 2, 'Perú', 'Moreno.Armas@miempresa.com', 941889413, '42039095', 768692, '10051', '08:00:00', '17:00:00', 1),
(52, 'Mayte', 'Arjona Mir', 1, '1976-08-13', '2019-08-22', 1, 'Perú', 'Mayte.Mir@miempresa.com', 936245103, '43219283', 623959, '10052', '08:00:00', '17:00:00', 1),
(53, 'Elena', 'Conde Alonso', 1, '1977-01-02', '2020-10-23', 4, 'Perú', 'Elena.Alonso@miempresa.com', 958121919, '46716305', 674420, '10053', '08:00:00', '17:00:00', 1),
(54, 'Celia', 'Peinado Riquelme', 1, '1998-03-27', '2019-02-02', 4, 'Perú', 'Celia.Riquelme@miempresa.com', 977536860, '49563744', 799145, '10054', '08:00:00', '17:00:00', 1),
(55, 'Jose', 'Mas Diaz', 2, '1976-11-28', '2016-09-16', 4, 'Perú', 'Jose.Diaz@miempresa.com', 995343850, '44826494', 521184, '10055', '08:00:00', '17:00:00', 1),
(56, 'Marco', 'Del Almansa', 2, '1986-07-31', '2018-03-14', 1, 'Perú', 'Marco.Almansa@miempresa.com', 937362727, '45147025', 657378, '10056', '08:00:00', '17:00:00', 1),
(57, 'Ariel', 'Martorell Quero', 2, '1993-08-18', '2019-03-16', 7, 'Perú', 'Ariel.Quero@miempresa.com', 951456271, '45304047', 661528, '10057', '08:00:00', '17:00:00', 1),
(58, 'Claudia', 'Ibanez Macias', 1, '1974-12-05', '2020-01-19', 4, 'Perú', 'Claudia.Macias@miempresa.com', 966468376, '45053452', 912230, '10058', '08:00:00', '17:00:00', 1),
(59, 'Morena', 'Llanos Dalmau', 1, '1998-02-03', '2019-04-21', 3, 'Perú', 'Morena.Dalmau@miempresa.com', 988926330, '47829611', 817702, '10059', '08:00:00', '17:00:00', 1),
(60, 'Tecla Gertrudis', 'Fortuny Santana', 1, '1970-05-17', '2019-07-19', 1, 'Perú', 'Tecla.Santana@miempresa.com', 953661096, '45688770', 528430, '10060', '08:00:00', '17:00:00', 1),
(61, 'Jose Francisco', 'Marti Crespo', 2, '1983-07-04', '2019-04-27', 4, 'Perú', 'Jose.Crespo@miempresa.com', 989537015, '48796242', 909556, '10061', '08:00:00', '17:00:00', 1),
(62, 'Teresita', 'Donaire Prieto', 1, '1988-06-14', '2018-12-05', 3, 'Perú', 'Teresita.Prieto@miempresa.com', 970322076, '48654352', 863968, '10062', '08:00:00', '17:00:00', 1),
(63, 'Sofia', 'Campillo Melendez', 1, '1977-12-31', '2017-03-25', 2, 'Perú', 'Sofia.Melendez@miempresa.com', 957159792, '42828651', 921190, '10063', '08:00:00', '17:00:00', 1),
(64, 'Paola Anastasia', 'Peral Gracia', 1, '1984-12-03', '2016-01-20', 6, 'Perú', 'Paola.Gracia@miempresa.com', 978981328, '47265665', 595499, '10064', '08:00:00', '17:00:00', 1),
(65, 'Fabian', 'Ojeda Duran', 2, '1972-04-29', '2018-06-29', 4, 'Perú', 'Fabian.Duran@miempresa.com', 969941406, '49330514', 576352, '10065', '08:00:00', '17:00:00', 1),
(66, 'Pascuala', 'Conde Amat', 1, '1984-12-23', '2019-09-07', 2, 'Perú', 'Pascuala.Conde-Amat@miempresa.com', 993693222, '46141380', 707600, '10066', '08:00:00', '17:00:00', 1),
(67, 'Vicente', 'De Manzano', 2, '1970-04-13', '2019-11-25', 3, 'Perú', 'Vicente.Manzano@miempresa.com', 950062245, '48245434', 796477, '10067', '08:00:00', '17:00:00', 1),
(68, 'Serafina', 'De Suarez', 1, '1977-03-13', '2020-06-28', 6, 'Perú', 'Serafina.Suarez@miempresa.com', 983617307, '41878313', 592851, '10068', '08:00:00', '17:00:00', 1),
(69, 'Benita Susanita', 'Segarra Comas', 1, '1984-04-03', '2018-06-17', 7, 'Perú', 'Benita.Comas@miempresa.com', 960721960, '46147871', 666083, '10069', '08:00:00', '17:00:00', 1),
(70, 'Casemiro', 'Aliaga Arce', 2, '1983-05-29', '2019-12-03', 4, 'Perú', 'Casemiro.Arce@miempresa.com', 976467580, '42863534', 764875, '10070', '08:00:00', '17:00:00', 1),
(71, 'Renato', 'Machado Pla', 2, '1993-12-30', '2018-07-03', 4, 'Perú', 'Renato.Pla@miempresa.com', 951101655, '44175866', 832914, '10071', '08:00:00', '17:00:00', 1),
(72, 'Desiderio', 'Mendoza Escobar', 2, '1980-12-19', '2016-11-17', 2, 'Perú', 'Desiderio.Escobar@miempresa.com', 951766602, '43490368', 640891, '10072', '08:00:00', '17:00:00', 1),
(73, 'Aurelio', 'Ferreras Granados', 2, '1995-01-02', '2019-10-02', 3, 'Perú', 'Aurelio.Granados@miempresa.com', 988397584, '45608756', 765926, '10073', '08:00:00', '17:00:00', 1),
(74, 'Aroa', 'Pujol Belmonte', 1, '1982-01-05', '2018-08-27', 4, 'Perú', 'Aroa.Belmonte@miempresa.com', 992865960, '44526506', 621854, '10074', '08:00:00', '17:00:00', 1),
(75, 'Calista', 'De Abril', 1, '1993-09-28', '2020-11-14', 4, 'Perú', 'Calista.Abril@miempresa.com', 979980580, '47217646', 767976, '10075', '08:00:00', '17:00:00', 1),
(76, 'Teofilo', 'Contreras Tellez', 2, '1992-01-29', '2019-11-28', 2, 'Perú', 'Teofilo.Tellez@miempresa.com', 998179583, '49840909', 575470, '10076', '08:00:00', '17:00:00', 1),
(77, 'Milagros', 'Cabanas', 1, '1972-08-07', '2018-04-20', 2, 'Perú', 'Milagros.Cabanas@miempresa.com', 969723746, '41253502', 752081, '10077', '08:00:00', '17:00:00', 1),
(78, 'Gonzalo', 'Sans Miro', 2, '1980-05-08', '2020-01-10', 2, 'Perú', 'Gonzalo.Miro@miempresa.com', 980923200, '44364345', 548992, '10078', '08:00:00', '17:00:00', 1),
(79, 'Sofia', 'Bou Zamorano', 1, '1998-06-03', '2018-11-07', 2, 'Perú', 'Sofia.Zamorano@miempresa.com', 959514533, '49270417', 760842, '10079', '08:00:00', '17:00:00', 1),
(80, 'Leandro Gabino', 'Cruz Izaguirre', 2, '1980-07-16', '2019-05-06', 4, 'Perú', 'Leandro.Izaguirre@miempresa.com', 969532865, '47534191', 543507, '10080', '08:00:00', '17:00:00', 1),
(81, 'Angelina', 'Royo Canals', 1, '1999-09-11', '2016-08-27', 6, 'Perú', 'Angelina.Canals@miempresa.com', 976578194, '47550729', 757171, '10081', '08:00:00', '17:00:00', 1),
(82, 'Pio', 'Fonseca Granados', 2, '1983-03-15', '2016-06-23', 7, 'Perú', 'Pio.Fonseca-Granados@miempresa.com', 962809398, '45021404', 888693, '10082', '08:00:00', '17:00:00', 1),
(83, 'Luis Miguel', 'Cuadrado Gual', 2, '1984-04-15', '2020-08-26', 7, 'Perú', 'Luis.Gual@miempresa.com', 947045385, '43240139', 940952, '10083', '08:00:00', '17:00:00', 1),
(84, 'Blanca', 'Lucas Cortes', 1, '1978-02-12', '2018-01-16', 4, 'Perú', 'Blanca.Cortes@miempresa.com', 942289187, '41127482', 570727, '10084', '08:00:00', '17:00:00', 1),
(85, 'Jose', 'Luis Arevalo', 2, '1992-09-25', '2018-07-05', 4, 'Perú', 'Jose.Arevalo@miempresa.com', 970639055, '47264223', 745128, '10085', '08:00:00', '17:00:00', 1),
(86, 'Leonel', 'Sierra Fajardo', 2, '1970-12-12', '2019-01-16', 1, 'Perú', 'Leonel.Fajardo@miempresa.com', 967053495, '47005095', 699543, '10086', '08:00:00', '17:00:00', 1),
(87, 'Calixto', 'Palacio Casas', 2, '1978-04-29', '2019-06-19', 4, 'Perú', 'Calixto.Casas@miempresa.com', 938241950, '46721275', 836412, '10087', '08:00:00', '17:00:00', 1),
(88, 'Eugenio', 'Pla Alegre', 2, '1974-02-11', '2017-10-01', 7, 'Perú', 'Eugenio.Alegre@miempresa.com', 973986889, '46426382', 792809, '10088', '08:00:00', '17:00:00', 1),
(89, 'Daniela', 'Arana', 1, '1996-08-12', '2020-01-26', 1, 'Perú', 'Daniela.Arana@miempresa.com', 933456112, '44280246', 907542, '10089', '08:00:00', '17:00:00', 1),
(90, 'Amancio', 'Casares Francisco', 2, '1976-04-11', '2019-07-20', 6, 'Perú', 'Amancio.Francisco@miempresa.com', 989320749, '42789145', 869157, '10090', '08:00:00', '17:00:00', 1),
(91, 'Leopoldo', 'Lamas Vilaplana', 2, '1989-11-25', '2020-07-27', 4, 'Perú', 'Leopoldo.Vilaplana@miempresa.com', 995990007, '49820415', 819438, '10091', '13:00:00', '22:00:00', 1),
(92, 'Pascual', 'Del Haro', 2, '1996-05-28', '2018-10-11', 4, 'Perú', 'Pascual.Haro@miempresa.com', 964287581, '47129506', 833697, '10092', '13:00:00', '22:00:00', 1),
(93, 'Dionisia', 'Llamas', 1, '1998-01-16', '2019-07-11', 4, 'Perú', 'Dionisia.Llamas@miempresa.com', 952036817, '43012356', 567172, '10093', '13:00:00', '22:00:00', 1),
(94, 'Amada', 'Falco Llabres', 1, '1987-02-25', '2019-08-17', 4, 'Perú', 'Amada.Llabres@miempresa.com', 963638812, '43802950', 609904, '10094', '13:00:00', '22:00:00', 1),
(95, 'Oscar', 'Enriquez Acedo', 2, '1988-08-31', '2020-11-04', 3, 'Perú', 'Oscar.Acedo@miempresa.com', 989063482, '42172490', 906309, '10095', '13:00:00', '22:00:00', 1),
(96, 'Cecilio', 'Bastida Segui', 2, '1971-11-21', '2017-07-21', 6, 'Perú', 'Cecilio.Segui@miempresa.com', 958388564, '43565886', 545551, '10096', '13:00:00', '22:00:00', 1),
(97, 'Leocadia', 'Aznar Revilla', 1, '1989-05-04', '2018-04-10', 2, 'Perú', 'Leocadia.Revilla@miempresa.com', 981653292, '42967858', 564965, '10097', '13:00:00', '22:00:00', 1),
(98, 'Anabel', 'Iniesta Hierro', 1, '1987-06-04', '2017-05-03', 5, 'Perú', 'Anabel.Hierro@miempresa.com', 984761323, '49273015', 692059, '10098', '13:00:00', '22:00:00', 1),
(99, 'Lilia', 'Narvaez Batalla', 1, '1982-05-09', '2018-11-29', 2, 'Perú', 'Lilia.Batalla@miempresa.com', 941167196, '44936136', 641899, '10099', '13:00:00', '22:00:00', 1),
(100, 'Adriana', 'Egea Luis', 1, '1998-01-30', '2018-08-27', 3, 'Perú', 'Adriana.Luis@miempresa.com', 957729753, '44511030', 753430, '10100', '13:00:00', '22:00:00', 1),
(101, 'Pepita', 'Del Gallart', 1, '1970-01-04', '2019-11-17', 2, 'Perú', 'Pepita.Gallart@miempresa.com', 938747045, '47176840', 553903, '10101', '13:00:00', '22:00:00', 1),
(102, 'Luis Angel', 'Tellez Conde', 2, '1971-03-03', '2019-10-02', 3, 'Perú', 'Luis.Conde@miempresa.com', 969503526, '48153058', 840546, '10102', '13:00:00', '22:00:00', 1),
(103, 'Angelina', 'Sanmiguel Gallo', 1, '2000-02-25', '2019-11-24', 3, 'Perú', 'Angelina.Gallo@miempresa.com', 983396588, '43533677', 611037, '10103', '13:00:00', '22:00:00', 1),
(104, 'Catalina', 'Sole Porras', 1, '1971-08-21', '2020-02-06', 2, 'Perú', 'Catalina.Porras@miempresa.com', 939663539, '43306957', 580482, '10104', '13:00:00', '22:00:00', 1),
(105, 'Manuela', 'Benavides Galvez', 1, '1993-05-02', '2018-10-24', 3, 'Perú', 'Manuela.Galvez@miempresa.com', 951152529, '46411877', 809658, '10105', '13:00:00', '22:00:00', 1),
(106, 'Teresa', 'Lastra Serra', 1, '1987-09-22', '2020-05-28', 7, 'Perú', 'Teresa.Serra@miempresa.com', 961406912, '45500531', 576308, '10106', '13:00:00', '22:00:00', 1),
(107, 'Marianela', 'Jover Carballo', 1, '1995-08-19', '2016-05-17', 1, 'Perú', 'Marianela.Carballo@miempresa.com', 979131630, '43367383', 613467, '10107', '13:00:00', '22:00:00', 1),
(108, 'Ainara', 'Zaragoza Crespi', 1, '1977-06-08', '2019-01-22', 4, 'Perú', 'Ainara.Crespi@miempresa.com', 959268345, '49810039', 853276, '10108', '13:00:00', '22:00:00', 1),
(109, 'Claudio Porfirio', 'Francisco Muniz', 2, '1979-06-30', '2020-09-11', 3, 'Perú', 'Claudio.Muniz@miempresa.com', 958458666, '43409598', 710741, '10109', '13:00:00', '22:00:00', 1),
(110, 'Andres', 'Felipe Cuevas', 2, '1987-10-16', '2018-09-19', 3, 'Perú', 'Andres.Cuevas@miempresa.com', 941763239, '49622464', 670277, '10110', '13:00:00', '22:00:00', 1),
(111, 'Encarnacion', 'Fiol Domingo', 1, '1999-06-28', '2016-04-20', 7, 'Perú', 'Encarnacion.Domingo@miempresa.com', 940571499, '43120706', 688138, '10111', '13:00:00', '22:00:00', 1),
(112, 'Fatima', 'De Cisneros', 1, '1989-10-02', '2019-10-04', 6, 'Perú', 'Fatima.Cisneros@miempresa.com', 975889103, '49213797', 729576, '10112', '13:00:00', '22:00:00', 1),
(113, 'Maximino', 'Vigil Morante', 2, '1995-06-05', '2016-10-16', 4, 'Perú', 'Maximino.Morante@miempresa.com', 942084716, '41941475', 819975, '10113', '13:00:00', '22:00:00', 1),
(114, 'Maria Luisa', 'Antunez Giron', 1, '1989-11-23', '2017-02-04', 4, 'Perú', 'Maria.Giron@miempresa.com', 988815609, '47161963', 511865, '10114', '13:00:00', '22:00:00', 1),
(115, 'Beatriz', 'Bello Godoy', 1, '1974-03-01', '2019-06-02', 4, 'Perú', 'Beatriz.Godoy@miempresa.com', 963104666, '45163270', 853990, '10115', '13:00:00', '22:00:00', 1),
(116, 'Eloisa Rosalina', 'Pont Madrigal', 1, '1980-03-07', '2019-03-03', 2, 'Perú', 'Eloisa.Madrigal@miempresa.com', 956853539, '44862414', 672264, '10116', '13:00:00', '22:00:00', 1),
(117, 'Iban', 'Rios Calvet', 2, '1976-09-08', '2019-10-06', 2, 'Perú', 'Iban.Calvet@miempresa.com', 947469273, '42448598', 742314, '10117', '13:00:00', '22:00:00', 1),
(118, 'Rufino', 'Mascaro Borrell', 2, '1994-09-11', '2018-02-15', 7, 'Perú', 'Rufino.Mascaro-Borrell@miempresa.com', 948561787, '43420540', 767182, '10118', '13:00:00', '22:00:00', 1),
(119, 'Felix', 'Paredes Mulet', 2, '1970-10-19', '2019-04-03', 2, 'Perú', 'Felix.Mulet@miempresa.com', 972595602, '47427958', 886086, '10119', '13:00:00', '22:00:00', 1),
(120, 'Lucho', 'Aznar', 2, '1972-01-13', '2016-11-13', 3, 'Perú', 'Lucho.Aznar@miempresa.com', 972594649, '48184139', 830921, '10120', '13:00:00', '22:00:00', 1),
(121, 'Encarnacion', 'Del Aguilo', 1, '1977-06-07', '2019-10-24', 2, 'Perú', 'Encarnacion.Aguilr@miempresa.com', 991434502, '44035648', 903971, '10121', '13:00:00', '22:00:00', 1),
(122, 'Juan Bautista', 'De Campos', 2, '1988-07-29', '2019-07-28', 4, 'Perú', 'Juan.Campos@miempresa.com', 948266782, '47553867', 615927, '10122', '13:00:00', '22:00:00', 1),
(123, 'Leonor', 'Ugarte Salas', 2, '1972-07-13', '2020-10-30', 4, 'Perú', 'Leonor.Salas@miempresa.com', 997405770, '46368690', 693987, '10123', '13:00:00', '22:00:00', 1),
(124, 'Hermenegildo', 'De Tolosa', 2, '1999-04-24', '2018-01-25', 2, 'Perú', 'Hermenegildo.Tolosa@miempresa.com', 946524214, '45746739', 739161, '10124', '13:00:00', '22:00:00', 1),
(125, 'Lisandro', 'Benavides Barba', 2, '1982-01-30', '2017-06-28', 4, 'Perú', 'Lisandro.Barba@miempresa.com', 966063106, '43484525', 707161, '10125', '13:00:00', '22:00:00', 1),
(126, 'Zacarias', 'Milla Fernandez', 2, '1980-03-24', '2019-08-11', 2, 'Perú', 'Zacarias.Fernandez@miempresa.com', 971369300, '45674332', 825364, '10126', '13:00:00', '22:00:00', 1),
(127, 'Leyre', 'Ponce Quintana', 1, '1989-03-23', '2017-07-27', 2, 'Perú', 'Leyre.Ponce-Quintana@miempresa.com', 959930312, '41199851', 736735, '10127', '13:00:00', '22:00:00', 1),
(128, 'Palmira', 'Moreno Manzanares', 1, '1973-04-20', '2018-07-28', 5, 'Perú', 'Palmira.Manzanares@miempresa.com', 933421896, '48020252', 680989, '10128', '13:00:00', '22:00:00', 1),
(129, 'Amancio', 'Bermudez Flor', 2, '1979-10-23', '2020-07-18', 3, 'Perú', 'Amancio.Flor@miempresa.com', 975736657, '44823075', 925223, '10129', '13:00:00', '22:00:00', 1),
(130, 'Baltasar', 'Tellez Vargas', 2, '1985-01-08', '2019-07-29', 4, 'Perú', 'Baltasar.Vargas@miempresa.com', 948757603, '44396540', 587057, '10130', '13:00:00', '22:00:00', 1),
(131, 'Maria Fernanda', 'Delia Rovira Taboada', 1, '1974-07-26', '2019-09-18', 4, 'Perú', 'Maria.Taboada@miempresa.com', 933764076, '43245884', 616025, '10131', '13:00:00', '22:00:00', 1),
(132, 'Hector', 'Galvan', 2, '1983-01-29', '2017-01-30', 3, 'Perú', 'Hector.Galvan@miempresa.com', 954521742, '46118050', 684050, '10132', '13:00:00', '22:00:00', 1),
(133, 'Matias', 'Rincon Roldan', 2, '1995-10-17', '2018-01-03', 6, 'Perú', 'Matias.Rincon-Roldan@miempresa.com', 971840452, '47378691', 726956, '10133', '13:00:00', '22:00:00', 1),
(134, 'Benigno', 'Folch Villaverde', 2, '1988-04-17', '2017-09-04', 4, 'Perú', 'Benigno.Villaverde@miempresa.com', 990149065, '43382716', 633581, '10134', '13:00:00', '22:00:00', 1),
(135, 'Ariel', 'Bejarano Gimenez', 2, '1990-11-10', '2018-06-14', 4, 'Perú', 'Ariel.Gimenez@miempresa.com', 999952919, '42051858', 636135, '10135', '13:00:00', '22:00:00', 1),
(136, 'Roman', 'Villa Marques', 2, '1993-12-24', '2019-11-28', 2, 'Perú', 'Roman.Marques@miempresa.com', 954624229, '48467375', 931287, '10136', '13:00:00', '22:00:00', 1),
(137, 'Dimas', 'Ibarra Dominguez', 1, '1991-02-24', '2020-02-09', 4, 'Perú', 'Dimas.Dominguez@miempresa.com', 937398983, '42742719', 756836, '10137', '13:00:00', '22:00:00', 1),
(138, 'Inigo', 'Pavon Pol', 2, '1999-11-08', '2020-05-12', 4, 'Perú', 'Inigo.Pol@miempresa.com', 982095325, '48895705', 859461, '10138', '13:00:00', '22:00:00', 1),
(139, 'Fernanda', 'Olive Garmendia', 1, '1973-07-18', '2018-05-29', 2, 'Perú', 'Fernanda.Garmendia@miempresa.com', 991718005, '44101823', 520899, '10139', '13:00:00', '22:00:00', 1),
(140, 'Norberto Chucho', 'Raya Saldaña', 2, '1999-02-19', '2019-03-22', 3, 'Perú', 'Norberto.Saldaña@miempresa.com', 981041344, '48252978', 913747, '10140', '13:00:00', '22:00:00', 1),
(141, 'Brunilda', 'Paredes Vilar', 1, '1977-01-07', '2020-11-30', 4, 'Perú', 'Brunilda.Vilar@miempresa.com', 957159077, '47862152', 626936, '10141', '13:00:00', '22:00:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id_genero` int NOT NULL,
  `genero` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id_genero`, `genero`) VALUES
(1, 'femenino'),
(2, 'masculino'),
(3, 'no definido');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planilla`
--

CREATE TABLE `planilla` (
  `id_planilla` int NOT NULL,
  `id_empleado` int NOT NULL,
  `tipo_contrato` char(50) NOT NULL,
  `id_turno` int NOT NULL,
  `salario` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `planilla`
--

INSERT INTO `planilla` (`id_planilla`, `id_empleado`, `tipo_contrato`, `id_turno`, `salario`) VALUES
(1, 1, 'planilla', 2, 1560),
(2, 2, 'planilla', 2, 3247),
(3, 3, 'planilla', 1, 2506),
(4, 4, 'planilla', 1, 1828),
(5, 5, 'planilla', 1, 970),
(6, 6, 'planilla', 1, 2332),
(7, 7, 'planilla', 1, 1959),
(8, 8, 'planilla', 1, 3394),
(9, 9, 'planilla', 1, 1479),
(10, 10, 'planilla', 1, 1186),
(11, 11, 'planilla', 1, 1485),
(12, 12, 'planilla', 1, 2016),
(13, 13, 'planilla', 2, 1999),
(14, 14, 'planilla', 2, 3404),
(15, 15, 'planilla', 1, 889),
(16, 16, 'planilla', 1, 930),
(17, 17, 'planilla', 1, 3149),
(18, 18, 'planilla', 2, 1295),
(19, 19, 'planilla', 2, 2162),
(20, 20, 'planilla', 1, 2180),
(21, 21, 'planilla', 1, 1475),
(22, 22, 'planilla', 1, 1290),
(23, 23, 'planilla', 1, 1764),
(24, 24, 'planilla', 2, 2682),
(25, 25, 'planilla', 1, 3044),
(26, 26, 'planilla', 1, 890),
(27, 27, 'planilla', 2, 2207),
(28, 28, 'planilla', 1, 2136),
(29, 29, 'honorarios', 2, 1161),
(30, 30, 'planilla', 1, 830),
(31, 31, 'planilla', 2, 2977),
(32, 32, 'planilla', 2, 3151),
(33, 33, 'planilla', 2, 1551),
(34, 34, 'planilla', 1, 2099),
(35, 35, 'planilla', 1, 808),
(36, 36, 'planilla', 1, 984),
(37, 37, 'planilla', 2, 1011),
(38, 38, 'planilla', 2, 2026),
(39, 39, 'planilla', 2, 2801),
(40, 40, 'planilla', 1, 3208),
(41, 41, 'planilla', 1, 2129),
(42, 42, 'planilla', 2, 3344),
(43, 43, 'planilla', 1, 2836),
(44, 44, 'planilla', 2, 1960),
(45, 45, 'planilla', 2, 1478),
(46, 46, 'planilla', 1, 1981),
(47, 47, 'planilla', 1, 2064),
(48, 48, 'planilla', 1, 1045),
(49, 49, 'planilla', 1, 2022),
(50, 50, 'planilla', 2, 2383),
(51, 51, 'planilla', 1, 1563),
(52, 52, 'planilla', 1, 919),
(53, 53, 'planilla', 2, 988),
(54, 54, 'planilla', 2, 2631),
(55, 55, 'planilla', 2, 2368),
(56, 56, 'planilla', 1, 2679),
(57, 57, 'planilla', 1, 2423),
(58, 58, 'honorarios', 2, 2115),
(59, 59, 'planilla', 1, 2969),
(60, 60, 'planilla', 1, 2467),
(61, 61, 'planilla', 2, 3244),
(62, 62, 'planilla', 1, 2132),
(63, 63, 'planilla', 1, 994),
(64, 64, 'planilla', 1, 2304),
(65, 65, 'planilla', 2, 1207),
(66, 66, 'planilla', 1, 802),
(67, 67, 'planilla', 1, 2065),
(68, 68, 'planilla', 1, 2882),
(69, 69, 'planilla', 1, 2042),
(70, 70, 'planilla', 2, 2017),
(71, 71, 'planilla', 2, 3215),
(72, 72, 'planilla', 1, 2957),
(73, 73, 'planilla', 1, 891),
(74, 74, 'planilla', 2, 1971),
(75, 75, 'planilla', 2, 2317),
(76, 76, 'planilla', 1, 1657),
(77, 77, 'planilla', 1, 3053),
(78, 78, 'planilla', 1, 1887),
(79, 79, 'planilla', 1, 1457),
(80, 80, 'planilla', 2, 2581),
(81, 81, 'planilla', 1, 901),
(82, 82, 'planilla', 1, 898),
(83, 83, 'planilla', 1, 2878),
(84, 84, 'planilla', 2, 2539),
(85, 85, 'planilla', 2, 2533),
(86, 86, 'planilla', 1, 885),
(87, 87, 'planilla', 2, 1166),
(88, 88, 'planilla', 1, 2022),
(89, 89, 'planilla', 1, 1752),
(90, 90, 'planilla', 1, 3157),
(91, 91, 'planilla', 3, 3211),
(92, 92, 'planilla', 3, 1062),
(93, 93, 'planilla', 3, 1406),
(94, 94, 'planilla', 3, 3084),
(95, 95, 'planilla', 3, 1815),
(96, 96, 'planilla', 3, 1861),
(97, 97, 'planilla', 3, 3088),
(98, 98, 'planilla', 3, 3071),
(99, 99, 'planilla', 3, 3298),
(100, 100, 'planilla', 3, 828),
(101, 101, 'planilla', 3, 2404),
(102, 102, 'planilla', 3, 3410),
(103, 103, 'planilla', 3, 1817),
(104, 104, 'planilla', 3, 2923),
(105, 105, 'planilla', 3, 3138),
(106, 106, 'planilla', 3, 3139),
(107, 107, 'planilla', 3, 3263),
(108, 108, 'planilla', 3, 1258),
(109, 109, 'planilla', 3, 2527),
(110, 110, 'planilla', 3, 3017),
(111, 111, 'planilla', 3, 1639),
(112, 112, 'planilla', 3, 1867),
(113, 113, 'planilla', 3, 2314),
(114, 114, 'planilla', 3, 2679),
(115, 115, 'planilla', 3, 3166),
(116, 116, 'planilla', 3, 2429),
(117, 117, 'planilla', 3, 1865),
(118, 118, 'planilla', 3, 868),
(119, 119, 'planilla', 3, 3411),
(120, 120, 'planilla', 3, 3324),
(121, 121, 'planilla', 3, 2715),
(122, 122, 'planilla', 3, 2664),
(123, 123, 'honorarios', 3, 1801),
(124, 124, 'planilla', 3, 1452),
(125, 125, 'planilla', 3, 2358),
(126, 126, 'planilla', 3, 784),
(127, 127, 'planilla', 3, 1423),
(128, 128, 'planilla', 3, 2174),
(129, 129, 'planilla', 3, 2182),
(130, 130, 'planilla', 3, 2437),
(131, 131, 'planilla', 3, 926),
(132, 132, 'planilla', 3, 1506),
(133, 133, 'planilla', 3, 3159),
(134, 134, 'planilla', 3, 1117),
(135, 135, 'planilla', 3, 2379),
(136, 136, 'planilla', 3, 2372),
(137, 137, 'planilla', 3, 2908),
(138, 138, 'planilla', 3, 2019),
(139, 139, 'planilla', 3, 877),
(140, 140, 'planilla', 3, 1043),
(141, 141, 'planilla', 3, 976);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_asistencia`
--

CREATE TABLE `registro_asistencia` (
  `id` int NOT NULL,
  `id_empleado` int NOT NULL,
  `fecha` date NOT NULL,
  `hora_entrada` time NOT NULL,
  `hora_salida` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno`
--

CREATE TABLE `turno` (
  `id_turno` int NOT NULL,
  `turno` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `turno`
--

INSERT INTO `turno` (`id_turno`, `turno`) VALUES
(1, 'Administrativo'),
(2, 'Operativo'),
(3, 'Alternativo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id_area`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_area` (`id_area`),
  ADD KEY `id_genero` (`id_genero`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id_genero`);

--
-- Indices de la tabla `planilla`
--
ALTER TABLE `planilla`
  ADD PRIMARY KEY (`id_planilla`),
  ADD KEY `id_empleado` (`id_empleado`),
  ADD KEY `id_turno` (`id_turno`);

--
-- Indices de la tabla `registro_asistencia`
--
ALTER TABLE `registro_asistencia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indices de la tabla `turno`
--
ALTER TABLE `turno`
  ADD PRIMARY KEY (`id_turno`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `area`
--
ALTER TABLE `area`
  MODIFY `id_area` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id_genero` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `planilla`
--
ALTER TABLE `planilla`
  MODIFY `id_planilla` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT de la tabla `registro_asistencia`
--
ALTER TABLE `registro_asistencia`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `turno`
--
ALTER TABLE `turno`
  MODIFY `id_turno` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`id_area`) REFERENCES `area` (`id_area`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `empleados_ibfk_2` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id_genero`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `planilla`
--
ALTER TABLE `planilla`
  ADD CONSTRAINT `planilla_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `planilla_ibfk_2` FOREIGN KEY (`id_turno`) REFERENCES `turno` (`id_turno`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `registro_asistencia`
--
ALTER TABLE `registro_asistencia`
  ADD CONSTRAINT `registro_asistencia_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
