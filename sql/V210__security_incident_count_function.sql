CREATE OR REPLACE FUNCTION security_incident_count()
 
RETURNS integer
 
LANGUAGE SQL
 
AS
$$
SELECT COUNT(*)::integer
FROM security_incidents*
$$;