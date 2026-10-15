-- write a trigger to restrict users from using the table on sunday.

create or replace trigger sunday_restrict
before insert or update or delete on emp
begin
    if to_char(sysdate, 'fmday', 'nls_date_language=english') = 'sunday' then
        raise_application_error(-20001, 'table cannot be used on sunday');
    end if;
end;
/