
CREATE DATABASE IF NOT EXISTS `final_OYM` ;

USE `final_OYM` ;


CREATE TABLE IF NOT EXISTS `final_OYM`.`Login` (
  `idLogin` INT NOT NULL AUTO_INCREMENT,
  `user_email` VARCHAR(45) NULL,
  `pass` BLOB NULL,
  `rol` INT NULL,
  PRIMARY KEY (`idLogin`)
);


CREATE TABLE IF NOT EXISTS `final_OYM`.`Trabajos` (
  `idTrabajos` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(45) NULL,
  `min_salario` INT NULL,
  `max_salario` INT NULL,
  PRIMARY KEY (`idTrabajos`)
);
