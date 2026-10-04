-- write a pl/sql block that explains the use of no_data_found exception.
set serveroutput on

declare
    	s_name emp2.empnm%type:='&emp_name';
    	s_salary emp2.salary%type;

begin
    	select salary into s_salary from emp2 where empnm = s_name;

    	dbms_output.put_line('employee name:'|| s_name);
    	dbms_output.put_line('salary:'|| s_salary);

exception
    when no_data_found then
        dbms_output.put_line('no employee found with this name');

end;
/