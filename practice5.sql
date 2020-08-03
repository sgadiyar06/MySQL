show databases;
use practice;
show tables;

CREATE TABLE books 
	(
		book_id INT NOT NULL AUTO_INCREMENT,
		title VARCHAR(100),
		author_fname VARCHAR(100),
		author_lname VARCHAR(100),
		released_year INT,
		stock_quantity INT,
		pages INT,
		PRIMARY KEY(book_id)
	);
    
desc books;

select * from books;

select author_fname,author_lname from books;

select concat('hello','world');

select concat('hello',' ','world');

select concat(author_fname,' ',author_lname) from books;

select concat(author_fname,' ',author_lname) as 'full name' from books;

select * from books;

select author_fname as 'first name', author_lname as 'last name',
concat(author_fname,' ',author_lname) as 'full name'
from books;

select author_fname as 'first name', author_lname as 'last name',
concat_ws(' - ',author_fname,author_lname) as 'full name'
from books;