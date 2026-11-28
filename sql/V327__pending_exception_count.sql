CREATE OR REPLACE FUNCTION pending_exception_count()
RETURNS integer
LANGUAGE SQL
AS
$$
SELECT COUNT(*)::integer
FROM exception_requests
WHERE request_status = 'PENDING';
$$;