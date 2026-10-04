-- write a pl/sql block that explains the use of zero_divide exception.
set serveroutput on

declare
    	salary number:=&salary;
    	employees number:=&employees;
    	average_salary number;

begin
    	average_salary:=salary / employees;

    	dbms_output.put_line('average salary:'|| average_salary);

exception
    when zero_divide then
        dbms_output.put_line('cannot calculate average because employees is zero');

end;
/