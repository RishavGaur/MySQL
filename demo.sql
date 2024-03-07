CREATE DATABASE Students;
USE Students;
CREATE TABLE Details(
	Roll_no int PRIMARY KEY,
    Name varchar(20),
    Age int NOT NULL
);

INSERT INTO Details values(45,"Gaurav Kumar",23);
INSERT INTO Details values(10,"Ankit Singh",23);

SELECT * FROM Details;

select * FROM Details;