-- Display all male employees working in HR department.
SET SERVEROUTPUT ON;

DECLARE
CURSOR c1 IS SELECT EID, EName, Deptname, Gender FROM EMP WHERE Gender = 'M' AND Deptname = 'HR';

        x_eid   EMP.EID%TYPE;
    	x_name  EMP.EName%TYPE;
    	x_dept  EMP.Deptname%TYPE;
    	x_gen   EMP.Gender%TYPE;

BEGIN
OPEN c1;

LOOP
        FETCH c1 INTO x_eid, x_name, x_dept, x_gen;
	EXIT WHEN c1%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE('EID: '|| x_eid);
        DBMS_OUTPUT.PUT_LINE('Name: '|| x_name);   
        DBMS_OUTPUT.PUT_LINE('Dept: '|| x_dept);
	DBMS_OUTPUT.PUT_LINE('Gender: '|| x_gen);
	DBMS_OUTPUT.PUT_LINE('-------------');
END LOOP;
CLOSE c1;

END;
/