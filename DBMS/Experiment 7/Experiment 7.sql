/*Creating Table 1*/
CREATE TABLE setting_a (id INT PRIMARY KEY, color VARCHAR (20) NOT NULL);

/*Inserting Values to table 1*/
INSERT INTO setting_a (id, color) VALUES (1, 'Red');
INSERT INTO setting_a (id, color) VALUES (2, 'Green' );
INSERT INTO setting_a (id, color) VALUES (3, 'Blue');
INSERT INTO setting_a (id, color) VALUES (4, 'Purple');

/*Creating Table 2*/
CREATE TABLE setting_b (id INT PRIMARY KEY, color VARCHAR (20) NOT NULL);

/*Inserting Values to table 1*/
INSERT INTO setting_b (id, color) VALUES (1, 'Green');
INSERT INTO setting_b (id, color) VALUES (2, 'Red' );
INSERT INTO setting_b (id, color) VALUES (3, 'Cyan');
INSERT INTO setting_b (id, color) VALUES (4, 'Blue');

/*INNER JOIN*/
SELECT a.id id_a,a.color color_a,b.id id_b,b.color color_b FROM setting_a a INNER JOIN setting_b b ON a.color = b.color;

/*LEFT JOIN*/
SELECT a.id id_a,a.color color_a,b.id id_b,b.color color_b FROM setting_a a LEFT JOIN setting_b b ON a.color = b.color;

/*RIGHT JOIN*/
SELECT a.id id_a,a.color color_a,b.id id_b,b.color color_b FROM setting_a a RIGHT JOIN setting_b b ON a.color = b.color;

/*FULL JOIN*/
SELECT a.id id_a,a.color color_a,b.id id_b,b.color color_b FROM setting_a a FULL JOIN setting_b b ON a.color = b.color;
