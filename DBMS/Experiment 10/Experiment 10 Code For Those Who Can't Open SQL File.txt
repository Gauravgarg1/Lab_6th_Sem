CREATE TABLE Student (id NUMBER (10) primary key, name VARCHAR2(100));
/
CREATE OR REPLACE PROCEDURE "INSERTSTUDENT" (id IN NUMBER,name IN VARCHAR2) IS
BEGIN
    INSERT INTO Student VALUES (id, name) ;
END;
/

BEGIN
    INSERTSTUDENT (101, 'Rahul');
    dbms_output.put_line ('Record Inserted Successfully');
END;
/

SELECT * FROM Student