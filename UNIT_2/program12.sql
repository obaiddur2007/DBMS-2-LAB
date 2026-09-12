--program to use %isopen and %notfound with explicit cursor
set serveroutput on

declare

	cursor c1 is select eid, ename, deptno, deptname, gender, age, basicsal from emp where deptno = 20;

    	xeid       emp.eid%type;
    	xename     emp.ename%type;
    	xdeptno    emp.deptno%type;
    	xdeptname  emp.deptname%type;
    	xgender    emp.gender%type;
    	xage       emp.age%type;
    	xbasicsal  emp.basicsal%type;

    	v_count number := 0;

begin

    	open c1;

    	if c1%isopen then
        dbms_output.put_line('cursor is open.');
end if;

    loop

        fetch c1 into xeid, xename, xdeptno, xdeptname,xgender, xage, xbasicsal;

        exit when c1%notfound;

        update emp
        set basicsal = basicsal * 1.05 where eid = xeid;
        
        insert into emp2_update values(xeid, xename, xdeptno, xdeptname,xgender, xage, xbasicsal * 1.05);
	v_count := v_count + 1;

         dbms_output.put_line('salary updated for employee : ' || xename);

end loop;

    close c1;

    	if v_count = 0 then
        dbms_output.put_line('no employees found in department 20');

        else
        dbms_output.put_line('salary increment process completed');

        end if;

end;
/

