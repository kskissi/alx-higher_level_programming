-- creates the database hbtn_0c_0 in my MySQL server.
CREATE DATABASE IF NOT EXISTS `hbtn_0c_0`;	
-- deletes the database hbtn_0c_0 in my MySQL server
DROP DATABASE IF EXISTS `hbtn_0c_0`;
-- Lists all the tables of my database in my MySQL server
SHOW TABLES;
-- creates a table called first_table in my current DB
CREATE TABLE IF NOT EXISTS `first_table` (`id` INT, `name` VARCHAR(256));
-- Prints the full description of the table first_table.
SHOW CREATE TABLE `first_table`;
-- Lists all rows of the table first_table.
SELECT * FROM `first_table`;
-- Inserts a new row into the table first_table.
INSERT INTO `first_table` (`id`, `name`) VALUES (89, "Best School");
-- Displays the number of records with id = 89 in the table first_table.
SELECT COUNT(*)
FROM `first_table`
WHERE `id` = 89;
-- Creates and fills a table second_table with attributes id, name and score.
CREATE TABLE IF NOT EXISTS `second_table` (`id` INT, `name` VARCHAR(256), `score` INT);
INSERT INTO `second_table` (`id`, `name`, `score`) VALUES (1, "John", 10);
INSERT INTO `second_table` (`id`, `name`, `score`) VALUES (2, "Alex", 3);
INSERT INTO `second_table` (`id`, `name`, `score`) VALUES (3, "Bob", 14);
INSERT INTO `second_table` (`id`, `name`, `score`) VALUES (4, "George", 8);
-- Lists all records of the table second_table.
-- Records are ordered by descending score.
SELECT `score`, `name`
FROM `second_table`
ORDER BY `score` DESC;
-- Lists all records in the table second_table with a score >= 10.
-- Records are ordered by descending score.
SELECT `score`, `name`
FROM `second_table`
WHERE `score` >= 10
ORDER BY `score` DESC;
-- Updates the score of Bob to 10 in the table second_table.
UPDATE `second_table`
SET `score` = 10
WHERE `name` = "Bob";
-- Removes all records with a score <= 5 in the table second_table.
DELETE FROM `second_table`
WHERE `score` <= 5;
-- Computes the average score of all records in the table second_table.
SELECT AVG(`score`) AS `average`
FROM `second_table`;
-- Lists the number of records with the same score in the table second_table.
-- Records are ordered by descending count.
SELECT `score`, COUNT(*) AS `number`
FROM `second_table`
GROUP BY `score`
ORDER BY `number` DESC;
-- Lists all records of the table second_table having a name value.
-- Records are ordered by descending score.
SELECT `score`, `name`
FROM `second_table`
WHERE `name` != ""
ORDER BY `score` DESC
-- Converts the entire database hbtn_0c_0 to UTF8.
USE `hbtn_0c_0`
ALTER TABLE `first_table`
CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
-- Displays the average temperature (in Fahrenheit)
-- by city ordered by descending temperature.
SELECT `city`, AVG(`value`) AS `avg_temp`
FROM `temperatures`
GROUP BY `city`
ORDER BY `avg_temp` DESC;
-- Displays the 3 cities with the highest average
-- temperatures between July and August.
SELECT `city`, AVG(`value`) AS `avg_temp`
FROM `temperatures`
WHERE `month` = 7 OR `month` = 8
GROUP BY `city`
ORDER BY `avg_temp` DESC
LIMIT 3;
-- Displays the max temperature of each state, ordered by state name.
SELECT `state`, MAX(`value`) AS `max_temp`
FROM `temperatures`
GROUP BY `state`
ORDER BY `state`;
