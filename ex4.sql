SHOW DATABASES;
USE practice;
SHOW TABLES;

SELECT CURTIME();

SELECT CURDATE();

SELECT DAYOFWEEK(NOW());

SELECT DAYNAME(NOW());

SELECT DATE_FORMAT(NOW(), ' %d/%m/%Y');

SELECT DATE_FORMAT(NOW(), ' %M %D at %h:%i');

CREATE TABLE tweets(
content VARCHAR(280),
username VARCHAR(20),
created_at TIMESTAMP DEFAULT NOW()
);

ins