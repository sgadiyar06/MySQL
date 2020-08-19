use imdb;

SELECT * FROM reviewers;

SELECT * FROM series;

SELECT * FROM reviews;

SELECT 
	first_name AS 'First Name',
    last_name AS 'Last Name',
    COUNT(*) AS COUNT,
    IFNULL(MIN(rating),0) AS MIN,
    IFNULL(MAX(rating),0) AS MAX,
    IFNULL( ROUND( AVG(rating), 2) , 0) AS AVG,
    IF(COUNT(rating) > 0, 'ACTIVE','INACTIVE') AS STATUS
-- we can use if or case when, both work just fine
--     CASE
-- 		WHEN COUNT(rating) > 0 THEN 'ACTIVE'
--         ELSE 'INACTIVE'
-- 	END AS STATUS
FROM reviewers
LEFT JOIN reviews
	ON reviewers.id = reviews.reviewer_id
GROUP BY reviewers.id;

SELECT 
	first_name AS 'First Name',
    last_name AS 'Last Name',
    COUNT(*) AS COUNT,
    IFNULL(MIN(rating),0) AS MIN,
    IFNULL(MAX(rating),0) AS MAX,
    IFNULL( ROUND( AVG(rating), 2) , 0) AS AVG,
    CASE
 		WHEN COUNT(rating) >= 10 THEN 'POWER USER'
        WHEN COUNT(rating) > 0 THEN 'Active'
		ELSE 'INACTIVE'
	END AS STATUS
FROM reviewers
LEFT JOIN reviews
	ON reviewers.id = reviews.reviewer_id
GROUP BY reviewers.id;