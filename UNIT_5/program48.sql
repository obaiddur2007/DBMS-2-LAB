-- write a trigger that restricts the entry of record if salary is greater than rs. 50000.

create or replace trigger check_salary
before insert on emp
for each row
begin
    if :new.basic_salary > 50000 then
        raise_application_error(-20001, 'salary cannot be greater than 50000');
    else
        dbms_output.put_line('record can be inserted');
    end if;
end;
/