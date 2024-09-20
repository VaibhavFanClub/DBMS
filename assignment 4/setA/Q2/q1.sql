create or replace function t_cnt(stud_name varchar) returns void as $$
DECLARE
    t_count int;
BEGIN
    select count(*) into t_count from teacher t, student s, stud_teach st where t.t_no = st.t_no and s.s_no = st.s_no and s.s_name = stud_name;
    if t_count = 0 then
        raise exception 'Invalid Student name';
    else
        raise notice 'Teacher count for given student name is %', t_count;
    end if;
END;
$$ language 'plpgsql';