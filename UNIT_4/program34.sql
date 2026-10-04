-- write a function to return the square of a given number.

create or replace function square_num(n number)
	return number
is
begin

    	return n * n;
end;
/