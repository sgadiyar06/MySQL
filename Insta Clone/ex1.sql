desc users;
desc photos;
desc comments;
desc follows;
desc tags;
desc photo_tags;
desc likes;

SELECT *
FROM users
ORDER BY created_at
LIMIT 5;

SELECT 
username,
DAYNAME(created_at) AS day,
COUNT(*) AS total
FROM users
GROUP BY day
ORDER BY total DESC;