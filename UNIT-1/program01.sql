--program calculate simple interest using pl/sql

SET SERVEROUTPUT ON

DECLARE
	principal number:=10000;
	rate      number:=8;
	years	  number:=3;
	interest  number;

BEGIN
	interest:=(principal*rate*years)/100;
	dbms_output.put_line('principal amount:'||principal);
	dbms_output.put_line('rate of interest:'||rate||'%');
	dbms_output.put_line('time(years):'||years);
	dbms_output.put_line('simple interest:'||interest);

END;
/
	
	
