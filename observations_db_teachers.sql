CREATE DATABASE  IF NOT EXISTS `observations_db` ;
USE `observations_db`;


DROP TABLE IF EXISTS `teachers`;

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `keyword` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;