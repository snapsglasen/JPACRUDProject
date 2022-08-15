-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema prefecturesdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `prefecturesdb` ;

-- -----------------------------------------------------
-- Schema prefecturesdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `prefecturesdb` DEFAULT CHARACTER SET utf8 ;
USE `prefecturesdb` ;

-- -----------------------------------------------------
-- Table `prefecture`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `prefecture` ;

CREATE TABLE IF NOT EXISTS `prefecture` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `capital` VARCHAR(45) NULL,
  `average_snowfall` DECIMAL(10,3) NULL,
  `border_water` VARCHAR(45) NULL,
  `population` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS prefecturesuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'prefecturesuser'@'localhost' IDENTIFIED BY 'prefecturesuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'prefecturesuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `prefecture`
-- -----------------------------------------------------
START TRANSACTION;
USE `prefecturesdb`;
INSERT INTO `prefecture` (`id`, `name`, `capital`, `average_snowfall`, `border_water`, `population`) VALUES (1, 'Hokkaido', NULL, NULL, NULL, NULL);
INSERT INTO `prefecture` (`id`, `name`, `capital`, `average_snowfall`, `border_water`, `population`) VALUES (2, 'Aomori', NULL, NULL, NULL, NULL);
INSERT INTO `prefecture` (`id`, `name`, `capital`, `average_snowfall`, `border_water`, `population`) VALUES (3, 'Akita', NULL, NULL, NULL, NULL);
INSERT INTO `prefecture` (`id`, `name`, `capital`, `average_snowfall`, `border_water`, `population`) VALUES (4, 'Iwate', NULL, NULL, NULL, NULL);

COMMIT;

