-- question: create a procedure to increase the salary of employees for a given department by percentage using in parameters.

create or replace procedure increase_salary(p_deptno in number,p_percent in number)
is
    	v_count number;
begin
	update emp set basicsal = basicsal + (basicsal * p_percent / 100) where deptno = p_deptno;

    	v_count := sql%rowcount;

if v_count > 0 then
        dbms_output.put_line('salary updated successfully');
        dbms_output.put_line('department number:'|| p_deptno);
        dbms_output.put_line('salary increased by:'|| p_percent||'%');
        dbms_output.put_line('employees updated:'|| v_count);
else
        dbms_output.put_line('no employee found in this department.');
end if;
commit;

end;
/