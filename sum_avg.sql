/* continue from practice5.sql file */
use practice;
show tables;
select * from books;
desc books;

SELECT SUM(pages) FROM books;

SELECT author_fname,author_lname,SUM(pages) 
FROM books
GROUP BY author_lname,author_fname;


SELECT AVG(pages) FROM books;

SELECT author_fname,author_lname, AVG(pages)
FROM books 
GROUP BY author_lname,author_fname;

SELECT released_year, AVG(stock_quantity)
FROM books
GROUP BY released_year
ORDER BY avg(stock_quantity) DESC;
