SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `webpro` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `webpro` ;

-- -----------------------------------------------------
-- Table `webpro`.`MEMBERS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `webpro`.`MEMBERS` (
  `member_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `member_email` VARCHAR(100) NOT NULL,
  `member_password` VARCHAR(100) NOT NULL,
  `member_money` DECIMAL(10,2) NOT NULL,
  `member_role` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`member_id`),
  UNIQUE INDEX `member_email_UNIQUE` (`member_email` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `webpro`.`PRODUCTS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `webpro`.`PRODUCTS` (
  `product_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_name` VARCHAR(100) NOT NULL,
  `product_price` DECIMAL(10,2) UNSIGNED NOT NULL,
  `product_img` VARCHAR(255) NOT NULL,
  `product_desc` TEXT NOT NULL,
  `product_realpath` VARCHAR(255) NOT NULL,
  `product_addtime` DATETIME NOT NULL,
  `product_updatetime` DATETIME NOT NULL,
  `member_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`product_id`, `member_id`),
  INDEX `fk_PRODUCTS_MEMBERS1_idx` (`member_id` ASC),
  CONSTRAINT `fk_PRODUCTS_MEMBERS1`
    FOREIGN KEY (`member_id`)
    REFERENCES `webpro`.`MEMBERS` (`member_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `webpro`.`REVIEWS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `webpro`.`REVIEWS` (
  `review_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `review_star` TINYINT UNSIGNED NOT NULL,
  `review_addtime` DATETIME NOT NULL,
  `review_content` TEXT NOT NULL,
  `member_id` INT UNSIGNED NOT NULL,
  `product_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`review_id`),
  INDEX `fk_REVIEWS_MEMBERS1_idx` (`member_id` ASC),
  INDEX `fk_REVIEWS_PRODUCTS1_idx` (`product_id` ASC),
  CONSTRAINT `fk_REVIEWS_MEMBERS1`
    FOREIGN KEY (`member_id`)
    REFERENCES `webpro`.`MEMBERS` (`member_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_REVIEWS_PRODUCTS1`
    FOREIGN KEY (`product_id`)
    REFERENCES `webpro`.`PRODUCTS` (`product_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `webpro`.`ORDERS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `webpro`.`ORDERS` (
  `order_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `member_id` INT UNSIGNED NOT NULL,
  `order_time` DATETIME NOT NULL,
  `order_total` DECIMAL(10,2) UNSIGNED NOT NULL,
  `order_status` TINYINT NOT NULL,
  PRIMARY KEY (`order_id`),
  INDEX `fk_ORDERS_MEMBERS1_idx` (`member_id` ASC),
  CONSTRAINT `fk_ORDERS_MEMBERS1`
    FOREIGN KEY (`member_id`)
    REFERENCES `webpro`.`MEMBERS` (`member_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `webpro`.`TAGS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `webpro`.`TAGS` (
  `tag_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `tag_name` VARCHAR(50) NOT NULL,
  `tag_count` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`tag_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `webpro`.`DOWNLOAD_LINK`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `webpro`.`DOWNLOAD_LINK` (
  `dl_id` VARCHAR(40) NOT NULL,
  `member_id` INT UNSIGNED NOT NULL,
  `product_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`dl_id`),
  INDEX `fk_DOWNLOAD_LINK_MEMBERS1_idx` (`member_id` ASC),
  INDEX `fk_DOWNLOAD_LINK_PRODUCTS1_idx` (`product_id` ASC),
  CONSTRAINT `fk_DOWNLOAD_LINK_MEMBERS1`
    FOREIGN KEY (`member_id`)
    REFERENCES `webpro`.`MEMBERS` (`member_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_DOWNLOAD_LINK_PRODUCTS1`
    FOREIGN KEY (`product_id`)
    REFERENCES `webpro`.`PRODUCTS` (`product_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `webpro`.`TAG_PRODUCT`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `webpro`.`TAG_PRODUCT` (
  `tag_id` INT UNSIGNED NOT NULL,
  `product_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`tag_id`, `product_id`),
  INDEX `fk_TAG_PRODUCT_TAGS_idx` (`tag_id` ASC),
  INDEX `fk_TAG_PRODUCT_PRODUCTS1_idx` (`product_id` ASC),
  CONSTRAINT `fk_TAG_PRODUCT_TAGS`
    FOREIGN KEY (`tag_id`)
    REFERENCES `webpro`.`TAGS` (`tag_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_TAG_PRODUCT_PRODUCTS1`
    FOREIGN KEY (`product_id`)
    REFERENCES `webpro`.`PRODUCTS` (`product_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `webpro`.`ORDER_DETAILS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `webpro`.`ORDER_DETAILS` (
  `order_id` INT UNSIGNED NOT NULL,
  `product_id` INT UNSIGNED NOT NULL,
  `product_price` DECIMAL(10,2) UNSIGNED NOT NULL,
  PRIMARY KEY (`order_id`, `product_id`),
  INDEX `fk_ORDER_DETAILS_PRODUCTS1_idx` (`product_id` ASC),
  INDEX `fk_ORDER_DETAILS_ORDERS1_idx` (`order_id` ASC),
  CONSTRAINT `fk_ORDER_DETAILS_PRODUCTS1`
    FOREIGN KEY (`product_id`)
    REFERENCES `webpro`.`PRODUCTS` (`product_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ORDER_DETAILS_ORDERS1`
    FOREIGN KEY (`order_id`)
    REFERENCES `webpro`.`ORDERS` (`order_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
