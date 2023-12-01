-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema shipping
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema shipping
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `shipping` DEFAULT CHARACTER SET utf8 ;
USE `shipping` ;

-- -----------------------------------------------------
-- Table `shipping`.`port`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shipping`.`port` (
  `portName` VARCHAR(255) NOT NULL,
  `city` VARCHAR(255) NOT NULL,
  `country` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`portName`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `shipping`.`ships`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shipping`.`ships` (
  `shipName` VARCHAR(255) NOT NULL,
  `displacement` DECIMAL(10,2) NOT NULL,
  `captainName` VARCHAR(255) NOT NULL,
  `numberOfCrew` INT NOT NULL,
  `portName` VARCHAR(255) NOT NULL,
  `yearBuilt` YEAR(4) NOT NULL,
  PRIMARY KEY (`shipName`),
  INDEX `portName_idx` (`portName` ASC) VISIBLE,
  UNIQUE INDEX `shipName_UNIQUE` (`shipName` ASC) VISIBLE,
  CONSTRAINT `portName`
    FOREIGN KEY (`portName`)
    REFERENCES `shipping`.`port` (`portName`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `shipping`.`containers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shipping`.`containers` (
  `containerID` INT NOT NULL AUTO_INCREMENT,
  `height` INT NOT NULL,
  `width` INT NOT NULL,
  `length` INT NOT NULL,
  `weight` DECIMAL(10,2) NOT NULL,
  `shipName` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`containerID`),
  INDEX `shipName_idx` (`shipName` ASC) VISIBLE,
  UNIQUE INDEX `containerID_UNIQUE` (`containerID` ASC) VISIBLE,
  CONSTRAINT `shipName`
    FOREIGN KEY (`shipName`)
    REFERENCES `shipping`.`ships` (`shipName`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

