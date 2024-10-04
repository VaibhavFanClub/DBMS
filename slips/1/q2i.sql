create or replace function f1() returns trigger as $$
begin
    if old.cno !=  new.cno then
        raise exception 'Cannot change cno';
        return null;
    endif;
    return  new;
end;
$$ language plpgsql;