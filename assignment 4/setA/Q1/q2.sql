create or replace function sum_income(area_type varchar) returns void as $$
DECLARE
    p_sum money;
BEGIN
    select sum(income) into p_sum from person, area where person.aname = area.aname and area.atype = area_type;
    if p_sum::numeric::int = 0 then
        raise exception 'Invalid Area type';
    else
        raise notice 'Sum of income for given area type is %', p_sum;
    end if;
END;    
$$ language 'plpgsql';