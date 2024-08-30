create or replace function a5a1f1(vs_no integer) returns void as $$
Declare
	ca11 cursor for select s_name, t_name from student s, teacher t, stud_teach st where s.s_no = st.s_no and t.t_no = st.t_no and s.s_no = vs_no and subject = 'DBMS';
	vs_name student.s_name%type;
	vt_name teacher.t_name%type;
Begin
	open ca11;
	loop
		fetch ca11 into vs_name, vt_name;
		exit when not found;
		raise notice '% %', vs_name, vt_name;
	end loop;
	close ca11;
End;
$$ language 'plpgsql';
