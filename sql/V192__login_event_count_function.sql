CREATE OR REPLACE FUNCTION login_event_count()
 
RETURNS integer
 
LANGUAGE SQL
 
AS
$$
SELECT COUNT(*)::integer
FROM login_events;
$$;