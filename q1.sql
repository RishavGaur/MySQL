CREATE DATABASE IF NOT EXISTS Questions;
USE Questions;
/* Create Table and display all the info about all the salespeople. */
CREATE TABLE salespeople(
	salesman_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(20),
    commission FLOAT
);

INSERT INTO salespeople VALUES
(5001, "James Hoog", "New York", 0.15),
(5002, "Nail Knite", "Paris", 0.13),
(5005, "Pit Alex", "London", 0.11),
(5006, "Mc Lyon", "Parix", 0.14),
(5007, "Paul Adam", "Rome", 0.13),
(5003, "Lauson Hen", "San Jose", 0.12);

SET SQL_SAFE_UPDATES=0;

UPDATE salespeople
SET city="Paris"
WHERE city="Parix";

/* SQL statement to display specific columns such as names and commissions for all salespeople. */
SELECT name, commission FROM salespeople;

/* write a SQL query to locate salespeople who live in the city of 'Paris'.
 Return salesperson's name, city. */
 
 SELECT name, city FROM salespeople
 WHERE city="Paris";