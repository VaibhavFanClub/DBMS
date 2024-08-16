create or replace function A3A2F2() returns void as $$
Declare
Begin
	update person set income = income + (income * 0.2) where aname in(select aname from area where atype = 'urban');
End;
$$ language 'plpgsql';
