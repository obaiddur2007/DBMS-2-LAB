-- Accept product name, quantity and price and calculate discount in Rs.
SET SERVEROUTPUT ON;

DECLARE
	pname varchar2(20);
    	qty number;
    	price number;
    	disc_per number := 10;   -- Given discount percentage
    	discount number;
BEGIN
   	 pname := '&Product_Name';
   	 qty := &Quantity;
   	 price := &Price;

   	 discount := qty * price * disc_per / 100;

   	 DBMS_OUTPUT.PUT_LINE('Product Name : ' || pname);
   	 DBMS_OUTPUT.PUT_LINE('Quantity : ' || qty);
   	 DBMS_OUTPUT.PUT_LINE('Price : ' || price);
   	 DBMS_OUTPUT.PUT_LINE('Discount Rs. : ' || discount);
END;
/