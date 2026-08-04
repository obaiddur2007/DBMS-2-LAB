-- Accept measurement in feet and convert it into cm, inch and meter.
SET SERVEROUTPUT ON;

DECLARE
	feet number;
    	cm number;
    	inch number;
    	meter number;
BEGIN
	feet := &Feet;

    	cm := feet * 30.48;
    	inch := feet * 12;
    	meter := feet * 0.3048;

    	DBMS_OUTPUT.PUT_LINE('Feet : '|| feet);
    	DBMS_OUTPUT.PUT_LINE('Cm : '|| cm);
        DBMS_OUTPUT.PUT_LINE('Inch : '|| inch);
        DBMS_OUTPUT.PUT_LINE('Meter : '|| meter);
END;
/