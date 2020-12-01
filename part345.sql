-- **************Part 3**************

-- CREATE SCHEMA `megabooks` DEFAULT CHARACTER SET utf8 ;
-- USE megabooks;

-- CREATE TABLE `megabooks`.`customers` (
--  `customer_id` BIGINT NOT NULL,
--  `first_name` VARCHAR(255) NULL,
--  `last_name` VARCHAR(255) NULL,
--  `email` VARCHAR(255) NULL,
--  PRIMARY KEY (`customer_id`));

-- CREATE TABLE `megabooks`.`employees` (
--  `employee_id` BIGINT NOT NULL,
--  `first_name` VARCHAR(255) NULL,
--  `last_name` VARCHAR(255) NULL,
--  `start_date` DATE NULL,
--  `position_held` VARCHAR(45) NULL,
--  PRIMARY KEY (`employee_id`));

--  CREATE TABLE `megabooks`.`products` (
--  `product_id` BIGINT NOT NULL,
--  `product_title` VARCHAR(255) NULL,
--  `amount_in_stock` INT NULL,
--  `price` DECIMAL(5,2) NULL,
--  PRIMARY KEY (`product_id`));


-- CREATE TABLE `megabooks`.`purchases` (
--  `purchase_id` BIGINT NOT NULL,
--  `customer_id` BIGINT NULL,
--  `employee_id` BIGINT NULL,
--  `product_id` BIGINT NULL,
--  `purchased_online` TINYINT NULL,
--  `purchase_date` DATETIME NULL,
--  `amount_paid` DECIMAL(5,2) NULL,
--  PRIMARY KEY (`purchase_id`),
--  INDEX `purchases_customer_id_idx` (`customer_id` ASC) VISIBLE,
--  INDEX `purchases_employee_id_idx` (`employee_id` ASC) VISIBLE,
--  INDEX `purchases_product_id_idx` (`product_id` ASC) VISIBLE,
--  CONSTRAINT `purchases_customer_id`
--    FOREIGN KEY (`customer_id`)
--    REFERENCES `megabooks`.`customers` (`customer_id`)
--    ON DELETE NO ACTION
--    ON UPDATE NO ACTION,
--  CONSTRAINT `purchases_employee_id`
--    FOREIGN KEY (`employee_id`)
--    REFERENCES `megabooks`.`employees` (`employee_id`)
--    ON DELETE NO ACTION
--    ON UPDATE NO ACTION,
--  CONSTRAINT `purchases_product_id`
--    FOREIGN KEY (`product_id`)
--    REFERENCES `megabooks`.`products` (`product_id`)
--    ON DELETE NO ACTION
--    ON UPDATE NO ACTION);



-- **************Part 4**************


-- ALTER TABLE `megabooks`.`customers` 
-- CHANGE COLUMN `first_name` `first_name` VARCHAR(255) NOT NULL ,
-- CHANGE COLUMN `last_name` `last_name` VARCHAR(255) NOT NULL ;

-- ALTER TABLE `megabooks`.`employees` 
-- CHANGE COLUMN `first_name` `first_name` VARCHAR(255) NOT NULL ,
-- CHANGE COLUMN `last_name` `last_name` VARCHAR(255) NOT NULL ,
-- CHANGE COLUMN `start_date` `start_date` DATE NOT NULL ,
-- CHANGE COLUMN `position_held` `position_held` VARCHAR(45) NOT NULL ;

-- ALTER TABLE `megabooks`.`products` 
-- CHANGE COLUMN `product_title` `product_title` VARCHAR(255) NOT NULL ,
-- CHANGE COLUMN `amount_in_stock` `amount_in_stock` INT NOT NULL ,
-- CHANGE COLUMN `price` `price` DECIMAL(5,2) NOT NULL ,
-- ADD UNIQUE INDEX `product_title_UNIQUE` (`product_title` ASC) VISIBLE;

-- ALTER TABLE `megabooks`.`purchases` 
-- DROP FOREIGN KEY `purchases_customer_id`,
-- DROP FOREIGN KEY `purchases_employee_id`,
-- DROP FOREIGN KEY `purchases_product_id`;
-- ALTER TABLE `megabooks`.`purchases` 
-- CHANGE COLUMN `customer_id` `customer_id` BIGINT NOT NULL ,
-- CHANGE COLUMN `employee_id` `employee_id` BIGINT NULL ,
-- CHANGE COLUMN `product_id` `product_id` BIGINT NOT NULL ,
-- CHANGE COLUMN `purchased_online` `purchased_online` TINYINT NOT NULL ,
-- CHANGE COLUMN `purchase_date` `purchase_date` DATETIME NOT NULL ,
-- CHANGE COLUMN `amount_paid` `amount_paid` DECIMAL(5,2) NOT NULL ;
-- ALTER TABLE `megabooks`.`purchases` 
-- ADD CONSTRAINT `purchases_customer_id`
--   FOREIGN KEY (`customer_id`)
--   REFERENCES `megabooks`.`customers` (`customer_id`),
-- ADD CONSTRAINT `purchases_employee_id`
--   FOREIGN KEY (`employee_id`)
--   REFERENCES `megabooks`.`employees` (`employee_id`),
-- ADD CONSTRAINT `purchases_product_id`
--   FOREIGN KEY (`product_id`)
--   REFERENCES `megabooks`.`products` (`product_id`);


-- **************Part 5**************



-- purchasesINSERT INTO employees VALUES
-- (1,'Vinny', 'Sinistra','2020-02-02','Sales representative');
-- (2,'Steve', 'Holden','2019-01-09','Cashier'),
-- (3,'Josephine', 'Farthright','2018-08-06','Clerk'),
-- (4,'Julia', 'Kenner','2020-04-03','Janitor'),
-- (5,'Bob', 'Kreps','2020-06-06','Cashier');
-- (6,'Sammy', 'Jacobs','2020-03-03','Cashier'),
-- (7,'David', 'Davies','2020-03-03','Cashier'),
-- (8,'Elizabith', 'Morrison','2019-05-01','Cashier'),
-- (9,'Christa', 'Jenkins','2019-05-02','Cashier');

-- INSERT INTO products VALUES
-- (1,"The hitchhiker's guide to the galaxy",5,99.99),
-- (2,"Automate the boring stuff with Python",3,299.99),
-- (3,"A brief history of time",7,399.99),
-- (4,"How to win friends and influence people",9,499.99),
-- (5,"Artificial intelligence, a modern approach",8,599.99);

-- INSERT INTO customers VALUES
-- (1,"Maria", "Butina", "MButina@gmail.com"),
-- (2,"Steve", "Rogers", "rogers@gmail.com"),
-- (3,"Joseph", "Manderley", "manderley@govmail.com"),
-- (4,"Susan", "Wright", "swright567@gmail.com"),
-- (5,"Olivia", "Vetina", "olive2Vetina3@gmail.com");

-- INSERT INTO purchases VALUES
-- (1,3,NULL,1,TRUE,'2020-07-09 22:15:43',99.99),
-- (2,4,1,1,FALSE,'2020-08-10 20:24:42',99.99),
-- (3,1,3,1,FALSE,'2020-09-4 12:45:56',99.99),
-- (4,2,2,1,FALSE,'2020-08-11 13:33:12',99.99),

-- (5,3,3,4,FALSE,'2020-06-13 23:12:13',499.99),
-- 6,1,5,2,FALSE,'2020-06-14 11:11:12',299.99),
-- (7,2,5,3,FALSE,'2020-06-15 10:12:13',399.99),
-- (8,3,5,4,FALSE,'2020-06-16 09:04:03',499.99),

-- (9,5,NULL,2,True,'2020-07-19 09:08:06',299.99),
-- (10,5,NULL,2,True,'2020-07-19 09:08:06',299.99),
-- (11,5,NULL,2,True,'2020-07-19 09:08:06',299.99);
