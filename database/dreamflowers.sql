-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema dreamingflowers
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema dreamingflowers
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dreamingflowers` DEFAULT CHARACTER SET utf8mb4 ;
USE `dreamingflowers` ;

-- -----------------------------------------------------
-- Table `dreamingflowers`.`ciudades`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dreamingflowers`.`ciudades` (
  `id` INT(11) NOT NULL,
  `nombre` VARCHAR(100) NOT NULL,
  `estado` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `dreamingflowers`.`florerias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dreamingflowers`.`florerias` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(150) NOT NULL,
  `descripcion` TEXT NULL DEFAULT NULL,
  `logo` VARCHAR(255) NULL DEFAULT NULL,
  `direccion` VARCHAR(255) NULL DEFAULT NULL,
  `estatus` TINYINT(1) NULL DEFAULT NULL,
  `id_ciudad` INT(11) NOT NULL,
  `id_usuario` INT(11) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `dreamingflowers`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dreamingflowers`.`usuarios` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NOT NULL,
  `correo_electronico` VARCHAR(100) NOT NULL,
  `contraseña` VARCHAR(255) NOT NULL,
  `rol` ENUM('admin', 'user') NULL DEFAULT 'user',
  `estatus` TINYINT(1) NULL DEFAULT 1,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
