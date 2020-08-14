SHOW DATABASES;
USE practice;
SHOW TABLES;

SELECT * FROM people;

SELECT birthdt,now(),DATEDIFF(NOW(), birthdt) FROM people;
-- this gives the difference between current date and the date from the db

SELECT DATE_ADD(NOW(), INTERVAL 7 DAY);
-- date_add allows us to add 2 dates and by specifying an interval
SELECT DATE_Add(NOW(), INTERVAL 5 MONTH);

SELECT NOW(),DATE_ADD(NOW(), INTERVAL 10 SECOND);

SELECT NOW(),DATE_ADD(NOW(), INTERVAL 3 QUARTER);

-- alternative method to perform the above operations

SELECT birthdt, birthdt + INTERVAL 1 MONTH FROM people;

SELECT birthdt, birthdt - INTERVAL 5 MONTH FROM people;

 SELECT birthdt, birthdt + INTERVAL 1 MONTH + INTERVAL 10 HOUR FROM people;

