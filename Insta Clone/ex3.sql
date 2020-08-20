desc users;
desc photos;
desc comments;
desc follows;
desc tags;
desc photo_tags;
desc likes;


-- average number of photos per users

SELECT 
(SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users)
AS average;

-- most used photo tags used 
SELECT
	tag_id,
    tags.tag_name,
	COUNT(*) AS total
FROM photo_tags
JOIN tags
	ON photo_tags.tag_id = tags.id
GROUP BY tag_id
ORDER BY total DESC;