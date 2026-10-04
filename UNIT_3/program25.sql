-- insert employee records into emp_backup using cursor for a given department number.
set serveroutput on

declare
    	dno number:=&deptno;
    	total number:=0;

    	no_dept_found exception;
    	cursor c1 is select empnm,salary,age,deptno from empl where deptno = dno;

begin
    	for r in c1 loop

        insert into emp_backup values(r.empnm, r.salary, r.age, r.deptno);
        total := total + 1;

end loop;

    	if total = 0 then
        	raise no_dept_found;
end if;
commit;

    	dbms_output.put_line(total||' records inserted.');

exception
    when no_dept_found then
        dbms_output.put_line('no records found for this department');

end;
/