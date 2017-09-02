-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 02, 2017 at 02:28 PM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mtbdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `noticias_mtb`
--

CREATE TABLE `noticias_mtb` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `cuerpo_noticia` mediumtext COLLATE utf8_spanish_ci NOT NULL,
  `imagen1` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen2` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen3` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen4` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `noticias_mtb`
--

INSERT INTO `noticias_mtb` (`id`, `titulo`, `cuerpo_noticia`, `imagen1`, `imagen2`, `imagen3`, `imagen4`, `fecha`) VALUES
(1, 'Excursion Pirenáica, prueba de alto nivel', '     Dicen que no hay mayor reto que realizar una ruta \"por montañas de verdad\". El pasado Junio, 4 de nuestros socios se propusieron subir el liston de las rutas mtb convencionales, y escalar montañas que pasan de los 2000 metros.\r\nLa ruta, que muy seguro pasará a ser un evento anual en este club, fué concienzudamente planeada, físicamente machacada durante los meses anteriores, y psicologicamente entrenada por nuestros socios.\r\nLa experiencia solo tomó 3 días. El primer día se utilizó para llegár al lugar, ocupar el camping que se usaría como base, y pegar una pequeña vuelta de reconocimiento con la bici. Si bien, despues de 700 kilómetros no hay muchas ganas de pedalear, 15 km fueron la primera toma de contacto con las verticales paredes pirenáicas.\r\nEl segundo día, sin más dilación, se ejecuto la ruta hasta monte perdido. En un principio se intento seguir un sendero de ascenso para todoterrenos del parque, pero debido a problemas con el gps, fue necesario usar a los locales, para pedir instrucciones. Después de 8 horas, de las cuales 6 hicieron falta para hacer cima.... y dos, si nada más y nada menos que dos para bajar, se dío por completada la ruta.\r\nPor supuesto, esta ruta esta disponible para todos aquellos que tengan a bien traer su unidad gps al club para descarga.\r\nLa experiencia, según palabras de los 4 valientes, es muy dura, sobre todo mentalmente, ya que como ellos comentan, a partir de las 2 horas de subida, las piernas pasan a ser de otra persona; pero, es una experiencia irrepetible.\r\n\r\nQueda abierta la preinscripcion para realizar la misma ruta en agosto de 2017.\r\n\r\nAutor: Manuel Cleta Bici', 'image/noticia1/imagen1.jpg', 'image/noticia1/imagen2.jpg', 'image/noticia1/imagen3.jpg', 'image/noticia1/imagen4.jpg', '2017-06-10'),
(2, 'Picos de Europa, desnivel y paisaje extremo', '   A principios de Mayo, se realizó una ruta propuesta por uno de nuestros socios, natural de la provincia de León, para recorrer increibles paisajes conocidos solo por habitantes de la comarca de Aguilar de Campoo, famosa por la fabricación del 45% de galletas y productos derivados del cereal en España.\r\nLa ruta, de dificultad media-alta, tuvo como protagonistas a nuestros 4 pioneros \"mtberos\", como ellos se demoninan. De nuevo el escenario es digno de las piernas más preparadas del club, debido a que esta vez se trazo ruta por las zonas colindantes al paque de los picos de europa, muy cerca de la localidad de Aguilar de Campoo.\r\nComo siempre, y debido a exigencias laborales, todo el proceso se realizó en solo 3 días. El primer y último día para viajar, y el 2 el día clave de ascenso.\r\nDe nuevo, los ciclistas superaron la barrera de 2000 metros, acumulando un desnivel de 900 metros, en 45 kilometros de ruta por el parque de los picos de Europa. \r\nComo siempre, la recomendación por parte del club para apuntarse ante una posible repetición de esta ruta el año que viene, es lo más destacado de las aventuras y relatos derivados de esta pequeña salida a tierras castellanas.\r\n\r\nComo siempre, los datos gps de la ruta están a disposición de cualquier socio que asi lo solicite.\r\n\r\nAutor: Pablo Fuentes', 'image/noticia2/imagen1.jpg', 'image/noticia2/imagen2.jpg', 'image/noticia2/imagen3.jpg', 'image/noticia2/imagen4.jpg', '2017-05-03'),
(3, 'Ruta del Chicharra, Ferrocarril en bici', '   Como cada año, se ha realizado la ruta Villena-Potries (Gandia) gracias a la organización y colaboración con el club ciclista Elda, y a la asociación de ciclistas de montaña de Villena.\r\n\r\nEn esta ocasión, esta ruta cicloturistica ha batido record total de asistencia, ya que se han superado los 1000 participantes, continuando con el progresivo aumento anual de participación. Cada vez es más grande la participación y en consecuencia la organización, que esta llegando a cotas de gran evento deportivo, por la cantidad de elementos de seguridad, protección civil y cruz roja que acompañaron a los integrantes de la ruta. Tampoco hay que olvidar el servicio de catering, que como siempre no fallo en ninguno de los 4 puntos propuestos en la ruta para reponer fuerzas. \r\nEste año, todo ha discurrido sin incidentes graves, como siempre la organización ha conseguido que el hecho más destacable vuelva a ser un pichazo.\r\n\r\nPor último, es necesario agradecer a los participantes la pronta confirmación en estos eventos, que permite la planificación y correcta organización, permitiendo elevar los standar de seguridad a niveles de competición profesional.\r\n\r\nAutor : Jesús Villa.', 'image/noticia3/imagen1.jpg', 'image/noticia3/imagen2.jpg', 'image/noticia3/imagen3.jpg', 'image/noticia3/imagen4.jpg', '2017-03-23'),
(4, 'Negociaciones con Sponsors Oficiales', '   Es dificil imaginar un mungo sin comunicación global, y sin redes sociales. Quizá tanto como que un pequeño club local de ciclismo de montaña pueda crecer y darse a conocer a nivel nacional e internacional gracias a su humilde y sencillo posicionamiento web. Pero, de vez en cuando, es necesario abrir la puerta hacia nuevas tendencias, y dejar que estas nos aporten ventajas y adversidades por igual, sin importar cual es el resultado final. Sin esta intención, surgió la página del Club Mtb, sin intención de transpasar provincias, comunidades, e incluso fronteras internacionales. Pero una vez más, la realidad ha superado la ficción, y nuestro pequeño club de montaña, ha recibido la propuesta de colaboración por parde de marcas nacionales e internacionales para su sponsorización, gracias al eco que ha tenido su pequeña y discreta página web. Sin duda, esto es gracias a los contenidos de la página, y estos a su vez gracias a los esfuerzos que nuestros socios han llevado a cabo para innovar y proponer cada día nuevas y diferentes rutas, fuera de la rutina del ámbito local, y de los viejos clichés de \"vuelta con almuerzo y para casa\" establecidos en este mundo del mountain bike. De momento, y sin poder concretar muchos detalles más, desde enero de 2017 nuestra página cuenta con los logotípos de nuestros sponsors colaboradores. Esto es solo el inicio de una relación de \"partners\" que sin duda hará crecer a todos los integrantes de la relación. A la espera de poder más detalles, nos auto-felicitamos por haber logrado lo que esta al alcance de muy pocas páginas y clubes con tan pocos recursos.\r\nSigamos creciendo con ilusión, y con \"rueda\" firme.\r\n\r\nAutor: Cesareo Augusto.', 'image/noticia4/imagen1.jpg', 'image/noticia4/imagen2.jpg', 'image/noticia4/imagen3.jpg', 'image/noticia4/imagen4.jpg', '2016-09-23');

-- --------------------------------------------------------

--
-- Table structure for table `rutas_mtb`
--

CREATE TABLE `rutas_mtb` (
  `id` int(11) NOT NULL,
  `titulo_ruta` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion_ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen1` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen2` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen3` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen4` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `rutas_mtb`
--

INSERT INTO `rutas_mtb` (`id`, `titulo_ruta`, `descripcion_ruta`, `imagen1`, `imagen2`, `imagen3`, `imagen4`, `fecha`) VALUES
(1, 'Ruta Amigos de la Bici Villena-Potries', ' Ruta de dificultad media-baja. Apta para cualquier ciclista, y cualquier montura. Esta ruta tiene la principal caracteristica de tener un desnivel positivo, lo que hace que en gran parte de los tramos que han de ser recorridos, estos sean a favor de pendiente, es decir cuesta abajo. La ruta sigue la antigua via ferroviaria del tren \"Chicharra\", y que coinciden en sus últimos tramos con la vida verde del río Serpis.\r\nLa ruta, que consta de 96 km, tiene un total de 3 puntos intermedios para avituallamiento y asistencia. La organización aporta taller movíl, ambulancias, todoterrenos y apoyo logistico en ruta. Considerada apta para cualquier nivel,es considerada como ruta tranquila de paseo, que tiene por objetivo cubrir 96 kilometros en un periodo aproximado de 7 horas. el entramado logístico de la ruta también incluye un trailer para regresar las bicicletas, y autobuses para transportar a los integrantes de vuelta a villena. Cuando se alcanza la meta del recorrido, se invita a los participantes a un menu completo, y se presenta la opción de participar en un sorteo de material deportivo. Los costes de inscripción incluyen un seguro temporal transitorio profesional valido para los días de ruta, que cubre cualquier daño sufrido por el ciclista y su montura durante la prueba. Por último, es necesario reseñar la necesidad de ser mayor de edad y estar en plenas facultades para realizar esta ruta.', 'image_rutas/ruta1/imagen1.png', 'image_rutas/ruta1/imagen2.png', 'image_rutas/ruta1/imagen3.png', 'image_rutas/ruta1/imagen4.png', '2016-03-23'),
(2, 'Ruta Amigos de la Bici Elda-Santa Pola', '  Ruta de difucltad baja.Apta para cualquier nivel y edad. La ruta tiene un desnivel positivo de 300 metros positivos. La ruta se desarrolla por antiguas vías de comunicación y senderos entre las ciudades de Elda y Santa Pola. No es necesario circular por carreteras comarcales o nacionales, evitando por lo tanto cualquier tipo de via diferente a caminos y vias de comunicación no asfaltadas.\r\nLa ruta consta de un total de 52 kilómetros. Existe un punto de avituallamiento a mitad de recorrido. La organización aporta taller movíl, ambulancias, todoterrenos y apoyo logistico en ruta. La ruta tiene por objetivo cubrir 52 kilometros en un periodo aproximado de 3 horas. El entramado logístico de la ruta incluye un trailer para regresar las bicicletas  y autobuses para transportar a los integrantes de punto de origen (Elda). El final de etapa incluye instalaciones deportivas para aseo de participantes, y menu antes de regresar a casa. Los costes de inscripción incluyen un seguro temporal transitorio profesional válido para el recorrido de la ruta, que cubre cualquier daño sufrido por el ciclista y su montura durante la prueba. Por último, es necesario reseñar la necesidad de ser mayor de edad y estar en plenas facultades para realizar esta ruta.\r\n\r\nAutor: Pascual Leches.', 'image_rutas/ruta2/imagen1.png', 'image_rutas/ruta2/imagen2.png', 'image_rutas/ruta2/imagen3.png', 'image_rutas/ruta2/imagen4.png', '2016-09-13'),
(3, 'Ruta Ascenso a la Silla del Cid via Rabosa', '  Ruta de difucltad alta. Apta solo para ciclistas de medio-alto nivel de preparacion. Desnivel negativo de 600 metros. La ruta se desarrolla desde la localidad de Elda, dirección a la Rabosa, y desde esta ascenso a la Silla del Cid.Es una ruta mixta de asfalto y senderos sin asfaltar.\r\nLa ruta consta de un total de 15 kilómetros. No hay punto de avituallamiento, por lo tanto cada partcipante debe aportar sus porpios produtos de alientación e hidratación. . La organización aporta taller movíl, ambulancias, todoterrenos y apoyo logistico en ruta. La ruta tiene por objetivo cubrir 15 kilometros en un periodo aproximado de 4 horas. Se recomienda utilizar monturas de alto nivel, de acuerdo a la más duras exigencias del terreno a practicar. Los costes de inscripción incluyen un seguro temporal transitorio profesional válido para el recorrido de la ruta, que cubre cualquier daño sufrido por el ciclista y su montura durante la prueba. Por último, es necesario reseñar la necesidad de ser mayor de edad y estar en plenas facultades para realizar esta ruta.\r\n\r\nAutor: Rafaél Aquelsoiio', 'image_rutas/ruta3/imagen1.png', 'image_rutas/ruta3/imagen2.png', 'image_rutas/ruta3/imagen3.png', 'image_rutas/ruta3/imagen4.png', '2017-01-14'),
(4, 'Ruta Club MTB circular de Sax', '  Ruta de difucltad media-baja. Apta para ciclistas de medio-bajo nivel de preparacion. Desnivel negativo de 300 metros. La ruta se desarrolla desde la localidad de Salinas, dirección a la Sax, desvio hacia Ibi, y vuelta desde la localidad de Banyeres hacia Sax.Es una ruta mixta de asfalto y senderos sin asfaltar.\r\nLa ruta consta de un total de 45 kilómetros. No hay punto de avituallamiento, por lo tanto cada partcipante debe aportar sus porpios produtos de alientación e hidratación. . La organización aporta taller movíl, ambulancias, todoterrenos y apoyo logistico en ruta. La ruta tiene por objetivo cubrir 45 kilometros en un periodo aproximado de 2 horas. Es una etapa de velocidad sin muchos puntos críticos de ascenso, planteada para velocidades medias de 29 km/h. El recorrido puede comenzarse en Salinas o en Sax. Por último, es necesario reseñar la necesidad de ser mayor de edad y estar en plenas facultades para realizar esta ruta.\r\n\r\nAutor: Casimiro Inoteveo', 'image_rutas/ruta4/imagen1.png', 'image_rutas/ruta4/imagen2.png', 'image_rutas/ruta4/imagen3.png', 'image_rutas/ruta4/imagen4.png', '2017-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios_mtb`
--

CREATE TABLE `usuarios_mtb` (
  `email` varchar(35) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `apellido1` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `apellido2` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `pass` varchar(25) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `usuarios_mtb`
--

INSERT INTO `usuarios_mtb` (`email`, `nombre`, `apellido1`, `apellido2`, `telefono`, `direccion`, `pass`) VALUES
('admin@gmail.com', 'admin', 'admin', 'admin', '000000000', 'Calle del administrador', 'admin'),
('amparo@gmail.com', 'Amparo', 'Garci', 'Aeem', '676767676', 'C/ San Pedro nÂº 8', 'alum'),
('antonio@gmail.com', 'Antonio', 'Perez', 'Castro', '663883884', 'Calle Olivo nÂº  24', 'alum'),
('carlos@gmail.com', 'Carlos', 'Campos', 'venture', '66646646', 'C/ Los olmos nÂº 3', 'alum'),
('jesuscanizaresg@gmail.com', 'Jesus', 'Cañizares', 'Gallego', '666666661', 'calle Antoni Pintor nº 5', 'alum'),
('pablo@gmail.com', 'Pablo ', 'Marmor', 'Cul', '883884883', 'c/ Tras Tirs 4', 'alum');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `noticias_mtb`
--
ALTER TABLE `noticias_mtb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rutas_mtb`
--
ALTER TABLE `rutas_mtb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios_mtb`
--
ALTER TABLE `usuarios_mtb`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `noticias_mtb`
--
ALTER TABLE `noticias_mtb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `rutas_mtb`
--
ALTER TABLE `rutas_mtb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
