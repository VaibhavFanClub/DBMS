create or replace function a6b2i() returns trigger as $$
BEGIN
if new.d_age > 18 and new.dage < 50 then 
	raise notice 'valid entry';
else
	raise exception 'Not a valid entry';
end if;
return new;
END;
$$ language 'plpgsql';
