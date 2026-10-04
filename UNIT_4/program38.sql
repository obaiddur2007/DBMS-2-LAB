-- create a procedure to search whether the given employee number is present or not.

create or replace procedure search_emp(emp_eid in number,emp_name out varchar2,emp_status out varchar2)
is
begin
    	select ename into emp_name from emp where eid = emp_eid;

    	emp_status:='employee found';

exception
    when no_data_found then
        emp_name:=null;
        emp_status:='employee not found';

end;
/