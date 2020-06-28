-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'department'
-- 
-- ---

DROP TABLE IF EXISTS `department`;
		
CREATE TABLE `department` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(200) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'employee'
-- 
-- ---

DROP TABLE IF EXISTS `employee`;
		
CREATE TABLE `employee` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `department_id` INTEGER(8) NOT NULL,
  `chief_id` INTEGER(8) NULL DEFAULT NULL,
  `name` VARCHAR(100) NULL DEFAULT NULL,
  `salary` INTEGER(8) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
KEY (`department_id`, `chief_id`)
);

-- ---
-- Foreign Keys 
-- ---


-- ---
-- Table Properties
-- ---

-- ALTER TABLE `department` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `employee` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

 INSERT INTO `department` (`id`,`name`) VALUES
('1','Управление');
 INSERT INTO `department` (`id`,`name`) VALUES
('2','Сборочный цех');
 INSERT INTO `department` (`id`,`name`) VALUES
('3','Машинисты');
 INSERT INTO `department` (`id`,`name`) VALUES
('4','Бухгалтерия');

 INSERT INTO `employee` (`id`,`department_id`,`chief_id`,`name`,`salary`) VALUES
('1','1','1','Васильев','14400');
 INSERT INTO `employee` (`id`,`department_id`,`chief_id`,`name`,`salary`) VALUES
('2','1','0','Конев','112220');
 INSERT INTO `employee` (`id`,`department_id`,`chief_id`,`name`,`salary`) VALUES
('3','1','0','Харистолис','11000');
 INSERT INTO `employee` (`id`,`department_id`,`chief_id`,`name`,`salary`) VALUES
('4','1','0','Колев','85440');
 INSERT INTO `employee` (`id`,`department_id`,`chief_id`,`name`,`salary`) VALUES
('5','2','1','Мидиратов','11555');
 INSERT INTO `employee` (`id`,`department_id`,`chief_id`,`name`,`salary`) VALUES
('6','3','1','Костюшкина','12000');
 INSERT INTO `employee` (`id`,`department_id`,`chief_id`,`name`,`salary`) VALUES
('7','2','0','Кривошеев','15000');
 INSERT INTO `employee` (`id`,`department_id`,`chief_id`,`name`,`salary`) VALUES
('8','4','1','Калмиц','870000');
 INSERT INTO `employee` (`id`,`department_id`,`chief_id`,`name`,`salary`) VALUES
('9','4','0','Колесников','10000');
 INSERT INTO `employee` (`id`,`department_id`,`chief_id`,`name`,`salary`) VALUES
('10','3','0','Коломиец','12444');
 INSERT INTO `employee` (`id`,`department_id`,`chief_id`,`name`,`salary`) VALUES
('11','4','0','Оксовариев','30000');
 INSERT INTO `employee` (`id`,`department_id`,`chief_id`,`name`,`salary`) VALUES
('12','2','0','Димитров','15444');
 INSERT INTO `employee` (`id`,`department_id`,`chief_id`,`name`,`salary`) VALUES
('13','2','0','Костымаров','25005');
 INSERT INTO `employee` (`id`,`department_id`,`chief_id`,`name`,`salary`) VALUES
('14','3','0','Абалхариев','12550');
 INSERT INTO `employee` (`id`,`department_id`,`chief_id`,`name`,`salary`) VALUES
('15','1','0','Лесуков','5000');
