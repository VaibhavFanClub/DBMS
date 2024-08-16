create or replace function count_emp_2007() returns integer as $$
Declare
	emp_count integer;
Begin
	select count(*) into emp_count from employee where joining_date < '01-01-2007';
	return emp_count;
End
$$ language 'plpgsql';
