CREATE OR REPLACE FUNCTION session_count()
 
RETURNS integer
 
LANGUAGE SQL
 
AS
$$
SELECT COUNT(*)::integer
FROM sessions;
$$;