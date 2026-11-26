CREATE OR REPLACE FUNCTION role_count()
 
RETURNS integer
 
LANGUAGE SQL
 
AS
$$
SELECT COUNT(*)::integer
FROM roles;
$$;