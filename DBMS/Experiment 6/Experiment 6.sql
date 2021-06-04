CREATE TABLE Hitlist (stdno INT, stdname VARCHAR(20), stdcontact INT, stdttk INT);

/*Describing Table*/
DESC Hitlist;

/*Inserting Values into the Table*/
INSERT INTO Hitlist VALUES (1,'Kumar',7,2);
INSERT INTO Hitlist VALUES (2,'Chris Evans',3,1);
INSERT INTO Hitlist VALUES (3,'Chris Hemsworth',5,9);
INSERT INTO Hitlist VALUES (4,'Mia',69,420);
INSERT INTO Hitlist VALUES (5,'Burj Khalifa',6,9);
INSERT INTO Hitlist VALUES (6,'Man',17,22);
INSERT INTO Hitlist VALUES (7,'Dha',33,12);
INSERT INTO Hitlist VALUES (8,'Na',59,95);

/*Where Condition*/
SELECT * FROM Hitlist WHERE stdttk > 10;

/*Where Condition 2.0*/
SELECT * FROM Hitlist WHERE stdttk > (SELECT AVG(stdttk) FROM Hitlist);

SELECT stdname FROM Hitlist WHERE stdttk > (SELECT AVG(stdttk) FROM Hitlist);

SELECT stdname FROM Hitlist WHERE stdttk < (SELECT AVG(stdttk) FROM Hitlist);

SELECT stdname FROM Hitlist WHERE stdttk > (SELECT MAX(stdttk) FROM Hitlist);