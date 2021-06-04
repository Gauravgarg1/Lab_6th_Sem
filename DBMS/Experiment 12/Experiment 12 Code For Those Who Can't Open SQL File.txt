CREATE TABLE Employee(id NUMBER(10), name VARCHAR2(100),address VARCHAR2(38),salary INT);
INSERT INTO Employee VALUES (1,'Qram','Chennai' , 5000);
INSERT INTO Employee VALUES (2,'Wram','Delhi' , 9000);
INSERT INTO Employee VALUES (3,'Eram','Bhopal' , 2000);
INSERT INTO Employee VALUES (4,'Rram','China' , 4000);
/
DECLARE
    total_rows NUMBER(2);
BEGIN
    UPDATE employee
    SET salary = salary + 5000;
    IF sql%notfound THEN
        dbms_output.put_line('no customers updated');
    ELSIF sql%found THEN
        total_rows := sql%rowcount;
        dbms_output.put_line( total_rows || ' customers updated ');
    END IF;
END;
/
DECLARE
    c_id employee.id%type;
    c_name employee.name%type;
    c_addr employee.address%type;
    CURSOR c_emp is
    SELECT id, name ,address FROM employee;
BEGIN
    open c_emp;
    LOOP
        FETCH c_emp into c_id, c_name, c_addr;
        EXIT WHEN c_emp%notfound;
        dbms_output.put_line (c_id || ' ' ||c_name||' '||c_addr);
    END LOOP;
END;