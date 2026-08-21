--Program to demonstrate ZERO_DIVIDE exception.
SET SERVEROUTPUT ON

DECLARE
	num1 number;
	num2 number;
	std_result number;

BEGIN
	num1:=&num1;
	num2:=&num2;
	std_result :=num1/num2;
	
	dbms_output.put_line('number1:' || num1);
	dbms_output.put_line('number2:' || num2);	
	dbms_output.put_line('result:' || std_result);

EXCEPTION
    	when ZERO_DIVIDE then
        dbms_output.put_line('Cannot divide by zero');

END;
/