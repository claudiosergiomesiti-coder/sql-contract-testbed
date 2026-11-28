CREATE OR REPLACE FUNCTION audit_readiness_exposure()
RETURNS integer
LANGUAGE SQL
AS
$$
SELECT COUNT(*)::integer
FROM audit_readiness_model
WHERE readiness_rating = 'NOT_READY';
$$;