--program to use Explicit Cursor in customer table
set serveroutput on

declare
 
    	cursor c17 is select cid, cname, city, country from customer;
        
    	xcid customer.cid%type;
    	xname customer.cname%type;
    	xcity customer.city%type;
    	xcountry customer.country%type;

begin

open c17;
loop
	fetch c17 into xcid, xname, xcity, xcountry;

        exit when c17%notfound;
	dbms_output.put_line('Customer ID :'|| xcid);
        dbms_output.put_line('Customer Name :'|| xname);
        dbms_output.put_line('City :'|| xcity);
        dbms_output.put_line('Country :'|| xcountry);
        dbms_output.put_line('--------------------------------');
end loop;

close c17;

end;
/