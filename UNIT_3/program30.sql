-- write a pl/sql block that explains the use of sqlcode and sqlerrm.
set serveroutput on

declare
    	n1 number:=10;
    	n2 number:=0;
    	result number;

begin
    	result:=n1 / n2;

    	dbms_output.put_line('result:'|| result);

exception
    when others then
        dbms_output.put_line('error code:'|| sqlcode);
        dbms_output.put_line('error message:'|| sqlerrm);

end;
/