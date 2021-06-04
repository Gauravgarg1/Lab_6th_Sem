/*Creating Table 1*/
CREATE TABLE Tabhai_1 (reg_no INT,naam VARCHAR(20),mark1 INT, mark2 INT);
insert into Tabhai_1 values (001,'aaaa', 79,80);
insert into Tabhai_1 values (002,'bbbb', 89,88);
insert into Tabhai_1 values (003,'cccc', 77,70);
insert into Tabhai_1 values (004,'dddd', 74,81);
insert into Tabhai_1 values (005,'eeee', 90,89);

/*Creating Table 2*/
CREATE TABLE Tabhai_2 (reg_no INT,naam VARCHAR(20),mark1 INT, mark2 INT);
insert into Tabhai_2 values (006,'aaaa', 79,80);
insert into Tabhai_2 values (007,'bbbb', 89,88);
insert into Tabhai_2 values (003,'cccc', 77,70);
insert into Tabhai_2 values (008,'dddd', 74,81);
insert into Tabhai_2 values (005,'eeee', 90,89);

/*Union*/
SELECT * FROM Tabhai_1 UNION SELECT * FROM Tabhai_2;

/*Union All*/
SELECT * FROM Tabhai_1 UNION ALL SELECT * FROM Tabhai_2;

/*Minus*/
SELECT * FROM Tabhai_1 MINUS SELECT * FROM Tabhai_2;

/*Interset*/
SELECT * FROM Tabhai_1 INTERSECT SELECT * FROM Tabhai_2;

/*View*/
CREATE VIEW Doom AS SELECT reg_no, naam FROM Tabhai_1;

/*Viewing View*/
SELECT * FROM Doom;