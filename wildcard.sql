/* continue from practice5.sql file */
use practice;
show tables;
select * from books;
desc books;

-- use like keyword to contain a specific charachter(s) [character insensitive]

SELECT title,author_fname FROM books WHERE author_fname LIKE '%da%' ;

-- %% is called the wildcard symbol/operator

SELECT released_year FROM books WHERE released_year LIKE '%2%' ;

-- suppose we want to retrieve rows where it starts from da then
SELECT title,author_fname FROM books WHERE author_fname LIKE 'da%' ;   

-- if we want to search something which end with da then %da
SELECT title,author_fname FROM books WHERE author_fname LIKE '%da' ;   

SELECT released_year FROM books WHERE released_year LIKE '1%' ;

SELECT released_year FROM books WHERE released_year LIKE '2%' ORDER BY released_year ;

SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '___';
-- using underscore we can filter no of digits, '___' signifies only fetching 3 digit numbers

SELECT title, stock_quantity FROM books WHERE title LIKE '________';
-- works also for a specific number of characters

-- there is an escape sequence and it is '\'

SELECT title FROM books WHERE title LIKE '%\%%' ;


