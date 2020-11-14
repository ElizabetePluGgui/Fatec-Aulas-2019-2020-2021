/*
SQLyog Enterprise - MySQL GUI v8.12 
MySQL - 5.5.27 : Database - clinicamedica
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`clinicamedica` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `clinicamedica`;

/*Table structure for table `especialidades` */

DROP TABLE IF EXISTS `especialidades`;

CREATE TABLE `especialidades` (
  `id_especialidade` int(11) NOT NULL AUTO_INCREMENT,
  `descritivo` varchar(30) NOT NULL,
  PRIMARY KEY (`id_especialidade`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `especialidades` */

/*Table structure for table `exames` */

DROP TABLE IF EXISTS `exames`;

CREATE TABLE `exames` (
  `id_exame` int(11) NOT NULL AUTO_INCREMENT,
  `descritivo` varchar(30) NOT NULL,
  `valor` decimal(6,2) NOT NULL,
  PRIMARY KEY (`id_exame`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `exames` */

/*Table structure for table `exames_pacientes` */

DROP TABLE IF EXISTS `exames_pacientes`;

CREATE TABLE `exames_pacientes` (
  `id_exam_pac` int(11) NOT NULL AUTO_INCREMENT,
  `datae` date NOT NULL,
  `horarioe` time NOT NULL,
  `id_exame` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  PRIMARY KEY (`id_exam_pac`),
  KEY `id_exame` (`id_exame`),
  KEY `id_paciente` (`id_paciente`),
  CONSTRAINT `exames_pacientes_ibfk_1` FOREIGN KEY (`id_exame`) REFERENCES `exames` (`id_exame`),
  CONSTRAINT `exames_pacientes_ibfk_2` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `exames_pacientes` */

/*Table structure for table `medicos` */

DROP TABLE IF EXISTS `medicos`;

CREATE TABLE `medicos` (
  `id_medico` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) NOT NULL,
  `sexo` enum('F','M') DEFAULT NULL,
  `id_especialidade` int(11) NOT NULL,
  PRIMARY KEY (`id_medico`),
  KEY `id_especialidade` (`id_especialidade`),
  CONSTRAINT `medicos_ibfk_1` FOREIGN KEY (`id_especialidade`) REFERENCES `especialidades` (`id_especialidade`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `medicos` */

/*Table structure for table `medicos_pacientes` */

DROP TABLE IF EXISTS `medicos_pacientes`;

CREATE TABLE `medicos_pacientes` (
  `id_med_pac` int(11) NOT NULL AUTO_INCREMENT,
  `dataa` date NOT NULL,
  `horarioa` time NOT NULL,
  `id_medico` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  PRIMARY KEY (`id_med_pac`),
  KEY `id_medico` (`id_medico`),
  KEY `id_paciente` (`id_paciente`),
  CONSTRAINT `medicos_pacientes_ibfk_1` FOREIGN KEY (`id_medico`) REFERENCES `medicos` (`id_medico`),
  CONSTRAINT `medicos_pacientes_ibfk_2` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `medicos_pacientes` */

/*Table structure for table `pacientes` */

DROP TABLE IF EXISTS `pacientes`;

CREATE TABLE `pacientes` (
  `id_paciente` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) NOT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `datan` date NOT NULL,
  PRIMARY KEY (`id_paciente`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `pacientes` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
