/* continue from practice5.sql file */
use practice;
show tables;
select * from books;
desc books;

select upper('hello world');

select lower('HELLO WORLD');

select upper(title) from books;

select concat('my fav book is ', upper(title)) as 'fav book' from books;