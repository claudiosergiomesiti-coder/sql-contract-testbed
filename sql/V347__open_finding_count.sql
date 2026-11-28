CREATE OR REPLACE FUNCTION open_finding_count()
RETURNS integer
LANGUAGE SQL
AS
$$
SELECT COUNT(*)::integer
FROM audit_findings
WHERE finding_status = 'OPEN';
$$;