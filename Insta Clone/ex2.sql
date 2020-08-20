desc users;
desc photos;
desc comments;
desc follows;
desc tags;
desc photo_tags;
desc likes;


-- find users who have never posted a photo

SELECT
	username
FROM users
LEFT JOIN photos
	ON users.id = photos.user_id
WHERE photos.id IS NULL;

-- find most liked photos
SELECT
	photos.user_id,
	photo_id, 
    username,
    count(*) as likes
FROM photos
JOIN likes
	ON likes.photo_id = photos.id
JOIN users
	ON users.id = photos.user_id
GROUP BY photos.id
ORDER BY likes DESC
LIMIT 10;