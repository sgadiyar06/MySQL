/* continue from practice5.sql file */
use practice;
show tables;
select * from books;
desc books;

select char_length('hello world');

select char_length('123456789');

select author_lname, char_length(author_lname) as length from books;

select concat(author_lname,' is ',char_length(author_lname), ' letters long') from books;
