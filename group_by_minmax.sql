/* continue from practice5.sql file */
use practice;
show tables;
select * from books;
desc books;

SELECT author_fname,author_lname, MIN(released_year) 
FROM books 
GROUP BY author_fname,author_lname;

SELECT author_fname,author_lname, MAX(pages) 
FROM books 
GROUP BY author_fname,author_lname;

SELECT 
	CONCAT(author_fname,' ',author_lname), MIN(released_year) as 'first book released in'
FROM books 
GROUP BY author_fname,author_lname;

SELECT 
	CONCAT(author_fname,' ',author_lname), MAX(pages) as 'longest book'
FROM books 
GROUP BY author_fname,author_lname;

