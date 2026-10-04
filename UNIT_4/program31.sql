-- create a procedure without parameter to display a user defined message.

create or replace procedure message
is
begin
    	dbms_output.put_line('welcome to pl/sql programming');
end;
/