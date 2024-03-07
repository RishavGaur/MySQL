CREATE DATABASE IF NOT EXISTS student;
USE student;
CREATE TABLE info(
	roll_no INT UNIQUE,
	name VARCHAR(50) NOT NULL,
	marks INT,
    grade VARCHAR(1),
    city VARCHAR(30)
);
INSERT INTO info (roll_no, name, marks, grade, city) VALUES
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");
SELECT city, AVG(marks) FROM info GROUP BY city ORDER BY AVG(marks) DESC;