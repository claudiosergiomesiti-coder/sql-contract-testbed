CREATE OR REPLACE FUNCTION user_count()
 
RETURNS integer
 
LANGUAGE SQL
 
AS
$$
SELECT COUNT(*)::integer
FROM users;
$$;