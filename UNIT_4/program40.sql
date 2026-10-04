-- write a function that returns the balance for a given account number.

create or replace function get_balance(ac_number number)
    	return number
is
    	account_balance number;
begin
    	select balance into account_balance from account where acno = ac_number;
    	
	return account_balance;
end;
/