CREATE OR REPLACE FUNCTION open_incident_count()
 
RETURNS integer
 
LANGUAGE SQL
 
AS
$$
SELECT COUNT(*)::integer
FROM incident_responses
WHERE response_status = 'OPEN';
$$;