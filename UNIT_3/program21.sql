-- write a pl/sql block that explains the use of zero_divide exception.
set serveroutput on
declare
	n1 number := &n1;
    	n2 number := &n2;
    	result number;

begin
    	dbms_output.put_line('first number:'|| n1);
    	dbms_output.put_line('second number:'|| n2);

    	result := n1 / n2;

    	dbms_output.put_line('division result:'|| result);

exception
    when zero_divide then
        dbms_output.put_line('cannot divide a number by zero');
        dbms_output.put_line('please enter a non-zero value for the second number');

end;
/