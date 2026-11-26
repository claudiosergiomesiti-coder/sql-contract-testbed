CREATE OR REPLACE FUNCTION security_event_count()
 
RETURNS integer
 
LANGUAGE SQL
 
AS
$$
SELECT COUNT(*)::integer
FROM login_events;
$$;