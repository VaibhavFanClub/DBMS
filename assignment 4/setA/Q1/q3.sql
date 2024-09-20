create or replace function p_bdate(month int) returns void as $$    
DECLARE
    pr record;
BEGIN
    for pr in select * from person where Extract(month from bdate) = month loop
        if pr.bdate is null then
            raise exception 'Invalid Month';
        else
            raise notice '% % % % %', pr.pno, pr.pname, pr.income, pr.aname, pr.bdate;
        end if;
    end loop;
END;
$$ language 'plpgsql';