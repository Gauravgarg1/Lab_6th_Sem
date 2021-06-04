/*Adder*/
CREATE OR REPLACE FUNCTION Adder(n1 IN NUMBER, n2 IN NUMBER)
RETURN NUMBER
IS
n3 NUMBER(8);
BEGIN
    n3:=n1+n2;
    RETURN n3;
end;
/
DECLARE
n3 NUMBER(2);
BEGIN
    n3 := Adder(11, 22);
    dbms_output.put_line('Addition is: '|| n3);
END;

/*Employee Count*/
CREATE TABLE Employee (id NUMBER(10), name VARCHAR2(100),age NUMBER(38));
INSERT INTO Employee VALUES (1,'Ram',18);
insert into Employee VALUES (2,'Shyam',19);
insert into Employee VALUES (3,'Shyam',20);

SELECT * FROM Employee;

CREATE OR REPLACE FUNCTION totalemp
RETURN NUMBER IS
total NUMBER(10):=0;
BEGIN
    SELECT count(*) INTO total FROM Employee;
    RETURN total;
END; 
/

DECLARE
c NUMBER(20);
BEGIN
    c:=totalemp();
    dbms_output.put_line('Total no of emp:'||c);
END;
/

/*Factorial*/
DECLARE
    num NUMBER;
    factorial NUMBER;
FUNCTION fact(x NUMBER)
RETURN NUMBER
IS
f NUMBER;
BEGIN
    IF x=0 THEN
        f:=1;
    ELSE
        f:=x*fact (x-1);
    END IF;
    RETURN f;
END;
BEGIN
    num:=6;
    factorial := fact (num) ;
    dbms_output.put_line ('Factorial '|| num || ' is ' || factorial) ;
END;