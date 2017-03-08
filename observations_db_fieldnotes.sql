CREATE DATABASE  IF NOT EXISTS `observations_db` ;
USE `observations_db`;


DROP TABLE IF EXISTS `fieldnotes`;

CREATE TABLE `fieldnotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `datetime` timestamp(6) NULL DEFAULT NULL,
  `doclink` longblob,
  `doctype` varchar(45) DEFAULT NULL,
  `docdesc` longblob,
  PRIMARY KEY (`id`),
  KEY `student_id_idx` (`student_id`),
  KEY `project_id_idx` (`project_id`),
  CONSTRAINT `project_id` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `student_id` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) 

