-- write a trigger that identifies the gender of the employee and sets mr. for male employees and ms. for female employees.

create or replace trigger gender_title
before insert on emp
for each row
begin
    if upper(:new.gender) = 'M' then
        :new.name := 'MR. ' || :new.name;
    elsif upper(:new.gender) = 'F' then
        :new.name := 'MS. ' || :new.name;
    end if;
end;
/