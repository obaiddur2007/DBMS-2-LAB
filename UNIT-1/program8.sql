-- Display gross salary of employee using EID.
SET SERVEROUTPUT ON;

DECLARE
    	id number;
    	ename varchar2(30);
    	dname varchar2(20);
    	bsal number;
    	hra number;
    	da number;
    	medical number := 500;
    	pf number;
    	gross number;
BEGIN
    	id := &EID;

    	SELECT EName, Deptname, BasicSal INTO ename, dname, bsal FROM EMP WHERE EID = id;

        hra := bsal * 0.15;
        da := bsal * 0.50;
        pf := bsal * 0.10;

        gross := bsal + da + hra + medical - pf;

        DBMS_OUTPUT.PUT_LINE('Employee Name : ' || ename);
        DBMS_OUTPUT.PUT_LINE('Department    : ' || dname);
        DBMS_OUTPUT.PUT_LINE('Basic Salary  : ' || bsal);
        DBMS_OUTPUT.PUT_LINE('Gross Salary  : ' || gross);
END;
/