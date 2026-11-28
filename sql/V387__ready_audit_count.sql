CREATE OR REPLACE FUNCTION ready_audit_count()
RETURNS integer
LANGUAGE SQL
AS
$$
SELECT COUNT(*)::integer
FROM audit_readiness
WHERE readiness_status = 'READY';
$$;