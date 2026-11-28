CREATE OR REPLACE FUNCTION open_sod_violation_count()
RETURNS integer
LANGUAGE SQL
AS
$$
SELECT COUNT(*)::integer
FROM sod_violations
WHERE violation_status = 'OPEN';
$$;