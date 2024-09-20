create or replace function t_details(v_qualification varchar) returns void as $$
DECLARE
    t record;
BEGIN
    for t in select * from teacher where qualification = v_qualification loop
        raise notice '% % % %', t.t_no, t.t_name, t.qualification, t.experience;
    end loop;
END;    
$$ language 'plpgsql';