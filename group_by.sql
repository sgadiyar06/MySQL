/* continue from practice5.sql file */
use practice;
show tables;
select * from books;
desc books;

SELECT author_lname, COUNT(*) as 'no of books' FROM books GROUP BY author_lname;

SELECT author_fname,author_lname, COUNT(*) as 'no of books' FROM books GROUP BY author_fname,author_lname;

SELECT author_lname, COUNT(*) as 'no of books' FROM books GROUP BY author_lname ORDER BY 2 DESC;

SELECT released_year, COUNT(*) FROM books GROUP BY released_year;

SELECT CONCAT('In ',released_year,' ', COUNT(*), ' book(s) were released') as year FROM books GROUP BY released_year;

