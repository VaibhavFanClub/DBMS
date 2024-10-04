create or replace function f2(branchname varchar) returns void as $$
declare
    br record;
begin
    for br in select * from branch where br_name = branchname loop
        raise notice '% % %', br.br_id, br.br_name, br.br_city;
    end loop;
end;
$$ language plpgsql;