-- write a function that returns the square of a given number.

create or replace function square_number(num in number)
    	return number
is
    	square number;
begin
    	square:=num * num;

    	return square;
end;
/