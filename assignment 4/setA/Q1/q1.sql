create or replace function p_cnt(area_name varchar) returns void as $$
DECLARE
    p_count int;
BEGIN
    select count(*) into p_count from person where aname = area_name;
    if p_count = 0 then
        raise exception 'Invalid Area name';
    else
        raise notice 'Person count for given area is %', p_count;
    end if;
END;
$$ language 'plpgsql';