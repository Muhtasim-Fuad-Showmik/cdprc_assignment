USE DATABASE `cdprc_prb1`;

CREATE TABLE students (
    id INT,
    studentName VARCHAR(255),
    score INT
);

CREATE TABLE categories (
    category INT,
    min_score INT,
    max_score INT
);

INSERT INTO
	`students`
VALUES
	(1, "John", 25),
	(2, "Jane", 43),
	(3, "Bob", 61),
	(4, "Jake", 78),
	(5, "Reed", 88);
	
INSERT INTO
	`categories`
VALUES
	(1, 0, 30),
	(2, 31, 45),
	(3, 46, 65),
	(4, 66, 85),
	(5, 86, 100);
	
SELECT
	`students`.`studentName` AS 'Name',
	`categories`.`category` AS 'Category',
	CASE
		WHEN `categories`.`category` < 3 THEN 'Failed'
		WHEN `categories`.`category` >= 3 THEN 'Passed'
	END AS 'Result'
FROM
	`cdprc_prb1`.`students`
LEFT JOIN
	`cdprc_prb1`.`categories`
ON
	(
		`students`.`score` >= `categories`.`min_score`
	AND
		`students`.`score` <= `categories`.`max_score`
	)
ORDER BY
	`categories`.`category` DESC;