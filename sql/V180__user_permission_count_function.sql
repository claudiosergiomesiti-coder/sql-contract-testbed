CREATE OR REPLACE FUNCTION user_permission_count()
 
RETURNS integer
 
LANGUAGE SQL
 
AS
$$
SELECT COUNT(*)::integer
FROM user_permissions;
$$;