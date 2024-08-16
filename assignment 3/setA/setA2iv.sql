create or replace function A3A2F4(name varchar) returns void as $$
Declare
	r record;
Begin
	for r in select pname, bdate from person where aname = name and date_part('year', age(bdate)) > 60 loop
		raise notice '% %', r.pname, r.bdate;
	end loop;
End;
$$ language 'plpgsql';
