-- Increase basic salary by 10% for employees in department 10 using sql%rowcount

SET SERVEROUTPUT ON

BEGIN
	update emp set basicsal = basicsal + (basicsal * 10 / 100) where deptno = 10;

	IF sql%rowcount> 0 then
        dbms_output.put_line(sql%rowcount ||' employee salary increased by 10%.');

ELSE
        dbms_output.put_line('No employee found in department 10.');

END IF;
END;
/