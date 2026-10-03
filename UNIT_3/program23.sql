-- accept an employee name and display his/her basic salary if the employee exists.
set serveroutput on

declare
    	e_name empl.empnm%type:='&employee_name';
   	 e_salary empl.salary%type;

begin
    	select salary into e_salary from empl where empnm = e_name;

	dbms_output.put_line('employee name:'|| e_name);
    	dbms_output.put_line('basic salary:'|| e_salary);

exception
    when no_data_found then
        dbms_output.put_line('employee not found');

end;
/