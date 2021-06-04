/*PL/SQL 1*/
DECLARE
    a  INTEGER := 10;
BEGIN
    dbms_output.put_line(a);
END;
/

/*PL/SQL 2*/
DECLARE 
    message  varchar2(20):= 'Hello, World!'; 
BEGIN 
    dbms_output.put_line(message); 
END; 
/ 

/*PL/SQL 3*/
DECLARE
    a  INTEGER := 10;
BEGIN
    dbms_output.put_line('Value of a:'||a);
END;
/

/*PL/SQL 4*/
DECLARE
    pi CONSTANT NUMBER := 3.14;
BEGIN
    dbms_output.put_line(pi);
END;
/

/*PL/SQL 5*/
DECLARE
    i INTEGER := 10;
    j INTEGER := 20;
    k INTEGER := i+j;
BEGIN
    dbms_output.put_line(k);
END;
/

/*PL/SQL 6*/
DECLARE
    a INTEGER := 20;
BEGIN
    IF (a < 10) THEN
        dbms_output.put_line ('a is less than 10');
    ELSE
        dbms_output.put_line ('a is greater than 10');
    END IF;
END;
/

/*PL/SQL 7*/
DECLARE
Grade CHAR(1) := 'A';
BEGIN
    CASE Grade
        WHEN 'A' THEN dbms_output.put_line('Excellent');
        WHEN 'B' THEN dbms_output.put_line('Very good');
        WHEN 'C' THEN dbms_output.put_line('Good');
        WHEN 'D' THEN dbms_output.put_line('Average');
        WHEN 'E' THEN dbms_output.put_line('Passed with Grace');
        ELSE dbms_output.put_line('Failed');
    END CASE;
END;
/

/*PL/SQL 8*/
DECLARE
i NUMBER := 1;
BEGIN
    LOOP
        EXIT WHEN i > 10;
        dbms_output.put_line(i);
        i := i + 1;
    END LOOP;
END;
/

/*PL/SQL 9*/
DECLARE
i NUMBER := 1;
BEGIN
    WHILE i <= 10 LOOP
        dbms_output.put_line(i);
        i := i + 1;
    END LOOP;
END;
/

/*PL/SQL 10*/
DECLARE
var1 NUMBER;
BEGIN
    var1 := 10;
    FOR var2 IN 1..10
    LOOP
        dbms_output.put_line(var1*var2);
    END LOOP;
END;
/