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

/*Updating a Table*/
UPDATE Hitlist SET stdname = 'Kumar' WHERE stdno = 1;

/*Creating Another Table for Future Use*/
CREATE TABLE Kill_list (stdno INT, stdname VARCHAR(20), stdcontact INT, stdttk INT);

/*Insert into Table*/
INSERT INTO Kill_list SELECT * FROM Hitlist;

/*Delete Row*/
DELETE FROM Kill_list WHERE stdno = 1;

/*Deleting a Table*/
DROP TABLE Kill_list;