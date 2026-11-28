CREATE OR REPLACE FUNCTION approved_validation_count()
RETURNS integer
LANGUAGE SQL
AS
$$
SELECT COUNT(*)::integer
FROM validation_approvals
WHERE approval_status = 'APPROVED';
$$;