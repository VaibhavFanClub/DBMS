create or replace function A3A2F3(type varchar) returns void as $$
Declare
	r record;
Begin
	for r in select pno, pname, bdate, income from person p, area a where p.aname = a.aname and atype = type loop
		raise notice '% % % %', r.pno, r.pname, r.bdate, r.income;
	end loop;
End;
$$ language 'plpgsql';
