CREATE OR REPLACE FUNCTION supplier_count()
 
RETURNS integer
 
LANGUAGE SQL
 
AS
$$
SELECT COUNT(*)::integer
FROM suppliers;
$$;