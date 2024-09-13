create or replace function A6C2F3() returns trigger as $$
BEGIN
	if new.cno <= 0 or new.cname is NULL then
		raise exception 'Invalid cno and cname';
	end if;
	return new;
END;
$$ language 'plpgsql';
