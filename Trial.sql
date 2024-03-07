CREATE DATABASE IF NOT EXISTS Shop;
USE Shop;
CREATE TABLE Info(
	Customer_id INT PRIMARY KEY,
    Customer VARCHAR(30) NOT NULL,
    Mode VARCHAR(20) NOT NULL,
    City VARCHAR(30) NOT NULL
);

INSERT INTO Info VALUES
(101, "Olivia Barrett", "Netbanking", "Portland");

SELECT * FROM Info

USE Shop;
INSERT INTO Info VALUES
(102, "Ethan Sinclair", "Credit Card", "Miami"),
(103, "Maya Hernandez", "Credit Card", "Seattle"),
(104, "Liam Donovan", "Netbanking", "Denver"),
(105, "Sophia Nguyen", "Credit Card", "New Orleans"),
(106, "Caleb Foster", "Debit Card", "Minneapolis"),
(107, "Ava Patel", "Debit Card", "Phoenix"),
(108, "Lucas Carter", "Netbanking", "Boston"),
(109, "Isabella Martinez", "Netbanking", "Nashville"),
(110, "Jackson Brooks", "Credit Card", "Boston");

SELECT * FROM Info;
SELECT mode, COUNT(customer) FROM Info GROUP BY mode;