/* using books database from practice5.sql */
show databases;
use practice;
show tables;

DESC books;

SELECT * FROM books;	

SELECT title,released_year FROM books WHERE title != 2017;

SELECT title,author_lname FROM books WHERE author_lname != 'Harris';

SELECT title FROM books WHERE title NOT LIKE '%the%';

SELECT * FROM books WHERE title NOT LIKE 'W%' ;

SELECT title,pages FROM books WHERE pages > 250;

SELECT title,released_year FROM books WHERE released_year > 2010;

SELECT title,released_year FROM books WHERE released_year >= 2004;

SELECT 'b' > 'a';

SELECT 'A' >= 'a';

SELECT title,released_year FROM books WHERE released_year < 2014;

SELECT title,released_year FROM books WHERE released_year <= 2003 ORDER BY released_year;

SELECT 'Q' <= 'q';

SELECT title,author_lname,released_year FROM books WHERE author_lname = 'eggers' && released_year > 2010;
-- we can also use 'ADD' instead of using the symbols
SELECT title,author_lname,released_year FROM books WHERE author_lname = 'eggers' AND released_year > 2010 AND title LIKE '%the%';
-- we can use multiple conditions

SELECT title,author_fname,released_year FROM books WHERE author_fname LIKE '%dav%' || released_year > 2010;
-- we can also use "OR" instead of the symbols
SELECT title,author_fname,released_year FROM books WHERE author_fname LIKE '%dav%' OR released_year > 2010;

SELECT title,released_year FROM books WHERE released_year >=2004 AND released_year <=2010;

SELECT title,released_year FROM books WHERE released_year BETWEEN 2004 AND 2010;

SELECT title,released_year FROM books WHERE released_year NOT BETWEEN 2004 AND 2010 ORDER BY released_year;

SELECT CAST('2017-09-14' AS DATETIME);

SELECT title,author_lname FROM books WHERE author_lname IN ('Smith','Eggers','Harris');

SELECT title,author_lname FROM books WHERE author_lname NOT IN ('Smith','Eggers','Harris');

SELECT title,released_year FROM books WHERE released_year IN (2017,2004,2003);

SELECT title,released_year FROM books WHERE released_year %2 != 0  ORDER BY released_year;

SELECT title,released_year,
		CASE 
        WHEN released_year >= 2000 THEN 'Modern Lit'
        ELSE '20TH century'
        END AS GENRE
FROM books;

SELECT title,stock_quantity,
		CASE
        WHEN stock_quantity < 20 THEN '*'
        WHEN stock_quantity <= 100 THEN '**'
        ELSE '***'
        END AS STOCK
FROM books
ORDER BY stock_quantity;