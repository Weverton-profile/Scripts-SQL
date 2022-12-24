-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema livraria-jqw
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema livraria-jqw
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `livraria-jqw` DEFAULT CHARACTER SET utf8 ;
USE `livraria-jqw` ;

-- -----------------------------------------------------
-- Table `livraria-jqw`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `livraria-jqw`.`cliente` (
  `cod_cliente` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(50) NOT NULL,
  `telefone_1` VARCHAR(11) NOT NULL,
  `telefone_2` VARCHAR(11) NULL,
  `email` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`cod_cliente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `livraria-jqw`.`editora`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `livraria-jqw`.`editora` (
  `cod_editora` INT NOT NULL AUTO_INCREMENT,
  `nome_editora` VARCHAR(50) NOT NULL,
  `telefone_1` VARCHAR(11) NOT NULL,
  `telefone_2` VARCHAR(11) NULL,
  `email` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`cod_editora`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `livraria-jqw`.`categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `livraria-jqw`.`categoria` (
  `cod_categoria` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`cod_categoria`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `livraria-jqw`.`livro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `livraria-jqw`.`livro` (
  `cod_livro` INT NOT NULL AUTO_INCREMENT,
  `cod_categoria_fk` INT NULL,
  `cod_editora_fk` INT NULL,
  `titulo` VARCHAR(50) NOT NULL,
  `nome_livro` VARCHAR(50) NULL,
  `autor` VARCHAR(50) NOT NULL,
  `ano_publicacao` VARCHAR(4) NOT NULL,
  `valor` DECIMAL(5,2) NOT NULL,
  PRIMARY KEY (`cod_livro`),
  INDEX `cod_categoria_fk_idx` (`cod_categoria_fk` ASC) VISIBLE,
  INDEX `cod_editora_fk_idx` (`cod_editora_fk` ASC) VISIBLE,
  CONSTRAINT `cod_categoria_fk`
    FOREIGN KEY (`cod_categoria_fk`)
    REFERENCES `livraria-jqw`.`categoria` (`cod_categoria`)
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `cod_editora_fk`
    FOREIGN KEY (`cod_editora_fk`)
    REFERENCES `livraria-jqw`.`editora` (`cod_editora`)
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `livraria-jqw`.`funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `livraria-jqw`.`funcionario` (
  `cod_funcionario` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(50) NOT NULL,
  `telefone_1` VARCHAR(11) NOT NULL,
  `telefone_2` VARCHAR(11) NULL,
  `email` VARCHAR(50) NOT NULL,
  `cargo` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`cod_funcionario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `livraria-jqw`.`pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `livraria-jqw`.`pedido` (
  `cod_pedido` INT NOT NULL AUTO_INCREMENT,
  `cod_cliente_fk` INT NOT NULL,
  `cod_funcionario_fk` INT NOT NULL,
  `data` DATETIME NOT NULL,
  `valor_pedido` DECIMAL(5,2) DEFAULT 0,
  PRIMARY KEY (`cod_pedido`),
  INDEX `cod_cliente_fk_idx` (`cod_cliente_fk` ASC) VISIBLE,
  INDEX `cod_funcionario_fk_idx` (`cod_funcionario_fk` ASC) VISIBLE,
  CONSTRAINT `cod_cliente_fk`
    FOREIGN KEY (`cod_cliente_fk`)
    REFERENCES `livraria-jqw`.`cliente` (`cod_cliente`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `cod_funcionario_fk`
    FOREIGN KEY (`cod_funcionario_fk`)
    REFERENCES `livraria-jqw`.`funcionario` (`cod_funcionario`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `livraria-jqw`.`item_pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `livraria-jqw`.`item_pedido` (
  `quantidade_pedido` INT NOT NULL,
  `valor_item` DECIMAL(5,2) NOT NULL,
  `livro_cod_livro` INT NOT NULL,
  `pedido_cod_pedido` INT NOT NULL,
  PRIMARY KEY (`livro_cod_livro`, `pedido_cod_pedido`),
  INDEX `fk_item_pedido_pedido1_idx` (`pedido_cod_pedido` ASC) VISIBLE,
  CONSTRAINT `fk_item_pedido_livro1`
    FOREIGN KEY (`livro_cod_livro`)
    REFERENCES `livraria-jqw`.`livro` (`cod_livro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_item_pedido_pedido1`
    FOREIGN KEY (`pedido_cod_pedido`)
    REFERENCES `livraria-jqw`.`pedido` (`cod_pedido`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `livraria-jqw`.`pessoa_fisica`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `livraria-jqw`.`pessoa_fisica` (
  `cpf` VARCHAR(14) NOT NULL,
  `cliente_cod_cliente` INT NOT NULL,
  PRIMARY KEY (`cliente_cod_cliente`),
  CONSTRAINT `fk_pessoa_fisica_cliente1`
    FOREIGN KEY (`cliente_cod_cliente`)
    REFERENCES `livraria-jqw`.`cliente` (`cod_cliente`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `livraria-jqw`.`pessoa_juridica`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `livraria-jqw`.`pessoa_juridica` (
  `cnpj` VARCHAR(14) NOT NULL,
  `cliente_cod_cliente` INT NOT NULL,
  PRIMARY KEY (`cliente_cod_cliente`),
  CONSTRAINT `fk_pessoa_juridica_cliente1`
    FOREIGN KEY (`cliente_cod_cliente`)
    REFERENCES `livraria-jqw`.`cliente` (`cod_cliente`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
