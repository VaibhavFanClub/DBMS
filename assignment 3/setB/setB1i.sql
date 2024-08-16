create or replace function A3B1F1(no integer) returns void as $$
Declare
	r record;
Begin
	for r in select b.bus_no, capacity, depot_name from bus b, bus_route br where b.bus_no = br.bus_no and route_no = no loop
		raise notice '% % %', r.bus_no, r.capacity, r.depot_name; 
	end loop;
End;
$$ language 'plpgsql';
