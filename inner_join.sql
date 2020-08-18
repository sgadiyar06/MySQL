SHOW DATABASES;
use store;

show TABLES;


SELECT * FROM customers,orders WHERE customers.id = orders.customer_id;
-- inner join selects the matching rows

SELECT first_name,last_name,amount,order_date,customer_id 
FROM customers,orders 
WHERE customers.id = orders.customer_id;

-- explicit inner join
SELECT * FROM customers
JOIN orders
	ON	customers.id = orders.customer_id;
    
SELECT * FROM orders
JOIN customers
	ON	customers.id = orders.customer_id;