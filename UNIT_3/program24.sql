-- display the salary of that employee whose age is 50 years.
set serveroutput on

declare
    	e_salary empl.salary%type;

begin
    	select salary into e_salary from empl where age = 50;

    	dbms_output.put_line('salary:'|| e_salary);

exception
    when no_data_found then
        dbms_output.put_line('no employee found whose age is 50 years');

    when too_many_rows then
        dbms_output.put_line('more than one employee is 50 years old');

end;
/