/* continue from practice5.sql file */
use practice;
show tables;
select * from books;
desc books;

select reverse('hello world');

select reverse('racecar');

select reverse('malayalam');

select reverse('dog');

select reverse(author_fname) from books;

select concat('woof', reverse('woof')); 

select concat(author_fname, reverse(author_fname) ) from books;

select 