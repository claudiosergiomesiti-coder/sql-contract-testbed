CREATE OR REPLACE FUNCTION notification_count()
 
RETURNS integer
 
LANGUAGE SQL
 
AS
$$
SELECT COUNT(*)::integer
FROM notifications;
$$;