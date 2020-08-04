/* continue from practice5.sql file */
use practice;
show tables;
select * from books;
desc books;

select substring('hello world',1,6);

select substring('hello world',5);

select substring('hello world',3,8);

select substring('hello world',-1);

select substring('hello world',-4);

select title from books;

select substring('American Gods',1,10);

select substring(title,1,10) as 'short title' from books;

/* substr() can also be used instead of substring() */

select substr(title,1,10) as 'short title' from books;

/*  we can combine concat and substring into one query */

select concat(substring(title,1,10),'...') as 'short title' from books;
