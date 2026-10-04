-- create a simple procedure without parameter that updates the values in emp table.

create or replace procedure update_employee
is
    	v_count number;
begin
	update emp set basicsal = basicsal + 1000;
    
    	v_count := sql%rowcount;

    	dbms_output.put_line('employee salary updated successfully');
    	dbms_output.put_line('salary increased by: 1000');
    	dbms_output.put_line('total employees updated:'|| v_count);

commit;
end;
/