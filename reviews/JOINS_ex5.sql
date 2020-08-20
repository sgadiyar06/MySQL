use imdb;

SELECT * FROM reviewers;

SELECT * FROM series;

SELECT * FROM reviews;

SELECT 
	genre,
	ROUND(
		AVG(rating),2
	) as avg_rating
FROM series
JOIN reviews
	ON series.id = reviews.series_id
GROUP BY genre;