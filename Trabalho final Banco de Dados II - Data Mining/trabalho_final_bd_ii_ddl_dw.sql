-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema dw_trabalho_final_bd_ii
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema dw_trabalho_final_bd_ii
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dw_trabalho_final_bd_ii` DEFAULT CHARACTER SET utf8 ;
USE `dw_trabalho_final_bd_ii` ;

-- -----------------------------------------------------
-- Table `dw_trabalho_final_bd_ii`.`dimensao_cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dw_trabalho_final_bd_ii`.`dimensao_cliente` (
  `id_cliente` INT NOT NULL,
  `nome` VARCHAR(95) NULL DEFAULT NULL,
  `sexo` VARCHAR(2) NULL DEFAULT NULL,
  `idade` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id_cliente`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `dw_trabalho_final_bd_ii`.`dimensao_produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dw_trabalho_final_bd_ii`.`dimensao_produto` (
  `id_produto` INT NOT NULL,
  `nome` VARCHAR(45) NULL DEFAULT NULL,
  `preco` FLOAT NULL DEFAULT NULL,
  `quantidade` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id_produto`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `dw_trabalho_final_bd_ii`.`pedido_fato`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dw_trabalho_final_bd_ii`.`pedido_fato` (
  `valor_vendido` FLOAT NULL DEFAULT NULL,
  `unidades_vendidas` INT NULL DEFAULT NULL,
  `dimensao_cliente_id` INT NOT NULL,
  `dimensao_produto_id` INT NOT NULL,
  INDEX `fk_pedido_fato_dimensao_cliente1_idx` (`dimensao_cliente_id` ASC) VISIBLE,
  INDEX `fk_pedido_fato_dimensao_produto1_idx` (`dimensao_produto_id` ASC) VISIBLE,
  CONSTRAINT `fk_pedido_fato_dimensao_cliente1`
    FOREIGN KEY (`dimensao_cliente_id`)
    REFERENCES `dw_trabalho_final_bd_ii`.`dimensao_cliente` (`id_cliente`),
  CONSTRAINT `fk_pedido_fato_dimensao_produto1`
    FOREIGN KEY (`dimensao_produto_id`)
    REFERENCES `dw_trabalho_final_bd_ii`.`dimensao_produto` (`id_produto`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
