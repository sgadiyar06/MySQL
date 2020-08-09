/*
reverse and upper case a sentence 
*/

select upper(reverse('why does my cat look at me with such hatred'));

select
	replace(
    concat('I',' ','like',' ','cats'),
    ' ',
    '-' )  as exercise;
    
/* continue from practice5.sql file */
use practice;
show tables;
select * from books;
desc books;

select replace(title,' ','->') as title from books;

select author_lname as forwards, reverse(author_lname) as backwards from books;

select upper(concat(author_fname,' ',author_lname)) as 'full name in caps' from books;

select concat(title,' was releassed in ',released_year) as blurb from books;

select title, char_length(title) as 'character count' from books;

select
	concat(substring(title,1,10),'...') as 'short title',
    concat(author_lname,',',author_fname) as author,
    concat(stock_quantity,' in stock') as quantity
from books;
    
