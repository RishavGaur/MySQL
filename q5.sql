/* write a SQL query to find the Nobel Prize winner(s) for the year 1970.
 Return year, subject and winner.  */
 
USE questions;

CREATE TABLE nobel_win(
	YEAR YEAR,
    SUBJECT VARCHAR(20),
    WINNER VARCHAR(50)
);

ALTER TABLE nobel_win
ADD COLUMN
COUNTRY VARCHAR(20);

ALTER TABLE nobel_win
ADD COLUMN
CATEGORY VARCHAR(50);

SELECT * FROM nobel_win;

INSERT INTO nobel_win VALUES
('1970', "Physics", "Hannes Alfven", "Sweden", "Scientist"),
('1970', "Physics", "Louis Neel", "France", "Scientist"),
('1970', "Chemistry", "Luis Federico Leloir", "France", "Scientist"),
('1970', "Physiology", "Ulf von Euler", "Sweden", "Scientist"),
('1970', "Physiology", "Bernard Katz Alfven", "Germany", "Scientist"),
('1970', "Literature", "Aleksandr Solzhenitsyn", "Russia", "Linguist"),
('1970', "Economics", "Paul Samuelson", "USA", "Economist"),
('1970', "Physiology", "Julius Axelrod", "USA", "Scientist"),
('1971', "Physics", "Dennis Gabor", "Hungary", "Scientist"),
('1971', "Chemistry", "Gerhard Herzberg", "Germany", "Scientist"),
('1971', "Peace", "Willy Brandt", "Germany", "Chancellor"),
('1971', "Literature", "Pablo Neruda", "Chile", "Linguist"),
('1971', "Economics", "Simon Kuznets", "Russia", "Economist"),
('1978', "Peace", "Anwar al-Sadat", "Egypt", "President"),
('1978', "Peace", "Menachem Begin", "Israel", "Prime Minister"),
('1987', "Chemistry", "Donald J. Cram", "USA", "Scientist"),
('1987', "Chemistry", "Jean-Marie Lehn", "France", "Scientist"),
('1987', "Phyisology", "Susumu Tonegawa", "Japan", "Scientist"),
('1994', "Economics", "Reinhard Selten", "Germany", "Economist"),
('1994', "Peace", "Yitzhak Rabin", "Israel", "Prime Minister"),
('1987', "Physics", "Johannes Georg Bednorz", "Germany", "Scientist"),
('1987', "Literature", "Joseph Brodsky", "Russia", "Linguist"),
('1987', "Economics", "Robert Solow", "USA", "Economist"),
('1994', "Literature", "Kenzaburo Oe", "Japan", "Linguist");

SELECT * FROM nobel_win;

SELECT YEAR, SUBJECT, WINNER FROM nobel_win
WHERE YEAR=1970;

/* write a SQL query to find the Nobel Prize winner in ‘Literature’ for 1971. Return winner.
 */

SELECT YEAR, SUBJECT, WINNER FROM nobel_win
WHERE YEAR=1971 AND SUBJECT="Literature";

/* write a SQL query to locate the Nobel Prize winner ‘Dennis Gabor'. Return year, subject.
 */
 
 SELECT YEAR, SUBJECT, WINNER FROM nobel_win
 WHERE WINNER="Dennis Gabor";
 
 /* write a SQL query to find the Nobel Prize winners in the field of ‘Physics’ since 1950.
 Return winner. */
 
 SELECT YEAR, SUBJECT, WINNER FROM nobel_win
 WHERE YEAR>=1950 AND SUBJECT="Physics";
 
 /* write a SQL query to find the Nobel Prize winners in ‘Chemistry’ between the years 1965
 and 1975. Begin and end values are included. Return year, subject, winner, and country. */
 
 SELECT YEAR, SUBJECT, WINNER, COUNTRY FROM nobel_win
 WHERE SUBJECT="Chemistry" AND YEAR BETWEEN 1965 AND 1975;