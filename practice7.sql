/* continue from practice5.sql file */
use practice;
show tables;
select * from books;
desc books;

select replace('hello world','hello','12345');

select replace('hello world','l','5');

select replace('hello worLd','L','5');

select replace('hello world',' ',' - ');

select replace(title,'e',3) from books;

select substring(
		replace(title,'e',3), 1 , 10
        ) as nam3 from books;