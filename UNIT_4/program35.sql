-- create a function that returns the balance for a given account number.

create or replace function get_balance(p_acno in number)
	return number
is
    	v_balance number;
begin
    	select balance into v_balance from account where acno = p_acno;

        return v_balance;
end;
/