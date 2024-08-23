CREATE OR REPLACE FUNCTION A3B1F3 (sname VARCHAR) RETURNS VOID AS
$$

DECLARE

b_count INTEGER;

BEGIN 

SELECT COUNT(DISTINCT b.bus_no) INTO b_count FROM Bus b, Route r, bus_route br WHERE b.bus_no = br.bus_no and r.route_no = br.route_no AND r.source = sname;

RAISE NOTICE 'Bus COUNT: %',b_count;

END;
$$ LANGUAGE plpgsql;
