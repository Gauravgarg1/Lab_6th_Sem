/*Creating a Table*/
CREATE TABLE Oneoff (stdno INT, stdname VARCHAR(20), stdcontact INT, stdttk INT);

/*Describing Table*/
DESC Oneoff;

/*Inserting Values into the Table*/
INSERT INTO Oneoff VALUES (1,'Kumar',7,2);

/*Concat*/
SELECT CONCAT ('Kumar','Ojha') FROM Oneoff; 

/*Instr*/
SELECT INSTR ('Rathore','o') FROM Oneoff;

/*Length*/
SELECT LENGTH ('Kumar') FROM Oneoff;

/*Rtrim*/
SELECT RTRIM ('  Nishu  ') FROM Oneoff;

/*Ltrim*/
SELECT LTRIM ('  Nishu  ') FROM Oneoff;

/*Replace*/
SELECT REPLACE ('Vincenzio','e','3') FROM Oneoff;

/*Reverse*/
SELECT REVERSE ('Doom at Your Service') FROM Oneoff;

/*Substr*/
SELECT SUBSTR ('Descendent of The Sun',5,8) FROM Oneoff;

/*Lower*/
SELECT LOWER ('DOTS') FROM Oneoff;

/*Upper*/
SELECT UPPER ('Touch your Heart') FROM Oneoff;