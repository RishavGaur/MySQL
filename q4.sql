/* write a SQL query to find customers whose grade is 200. Return customer_id,
 cust_name, city, grade, salesman_id. */

USE questions;

CREATE TABLE customer(
	customer_id INT PRIMARY KEY,
	cust_name VARCHAR(50) NOT NULL,
    city VARCHAR(20),
    grade INT NOT NULL,
    salesman_id INT NOT NULL
);

ALTER TABLE customer
MODIFY grade INT;

INSERT INTO customer VALUES
(3002, "Nick Rimando", "New York", 100, 5001),
(3007, "Brad Davis", "New York", 200, 5001),
(3005, "Graham Zusi", "California", 200, 5002),
(3008, "Julian Green", "London", 300, 5002),
(3004, "Fabian Johnson", "Paris", 300, 5006),
(3009, "Geoff Cameron", "Berlin", 100, 5003),
(3003, "Jozy Altidor", "Moscow", 200, 5007);

INSERT INTO customer (customer_id, cust_name, city, salesman_id) VALUES
(3001, "Brad Guzan", "London", 5005);

SELECT * FROM customer;

SELECT customer_id, cust_name, city, grade, salesman_id FROM customer
WHERE grade=200;