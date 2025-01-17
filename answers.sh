##########################
##  Basic Queries
##########################

#1
SELECT Name from students

#2
SELECT * from students where Age > 30

#3
SELECT Name from students where Age = 30 AND Gender = "F"

#4
SELECT Points from students where Name = "Alex"

#5
INSERT INTO students
VALUES (10, "Obaida", 25, "F", 100);

#6
UPDATE students
SET Points = Points + 100
WHERE Name = "Basma";

#7
UPDATE students
SET Points = Points - 100
WHERE Name = "Alex";


##########################
##  Creating Table
##########################

#1
CREATE TABLE graduates (
	ID	INTEGER NOT NULL,
	Name TEXT NOT NULL UNIQUE,
	Age	INTEGER,
    Gender TEXT,
    Points INTEGER,
    Graduation TEXT,
	PRIMARY KEY(ID AUTOINCREMENT)
);

#2
INSERT INTO graduates (Name,Age,Gender,Points)
SELECT Name,Age,Gender,Points
FROM students
WHERE name like "Layal";

#3
UPDATE graduates
SET Graduation = "2018-09-08" 
WHERE Name like "Layal";

#4
DELETE FROM students
WHERE name like "Layal";


##########################
##  Joins
##########################

#1
SELECT employees.Name, companies.Name, companies.Date
FROM employees
INNER JOIN companies ON employees.Company = companies.Name

#2
SELECT employees.Name
FROM employees
INNER JOIN companies ON employees.Company = companies.Name
WHERE companies.Date < 2000

#3
SELECT companies.Name
FROM companies
INNER JOIN employees ON employees.Company = companies.Name
WHERE employees.Role = "Graphic Designer"


##########################
##  Count & Filter
##########################


#1
SELECT * , max(Points)
FROM students

#2
SELECT avg(Points)
FROM students

#3
SELECT count(ID)
FROM students
WHERE Points = 500

#4
SELECT Name
FROM students
WHERE Name like "%s%"

#5
SELECT *
FROM students
ORDER BY Points DESC


##########################
##  End
##########################