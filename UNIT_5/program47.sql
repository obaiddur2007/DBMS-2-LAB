-- write a trigger to insert the existing values of the emp table into newemp table when the record is updated in emp table.

create or replace trigger update_newemp
after update on emp
for each row
begin
    insert into newemp (id, name, deptno, basic_salary)
    values (
        :old.id,
        :old.name,
        :old.deptno,
        :old.basic_salary
    );

    dbms_output.put_line('existing record inserted into newemp table');
end;
/