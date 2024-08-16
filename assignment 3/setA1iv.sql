CREATE OR REPLACE FUNCTION A3A1F4 () RETURNS VOID AS
$$

DECLARE

r RECORD;


BEGIN 
FOR r IN
SELECT p.* FROM Project p, Project_Employee pe WHERE p.pno = pe.pno AND start_date > '01-01-2019'
LOOP

RAISE NOTICE '% % % %',r.pno,r.pname,r.ptype,r.duration;

END LOOP;
END;
$$ LANGUAGE plpgsql;
