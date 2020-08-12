/* continue from practice5.sql file */
use practice;
show tables;
select * from books;
desc books;


SELECT COUNT(*) as 'no of books' FROM books;

SELECT released_year,COUNT(*) as 'total books' 
FROM books 
GROUP BY released_year
ORDER BY released_year;

SELECT SUM(stock_quantity) as 'total number of books' FROM books;

SELECT author_fname,author_lname, AVG(released_year)
FROM books
GROUP BY author_lname, author_fname;

SELECT CONCAT(author_fname,' ',author_lname) as name, pages
FROM books
WHERE pages = (SELECT MAX(pages) FROM books);

SELECT released_year AS 'year', COUNT(*) as '# books', AVG(pages) as 'avg pages'
FROM books
GROUP BY released_year
ORDER BY released_year;