CREATE OR REPLACE FUNCTION closed_remediation_count()
RETURNS integer
LANGUAGE SQL
AS
$$
SELECT COUNT(*)::integer
FROM remediation_closures
WHERE closure_status = 'CLOSED';
$$;