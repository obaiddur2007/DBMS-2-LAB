--program to use %rowcount with explicit cursor
set serveroutput on

declare
	cursor c1 is select ename, deptname, basicsal from emp order by basicsal desc;

        e c1%rowtype;

begin

    	open c1;
loop

        fetch c1 into e;

        exit when c1%notfound or c1%rowcount > 5;

        dbms_output.put_line('name : ' || e.ename);
        dbms_output.put_line('department_no : ' || e.deptname);
        dbms_output.put_line('basic_salary : ' || e.basicsal);
        dbms_output.put_line('---------------------------------------');
end loop;

    	dbms_output.put_line('total number of rows : ' || least(c1%rowcount, 5));

close c1;

end;
/