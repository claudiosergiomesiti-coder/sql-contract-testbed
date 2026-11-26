CREATE OR REPLACE FUNCTION permission_count()
 
RETURNS integer
 
LANGUAGE SQL
 
AS
$$
SELECT COUNT(*)::integer
FROM permissions;
$$;