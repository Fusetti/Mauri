-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema vetturec
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema vetturec
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `vetturec` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `vetturec` ;

-- -----------------------------------------------------
-- Table `vetturec`.`vetturedb.marca`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vetturec`.`vetturedb.marca` (
  `ID_MARCA` INT(11) NOT NULL,
  `NOME` VARCHAR(45) NOT NULL,
  `FONDAZIONE` INT(4) NOT NULL,
  `WEBSITE` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`ID_MARCA`),
  UNIQUE INDEX `ID_MARCA_UNIQUE` (`ID_MARCA` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `vetturec`.`vetturedb.modello`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vetturec`.`vetturedb.modello` (
  `ID_MODELLO` INT(11) NOT NULL,
  `ID-MARCA` INT(11) NOT NULL,
  `NOME` VARCHAR(45) NOT NULL,
  `CILINDRATA` INT(11) NOT NULL,
  `POTENZA` INT(11) NOT NULL,
  UNIQUE INDEX `ID_MODELLO_UNIQUE` (`ID_MODELLO` ASC) VISIBLE,
  INDEX `ID_MARCA_idx` (`ID-MARCA` ASC) VISIBLE,
  CONSTRAINT `ID_MARCA`
    FOREIGN KEY (`ID-MARCA`)
    REFERENCES `vetturec`.`vetturedb.marca` (`ID_MARCA`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
