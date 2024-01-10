-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: rb
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `actividades`
--

DROP TABLE IF EXISTS `actividades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actividades` (
  `id_actividad` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `estatus` varchar(45) DEFAULT NULL,
  `fechaC` datetime DEFAULT NULL,
  `fechaF` datetime DEFAULT NULL,
  `id_usuario` int DEFAULT NULL,
  PRIMARY KEY (`id_actividad`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividades`
--

LOCK TABLES `actividades` WRITE;
/*!40000 ALTER TABLE `actividades` DISABLE KEYS */;
INSERT INTO `actividades` VALUES (1,'Riego diario','Regar la planta todos los días por la mañana','completada','2023-12-01 08:00:00','2023-12-01 08:15:00',1),(2,'Podar hojas marchitas','Retirar hojas secas o marchitas','sin completar','2023-12-02 10:30:00','2023-12-02 10:45:00',1),(3,'Abono mensual','Aplicar abono cada mes','sin fecha','2023-12-03 09:00:00',NULL,1),(4,'Revisión de plagas','Buscar y tratar cualquier plaga en la planta','sin completar','2023-12-04 14:00:00','2023-12-04 14:30:00',1),(5,'Exposición al sol','Asegurarse de que la planta reciba suficiente luz solar','completada','2023-12-05 12:00:00','2023-12-05 13:00:00',1),(6,'Cambio de maceta','Transplantar la planta a una maceta más grande','vencida','2023-12-06 11:00:00','2023-12-06 11:30:00',1),(7,'Fertilizante quincenal','Aplicar fertilizante cada dos semanas','sin fecha','2023-12-07 09:30:00',NULL,1),(8,'Limpieza de hojas','Limpiar el polvo de las hojas con un paño húmedo','completada','2023-12-08 16:00:00','2023-12-08 16:30:00',1),(9,'Control de riego','Verificar que el suelo no esté demasiado seco o húmedo','sin completar','2023-12-09 10:00:00','2023-12-09 10:30:00',1),(10,'Poda de crecimiento','Recortar los brotes para controlar el crecimiento','sin fecha','2023-12-10 13:30:00',NULL,1),(11,'Fertilizante líquido','Aplicar fertilizante líquido cada 15 días','sin completar','2023-12-11 11:30:00','2023-12-11 12:00:00',1),(12,'Rotación de la planta','Girar la planta para una exposición uniforme al sol','completada','2023-12-12 09:45:00','2023-12-12 10:00:00',1),(13,'Revisión de raíces','Verificar el estado de las raíces','vencida','2023-12-13 15:00:00','2023-12-13 15:30:00',1),(14,'Pulverización foliar','Rociar las hojas con agua para aumentar la humedad','sin fecha','2023-12-14 10:45:00',NULL,1),(15,'Control de temperatura','Mantener la planta alejada de corrientes de aire frío','completada','2023-12-15 12:30:00','2023-12-15 13:00:00',1);
/*!40000 ALTER TABLE `actividades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historiales`
--

DROP TABLE IF EXISTS `historiales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historiales` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historiales`
--

LOCK TABLES `historiales` WRITE;
/*!40000 ALTER TABLE `historiales` DISABLE KEYS */;
/*!40000 ALTER TABLE `historiales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagenes`
--

DROP TABLE IF EXISTS `imagenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imagenes` (
  `sku` int NOT NULL AUTO_INCREMENT,
  `imagen` varchar(255) DEFAULT NULL,
  `id_planta` int DEFAULT NULL,
  PRIMARY KEY (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagenes`
--

LOCK TABLES `imagenes` WRITE;
/*!40000 ALTER TABLE `imagenes` DISABLE KEYS */;
INSERT INTO `imagenes` VALUES (1,'images/plantas/1.jpg',1),(2,'images/plantas/2.jpg',2),(3,'images/plantas/3.jpg',3),(4,'images/plantas/4.jpg',4),(5,'images/plantas/5.jpg',5),(6,'images/plantas/6.jpg',6),(7,'images/plantas/7.jpg',7),(8,'images/plantas/8.jpg',8),(9,'images/plantas/9.jpg',9),(10,'images/plantas/10.jpg',10),(11,'images/plantas/11.jpg',11),(12,'images/plantas/12.jpg',12),(13,'images/plantas/13.jpg',13),(14,'images/plantas/14.jpg',14),(15,'images/plantas/15.jpg',15),(16,'images/plantas/16.jpg',16),(17,'images/plantas/17.jpg',17),(18,'images/plantas/18.jpg',18),(19,'images/plantas/19.jpg',19),(20,'images/plantas/20.jpg',20),(21,'images/plantas/21.jpg',21),(22,'images/plantas/22.jpg',22),(23,'images/plantas/23.jpg',23),(24,'images/plantas/24.jpg',24),(25,'images/plantas/25.jpg',25),(26,'images/plantas/26.jpg',26),(27,'images/plantas/27.jpg',27),(28,'images/plantas/28.jpg',28),(29,'images/plantas/29.jpg',29),(30,'images/plantas/30.jpg',30),(31,'images/plantas/31.jpg',31),(32,'images/plantas/32.jpg',32),(33,'images/plantas/33.jpg',33),(34,'images/plantas/34.jpg',34),(35,'images/plantas/35.jpg',35),(36,'images/plantas/36.jpg',36),(37,'images/plantas/37.jpg',37),(38,'images/plantas/38.jpg',38),(39,'images/plantas/39.jpg',39),(40,'images/plantas/40.jpg',40),(41,'images/plantas/41.jpg',41),(42,'images/plantas/42.jpg',42),(43,'images/plantas/43.jpg',43),(44,'images/plantas/44.jpg',44),(45,'images/plantas/45.jpg',45),(46,'images/plantas/48.jpg',48),(47,'images/plantas/49.jpg',49),(48,'images/plantas/50.jpg',50),(49,'images/plantas/51.jpg',51),(50,'images/plantas/52.jpg',52),(51,'images/plantas/53.jpg',53),(52,'images/plantas/54.jpg',54),(53,'images/plantas/55.jpg',55);
/*!40000 ALTER TABLE `imagenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plantas`
--

DROP TABLE IF EXISTS `plantas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plantas` (
  `id_planta` int NOT NULL AUTO_INCREMENT,
  `nombre_comun` varchar(255) DEFAULT NULL,
  `tamaño` varchar(255) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `filo` varchar(255) DEFAULT NULL,
  `subfilo` varchar(255) DEFAULT NULL,
  `superclase` varchar(255) DEFAULT NULL,
  `sombra` varchar(50) DEFAULT NULL,
  `descripcion` text,
  `en_peligro` varchar(50) DEFAULT NULL,
  `nombre_cientifico` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_planta`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plantas`
--

LOCK TABLES `plantas` WRITE;
/*!40000 ALTER TABLE `plantas` DISABLE KEYS */;
INSERT INTO `plantas` VALUES (1,'Maíz','Puede alcanzar alturas de hasta 2-3 metros','Planta herbácea','Magnoliophyta (Angiospermas)','Monocotiledóneas','Liliopsida','De sol','El maíz es una planta cultivada principalmente por sus granos comestibles. Tiene un tallo erecto y hojas largas y estrechas.','No está en peligro ni amenazada.','Zea mays'),(2,'Caléndula','Altura de 30-60 cm','Planta herbácea','Magnoliophyta (Angiospermas)','Dicotiledóneas','Magnoliopsida','De sol','La caléndula es conocida por sus brillantes flores amarillas o naranjas. Tiene propiedades medicinales y se utiliza en productos para el cuidado de la piel.','No está en peligro ni amenazada.','Calendula officinalis'),(3,'Capuchina','Altura de 30-40 cm','Planta herbácea','Magnoliophyta (Angiospermas)','Dicotiledóneas','Magnoliopsida','De sol','La capuchina tiene flores vibrantes y hojas redondas. Es comestible y a menudo se utiliza en ensaladas. Además, tiene propiedades medicinales y repelentes de insectos.','No está en peligro ni amenazada.','Tropaeolum majus'),(4,'Petunia','Varía según la especie','Planta herbácea','Magnoliophyta (Angiospermas)','Dicotiledóneas','Magnoliopsida','De sol','Las petunias son conocidas por sus vistosas flores en forma de trompeta. Vienen en una variedad de colores y son populares en jardinería ornamental.','No está en peligro ni amenazada.','Petunia spp.'),(5,'Amaranto','Varía según la especie','Planta herbácea','Magnoliophyta (Angiospermas)','Dicotiledóneas','Magnoliopsida','De sol','El amaranto es apreciado por sus hojas comestibles y sus granos. Algunas especies se cultivan como cereales y otras como verduras de hojas.','No está en peligro ni amenazada.','Amaranthus spp.'),(6,'Col','Altura de 30-90 cm','Planta herbácea','Magnoliophyta (Angiospermas)','Dicotiledóneas','Magnoliopsida','De sol','La col es una planta comestible con hojas verdes compactas. Se cultiva en varias variedades, como repollo, col rizada y col de Bruselas.','No está en peligro ni amenazada.','Brassica oleracea'),(7,'Digitalis','Altura de 1-2 metros','Planta herbácea','Magnoliophyta (Angiospermas)','Dicotiledóneas','Magnoliopsida','De sol','La digitalis, también conocida como dedalera, tiene flores en forma de campana y es venenosa. A pesar de su toxicidad, se ha utilizado en medicina para problemas cardíacos.','No está en peligro ni amenazada.','Digitalis purpurea'),(8,'Borraja','Altura de 60-100 cm','Planta herbácea','Magnoliophyta (Angiospermas)','Dicotiledóneas','Magnoliopsida','De sol','La borraja tiene flores azules y hojas vellosas. Es comestible y se utiliza en ensaladas. Además, tiene propiedades medicinales.','No está en peligro ni amenazada.','Borago officinalis'),(9,'Verbena','Varía según la especie','Planta herbácea','Magnoliophyta (Angiospermas)','Dicotiledóneas','Magnoliopsida','De sol','La verbena es conocida por sus flores en racimos y se utiliza en jardinería ornamental. Algunas especies también tienen propiedades medicinales.','No está en peligro ni amenazada.','Verbena spp.'),(10,'Acelga','Altura de 30-60 cm','Planta herbácea','Magnoliophyta (Angiospermas)','Dicotiledóneas','Magnoliopsida','De sol','La acelga es una verdura de hojas comestibles. Tiene hojas grandes y coloridas, y es apreciada por su valor nutricional en la cocina.','No está en peligro ni amenazada.','Beta vulgaris var. cicla'),(11,'Pothos o Epipremnum','Varía según el ambiente','Planta trepadora','Magnoliophyta (Angiospermas)','Dicotiledóneas','Magnoliopsida','De sombra parcial a luz brillante','El pothos es una planta de interior popular debido a su facilidad de cuidado y adaptabilidad. Tiene hojas verde brillante y es ideal para interiores.','No está en peligro ni amenazada.','Epipremnum aureum'),(12,'Planta de serpiente o Sansevieria','Varía según la especie','Planta suculenta','Magnoliophyta (Angiospermas)','Monocotiledóneas','Liliopsida','De sombra a luz brillante','La planta de serpiente tiene hojas largas y erectas. Es resistente y se adapta bien a condiciones de baja luz. Es una opción popular para interiores.','No está en peligro ni amenazada.','Sansevieria spp.'),(13,'Ficus benjamina','Altura de 2-30 metros','Árbol perenne','Magnoliophyta (Angiospermas)','Dicotiledóneas','Magnoliopsida','De luz brillante a sol parcial','El ficus benjamina es un árbol de interior popular. Tiene hojas brillantes y puede ser podado para mantener su forma. Requiere luz brillante y cuidado adecuado.','No está en peligro ni amenazada.','Ficus benjamina'),(14,'Violeta africana','Altura de 15 cm','Planta perenne','Magnoliophyta (Angiospermas)','Dicotiledóneas','Magnoliopsida','De sombra a luz brillante','La violeta africana es apreciada por sus pequeñas flores y hojas atractivas. Es una planta de interior común y requiere condiciones de sombra y humedad.','No está en peligro ni amenazada.','Saintpaulia ionantha'),(15,'Filodendro','Varía según la especie','Planta trepadora','Magnoliophyta (Angiospermas)','Monocotiledóneas','Liliopsida','De sombra a luz brillante','El filodendro es una planta de interior popular con hojas grandes y a menudo con forma de corazón. Es fácil de cuidar y adaptable a diversas condiciones de luz.','No está en peligro ni amenazada.','Philodendron spp.'),(16,'Ortiga','Altura de 1-2 metros','Planta herbácea perenne','Magnoliophyta (Angiospermas)','Dicotiledóneas','Magnoliopsida','De sol a sombra parcial','La ortiga tiene hojas peludas y puede causar picazón al contacto. A pesar de su apariencia, se utiliza en medicina tradicional y en la cocina.','No está en peligro ni amenazada.','Urtica dioica'),(17,'Trébol','Varía según la especie','Planta herbácea','Magnoliophyta (Angiospermas)','Dicotiledóneas','Magnoliopsida','De sol a sombra parcial','El trébol es conocido por sus hojas trifoliadas y flores en forma de cabezas redondas. Algunas especies se utilizan en céspedes y pastizales.','No está en peligro ni amenazada.','Trifolium spp.'),(18,'Amapola','Varía según la especie','Planta herbácea anual','Magnoliophyta (Angiospermas)','Dicotiledóneas','Magnoliopsida','De sol','La amapola es conocida por sus flores efímeras y brillantes. Algunas especies se utilizan en la producción de alimentos y en jardinería ornamental.','No está en peligro ni amenazada.','Papaver spp.'),(19,'Malva','Varía según la especie','Planta herbácea','Magnoliophyta (Angiospermas)','Dicotiledóneas','Magnoliopsida','De sol a sombra parcial','La malva tiene flores en forma de embudo y hojas lobuladas. Algunas especies se utilizan con fines medicinales y culinarios.','No está en peligro ni amenazada.','Malva spp.'),(20,'Diente de león','Altura de 5-40 cm','Planta herbácea perenne','Magnoliophyta (Angiospermas)','Dicotiledóneas','Magnoliopsida','De sol a sombra parcial','El diente de león tiene hojas dentadas y flores amarillas. A pesar de ser considerado como maleza, algunas personas lo utilizan en medicina y alimentación.','No está en peligro ni amenazada.','Taraxacum officinale'),(21,'Begonia','Varía según la especie','Planta herbácea','Magnoliophyta (Angiospermas)','Dicotiledóneas','Magnoliopsida','De sombra a luz brillante','La begonia es conocida por sus coloridas y atractivas flores. Es una planta popular en jardinería ornamental y se cultiva en interiores y exteriores.','No está en peligro ni amenazada.','Begonia spp.'),(22,'Tulipán','Varía según la especie','Planta herbácea perenne','Magnoliophyta (Angiospermas)','Monocotiledóneas','Liliopsida','De sol a sombra parcial','El tulipán es conocido por sus vistosas flores en forma de copa. Es una planta bulbosa popular en jardinería y se asocia comúnmente con la primavera.','No está en peligro ni amenazada.','Tulipa spp.'),(23,'Azalea','Varía según la especie','Arbusto perenne','Magnoliophyta (Angiospermas)','Dicotiledóneas','Magnoliopsida','De sombra a luz brillante','La azalea es conocida por sus llamativas flores y hojas perennes. Es popular en jardinería paisajística y se cultiva por sus colores vibrantes.','No está en peligro ni amenazada.','Rhododendron spp.'),(24,'Crisantemo','Varía según la especie','Planta herbácea perenne','Magnoliophyta (Angiospermas)','Dicotiledóneas','Magnoliopsida','De sol a sombra parcial','El crisantemo es apreciado por sus flores ornamentales en una variedad de colores. Es una de las plantas más cultivadas para decoración y jardinería.','No está en peligro ni amenazada.','Chrysanthemum spp.'),(25,'Hortensia','Varía según la especie','Arbusto perenne','Magnoliophyta (Angiospermas)','Dicotiledóneas','Magnoliopsida','De sombra a luz brillante','La hortensia es conocida por sus grandes y vistosas cabezas de flores. Puede cambiar de color dependiendo del pH del suelo. Es popular en jardines y arreglos florales.','No está en peligro ni amenazada.','Hydrangea spp.'),(26,'Echinacea','Altura de 60-100 cm','Planta herbácea perenne','Magnoliophyta (Angiospermas)','Dicotiledóneas','Magnoliopsida','De sol a sombra parcial','La echinacea tiene flores de pétalos distintivos y se utiliza en fitoterapia. Es conocida por sus propiedades medicinales y su uso en infusiones.','No está en peligro ni amenazada.','Echinacea purpurea'),(27,'Lavanda','Altura de 30-90 cm','Planta herbácea perenne','Magnoliophyta (Angiospermas)','Dicotiledóneas','Magnoliopsida','De sol','La lavanda es conocida por sus flores fragantes y se utiliza en perfumería y aceites esenciales. Es popular en jardinería y aromaterapia.','No está en peligro ni amenazada.','Lavandula spp.'),(28,'Salvia','Altura de 30-60 cm','Planta herbácea perenne','Magnoliophyta (Angiospermas)','Dicotiledóneas','Magnoliopsida','De sol','La salvia tiene hojas aromáticas y se utiliza en cocina y medicina. Es una planta resistente y atrae a polinizadores como abejas.','No está en peligro ni amenazada.','Salvia officinalis'),(29,'Aloe vera','Altura de 30-50 cm','Planta suculenta','Magnoliophyta (Angiospermas)','Monocotiledóneas','Liliopsida','De sol','El aloe vera es conocido por sus hojas carnosas con gel medicinal. Se utiliza en productos para el cuidado de la piel y es fácil de cultivar en interiores y exteriores.','No está en peligro ni amenazada.','Aloe vera'),(30,'Jengibre','Altura de 60-120 cm','Planta herbácea perenne','Magnoliophyta (Angiospermas)','Monocotiledóneas','Liliopsida','De sombra parcial a luz brillante','El jengibre es apreciado por su rizoma aromático y se utiliza en cocina y medicina. Requiere un clima cálido y se cultiva en muchas regiones tropicales.','No está en peligro ni amenazada.','Zingiber officinale'),(31,'Roble','Varía según la especie','Árbol perenne','Magnoliophyta (Angiospermas)','Dicotiledóneas','Magnoliopsida','De sol','Los robles son árboles majestuosos con hojas lobuladas. Son importantes en ecología y proporcionan hábitats valiosos. Algunas especies se utilizan para la producción de madera.','No está en peligro ni amenazada.','Quercus spp.'),(32,'Pino','Varía según la especie','Árbol perenne','Magnoliophyta (Gimnospermas)','Coníferas','Pinopsida','De sol','Los pinos son árboles con agujas en lugar de hojas. Son importantes en la industria maderera y en la producción de resina. Se encuentran en diversos hábitats, desde bosques hasta áreas montañosas.','No está en peligro ni amenazada.','Pinus spp.'),(33,'Secuoya','Altura de hasta 115 metros','Árbol perenne','Magnoliophyta (Gimnospermas)','Coníferas','Pinopsida','De sol','La secuoya es uno de los árboles más altos del mundo. Se encuentra en bosques templados y es conocida por su longevidad. Es un símbolo de la región noroeste de Estados Unidos.','No está en peligro ni amenazada.','Sequoia sempervirens'),(34,'Sauce','Varía según la especie','Árbol o arbusto','Magnoliophyta (Angiospermas)','Dicotiledóneas','Magnoliopsida','De sol a sombra parcial','Los sauces son árboles o arbustos con hojas lanceoladas. Se encuentran comúnmente cerca de cursos de agua. Algunas especies se utilizan en cestería y medicina tradicional.','No está en peligro ni amenazada.','Salix spp.'),(35,'Olivo','Altura de 8-15 metros','Árbol perenne','Magnoliophyta (Angiospermas)','Dicotiledóneas','Magnoliopsida','De sol','El olivo es conocido por sus frutos, las aceitunas, y por su aceite. Es un cultivo importante en la región mediterránea. Se utiliza en la cocina, la cosmética y la medicina.','No está en peligro ni amenazada.','Olea europaea'),(36,'Forsythia','Varía según la especie','Arbusto caducifolio','Magnoliophyta (Angiospermas)','Dicotiledóneas','Magnoliopsida','De sol a sombra parcial','La forsitia es conocida por sus vistosas flores amarillas en primavera. Es popular en jardinería ornamental y se utiliza en setos y bordes de jardín.','No está en peligro ni amenazada.','Forsythia spp.'),(37,'Boj','Varía según la especie','Arbusto perenne','Magnoliophyta (Angiospermas)','Dicotiledóneas','Magnoliopsida','De sol a sombra parcial','El boj es conocido por su follaje denso y se utiliza en topiarios y jardinería formal. Es resistente y se adapta bien a la poda.','No está en peligro ni amenazada.','Buxus spp.'),(38,'Hibisco','Varía según la especie','Arbusto o planta herbácea','Magnoliophyta (Angiospermas)','Dicotiledóneas','Magnoliopsida','De sol a sombra parcial','El hibisco es conocido por sus grandes y coloridas flores. Se encuentra en muchas regiones tropicales y subtropicales. Algunas especies se utilizan en jardinería y medicina tradicional.','No está en peligro ni amenazada.','Hibiscus spp.'),(39,'Acebo','Varía según la especie','Arbusto o árbol perenne','Magnoliophyta (Angiospermas)','Dicotiledóneas','Magnoliopsida','De sombra parcial a sombra','El acebo es conocido por sus hojas espinosas y frutos rojos. Es utilizado en decoración navideña y en jardinería ornamental. Algunas especies son valoradas por la madera.','No está en peligro ni amenazada.','Ilex spp.'),(40,'Rododendro','Varía según la especie','Arbusto perenne','Magnoliophyta (Angiospermas)','Dicotiledóneas','Magnoliopsida','De sombra a luz brillante','El rododendro es conocido por sus llamativas flores y follaje. Es popular en jardinería paisajística y requiere condiciones específicas de suelo ácido.','No está en peligro ni amenazada.','Rhododendron spp.'),(41,'Menta','Varía según la especie','Planta herbácea perenne','Magnoliophyta (Angiospermas)','Dicotiledóneas','Magnoliopsida','De sol a sombra parcial','La menta es conocida por su aroma refrescante y se utiliza en cocina, infusiones y productos medicinales. Se propaga fácilmente y es apreciada en jardinería.','No está en peligro ni amenazada.','Mentha spp.'),(42,'Perejil','Altura de 20-30 cm','Planta herbácea bianual','Magnoliophyta (Angiospermas)','Dicotiledóneas','Magnoliopsida','De sol a sombra parcial','El perejil es una hierba culinaria comúnmente utilizada como condimento. Es fácil de cultivar y se utiliza tanto en la cocina como en la medicina tradicional.','No está en peligro ni amenazada.','Petroselinum crispum'),(43,'Albahaca','Altura de 30-60 cm','Planta herbácea anual','Magnoliophyta (Angiospermas)','Dicotiledóneas','Magnoliopsida','De sol','La albahaca es conocida por su aroma y se utiliza en cocina, especialmente en la cocina italiana. Es fácil de cultivar y es una planta popular en jardinería de hierbas.','No está en peligro ni amenazada.','Ocimum basilicum'),(44,'Cilantro','Altura de 40-60 cm','Planta herbácea anual','Magnoliophyta (Angiospermas)','Dicotiledóneas','Magnoliopsida','De sol a sombra parcial','El cilantro es conocido por sus hojas y semillas aromáticas. Se utiliza en cocina de diversas culturas y es fácil de cultivar. Tanto las hojas como las semillas son comestibles.','No está en peligro ni amenazada.','Coriandrum sativum'),(45,'Tomillo','Altura de 20-30 cm','Planta herbácea perenne','Magnoliophyta (Angiospermas)','Dicotiledóneas','Magnoliopsida','De sol','El tomillo es conocido por su aroma y se utiliza en cocina y medicina. Es una planta resistente y se cultiva en jardines, macetas y como planta de cobertura del suelo.','No está en peligro ni amenazada.','Thymus vulgaris'),(46,'Rosa','Varía según la especie','Arbusto o planta trepadora','Magnoliophyta (Angiospermas)','Dicotiledóneas','Magnoliopsida','De sol','Las rosas son conocidas por sus flores hermosas y fragantes. Son populares en jardinería y son símbolos de amor y romance. Existen muchas variedades y colores.','No está en peligro ni amenazada.','Rosa spp.'),(47,'Girasol','Altura de 1-3 metros','Planta herbácea anual','Magnoliophyta (Angiospermas)','Dicotiledóneas','Magnoliopsida','De sol','El girasol es conocido por sus grandes cabezas de flores amarillas. Es cultivado por sus semillas y aceite, y es apreciado en jardinería ornamental.','No está en peligro ni amenazada.','Helianthus annuus'),(48,'Lirio','Varía según la especie','Planta bulbosa perenne','Magnoliophyta (Angiospermas)','Monocotiledóneas','Liliopsida','De sol a sombra parcial','Los lirios son conocidos por sus elegantes flores y son populares en jardinería. Existen muchas especies y variedades con colores y formas diferentes.','No está en peligro ni amenazada.','Lilium spp.'),(49,'Orquídea','Varía según la especie','Planta perenne','Magnoliophyta (Angiospermas)','Monocotiledóneas','Liliopsida','De sombra a luz brillante','Las orquídeas son conocidas por sus flores exóticas y diversas. Son una de las familias de plantas más grandes. Algunas especies son epífitas y crecen en los trópicos.','No está en peligro ni amenazada.','Orchidaceae'),(50,'Nochebuena','Altura de 30-40 cm','Planta de interior','Magnoliophyta (Angiospermas)','Dicotiledóneas','Magnoliopsida','De luz brillante','La Nochebuena es conocida por sus hojas rojas y verdes, que a menudo se asocian con la temporada navideña. Es una planta popular en decoración y regalos.','No está en peligro ni amenazada.','Euphorbia pulcherrima'),(51,'Helecho','Varía según la especie','Planta perenne','Pteridophyta','Helechos','Filicopsida','De sombra a sombra parcial','Los helechos son plantas no florecientes conocidas por sus frondes plumosas. Se encuentran en entornos húmedos y sombreados. Algunas especies se cultivan como plantas ornamentales.','No está en peligro ni amenazada.','Filicopsida'),(52,'Musgo','Varía según la especie','Planta no vascular','Bryophyta','Musgos','Bryopsida','De sombra a luz brillante','Los musgos son plantas simples sin tejidos vasculares verdaderos. Se encuentran en ambientes húmedos y son importantes en la formación de suelos y como indicadores de la calidad del aire.','No está en peligro ni amenazada.','Bryophyta'),(53,'Algas','Varía según la especie','Plantas acuáticas','Rhodophyta, Chlorophyta, Phaeophyta, entre otros','Algas','Euglenophyta, Chlorophyceae, Phaeophyceae, Rhodophyceae, entre otros','De luz brillante a luz baja','Las algas son plantas simples que pueden ser unicelulares o multicelulares. Se encuentran en ambientes acuáticos y son fundamentales en la cadena alimentaria y la producción de oxígeno.','No está en peligro ni amenazada.','Algae'),(54,'Helecho de agua','Altura de 1-3 cm','Planta acuática','Pteridophyta','Helechos','Filicopsida','De luz brillante a sombra parcial','El helecho de agua es una planta flotante que forma una capa densa en la superficie del agua. Es útil en la purificación del agua y como fertilizante natural en cultivos de arroz.','No está en peligro ni amenazada.','Azolla spp.'),(55,'Cóleo','Varía según la especie','Planta herbácea perenne','Magnoliophyta (Angiospermas)','Dicotiledóneas','Magnoliopsida','De sol a sombra parcial','El cóleo es conocido por sus hojas coloridas y variadas. Se utiliza comúnmente en jardinería ornamental y como planta de interior. Es apreciado por su follaje decorativo.','No está en peligro ni amenazada.','Solenostemon sp.');
/*!40000 ALTER TABLE `plantas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reportes`
--

DROP TABLE IF EXISTS `reportes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reportes` (
  `id_reporte` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int DEFAULT NULL,
  `archivo` blob,
  PRIMARY KEY (`id_reporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reportes`
--

LOCK TABLES `reportes` WRITE;
/*!40000 ALTER TABLE `reportes` DISABLE KEYS */;
/*!40000 ALTER TABLE `reportes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sugerencias`
--

DROP TABLE IF EXISTS `sugerencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sugerencias` (
  `id_sugerencia` int NOT NULL AUTO_INCREMENT,
  `sugerencia` text,
  `tipo` varchar(50) DEFAULT NULL,
  `id_planta` int DEFAULT NULL,
  PRIMARY KEY (`id_sugerencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sugerencias`
--

LOCK TABLES `sugerencias` WRITE;
/*!40000 ALTER TABLE `sugerencias` DISABLE KEYS */;
/*!40000 ALTER TABLE `sugerencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `contraseña` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Jesus Antonio Xolio Osorio','axolio','admin','axoliorio@gmail.com','UG9zdGVjaCE='),(2,'Gabriel Osvaldo Luna Hernández','gluna','viewer','gluna@gmail.com','bHVuYTIwMjQh'),(6,'xoli','xolio','viewer','xolio-54@hotmail.com','UG9zdGVjaCE=');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-08 11:50:14
