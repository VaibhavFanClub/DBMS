create or replace function f2() returns void as $$
declare
    cursor c1 for select c.*, l_amt_approved from customer c, loan_application la, ternary t where c.cno = t.cno and la.lno = t.lno;
    rec record;
begin
    open c1;
    loop
        fetch c1 into rec;
        exit when not found;
        raise notice '% % % % %', rec.no, rec.c_name, rec.caddr, rec.city, rec.l_amt_approved;
    end loop;
    close c1;
end;
$$ language plpgsql;