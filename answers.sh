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

#8

#9


##########################
##  Creating Table
##########################
