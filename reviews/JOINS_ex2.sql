use imdb;

SELECT * FROM reviewers;

SELECT * FROM series;

SELECT * FROM reviews;

SELECT
	series.id,
	title,
    AVG(rating) as avg_rating
FROM series
JOIN reviews
	ON series.id = reviews.series_id
GROUP BY series.id
ORDER BY avg_rating;