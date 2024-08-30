create or replace function a5a1f3() returns void as $$
Declare
	ca13 cursor for select * from teacher order by experience desc limit 1;
	rt teacher%rowtype;
Begin
	open ca13;
	loop
		fetch ca13 into rt;
		exit when not found;
		raise notice '% | % | % | %', rt.t_no, rt.t_name, rt.qualification, rt.experience;
	end loop;
	close ca13;
End;
$$ language 'plpgsql';
