SHOW DATABASES;
use store;

show TABLES;

SELECT * FROM customers;
SELECT * FROM orders;


SELECT * FROM ORDERS
WHERE customer_id = 
(
SELECT id FROM customers WHERE last_name = 'George'
);

SELECT * FROM customers,orders;
-- this cross join where every row is printed with the other table



