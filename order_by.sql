/* continue from practice5.sql file */
use practice;
show tables;
select * from books;
desc books;

SELECT author_lname FROM books ORDER BY author_lname;

SELECT DISTINCT author_lname FROM books ORDER BY author_lname;

SELECT title FROM books ORDER BY title;

-- we can change ordering by descending also

SELECT title FROM books ORDER BY title DESC;

SELECT author_lname FROM books ORDER BY author_lname DESC;

SELECT DISTINCT author_lname FROM books ORDER BY author_lname DESC;

SELECT released_year FROM books ORDER BY released_year;

SELECT released_year FROM books ORDER BY released_year DESC;

SELECT * FROM books ORDER BY released_year;

SELECT title, pages, stock_quantity FROM books ORDER BY released_year DESC;

SELECT title, author_fname, author_lname FROM books ORDER BY 3;
-- using a nummber after order by command tells it to choose the column no from the selected columns
-- in this case from the 3rd column ie author_lname

SELECT title, pages FROM books ORDER BY 2;

-- order by using 2 columns
SELECT DISTINCT	author_fname, author_lname FROM books ORDER BY author_fname,author_lname;