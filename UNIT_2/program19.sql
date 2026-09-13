--program to display records using order by clause with explicit cursor
set serveroutput on

declare

    	cursor c19 is select * from emp order by ename;

    	e emp%rowtype;

begin

    	open c19;
loop

        fetch c19 into e;
	exit when c19%notfound;

        dbms_output.put_line('Employee ID :'|| e.eid);
        dbms_output.put_line('Employee Name :'|| e.ename);
        dbms_output.put_line('Department No :'|| e.deptno);
        dbms_output.put_line('-------------------------');

end loop;
close c19;

end;
/