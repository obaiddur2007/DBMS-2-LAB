-- write a trigger to restrict users from accessing the table on weekends.

create or replace trigger weekend_trigger
before insert or update or delete on emp
begin
    	if to_char(sysdate, 'dy', 'nls_date_language=english') in ('sat', 'sun') then	raise_application_error(-20001, 'access to emp table is not allowed on weekends');
    end if;
end;
/