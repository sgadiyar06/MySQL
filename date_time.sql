SHOW DATABASES;
USE practice;
SHOW TABLES;

CREATE TABLE people(
name VARCHAR(20),
birthdate DATE,
birthtime TIME,
birthdt DATETIME ) ;

DESC people;


INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES('Padma', '1983-11-11', '10:07:35', '1983-11-11 10:07:35');

SELECT * FROM people;

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES('Larry', '1943-12-25', '04:10:42', '1943-12-25 04:10:42'); 

SELECT * FROM people;

SELECT CURDATE() AS DATE, CURTIME() AS TIME;

SELECT current_date();			-- gives date

SELECT current_time();			-- gives time

SELECT now();					-- gives current date and time in datetime formart

INSERT INTO people VALUES('Blue', CURDATE(), CURTIME(), NOW() );

SELECT * FROM people;

INSERT INTO	people VALUES('Sud','1999-04-06','23:15:40','1999-04-06 23:15:40');

SELECT * FROM people;

SELECT name,birthdate FROM people;

-- some functions which we can use on date
SELECT name,birthdate, DAY(birthdate), MONTH(birthdate), YEAR(birthdate),
-- DAYNAME(birthdate), MONTHNAME(birthdate), YEARWEEk(birthdate),
DAYOFYEAR(birthdate)
FROM people;
-- use either datetime or date datatypes for these functions
-- similarly for time functions use time or datetime datetime functions

SELECT name, birthtime,
HOUR(birthtime), MINUTE(birthtime), SECOND(birthtime)
FROM people;

SELECT CONCAT(name, ' was born on ',MONTHNAME(birthdate),' ',DAY(birthdate),' of the year ', YEAR(birthdate),' ' )
FROM people;

-- we can use date_format function which is easier by using specifiers
SELECT birthdt,DATE_FORMAT(birthdt, '%d %m %y') FROM people;

SELECT birthdt,DATE_FORMAT(birthdt, '%D %M %Y') FROM people;
-- capital D/M/Y fetches the names

SELECT birthdt,DATE_FORMAT(birthdt, 'Born in %M, on a %W, %Y') FROM people;

SELECT birthdt,DATE_FORMAT(birthdt, '%H %I %S') FROM people;
-- H/I/S respectively stand for HOUR/MINUTE/SECOND

-- we can also combine date and time using the specifiers
SELECT birthdt,DATE_FORMAT(birthdt, '%m/%d/%Y at time %h:%i') FROM people;

SELECT birthdt,DATE_FORMAT(birthdt, '%p  %r  %T' ) FROM people;
-- %r is time in 12 hr clock and %T for 24 hour %p denotes am/pm
-- look up on mysql docs under date_format for more on these