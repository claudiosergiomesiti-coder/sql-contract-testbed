CREATE OR REPLACE FUNCTION open_escalation_count()
RETURNS integer
LANGUAGE SQL
AS
$$
SELECT COUNT(*)::integer
FROM risk_escalations
WHERE escalation_status = 'OPEN';
$$;