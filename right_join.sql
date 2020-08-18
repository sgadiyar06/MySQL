SHOW DATABASES;

USE store;

SELECT * FROM customers
RIGHT JOIN orders
	ON customers.id = orders.customer_id;

-- ON DELETE CASCADE
CREATE TABLE customers2(
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100)
);
 
CREATE TABLE orders2(
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id INT,
    FOREIGN KEY(customer_id) 
        REFERENCES customers2(id)
        ON DELETE CASCADE
);
 
 
INSERT INTO customers2 (first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
       
INSERT INTO orders2 (order_date, amount, customer_id)
VALUES ('2016/02/10', 99.99, 1),
       ('2017/11/11', 35.50, 1),
       ('2014/12/12', 800.67, 2),
       ('2015/01/03', 12.50, 2),
       ('1999/04/11', 450.25, 5);
       
SELECT * FROM customers2;

SELECT * FROM orders2;

-- deleting boy george from customer database will automatically delete orders data entry with his customer_id

DELETE FROM customers2 WHERE first_name = 'Boy' ;

SELECT * FROM customers2;

SELECT * FROM orders2;

-- we can see because we are deleting a row from customers database and it has a FK with orders the same customer
-- record is also deleted in the orders table

