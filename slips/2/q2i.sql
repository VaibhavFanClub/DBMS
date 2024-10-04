create or replace function f1() returns trigger as $$
begin
    if new.l_amt_approved > l_amt_required  then
        raise exception 'l_amt_approved cannot be greater than l_amt_required';
    end if;
    return new;
end;
$$ language plpgsql;