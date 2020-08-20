desc users;
desc photos;
desc comments;
desc follows;
desc tags;
desc photo_tags;
desc likes;


-- finding bots which have liked every single photo

SELECT 
	username,
    user_id,
    COUNT(*) as total
FROM users
JOIN likes
	ON users.id = likes.user_id
GROUP BY likes.user_id
HAVING total = (SELECT COUNT(*) FROM photos);
