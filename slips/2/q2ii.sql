create or replace function f2(branchname varchar) returns integer as $$
declare
    c_count  integer;
begin
    if branchname NOT IN (select br_name from branch) then
        raise exception 'Branch does not exist';
    end if;
    select count(c.cno) into c_count from customer c, branch b, ternary t where c.cno = t.c_cno and b.br_id = t.b_br_id and b.br_name = branchname;
    return c_count;
end;
$$ language plpgsql;