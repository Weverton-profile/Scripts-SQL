-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema trabalho_final_bd_ii
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema trabalho_final_bd_ii
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `trabalho_final_bd_ii` DEFAULT CHARACTER SET utf8 ;
USE `trabalho_final_bd_ii` ;

-- -----------------------------------------------------
-- Table `trabalho_final_bd_ii`.`clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabalho_final_bd_ii`.`clientes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(95) NOT NULL,
  `sexo` VARCHAR(2) NOT NULL,
  `idade` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trabalho_final_bd_ii`.`pedidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabalho_final_bd_ii`.`pedidos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `data` DATETIME NOT NULL,
  `status` VARCHAR(45) NOT NULL,
  `id_cliente` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `id_cliente_idx` (`id_cliente` ASC) VISIBLE,
  CONSTRAINT `id_cliente`
    FOREIGN KEY (`id_cliente`)
    REFERENCES `trabalho_final_bd_ii`.`clientes` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trabalho_final_bd_ii`.`produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabalho_final_bd_ii`.`produtos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `preco` FLOAT NOT NULL,
  `quantidade` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trabalho_final_bd_ii`.`pedido_produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabalho_final_bd_ii`.`pedido_produto` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `quantidade` INT NOT NULL,
  `valor` FLOAT NOT NULL,
  `id_pedido` INT NOT NULL,
  `id_produto` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `id_pedido_idx` (`id_pedido` ASC) VISIBLE,
  INDEX `id_produto_idx` (`id_produto` ASC) VISIBLE,
  CONSTRAINT `id_pedido`
    FOREIGN KEY (`id_pedido`)
    REFERENCES `trabalho_final_bd_ii`.`pedidos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_produto`
    FOREIGN KEY (`id_produto`)
    REFERENCES `trabalho_final_bd_ii`.`produtos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
