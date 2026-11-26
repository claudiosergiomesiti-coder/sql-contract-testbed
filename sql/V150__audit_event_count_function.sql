CREATE OR REPLACE FUNCTION audit_event_count()
 
RETURNS integer
 
LANGUAGE SQL
 
AS
$$
SELECT COUNT(*)::integer
FROM audit_events;
$$;