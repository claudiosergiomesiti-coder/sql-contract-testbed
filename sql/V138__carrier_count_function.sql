CREATE OR REPLACE FUNCTION carrier_count()
 
RETURNS integer
 
LANGUAGE SQL
 
AS
$$
SELECT COUNT(*)::integer
FROM carriers;
$$;