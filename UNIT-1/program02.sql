-- Program: Calculate Square and Cube of a Given Number

SET SERVEROUTPUT ON

DECLARE
	 num number := 5;
         square number;
         cube number;

BEGIN
	 -- Calculate Square and Cube
    	 square := num * num;
   	 	 cube := num * num * num;

    	 -- Display the Result
   	 DBMS_OUTPUT.PUT_LINE('number = ' || num);
   	 DBMS_OUTPUT.PUT_LINE('square = ' || square);
   	 DBMS_OUTPUT.PUT_LINE('cube = ' || cube);

END;
/
