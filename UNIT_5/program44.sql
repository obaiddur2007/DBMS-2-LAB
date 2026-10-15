-- write a trigger to insert the existing values of the emp table into newemp table when the record is updated in emp table.

create or replace trigger update_newemp
after update on emp
for each row
begin
    	insert into newemp (id, name, deptno, basic_salary)
    	values (:new.id, :new.name, :new.deptno, :new.basic_salary);
end;
/