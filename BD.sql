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

CREATE TABLE IF NOT EXISTS `final_OYM`.`Trabajadores` (
  `idWorker` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `apellido` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `telefono` VARCHAR(45) NULL,
  `salario` INT NULL,
  `fk_idTrabajos` INT NOT NULL,
  PRIMARY KEY (`idWorker`),
  FOREIGN KEY (`fk_idTrabajos`)
    REFERENCES `final_OYM`.`Trabajos` (`idTrabajos`)
);


CREATE TABLE IF NOT EXISTS `final_OYM`.`usuarios` (
  `idAdmin` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `apellido` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `telefono` VARCHAR(45) NULL,
  `fk_idLogin` INT NOT NULL,
  `fk_idWorker` INT NOT NULL,
  PRIMARY KEY (`idAdmin`),
  FOREIGN KEY (`fk_idLogin`)
    REFERENCES `final_OYM`.`Login` (`idLogin`),
  FOREIGN KEY (`fk_idWorker`)
    REFERENCES `final_OYM`.`Trabajadores` (`idWorker`)
);
