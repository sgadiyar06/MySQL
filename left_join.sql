SHOW DATABASES;
use store;

show TABLES;

ALTER TABLE orders
RENAME COLUMN id TO order_id;

SELECT id,first_name,last_name,amount FROM customers
LEFT JOIN orders
	ON customers.id = orders.customer_id;
    
SELECT * 
FROM customers
LEFT JOIN orders
		ON customers.id = orders.customer_id
GROUP BY customers.id;

SELECT 
first_name, last_name, id,email,
IFNULL(SUM(amount),0) AS total_spent
FROM customers
LEFT JOIN orders
		ON customers.id = orders.customer_id
GROUP BY customers.id;
