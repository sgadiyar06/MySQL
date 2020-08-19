use imdb;

SELECT * FROM reviewers;

SELECT * FROM series;

SELECT * FROM reviews;

SELECT 
	title as unreviewed_titles,
    rating
FROM series
LEFT JOIN reviews
	ON reviews.series_id = series.id
WHERE ISNULL(rating);
