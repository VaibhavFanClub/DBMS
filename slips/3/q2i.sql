create or replace function f1() returns trigger as $$
begin
    if new.cno <= 0  then
        raise exception 'cno cannot be less than or equal to 0';
    end if;
    return new;
end;
$$ language plpgsql;