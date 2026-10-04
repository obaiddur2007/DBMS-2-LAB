-- create a procedure to increase basic salary for a given department by a percentage.

create or replace procedure increase_salary(p_deptno in number,p_percent in number)
is
begin
    	update emp2 set salary = salary + (salary * p_percent / 100) where deptno = p_deptno;

    	dbms_output.put_line('salary updated successfully.');

commit;
end;
/