-- write a pl/sql block using implicit cursor to display commission of given empno.
set serveroutput on

declare
    	e_no number := &empno;
    	comm number;
    	null_commission exception;

begin
    	select commission into comm from emp4 where empno = e_no;

    	if comm is null then
        	raise null_commission;
end if;

    	dbms_output.put_line('employee number:'|| e_no);
   	 dbms_output.put_line('commission:'|| comm);

exception
    when null_commission then
        dbms_output.put_line('commission is null for this employee');

    when no_data_found then
        dbms_output.put_line('employee not found');

end;
/