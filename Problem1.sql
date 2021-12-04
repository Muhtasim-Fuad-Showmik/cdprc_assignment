CREATE DATABASE `cdprc_prb1`;
USE DATABASE `cdprc_prb1`;

CREATE TABLE employees (
    employeeId VARCHAR(255),
    employeeName VARCHAR(255)
);

CREATE TABLE fileTypes (
    idOrName VARCHAR(255),
    fileType VARCHAR(255)
);

INSERT INTO
	`employees`
VALUES
	('1', 'Alice'),
	('2', 'John'),
	('3', 'Jane'),
	('4', 'Alice'),
	('5', 'Bob');
	
INSERT INTO
	`filetypes`
VALUES
	('100', 'jpeg'),
	('Alice', 'png'),
	('3', 'jpg'),
	('1', 'jpg'),
	('John', 'jpeg');

SELECT
	COUNT(*)
FROM
	(SELECT
	DISTINCT `filetypes`.`fileType`
FROM
	`cdprc_prb1`.`filetypes`
INNER JOIN
	`cdprc_prb1`.`employees`
ON
	`filetypes`.`idOrName` = `employees`.`employeeId`
UNION
SELECT
	DISTINCT `filetypes`.`fileType`
FROM
	`cdprc_prb1`.`filetypes`
INNER JOIN
	`cdprc_prb1`.`employees`
ON
	`filetypes`.`idOrName` = `employees`.`employeeName`) filetypes;