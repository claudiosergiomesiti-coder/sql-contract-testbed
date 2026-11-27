CREATE OR REPLACE FUNCTION open_exception_count()
RETURNS integer
LANGUAGE SQL
AS
$$
SELECT COUNT(*)::integer
FROM policy_exceptions
WHERE exception_status = 'OPEN';
$$;