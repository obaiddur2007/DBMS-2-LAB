-- write a trigger to insert the existing values of the emp table into newemp table when the record is deleted from emp table.

create or replace trigger delete_newemp
after delete on emp
for each row
begin
    	insert into newemp (id, name, deptno, basic_salary)
    	values (:old.id, :old.name, :old.deptno, :old.basic_salary);
end;
/