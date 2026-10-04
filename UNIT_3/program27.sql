-- write a pl/sql block that explains the use of invalid_number exception.
set serveroutput on

declare
    	n number;

begin
    	n := to_number('&value');

    	dbms_output.put_line('number is:'|| n);

exception
    when invalid_number then
        dbms_output.put_line('invalid number entered');
	
    when value_error then
        dbms_output.put_line('invalid number entered');

end;
/