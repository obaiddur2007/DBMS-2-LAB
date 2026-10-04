-- create a procedure to search an employee id using in and out parameters.

create or replace procedure search_employee(p_empno in number,p_ename out varchar2,p_status out varchar2)
is
begin
    	select ename into p_ename from emp2 where empno = p_empno;    
	
	p_status:='employee found';

exception
    when no_data_found then
        p_ename:=null;
        p_status:='employee not found';

end;
/