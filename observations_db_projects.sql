CREATE DATABASE  IF NOT EXISTS `observations_db` ;
USE `observations_db`;


DROP TABLE IF EXISTS `projects`;

CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) DEFAULT NULL,
  `projectname` varchar(140) DEFAULT NULL,
  `projectdesc` longtext,
  PRIMARY KEY (`id`),
  KEY `teacher_id_idx` (`teacher_id`),
  CONSTRAINT `teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ;

