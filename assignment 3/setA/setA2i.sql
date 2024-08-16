create or replace function A3A2F1(name varchar) returns integer as $$
Declare
	count_p integer;
Begin
	select count(pno) into count_p from person where aname = name;
	return  count_p;
End;
$$ language 'plpgsql';
