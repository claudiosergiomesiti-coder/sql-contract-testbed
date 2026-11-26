CREATE OR REPLACE FUNCTION role_permission_count()
 
RETURNS integer
 
LANGUAGE SQL
 
AS
$$
SELECT COUNT(*)::integer
FROM role_permissions;
$$;