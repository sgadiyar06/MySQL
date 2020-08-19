use imdb;

SELECT * FROM reviewers;

SELECT * FROM series;

SELECT * FROM reviews;

SELECT title, rating
FROM series, reviews
WHERE series.id = reviews.series_id
LIMIT 15;

SELECT 
	title,
    rating 
FROM series
JOIN reviews
	ON  series.id = reviews.reviewer_id;

