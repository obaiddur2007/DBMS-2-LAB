-- Print numbers from 1 to N using LOOP, WHILE LOOP and FOR LOOP.
SET SERVEROUTPUT ON;

DECLARE
    	n number;
    	i number;
BEGIN
    	n := &N;

        DBMS_OUTPUT.PUT_LINE('LOOP');
        i := 1;
LOOP
        DBMS_OUTPUT.PUT_LINE(i);
        i := i + 1;
        EXIT WHEN i > n;
END LOOP;

    	DBMS_OUTPUT.PUT_LINE('WHILE LOOP');
    	i := 1;
    	WHILE i <= n LOOP
        DBMS_OUTPUT.PUT_LINE(i);
        i := i + 1;
END LOOP;

    	DBMS_OUTPUT.PUT_LINE('FOR LOOP');
    	FOR i IN 1..n LOOP
        DBMS_OUTPUT.PUT_LINE(i);
END LOOP;
END;
/