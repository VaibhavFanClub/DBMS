create or replace function a5a1f2(vcname integer) returns void as $$
Declare
	ca12 cursor for select s_name, subject, marks from student s, stud_teach st where s.s_no = st.s_no and class = vcname;
	vs_name student.s_name%type;
	vsubject stud_teach.subject%type;
	vmarks stud_teach.marks%type;
Begin
	open ca12;
	loop
		fetch ca12 into vs_name, vsubject, vmarks;
		exit when not found;
		raise notice '% % %', vs_name, vsubject, vmarks;
	end loop;
	close ca12;
End;
$$ language 'plpgsql';
