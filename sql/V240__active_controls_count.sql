CREATE OR REPLACE FUNCTION active_controls_count()
 
RETURNS integer
 
LANGUAGE SQL
 
AS
$$
SELECT COUNT(*)::integer
FROM security_controls
WHERE control_status = 'ACTIVE';
$$;