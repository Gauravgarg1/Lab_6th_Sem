CREATE TABLE employee(id NUMBER (10), name VARCHAR2(100),address VARCHAR(38),salary INT);
INSERT INTO employee VALUES (1,'Tram','Chennai' , 5000);
INSERT INTO employee VALUES (2,'Yram','Delhi' , 9000);
INSERT INTO employee VALUES (3,'Uram','Bhatinda' , 2000);
INSERT INTO employee VALUES (4,'Iram','China' , 4000);
/
DECLARE
    c_id employee.id%type:=10;
    c_name employee.name%type;
    c_addr employee.address%type;
BEGIN
    SELECT name, address INTO c_name,c_addr FROM employee WHERE id=c_id;
    dbms_output.put_line('Name: '||c_name);
    dbms_output.put_line('Address:'||c_addr);
    EXCEPTION
    WHEN no_data_found then dbms_output.put_line( 'no such customer');
    WHEN others then dbms_output.put_line('error');
END;
/
DECLARE
    c_id employee.id%type:=1;
    c_name employee.name%type;
    c_addr employee.address%type;
BEGIN
    SELECT name, address INTO c_name, c_addr FROM employee WHERE id=c_id;
    dbms_output.put_line('Name :'||c_name);
    dbms_output.put_line('Address:'||c_addr) ;
    EXCEPTION
    WHEN no_data_found then dbms_output.put_line('no such customer');
    WHEN others then dbms_output.put_line('error');
END;
/
DECLARE
    c_id employee.id%type:=-6;
    c_name employee.name%type;
    c_addr employee.address%type;
    ex_invalid_id  EXCEPTION;
BEGIN
    IF c_id<=0 THEN
        RAISE ex_invalid_id;
    ELSE
        SELECT name, address INTO c_name, c_addr FROM employee WHERE id=c_id;
        dbms_output.put_line('name: '|| c_name);
        dbms_output.put_line('address:'||c_addr);
    END IF;
    EXCEPTION 
    WHEN ex_invalid_id THEN 
        dbms_output.put_line('ID must be greater than zero!'); 
    WHEN no_data_found THEN 
        dbms_output.put_line('No such customer!'); 
    WHEN others THEN 
        dbms_output.put_line('Error!');  
END;