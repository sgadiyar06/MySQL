/* continue from practice5.sql file */
use practice;
show tables;
select * from books;
desc books;

SELECT * FROM books LIMIT 3;
-- restrict number of entries

-- example we want only the first most recent books then
SELECT * FROM books ORDER BY released_year DESC LIMIT 5;

SELECT title FROM books ORDER BY title LIMIT 5;

SELECT * FROM books ORDER BY released_year DESC LIMIT 3,5;
-- the first number indicates the index of the starting row. In this case ordered by latest releases
-- and then chooses the rows after the 3rd row and the next 5 entries

SELECT * FROM books ORDER BY released_year DESC LIMIT 10,1;   -- choose the 11th latest release

SELECT * FROM books LIMIT 0, 198349849;
-- choosing a number greater than the total rows will fetch all the rows



