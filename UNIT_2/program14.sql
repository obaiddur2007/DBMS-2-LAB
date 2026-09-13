--program to find 3 highest basic salary
set serveroutput on

declare
    	cursor c1 is
        select eid, ename, deptno, basicsal from emp order by basicsal desc;
        i number := 0;

begin

    	for rec in c1
loop

        i := i + 1;

        dbms_output.put_line('Employee Name :'|| rec.ename);
        dbms_output.put_line('Basic Salary :'|| rec.basicsal);
        dbms_output.put_line('----------------------------------------');

        exit when i = 3;

end loop;

end;
/