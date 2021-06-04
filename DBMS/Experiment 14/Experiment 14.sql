CREATE TABLE employee(id NUMBER(10), name VARCHAR2(100),address VARCHAR(38),salary INT);


CREATE OR REPLACE TRIGGER display_salary_changes 
BEFORE DELETE OR INSERT OR UPDATE ON employee
FOR EACH ROW 
WHEN (NEW.ID > 0) 
DECLARE 
   sal_diff number; 
BEGIN 
   sal_diff := :NEW.salary  - :OLD.salary; 
   dbms_output.put_line('Old salary: ' || :OLD.salary); 
   dbms_output.put_line('New salary: ' || :NEW.salary); 
   dbms_output.put_line('Salary difference: ' || sal_diff); 
END; 
/
INSERT INTO employee VALUES(1,'Aram','Chennai' , 5000);
INSERT INTO employee VALUES(2,'Sram','Delhi' , 9000);
INSERT INTO employee VALUES(3,'Dram','Bhanarash' , 2000);
INSERT INTO employee VALUES(4,'Fram','China' , 4000);

UPDATE employee
SET salary = salary + 500 
WHERE id = 2;