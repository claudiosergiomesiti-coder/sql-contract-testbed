CREATE OR REPLACE FUNCTION active_policy_count()
 
RETURNS integer
 
LANGUAGE SQL
 
AS
$$
SELECT COUNT(*)::integer
FROM security_policies
WHERE policy_status = 'ACTIVE';
$$;