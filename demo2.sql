CREATE DATABASE IF NOT EXISTS Transaction;
USE Transaction;
CREATE TABLE cust_info(
	customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    mode VARCHAR(20) NOT NULL,
    city VARCHAR(50)
);

INSERT INTO cust_info (customer_id, customer_name, mode, city)
VALUES
(101, "Olivia Barrett", "Netbanking", "Portland"),
(102, "Ethan Sinclair", "Credit Card", "Miami"),
(103, "Maya Hernandez", "Credit Card", "Seattle"),
(104, "Liam Donovan", "Netbanking", "Denver"),
(105, "Sophia Nguyen", "Credit Card", "Orleans"),
(106, "Caleb Foster", "Debit Card", "Minneapolis"),
(107, "Ava Patel", "Debit Card", "Phoenix"),
(108, "Lucas Carter", "Netbanking", "Boston"),
(109, "Isabella Martinez", "Netbanking", "Nashville"),
(110, "Jackson Brooks", "Credit Card", "Boston");

SELECT * FROM cust_info;

SELECT mode, COUNT(customer_id) FROM cust_info
GROUP BY mode;