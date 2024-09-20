create or replace function s_cnt(sub varchar) returns void as $$
DECLARE
    s_count int;
BEGIN
    select count(*) into s_count from student s, stud_teach st where st.subject = sub and s.s_no = st.s_no;
    if s_count = 0 then
        raise exception 'Invalid Subject';
    else
        raise notice 'Student count for given subject is %', s_count;
    end if;
END;
$$ language 'plpgsql';