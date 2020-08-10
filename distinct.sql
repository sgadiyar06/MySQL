/* continue from practice5.sql file */
use practice;
show tables;
select * from books;
desc books;

INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
 
select * from books;

select distinct author_fname from books;

select distinct author_lname from books;

select released_year from books;

select distinct released_year from books;

select distinct author_fname,author_lname from books;

select distinct concat(author_fname,' ', author_lname) as 'full name' from books;

