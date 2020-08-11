/* continue from practice5.sql file */
use practice;
show tables;
select * from books;
desc books;

SELECT title, MAX(pages) FROM books;

SELECT title, pages FROM books;
-- we can see that the book containing the max pages isnt being shown properly
-- in the previous query

SELECT * FROM books 
	WHERE pages = (SELECT MAX(pages) FROM books) ;
-- by using sub query we can get what we tried before

SELECT title,pages FROM books
	WHERE pages = (SELECT MIN(pages) FROM books) ;

SELECT title,pages FROM books
	WHERE released_year = (SELECT MAX(released_year) FROM books);
    
SELECT title,author_fname,author_lname FROM books
	WHERE stock_quantity = (SELECT MAX(stock_quantity) FROM books);
    
-- if we dont want to do it by using subqueries then:
SELECT * FROM books ORDER BY pages DESC LIMIT 1;

    
