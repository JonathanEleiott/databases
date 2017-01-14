-- ---
-- Globals
-- ---

CREATE DATABASE chat;

USE chat;

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'Messages'
-- 
-- ---

DROP TABLE IF EXISTS `Messages`;
    
CREATE TABLE `Messages` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `usernameId` INT NULL DEFAULT NULL,
  `time` TIMESTAMP NULL DEFAULT NULL,
  `roomId` INTEGER NULL DEFAULT NULL,
  `text` CHAR(70) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Room'
-- 
-- ---

DROP TABLE IF EXISTS `Room`;
    
CREATE TABLE `Room` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `name` VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'User'
-- 
-- ---

DROP TABLE IF EXISTS `User`;
    
CREATE TABLE `User` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `username` CHAR NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `Messages` ADD FOREIGN KEY (usernameId) REFERENCES `User` (`id`);
ALTER TABLE `Messages` ADD FOREIGN KEY (roomId) REFERENCES `Room` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `Messages` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Room` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `User` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `Messages` (`id`,`usernameId`,`time`,`roomId`,`text`) VALUES
-- ('','','','','');
-- INSERT INTO `Room` (`id`,`name`) VALUES
-- ('','');
-- INSERT INTO `User` (`id`,`username`) VALUES
-- ('','');

/* Create other tables and define schemas for them here! */




/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

