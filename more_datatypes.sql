/* continue from practice5.sql file */
use practice;
show tables;

CREATE TABLE items(
number DECIMAL(5,2) 
);

INSERT INTO items(number) VALUES(7);
 
INSERT INTO items(number) VALUES(7987654);

SHOW WARNINGS;

SELECT * FROM items;
 
INSERT INTO items(number) VALUES(34.88);
 
INSERT INTO items(number) VALUES(298.9999);

SELECT * FROM items;
 
INSERT INTO items(number) VALUES(1.9999);

SELECT * FROM items;

CREATE TABLE thingies (price FLOAT);
 
INSERT INTO thingies(price) VALUES (88.45);
 
SELECT * FROM thingies;
 
INSERT INTO thingies(price) VALUES (8877.45);
 
SELECT * FROM thingies;
 
INSERT INTO thingies(price) VALUES (8877665544.45);
 
SELECT * FROM thingies;

-- float takes some level of approximation

CREATE TABLE thingies2( price DOUBLE); 

INSERT INTO thingies2(price) VALUES (8877665544.45);

SELECT * FROM thingies2;

-- we can it stores the precise value as double can hold much larger numbers than float



