show databases;
use practice;
show tables;

SELECT * FROM books;

SELECT 10 != 10;

SELECT 15>14 && 99-5 <= 94;

SELECT 1 IN (5,3) || 9 BETWEEN 8 AND 10;

SELECT * FROM books WHERE released_year < 1980;

SELECT * FROM books WHERE author_lname = 'Eggers' OR author_lname = 'Chabon';

SELECT * FROM books WHERE author_lname = 'lahiri' AND released_year > 2000;

SELECT * FROM books WHERE pages BETWEEN 100 and 200;

SELECT * FROM books WHERE author_lname like 'C%' OR author_lname like 'S%' ;

SELECT 	title,author_lname,
		CASE
        WHEN title LIKE '%stories' THEN 'Short Stories'
        WHEN title LIKE '%kids%' OR title LIKE '%genius%' THEN 'Memoir'
        ELSE 'Novel'
	END AS 'Type'
FROM books;

SELECT title, author_lname,
CASE
        WHEN count(*) > 1 THEN concat(count(*),' books')
        ELSE '1 book'
        END AS Count
FROM books
GROUP BY author_lname
ORDER BY count(*);

