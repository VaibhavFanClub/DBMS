create or replace function A3B1F2(vshift integer, vdepot_name varchar) returns void as $$
Declare
	r record;
Begin
	for r in select d.driver_no, driver_name, license_no, address, d_age, salary from bus b, driver d, bus_driver bd where b.bus_no = bd.bus_no and d.driver_no = bd.driver_no and date_of_duty_allotted > '01-07-2020' loop
		raise notice '% % % % % %', r.driver_no, r.driver_name, r.licence_no, r.address, r.d_age, r.salary;
	end loop;
End;
$$ language 'plpgsql';
