-- Delete employee record for a given EID.
SET SERVEROUTPUT ON;

DECLARE
    	id number;
BEGIN
    	id := &EID;

    	DELETE FROM EMP WHERE EID = id;

IF SQL%ROWCOUNT > 0 THEN
        DBMS_OUTPUT.PUT_LINE('Employee record deleted successfully.');
ELSE
        DBMS_OUTPUT.PUT_LINE('Employee not found.');
END IF;
END;
/