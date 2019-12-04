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
CREATE SCHEMA IF NOT EXISTS `vetturedb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `vetturedb` ;

-- -----------------------------------------------------
-- Table `vetturedb`.`marca`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vetturedb`.`marca` (
  `ID_MARCA` INT(11) NOT NULL,
  `NOME` VARCHAR(45) NOT NULL,
  `FONDAZIONE` INT(4) NOT NULL,
  `WEBSITE` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`ID_MARCA`),
  UNIQUE INDEX `ID_MARCA_UNIQUE` (`ID_MARCA` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `vetturedb`.`modello`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vetturedb`.`modello` (
  `ID_MODELLO` INT(11) NOT NULL,
  `NOME` VARCHAR(45) NOT NULL,
  `CILINDRATA` INT(11) NOT NULL,
  `POTENZA` INT(11) NOT NULL,
    `ID_MARCA` INT(11) NOT NULL,
  UNIQUE INDEX `ID_MODELLO_UNIQUE` (`ID_MODELLO` ASC) VISIBLE,
  INDEX `ID_MARCA_idx` (`ID_MARCA` ASC) VISIBLE,
  CONSTRAINT
    FOREIGN KEY (`ID_MARCA`)
    REFERENCES `vetturedb`.`marca` (`ID_MARCA`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

Insert into VETTUREDB.MARCA (ID_MARCA,NOME,FONDAZIONE,WEBSITE) values ('1','Ferrari','1947','http://www.ferrari.com/');
Insert into VETTUREDB.MARCA (ID_MARCA,NOME,FONDAZIONE,WEBSITE) values ('2','Lamborghini','1963','http://www.lamborghini.com/');
Insert into VETTUREDB.MARCA (ID_MARCA,NOME,FONDAZIONE,WEBSITE) values ('3','Maserati','1914','http://www.maserati.com/');
Insert into VETTUREDB.MARCA (ID_MARCA,NOME,FONDAZIONE,WEBSITE) values ('4','Alfa Romeo','1910','http://www.alfaromeo.com/');
Insert into VETTUREDB.MARCA (ID_MARCA,NOME,FONDAZIONE,WEBSITE) values ('7','Aston Martin','1913','http://www.astonmartin.com/');
Insert into VETTUREDB.MARCA (ID_MARCA,NOME,FONDAZIONE,WEBSITE) values ('5','BMW','1917','http://www.bmwgroup.com/');
Insert into VETTUREDB.MARCA (ID_MARCA,NOME,FONDAZIONE,WEBSITE) values ('6','Porsche','1931','http://www.porsche.de/');
Insert into VETTUREDB.MARCA (ID_MARCA,NOME,FONDAZIONE,WEBSITE) values ('8','Mercedes-Benz','1926','http://www.mercedes-benz.com/');
Insert into VETTUREDB.MARCA (ID_MARCA,NOME,FONDAZIONE,WEBSITE) values ('9','Bugatti','1909','http://bugatti.com/');
Insert into VETTUREDB.MARCA (ID_MARCA,NOME,FONDAZIONE,WEBSITE) values ('10','FIAT','1899','http://www.fiat.com/');
Insert into VETTUREDB.MARCA (ID_MARCA,NOME,FONDAZIONE,WEBSITE) values ('11','Abarth','1949','http://www.abarth.it/');
Insert into VETTUREDB.MARCA (ID_MARCA,NOME,FONDAZIONE,WEBSITE) values ('12','Opel','1862','http://www.opel.com/');
Insert into VETTUREDB.MARCA (ID_MARCA,NOME,FONDAZIONE,WEBSITE) values ('13','Audi','1909','http://www.audi.com/');
Insert into VETTUREDB.MARCA (ID_MARCA,NOME,FONDAZIONE,WEBSITE) values ('14','Alfred','1234','http://www.google.com');
Insert into VETTUREDB.MODELLO (ID_MODELLO,NOME,CILINDRATA,POTENZA,ID_MARCA) values ('1','350 GT','3500','280','2');
Insert into VETTUREDB.MODELLO (ID_MODELLO,NOME,CILINDRATA,POTENZA,ID_MARCA) values ('2','400 GT','4000','320','2');
Insert into VETTUREDB.MODELLO (ID_MODELLO,NOME,CILINDRATA,POTENZA,ID_MARCA) values ('5','Islero','4000','350','2');
Insert into VETTUREDB.MODELLO (ID_MODELLO,NOME,CILINDRATA,POTENZA,ID_MARCA) values ('3','Miura','4000','350','2');
Insert into VETTUREDB.MODELLO (ID_MODELLO,NOME,CILINDRATA,POTENZA,ID_MARCA) values ('4','Espada','4000','350','2');
Insert into VETTUREDB.MODELLO (ID_MODELLO,NOME,CILINDRATA,POTENZA,ID_MARCA) values ('6','Jarama','4000','365','2');
Insert into VETTUREDB.MODELLO (ID_MODELLO,NOME,CILINDRATA,POTENZA,ID_MARCA) values ('7','Urraco','3000','260','2');
Insert into VETTUREDB.MODELLO (ID_MODELLO,NOME,CILINDRATA,POTENZA,ID_MARCA) values ('8','Countach','5100','455','2');
Insert into VETTUREDB.MODELLO (ID_MODELLO,NOME,CILINDRATA,POTENZA,ID_MARCA) values ('9','Silhouette','3000','260','2');
Insert into VETTUREDB.MODELLO (ID_MODELLO,NOME,CILINDRATA,POTENZA,ID_MARCA) values ('10','Jalpa','3500','247','2');
Insert into VETTUREDB.MODELLO (ID_MODELLO,NOME,CILINDRATA,POTENZA,ID_MARCA) values ('11','LM002','5100','450','2');
Insert into VETTUREDB.MODELLO (ID_MODELLO,NOME,CILINDRATA,POTENZA,ID_MARCA) values ('12','Diablo','6000','595','2');
Insert into VETTUREDB.MODELLO (ID_MODELLO,NOME,CILINDRATA,POTENZA,ID_MARCA) values ('13','Murciélago','6500','670','2');
Insert into VETTUREDB.MODELLO (ID_MODELLO,NOME,CILINDRATA,POTENZA,ID_MARCA) values ('14','Gallardo','5200','570','2');
Insert into VETTUREDB.MODELLO (ID_MODELLO,NOME,CILINDRATA,POTENZA,ID_MARCA) values ('15','Aventador','6500','770','2');
Insert into VETTUREDB.MODELLO (ID_MODELLO,NOME,CILINDRATA,POTENZA,ID_MARCA) values ('16','Huracán','5200','640','2');
Insert into VETTUREDB.MODELLO (ID_MODELLO,NOME,CILINDRATA,POTENZA,ID_MARCA) values ('17','Urus','4000','650','2');
Insert into VETTUREDB.MODELLO (ID_MODELLO,NOME,CILINDRATA,POTENZA,ID_MARCA) values ('18','166 Inter','2000','90','1');
Insert into VETTUREDB.MODELLO (ID_MODELLO,NOME,CILINDRATA,POTENZA,ID_MARCA) values ('19','195 Inter','2400','90','1');
Insert into VETTUREDB.MODELLO (ID_MODELLO,NOME,CILINDRATA,POTENZA,ID_MARCA) values ('20','195 Inter','2500','170','1');
Insert into VETTUREDB.MODELLO (ID_MODELLO,NOME,CILINDRATA,POTENZA,ID_MARCA) values ('21','342 America','4100','200','1');
Insert into VETTUREDB.MODELLO (ID_MODELLO,NOME,CILINDRATA,POTENZA,ID_MARCA) values ('22','250 Europa','3000','220','1');
Insert into VETTUREDB.MODELLO (ID_MODELLO,NOME,CILINDRATA,POTENZA,ID_MARCA) values ('23','375 America','4500','300','1');


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;