/*Creating a Table*/
CREATE TABLE Hitlist (stdno INT, stdname VARCHAR(20), stdcontact INT, stdttk INT);

/*Describing Table*/
DESC Hitlist;

/*Inserting Values into the Table*/
INSERT INTO Hitlist VALUES (1,'Ojha',7,2);
INSERT INTO Hitlist VALUES (2,'Chris Evans',3,1);
INSERT INTO Hitlist VALUES (3,'Chris Hemsworth',5,9);
INSERT INTO Hitlist VALUES (4,'Mia',69,420);
INSERT INTO Hitlist VALUES (5,'Burj Khalifa',6,9);

/*Selecting table for Viewing*/
SELECT * FROM Hitlist;

/*Creating Another Table and Inserting Values for Future Use*/
CREATE TABLE Employee (Employee_id INT, Employee_name VARCHAR(20), Employee_dept VARCHAR(20), Employee_age INT, Employee_salary INT);

INSERT INTO Employee VALUES (1, 'Dharmendra', 'HR', 69, 69000);
INSERT INTO Employee VALUES (2, 'Elice', 'Engineering', 32, 45000);
INSERT INTO Employee VALUES (3, 'Vinketesh', 'Marketing', 29, 48000);
INSERT INTO Employee VALUES (4, 'Ishan', 'Planning', 41, 38000);
INSERT INTO Employee VALUES (5, 'Lareb', 'Sale', 39, 46000);

/*Altering Table*/
ALTER TABLE Employee ADD Email VARCHAR(255);

/*Adding Data to Modified Table*/
INSERT INTO Employee VALUES (5, 'Lareb','Sales', 39, 46000,'lareb@whois.com');

/*Truncate a Table*/ /*SQL Truncate is a data definition language (DDL) command. It removes all rows in a table.*/
TRUNCATE TABLE Employee;