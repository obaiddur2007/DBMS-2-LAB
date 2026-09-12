- Calculate total marks, percentage and grade of a student from the RESULT table using Rollno.
SET SERVEROUTPUT ON

DECLARE
   	 rno number;
    	 t number;
   	 p number;
   	 g varchar2(2);
BEGIN
   	 rno := &Rollno;

   	 SELECT Sub1 + Sub2 + Sub3 + Sub4 + Sub5 INTO t from RESULT 
   	 WHERE Rollno = rno;

    	 p := t / 5;

IF 
	p >= 80 THEN
        g := 'A';
ELSIF 
	p >= 60 THEN
        g := 'B';
ELSIF 
	p >= 40 THEN
        g := 'C';
ELSE
        g := 'F';
END IF;

    	DBMS_OUTPUT.PUT_LINE('Total = '|| t);
    	DBMS_OUTPUT.PUT_LINE('Percentage = '|| p);
        DBMS_OUTPUT.PUT_LINE('Grade = '|| g);
END;
/
