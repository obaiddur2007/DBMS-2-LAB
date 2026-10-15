-- write a trigger to insert the values into the newemp table when the records are inserted into the emp table.

create or replace trigger insert_newemp
after insert on emp
for each row
begin
    insert into newemp values (
        :new.id,
        :new.name,
        :new.deptno,
        :new.basic_salary
    );
end;
/