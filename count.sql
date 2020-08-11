/* continue from practice5.sql file */
use practice;
show tables;
select * from books;
desc books;

SELECT COUNT(*) FROM books;

SELECT COUNT(author_fname) FROM books;

SELECT COUNT(DISTINCT author_fname) FROM books;

SELECT COUNT(DISTINCT author_lname) FROM books;

SELECT COUNT(DISTINCT author_fname,author_lname) FROM books;

SELECT COUNT(*) FROM books WHERE title LIKE '%the%';


