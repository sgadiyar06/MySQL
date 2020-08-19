use imdb;

SELECT * FROM reviewers;

SELECT * FROM series;

SELECT * FROM reviews;

SELECT
	title,
	rating,
	CONCAT(first_name,' ',last_name) AS Name
FROM reviews
JOIN reviewers
	ON reviews.reviewer_id = reviewers.id
JOIN series
	ON series.id = reviews.series_id
ORDER BY title;
    
    