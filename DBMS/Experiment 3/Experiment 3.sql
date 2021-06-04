/*Creating a Table*/
CREATE TABLE Hitlist (stdno INT, stdname VARCHAR(20), stdcontact INT, stdttk INT);

/*Describing Table*/
DESC Hitlist;

/*Inserting Values into the Table*/
INSERT INTO Hitlist VALUES (1,'Kumar',7,2);
INSERT INTO Hitlist VALUES (2,'Chris Evans',3,1);
INSERT INTO Hitlist VALUES (3,'Chris Hemsworth',5,9);
INSERT INTO Hitlist VALUES (4,'Mia',69,420);
INSERT INTO Hitlist VALUES (5,'Burj Khalifa',6,9);

/*Selecting Table for Viewing*/
SELECT * FROM Hitlist;

/*Creating Savepoint*/
SAVEPOINT A;

/*Inserting More Values*/
INSERT INTO Hitlist VALUES (6,'Man',17,22);
INSERT INTO Hitlist VALUES (7,'Dha',33,12);
INSERT INTO Hitlist VALUES (8,'Na',59,95);

/*Creating Savepoint*/
SAVEPOINT B;

/*Inserting More Values*/
INSERT INTO Hitlist VALUES (9,'Mohit',87,62);
INSERT INTO Hitlist VALUES (10,'Rohit',83,42);
INSERT INTO Hitlist VALUES (11,'Sohit',53,65);

/*Creating Savepoint*/
SAVEPOINT C;

/*Selecting Table for Viewing*/
SELECT * FROM Hitlist;

/*Rollback to B*/
ROLLBACK TO B;

/*Commit*//*Once a commit command is used Rollback is not possible*/ 
COMMIT;